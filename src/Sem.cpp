#include "../h/Sem.hpp"

Sem::~Sem() {
    while(blocked.peekFirst() != nullptr) {
        PCB* pcb = blocked.removeFirst();
        Scheduler::put(pcb);
    }
}

void Sem::block() {
    PCB *old = PCB::running;
    blocked.addLast(PCB::running);
    PCB::running->isBlocked = true;
    PCB::running = Scheduler::get();
    if(PCB::running) PCB::contextSwitch(&old->context, &PCB::running->context);
}

void Sem::unblock() {
    PCB* t = blocked.removeFirst();
    if(t) {
        t->isBlocked = false;
        Scheduler::put(t);
    }
}

Sem* Sem::openSEM(int init) {
    return new Sem(init);
}

int Sem::closeSEM() {
    delete this;
    return 0;
}

int Sem::waitSEM() {
    if(--val < 0) block();
    if(PCB::running->isBlocked) return -1;
    return 0;
}

int Sem::signalSEM() {
    if(++val <= 0) unblock();
    return 0;
}