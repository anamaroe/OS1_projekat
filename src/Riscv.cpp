#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/Sem.hpp"

void Riscv::popSppSpie() {
    // prelaz u user mode u thread wrapperu
    ms_sstatus(~SSTATUS_SPP & ~SSTATUS_SPIE);
    // nastavlja se izvrsavanje nove niti, od thread wrappera (ne od handlera)
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::timerHandler() {
    mc_sip(SIP_SSIP);
}

void Riscv::consoleHandler() {
    console_handler();
}

void Riscv::handleSupervisorTrap() {
    uint64 volatile a = 0, b = 0, c = 0, d = 0, e = 0;
    __asm__ volatile ("ld %0, 8*10(s0)" : "=r" (a));
    __asm__ volatile ("ld %0, 8*11(s0)" : "=r" (b));
    __asm__ volatile ("ld %0, 8*12(s0)" : "=r" (c));
    __asm__ volatile ("ld %0, 8*13(s0)" : "=r" (d));
    __asm__ volatile ("ld %0, 8*14(s0)" : "=r" (e));

    uint64 volatile sepc = r_sepc();
    uint64 volatile scause = r_scause();
    uint64 volatile sstatus = r_sstatus();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        // ECALL from: u-mode(8), s-mode(9)
        sepc += 4;
        uint64 volatile op_code = a;
        uint64 volatile ret;
        PCB* volatile pcb;
        Sem* volatile sem;

        switch(op_code) {
            case MEMALLOC:
                ret = (uint64)(MemoryAllocator::allocateMEM((size_t) b));
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case MEMFREE:
                ret = MemoryAllocator::deallocateMEM((void*)b);
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case THREADCREATE:
                pcb = PCB::createThreadPCB(c, d, e);
                ret = -1;
                if (pcb != nullptr) { ret = 0; }
                __asm__ volatile ("sd %0, 8*11(s0)" : : "r" (pcb));
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case THREADEXIT:
                ret = PCB::exitThreadPCB();
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case THREADDISPATCH:
                PCB::dispatchThreadPCB();
                break;
            case THREADJOIN:
                PCB::joinPCB((PCB*)b);
                break;
            case THREADSTART:
                PCB::startThreadPCB(b);
                PCB::dispatchThreadPCB();
                break;
            case THREADCREATOR:
                pcb = PCB::creatorThreadPCB(c, d, e);
                ret = -1;
                if (pcb) { ret = 0; }
                __asm__ volatile ("sd %0, 8*11(s0)" : : "r" (pcb));
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case SEMOPEN:
                sem = Sem::openSEM((int)c);
                *((uint64*)b) = (uint64)sem;
                ret = -1;
                if(sem) ret = 0;
                __asm__ volatile ("sd %0, 8*11(s0)" : : "r" (sem));
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case SEMCLOSE:
                sem = (Sem*)b;
                ret = sem->closeSEM();
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case SEMWAIT:
                sem = (Sem*)b;
                ret = sem->waitSEM();
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case SEMSIGNAL:
                sem = (Sem*)b;
                ret = sem->signalSEM();
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
                break;
            case TIMESLEEP:
                break;
            case GETC:
                char volatile g;
                g = __getc();
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (g));
                break;
            case PUTC:
                __putc(b);
                break;
            case USER_MODE:
                // prelaz u korisnicki
                sstatus &= ~SSTATUS_SPP;
                sstatus &= ~SSTATUS_SPIE;
                break;
            case SUPER_MODE:
                // vracanje u sistemski
                sstatus|= SSTATUS_SPP;
                sstatus |= ~SSTATUS_SPIE;
                break;
            // default: break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x0000000000000002UL) { /* Illegal instruction */
        __putc('2'); // while(1) {}
    } else if(scause == 0x0000000000000005UL) { /* Illegal read address */
        __putc('5'); // while(1) {}
    } else if(scause == 0x0000000000000007UL) { /* Illegal write address */
        __putc('7'); // while(1) {}
    } else { /* Unexpected trap cause */ }
}