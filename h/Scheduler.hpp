#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP

#include "../h/List.hpp"
#include "../h/PCB.hpp"

class Scheduler {

private:

    static List<PCB> readyQueue;

public:

    static void put(PCB *pcb);
    static PCB *get();

};

#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP