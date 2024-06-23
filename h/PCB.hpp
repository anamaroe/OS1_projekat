#ifndef PROJECT_BASE_V1_1_PCB_HPP
#define PROJECT_BASE_V1_1_PCB_HPP

#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"


class PCB {

public:

    static void *operator new(size_t n) {
        uint64 numOfBlocks = (n + sizeof(void*) + sizeof(uint64)) / MEM_BLOCK_SIZE;
        if((n + sizeof(void*) + sizeof(uint64)) % MEM_BLOCK_SIZE > 0) numOfBlocks++;
        return MemoryAllocator::allocateMEM(numOfBlocks);
    }
    static void *operator new[](size_t n) {
        uint64 numOfBlocks = (n + sizeof(void*) + sizeof(uint64)) / MEM_BLOCK_SIZE;
        if((n + sizeof(void*) + sizeof(uint64)) % MEM_BLOCK_SIZE > 0) numOfBlocks++;
        return MemoryAllocator::allocateMEM(numOfBlocks);
    }

    static void operator delete(void *p) { MemoryAllocator::deallocateMEM(p); }

    static void operator delete[](void *p) { MemoryAllocator::deallocateMEM(p); }

    ~PCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool finish) { PCB::finished = finish; }

    using Body = void(*)(void*);

    static void yield();

    static PCB* running;
private:

    explicit PCB(Body body, void* arg, uint64* st):
            body(body),
            stack(body != nullptr? st : nullptr),
            context(
                    {(uint64) &threadWrapper,
                     stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE*2] : 0
                    }),
            finished(false),
            args(arg),
            isBlocked(false)
    {}

    struct Context {
        uint64 ra;
        uint64 sp;
    };
    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    void* args;
    bool isBlocked;

    friend class Riscv;
    friend class Sem;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *newContext);

    static void dispatch();

    static void joinPCB(PCB* handle);

    static uint64 constexpr STACK_SIZE = 4096;
    static uint64 constexpr TIME_SLICE = 2;

public:

    static PCB* createThreadPCB(uint64 st_rout, uint64 arg, uint64 stack_s);

    static PCB* creatorThreadPCB(uint64 st_rout, uint64 arg, uint64 stack_s);

    static void startThreadPCB(uint64 handle);

    static int exitThreadPCB();

    static void dispatchThreadPCB();

};

#endif //PROJECT_BASE_V1_1_PCB_HPP