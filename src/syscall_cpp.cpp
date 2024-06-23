#include "../h/syscall_cpp.hpp"
#include "../h/PCB.hpp"

//  THREAD

void wrapper(void* thread) {
    if(thread) {
        ((Thread*)thread)->run(); // zove run(), run je obavijen wrapperom
    }
}

Thread::Thread(void (*body)(void *), void *arg) {
    thread_creator(&myHandle, body, &arg);
    this->body = body; this->arg = arg;
}

Thread::Thread() {
    thread_creator(&myHandle, &wrapper, this);
}

int Thread::start() {
    if (myHandle) {
        return thread_starter(myHandle);
    }
    return -1;
}

void Thread::join() {
    if(myHandle) thread_join(myHandle);
}

Thread::~Thread () {}

void Thread::dispatch () {
    thread_dispatch();
}

int Thread::sleep (time_t) { return 0; }

//  SEMAPHORE

Semaphore::Semaphore (unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore () {
    sem_close(myHandle);
}

int Semaphore::wait () {
    return sem_wait(myHandle);
}

int Semaphore::signal () {
    return sem_signal(myHandle);
}

//  CONSOLE

char Console::getc () {
    return ::getc();
}

void Console::putc (char c) {
    ::putc(c);
}