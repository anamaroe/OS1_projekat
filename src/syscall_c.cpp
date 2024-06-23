#include "../h/syscall_cpp.hpp"
#include "../h/Scheduler.hpp"

int thread_create (thread_t* handle,
                   void(*start_routine)(void*),
                   void* arg) {
    uint64 op_code = 0x11;
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE*8);
    __asm__ volatile ("mv a4, %[par]" : : [par]"r"(stack_space));
    __asm__ volatile ("mv a3, %[par]" : : [par]"r"(arg));
    __asm__ volatile ("mv a2, %[par]" : : [par]"r"(start_routine));
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    thread_t hand;
    __asm__ volatile ("mv %[par], a1" : [par] "=r" (hand));
    *handle = hand;
    int ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

int thread_exit () {
    uint64 op_code = 0x12;
    __asm__ volatile ("mv a0, %[p]" : : [p]"r"(op_code));
    __asm__ volatile("ecall");
    int ret_val;
    __asm__ volatile ("mv %[arg], a0" : [arg]"=r"(ret_val));
    return ret_val;
}

void thread_dispatch() {
    uint64 op_code = 0x13;
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
}

void thread_join(thread_t handle) {
    uint64 op_code = 0x14;
    __asm__ volatile("mv a1, %[par]" : : [par]"r"(handle));
    __asm__ volatile("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile("ecall");
}

int thread_starter (thread_t handle) {
    uint64 op_code = 0x15;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    int ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

int thread_creator (thread_t* handle,
                    void(*start_routine)(void*),
                    void* arg) {
    // handle je vec u a0, st routine u a1...
    uint64 op_code = 0x16;
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE*8);
    __asm__ volatile ("mv a4, %[par]" : : [par]"r"(stack_space));
    __asm__ volatile ("mv a3, %[par]" : : [par]"r"(arg));
    __asm__ volatile ("mv a2, %[par]" : : [par]"r"(start_routine));
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    thread_t hand;
    __asm__ volatile ("mv %[par], a1" : [par] "=r" (hand));
    *handle = hand;
    int ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

// ----------------------------------------------------------

int sem_open (sem_t* handle, unsigned init) {
    uint64 op_code = 0x21;
    __asm__ volatile ("mv a2, %[par]" : : [par]"r"(init));
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

int sem_close (sem_t handle) {
    if (handle == nullptr) return -22;
    uint64 volatile op_code = 0x22;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

int sem_wait (sem_t id) {
    uint64 op_code = 0x23;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(id));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

int sem_signal (sem_t id) {
    uint64 op_code = 0x24;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(id));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

// ----------------------------------------------------------

char getc () {
    uint64 volatile op_code = 0x41;
    __asm__ volatile ("mv a0, %[p]" : : [p]"r"(op_code));
    __asm__ volatile ("ecall");
    uint64 volatile c;
    __asm__ volatile ("mv %[arg], a0" : [arg]"=r"(c));
    return (char)c;
}

void putc (char c) {
    uint64 volatile op_code = 0x42;
    char volatile r = c;
    __asm__ volatile ("mv a1, %[p]" : : [p]"r"(r));
    __asm__ volatile ("mv a0, %[p]" : : [p]"r"(op_code));
    __asm__ volatile ("ecall");
}

// ----------------------------------------------------------

void* mem_alloc (size_t size) {
    uint64 numOfBlocks = (size + sizeof(void*) + sizeof(uint64)) / MEM_BLOCK_SIZE;
    if((size + sizeof(void*) + sizeof(uint64)) % MEM_BLOCK_SIZE > 0) numOfBlocks++;
    uint64 op_code = 0x01;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(numOfBlocks));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    void* ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

int mem_free (void* v) {
    uint64 op_code = 0x02;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(v));
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    __asm__ volatile ("ecall");
    int ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

// ----------------------------------------------------------

int time_sleep (time_t) {
    return 0;
}