.extern _ZN5Riscv20handleSupervisorTrapEv
.global _ZN5Riscv14supervisorTrapEv
.align 4


_ZN5Riscv14supervisorTrapEv:
    j _ZN5Riscv9ecallTrapEv // ecall and interrupts handler
    j _ZN5Riscv9timerTrapEv // timer handler
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    j _ZN5Riscv11consoleTrapEv // console handler

_ZN5Riscv9ecallTrapEv:
    addi sp, sp, -256

   .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
   sd x\index, \index * 8(sp)
   .endr

   call _ZN5Riscv20handleSupervisorTrapEv

   .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
   ld x\index, \index * 8(sp)
   .endr

   addi sp, sp, 256

   sret

_ZN5Riscv9timerTrapEv:

    addi sp, sp, -256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr

    call _ZN5Riscv12timerHandlerEv

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr

    addi sp, sp, 256

    sret

_ZN5Riscv11consoleTrapEv:

    addi sp, sp, -256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr

    call _ZN5Riscv14consoleHandlerEv

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr

    addi sp, sp, 256

    sret