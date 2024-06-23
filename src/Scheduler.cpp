#include "../h/Scheduler.hpp"

List<PCB> Scheduler::readyQueue;

PCB *Scheduler::get(){
    return readyQueue.removeFirst();
}

void Scheduler::put(PCB *pcb){
    readyQueue.addLast(pcb);
}