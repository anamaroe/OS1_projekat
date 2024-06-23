#ifndef PROJECT_BASE_V1_1_SEM_HPP
#define PROJECT_BASE_V1_1_SEM_HPP

#include "../h/List.hpp"
#include "../h/Scheduler.hpp"
#include "../h/PCB.hpp"

class Sem {

public:

    void *operator new(size_t n) {
        uint64 numOfBlocks = (n + sizeof(void*) + sizeof(uint64)) / MEM_BLOCK_SIZE;
        if((n + sizeof(void*) + sizeof(uint64)) % MEM_BLOCK_SIZE > 0) numOfBlocks++;
        return MemoryAllocator::allocateMEM(numOfBlocks);
    }

    void *operator new[](size_t n) {
        uint64 numOfBlocks = (n + sizeof(void*) + sizeof(uint64)) / MEM_BLOCK_SIZE;
        if((n + sizeof(void*) + sizeof(uint64)) % MEM_BLOCK_SIZE > 0) numOfBlocks++;
        return MemoryAllocator::allocateMEM(numOfBlocks);
    }

    void operator delete(void *p)  {
        MemoryAllocator::deallocateMEM(p);
    }

    void operator delete[](void *p)  {
        MemoryAllocator::deallocateMEM(p);
    }

    virtual ~Sem();

    static Sem* openSEM(int init = 1);

    int closeSEM();

    int waitSEM();

    int signalSEM();

    int value() const { return val; }

protected:

    void block();

    void unblock();

private:

    explicit Sem(int init = 1) : val(init) {}

    int val;

    List<PCB> blocked;

    friend class Riscv;

};

#endif //PROJECT_BASE_V1_1_SEM_HPP