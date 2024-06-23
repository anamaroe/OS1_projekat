#include "../h/MemoryAllocator.hpp"

// points to the start of the linked list of free segments
MemoryAllocator::FreeMemHeader* MemoryAllocator::freeMemHead = nullptr;

// Helper: try to join cur with the next segment
int MemoryAllocator::tryToJoin(FreeMemHeader* cur) {
    // zapamceno size je u blokovima
    if(!cur) return 0;
    if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*) (cur->next)) {
        // Remove the cur->next segment:
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    return 0;
}

void* MemoryAllocator::allocateMEM(size_t size) {
    // size je u blokovima
    if(freeMemHead == nullptr) {
        FreeMemHeader* allocated = (FreeMemHeader*)HEAP_START_ADDR;
        FreeMemHeader* freeMem = (FreeMemHeader*)((char*)HEAP_START_ADDR + size * MEM_BLOCK_SIZE);
        allocated->next = nullptr; // koristan prostor
        allocated->size = size; // u blokovima
        freeMem->next = nullptr;
        freeMem->size = (size_t)((char*)HEAP_END_ADDR - (char*)freeMem)/MEM_BLOCK_SIZE;
        freeMemHead = freeMem;

        return (char*)allocated + sizeof(FreeMemHeader);
    }

    FreeMemHeader* cur = freeMemHead, *prev = nullptr;
    for(; cur; prev = cur, cur = cur->next) {
        if (cur->size >= size) break; // Found
    }
    if(cur == nullptr) { return cur; }

    if(cur->size > size) {
        // cur je free segment koji ce biti alociran (ceo ili deo)
        // remaining fragment:
        FreeMemHeader* newFreeChunk = (FreeMemHeader*) ((char*)cur + size * MEM_BLOCK_SIZE);
        if(prev) {
            prev->next = newFreeChunk;
        } else {
            freeMemHead = newFreeChunk;
        }
        newFreeChunk->next = cur->next;
        newFreeChunk->size = cur->size - size;
        cur->size = size; // u blokovima
    } else {
        // no remaining fragment
        if(prev) {
            prev->next = cur->next;
        }
        else {
            freeMemHead = cur->next;
        }
    }
    cur->next = nullptr;
    return (char*)cur + sizeof(FreeMemHeader);
}

int MemoryAllocator::deallocateMEM(void *v) {
    // size je velicina segmenta koji se dealocira, u blokovima
    // v = pocetak alociranog prostora, next, size, pa prostor
    v = (char*)((char*)v - sizeof(FreeMemHeader));
    if((char*)v < (char*)HEAP_START_ADDR) {
        return -1;
    }
    // Find the place where to insert the new free segment (after cur)
    FreeMemHeader *cur = 0;
    if (!freeMemHead || (char*)v < (char*)freeMemHead) {
        cur = 0; // first
    }
    else {
        for (cur = freeMemHead; cur->next != nullptr && (char*)v > (char*)(cur->next); cur = cur->next);
    }
    // Insert the new segment after cur:
    FreeMemHeader* freeSeg = (FreeMemHeader*)v;
    if(cur) {
        freeSeg->next = cur->next;
        cur->next = freeSeg;
    } else {
        freeSeg->next = freeMemHead;
        freeMemHead = freeSeg;
    }
    // Try to join with the previous and next segments:
    tryToJoin(freeSeg);
    tryToJoin(cur);

    return 0;
}