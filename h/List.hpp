#ifndef PROJECT_BASE_V1_1_LIST_HPP
#define PROJECT_BASE_V1_1_LIST_HPP

#include "../h/PCB.hpp"
#include "../lib/console.h"

template <typename T>
class List {

private:
    struct Elem {
        T* data;
        Elem* next;

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

        static void operator delete(void *p) {
            MemoryAllocator::deallocateMEM(p);
        }

        static void operator delete[](void *p) {
            MemoryAllocator::deallocateMEM(p);
        }

        Elem(T* data, Elem *next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    int length;

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

    static void operator delete(void *p) {
        MemoryAllocator::deallocateMEM(p);
    }

    static void operator delete[](void *p) {
        MemoryAllocator::deallocateMEM(p);
    }

    List() : head(0), tail(0), length(0) {}
    List(const List<T> &) = delete;
    List<T> &operator=(const List<T>&) = delete;

    void addFirst(T * data){
        Elem *elem = new Elem(data, head);
        head = elem;
        if(!tail) tail = head;
        length++;
    }

    void addLast(T* data) {
        Elem* elem = new Elem(data, 0);
        if(tail){
            tail->next = elem;
            tail = elem;
        } else {
            head = tail = elem;
        }
        length++;
    }

    T *removeFirst() {
        if(!head) return 0;
        Elem* elem = head;
        head = head->next;
        if(!head) {
            tail = 0;
        }
        T* ret = elem->data;
        delete elem;
        length--;
        return ret;

    }

    T * peekFirst() {
        if(!head) { return 0; }
        return (head->data);
    }

    T *removeLast() {
        if(!head) return 0;
        Elem *prev = 0;
        for(Elem *curr = head; curr && curr != tail; curr = curr->next) {
            prev = curr;
        }
        Elem* elem = new Elem(tail->data, tail->next);
        if(prev) {
            prev->next = 0;
        } else {
            head = 0;
        }
        tail = prev;
        T* ret = elem->data;
        delete elem;
        length--;
        return ret;
    }

    T *peekLast() {
        if(!tail) { return 0; }
        return tail->data;
    }

    int len() { return length; }
};

#endif //PROJECT_BASE_V1_1_LIST_HPP