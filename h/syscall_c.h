#pragma once

#include "../lib/hw.h"

#ifdef __cplusplus
extern "C" {
#endif

class PCB;              //_thread
typedef PCB* thread_t;  // _thread* thread_t;

// creator kreira pcb...
int thread_creator (thread_t* handle, void(*start_routine)(void*), void* arg);

// stavlja pcb u scheduler: (startuje nit)
int thread_starter (thread_t handle);

// poziva thread_creator & thread_starter
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);

// set finished i predaje procesor (context switch)
int thread_exit();

// promena kontexta
void thread_dispatch();

void thread_join(thread_t handle);

class Sem;              // _sem
typedef Sem* sem_t;     // _sem* sem_t

int sem_open (sem_t* handle, unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);


char getc ();

void putc (char c);


void* mem_alloc (size_t size);

int mem_free (void*);


int time_sleep (time_t);


#ifdef __cplusplus
}
#endif