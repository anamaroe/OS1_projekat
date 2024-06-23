#ifndef _syscall_cpp
#define _syscall_cpp
#include "syscall_c.h"

class Semaphore {
public:
    Semaphore (unsigned int init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    friend void wrapper (void* t);

};

class Console {
public:
    static char getc();
    static void putc(char);
};

#endif