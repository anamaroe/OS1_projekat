#include "../h/Riscv.hpp"
#include "../h/PCB.hpp"

// Korisnicka aplikacija:
void userMain();

// Kernel nit
void main() {

    Riscv::w_stvec((uint64)&(Riscv::supervisorTrap) | 1);
    PCB* first = (PCB*)PCB::creatorThreadPCB(0, 0, 0);
    PCB::running = first;

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    uint64 op_code_1 = Riscv::USER_MODE;
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code_1));
    __asm__ volatile ("ecall");

    userMain();

    uint64 op_code_2 = Riscv::SUPER_MODE;
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code_2));
    __asm__ volatile ("ecall");

}