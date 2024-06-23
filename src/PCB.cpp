#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"
#include "../h/Riscv.hpp"

PCB *PCB::running = nullptr;

void PCB::yield() {
    __asm__ volatile ("ecall");
}

void PCB::dispatch() {
    PCB *old = running;
    if ((!old->isFinished())) {
        Scheduler::put(old);
    }
    running = Scheduler::get();
    PCB::contextSwitch(&old->context, &running->context);
}

void PCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->args);
    thread_exit();
}

PCB* PCB::createThreadPCB(uint64 st_rout, uint64 arg, uint64 stack_s) {
    PCB* pcb = new PCB((Body)st_rout, (void*)arg, (uint64*)stack_s);
    if(pcb) Scheduler::put(pcb);
    return pcb;
}

PCB* PCB::creatorThreadPCB(uint64 st_rout, uint64 arg, uint64 stack_s) {
    return new PCB((Body)st_rout, (void*)arg, (uint64*)stack_s);
}

void PCB::startThreadPCB(uint64 handle) {
    Scheduler::put((PCB*)handle);
}

int PCB::exitThreadPCB() {
    running->setFinished(true);
    PCB::dispatch();
    return 0;
}

void PCB::dispatchThreadPCB() {
    PCB::dispatch();
}

void PCB::joinPCB(PCB* handle) {
    while(!(handle->isFinished())) PCB::dispatch();
}