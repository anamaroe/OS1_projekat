#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"
#include "../lib/console.h"

class MemoryAllocator {

    struct FreeMemHeader {
        FreeMemHeader* next;
        size_t size;
    };
public:
    static FreeMemHeader* freeMemHead;

    static int tryToJoin(FreeMemHeader* cur);

    static void* allocateMEM(size_t size);

    static int deallocateMEM(void* v);

};

#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP