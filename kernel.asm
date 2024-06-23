
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	51013103          	ld	sp,1296(sp) # 8000b510 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7b9050ef          	jal	ra,80005fd4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.global _ZN5Riscv14supervisorTrapEv
.align 4


_ZN5Riscv14supervisorTrapEv:
    j _ZN5Riscv9ecallTrapEv // ecall and interrupts handler
    80001000:	0280006f          	j	80001028 <_ZN5Riscv9ecallTrapEv>
    j _ZN5Riscv9timerTrapEv // timer handler
    80001004:	1340006f          	j	80001138 <_ZN5Riscv9timerTrapEv>
    NOP
    80001008:	00000013          	nop
    NOP
    8000100c:	00000013          	nop
    NOP
    80001010:	00000013          	nop
    NOP
    80001014:	00000013          	nop
    NOP
    80001018:	00000013          	nop
    NOP
    8000101c:	00000013          	nop
    NOP
    80001020:	00000013          	nop
    j _ZN5Riscv11consoleTrapEv // console handler
    80001024:	2240006f          	j	80001248 <_ZN5Riscv11consoleTrapEv>

0000000080001028 <_ZN5Riscv9ecallTrapEv>:

_ZN5Riscv9ecallTrapEv:
    addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256

   .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
   sd x\index, \index * 8(sp)
   .endr
    8000102c:	00013023          	sd	zero,0(sp)
    80001030:	00113423          	sd	ra,8(sp)
    80001034:	00213823          	sd	sp,16(sp)
    80001038:	00313c23          	sd	gp,24(sp)
    8000103c:	02413023          	sd	tp,32(sp)
    80001040:	02513423          	sd	t0,40(sp)
    80001044:	02613823          	sd	t1,48(sp)
    80001048:	02713c23          	sd	t2,56(sp)
    8000104c:	04813023          	sd	s0,64(sp)
    80001050:	04913423          	sd	s1,72(sp)
    80001054:	04a13823          	sd	a0,80(sp)
    80001058:	04b13c23          	sd	a1,88(sp)
    8000105c:	06c13023          	sd	a2,96(sp)
    80001060:	06d13423          	sd	a3,104(sp)
    80001064:	06e13823          	sd	a4,112(sp)
    80001068:	06f13c23          	sd	a5,120(sp)
    8000106c:	09013023          	sd	a6,128(sp)
    80001070:	09113423          	sd	a7,136(sp)
    80001074:	09213823          	sd	s2,144(sp)
    80001078:	09313c23          	sd	s3,152(sp)
    8000107c:	0b413023          	sd	s4,160(sp)
    80001080:	0b513423          	sd	s5,168(sp)
    80001084:	0b613823          	sd	s6,176(sp)
    80001088:	0b713c23          	sd	s7,184(sp)
    8000108c:	0d813023          	sd	s8,192(sp)
    80001090:	0d913423          	sd	s9,200(sp)
    80001094:	0da13823          	sd	s10,208(sp)
    80001098:	0db13c23          	sd	s11,216(sp)
    8000109c:	0fc13023          	sd	t3,224(sp)
    800010a0:	0fd13423          	sd	t4,232(sp)
    800010a4:	0fe13823          	sd	t5,240(sp)
    800010a8:	0ff13c23          	sd	t6,248(sp)

   call _ZN5Riscv20handleSupervisorTrapEv
    800010ac:	30c010ef          	jal	ra,800023b8 <_ZN5Riscv20handleSupervisorTrapEv>

   .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
   ld x\index, \index * 8(sp)
   .endr
    800010b0:	00013003          	ld	zero,0(sp)
    800010b4:	00813083          	ld	ra,8(sp)
    800010b8:	01013103          	ld	sp,16(sp)
    800010bc:	01813183          	ld	gp,24(sp)
    800010c0:	02013203          	ld	tp,32(sp)
    800010c4:	02813283          	ld	t0,40(sp)
    800010c8:	03013303          	ld	t1,48(sp)
    800010cc:	03813383          	ld	t2,56(sp)
    800010d0:	04013403          	ld	s0,64(sp)
    800010d4:	04813483          	ld	s1,72(sp)
    800010d8:	05013503          	ld	a0,80(sp)
    800010dc:	05813583          	ld	a1,88(sp)
    800010e0:	06013603          	ld	a2,96(sp)
    800010e4:	06813683          	ld	a3,104(sp)
    800010e8:	07013703          	ld	a4,112(sp)
    800010ec:	07813783          	ld	a5,120(sp)
    800010f0:	08013803          	ld	a6,128(sp)
    800010f4:	08813883          	ld	a7,136(sp)
    800010f8:	09013903          	ld	s2,144(sp)
    800010fc:	09813983          	ld	s3,152(sp)
    80001100:	0a013a03          	ld	s4,160(sp)
    80001104:	0a813a83          	ld	s5,168(sp)
    80001108:	0b013b03          	ld	s6,176(sp)
    8000110c:	0b813b83          	ld	s7,184(sp)
    80001110:	0c013c03          	ld	s8,192(sp)
    80001114:	0c813c83          	ld	s9,200(sp)
    80001118:	0d013d03          	ld	s10,208(sp)
    8000111c:	0d813d83          	ld	s11,216(sp)
    80001120:	0e013e03          	ld	t3,224(sp)
    80001124:	0e813e83          	ld	t4,232(sp)
    80001128:	0f013f03          	ld	t5,240(sp)
    8000112c:	0f813f83          	ld	t6,248(sp)

   addi sp, sp, 256
    80001130:	10010113          	addi	sp,sp,256

   sret
    80001134:	10200073          	sret

0000000080001138 <_ZN5Riscv9timerTrapEv>:

_ZN5Riscv9timerTrapEv:

    addi sp, sp, -256
    80001138:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000113c:	00013023          	sd	zero,0(sp)
    80001140:	00113423          	sd	ra,8(sp)
    80001144:	00213823          	sd	sp,16(sp)
    80001148:	00313c23          	sd	gp,24(sp)
    8000114c:	02413023          	sd	tp,32(sp)
    80001150:	02513423          	sd	t0,40(sp)
    80001154:	02613823          	sd	t1,48(sp)
    80001158:	02713c23          	sd	t2,56(sp)
    8000115c:	04813023          	sd	s0,64(sp)
    80001160:	04913423          	sd	s1,72(sp)
    80001164:	04a13823          	sd	a0,80(sp)
    80001168:	04b13c23          	sd	a1,88(sp)
    8000116c:	06c13023          	sd	a2,96(sp)
    80001170:	06d13423          	sd	a3,104(sp)
    80001174:	06e13823          	sd	a4,112(sp)
    80001178:	06f13c23          	sd	a5,120(sp)
    8000117c:	09013023          	sd	a6,128(sp)
    80001180:	09113423          	sd	a7,136(sp)
    80001184:	09213823          	sd	s2,144(sp)
    80001188:	09313c23          	sd	s3,152(sp)
    8000118c:	0b413023          	sd	s4,160(sp)
    80001190:	0b513423          	sd	s5,168(sp)
    80001194:	0b613823          	sd	s6,176(sp)
    80001198:	0b713c23          	sd	s7,184(sp)
    8000119c:	0d813023          	sd	s8,192(sp)
    800011a0:	0d913423          	sd	s9,200(sp)
    800011a4:	0da13823          	sd	s10,208(sp)
    800011a8:	0db13c23          	sd	s11,216(sp)
    800011ac:	0fc13023          	sd	t3,224(sp)
    800011b0:	0fd13423          	sd	t4,232(sp)
    800011b4:	0fe13823          	sd	t5,240(sp)
    800011b8:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv12timerHandlerEv
    800011bc:	1b4010ef          	jal	ra,80002370 <_ZN5Riscv12timerHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011c0:	00013003          	ld	zero,0(sp)
    800011c4:	00813083          	ld	ra,8(sp)
    800011c8:	01013103          	ld	sp,16(sp)
    800011cc:	01813183          	ld	gp,24(sp)
    800011d0:	02013203          	ld	tp,32(sp)
    800011d4:	02813283          	ld	t0,40(sp)
    800011d8:	03013303          	ld	t1,48(sp)
    800011dc:	03813383          	ld	t2,56(sp)
    800011e0:	04013403          	ld	s0,64(sp)
    800011e4:	04813483          	ld	s1,72(sp)
    800011e8:	05013503          	ld	a0,80(sp)
    800011ec:	05813583          	ld	a1,88(sp)
    800011f0:	06013603          	ld	a2,96(sp)
    800011f4:	06813683          	ld	a3,104(sp)
    800011f8:	07013703          	ld	a4,112(sp)
    800011fc:	07813783          	ld	a5,120(sp)
    80001200:	08013803          	ld	a6,128(sp)
    80001204:	08813883          	ld	a7,136(sp)
    80001208:	09013903          	ld	s2,144(sp)
    8000120c:	09813983          	ld	s3,152(sp)
    80001210:	0a013a03          	ld	s4,160(sp)
    80001214:	0a813a83          	ld	s5,168(sp)
    80001218:	0b013b03          	ld	s6,176(sp)
    8000121c:	0b813b83          	ld	s7,184(sp)
    80001220:	0c013c03          	ld	s8,192(sp)
    80001224:	0c813c83          	ld	s9,200(sp)
    80001228:	0d013d03          	ld	s10,208(sp)
    8000122c:	0d813d83          	ld	s11,216(sp)
    80001230:	0e013e03          	ld	t3,224(sp)
    80001234:	0e813e83          	ld	t4,232(sp)
    80001238:	0f013f03          	ld	t5,240(sp)
    8000123c:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001240:	10010113          	addi	sp,sp,256

    sret
    80001244:	10200073          	sret

0000000080001248 <_ZN5Riscv11consoleTrapEv>:

_ZN5Riscv11consoleTrapEv:

    addi sp, sp, -256
    80001248:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000124c:	00013023          	sd	zero,0(sp)
    80001250:	00113423          	sd	ra,8(sp)
    80001254:	00213823          	sd	sp,16(sp)
    80001258:	00313c23          	sd	gp,24(sp)
    8000125c:	02413023          	sd	tp,32(sp)
    80001260:	02513423          	sd	t0,40(sp)
    80001264:	02613823          	sd	t1,48(sp)
    80001268:	02713c23          	sd	t2,56(sp)
    8000126c:	04813023          	sd	s0,64(sp)
    80001270:	04913423          	sd	s1,72(sp)
    80001274:	04a13823          	sd	a0,80(sp)
    80001278:	04b13c23          	sd	a1,88(sp)
    8000127c:	06c13023          	sd	a2,96(sp)
    80001280:	06d13423          	sd	a3,104(sp)
    80001284:	06e13823          	sd	a4,112(sp)
    80001288:	06f13c23          	sd	a5,120(sp)
    8000128c:	09013023          	sd	a6,128(sp)
    80001290:	09113423          	sd	a7,136(sp)
    80001294:	09213823          	sd	s2,144(sp)
    80001298:	09313c23          	sd	s3,152(sp)
    8000129c:	0b413023          	sd	s4,160(sp)
    800012a0:	0b513423          	sd	s5,168(sp)
    800012a4:	0b613823          	sd	s6,176(sp)
    800012a8:	0b713c23          	sd	s7,184(sp)
    800012ac:	0d813023          	sd	s8,192(sp)
    800012b0:	0d913423          	sd	s9,200(sp)
    800012b4:	0da13823          	sd	s10,208(sp)
    800012b8:	0db13c23          	sd	s11,216(sp)
    800012bc:	0fc13023          	sd	t3,224(sp)
    800012c0:	0fd13423          	sd	t4,232(sp)
    800012c4:	0fe13823          	sd	t5,240(sp)
    800012c8:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv14consoleHandlerEv
    800012cc:	0c4010ef          	jal	ra,80002390 <_ZN5Riscv14consoleHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800012d0:	00013003          	ld	zero,0(sp)
    800012d4:	00813083          	ld	ra,8(sp)
    800012d8:	01013103          	ld	sp,16(sp)
    800012dc:	01813183          	ld	gp,24(sp)
    800012e0:	02013203          	ld	tp,32(sp)
    800012e4:	02813283          	ld	t0,40(sp)
    800012e8:	03013303          	ld	t1,48(sp)
    800012ec:	03813383          	ld	t2,56(sp)
    800012f0:	04013403          	ld	s0,64(sp)
    800012f4:	04813483          	ld	s1,72(sp)
    800012f8:	05013503          	ld	a0,80(sp)
    800012fc:	05813583          	ld	a1,88(sp)
    80001300:	06013603          	ld	a2,96(sp)
    80001304:	06813683          	ld	a3,104(sp)
    80001308:	07013703          	ld	a4,112(sp)
    8000130c:	07813783          	ld	a5,120(sp)
    80001310:	08013803          	ld	a6,128(sp)
    80001314:	08813883          	ld	a7,136(sp)
    80001318:	09013903          	ld	s2,144(sp)
    8000131c:	09813983          	ld	s3,152(sp)
    80001320:	0a013a03          	ld	s4,160(sp)
    80001324:	0a813a83          	ld	s5,168(sp)
    80001328:	0b013b03          	ld	s6,176(sp)
    8000132c:	0b813b83          	ld	s7,184(sp)
    80001330:	0c013c03          	ld	s8,192(sp)
    80001334:	0c813c83          	ld	s9,200(sp)
    80001338:	0d013d03          	ld	s10,208(sp)
    8000133c:	0d813d83          	ld	s11,216(sp)
    80001340:	0e013e03          	ld	t3,224(sp)
    80001344:	0e813e83          	ld	t4,232(sp)
    80001348:	0f013f03          	ld	t5,240(sp)
    8000134c:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001350:	10010113          	addi	sp,sp,256

    80001354:	10200073          	sret

0000000080001358 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    # &old->context u a0
    # &running->context u a1

    // cuvaju se stare vrednosti u kontextu old niti
    sd ra, 0*8(a0)
    80001358:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    8000135c:	00253423          	sd	sp,8(a0)

    // loaduju se nove vrednosti iz a1(context nove)
    ld ra, 0*8(a1)
    80001360:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    80001364:	0085b103          	ld	sp,8(a1)

    80001368:	00008067          	ret

000000008000136c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000136c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001370:	00b29a63          	bne	t0,a1,80001384 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001374:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001378:	fe029ae3          	bnez	t0,8000136c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000137c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001380:	00008067          	ret

0000000080001384 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001384:	00100513          	li	a0,1
    80001388:	00008067          	ret

000000008000138c <thread_exit>:
    int ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    return ret_val;
}

int thread_exit () {
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    uint64 op_code = 0x12;
    __asm__ volatile ("mv a0, %[p]" : : [p]"r"(op_code));
    80001398:	01200793          	li	a5,18
    8000139c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013a0:	00000073          	ecall
    int ret_val;
    __asm__ volatile ("mv %[arg], a0" : [arg]"=r"(ret_val));
    800013a4:	00050513          	mv	a0,a0
    return ret_val;
}
    800013a8:	0005051b          	sext.w	a0,a0
    800013ac:	00813403          	ld	s0,8(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <thread_dispatch>:

void thread_dispatch() {
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    uint64 op_code = 0x13;
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    800013c4:	01300793          	li	a5,19
    800013c8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013cc:	00000073          	ecall
}
    800013d0:	00813403          	ld	s0,8(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <thread_join>:

void thread_join(thread_t handle) {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
    uint64 op_code = 0x14;
    __asm__ volatile("mv a1, %[par]" : : [par]"r"(handle));
    800013e8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[par]" : : [par]"r"(op_code));
    800013ec:	01400793          	li	a5,20
    800013f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall
}
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <thread_starter>:

int thread_starter (thread_t handle) {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    uint64 op_code = 0x15;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    80001410:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    80001414:	01500793          	li	a5,21
    80001418:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000141c:	00000073          	ecall
    int ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    80001420:	00050513          	mv	a0,a0
    return ret_val;
}
    80001424:	0005051b          	sext.w	a0,a0
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <sem_open>:
    return ret_val;
}

// ----------------------------------------------------------

int sem_open (sem_t* handle, unsigned init) {
    80001434:	fe010113          	addi	sp,sp,-32
    80001438:	00813c23          	sd	s0,24(sp)
    8000143c:	02010413          	addi	s0,sp,32
    uint64 op_code = 0x21;
    __asm__ volatile ("mv a2, %[par]" : : [par]"r"(init));
    80001440:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    80001444:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    80001448:	02100793          	li	a5,33
    8000144c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001450:	00000073          	ecall
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    80001454:	00050793          	mv	a5,a0
    80001458:	fef42623          	sw	a5,-20(s0)
    return ret_val;
    8000145c:	fec42503          	lw	a0,-20(s0)
}
    80001460:	0005051b          	sext.w	a0,a0
    80001464:	01813403          	ld	s0,24(sp)
    80001468:	02010113          	addi	sp,sp,32
    8000146c:	00008067          	ret

0000000080001470 <sem_close>:

int sem_close (sem_t handle) {
    if (handle == nullptr) return -22;
    80001470:	04050263          	beqz	a0,800014b4 <sem_close+0x44>
int sem_close (sem_t handle) {
    80001474:	fe010113          	addi	sp,sp,-32
    80001478:	00813c23          	sd	s0,24(sp)
    8000147c:	02010413          	addi	s0,sp,32
    uint64 volatile op_code = 0x22;
    80001480:	02200793          	li	a5,34
    80001484:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    80001488:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    8000148c:	fe843783          	ld	a5,-24(s0)
    80001490:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001494:	00000073          	ecall
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    80001498:	00050793          	mv	a5,a0
    8000149c:	fef42223          	sw	a5,-28(s0)
    return ret_val;
    800014a0:	fe442503          	lw	a0,-28(s0)
    800014a4:	0005051b          	sext.w	a0,a0
}
    800014a8:	01813403          	ld	s0,24(sp)
    800014ac:	02010113          	addi	sp,sp,32
    800014b0:	00008067          	ret
    if (handle == nullptr) return -22;
    800014b4:	fea00513          	li	a0,-22
}
    800014b8:	00008067          	ret

00000000800014bc <sem_wait>:

int sem_wait (sem_t id) {
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00813c23          	sd	s0,24(sp)
    800014c4:	02010413          	addi	s0,sp,32
    uint64 op_code = 0x23;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(id));
    800014c8:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    800014cc:	02300793          	li	a5,35
    800014d0:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800014d4:	00000073          	ecall
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    800014d8:	00050793          	mv	a5,a0
    800014dc:	fef42623          	sw	a5,-20(s0)
    return ret_val;
    800014e0:	fec42503          	lw	a0,-20(s0)
}
    800014e4:	0005051b          	sext.w	a0,a0
    800014e8:	01813403          	ld	s0,24(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret

00000000800014f4 <sem_signal>:

int sem_signal (sem_t id) {
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00813c23          	sd	s0,24(sp)
    800014fc:	02010413          	addi	s0,sp,32
    uint64 op_code = 0x24;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(id));
    80001500:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    80001504:	02400793          	li	a5,36
    80001508:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000150c:	00000073          	ecall
    int volatile ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    80001510:	00050793          	mv	a5,a0
    80001514:	fef42623          	sw	a5,-20(s0)
    return ret_val;
    80001518:	fec42503          	lw	a0,-20(s0)
}
    8000151c:	0005051b          	sext.w	a0,a0
    80001520:	01813403          	ld	s0,24(sp)
    80001524:	02010113          	addi	sp,sp,32
    80001528:	00008067          	ret

000000008000152c <getc>:

// ----------------------------------------------------------

char getc () {
    8000152c:	fe010113          	addi	sp,sp,-32
    80001530:	00813c23          	sd	s0,24(sp)
    80001534:	02010413          	addi	s0,sp,32
    uint64 volatile op_code = 0x41;
    80001538:	04100793          	li	a5,65
    8000153c:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile ("mv a0, %[p]" : : [p]"r"(op_code));
    80001540:	fe843783          	ld	a5,-24(s0)
    80001544:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001548:	00000073          	ecall
    uint64 volatile c;
    __asm__ volatile ("mv %[arg], a0" : [arg]"=r"(c));
    8000154c:	00050793          	mv	a5,a0
    80001550:	fef43023          	sd	a5,-32(s0)
    return (char)c;
    80001554:	fe043503          	ld	a0,-32(s0)
}
    80001558:	0ff57513          	andi	a0,a0,255
    8000155c:	01813403          	ld	s0,24(sp)
    80001560:	02010113          	addi	sp,sp,32
    80001564:	00008067          	ret

0000000080001568 <putc>:

void putc (char c) {
    80001568:	fe010113          	addi	sp,sp,-32
    8000156c:	00813c23          	sd	s0,24(sp)
    80001570:	02010413          	addi	s0,sp,32
    uint64 volatile op_code = 0x42;
    80001574:	04200793          	li	a5,66
    80001578:	fef43423          	sd	a5,-24(s0)
    char volatile r = c;
    8000157c:	fea403a3          	sb	a0,-25(s0)
    __asm__ volatile ("mv a1, %[p]" : : [p]"r"(r));
    80001580:	fe744783          	lbu	a5,-25(s0)
    80001584:	00078593          	mv	a1,a5
    __asm__ volatile ("mv a0, %[p]" : : [p]"r"(op_code));
    80001588:	fe843783          	ld	a5,-24(s0)
    8000158c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001590:	00000073          	ecall
}
    80001594:	01813403          	ld	s0,24(sp)
    80001598:	02010113          	addi	sp,sp,32
    8000159c:	00008067          	ret

00000000800015a0 <mem_alloc>:

// ----------------------------------------------------------

void* mem_alloc (size_t size) {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    uint64 numOfBlocks = (size + sizeof(void*) + sizeof(uint64)) / MEM_BLOCK_SIZE;
    800015ac:	01050513          	addi	a0,a0,16
    800015b0:	00655793          	srli	a5,a0,0x6
    if((size + sizeof(void*) + sizeof(uint64)) % MEM_BLOCK_SIZE > 0) numOfBlocks++;
    800015b4:	03f57513          	andi	a0,a0,63
    800015b8:	00050463          	beqz	a0,800015c0 <mem_alloc+0x20>
    800015bc:	00178793          	addi	a5,a5,1
    uint64 op_code = 0x01;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(numOfBlocks));
    800015c0:	00078593          	mv	a1,a5
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    800015c4:	00100793          	li	a5,1
    800015c8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800015cc:	00000073          	ecall
    void* ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    800015d0:	00050513          	mv	a0,a0
    return ret_val;
}
    800015d4:	00813403          	ld	s0,8(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <thread_create>:
                   void* arg) {
    800015e0:	fd010113          	addi	sp,sp,-48
    800015e4:	02113423          	sd	ra,40(sp)
    800015e8:	02813023          	sd	s0,32(sp)
    800015ec:	00913c23          	sd	s1,24(sp)
    800015f0:	01213823          	sd	s2,16(sp)
    800015f4:	01313423          	sd	s3,8(sp)
    800015f8:	03010413          	addi	s0,sp,48
    800015fc:	00050493          	mv	s1,a0
    80001600:	00058913          	mv	s2,a1
    80001604:	00060993          	mv	s3,a2
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE*8);
    80001608:	00008537          	lui	a0,0x8
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	f94080e7          	jalr	-108(ra) # 800015a0 <mem_alloc>
    __asm__ volatile ("mv a4, %[par]" : : [par]"r"(stack_space));
    80001614:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %[par]" : : [par]"r"(arg));
    80001618:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %[par]" : : [par]"r"(start_routine));
    8000161c:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    80001620:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    80001624:	01100793          	li	a5,17
    80001628:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000162c:	00000073          	ecall
    __asm__ volatile ("mv %[par], a1" : [par] "=r" (hand));
    80001630:	00058793          	mv	a5,a1
    *handle = hand;
    80001634:	00f4b023          	sd	a5,0(s1)
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    80001638:	00050513          	mv	a0,a0
}
    8000163c:	0005051b          	sext.w	a0,a0
    80001640:	02813083          	ld	ra,40(sp)
    80001644:	02013403          	ld	s0,32(sp)
    80001648:	01813483          	ld	s1,24(sp)
    8000164c:	01013903          	ld	s2,16(sp)
    80001650:	00813983          	ld	s3,8(sp)
    80001654:	03010113          	addi	sp,sp,48
    80001658:	00008067          	ret

000000008000165c <thread_creator>:
                    void* arg) {
    8000165c:	fd010113          	addi	sp,sp,-48
    80001660:	02113423          	sd	ra,40(sp)
    80001664:	02813023          	sd	s0,32(sp)
    80001668:	00913c23          	sd	s1,24(sp)
    8000166c:	01213823          	sd	s2,16(sp)
    80001670:	01313423          	sd	s3,8(sp)
    80001674:	03010413          	addi	s0,sp,48
    80001678:	00050493          	mv	s1,a0
    8000167c:	00058913          	mv	s2,a1
    80001680:	00060993          	mv	s3,a2
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE*8);
    80001684:	00008537          	lui	a0,0x8
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	f18080e7          	jalr	-232(ra) # 800015a0 <mem_alloc>
    __asm__ volatile ("mv a4, %[par]" : : [par]"r"(stack_space));
    80001690:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %[par]" : : [par]"r"(arg));
    80001694:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %[par]" : : [par]"r"(start_routine));
    80001698:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(handle));
    8000169c:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    800016a0:	01600793          	li	a5,22
    800016a4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800016a8:	00000073          	ecall
    __asm__ volatile ("mv %[par], a1" : [par] "=r" (hand));
    800016ac:	00058793          	mv	a5,a1
    *handle = hand;
    800016b0:	00f4b023          	sd	a5,0(s1)
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    800016b4:	00050513          	mv	a0,a0
}
    800016b8:	0005051b          	sext.w	a0,a0
    800016bc:	02813083          	ld	ra,40(sp)
    800016c0:	02013403          	ld	s0,32(sp)
    800016c4:	01813483          	ld	s1,24(sp)
    800016c8:	01013903          	ld	s2,16(sp)
    800016cc:	00813983          	ld	s3,8(sp)
    800016d0:	03010113          	addi	sp,sp,48
    800016d4:	00008067          	ret

00000000800016d8 <mem_free>:

int mem_free (void* v) {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
    uint64 op_code = 0x02;
    __asm__ volatile ("mv a1, %[par]" : : [par]"r"(v));
    800016e4:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code));
    800016e8:	00200793          	li	a5,2
    800016ec:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800016f0:	00000073          	ecall
    int ret_val;
    __asm__ volatile ("mv %[ret], a0" : [ret]"=r"(ret_val));
    800016f4:	00050513          	mv	a0,a0
    return ret_val;
}
    800016f8:	0005051b          	sext.w	a0,a0
    800016fc:	00813403          	ld	s0,8(sp)
    80001700:	01010113          	addi	sp,sp,16
    80001704:	00008067          	ret

0000000080001708 <time_sleep>:

// ----------------------------------------------------------

int time_sleep (time_t) {
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00813423          	sd	s0,8(sp)
    80001710:	01010413          	addi	s0,sp,16
    return 0;
    80001714:	00000513          	li	a0,0
    80001718:	00813403          	ld	s0,8(sp)
    8000171c:	01010113          	addi	sp,sp,16
    80001720:	00008067          	ret

0000000080001724 <_ZN3PCB13threadWrapperEv>:
    }
    running = Scheduler::get();
    PCB::contextSwitch(&old->context, &running->context);
}

void PCB::threadWrapper() {
    80001724:	ff010113          	addi	sp,sp,-16
    80001728:	00113423          	sd	ra,8(sp)
    8000172c:	00813023          	sd	s0,0(sp)
    80001730:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001734:	00001097          	auipc	ra,0x1
    80001738:	c14080e7          	jalr	-1004(ra) # 80002348 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    8000173c:	0000a797          	auipc	a5,0xa
    80001740:	e347b783          	ld	a5,-460(a5) # 8000b570 <_ZN3PCB7runningE>
    80001744:	0007b703          	ld	a4,0(a5)
    80001748:	0287b503          	ld	a0,40(a5)
    8000174c:	000700e7          	jalr	a4
    thread_exit();
    80001750:	00000097          	auipc	ra,0x0
    80001754:	c3c080e7          	jalr	-964(ra) # 8000138c <thread_exit>
}
    80001758:	00813083          	ld	ra,8(sp)
    8000175c:	00013403          	ld	s0,0(sp)
    80001760:	01010113          	addi	sp,sp,16
    80001764:	00008067          	ret

0000000080001768 <_ZN3PCB5yieldEv>:
void PCB::yield() {
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00813423          	sd	s0,8(sp)
    80001770:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001774:	00000073          	ecall
}
    80001778:	00813403          	ld	s0,8(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    80001784:	fe010113          	addi	sp,sp,-32
    80001788:	00113c23          	sd	ra,24(sp)
    8000178c:	00813823          	sd	s0,16(sp)
    80001790:	00913423          	sd	s1,8(sp)
    80001794:	02010413          	addi	s0,sp,32
    PCB *old = running;
    80001798:	0000a497          	auipc	s1,0xa
    8000179c:	dd84b483          	ld	s1,-552(s1) # 8000b570 <_ZN3PCB7runningE>

    static void operator delete[](void *p) { MemoryAllocator::deallocateMEM(p); }

    ~PCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800017a0:	0204c783          	lbu	a5,32(s1)
    if ((!old->isFinished())) {
    800017a4:	02078c63          	beqz	a5,800017dc <_ZN3PCB8dispatchEv+0x58>
    running = Scheduler::get();
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	61c080e7          	jalr	1564(ra) # 80001dc4 <_ZN9Scheduler3getEv>
    800017b0:	0000a797          	auipc	a5,0xa
    800017b4:	dca7b023          	sd	a0,-576(a5) # 8000b570 <_ZN3PCB7runningE>
    PCB::contextSwitch(&old->context, &running->context);
    800017b8:	01050593          	addi	a1,a0,16 # 8010 <_entry-0x7fff7ff0>
    800017bc:	01048513          	addi	a0,s1,16
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	b98080e7          	jalr	-1128(ra) # 80001358 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800017c8:	01813083          	ld	ra,24(sp)
    800017cc:	01013403          	ld	s0,16(sp)
    800017d0:	00813483          	ld	s1,8(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret
        Scheduler::put(old);
    800017dc:	00048513          	mv	a0,s1
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	660080e7          	jalr	1632(ra) # 80001e40 <_ZN9Scheduler3putEP3PCB>
    800017e8:	fc1ff06f          	j	800017a8 <_ZN3PCB8dispatchEv+0x24>

00000000800017ec <_ZN3PCB15createThreadPCBEmmm>:

PCB* PCB::createThreadPCB(uint64 st_rout, uint64 arg, uint64 stack_s) {
    800017ec:	fd010113          	addi	sp,sp,-48
    800017f0:	02113423          	sd	ra,40(sp)
    800017f4:	02813023          	sd	s0,32(sp)
    800017f8:	00913c23          	sd	s1,24(sp)
    800017fc:	01213823          	sd	s2,16(sp)
    80001800:	01313423          	sd	s3,8(sp)
    80001804:	01413023          	sd	s4,0(sp)
    80001808:	03010413          	addi	s0,sp,48
    8000180c:	00050993          	mv	s3,a0
    80001810:	00058a13          	mv	s4,a1
    80001814:	00060913          	mv	s2,a2
        return MemoryAllocator::allocateMEM(numOfBlocks);
    80001818:	00200513          	li	a0,2
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	f5c080e7          	jalr	-164(ra) # 80002778 <_ZN15MemoryAllocator11allocateMEMEm>
    80001824:	00050493          	mv	s1,a0
    PCB* pcb = new PCB((Body)st_rout, (void*)arg, (uint64*)stack_s);
    80001828:	00090613          	mv	a2,s2
                    {(uint64) &threadWrapper,
                     stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE*2] : 0
                    }),
            finished(false),
            args(arg),
            isBlocked(false)
    8000182c:	01353023          	sd	s3,0(a0)
            stack(body != nullptr? st : nullptr),
    80001830:	06098263          	beqz	s3,80001894 <_ZN3PCB15createThreadPCBEmmm+0xa8>
            isBlocked(false)
    80001834:	00c4b423          	sd	a2,8(s1)
    80001838:	00000797          	auipc	a5,0x0
    8000183c:	eec78793          	addi	a5,a5,-276 # 80001724 <_ZN3PCB13threadWrapperEv>
    80001840:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE*2] : 0
    80001844:	04060c63          	beqz	a2,8000189c <_ZN3PCB15createThreadPCBEmmm+0xb0>
    80001848:	000107b7          	lui	a5,0x10
    8000184c:	00f60633          	add	a2,a2,a5
            isBlocked(false)
    80001850:	00c4bc23          	sd	a2,24(s1)
    80001854:	02048023          	sb	zero,32(s1)
    80001858:	0344b423          	sd	s4,40(s1)
    8000185c:	02048823          	sb	zero,48(s1)
    if(pcb) Scheduler::put(pcb);
    80001860:	00048863          	beqz	s1,80001870 <_ZN3PCB15createThreadPCBEmmm+0x84>
    80001864:	00048513          	mv	a0,s1
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	5d8080e7          	jalr	1496(ra) # 80001e40 <_ZN9Scheduler3putEP3PCB>
    return pcb;
}
    80001870:	00048513          	mv	a0,s1
    80001874:	02813083          	ld	ra,40(sp)
    80001878:	02013403          	ld	s0,32(sp)
    8000187c:	01813483          	ld	s1,24(sp)
    80001880:	01013903          	ld	s2,16(sp)
    80001884:	00813983          	ld	s3,8(sp)
    80001888:	00013a03          	ld	s4,0(sp)
    8000188c:	03010113          	addi	sp,sp,48
    80001890:	00008067          	ret
            stack(body != nullptr? st : nullptr),
    80001894:	00000613          	li	a2,0
    80001898:	f9dff06f          	j	80001834 <_ZN3PCB15createThreadPCBEmmm+0x48>
                     stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE*2] : 0
    8000189c:	00000613          	li	a2,0
    800018a0:	fb1ff06f          	j	80001850 <_ZN3PCB15createThreadPCBEmmm+0x64>

00000000800018a4 <_ZN3PCB16creatorThreadPCBEmmm>:

PCB* PCB::creatorThreadPCB(uint64 st_rout, uint64 arg, uint64 stack_s) {
    800018a4:	fd010113          	addi	sp,sp,-48
    800018a8:	02113423          	sd	ra,40(sp)
    800018ac:	02813023          	sd	s0,32(sp)
    800018b0:	00913c23          	sd	s1,24(sp)
    800018b4:	01213823          	sd	s2,16(sp)
    800018b8:	01313423          	sd	s3,8(sp)
    800018bc:	03010413          	addi	s0,sp,48
    800018c0:	00050913          	mv	s2,a0
    800018c4:	00058993          	mv	s3,a1
    800018c8:	00060493          	mv	s1,a2
        return MemoryAllocator::allocateMEM(numOfBlocks);
    800018cc:	00200513          	li	a0,2
    800018d0:	00001097          	auipc	ra,0x1
    800018d4:	ea8080e7          	jalr	-344(ra) # 80002778 <_ZN15MemoryAllocator11allocateMEMEm>
    return new PCB((Body)st_rout, (void*)arg, (uint64*)stack_s);
    800018d8:	00048613          	mv	a2,s1
            isBlocked(false)
    800018dc:	01253023          	sd	s2,0(a0)
            stack(body != nullptr? st : nullptr),
    800018e0:	04090663          	beqz	s2,8000192c <_ZN3PCB16creatorThreadPCBEmmm+0x88>
            isBlocked(false)
    800018e4:	00c53423          	sd	a2,8(a0)
    800018e8:	00000797          	auipc	a5,0x0
    800018ec:	e3c78793          	addi	a5,a5,-452 # 80001724 <_ZN3PCB13threadWrapperEv>
    800018f0:	00f53823          	sd	a5,16(a0)
                     stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE*2] : 0
    800018f4:	04060063          	beqz	a2,80001934 <_ZN3PCB16creatorThreadPCBEmmm+0x90>
    800018f8:	000107b7          	lui	a5,0x10
    800018fc:	00f60633          	add	a2,a2,a5
            isBlocked(false)
    80001900:	00c53c23          	sd	a2,24(a0)
    80001904:	02050023          	sb	zero,32(a0)
    80001908:	03353423          	sd	s3,40(a0)
    8000190c:	02050823          	sb	zero,48(a0)
}
    80001910:	02813083          	ld	ra,40(sp)
    80001914:	02013403          	ld	s0,32(sp)
    80001918:	01813483          	ld	s1,24(sp)
    8000191c:	01013903          	ld	s2,16(sp)
    80001920:	00813983          	ld	s3,8(sp)
    80001924:	03010113          	addi	sp,sp,48
    80001928:	00008067          	ret
            stack(body != nullptr? st : nullptr),
    8000192c:	00000613          	li	a2,0
    80001930:	fb5ff06f          	j	800018e4 <_ZN3PCB16creatorThreadPCBEmmm+0x40>
                     stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE*2] : 0
    80001934:	00000613          	li	a2,0
    80001938:	fc9ff06f          	j	80001900 <_ZN3PCB16creatorThreadPCBEmmm+0x5c>

000000008000193c <_ZN3PCB14startThreadPCBEm>:

void PCB::startThreadPCB(uint64 handle) {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00113423          	sd	ra,8(sp)
    80001944:	00813023          	sd	s0,0(sp)
    80001948:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)handle);
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	4f4080e7          	jalr	1268(ra) # 80001e40 <_ZN9Scheduler3putEP3PCB>
}
    80001954:	00813083          	ld	ra,8(sp)
    80001958:	00013403          	ld	s0,0(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_ZN3PCB13exitThreadPCBEv>:

int PCB::exitThreadPCB() {
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00113423          	sd	ra,8(sp)
    8000196c:	00813023          	sd	s0,0(sp)
    80001970:	01010413          	addi	s0,sp,16
    void setFinished(bool finish) { PCB::finished = finish; }
    80001974:	0000a797          	auipc	a5,0xa
    80001978:	bfc7b783          	ld	a5,-1028(a5) # 8000b570 <_ZN3PCB7runningE>
    8000197c:	00100713          	li	a4,1
    80001980:	02e78023          	sb	a4,32(a5)
    running->setFinished(true);
    PCB::dispatch();
    80001984:	00000097          	auipc	ra,0x0
    80001988:	e00080e7          	jalr	-512(ra) # 80001784 <_ZN3PCB8dispatchEv>
    return 0;
}
    8000198c:	00000513          	li	a0,0
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <_ZN3PCB17dispatchThreadPCBEv>:

void PCB::dispatchThreadPCB() {
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	00813023          	sd	s0,0(sp)
    800019ac:	01010413          	addi	s0,sp,16
    PCB::dispatch();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	dd4080e7          	jalr	-556(ra) # 80001784 <_ZN3PCB8dispatchEv>
}
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_ZN3PCB7joinPCBEPS_>:

void PCB::joinPCB(PCB* handle) {
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	02010413          	addi	s0,sp,32
    800019dc:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    800019e0:	0204c783          	lbu	a5,32(s1)
    while(!(handle->isFinished())) PCB::dispatch();
    800019e4:	00079863          	bnez	a5,800019f4 <_ZN3PCB7joinPCBEPS_+0x2c>
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	d9c080e7          	jalr	-612(ra) # 80001784 <_ZN3PCB8dispatchEv>
    800019f0:	ff1ff06f          	j	800019e0 <_ZN3PCB7joinPCBEPS_+0x18>
    800019f4:	01813083          	ld	ra,24(sp)
    800019f8:	01013403          	ld	s0,16(sp)
    800019fc:	00813483          	ld	s1,8(sp)
    80001a00:	02010113          	addi	sp,sp,32
    80001a04:	00008067          	ret

0000000080001a08 <_ZN3SemD1Ev>:
#include "../h/Sem.hpp"

Sem::~Sem() {
    80001a08:	fd010113          	addi	sp,sp,-48
    80001a0c:	02113423          	sd	ra,40(sp)
    80001a10:	02813023          	sd	s0,32(sp)
    80001a14:	00913c23          	sd	s1,24(sp)
    80001a18:	01213823          	sd	s2,16(sp)
    80001a1c:	01313423          	sd	s3,8(sp)
    80001a20:	03010413          	addi	s0,sp,48
    80001a24:	00050493          	mv	s1,a0
    80001a28:	0000a797          	auipc	a5,0xa
    80001a2c:	8c878793          	addi	a5,a5,-1848 # 8000b2f0 <_ZTV3Sem+0x10>
    80001a30:	00f53023          	sd	a5,0(a0)
    80001a34:	02c0006f          	j	80001a60 <_ZN3SemD1Ev+0x58>
    T *removeFirst() {
        if(!head) return 0;
        Elem* elem = head;
        head = head->next;
        if(!head) {
            tail = 0;
    80001a38:	00093423          	sd	zero,8(s2)
        }
        T* ret = elem->data;
    80001a3c:	00053983          	ld	s3,0(a0)
            MemoryAllocator::deallocateMEM(p);
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	e2c080e7          	jalr	-468(ra) # 8000286c <_ZN15MemoryAllocator13deallocateMEMEPv>
        delete elem;
        length--;
    80001a48:	01092783          	lw	a5,16(s2)
    80001a4c:	fff7879b          	addiw	a5,a5,-1
    80001a50:	00f92823          	sw	a5,16(s2)
    while(blocked.peekFirst() != nullptr) {
        PCB* pcb = blocked.removeFirst();
        Scheduler::put(pcb);
    80001a54:	00098513          	mv	a0,s3
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	3e8080e7          	jalr	1000(ra) # 80001e40 <_ZN9Scheduler3putEP3PCB>
        return ret;

    }

    T * peekFirst() {
        if(!head) { return 0; }
    80001a60:	0104b783          	ld	a5,16(s1)
    80001a64:	02078863          	beqz	a5,80001a94 <_ZN3SemD1Ev+0x8c>
        return (head->data);
    80001a68:	0007b783          	ld	a5,0(a5)
    while(blocked.peekFirst() != nullptr) {
    80001a6c:	02078463          	beqz	a5,80001a94 <_ZN3SemD1Ev+0x8c>
        PCB* pcb = blocked.removeFirst();
    80001a70:	01048913          	addi	s2,s1,16
        if(!head) return 0;
    80001a74:	0104b503          	ld	a0,16(s1)
    80001a78:	00050a63          	beqz	a0,80001a8c <_ZN3SemD1Ev+0x84>
        head = head->next;
    80001a7c:	00853783          	ld	a5,8(a0)
    80001a80:	00f4b823          	sd	a5,16(s1)
        if(!head) {
    80001a84:	fa079ce3          	bnez	a5,80001a3c <_ZN3SemD1Ev+0x34>
    80001a88:	fb1ff06f          	j	80001a38 <_ZN3SemD1Ev+0x30>
        if(!head) return 0;
    80001a8c:	00050993          	mv	s3,a0
    80001a90:	fc5ff06f          	j	80001a54 <_ZN3SemD1Ev+0x4c>
    }
}
    80001a94:	02813083          	ld	ra,40(sp)
    80001a98:	02013403          	ld	s0,32(sp)
    80001a9c:	01813483          	ld	s1,24(sp)
    80001aa0:	01013903          	ld	s2,16(sp)
    80001aa4:	00813983          	ld	s3,8(sp)
    80001aa8:	03010113          	addi	sp,sp,48
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN3SemD0Ev>:
Sem::~Sem() {
    80001ab0:	fe010113          	addi	sp,sp,-32
    80001ab4:	00113c23          	sd	ra,24(sp)
    80001ab8:	00813823          	sd	s0,16(sp)
    80001abc:	00913423          	sd	s1,8(sp)
    80001ac0:	02010413          	addi	s0,sp,32
    80001ac4:	00050493          	mv	s1,a0
}
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	f40080e7          	jalr	-192(ra) # 80001a08 <_ZN3SemD1Ev>
        if((n + sizeof(void*) + sizeof(uint64)) % MEM_BLOCK_SIZE > 0) numOfBlocks++;
        return MemoryAllocator::allocateMEM(numOfBlocks);
    }

    void operator delete(void *p)  {
        MemoryAllocator::deallocateMEM(p);
    80001ad0:	00048513          	mv	a0,s1
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	d98080e7          	jalr	-616(ra) # 8000286c <_ZN15MemoryAllocator13deallocateMEMEPv>
    80001adc:	01813083          	ld	ra,24(sp)
    80001ae0:	01013403          	ld	s0,16(sp)
    80001ae4:	00813483          	ld	s1,8(sp)
    80001ae8:	02010113          	addi	sp,sp,32
    80001aec:	00008067          	ret

0000000080001af0 <_ZN3Sem5blockEv>:

void Sem::block() {
    80001af0:	fd010113          	addi	sp,sp,-48
    80001af4:	02113423          	sd	ra,40(sp)
    80001af8:	02813023          	sd	s0,32(sp)
    80001afc:	00913c23          	sd	s1,24(sp)
    80001b00:	01213823          	sd	s2,16(sp)
    80001b04:	01313423          	sd	s3,8(sp)
    80001b08:	03010413          	addi	s0,sp,48
    80001b0c:	00050913          	mv	s2,a0
    PCB *old = PCB::running;
    80001b10:	0000a797          	auipc	a5,0xa
    80001b14:	a087b783          	ld	a5,-1528(a5) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b18:	0007b983          	ld	s3,0(a5)
    blocked.addLast(PCB::running);
    80001b1c:	01050493          	addi	s1,a0,16
            return MemoryAllocator::allocateMEM(numOfBlocks);
    80001b20:	00100513          	li	a0,1
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	c54080e7          	jalr	-940(ra) # 80002778 <_ZN15MemoryAllocator11allocateMEMEm>
        Elem(T* data, Elem *next) : data(data), next(next) {}
    80001b2c:	01353023          	sd	s3,0(a0)
    80001b30:	00053423          	sd	zero,8(a0)
        if(tail){
    80001b34:	0084b783          	ld	a5,8(s1)
    80001b38:	06078463          	beqz	a5,80001ba0 <_ZN3Sem5blockEv+0xb0>
            tail->next = elem;
    80001b3c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001b40:	00a4b423          	sd	a0,8(s1)
        length++;
    80001b44:	0104a783          	lw	a5,16(s1)
    80001b48:	0017879b          	addiw	a5,a5,1
    80001b4c:	00f4a823          	sw	a5,16(s1)
    PCB::running->isBlocked = true;
    80001b50:	0000a497          	auipc	s1,0xa
    80001b54:	9c84b483          	ld	s1,-1592(s1) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b58:	0004b783          	ld	a5,0(s1)
    80001b5c:	00100713          	li	a4,1
    80001b60:	02e78823          	sb	a4,48(a5)
    PCB::running = Scheduler::get();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	260080e7          	jalr	608(ra) # 80001dc4 <_ZN9Scheduler3getEv>
    80001b6c:	00a4b023          	sd	a0,0(s1)
    if(PCB::running) PCB::contextSwitch(&old->context, &PCB::running->context);
    80001b70:	00050a63          	beqz	a0,80001b84 <_ZN3Sem5blockEv+0x94>
    80001b74:	01050593          	addi	a1,a0,16
    80001b78:	01098513          	addi	a0,s3,16
    80001b7c:	fffff097          	auipc	ra,0xfffff
    80001b80:	7dc080e7          	jalr	2012(ra) # 80001358 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001b84:	02813083          	ld	ra,40(sp)
    80001b88:	02013403          	ld	s0,32(sp)
    80001b8c:	01813483          	ld	s1,24(sp)
    80001b90:	01013903          	ld	s2,16(sp)
    80001b94:	00813983          	ld	s3,8(sp)
    80001b98:	03010113          	addi	sp,sp,48
    80001b9c:	00008067          	ret
            head = tail = elem;
    80001ba0:	00a4b423          	sd	a0,8(s1)
    80001ba4:	00a93823          	sd	a0,16(s2)
    80001ba8:	f9dff06f          	j	80001b44 <_ZN3Sem5blockEv+0x54>

0000000080001bac <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	01213023          	sd	s2,0(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    80001bc4:	00050793          	mv	a5,a0
    PCB* t = blocked.removeFirst();
    80001bc8:	01050493          	addi	s1,a0,16
        if(!head) return 0;
    80001bcc:	01053503          	ld	a0,16(a0)
    80001bd0:	04050e63          	beqz	a0,80001c2c <_ZN3Sem7unblockEv+0x80>
        head = head->next;
    80001bd4:	00853703          	ld	a4,8(a0)
    80001bd8:	00e7b823          	sd	a4,16(a5)
        if(!head) {
    80001bdc:	04070463          	beqz	a4,80001c24 <_ZN3Sem7unblockEv+0x78>
        T* ret = elem->data;
    80001be0:	00053903          	ld	s2,0(a0)
            MemoryAllocator::deallocateMEM(p);
    80001be4:	00001097          	auipc	ra,0x1
    80001be8:	c88080e7          	jalr	-888(ra) # 8000286c <_ZN15MemoryAllocator13deallocateMEMEPv>
        length--;
    80001bec:	0104a783          	lw	a5,16(s1)
    80001bf0:	fff7879b          	addiw	a5,a5,-1
    80001bf4:	00f4a823          	sw	a5,16(s1)
    if(t) {
    80001bf8:	00090a63          	beqz	s2,80001c0c <_ZN3Sem7unblockEv+0x60>
        t->isBlocked = false;
    80001bfc:	02090823          	sb	zero,48(s2)
        Scheduler::put(t);
    80001c00:	00090513          	mv	a0,s2
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	23c080e7          	jalr	572(ra) # 80001e40 <_ZN9Scheduler3putEP3PCB>
    }
}
    80001c0c:	01813083          	ld	ra,24(sp)
    80001c10:	01013403          	ld	s0,16(sp)
    80001c14:	00813483          	ld	s1,8(sp)
    80001c18:	00013903          	ld	s2,0(sp)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00008067          	ret
            tail = 0;
    80001c24:	0004b423          	sd	zero,8(s1)
    80001c28:	fb9ff06f          	j	80001be0 <_ZN3Sem7unblockEv+0x34>
        if(!head) return 0;
    80001c2c:	00050913          	mv	s2,a0
    80001c30:	fc9ff06f          	j	80001bf8 <_ZN3Sem7unblockEv+0x4c>

0000000080001c34 <_ZN3Sem7openSEMEi>:

Sem* Sem::openSEM(int init) {
    80001c34:	fe010113          	addi	sp,sp,-32
    80001c38:	00113c23          	sd	ra,24(sp)
    80001c3c:	00813823          	sd	s0,16(sp)
    80001c40:	00913423          	sd	s1,8(sp)
    80001c44:	02010413          	addi	s0,sp,32
    80001c48:	00050493          	mv	s1,a0
        return MemoryAllocator::allocateMEM(numOfBlocks);
    80001c4c:	00100513          	li	a0,1
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	b28080e7          	jalr	-1240(ra) # 80002778 <_ZN15MemoryAllocator11allocateMEMEm>

    void unblock();

private:

    explicit Sem(int init = 1) : val(init) {}
    80001c58:	00009717          	auipc	a4,0x9
    80001c5c:	69870713          	addi	a4,a4,1688 # 8000b2f0 <_ZTV3Sem+0x10>
    80001c60:	00e53023          	sd	a4,0(a0)
    80001c64:	00952423          	sw	s1,8(a0)
    List() : head(0), tail(0), length(0) {}
    80001c68:	00053823          	sd	zero,16(a0)
    80001c6c:	00053c23          	sd	zero,24(a0)
    80001c70:	02052023          	sw	zero,32(a0)
    return new Sem(init);
}
    80001c74:	01813083          	ld	ra,24(sp)
    80001c78:	01013403          	ld	s0,16(sp)
    80001c7c:	00813483          	ld	s1,8(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret

0000000080001c88 <_ZN3Sem8closeSEMEv>:

int Sem::closeSEM() {
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
    delete this;
    80001c98:	00053783          	ld	a5,0(a0)
    80001c9c:	0087b783          	ld	a5,8(a5)
    80001ca0:	000780e7          	jalr	a5
    return 0;
}
    80001ca4:	00000513          	li	a0,0
    80001ca8:	00813083          	ld	ra,8(sp)
    80001cac:	00013403          	ld	s0,0(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZN3Sem7waitSEMEv>:

int Sem::waitSEM() {
    if(--val < 0) block();
    80001cb8:	00852783          	lw	a5,8(a0)
    80001cbc:	fff7879b          	addiw	a5,a5,-1
    80001cc0:	00f52423          	sw	a5,8(a0)
    80001cc4:	02079713          	slli	a4,a5,0x20
    80001cc8:	02074063          	bltz	a4,80001ce8 <_ZN3Sem7waitSEMEv+0x30>
    if(PCB::running->isBlocked) return -1;
    80001ccc:	0000a797          	auipc	a5,0xa
    80001cd0:	84c7b783          	ld	a5,-1972(a5) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001cd4:	0007b783          	ld	a5,0(a5)
    80001cd8:	0307c783          	lbu	a5,48(a5)
    80001cdc:	04079a63          	bnez	a5,80001d30 <_ZN3Sem7waitSEMEv+0x78>
    return 0;
    80001ce0:	00000513          	li	a0,0
    80001ce4:	00008067          	ret
int Sem::waitSEM() {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    if(--val < 0) block();
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	df8080e7          	jalr	-520(ra) # 80001af0 <_ZN3Sem5blockEv>
    if(PCB::running->isBlocked) return -1;
    80001d00:	0000a797          	auipc	a5,0xa
    80001d04:	8187b783          	ld	a5,-2024(a5) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d08:	0007b783          	ld	a5,0(a5)
    80001d0c:	0307c783          	lbu	a5,48(a5)
    80001d10:	00079c63          	bnez	a5,80001d28 <_ZN3Sem7waitSEMEv+0x70>
    return 0;
    80001d14:	00000513          	li	a0,0
}
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret
    if(PCB::running->isBlocked) return -1;
    80001d28:	fff00513          	li	a0,-1
    80001d2c:	fedff06f          	j	80001d18 <_ZN3Sem7waitSEMEv+0x60>
    80001d30:	fff00513          	li	a0,-1
}
    80001d34:	00008067          	ret

0000000080001d38 <_ZN3Sem9signalSEMEv>:

int Sem::signalSEM() {
    if(++val <= 0) unblock();
    80001d38:	00852783          	lw	a5,8(a0)
    80001d3c:	0017879b          	addiw	a5,a5,1
    80001d40:	0007871b          	sext.w	a4,a5
    80001d44:	00f52423          	sw	a5,8(a0)
    80001d48:	00e05663          	blez	a4,80001d54 <_ZN3Sem9signalSEMEv+0x1c>
    return 0;
    80001d4c:	00000513          	li	a0,0
    80001d50:	00008067          	ret
int Sem::signalSEM() {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    if(++val <= 0) unblock();
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	e48080e7          	jalr	-440(ra) # 80001bac <_ZN3Sem7unblockEv>
    80001d6c:	00000513          	li	a0,0
    80001d70:	00813083          	ld	ra,8(sp)
    80001d74:	00013403          	ld	s0,0(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_Z41__static_initialization_and_destruction_0ii>:
    return readyQueue.removeFirst();
}

void Scheduler::put(PCB *pcb){
    readyQueue.addLast(pcb);
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00813423          	sd	s0,8(sp)
    80001d88:	01010413          	addi	s0,sp,16
    80001d8c:	00100793          	li	a5,1
    80001d90:	00f50863          	beq	a0,a5,80001da0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001d94:	00813403          	ld	s0,8(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret
    80001da0:	000107b7          	lui	a5,0x10
    80001da4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001da8:	fef596e3          	bne	a1,a5,80001d94 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80001dac:	00009797          	auipc	a5,0x9
    80001db0:	7cc78793          	addi	a5,a5,1996 # 8000b578 <_ZN9Scheduler10readyQueueE>
    80001db4:	0007b023          	sd	zero,0(a5)
    80001db8:	0007b423          	sd	zero,8(a5)
    80001dbc:	0007a823          	sw	zero,16(a5)
    80001dc0:	fd5ff06f          	j	80001d94 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001dc4 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get(){
    80001dc4:	fe010113          	addi	sp,sp,-32
    80001dc8:	00113c23          	sd	ra,24(sp)
    80001dcc:	00813823          	sd	s0,16(sp)
    80001dd0:	00913423          	sd	s1,8(sp)
    80001dd4:	02010413          	addi	s0,sp,32
        if(!head) return 0;
    80001dd8:	00009517          	auipc	a0,0x9
    80001ddc:	7a053503          	ld	a0,1952(a0) # 8000b578 <_ZN9Scheduler10readyQueueE>
    80001de0:	04050c63          	beqz	a0,80001e38 <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80001de4:	00853783          	ld	a5,8(a0)
    80001de8:	00009717          	auipc	a4,0x9
    80001dec:	78f73823          	sd	a5,1936(a4) # 8000b578 <_ZN9Scheduler10readyQueueE>
        if(!head) {
    80001df0:	02078e63          	beqz	a5,80001e2c <_ZN9Scheduler3getEv+0x68>
        T* ret = elem->data;
    80001df4:	00053483          	ld	s1,0(a0)
            MemoryAllocator::deallocateMEM(p);
    80001df8:	00001097          	auipc	ra,0x1
    80001dfc:	a74080e7          	jalr	-1420(ra) # 8000286c <_ZN15MemoryAllocator13deallocateMEMEPv>
        length--;
    80001e00:	00009717          	auipc	a4,0x9
    80001e04:	77870713          	addi	a4,a4,1912 # 8000b578 <_ZN9Scheduler10readyQueueE>
    80001e08:	01072783          	lw	a5,16(a4)
    80001e0c:	fff7879b          	addiw	a5,a5,-1
    80001e10:	00f72823          	sw	a5,16(a4)
}
    80001e14:	00048513          	mv	a0,s1
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	01013403          	ld	s0,16(sp)
    80001e20:	00813483          	ld	s1,8(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret
            tail = 0;
    80001e2c:	00009797          	auipc	a5,0x9
    80001e30:	7407ba23          	sd	zero,1876(a5) # 8000b580 <_ZN9Scheduler10readyQueueE+0x8>
    80001e34:	fc1ff06f          	j	80001df4 <_ZN9Scheduler3getEv+0x30>
        if(!head) return 0;
    80001e38:	00050493          	mv	s1,a0
    return readyQueue.removeFirst();
    80001e3c:	fd9ff06f          	j	80001e14 <_ZN9Scheduler3getEv+0x50>

0000000080001e40 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb){
    80001e40:	fe010113          	addi	sp,sp,-32
    80001e44:	00113c23          	sd	ra,24(sp)
    80001e48:	00813823          	sd	s0,16(sp)
    80001e4c:	00913423          	sd	s1,8(sp)
    80001e50:	02010413          	addi	s0,sp,32
    80001e54:	00050493          	mv	s1,a0
            return MemoryAllocator::allocateMEM(numOfBlocks);
    80001e58:	00100513          	li	a0,1
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	91c080e7          	jalr	-1764(ra) # 80002778 <_ZN15MemoryAllocator11allocateMEMEm>
        Elem(T* data, Elem *next) : data(data), next(next) {}
    80001e64:	00953023          	sd	s1,0(a0)
    80001e68:	00053423          	sd	zero,8(a0)
        if(tail){
    80001e6c:	00009797          	auipc	a5,0x9
    80001e70:	7147b783          	ld	a5,1812(a5) # 8000b580 <_ZN9Scheduler10readyQueueE+0x8>
    80001e74:	02078c63          	beqz	a5,80001eac <_ZN9Scheduler3putEP3PCB+0x6c>
            tail->next = elem;
    80001e78:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001e7c:	00009797          	auipc	a5,0x9
    80001e80:	70a7b223          	sd	a0,1796(a5) # 8000b580 <_ZN9Scheduler10readyQueueE+0x8>
        length++;
    80001e84:	00009717          	auipc	a4,0x9
    80001e88:	6f470713          	addi	a4,a4,1780 # 8000b578 <_ZN9Scheduler10readyQueueE>
    80001e8c:	01072783          	lw	a5,16(a4)
    80001e90:	0017879b          	addiw	a5,a5,1
    80001e94:	00f72823          	sw	a5,16(a4)
    80001e98:	01813083          	ld	ra,24(sp)
    80001e9c:	01013403          	ld	s0,16(sp)
    80001ea0:	00813483          	ld	s1,8(sp)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00008067          	ret
            head = tail = elem;
    80001eac:	00009797          	auipc	a5,0x9
    80001eb0:	6cc78793          	addi	a5,a5,1740 # 8000b578 <_ZN9Scheduler10readyQueueE>
    80001eb4:	00a7b423          	sd	a0,8(a5)
    80001eb8:	00a7b023          	sd	a0,0(a5)
    80001ebc:	fc9ff06f          	j	80001e84 <_ZN9Scheduler3putEP3PCB+0x44>

0000000080001ec0 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00113423          	sd	ra,8(sp)
    80001ec8:	00813023          	sd	s0,0(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    80001ed0:	000105b7          	lui	a1,0x10
    80001ed4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ed8:	00100513          	li	a0,1
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	ea4080e7          	jalr	-348(ra) # 80001d80 <_Z41__static_initialization_and_destruction_0ii>
    80001ee4:	00813083          	ld	ra,8(sp)
    80001ee8:	00013403          	ld	s0,0(sp)
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret

0000000080001ef4 <main>:

// Korisnicka aplikacija:
void userMain();

// Kernel nit
void main() {
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00113423          	sd	ra,8(sp)
    80001efc:	00813023          	sd	s0,0(sp)
    80001f00:	01010413          	addi	s0,sp,16

    Riscv::w_stvec((uint64)&(Riscv::supervisorTrap) | 1);
    80001f04:	00009797          	auipc	a5,0x9
    80001f08:	6047b783          	ld	a5,1540(a5) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f0c:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec){
    __asm__ volatile ("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80001f10:	10579073          	csrw	stvec,a5
    PCB* first = (PCB*)PCB::creatorThreadPCB(0, 0, 0);
    80001f14:	00000613          	li	a2,0
    80001f18:	00000593          	li	a1,0
    80001f1c:	00000513          	li	a0,0
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	984080e7          	jalr	-1660(ra) # 800018a4 <_ZN3PCB16creatorThreadPCBEmmm>
    PCB::running = first;
    80001f28:	00009797          	auipc	a5,0x9
    80001f2c:	5f07b783          	ld	a5,1520(a5) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f30:	00a7b023          	sd	a0,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f34:	00200793          	li	a5,2
    80001f38:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    uint64 op_code_1 = Riscv::USER_MODE;
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code_1));
    80001f3c:	05100793          	li	a5,81
    80001f40:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001f44:	00000073          	ecall

    userMain();
    80001f48:	00003097          	auipc	ra,0x3
    80001f4c:	510080e7          	jalr	1296(ra) # 80005458 <_Z8userMainv>

    uint64 op_code_2 = Riscv::SUPER_MODE;
    __asm__ volatile ("mv a0, %[par]" : : [par]"r"(op_code_2));
    80001f50:	05200793          	li	a5,82
    80001f54:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001f58:	00000073          	ecall

    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_Znwm>:
#include "../h/syscall_c.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n) {
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00113423          	sd	ra,8(sp)
    80001f74:	00813023          	sd	s0,0(sp)
    80001f78:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	624080e7          	jalr	1572(ra) # 800015a0 <mem_alloc>
}
    80001f84:	00813083          	ld	ra,8(sp)
    80001f88:	00013403          	ld	s0,0(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <_Znam>:

void *operator new[](size_t n) {
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00113423          	sd	ra,8(sp)
    80001f9c:	00813023          	sd	s0,0(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	5fc080e7          	jalr	1532(ra) # 800015a0 <mem_alloc>
}
    80001fac:	00813083          	ld	ra,8(sp)
    80001fb0:	00013403          	ld	s0,0(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <_ZdlPv>:

void operator delete(void *p) noexcept {
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00113423          	sd	ra,8(sp)
    80001fc4:	00813023          	sd	s0,0(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	70c080e7          	jalr	1804(ra) # 800016d8 <mem_free>
}
    80001fd4:	00813083          	ld	ra,8(sp)
    80001fd8:	00013403          	ld	s0,0(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret

0000000080001fe4 <_ZdaPv>:

void operator delete[](void *p) noexcept {
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00113423          	sd	ra,8(sp)
    80001fec:	00813023          	sd	s0,0(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ff4:	fffff097          	auipc	ra,0xfffff
    80001ff8:	6e4080e7          	jalr	1764(ra) # 800016d8 <mem_free>
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_Z7wrapperPv>:
#include "../h/PCB.hpp"

//  THREAD

void wrapper(void* thread) {
    if(thread) {
    8000200c:	02050863          	beqz	a0,8000203c <_Z7wrapperPv+0x30>
void wrapper(void* thread) {
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00113423          	sd	ra,8(sp)
    80002018:	00813023          	sd	s0,0(sp)
    8000201c:	01010413          	addi	s0,sp,16
        ((Thread*)thread)->run(); // zove run(), run je obavijen wrapperom
    80002020:	00053783          	ld	a5,0(a0)
    80002024:	0107b783          	ld	a5,16(a5)
    80002028:	000780e7          	jalr	a5
    }
}
    8000202c:	00813083          	ld	ra,8(sp)
    80002030:	00013403          	ld	s0,0(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret
    8000203c:	00008067          	ret

0000000080002040 <_ZN6ThreadD1Ev>:

void Thread::join() {
    if(myHandle) thread_join(myHandle);
}

Thread::~Thread () {}
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00813423          	sd	s0,8(sp)
    80002048:	01010413          	addi	s0,sp,16
    8000204c:	00813403          	ld	s0,8(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN6ThreadD0Ev>:
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	f54080e7          	jalr	-172(ra) # 80001fbc <_ZdlPv>
    80002070:	00813083          	ld	ra,8(sp)
    80002074:	00013403          	ld	s0,0(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore (unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore () {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00113423          	sd	ra,8(sp)
    80002088:	00813023          	sd	s0,0(sp)
    8000208c:	01010413          	addi	s0,sp,16
    80002090:	00009797          	auipc	a5,0x9
    80002094:	2b078793          	addi	a5,a5,688 # 8000b340 <_ZTV9Semaphore+0x10>
    80002098:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000209c:	00853503          	ld	a0,8(a0)
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	3d0080e7          	jalr	976(ra) # 80001470 <sem_close>
}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore () {
    800020b8:	fe010113          	addi	sp,sp,-32
    800020bc:	00113c23          	sd	ra,24(sp)
    800020c0:	00813823          	sd	s0,16(sp)
    800020c4:	00913423          	sd	s1,8(sp)
    800020c8:	02010413          	addi	s0,sp,32
    800020cc:	00050493          	mv	s1,a0
}
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	fb0080e7          	jalr	-80(ra) # 80002080 <_ZN9SemaphoreD1Ev>
    800020d8:	00048513          	mv	a0,s1
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	ee0080e7          	jalr	-288(ra) # 80001fbc <_ZdlPv>
    800020e4:	01813083          	ld	ra,24(sp)
    800020e8:	01013403          	ld	s0,16(sp)
    800020ec:	00813483          	ld	s1,8(sp)
    800020f0:	02010113          	addi	sp,sp,32
    800020f4:	00008067          	ret

00000000800020f8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800020f8:	fd010113          	addi	sp,sp,-48
    800020fc:	02113423          	sd	ra,40(sp)
    80002100:	02813023          	sd	s0,32(sp)
    80002104:	00913c23          	sd	s1,24(sp)
    80002108:	01213823          	sd	s2,16(sp)
    8000210c:	03010413          	addi	s0,sp,48
    80002110:	00050493          	mv	s1,a0
    80002114:	00058913          	mv	s2,a1
    80002118:	fcc43c23          	sd	a2,-40(s0)
    8000211c:	00009797          	auipc	a5,0x9
    80002120:	1fc78793          	addi	a5,a5,508 # 8000b318 <_ZTV6Thread+0x10>
    80002124:	00f53023          	sd	a5,0(a0)
    thread_creator(&myHandle, body, &arg);
    80002128:	fd840613          	addi	a2,s0,-40
    8000212c:	00850513          	addi	a0,a0,8
    80002130:	fffff097          	auipc	ra,0xfffff
    80002134:	52c080e7          	jalr	1324(ra) # 8000165c <thread_creator>
    this->body = body; this->arg = arg;
    80002138:	0124b823          	sd	s2,16(s1)
    8000213c:	fd843783          	ld	a5,-40(s0)
    80002140:	00f4bc23          	sd	a5,24(s1)
}
    80002144:	02813083          	ld	ra,40(sp)
    80002148:	02013403          	ld	s0,32(sp)
    8000214c:	01813483          	ld	s1,24(sp)
    80002150:	01013903          	ld	s2,16(sp)
    80002154:	03010113          	addi	sp,sp,48
    80002158:	00008067          	ret

000000008000215c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    8000216c:	00009797          	auipc	a5,0x9
    80002170:	1ac78793          	addi	a5,a5,428 # 8000b318 <_ZTV6Thread+0x10>
    80002174:	00f53023          	sd	a5,0(a0)
    thread_creator(&myHandle, &wrapper, this);
    80002178:	00050613          	mv	a2,a0
    8000217c:	00000597          	auipc	a1,0x0
    80002180:	e9058593          	addi	a1,a1,-368 # 8000200c <_Z7wrapperPv>
    80002184:	00850513          	addi	a0,a0,8
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	4d4080e7          	jalr	1236(ra) # 8000165c <thread_creator>
}
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00013403          	ld	s0,0(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_ZN6Thread5startEv>:
    if (myHandle) {
    800021a0:	00853503          	ld	a0,8(a0)
    800021a4:	02050663          	beqz	a0,800021d0 <_ZN6Thread5startEv+0x30>
int Thread::start() {
    800021a8:	ff010113          	addi	sp,sp,-16
    800021ac:	00113423          	sd	ra,8(sp)
    800021b0:	00813023          	sd	s0,0(sp)
    800021b4:	01010413          	addi	s0,sp,16
        return thread_starter(myHandle);
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	24c080e7          	jalr	588(ra) # 80001404 <thread_starter>
}
    800021c0:	00813083          	ld	ra,8(sp)
    800021c4:	00013403          	ld	s0,0(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret
    return -1;
    800021d0:	fff00513          	li	a0,-1
}
    800021d4:	00008067          	ret

00000000800021d8 <_ZN6Thread4joinEv>:
    if(myHandle) thread_join(myHandle);
    800021d8:	00853503          	ld	a0,8(a0)
    800021dc:	02050663          	beqz	a0,80002208 <_ZN6Thread4joinEv+0x30>
void Thread::join() {
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00113423          	sd	ra,8(sp)
    800021e8:	00813023          	sd	s0,0(sp)
    800021ec:	01010413          	addi	s0,sp,16
    if(myHandle) thread_join(myHandle);
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	1ec080e7          	jalr	492(ra) # 800013dc <thread_join>
}
    800021f8:	00813083          	ld	ra,8(sp)
    800021fc:	00013403          	ld	s0,0(sp)
    80002200:	01010113          	addi	sp,sp,16
    80002204:	00008067          	ret
    80002208:	00008067          	ret

000000008000220c <_ZN6Thread8dispatchEv>:
void Thread::dispatch () {
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00113423          	sd	ra,8(sp)
    80002214:	00813023          	sd	s0,0(sp)
    80002218:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	19c080e7          	jalr	412(ra) # 800013b8 <thread_dispatch>
}
    80002224:	00813083          	ld	ra,8(sp)
    80002228:	00013403          	ld	s0,0(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_ZN6Thread5sleepEm>:
int Thread::sleep (time_t) { return 0; }
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	00000513          	li	a0,0
    80002244:	00813403          	ld	s0,8(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore (unsigned int init) {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00113423          	sd	ra,8(sp)
    80002258:	00813023          	sd	s0,0(sp)
    8000225c:	01010413          	addi	s0,sp,16
    80002260:	00009797          	auipc	a5,0x9
    80002264:	0e078793          	addi	a5,a5,224 # 8000b340 <_ZTV9Semaphore+0x10>
    80002268:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    8000226c:	00850513          	addi	a0,a0,8
    80002270:	fffff097          	auipc	ra,0xfffff
    80002274:	1c4080e7          	jalr	452(ra) # 80001434 <sem_open>
}
    80002278:	00813083          	ld	ra,8(sp)
    8000227c:	00013403          	ld	s0,0(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret

0000000080002288 <_ZN9Semaphore4waitEv>:

int Semaphore::wait () {
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00113423          	sd	ra,8(sp)
    80002290:	00813023          	sd	s0,0(sp)
    80002294:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002298:	00853503          	ld	a0,8(a0)
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	220080e7          	jalr	544(ra) # 800014bc <sem_wait>
}
    800022a4:	00813083          	ld	ra,8(sp)
    800022a8:	00013403          	ld	s0,0(sp)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret

00000000800022b4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal () {
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00113423          	sd	ra,8(sp)
    800022bc:	00813023          	sd	s0,0(sp)
    800022c0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800022c4:	00853503          	ld	a0,8(a0)
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	22c080e7          	jalr	556(ra) # 800014f4 <sem_signal>
}
    800022d0:	00813083          	ld	ra,8(sp)
    800022d4:	00013403          	ld	s0,0(sp)
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <_ZN7Console4getcEv>:

//  CONSOLE

char Console::getc () {
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00113423          	sd	ra,8(sp)
    800022e8:	00813023          	sd	s0,0(sp)
    800022ec:	01010413          	addi	s0,sp,16
    return ::getc();
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	23c080e7          	jalr	572(ra) # 8000152c <getc>
}
    800022f8:	00813083          	ld	ra,8(sp)
    800022fc:	00013403          	ld	s0,0(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <_ZN7Console4putcEc>:

void Console::putc (char c) {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00113423          	sd	ra,8(sp)
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	250080e7          	jalr	592(ra) # 80001568 <putc>
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_ZN6Thread3runEv>:
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00813423          	sd	s0,8(sp)
    80002338:	01010413          	addi	s0,sp,16
    8000233c:	00813403          	ld	s0,8(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN5Riscv10popSppSpieEv>:
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/Sem.hpp"

void Riscv::popSppSpie() {
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00813423          	sd	s0,8(sp)
    80002350:	01010413          	addi	s0,sp,16
    80002354:	edf00793          	li	a5,-289
    80002358:	1007a073          	csrs	sstatus,a5
    // prelaz u user mode u thread wrapperu
    ms_sstatus(~SSTATUS_SPP & ~SSTATUS_SPIE);
    // nastavlja se izvrsavanje nove niti, od thread wrappera (ne od handlera)
    __asm__ volatile ("csrw sepc, ra");
    8000235c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002360:	10200073          	sret
}
    80002364:	00813403          	ld	s0,8(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZN5Riscv12timerHandlerEv>:

void Riscv::timerHandler() {
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000237c:	00200793          	li	a5,2
    80002380:	1447b073          	csrc	sip,a5
    mc_sip(SIP_SSIP);
}
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_ZN5Riscv14consoleHandlerEv>:

void Riscv::consoleHandler() {
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00113423          	sd	ra,8(sp)
    80002398:	00813023          	sd	s0,0(sp)
    8000239c:	01010413          	addi	s0,sp,16
    console_handler();
    800023a0:	00006097          	auipc	ra,0x6
    800023a4:	d70080e7          	jalr	-656(ra) # 80008110 <console_handler>
}
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800023b8:	f7010113          	addi	sp,sp,-144
    800023bc:	08113423          	sd	ra,136(sp)
    800023c0:	08813023          	sd	s0,128(sp)
    800023c4:	09010413          	addi	s0,sp,144
    uint64 volatile a = 0, b = 0, c = 0, d = 0, e = 0;
    800023c8:	fe043423          	sd	zero,-24(s0)
    800023cc:	fe043023          	sd	zero,-32(s0)
    800023d0:	fc043c23          	sd	zero,-40(s0)
    800023d4:	fc043823          	sd	zero,-48(s0)
    800023d8:	fc043423          	sd	zero,-56(s0)
    __asm__ volatile ("ld %0, 8*10(s0)" : "=r" (a));
    800023dc:	05043783          	ld	a5,80(s0)
    800023e0:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile ("ld %0, 8*11(s0)" : "=r" (b));
    800023e4:	05843783          	ld	a5,88(s0)
    800023e8:	fef43023          	sd	a5,-32(s0)
    __asm__ volatile ("ld %0, 8*12(s0)" : "=r" (c));
    800023ec:	06043783          	ld	a5,96(s0)
    800023f0:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("ld %0, 8*13(s0)" : "=r" (d));
    800023f4:	06843783          	ld	a5,104(s0)
    800023f8:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("ld %0, 8*14(s0)" : "=r" (e));
    800023fc:	07043783          	ld	a5,112(s0)
    80002400:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrr %[sepc], sepc":[sepc] "=r"(sepc));
    80002404:	141027f3          	csrr	a5,sepc
    80002408:	faf43423          	sd	a5,-88(s0)
    return sepc;
    8000240c:	fa843783          	ld	a5,-88(s0)

    uint64 volatile sepc = r_sepc();
    80002410:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002414:	142027f3          	csrr	a5,scause
    80002418:	faf43023          	sd	a5,-96(s0)
    return scause;
    8000241c:	fa043783          	ld	a5,-96(s0)
    uint64 volatile scause = r_scause();
    80002420:	faf43c23          	sd	a5,-72(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002424:	100027f3          	csrr	a5,sstatus
    80002428:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    8000242c:	f9843783          	ld	a5,-104(s0)
    uint64 volatile sstatus = r_sstatus();
    80002430:	faf43823          	sd	a5,-80(s0)

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002434:	fb843703          	ld	a4,-72(s0)
    80002438:	00800793          	li	a5,8
    8000243c:	04f70263          	beq	a4,a5,80002480 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    80002440:	fb843703          	ld	a4,-72(s0)
    80002444:	00900793          	li	a5,9
    80002448:	02f70c63          	beq	a4,a5,80002480 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                break;
            // default: break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x0000000000000002UL) { /* Illegal instruction */
    8000244c:	fb843703          	ld	a4,-72(s0)
    80002450:	00200793          	li	a5,2
    80002454:	2af70063          	beq	a4,a5,800026f4 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
        __putc('2'); // while(1) {}
    } else if(scause == 0x0000000000000005UL) { /* Illegal read address */
    80002458:	fb843703          	ld	a4,-72(s0)
    8000245c:	00500793          	li	a5,5
    80002460:	2af70263          	beq	a4,a5,80002704 <_ZN5Riscv20handleSupervisorTrapEv+0x34c>
        __putc('5'); // while(1) {}
    } else if(scause == 0x0000000000000007UL) { /* Illegal write address */
    80002464:	fb843703          	ld	a4,-72(s0)
    80002468:	00700793          	li	a5,7
    8000246c:	06f71c63          	bne	a4,a5,800024e4 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
        __putc('7'); // while(1) {}
    80002470:	03700513          	li	a0,55
    80002474:	00006097          	auipc	ra,0x6
    80002478:	c28080e7          	jalr	-984(ra) # 8000809c <__putc>
    } else { /* Unexpected trap cause */ }
    8000247c:	0680006f          	j	800024e4 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
        sepc += 4;
    80002480:	fc043783          	ld	a5,-64(s0)
    80002484:	00478793          	addi	a5,a5,4
    80002488:	fcf43023          	sd	a5,-64(s0)
        uint64 volatile op_code = a;
    8000248c:	fe843783          	ld	a5,-24(s0)
    80002490:	f6f43c23          	sd	a5,-136(s0)
        switch(op_code) {
    80002494:	f7843783          	ld	a5,-136(s0)
    80002498:	05200713          	li	a4,82
    8000249c:	02f76c63          	bltu	a4,a5,800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    800024a0:	00279793          	slli	a5,a5,0x2
    800024a4:	00007717          	auipc	a4,0x7
    800024a8:	b7c70713          	addi	a4,a4,-1156 # 80009020 <CONSOLE_STATUS+0x10>
    800024ac:	00e787b3          	add	a5,a5,a4
    800024b0:	0007a783          	lw	a5,0(a5)
    800024b4:	00e787b3          	add	a5,a5,a4
    800024b8:	00078067          	jr	a5
                ret = (uint64)(MemoryAllocator::allocateMEM((size_t) b));
    800024bc:	fe043503          	ld	a0,-32(s0)
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	2b8080e7          	jalr	696(ra) # 80002778 <_ZN15MemoryAllocator11allocateMEMEm>
    800024c8:	f8a43023          	sd	a0,-128(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    800024cc:	f8043783          	ld	a5,-128(s0)
    800024d0:	04f43823          	sd	a5,80(s0)
        w_sstatus(sstatus);
    800024d4:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800024d8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800024dc:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc , %[sepc]"::[sepc]"r"(sepc));
    800024e0:	14179073          	csrw	sepc,a5
    800024e4:	08813083          	ld	ra,136(sp)
    800024e8:	08013403          	ld	s0,128(sp)
    800024ec:	09010113          	addi	sp,sp,144
    800024f0:	00008067          	ret
                ret = MemoryAllocator::deallocateMEM((void*)b);
    800024f4:	fe043503          	ld	a0,-32(s0)
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	374080e7          	jalr	884(ra) # 8000286c <_ZN15MemoryAllocator13deallocateMEMEPv>
    80002500:	f8a43023          	sd	a0,-128(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    80002504:	f8043783          	ld	a5,-128(s0)
    80002508:	04f43823          	sd	a5,80(s0)
                break;
    8000250c:	fc9ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                pcb = PCB::createThreadPCB(c, d, e);
    80002510:	fd843503          	ld	a0,-40(s0)
    80002514:	fd043583          	ld	a1,-48(s0)
    80002518:	fc843603          	ld	a2,-56(s0)
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	2d0080e7          	jalr	720(ra) # 800017ec <_ZN3PCB15createThreadPCBEmmm>
    80002524:	f8a43423          	sd	a0,-120(s0)
                ret = -1;
    80002528:	fff00793          	li	a5,-1
    8000252c:	f8f43023          	sd	a5,-128(s0)
                if (pcb != nullptr) { ret = 0; }
    80002530:	f8843783          	ld	a5,-120(s0)
    80002534:	00078463          	beqz	a5,8000253c <_ZN5Riscv20handleSupervisorTrapEv+0x184>
    80002538:	f8043023          	sd	zero,-128(s0)
                __asm__ volatile ("sd %0, 8*11(s0)" : : "r" (pcb));
    8000253c:	f8843783          	ld	a5,-120(s0)
    80002540:	04f43c23          	sd	a5,88(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    80002544:	f8043783          	ld	a5,-128(s0)
    80002548:	04f43823          	sd	a5,80(s0)
                break;
    8000254c:	f89ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                ret = PCB::exitThreadPCB();
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	414080e7          	jalr	1044(ra) # 80001964 <_ZN3PCB13exitThreadPCBEv>
    80002558:	f8a43023          	sd	a0,-128(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    8000255c:	f8043783          	ld	a5,-128(s0)
    80002560:	04f43823          	sd	a5,80(s0)
                break;
    80002564:	f71ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                PCB::dispatchThreadPCB();
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	438080e7          	jalr	1080(ra) # 800019a0 <_ZN3PCB17dispatchThreadPCBEv>
                break;
    80002570:	f65ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                PCB::joinPCB((PCB*)b);
    80002574:	fe043503          	ld	a0,-32(s0)
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	450080e7          	jalr	1104(ra) # 800019c8 <_ZN3PCB7joinPCBEPS_>
                break;
    80002580:	f55ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                PCB::startThreadPCB(b);
    80002584:	fe043503          	ld	a0,-32(s0)
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	3b4080e7          	jalr	948(ra) # 8000193c <_ZN3PCB14startThreadPCBEm>
                PCB::dispatchThreadPCB();
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	410080e7          	jalr	1040(ra) # 800019a0 <_ZN3PCB17dispatchThreadPCBEv>
                break;
    80002598:	f3dff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                pcb = PCB::creatorThreadPCB(c, d, e);
    8000259c:	fd843503          	ld	a0,-40(s0)
    800025a0:	fd043583          	ld	a1,-48(s0)
    800025a4:	fc843603          	ld	a2,-56(s0)
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	2fc080e7          	jalr	764(ra) # 800018a4 <_ZN3PCB16creatorThreadPCBEmmm>
    800025b0:	f8a43423          	sd	a0,-120(s0)
                ret = -1;
    800025b4:	fff00793          	li	a5,-1
    800025b8:	f8f43023          	sd	a5,-128(s0)
                if (pcb) { ret = 0; }
    800025bc:	f8843783          	ld	a5,-120(s0)
    800025c0:	00078463          	beqz	a5,800025c8 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
    800025c4:	f8043023          	sd	zero,-128(s0)
                __asm__ volatile ("sd %0, 8*11(s0)" : : "r" (pcb));
    800025c8:	f8843783          	ld	a5,-120(s0)
    800025cc:	04f43c23          	sd	a5,88(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    800025d0:	f8043783          	ld	a5,-128(s0)
    800025d4:	04f43823          	sd	a5,80(s0)
                break;
    800025d8:	efdff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                sem = Sem::openSEM((int)c);
    800025dc:	fd843503          	ld	a0,-40(s0)
    800025e0:	0005051b          	sext.w	a0,a0
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	650080e7          	jalr	1616(ra) # 80001c34 <_ZN3Sem7openSEMEi>
    800025ec:	f8a43823          	sd	a0,-112(s0)
                *((uint64*)b) = (uint64)sem;
    800025f0:	f9043703          	ld	a4,-112(s0)
    800025f4:	fe043783          	ld	a5,-32(s0)
    800025f8:	00e7b023          	sd	a4,0(a5)
                ret = -1;
    800025fc:	fff00793          	li	a5,-1
    80002600:	f8f43023          	sd	a5,-128(s0)
                if(sem) ret = 0;
    80002604:	f9043783          	ld	a5,-112(s0)
    80002608:	00078463          	beqz	a5,80002610 <_ZN5Riscv20handleSupervisorTrapEv+0x258>
    8000260c:	f8043023          	sd	zero,-128(s0)
                __asm__ volatile ("sd %0, 8*11(s0)" : : "r" (sem));
    80002610:	f9043783          	ld	a5,-112(s0)
    80002614:	04f43c23          	sd	a5,88(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    80002618:	f8043783          	ld	a5,-128(s0)
    8000261c:	04f43823          	sd	a5,80(s0)
                break;
    80002620:	eb5ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                sem = (Sem*)b;
    80002624:	fe043783          	ld	a5,-32(s0)
    80002628:	f8f43823          	sd	a5,-112(s0)
                ret = sem->closeSEM();
    8000262c:	f9043503          	ld	a0,-112(s0)
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	658080e7          	jalr	1624(ra) # 80001c88 <_ZN3Sem8closeSEMEv>
    80002638:	f8a43023          	sd	a0,-128(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    8000263c:	f8043783          	ld	a5,-128(s0)
    80002640:	04f43823          	sd	a5,80(s0)
                break;
    80002644:	e91ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                sem = (Sem*)b;
    80002648:	fe043783          	ld	a5,-32(s0)
    8000264c:	f8f43823          	sd	a5,-112(s0)
                ret = sem->waitSEM();
    80002650:	f9043503          	ld	a0,-112(s0)
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	664080e7          	jalr	1636(ra) # 80001cb8 <_ZN3Sem7waitSEMEv>
    8000265c:	f8a43023          	sd	a0,-128(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    80002660:	f8043783          	ld	a5,-128(s0)
    80002664:	04f43823          	sd	a5,80(s0)
                break;
    80002668:	e6dff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                sem = (Sem*)b;
    8000266c:	fe043783          	ld	a5,-32(s0)
    80002670:	f8f43823          	sd	a5,-112(s0)
                ret = sem->signalSEM();
    80002674:	f9043503          	ld	a0,-112(s0)
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	6c0080e7          	jalr	1728(ra) # 80001d38 <_ZN3Sem9signalSEMEv>
    80002680:	f8a43023          	sd	a0,-128(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (ret));
    80002684:	f8043783          	ld	a5,-128(s0)
    80002688:	04f43823          	sd	a5,80(s0)
                break;
    8000268c:	e49ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                g = __getc();
    80002690:	00006097          	auipc	ra,0x6
    80002694:	a48080e7          	jalr	-1464(ra) # 800080d8 <__getc>
    80002698:	f6a40ba3          	sb	a0,-137(s0)
                __asm__ volatile ("sd %0, 8*10(s0)" : : "r" (g));
    8000269c:	f7744783          	lbu	a5,-137(s0)
    800026a0:	04f43823          	sd	a5,80(s0)
                break;
    800026a4:	e31ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __putc(b);
    800026a8:	fe043503          	ld	a0,-32(s0)
    800026ac:	0ff57513          	andi	a0,a0,255
    800026b0:	00006097          	auipc	ra,0x6
    800026b4:	9ec080e7          	jalr	-1556(ra) # 8000809c <__putc>
                break;
    800026b8:	e1dff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                sstatus &= ~SSTATUS_SPP;
    800026bc:	fb043783          	ld	a5,-80(s0)
    800026c0:	eff7f793          	andi	a5,a5,-257
    800026c4:	faf43823          	sd	a5,-80(s0)
                sstatus &= ~SSTATUS_SPIE;
    800026c8:	fb043783          	ld	a5,-80(s0)
    800026cc:	fdf7f793          	andi	a5,a5,-33
    800026d0:	faf43823          	sd	a5,-80(s0)
                break;
    800026d4:	e01ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                sstatus|= SSTATUS_SPP;
    800026d8:	fb043783          	ld	a5,-80(s0)
    800026dc:	1007e793          	ori	a5,a5,256
    800026e0:	faf43823          	sd	a5,-80(s0)
                sstatus |= ~SSTATUS_SPIE;
    800026e4:	fb043783          	ld	a5,-80(s0)
    800026e8:	fdf7e793          	ori	a5,a5,-33
    800026ec:	faf43823          	sd	a5,-80(s0)
                break;
    800026f0:	de5ff06f          	j	800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
        __putc('2'); // while(1) {}
    800026f4:	03200513          	li	a0,50
    800026f8:	00006097          	auipc	ra,0x6
    800026fc:	9a4080e7          	jalr	-1628(ra) # 8000809c <__putc>
    80002700:	de5ff06f          	j	800024e4 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
        __putc('5'); // while(1) {}
    80002704:	03500513          	li	a0,53
    80002708:	00006097          	auipc	ra,0x6
    8000270c:	994080e7          	jalr	-1644(ra) # 8000809c <__putc>
    80002710:	dd5ff06f          	j	800024e4 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>

0000000080002714 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE>:

// points to the start of the linked list of free segments
MemoryAllocator::FreeMemHeader* MemoryAllocator::freeMemHead = nullptr;

// Helper: try to join cur with the next segment
int MemoryAllocator::tryToJoin(FreeMemHeader* cur) {
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00813423          	sd	s0,8(sp)
    8000271c:	01010413          	addi	s0,sp,16
    // zapamceno size je u blokovima
    if(!cur) return 0;
    80002720:	04050463          	beqz	a0,80002768 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE+0x54>
    if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*) (cur->next)) {
    80002724:	00053783          	ld	a5,0(a0)
    80002728:	04078463          	beqz	a5,80002770 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE+0x5c>
    8000272c:	00853683          	ld	a3,8(a0)
    80002730:	00669713          	slli	a4,a3,0x6
    80002734:	00e50733          	add	a4,a0,a4
    80002738:	00e78a63          	beq	a5,a4,8000274c <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE+0x38>
        // Remove the cur->next segment:
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    return 0;
    8000273c:	00000513          	li	a0,0
}
    80002740:	00813403          	ld	s0,8(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret
        cur->size += cur->next->size;
    8000274c:	0087b703          	ld	a4,8(a5)
    80002750:	00e686b3          	add	a3,a3,a4
    80002754:	00d53423          	sd	a3,8(a0)
        cur->next = cur->next->next;
    80002758:	0007b783          	ld	a5,0(a5)
    8000275c:	00f53023          	sd	a5,0(a0)
        return 1;
    80002760:	00100513          	li	a0,1
    80002764:	fddff06f          	j	80002740 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE+0x2c>
    if(!cur) return 0;
    80002768:	00000513          	li	a0,0
    8000276c:	fd5ff06f          	j	80002740 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE+0x2c>
    return 0;
    80002770:	00000513          	li	a0,0
    80002774:	fcdff06f          	j	80002740 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE+0x2c>

0000000080002778 <_ZN15MemoryAllocator11allocateMEMEm>:

void* MemoryAllocator::allocateMEM(size_t size) {
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00813423          	sd	s0,8(sp)
    80002780:	01010413          	addi	s0,sp,16
    80002784:	00050713          	mv	a4,a0
    // size je u blokovima
    if(freeMemHead == nullptr) {
    80002788:	00009517          	auipc	a0,0x9
    8000278c:	e0853503          	ld	a0,-504(a0) # 8000b590 <_ZN15MemoryAllocator11freeMemHeadE>
    80002790:	02050063          	beqz	a0,800027b0 <_ZN15MemoryAllocator11allocateMEMEm+0x38>
        freeMemHead = freeMem;

        return (char*)allocated + sizeof(FreeMemHeader);
    }

    FreeMemHeader* cur = freeMemHead, *prev = nullptr;
    80002794:	00000693          	li	a3,0
    for(; cur; prev = cur, cur = cur->next) {
    80002798:	06050063          	beqz	a0,800027f8 <_ZN15MemoryAllocator11allocateMEMEm+0x80>
        if (cur->size >= size) break; // Found
    8000279c:	00853783          	ld	a5,8(a0)
    800027a0:	04e7fc63          	bgeu	a5,a4,800027f8 <_ZN15MemoryAllocator11allocateMEMEm+0x80>
    for(; cur; prev = cur, cur = cur->next) {
    800027a4:	00050693          	mv	a3,a0
    800027a8:	00053503          	ld	a0,0(a0)
    800027ac:	fedff06f          	j	80002798 <_ZN15MemoryAllocator11allocateMEMEm+0x20>
        FreeMemHeader* allocated = (FreeMemHeader*)HEAP_START_ADDR;
    800027b0:	00009797          	auipc	a5,0x9
    800027b4:	d507b783          	ld	a5,-688(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027b8:	0007b783          	ld	a5,0(a5)
        FreeMemHeader* freeMem = (FreeMemHeader*)((char*)HEAP_START_ADDR + size * MEM_BLOCK_SIZE);
    800027bc:	00671693          	slli	a3,a4,0x6
    800027c0:	00d786b3          	add	a3,a5,a3
        allocated->next = nullptr; // koristan prostor
    800027c4:	0007b023          	sd	zero,0(a5)
        allocated->size = size; // u blokovima
    800027c8:	00e7b423          	sd	a4,8(a5)
        freeMem->next = nullptr;
    800027cc:	0006b023          	sd	zero,0(a3)
        freeMem->size = (size_t)((char*)HEAP_END_ADDR - (char*)freeMem)/MEM_BLOCK_SIZE;
    800027d0:	00009717          	auipc	a4,0x9
    800027d4:	d5073703          	ld	a4,-688(a4) # 8000b520 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027d8:	00073703          	ld	a4,0(a4)
    800027dc:	40d70733          	sub	a4,a4,a3
    800027e0:	00675713          	srli	a4,a4,0x6
    800027e4:	00e6b423          	sd	a4,8(a3)
        freeMemHead = freeMem;
    800027e8:	00009717          	auipc	a4,0x9
    800027ec:	dad73423          	sd	a3,-600(a4) # 8000b590 <_ZN15MemoryAllocator11freeMemHeadE>
        return (char*)allocated + sizeof(FreeMemHeader);
    800027f0:	01078513          	addi	a0,a5,16
    800027f4:	0400006f          	j	80002834 <_ZN15MemoryAllocator11allocateMEMEm+0xbc>
    }
    if(cur == nullptr) { return cur; }
    800027f8:	02050e63          	beqz	a0,80002834 <_ZN15MemoryAllocator11allocateMEMEm+0xbc>

    if(cur->size > size) {
    800027fc:	00853783          	ld	a5,8(a0)
    80002800:	04f77663          	bgeu	a4,a5,8000284c <_ZN15MemoryAllocator11allocateMEMEm+0xd4>
        // cur je free segment koji ce biti alociran (ceo ili deo)
        // remaining fragment:
        FreeMemHeader* newFreeChunk = (FreeMemHeader*) ((char*)cur + size * MEM_BLOCK_SIZE);
    80002804:	00671793          	slli	a5,a4,0x6
    80002808:	00f507b3          	add	a5,a0,a5
        if(prev) {
    8000280c:	02068a63          	beqz	a3,80002840 <_ZN15MemoryAllocator11allocateMEMEm+0xc8>
            prev->next = newFreeChunk;
    80002810:	00f6b023          	sd	a5,0(a3)
        } else {
            freeMemHead = newFreeChunk;
        }
        newFreeChunk->next = cur->next;
    80002814:	00053683          	ld	a3,0(a0)
    80002818:	00d7b023          	sd	a3,0(a5)
        newFreeChunk->size = cur->size - size;
    8000281c:	00853683          	ld	a3,8(a0)
    80002820:	40e686b3          	sub	a3,a3,a4
    80002824:	00d7b423          	sd	a3,8(a5)
        cur->size = size; // u blokovima
    80002828:	00e53423          	sd	a4,8(a0)
        }
        else {
            freeMemHead = cur->next;
        }
    }
    cur->next = nullptr;
    8000282c:	00053023          	sd	zero,0(a0)
    return (char*)cur + sizeof(FreeMemHeader);
    80002830:	01050513          	addi	a0,a0,16
}
    80002834:	00813403          	ld	s0,8(sp)
    80002838:	01010113          	addi	sp,sp,16
    8000283c:	00008067          	ret
            freeMemHead = newFreeChunk;
    80002840:	00009697          	auipc	a3,0x9
    80002844:	d4f6b823          	sd	a5,-688(a3) # 8000b590 <_ZN15MemoryAllocator11freeMemHeadE>
    80002848:	fcdff06f          	j	80002814 <_ZN15MemoryAllocator11allocateMEMEm+0x9c>
        if(prev) {
    8000284c:	00068863          	beqz	a3,8000285c <_ZN15MemoryAllocator11allocateMEMEm+0xe4>
            prev->next = cur->next;
    80002850:	00053783          	ld	a5,0(a0)
    80002854:	00f6b023          	sd	a5,0(a3)
    80002858:	fd5ff06f          	j	8000282c <_ZN15MemoryAllocator11allocateMEMEm+0xb4>
            freeMemHead = cur->next;
    8000285c:	00053783          	ld	a5,0(a0)
    80002860:	00009717          	auipc	a4,0x9
    80002864:	d2f73823          	sd	a5,-720(a4) # 8000b590 <_ZN15MemoryAllocator11freeMemHeadE>
    80002868:	fc5ff06f          	j	8000282c <_ZN15MemoryAllocator11allocateMEMEm+0xb4>

000000008000286c <_ZN15MemoryAllocator13deallocateMEMEPv>:

int MemoryAllocator::deallocateMEM(void *v) {
    8000286c:	00050713          	mv	a4,a0
    // size je velicina segmenta koji se dealocira, u blokovima
    // v = pocetak alociranog prostora, next, size, pa prostor
    v = (char*)((char*)v - sizeof(FreeMemHeader));
    80002870:	ff050513          	addi	a0,a0,-16
    if((char*)v < (char*)HEAP_START_ADDR) {
    80002874:	00009797          	auipc	a5,0x9
    80002878:	c8c7b783          	ld	a5,-884(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000287c:	0007b783          	ld	a5,0(a5)
    80002880:	08f56863          	bltu	a0,a5,80002910 <_ZN15MemoryAllocator13deallocateMEMEPv+0xa4>
int MemoryAllocator::deallocateMEM(void *v) {
    80002884:	fe010113          	addi	sp,sp,-32
    80002888:	00113c23          	sd	ra,24(sp)
    8000288c:	00813823          	sd	s0,16(sp)
    80002890:	00913423          	sd	s1,8(sp)
    80002894:	02010413          	addi	s0,sp,32
        return -1;
    }
    // Find the place where to insert the new free segment (after cur)
    FreeMemHeader *cur = 0;
    if (!freeMemHead || (char*)v < (char*)freeMemHead) {
    80002898:	00009697          	auipc	a3,0x9
    8000289c:	cf86b683          	ld	a3,-776(a3) # 8000b590 <_ZN15MemoryAllocator11freeMemHeadE>
    800028a0:	02068663          	beqz	a3,800028cc <_ZN15MemoryAllocator13deallocateMEMEPv+0x60>
    800028a4:	02d56863          	bltu	a0,a3,800028d4 <_ZN15MemoryAllocator13deallocateMEMEPv+0x68>
        cur = 0; // first
    }
    else {
        for (cur = freeMemHead; cur->next != nullptr && (char*)v > (char*)(cur->next); cur = cur->next);
    800028a8:	00068793          	mv	a5,a3
    800028ac:	00078493          	mv	s1,a5
    800028b0:	0007b783          	ld	a5,0(a5)
    800028b4:	00078463          	beqz	a5,800028bc <_ZN15MemoryAllocator13deallocateMEMEPv+0x50>
    800028b8:	fea7eae3          	bltu	a5,a0,800028ac <_ZN15MemoryAllocator13deallocateMEMEPv+0x40>
    }
    // Insert the new segment after cur:
    FreeMemHeader* freeSeg = (FreeMemHeader*)v;
    if(cur) {
    800028bc:	00048e63          	beqz	s1,800028d8 <_ZN15MemoryAllocator13deallocateMEMEPv+0x6c>
        freeSeg->next = cur->next;
    800028c0:	fef73823          	sd	a5,-16(a4)
        cur->next = freeSeg;
    800028c4:	00a4b023          	sd	a0,0(s1)
    800028c8:	01c0006f          	j	800028e4 <_ZN15MemoryAllocator13deallocateMEMEPv+0x78>
        cur = 0; // first
    800028cc:	00068493          	mv	s1,a3
    800028d0:	0080006f          	j	800028d8 <_ZN15MemoryAllocator13deallocateMEMEPv+0x6c>
    800028d4:	00000493          	li	s1,0
    } else {
        freeSeg->next = freeMemHead;
    800028d8:	fed73823          	sd	a3,-16(a4)
        freeMemHead = freeSeg;
    800028dc:	00009797          	auipc	a5,0x9
    800028e0:	caa7ba23          	sd	a0,-844(a5) # 8000b590 <_ZN15MemoryAllocator11freeMemHeadE>
    }
    // Try to join with the previous and next segments:
    tryToJoin(freeSeg);
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	e30080e7          	jalr	-464(ra) # 80002714 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE>
    tryToJoin(cur);
    800028ec:	00048513          	mv	a0,s1
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	e24080e7          	jalr	-476(ra) # 80002714 <_ZN15MemoryAllocator9tryToJoinEPNS_13FreeMemHeaderE>

    return 0;
    800028f8:	00000513          	li	a0,0
    800028fc:	01813083          	ld	ra,24(sp)
    80002900:	01013403          	ld	s0,16(sp)
    80002904:	00813483          	ld	s1,8(sp)
    80002908:	02010113          	addi	sp,sp,32
    8000290c:	00008067          	ret
        return -1;
    80002910:	fff00513          	li	a0,-1
    80002914:	00008067          	ret

0000000080002918 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002918:	fe010113          	addi	sp,sp,-32
    8000291c:	00113c23          	sd	ra,24(sp)
    80002920:	00813823          	sd	s0,16(sp)
    80002924:	00913423          	sd	s1,8(sp)
    80002928:	01213023          	sd	s2,0(sp)
    8000292c:	02010413          	addi	s0,sp,32
    80002930:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002934:	00000913          	li	s2,0
    80002938:	00c0006f          	j	80002944 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	a7c080e7          	jalr	-1412(ra) # 800013b8 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	be8080e7          	jalr	-1048(ra) # 8000152c <getc>
    8000294c:	0005059b          	sext.w	a1,a0
    80002950:	01b00793          	li	a5,27
    80002954:	02f58a63          	beq	a1,a5,80002988 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002958:	0084b503          	ld	a0,8(s1)
    8000295c:	00003097          	auipc	ra,0x3
    80002960:	3f4080e7          	jalr	1012(ra) # 80005d50 <_ZN6Buffer3putEi>
        i++;
    80002964:	0019071b          	addiw	a4,s2,1
    80002968:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000296c:	0004a683          	lw	a3,0(s1)
    80002970:	0026979b          	slliw	a5,a3,0x2
    80002974:	00d787bb          	addw	a5,a5,a3
    80002978:	0017979b          	slliw	a5,a5,0x1
    8000297c:	02f767bb          	remw	a5,a4,a5
    80002980:	fc0792e3          	bnez	a5,80002944 <_ZL16producerKeyboardPv+0x2c>
    80002984:	fb9ff06f          	j	8000293c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002988:	00100793          	li	a5,1
    8000298c:	00009717          	auipc	a4,0x9
    80002990:	c0f72623          	sw	a5,-1012(a4) # 8000b598 <_ZL9threadEnd>
    data->buffer->put('!');
    80002994:	02100593          	li	a1,33
    80002998:	0084b503          	ld	a0,8(s1)
    8000299c:	00003097          	auipc	ra,0x3
    800029a0:	3b4080e7          	jalr	948(ra) # 80005d50 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800029a4:	0104b503          	ld	a0,16(s1)
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	b4c080e7          	jalr	-1204(ra) # 800014f4 <sem_signal>
}
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	01013403          	ld	s0,16(sp)
    800029b8:	00813483          	ld	s1,8(sp)
    800029bc:	00013903          	ld	s2,0(sp)
    800029c0:	02010113          	addi	sp,sp,32
    800029c4:	00008067          	ret

00000000800029c8 <_ZL8producerPv>:

static void producer(void *arg) {
    800029c8:	fe010113          	addi	sp,sp,-32
    800029cc:	00113c23          	sd	ra,24(sp)
    800029d0:	00813823          	sd	s0,16(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	01213023          	sd	s2,0(sp)
    800029dc:	02010413          	addi	s0,sp,32
    800029e0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800029e4:	00000913          	li	s2,0
    800029e8:	00c0006f          	j	800029f4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	9cc080e7          	jalr	-1588(ra) # 800013b8 <thread_dispatch>
    while (!threadEnd) {
    800029f4:	00009797          	auipc	a5,0x9
    800029f8:	ba47a783          	lw	a5,-1116(a5) # 8000b598 <_ZL9threadEnd>
    800029fc:	02079e63          	bnez	a5,80002a38 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002a00:	0004a583          	lw	a1,0(s1)
    80002a04:	0305859b          	addiw	a1,a1,48
    80002a08:	0084b503          	ld	a0,8(s1)
    80002a0c:	00003097          	auipc	ra,0x3
    80002a10:	344080e7          	jalr	836(ra) # 80005d50 <_ZN6Buffer3putEi>
        i++;
    80002a14:	0019071b          	addiw	a4,s2,1
    80002a18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a1c:	0004a683          	lw	a3,0(s1)
    80002a20:	0026979b          	slliw	a5,a3,0x2
    80002a24:	00d787bb          	addw	a5,a5,a3
    80002a28:	0017979b          	slliw	a5,a5,0x1
    80002a2c:	02f767bb          	remw	a5,a4,a5
    80002a30:	fc0792e3          	bnez	a5,800029f4 <_ZL8producerPv+0x2c>
    80002a34:	fb9ff06f          	j	800029ec <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002a38:	0104b503          	ld	a0,16(s1)
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	ab8080e7          	jalr	-1352(ra) # 800014f4 <sem_signal>
}
    80002a44:	01813083          	ld	ra,24(sp)
    80002a48:	01013403          	ld	s0,16(sp)
    80002a4c:	00813483          	ld	s1,8(sp)
    80002a50:	00013903          	ld	s2,0(sp)
    80002a54:	02010113          	addi	sp,sp,32
    80002a58:	00008067          	ret

0000000080002a5c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002a5c:	fd010113          	addi	sp,sp,-48
    80002a60:	02113423          	sd	ra,40(sp)
    80002a64:	02813023          	sd	s0,32(sp)
    80002a68:	00913c23          	sd	s1,24(sp)
    80002a6c:	01213823          	sd	s2,16(sp)
    80002a70:	01313423          	sd	s3,8(sp)
    80002a74:	03010413          	addi	s0,sp,48
    80002a78:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002a7c:	00000993          	li	s3,0
    80002a80:	01c0006f          	j	80002a9c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	934080e7          	jalr	-1740(ra) # 800013b8 <thread_dispatch>
    80002a8c:	0500006f          	j	80002adc <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002a90:	00a00513          	li	a0,10
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	ad4080e7          	jalr	-1324(ra) # 80001568 <putc>
    while (!threadEnd) {
    80002a9c:	00009797          	auipc	a5,0x9
    80002aa0:	afc7a783          	lw	a5,-1284(a5) # 8000b598 <_ZL9threadEnd>
    80002aa4:	06079063          	bnez	a5,80002b04 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002aa8:	00893503          	ld	a0,8(s2)
    80002aac:	00003097          	auipc	ra,0x3
    80002ab0:	334080e7          	jalr	820(ra) # 80005de0 <_ZN6Buffer3getEv>
        i++;
    80002ab4:	0019849b          	addiw	s1,s3,1
    80002ab8:	0004899b          	sext.w	s3,s1
        putc(key);
    80002abc:	0ff57513          	andi	a0,a0,255
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	aa8080e7          	jalr	-1368(ra) # 80001568 <putc>
        if (i % (5 * data->id) == 0) {
    80002ac8:	00092703          	lw	a4,0(s2)
    80002acc:	0027179b          	slliw	a5,a4,0x2
    80002ad0:	00e787bb          	addw	a5,a5,a4
    80002ad4:	02f4e7bb          	remw	a5,s1,a5
    80002ad8:	fa0786e3          	beqz	a5,80002a84 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002adc:	05000793          	li	a5,80
    80002ae0:	02f4e4bb          	remw	s1,s1,a5
    80002ae4:	fa049ce3          	bnez	s1,80002a9c <_ZL8consumerPv+0x40>
    80002ae8:	fa9ff06f          	j	80002a90 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002aec:	00893503          	ld	a0,8(s2)
    80002af0:	00003097          	auipc	ra,0x3
    80002af4:	2f0080e7          	jalr	752(ra) # 80005de0 <_ZN6Buffer3getEv>
        putc(key);
    80002af8:	0ff57513          	andi	a0,a0,255
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	a6c080e7          	jalr	-1428(ra) # 80001568 <putc>
    while (data->buffer->getCnt() > 0) {
    80002b04:	00893503          	ld	a0,8(s2)
    80002b08:	00003097          	auipc	ra,0x3
    80002b0c:	364080e7          	jalr	868(ra) # 80005e6c <_ZN6Buffer6getCntEv>
    80002b10:	fca04ee3          	bgtz	a0,80002aec <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002b14:	01093503          	ld	a0,16(s2)
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	9dc080e7          	jalr	-1572(ra) # 800014f4 <sem_signal>
}
    80002b20:	02813083          	ld	ra,40(sp)
    80002b24:	02013403          	ld	s0,32(sp)
    80002b28:	01813483          	ld	s1,24(sp)
    80002b2c:	01013903          	ld	s2,16(sp)
    80002b30:	00813983          	ld	s3,8(sp)
    80002b34:	03010113          	addi	sp,sp,48
    80002b38:	00008067          	ret

0000000080002b3c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002b3c:	f9010113          	addi	sp,sp,-112
    80002b40:	06113423          	sd	ra,104(sp)
    80002b44:	06813023          	sd	s0,96(sp)
    80002b48:	04913c23          	sd	s1,88(sp)
    80002b4c:	05213823          	sd	s2,80(sp)
    80002b50:	05313423          	sd	s3,72(sp)
    80002b54:	05413023          	sd	s4,64(sp)
    80002b58:	03513c23          	sd	s5,56(sp)
    80002b5c:	03613823          	sd	s6,48(sp)
    80002b60:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002b64:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002b68:	00006517          	auipc	a0,0x6
    80002b6c:	60850513          	addi	a0,a0,1544 # 80009170 <CONSOLE_STATUS+0x160>
    80002b70:	00002097          	auipc	ra,0x2
    80002b74:	220080e7          	jalr	544(ra) # 80004d90 <_Z11printStringPKc>
    getString(input, 30);
    80002b78:	01e00593          	li	a1,30
    80002b7c:	fa040493          	addi	s1,s0,-96
    80002b80:	00048513          	mv	a0,s1
    80002b84:	00002097          	auipc	ra,0x2
    80002b88:	294080e7          	jalr	660(ra) # 80004e18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002b8c:	00048513          	mv	a0,s1
    80002b90:	00002097          	auipc	ra,0x2
    80002b94:	360080e7          	jalr	864(ra) # 80004ef0 <_Z11stringToIntPKc>
    80002b98:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002b9c:	00006517          	auipc	a0,0x6
    80002ba0:	5f450513          	addi	a0,a0,1524 # 80009190 <CONSOLE_STATUS+0x180>
    80002ba4:	00002097          	auipc	ra,0x2
    80002ba8:	1ec080e7          	jalr	492(ra) # 80004d90 <_Z11printStringPKc>
    getString(input, 30);
    80002bac:	01e00593          	li	a1,30
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	00002097          	auipc	ra,0x2
    80002bb8:	264080e7          	jalr	612(ra) # 80004e18 <_Z9getStringPci>
    n = stringToInt(input);
    80002bbc:	00048513          	mv	a0,s1
    80002bc0:	00002097          	auipc	ra,0x2
    80002bc4:	330080e7          	jalr	816(ra) # 80004ef0 <_Z11stringToIntPKc>
    80002bc8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002bcc:	00006517          	auipc	a0,0x6
    80002bd0:	5e450513          	addi	a0,a0,1508 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002bd4:	00002097          	auipc	ra,0x2
    80002bd8:	1bc080e7          	jalr	444(ra) # 80004d90 <_Z11printStringPKc>
    80002bdc:	00000613          	li	a2,0
    80002be0:	00a00593          	li	a1,10
    80002be4:	00090513          	mv	a0,s2
    80002be8:	00002097          	auipc	ra,0x2
    80002bec:	358080e7          	jalr	856(ra) # 80004f40 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002bf0:	00006517          	auipc	a0,0x6
    80002bf4:	5d850513          	addi	a0,a0,1496 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80002bf8:	00002097          	auipc	ra,0x2
    80002bfc:	198080e7          	jalr	408(ra) # 80004d90 <_Z11printStringPKc>
    80002c00:	00000613          	li	a2,0
    80002c04:	00a00593          	li	a1,10
    80002c08:	00048513          	mv	a0,s1
    80002c0c:	00002097          	auipc	ra,0x2
    80002c10:	334080e7          	jalr	820(ra) # 80004f40 <_Z8printIntiii>
    printString(".\n");
    80002c14:	00006517          	auipc	a0,0x6
    80002c18:	5cc50513          	addi	a0,a0,1484 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80002c1c:	00002097          	auipc	ra,0x2
    80002c20:	174080e7          	jalr	372(ra) # 80004d90 <_Z11printStringPKc>
    if(threadNum > n) {
    80002c24:	0324c463          	blt	s1,s2,80002c4c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002c28:	03205c63          	blez	s2,80002c60 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002c2c:	03800513          	li	a0,56
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	33c080e7          	jalr	828(ra) # 80001f6c <_Znwm>
    80002c38:	00050a13          	mv	s4,a0
    80002c3c:	00048593          	mv	a1,s1
    80002c40:	00003097          	auipc	ra,0x3
    80002c44:	074080e7          	jalr	116(ra) # 80005cb4 <_ZN6BufferC1Ei>
    80002c48:	0300006f          	j	80002c78 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002c4c:	00006517          	auipc	a0,0x6
    80002c50:	59c50513          	addi	a0,a0,1436 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002c54:	00002097          	auipc	ra,0x2
    80002c58:	13c080e7          	jalr	316(ra) # 80004d90 <_Z11printStringPKc>
        return;
    80002c5c:	0140006f          	j	80002c70 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002c60:	00006517          	auipc	a0,0x6
    80002c64:	5c850513          	addi	a0,a0,1480 # 80009228 <CONSOLE_STATUS+0x218>
    80002c68:	00002097          	auipc	ra,0x2
    80002c6c:	128080e7          	jalr	296(ra) # 80004d90 <_Z11printStringPKc>
        return;
    80002c70:	000b0113          	mv	sp,s6
    80002c74:	1500006f          	j	80002dc4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002c78:	00000593          	li	a1,0
    80002c7c:	00009517          	auipc	a0,0x9
    80002c80:	92450513          	addi	a0,a0,-1756 # 8000b5a0 <_ZL10waitForAll>
    80002c84:	ffffe097          	auipc	ra,0xffffe
    80002c88:	7b0080e7          	jalr	1968(ra) # 80001434 <sem_open>
    thread_t threads[threadNum];
    80002c8c:	00391793          	slli	a5,s2,0x3
    80002c90:	00f78793          	addi	a5,a5,15
    80002c94:	ff07f793          	andi	a5,a5,-16
    80002c98:	40f10133          	sub	sp,sp,a5
    80002c9c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002ca0:	0019071b          	addiw	a4,s2,1
    80002ca4:	00171793          	slli	a5,a4,0x1
    80002ca8:	00e787b3          	add	a5,a5,a4
    80002cac:	00379793          	slli	a5,a5,0x3
    80002cb0:	00f78793          	addi	a5,a5,15
    80002cb4:	ff07f793          	andi	a5,a5,-16
    80002cb8:	40f10133          	sub	sp,sp,a5
    80002cbc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002cc0:	00191613          	slli	a2,s2,0x1
    80002cc4:	012607b3          	add	a5,a2,s2
    80002cc8:	00379793          	slli	a5,a5,0x3
    80002ccc:	00f987b3          	add	a5,s3,a5
    80002cd0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002cd4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002cd8:	00009717          	auipc	a4,0x9
    80002cdc:	8c873703          	ld	a4,-1848(a4) # 8000b5a0 <_ZL10waitForAll>
    80002ce0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002ce4:	00078613          	mv	a2,a5
    80002ce8:	00000597          	auipc	a1,0x0
    80002cec:	d7458593          	addi	a1,a1,-652 # 80002a5c <_ZL8consumerPv>
    80002cf0:	f9840513          	addi	a0,s0,-104
    80002cf4:	fffff097          	auipc	ra,0xfffff
    80002cf8:	8ec080e7          	jalr	-1812(ra) # 800015e0 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80002cfc:	00000493          	li	s1,0
    80002d00:	0280006f          	j	80002d28 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002d04:	00000597          	auipc	a1,0x0
    80002d08:	c1458593          	addi	a1,a1,-1004 # 80002918 <_ZL16producerKeyboardPv>
                      data + i);
    80002d0c:	00179613          	slli	a2,a5,0x1
    80002d10:	00f60633          	add	a2,a2,a5
    80002d14:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002d18:	00c98633          	add	a2,s3,a2
    80002d1c:	fffff097          	auipc	ra,0xfffff
    80002d20:	8c4080e7          	jalr	-1852(ra) # 800015e0 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80002d24:	0014849b          	addiw	s1,s1,1
    80002d28:	0524d263          	bge	s1,s2,80002d6c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002d2c:	00149793          	slli	a5,s1,0x1
    80002d30:	009787b3          	add	a5,a5,s1
    80002d34:	00379793          	slli	a5,a5,0x3
    80002d38:	00f987b3          	add	a5,s3,a5
    80002d3c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002d40:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002d44:	00009717          	auipc	a4,0x9
    80002d48:	85c73703          	ld	a4,-1956(a4) # 8000b5a0 <_ZL10waitForAll>
    80002d4c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002d50:	00048793          	mv	a5,s1
    80002d54:	00349513          	slli	a0,s1,0x3
    80002d58:	00aa8533          	add	a0,s5,a0
    80002d5c:	fa9054e3          	blez	s1,80002d04 <_Z22producerConsumer_C_APIv+0x1c8>
    80002d60:	00000597          	auipc	a1,0x0
    80002d64:	c6858593          	addi	a1,a1,-920 # 800029c8 <_ZL8producerPv>
    80002d68:	fa5ff06f          	j	80002d0c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002d6c:	ffffe097          	auipc	ra,0xffffe
    80002d70:	64c080e7          	jalr	1612(ra) # 800013b8 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80002d74:	00000493          	li	s1,0
    80002d78:	00994e63          	blt	s2,s1,80002d94 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002d7c:	00009517          	auipc	a0,0x9
    80002d80:	82453503          	ld	a0,-2012(a0) # 8000b5a0 <_ZL10waitForAll>
    80002d84:	ffffe097          	auipc	ra,0xffffe
    80002d88:	738080e7          	jalr	1848(ra) # 800014bc <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80002d8c:	0014849b          	addiw	s1,s1,1
    80002d90:	fe9ff06f          	j	80002d78 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002d94:	00009517          	auipc	a0,0x9
    80002d98:	80c53503          	ld	a0,-2036(a0) # 8000b5a0 <_ZL10waitForAll>
    80002d9c:	ffffe097          	auipc	ra,0xffffe
    80002da0:	6d4080e7          	jalr	1748(ra) # 80001470 <sem_close>
    delete buffer;
    80002da4:	000a0e63          	beqz	s4,80002dc0 <_Z22producerConsumer_C_APIv+0x284>
    80002da8:	000a0513          	mv	a0,s4
    80002dac:	00003097          	auipc	ra,0x3
    80002db0:	148080e7          	jalr	328(ra) # 80005ef4 <_ZN6BufferD1Ev>
    80002db4:	000a0513          	mv	a0,s4
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	204080e7          	jalr	516(ra) # 80001fbc <_ZdlPv>
    80002dc0:	000b0113          	mv	sp,s6

}
    80002dc4:	f9040113          	addi	sp,s0,-112
    80002dc8:	06813083          	ld	ra,104(sp)
    80002dcc:	06013403          	ld	s0,96(sp)
    80002dd0:	05813483          	ld	s1,88(sp)
    80002dd4:	05013903          	ld	s2,80(sp)
    80002dd8:	04813983          	ld	s3,72(sp)
    80002ddc:	04013a03          	ld	s4,64(sp)
    80002de0:	03813a83          	ld	s5,56(sp)
    80002de4:	03013b03          	ld	s6,48(sp)
    80002de8:	07010113          	addi	sp,sp,112
    80002dec:	00008067          	ret
    80002df0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002df4:	000a0513          	mv	a0,s4
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	1c4080e7          	jalr	452(ra) # 80001fbc <_ZdlPv>
    80002e00:	00048513          	mv	a0,s1
    80002e04:	0000a097          	auipc	ra,0xa
    80002e08:	8b4080e7          	jalr	-1868(ra) # 8000c6b8 <_Unwind_Resume>

0000000080002e0c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002e0c:	fe010113          	addi	sp,sp,-32
    80002e10:	00113c23          	sd	ra,24(sp)
    80002e14:	00813823          	sd	s0,16(sp)
    80002e18:	00913423          	sd	s1,8(sp)
    80002e1c:	01213023          	sd	s2,0(sp)
    80002e20:	02010413          	addi	s0,sp,32
    80002e24:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002e28:	00100793          	li	a5,1
    80002e2c:	02a7f863          	bgeu	a5,a0,80002e5c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002e30:	00a00793          	li	a5,10
    80002e34:	02f577b3          	remu	a5,a0,a5
    80002e38:	02078e63          	beqz	a5,80002e74 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002e3c:	fff48513          	addi	a0,s1,-1
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	fcc080e7          	jalr	-52(ra) # 80002e0c <_ZL9fibonaccim>
    80002e48:	00050913          	mv	s2,a0
    80002e4c:	ffe48513          	addi	a0,s1,-2
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	fbc080e7          	jalr	-68(ra) # 80002e0c <_ZL9fibonaccim>
    80002e58:	00a90533          	add	a0,s2,a0
}
    80002e5c:	01813083          	ld	ra,24(sp)
    80002e60:	01013403          	ld	s0,16(sp)
    80002e64:	00813483          	ld	s1,8(sp)
    80002e68:	00013903          	ld	s2,0(sp)
    80002e6c:	02010113          	addi	sp,sp,32
    80002e70:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	544080e7          	jalr	1348(ra) # 800013b8 <thread_dispatch>
    80002e7c:	fc1ff06f          	j	80002e3c <_ZL9fibonaccim+0x30>

0000000080002e80 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002e80:	fe010113          	addi	sp,sp,-32
    80002e84:	00113c23          	sd	ra,24(sp)
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	01213023          	sd	s2,0(sp)
    80002e94:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002e98:	00000913          	li	s2,0
    80002e9c:	0380006f          	j	80002ed4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002ea0:	ffffe097          	auipc	ra,0xffffe
    80002ea4:	518080e7          	jalr	1304(ra) # 800013b8 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80002ea8:	00148493          	addi	s1,s1,1
    80002eac:	000027b7          	lui	a5,0x2
    80002eb0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002eb4:	0097ee63          	bltu	a5,s1,80002ed0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002eb8:	00000713          	li	a4,0
    80002ebc:	000077b7          	lui	a5,0x7
    80002ec0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ec4:	fce7eee3          	bltu	a5,a4,80002ea0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002ec8:	00170713          	addi	a4,a4,1
    80002ecc:	ff1ff06f          	j	80002ebc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ed0:	00190913          	addi	s2,s2,1
    80002ed4:	00900793          	li	a5,9
    80002ed8:	0527e063          	bltu	a5,s2,80002f18 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002edc:	00006517          	auipc	a0,0x6
    80002ee0:	37c50513          	addi	a0,a0,892 # 80009258 <CONSOLE_STATUS+0x248>
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	eac080e7          	jalr	-340(ra) # 80004d90 <_Z11printStringPKc>
    80002eec:	00000613          	li	a2,0
    80002ef0:	00a00593          	li	a1,10
    80002ef4:	0009051b          	sext.w	a0,s2
    80002ef8:	00002097          	auipc	ra,0x2
    80002efc:	048080e7          	jalr	72(ra) # 80004f40 <_Z8printIntiii>
    80002f00:	00006517          	auipc	a0,0x6
    80002f04:	5d850513          	addi	a0,a0,1496 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	e88080e7          	jalr	-376(ra) # 80004d90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002f10:	00000493          	li	s1,0
    80002f14:	f99ff06f          	j	80002eac <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002f18:	00006517          	auipc	a0,0x6
    80002f1c:	34850513          	addi	a0,a0,840 # 80009260 <CONSOLE_STATUS+0x250>
    80002f20:	00002097          	auipc	ra,0x2
    80002f24:	e70080e7          	jalr	-400(ra) # 80004d90 <_Z11printStringPKc>
    finishedA = true;
    80002f28:	00100793          	li	a5,1
    80002f2c:	00008717          	auipc	a4,0x8
    80002f30:	66f70e23          	sb	a5,1660(a4) # 8000b5a8 <_ZL9finishedA>
}
    80002f34:	01813083          	ld	ra,24(sp)
    80002f38:	01013403          	ld	s0,16(sp)
    80002f3c:	00813483          	ld	s1,8(sp)
    80002f40:	00013903          	ld	s2,0(sp)
    80002f44:	02010113          	addi	sp,sp,32
    80002f48:	00008067          	ret

0000000080002f4c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00113c23          	sd	ra,24(sp)
    80002f54:	00813823          	sd	s0,16(sp)
    80002f58:	00913423          	sd	s1,8(sp)
    80002f5c:	01213023          	sd	s2,0(sp)
    80002f60:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002f64:	00000913          	li	s2,0
    80002f68:	0380006f          	j	80002fa0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002f6c:	ffffe097          	auipc	ra,0xffffe
    80002f70:	44c080e7          	jalr	1100(ra) # 800013b8 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80002f74:	00148493          	addi	s1,s1,1
    80002f78:	000027b7          	lui	a5,0x2
    80002f7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f80:	0097ee63          	bltu	a5,s1,80002f9c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f84:	00000713          	li	a4,0
    80002f88:	000077b7          	lui	a5,0x7
    80002f8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f90:	fce7eee3          	bltu	a5,a4,80002f6c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002f94:	00170713          	addi	a4,a4,1
    80002f98:	ff1ff06f          	j	80002f88 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002f9c:	00190913          	addi	s2,s2,1
    80002fa0:	00f00793          	li	a5,15
    80002fa4:	0527e063          	bltu	a5,s2,80002fe4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002fa8:	00006517          	auipc	a0,0x6
    80002fac:	2c850513          	addi	a0,a0,712 # 80009270 <CONSOLE_STATUS+0x260>
    80002fb0:	00002097          	auipc	ra,0x2
    80002fb4:	de0080e7          	jalr	-544(ra) # 80004d90 <_Z11printStringPKc>
    80002fb8:	00000613          	li	a2,0
    80002fbc:	00a00593          	li	a1,10
    80002fc0:	0009051b          	sext.w	a0,s2
    80002fc4:	00002097          	auipc	ra,0x2
    80002fc8:	f7c080e7          	jalr	-132(ra) # 80004f40 <_Z8printIntiii>
    80002fcc:	00006517          	auipc	a0,0x6
    80002fd0:	50c50513          	addi	a0,a0,1292 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80002fd4:	00002097          	auipc	ra,0x2
    80002fd8:	dbc080e7          	jalr	-580(ra) # 80004d90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002fdc:	00000493          	li	s1,0
    80002fe0:	f99ff06f          	j	80002f78 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002fe4:	00006517          	auipc	a0,0x6
    80002fe8:	29450513          	addi	a0,a0,660 # 80009278 <CONSOLE_STATUS+0x268>
    80002fec:	00002097          	auipc	ra,0x2
    80002ff0:	da4080e7          	jalr	-604(ra) # 80004d90 <_Z11printStringPKc>
    finishedB = true;
    80002ff4:	00100793          	li	a5,1
    80002ff8:	00008717          	auipc	a4,0x8
    80002ffc:	5af708a3          	sb	a5,1457(a4) # 8000b5a9 <_ZL9finishedB>
    thread_dispatch();
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	3b8080e7          	jalr	952(ra) # 800013b8 <thread_dispatch>
}
    80003008:	01813083          	ld	ra,24(sp)
    8000300c:	01013403          	ld	s0,16(sp)
    80003010:	00813483          	ld	s1,8(sp)
    80003014:	00013903          	ld	s2,0(sp)
    80003018:	02010113          	addi	sp,sp,32
    8000301c:	00008067          	ret

0000000080003020 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003020:	fe010113          	addi	sp,sp,-32
    80003024:	00113c23          	sd	ra,24(sp)
    80003028:	00813823          	sd	s0,16(sp)
    8000302c:	00913423          	sd	s1,8(sp)
    80003030:	01213023          	sd	s2,0(sp)
    80003034:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003038:	00000493          	li	s1,0
    8000303c:	0400006f          	j	8000307c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003040:	00006517          	auipc	a0,0x6
    80003044:	24850513          	addi	a0,a0,584 # 80009288 <CONSOLE_STATUS+0x278>
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	d48080e7          	jalr	-696(ra) # 80004d90 <_Z11printStringPKc>
    80003050:	00000613          	li	a2,0
    80003054:	00a00593          	li	a1,10
    80003058:	00048513          	mv	a0,s1
    8000305c:	00002097          	auipc	ra,0x2
    80003060:	ee4080e7          	jalr	-284(ra) # 80004f40 <_Z8printIntiii>
    80003064:	00006517          	auipc	a0,0x6
    80003068:	47450513          	addi	a0,a0,1140 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000306c:	00002097          	auipc	ra,0x2
    80003070:	d24080e7          	jalr	-732(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003074:	0014849b          	addiw	s1,s1,1
    80003078:	0ff4f493          	andi	s1,s1,255
    8000307c:	00200793          	li	a5,2
    80003080:	fc97f0e3          	bgeu	a5,s1,80003040 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003084:	00006517          	auipc	a0,0x6
    80003088:	20c50513          	addi	a0,a0,524 # 80009290 <CONSOLE_STATUS+0x280>
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	d04080e7          	jalr	-764(ra) # 80004d90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003094:	00700313          	li	t1,7
    thread_dispatch();
    80003098:	ffffe097          	auipc	ra,0xffffe
    8000309c:	320080e7          	jalr	800(ra) # 800013b8 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800030a0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800030a4:	00006517          	auipc	a0,0x6
    800030a8:	1fc50513          	addi	a0,a0,508 # 800092a0 <CONSOLE_STATUS+0x290>
    800030ac:	00002097          	auipc	ra,0x2
    800030b0:	ce4080e7          	jalr	-796(ra) # 80004d90 <_Z11printStringPKc>
    800030b4:	00000613          	li	a2,0
    800030b8:	00a00593          	li	a1,10
    800030bc:	0009051b          	sext.w	a0,s2
    800030c0:	00002097          	auipc	ra,0x2
    800030c4:	e80080e7          	jalr	-384(ra) # 80004f40 <_Z8printIntiii>
    800030c8:	00006517          	auipc	a0,0x6
    800030cc:	41050513          	addi	a0,a0,1040 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800030d0:	00002097          	auipc	ra,0x2
    800030d4:	cc0080e7          	jalr	-832(ra) # 80004d90 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800030d8:	00c00513          	li	a0,12
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	d30080e7          	jalr	-720(ra) # 80002e0c <_ZL9fibonaccim>
    800030e4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800030e8:	00006517          	auipc	a0,0x6
    800030ec:	1c050513          	addi	a0,a0,448 # 800092a8 <CONSOLE_STATUS+0x298>
    800030f0:	00002097          	auipc	ra,0x2
    800030f4:	ca0080e7          	jalr	-864(ra) # 80004d90 <_Z11printStringPKc>
    800030f8:	00000613          	li	a2,0
    800030fc:	00a00593          	li	a1,10
    80003100:	0009051b          	sext.w	a0,s2
    80003104:	00002097          	auipc	ra,0x2
    80003108:	e3c080e7          	jalr	-452(ra) # 80004f40 <_Z8printIntiii>
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	3cc50513          	addi	a0,a0,972 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003114:	00002097          	auipc	ra,0x2
    80003118:	c7c080e7          	jalr	-900(ra) # 80004d90 <_Z11printStringPKc>
    8000311c:	0400006f          	j	8000315c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003120:	00006517          	auipc	a0,0x6
    80003124:	16850513          	addi	a0,a0,360 # 80009288 <CONSOLE_STATUS+0x278>
    80003128:	00002097          	auipc	ra,0x2
    8000312c:	c68080e7          	jalr	-920(ra) # 80004d90 <_Z11printStringPKc>
    80003130:	00000613          	li	a2,0
    80003134:	00a00593          	li	a1,10
    80003138:	00048513          	mv	a0,s1
    8000313c:	00002097          	auipc	ra,0x2
    80003140:	e04080e7          	jalr	-508(ra) # 80004f40 <_Z8printIntiii>
    80003144:	00006517          	auipc	a0,0x6
    80003148:	39450513          	addi	a0,a0,916 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000314c:	00002097          	auipc	ra,0x2
    80003150:	c44080e7          	jalr	-956(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003154:	0014849b          	addiw	s1,s1,1
    80003158:	0ff4f493          	andi	s1,s1,255
    8000315c:	00500793          	li	a5,5
    80003160:	fc97f0e3          	bgeu	a5,s1,80003120 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003164:	00006517          	auipc	a0,0x6
    80003168:	0fc50513          	addi	a0,a0,252 # 80009260 <CONSOLE_STATUS+0x250>
    8000316c:	00002097          	auipc	ra,0x2
    80003170:	c24080e7          	jalr	-988(ra) # 80004d90 <_Z11printStringPKc>
    finishedC = true;
    80003174:	00100793          	li	a5,1
    80003178:	00008717          	auipc	a4,0x8
    8000317c:	42f70923          	sb	a5,1074(a4) # 8000b5aa <_ZL9finishedC>
    thread_dispatch();
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	238080e7          	jalr	568(ra) # 800013b8 <thread_dispatch>
}
    80003188:	01813083          	ld	ra,24(sp)
    8000318c:	01013403          	ld	s0,16(sp)
    80003190:	00813483          	ld	s1,8(sp)
    80003194:	00013903          	ld	s2,0(sp)
    80003198:	02010113          	addi	sp,sp,32
    8000319c:	00008067          	ret

00000000800031a0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800031a0:	fe010113          	addi	sp,sp,-32
    800031a4:	00113c23          	sd	ra,24(sp)
    800031a8:	00813823          	sd	s0,16(sp)
    800031ac:	00913423          	sd	s1,8(sp)
    800031b0:	01213023          	sd	s2,0(sp)
    800031b4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800031b8:	00a00493          	li	s1,10
    800031bc:	0400006f          	j	800031fc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800031c0:	00006517          	auipc	a0,0x6
    800031c4:	0f850513          	addi	a0,a0,248 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800031c8:	00002097          	auipc	ra,0x2
    800031cc:	bc8080e7          	jalr	-1080(ra) # 80004d90 <_Z11printStringPKc>
    800031d0:	00000613          	li	a2,0
    800031d4:	00a00593          	li	a1,10
    800031d8:	00048513          	mv	a0,s1
    800031dc:	00002097          	auipc	ra,0x2
    800031e0:	d64080e7          	jalr	-668(ra) # 80004f40 <_Z8printIntiii>
    800031e4:	00006517          	auipc	a0,0x6
    800031e8:	2f450513          	addi	a0,a0,756 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	ba4080e7          	jalr	-1116(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800031f4:	0014849b          	addiw	s1,s1,1
    800031f8:	0ff4f493          	andi	s1,s1,255
    800031fc:	00c00793          	li	a5,12
    80003200:	fc97f0e3          	bgeu	a5,s1,800031c0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003204:	00006517          	auipc	a0,0x6
    80003208:	0bc50513          	addi	a0,a0,188 # 800092c0 <CONSOLE_STATUS+0x2b0>
    8000320c:	00002097          	auipc	ra,0x2
    80003210:	b84080e7          	jalr	-1148(ra) # 80004d90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003214:	00500313          	li	t1,5
    thread_dispatch();
    80003218:	ffffe097          	auipc	ra,0xffffe
    8000321c:	1a0080e7          	jalr	416(ra) # 800013b8 <thread_dispatch>

    uint64 result = fibonacci(16);
    80003220:	01000513          	li	a0,16
    80003224:	00000097          	auipc	ra,0x0
    80003228:	be8080e7          	jalr	-1048(ra) # 80002e0c <_ZL9fibonaccim>
    8000322c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003230:	00006517          	auipc	a0,0x6
    80003234:	0a050513          	addi	a0,a0,160 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003238:	00002097          	auipc	ra,0x2
    8000323c:	b58080e7          	jalr	-1192(ra) # 80004d90 <_Z11printStringPKc>
    80003240:	00000613          	li	a2,0
    80003244:	00a00593          	li	a1,10
    80003248:	0009051b          	sext.w	a0,s2
    8000324c:	00002097          	auipc	ra,0x2
    80003250:	cf4080e7          	jalr	-780(ra) # 80004f40 <_Z8printIntiii>
    80003254:	00006517          	auipc	a0,0x6
    80003258:	28450513          	addi	a0,a0,644 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000325c:	00002097          	auipc	ra,0x2
    80003260:	b34080e7          	jalr	-1228(ra) # 80004d90 <_Z11printStringPKc>
    80003264:	0400006f          	j	800032a4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003268:	00006517          	auipc	a0,0x6
    8000326c:	05050513          	addi	a0,a0,80 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003270:	00002097          	auipc	ra,0x2
    80003274:	b20080e7          	jalr	-1248(ra) # 80004d90 <_Z11printStringPKc>
    80003278:	00000613          	li	a2,0
    8000327c:	00a00593          	li	a1,10
    80003280:	00048513          	mv	a0,s1
    80003284:	00002097          	auipc	ra,0x2
    80003288:	cbc080e7          	jalr	-836(ra) # 80004f40 <_Z8printIntiii>
    8000328c:	00006517          	auipc	a0,0x6
    80003290:	24c50513          	addi	a0,a0,588 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003294:	00002097          	auipc	ra,0x2
    80003298:	afc080e7          	jalr	-1284(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000329c:	0014849b          	addiw	s1,s1,1
    800032a0:	0ff4f493          	andi	s1,s1,255
    800032a4:	00f00793          	li	a5,15
    800032a8:	fc97f0e3          	bgeu	a5,s1,80003268 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800032ac:	00006517          	auipc	a0,0x6
    800032b0:	03450513          	addi	a0,a0,52 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800032b4:	00002097          	auipc	ra,0x2
    800032b8:	adc080e7          	jalr	-1316(ra) # 80004d90 <_Z11printStringPKc>
    finishedD = true;
    800032bc:	00100793          	li	a5,1
    800032c0:	00008717          	auipc	a4,0x8
    800032c4:	2ef705a3          	sb	a5,747(a4) # 8000b5ab <_ZL9finishedD>
    thread_dispatch();
    800032c8:	ffffe097          	auipc	ra,0xffffe
    800032cc:	0f0080e7          	jalr	240(ra) # 800013b8 <thread_dispatch>
}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	00013903          	ld	s2,0(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret

00000000800032e8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800032e8:	fc010113          	addi	sp,sp,-64
    800032ec:	02113c23          	sd	ra,56(sp)
    800032f0:	02813823          	sd	s0,48(sp)
    800032f4:	02913423          	sd	s1,40(sp)
    800032f8:	03213023          	sd	s2,32(sp)
    800032fc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003300:	02000513          	li	a0,32
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	c68080e7          	jalr	-920(ra) # 80001f6c <_Znwm>
    8000330c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	e4c080e7          	jalr	-436(ra) # 8000215c <_ZN6ThreadC1Ev>
    80003318:	00008797          	auipc	a5,0x8
    8000331c:	04878793          	addi	a5,a5,72 # 8000b360 <_ZTV7WorkerA+0x10>
    80003320:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003324:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003328:	00006517          	auipc	a0,0x6
    8000332c:	fc850513          	addi	a0,a0,-56 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003330:	00002097          	auipc	ra,0x2
    80003334:	a60080e7          	jalr	-1440(ra) # 80004d90 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003338:	02000513          	li	a0,32
    8000333c:	fffff097          	auipc	ra,0xfffff
    80003340:	c30080e7          	jalr	-976(ra) # 80001f6c <_Znwm>
    80003344:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	e14080e7          	jalr	-492(ra) # 8000215c <_ZN6ThreadC1Ev>
    80003350:	00008797          	auipc	a5,0x8
    80003354:	03878793          	addi	a5,a5,56 # 8000b388 <_ZTV7WorkerB+0x10>
    80003358:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000335c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003360:	00006517          	auipc	a0,0x6
    80003364:	fa850513          	addi	a0,a0,-88 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003368:	00002097          	auipc	ra,0x2
    8000336c:	a28080e7          	jalr	-1496(ra) # 80004d90 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003370:	02000513          	li	a0,32
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	bf8080e7          	jalr	-1032(ra) # 80001f6c <_Znwm>
    8000337c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	ddc080e7          	jalr	-548(ra) # 8000215c <_ZN6ThreadC1Ev>
    80003388:	00008797          	auipc	a5,0x8
    8000338c:	02878793          	addi	a5,a5,40 # 8000b3b0 <_ZTV7WorkerC+0x10>
    80003390:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003394:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003398:	00006517          	auipc	a0,0x6
    8000339c:	f8850513          	addi	a0,a0,-120 # 80009320 <CONSOLE_STATUS+0x310>
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	9f0080e7          	jalr	-1552(ra) # 80004d90 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800033a8:	02000513          	li	a0,32
    800033ac:	fffff097          	auipc	ra,0xfffff
    800033b0:	bc0080e7          	jalr	-1088(ra) # 80001f6c <_Znwm>
    800033b4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800033b8:	fffff097          	auipc	ra,0xfffff
    800033bc:	da4080e7          	jalr	-604(ra) # 8000215c <_ZN6ThreadC1Ev>
    800033c0:	00008797          	auipc	a5,0x8
    800033c4:	01878793          	addi	a5,a5,24 # 8000b3d8 <_ZTV7WorkerD+0x10>
    800033c8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800033cc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800033d0:	00006517          	auipc	a0,0x6
    800033d4:	f6850513          	addi	a0,a0,-152 # 80009338 <CONSOLE_STATUS+0x328>
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	9b8080e7          	jalr	-1608(ra) # 80004d90 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800033e0:	00000493          	li	s1,0
    800033e4:	00300793          	li	a5,3
    800033e8:	0297c663          	blt	a5,s1,80003414 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800033ec:	00349793          	slli	a5,s1,0x3
    800033f0:	fe040713          	addi	a4,s0,-32
    800033f4:	00f707b3          	add	a5,a4,a5
    800033f8:	fe07b503          	ld	a0,-32(a5)
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	da4080e7          	jalr	-604(ra) # 800021a0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003404:	0014849b          	addiw	s1,s1,1
    80003408:	fddff06f          	j	800033e4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	e00080e7          	jalr	-512(ra) # 8000220c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003414:	00008797          	auipc	a5,0x8
    80003418:	1947c783          	lbu	a5,404(a5) # 8000b5a8 <_ZL9finishedA>
    8000341c:	fe0788e3          	beqz	a5,8000340c <_Z20Threads_CPP_API_testv+0x124>
    80003420:	00008797          	auipc	a5,0x8
    80003424:	1897c783          	lbu	a5,393(a5) # 8000b5a9 <_ZL9finishedB>
    80003428:	fe0782e3          	beqz	a5,8000340c <_Z20Threads_CPP_API_testv+0x124>
    8000342c:	00008797          	auipc	a5,0x8
    80003430:	17e7c783          	lbu	a5,382(a5) # 8000b5aa <_ZL9finishedC>
    80003434:	fc078ce3          	beqz	a5,8000340c <_Z20Threads_CPP_API_testv+0x124>
    80003438:	00008797          	auipc	a5,0x8
    8000343c:	1737c783          	lbu	a5,371(a5) # 8000b5ab <_ZL9finishedD>
    80003440:	fc0786e3          	beqz	a5,8000340c <_Z20Threads_CPP_API_testv+0x124>
    80003444:	fc040493          	addi	s1,s0,-64
    80003448:	0080006f          	j	80003450 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000344c:	00848493          	addi	s1,s1,8
    80003450:	fe040793          	addi	a5,s0,-32
    80003454:	08f48663          	beq	s1,a5,800034e0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003458:	0004b503          	ld	a0,0(s1)
    8000345c:	fe0508e3          	beqz	a0,8000344c <_Z20Threads_CPP_API_testv+0x164>
    80003460:	00053783          	ld	a5,0(a0)
    80003464:	0087b783          	ld	a5,8(a5)
    80003468:	000780e7          	jalr	a5
    8000346c:	fe1ff06f          	j	8000344c <_Z20Threads_CPP_API_testv+0x164>
    80003470:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003474:	00048513          	mv	a0,s1
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	b44080e7          	jalr	-1212(ra) # 80001fbc <_ZdlPv>
    80003480:	00090513          	mv	a0,s2
    80003484:	00009097          	auipc	ra,0x9
    80003488:	234080e7          	jalr	564(ra) # 8000c6b8 <_Unwind_Resume>
    8000348c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003490:	00048513          	mv	a0,s1
    80003494:	fffff097          	auipc	ra,0xfffff
    80003498:	b28080e7          	jalr	-1240(ra) # 80001fbc <_ZdlPv>
    8000349c:	00090513          	mv	a0,s2
    800034a0:	00009097          	auipc	ra,0x9
    800034a4:	218080e7          	jalr	536(ra) # 8000c6b8 <_Unwind_Resume>
    800034a8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800034ac:	00048513          	mv	a0,s1
    800034b0:	fffff097          	auipc	ra,0xfffff
    800034b4:	b0c080e7          	jalr	-1268(ra) # 80001fbc <_ZdlPv>
    800034b8:	00090513          	mv	a0,s2
    800034bc:	00009097          	auipc	ra,0x9
    800034c0:	1fc080e7          	jalr	508(ra) # 8000c6b8 <_Unwind_Resume>
    800034c4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800034c8:	00048513          	mv	a0,s1
    800034cc:	fffff097          	auipc	ra,0xfffff
    800034d0:	af0080e7          	jalr	-1296(ra) # 80001fbc <_ZdlPv>
    800034d4:	00090513          	mv	a0,s2
    800034d8:	00009097          	auipc	ra,0x9
    800034dc:	1e0080e7          	jalr	480(ra) # 8000c6b8 <_Unwind_Resume>
}
    800034e0:	03813083          	ld	ra,56(sp)
    800034e4:	03013403          	ld	s0,48(sp)
    800034e8:	02813483          	ld	s1,40(sp)
    800034ec:	02013903          	ld	s2,32(sp)
    800034f0:	04010113          	addi	sp,sp,64
    800034f4:	00008067          	ret

00000000800034f8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800034f8:	ff010113          	addi	sp,sp,-16
    800034fc:	00113423          	sd	ra,8(sp)
    80003500:	00813023          	sd	s0,0(sp)
    80003504:	01010413          	addi	s0,sp,16
    80003508:	00008797          	auipc	a5,0x8
    8000350c:	e5878793          	addi	a5,a5,-424 # 8000b360 <_ZTV7WorkerA+0x10>
    80003510:	00f53023          	sd	a5,0(a0)
    80003514:	fffff097          	auipc	ra,0xfffff
    80003518:	b2c080e7          	jalr	-1236(ra) # 80002040 <_ZN6ThreadD1Ev>
    8000351c:	00813083          	ld	ra,8(sp)
    80003520:	00013403          	ld	s0,0(sp)
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00008067          	ret

000000008000352c <_ZN7WorkerAD0Ev>:
    8000352c:	fe010113          	addi	sp,sp,-32
    80003530:	00113c23          	sd	ra,24(sp)
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	02010413          	addi	s0,sp,32
    80003540:	00050493          	mv	s1,a0
    80003544:	00008797          	auipc	a5,0x8
    80003548:	e1c78793          	addi	a5,a5,-484 # 8000b360 <_ZTV7WorkerA+0x10>
    8000354c:	00f53023          	sd	a5,0(a0)
    80003550:	fffff097          	auipc	ra,0xfffff
    80003554:	af0080e7          	jalr	-1296(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003558:	00048513          	mv	a0,s1
    8000355c:	fffff097          	auipc	ra,0xfffff
    80003560:	a60080e7          	jalr	-1440(ra) # 80001fbc <_ZdlPv>
    80003564:	01813083          	ld	ra,24(sp)
    80003568:	01013403          	ld	s0,16(sp)
    8000356c:	00813483          	ld	s1,8(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret

0000000080003578 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003578:	ff010113          	addi	sp,sp,-16
    8000357c:	00113423          	sd	ra,8(sp)
    80003580:	00813023          	sd	s0,0(sp)
    80003584:	01010413          	addi	s0,sp,16
    80003588:	00008797          	auipc	a5,0x8
    8000358c:	e0078793          	addi	a5,a5,-512 # 8000b388 <_ZTV7WorkerB+0x10>
    80003590:	00f53023          	sd	a5,0(a0)
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	aac080e7          	jalr	-1364(ra) # 80002040 <_ZN6ThreadD1Ev>
    8000359c:	00813083          	ld	ra,8(sp)
    800035a0:	00013403          	ld	s0,0(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <_ZN7WorkerBD0Ev>:
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00113c23          	sd	ra,24(sp)
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00913423          	sd	s1,8(sp)
    800035bc:	02010413          	addi	s0,sp,32
    800035c0:	00050493          	mv	s1,a0
    800035c4:	00008797          	auipc	a5,0x8
    800035c8:	dc478793          	addi	a5,a5,-572 # 8000b388 <_ZTV7WorkerB+0x10>
    800035cc:	00f53023          	sd	a5,0(a0)
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	a70080e7          	jalr	-1424(ra) # 80002040 <_ZN6ThreadD1Ev>
    800035d8:	00048513          	mv	a0,s1
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	9e0080e7          	jalr	-1568(ra) # 80001fbc <_ZdlPv>
    800035e4:	01813083          	ld	ra,24(sp)
    800035e8:	01013403          	ld	s0,16(sp)
    800035ec:	00813483          	ld	s1,8(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret

00000000800035f8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800035f8:	ff010113          	addi	sp,sp,-16
    800035fc:	00113423          	sd	ra,8(sp)
    80003600:	00813023          	sd	s0,0(sp)
    80003604:	01010413          	addi	s0,sp,16
    80003608:	00008797          	auipc	a5,0x8
    8000360c:	da878793          	addi	a5,a5,-600 # 8000b3b0 <_ZTV7WorkerC+0x10>
    80003610:	00f53023          	sd	a5,0(a0)
    80003614:	fffff097          	auipc	ra,0xfffff
    80003618:	a2c080e7          	jalr	-1492(ra) # 80002040 <_ZN6ThreadD1Ev>
    8000361c:	00813083          	ld	ra,8(sp)
    80003620:	00013403          	ld	s0,0(sp)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret

000000008000362c <_ZN7WorkerCD0Ev>:
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00113c23          	sd	ra,24(sp)
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	02010413          	addi	s0,sp,32
    80003640:	00050493          	mv	s1,a0
    80003644:	00008797          	auipc	a5,0x8
    80003648:	d6c78793          	addi	a5,a5,-660 # 8000b3b0 <_ZTV7WorkerC+0x10>
    8000364c:	00f53023          	sd	a5,0(a0)
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	9f0080e7          	jalr	-1552(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003658:	00048513          	mv	a0,s1
    8000365c:	fffff097          	auipc	ra,0xfffff
    80003660:	960080e7          	jalr	-1696(ra) # 80001fbc <_ZdlPv>
    80003664:	01813083          	ld	ra,24(sp)
    80003668:	01013403          	ld	s0,16(sp)
    8000366c:	00813483          	ld	s1,8(sp)
    80003670:	02010113          	addi	sp,sp,32
    80003674:	00008067          	ret

0000000080003678 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003678:	ff010113          	addi	sp,sp,-16
    8000367c:	00113423          	sd	ra,8(sp)
    80003680:	00813023          	sd	s0,0(sp)
    80003684:	01010413          	addi	s0,sp,16
    80003688:	00008797          	auipc	a5,0x8
    8000368c:	d5078793          	addi	a5,a5,-688 # 8000b3d8 <_ZTV7WorkerD+0x10>
    80003690:	00f53023          	sd	a5,0(a0)
    80003694:	fffff097          	auipc	ra,0xfffff
    80003698:	9ac080e7          	jalr	-1620(ra) # 80002040 <_ZN6ThreadD1Ev>
    8000369c:	00813083          	ld	ra,8(sp)
    800036a0:	00013403          	ld	s0,0(sp)
    800036a4:	01010113          	addi	sp,sp,16
    800036a8:	00008067          	ret

00000000800036ac <_ZN7WorkerDD0Ev>:
    800036ac:	fe010113          	addi	sp,sp,-32
    800036b0:	00113c23          	sd	ra,24(sp)
    800036b4:	00813823          	sd	s0,16(sp)
    800036b8:	00913423          	sd	s1,8(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	00050493          	mv	s1,a0
    800036c4:	00008797          	auipc	a5,0x8
    800036c8:	d1478793          	addi	a5,a5,-748 # 8000b3d8 <_ZTV7WorkerD+0x10>
    800036cc:	00f53023          	sd	a5,0(a0)
    800036d0:	fffff097          	auipc	ra,0xfffff
    800036d4:	970080e7          	jalr	-1680(ra) # 80002040 <_ZN6ThreadD1Ev>
    800036d8:	00048513          	mv	a0,s1
    800036dc:	fffff097          	auipc	ra,0xfffff
    800036e0:	8e0080e7          	jalr	-1824(ra) # 80001fbc <_ZdlPv>
    800036e4:	01813083          	ld	ra,24(sp)
    800036e8:	01013403          	ld	s0,16(sp)
    800036ec:	00813483          	ld	s1,8(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret

00000000800036f8 <_ZN7WorkerA3runEv>:
    void run() override {
    800036f8:	ff010113          	addi	sp,sp,-16
    800036fc:	00113423          	sd	ra,8(sp)
    80003700:	00813023          	sd	s0,0(sp)
    80003704:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003708:	00000593          	li	a1,0
    8000370c:	fffff097          	auipc	ra,0xfffff
    80003710:	774080e7          	jalr	1908(ra) # 80002e80 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003714:	00813083          	ld	ra,8(sp)
    80003718:	00013403          	ld	s0,0(sp)
    8000371c:	01010113          	addi	sp,sp,16
    80003720:	00008067          	ret

0000000080003724 <_ZN7WorkerB3runEv>:
    void run() override {
    80003724:	ff010113          	addi	sp,sp,-16
    80003728:	00113423          	sd	ra,8(sp)
    8000372c:	00813023          	sd	s0,0(sp)
    80003730:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003734:	00000593          	li	a1,0
    80003738:	00000097          	auipc	ra,0x0
    8000373c:	814080e7          	jalr	-2028(ra) # 80002f4c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003740:	00813083          	ld	ra,8(sp)
    80003744:	00013403          	ld	s0,0(sp)
    80003748:	01010113          	addi	sp,sp,16
    8000374c:	00008067          	ret

0000000080003750 <_ZN7WorkerC3runEv>:
    void run() override {
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00113423          	sd	ra,8(sp)
    80003758:	00813023          	sd	s0,0(sp)
    8000375c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003760:	00000593          	li	a1,0
    80003764:	00000097          	auipc	ra,0x0
    80003768:	8bc080e7          	jalr	-1860(ra) # 80003020 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000376c:	00813083          	ld	ra,8(sp)
    80003770:	00013403          	ld	s0,0(sp)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret

000000008000377c <_ZN7WorkerD3runEv>:
    void run() override {
    8000377c:	ff010113          	addi	sp,sp,-16
    80003780:	00113423          	sd	ra,8(sp)
    80003784:	00813023          	sd	s0,0(sp)
    80003788:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000378c:	00000593          	li	a1,0
    80003790:	00000097          	auipc	ra,0x0
    80003794:	a10080e7          	jalr	-1520(ra) # 800031a0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003798:	00813083          	ld	ra,8(sp)
    8000379c:	00013403          	ld	s0,0(sp)
    800037a0:	01010113          	addi	sp,sp,16
    800037a4:	00008067          	ret

00000000800037a8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800037a8:	f8010113          	addi	sp,sp,-128
    800037ac:	06113c23          	sd	ra,120(sp)
    800037b0:	06813823          	sd	s0,112(sp)
    800037b4:	06913423          	sd	s1,104(sp)
    800037b8:	07213023          	sd	s2,96(sp)
    800037bc:	05313c23          	sd	s3,88(sp)
    800037c0:	05413823          	sd	s4,80(sp)
    800037c4:	05513423          	sd	s5,72(sp)
    800037c8:	05613023          	sd	s6,64(sp)
    800037cc:	03713c23          	sd	s7,56(sp)
    800037d0:	03813823          	sd	s8,48(sp)
    800037d4:	03913423          	sd	s9,40(sp)
    800037d8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800037dc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800037e0:	00006517          	auipc	a0,0x6
    800037e4:	99050513          	addi	a0,a0,-1648 # 80009170 <CONSOLE_STATUS+0x160>
    800037e8:	00001097          	auipc	ra,0x1
    800037ec:	5a8080e7          	jalr	1448(ra) # 80004d90 <_Z11printStringPKc>
    getString(input, 30);
    800037f0:	01e00593          	li	a1,30
    800037f4:	f8040493          	addi	s1,s0,-128
    800037f8:	00048513          	mv	a0,s1
    800037fc:	00001097          	auipc	ra,0x1
    80003800:	61c080e7          	jalr	1564(ra) # 80004e18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003804:	00048513          	mv	a0,s1
    80003808:	00001097          	auipc	ra,0x1
    8000380c:	6e8080e7          	jalr	1768(ra) # 80004ef0 <_Z11stringToIntPKc>
    80003810:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003814:	00006517          	auipc	a0,0x6
    80003818:	97c50513          	addi	a0,a0,-1668 # 80009190 <CONSOLE_STATUS+0x180>
    8000381c:	00001097          	auipc	ra,0x1
    80003820:	574080e7          	jalr	1396(ra) # 80004d90 <_Z11printStringPKc>
    getString(input, 30);
    80003824:	01e00593          	li	a1,30
    80003828:	00048513          	mv	a0,s1
    8000382c:	00001097          	auipc	ra,0x1
    80003830:	5ec080e7          	jalr	1516(ra) # 80004e18 <_Z9getStringPci>
    n = stringToInt(input);
    80003834:	00048513          	mv	a0,s1
    80003838:	00001097          	auipc	ra,0x1
    8000383c:	6b8080e7          	jalr	1720(ra) # 80004ef0 <_Z11stringToIntPKc>
    80003840:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003844:	00006517          	auipc	a0,0x6
    80003848:	96c50513          	addi	a0,a0,-1684 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000384c:	00001097          	auipc	ra,0x1
    80003850:	544080e7          	jalr	1348(ra) # 80004d90 <_Z11printStringPKc>
    printInt(threadNum);
    80003854:	00000613          	li	a2,0
    80003858:	00a00593          	li	a1,10
    8000385c:	00098513          	mv	a0,s3
    80003860:	00001097          	auipc	ra,0x1
    80003864:	6e0080e7          	jalr	1760(ra) # 80004f40 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	96050513          	addi	a0,a0,-1696 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003870:	00001097          	auipc	ra,0x1
    80003874:	520080e7          	jalr	1312(ra) # 80004d90 <_Z11printStringPKc>
    printInt(n);
    80003878:	00000613          	li	a2,0
    8000387c:	00a00593          	li	a1,10
    80003880:	00048513          	mv	a0,s1
    80003884:	00001097          	auipc	ra,0x1
    80003888:	6bc080e7          	jalr	1724(ra) # 80004f40 <_Z8printIntiii>
    printString(".\n");
    8000388c:	00006517          	auipc	a0,0x6
    80003890:	95450513          	addi	a0,a0,-1708 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003894:	00001097          	auipc	ra,0x1
    80003898:	4fc080e7          	jalr	1276(ra) # 80004d90 <_Z11printStringPKc>
    if (threadNum > n) {
    8000389c:	0334c463          	blt	s1,s3,800038c4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800038a0:	03305c63          	blez	s3,800038d8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800038a4:	03800513          	li	a0,56
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	6c4080e7          	jalr	1732(ra) # 80001f6c <_Znwm>
    800038b0:	00050a93          	mv	s5,a0
    800038b4:	00048593          	mv	a1,s1
    800038b8:	00001097          	auipc	ra,0x1
    800038bc:	7a8080e7          	jalr	1960(ra) # 80005060 <_ZN9BufferCPPC1Ei>
    800038c0:	0300006f          	j	800038f0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800038c4:	00006517          	auipc	a0,0x6
    800038c8:	92450513          	addi	a0,a0,-1756 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800038cc:	00001097          	auipc	ra,0x1
    800038d0:	4c4080e7          	jalr	1220(ra) # 80004d90 <_Z11printStringPKc>
        return;
    800038d4:	0140006f          	j	800038e8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800038d8:	00006517          	auipc	a0,0x6
    800038dc:	95050513          	addi	a0,a0,-1712 # 80009228 <CONSOLE_STATUS+0x218>
    800038e0:	00001097          	auipc	ra,0x1
    800038e4:	4b0080e7          	jalr	1200(ra) # 80004d90 <_Z11printStringPKc>
        return;
    800038e8:	000c0113          	mv	sp,s8
    800038ec:	2140006f          	j	80003b00 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800038f0:	01000513          	li	a0,16
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	678080e7          	jalr	1656(ra) # 80001f6c <_Znwm>
    800038fc:	00050913          	mv	s2,a0
    80003900:	00000593          	li	a1,0
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	94c080e7          	jalr	-1716(ra) # 80002250 <_ZN9SemaphoreC1Ej>
    8000390c:	00008797          	auipc	a5,0x8
    80003910:	cb27b623          	sd	s2,-852(a5) # 8000b5b8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003914:	00399793          	slli	a5,s3,0x3
    80003918:	00f78793          	addi	a5,a5,15
    8000391c:	ff07f793          	andi	a5,a5,-16
    80003920:	40f10133          	sub	sp,sp,a5
    80003924:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003928:	0019871b          	addiw	a4,s3,1
    8000392c:	00171793          	slli	a5,a4,0x1
    80003930:	00e787b3          	add	a5,a5,a4
    80003934:	00379793          	slli	a5,a5,0x3
    80003938:	00f78793          	addi	a5,a5,15
    8000393c:	ff07f793          	andi	a5,a5,-16
    80003940:	40f10133          	sub	sp,sp,a5
    80003944:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003948:	00199493          	slli	s1,s3,0x1
    8000394c:	013484b3          	add	s1,s1,s3
    80003950:	00349493          	slli	s1,s1,0x3
    80003954:	009b04b3          	add	s1,s6,s1
    80003958:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000395c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003960:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003964:	02800513          	li	a0,40
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	604080e7          	jalr	1540(ra) # 80001f6c <_Znwm>
    80003970:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	7e8080e7          	jalr	2024(ra) # 8000215c <_ZN6ThreadC1Ev>
    8000397c:	00008797          	auipc	a5,0x8
    80003980:	ad478793          	addi	a5,a5,-1324 # 8000b450 <_ZTV8Consumer+0x10>
    80003984:	00fbb023          	sd	a5,0(s7)
    80003988:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000398c:	000b8513          	mv	a0,s7
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	810080e7          	jalr	-2032(ra) # 800021a0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003998:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000399c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800039a0:	00008797          	auipc	a5,0x8
    800039a4:	c187b783          	ld	a5,-1000(a5) # 8000b5b8 <_ZL10waitForAll>
    800039a8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039ac:	02800513          	li	a0,40
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	5bc080e7          	jalr	1468(ra) # 80001f6c <_Znwm>
    800039b8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	7a0080e7          	jalr	1952(ra) # 8000215c <_ZN6ThreadC1Ev>
    800039c4:	00008797          	auipc	a5,0x8
    800039c8:	a3c78793          	addi	a5,a5,-1476 # 8000b400 <_ZTV16ProducerKeyborad+0x10>
    800039cc:	00f4b023          	sd	a5,0(s1)
    800039d0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039d4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800039d8:	00048513          	mv	a0,s1
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	7c4080e7          	jalr	1988(ra) # 800021a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800039e4:	00100913          	li	s2,1
    800039e8:	0300006f          	j	80003a18 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800039ec:	00008797          	auipc	a5,0x8
    800039f0:	a3c78793          	addi	a5,a5,-1476 # 8000b428 <_ZTV8Producer+0x10>
    800039f4:	00fcb023          	sd	a5,0(s9)
    800039f8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800039fc:	00391793          	slli	a5,s2,0x3
    80003a00:	00fa07b3          	add	a5,s4,a5
    80003a04:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003a08:	000c8513          	mv	a0,s9
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	794080e7          	jalr	1940(ra) # 800021a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003a14:	0019091b          	addiw	s2,s2,1
    80003a18:	05395263          	bge	s2,s3,80003a5c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003a1c:	00191493          	slli	s1,s2,0x1
    80003a20:	012484b3          	add	s1,s1,s2
    80003a24:	00349493          	slli	s1,s1,0x3
    80003a28:	009b04b3          	add	s1,s6,s1
    80003a2c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003a30:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	b847b783          	ld	a5,-1148(a5) # 8000b5b8 <_ZL10waitForAll>
    80003a3c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003a40:	02800513          	li	a0,40
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	528080e7          	jalr	1320(ra) # 80001f6c <_Znwm>
    80003a4c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	70c080e7          	jalr	1804(ra) # 8000215c <_ZN6ThreadC1Ev>
    80003a58:	f95ff06f          	j	800039ec <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	7b0080e7          	jalr	1968(ra) # 8000220c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003a64:	00000493          	li	s1,0
    80003a68:	0099ce63          	blt	s3,s1,80003a84 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003a6c:	00008517          	auipc	a0,0x8
    80003a70:	b4c53503          	ld	a0,-1204(a0) # 8000b5b8 <_ZL10waitForAll>
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	814080e7          	jalr	-2028(ra) # 80002288 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003a7c:	0014849b          	addiw	s1,s1,1
    80003a80:	fe9ff06f          	j	80003a68 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003a84:	00008517          	auipc	a0,0x8
    80003a88:	b3453503          	ld	a0,-1228(a0) # 8000b5b8 <_ZL10waitForAll>
    80003a8c:	00050863          	beqz	a0,80003a9c <_Z20testConsumerProducerv+0x2f4>
    80003a90:	00053783          	ld	a5,0(a0)
    80003a94:	0087b783          	ld	a5,8(a5)
    80003a98:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003a9c:	00000493          	li	s1,0
    80003aa0:	0080006f          	j	80003aa8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003aa4:	0014849b          	addiw	s1,s1,1
    80003aa8:	0334d263          	bge	s1,s3,80003acc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003aac:	00349793          	slli	a5,s1,0x3
    80003ab0:	00fa07b3          	add	a5,s4,a5
    80003ab4:	0007b503          	ld	a0,0(a5)
    80003ab8:	fe0506e3          	beqz	a0,80003aa4 <_Z20testConsumerProducerv+0x2fc>
    80003abc:	00053783          	ld	a5,0(a0)
    80003ac0:	0087b783          	ld	a5,8(a5)
    80003ac4:	000780e7          	jalr	a5
    80003ac8:	fddff06f          	j	80003aa4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003acc:	000b8a63          	beqz	s7,80003ae0 <_Z20testConsumerProducerv+0x338>
    80003ad0:	000bb783          	ld	a5,0(s7)
    80003ad4:	0087b783          	ld	a5,8(a5)
    80003ad8:	000b8513          	mv	a0,s7
    80003adc:	000780e7          	jalr	a5
    delete buffer;
    80003ae0:	000a8e63          	beqz	s5,80003afc <_Z20testConsumerProducerv+0x354>
    80003ae4:	000a8513          	mv	a0,s5
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	870080e7          	jalr	-1936(ra) # 80005358 <_ZN9BufferCPPD1Ev>
    80003af0:	000a8513          	mv	a0,s5
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	4c8080e7          	jalr	1224(ra) # 80001fbc <_ZdlPv>
    80003afc:	000c0113          	mv	sp,s8
}
    80003b00:	f8040113          	addi	sp,s0,-128
    80003b04:	07813083          	ld	ra,120(sp)
    80003b08:	07013403          	ld	s0,112(sp)
    80003b0c:	06813483          	ld	s1,104(sp)
    80003b10:	06013903          	ld	s2,96(sp)
    80003b14:	05813983          	ld	s3,88(sp)
    80003b18:	05013a03          	ld	s4,80(sp)
    80003b1c:	04813a83          	ld	s5,72(sp)
    80003b20:	04013b03          	ld	s6,64(sp)
    80003b24:	03813b83          	ld	s7,56(sp)
    80003b28:	03013c03          	ld	s8,48(sp)
    80003b2c:	02813c83          	ld	s9,40(sp)
    80003b30:	08010113          	addi	sp,sp,128
    80003b34:	00008067          	ret
    80003b38:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003b3c:	000a8513          	mv	a0,s5
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	47c080e7          	jalr	1148(ra) # 80001fbc <_ZdlPv>
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	00009097          	auipc	ra,0x9
    80003b50:	b6c080e7          	jalr	-1172(ra) # 8000c6b8 <_Unwind_Resume>
    80003b54:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003b58:	00090513          	mv	a0,s2
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	460080e7          	jalr	1120(ra) # 80001fbc <_ZdlPv>
    80003b64:	00048513          	mv	a0,s1
    80003b68:	00009097          	auipc	ra,0x9
    80003b6c:	b50080e7          	jalr	-1200(ra) # 8000c6b8 <_Unwind_Resume>
    80003b70:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003b74:	000b8513          	mv	a0,s7
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	444080e7          	jalr	1092(ra) # 80001fbc <_ZdlPv>
    80003b80:	00048513          	mv	a0,s1
    80003b84:	00009097          	auipc	ra,0x9
    80003b88:	b34080e7          	jalr	-1228(ra) # 8000c6b8 <_Unwind_Resume>
    80003b8c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003b90:	00048513          	mv	a0,s1
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	428080e7          	jalr	1064(ra) # 80001fbc <_ZdlPv>
    80003b9c:	00090513          	mv	a0,s2
    80003ba0:	00009097          	auipc	ra,0x9
    80003ba4:	b18080e7          	jalr	-1256(ra) # 8000c6b8 <_Unwind_Resume>
    80003ba8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003bac:	000c8513          	mv	a0,s9
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	40c080e7          	jalr	1036(ra) # 80001fbc <_ZdlPv>
    80003bb8:	00048513          	mv	a0,s1
    80003bbc:	00009097          	auipc	ra,0x9
    80003bc0:	afc080e7          	jalr	-1284(ra) # 8000c6b8 <_Unwind_Resume>

0000000080003bc4 <_ZN8Consumer3runEv>:
    void run() override {
    80003bc4:	fd010113          	addi	sp,sp,-48
    80003bc8:	02113423          	sd	ra,40(sp)
    80003bcc:	02813023          	sd	s0,32(sp)
    80003bd0:	00913c23          	sd	s1,24(sp)
    80003bd4:	01213823          	sd	s2,16(sp)
    80003bd8:	01313423          	sd	s3,8(sp)
    80003bdc:	03010413          	addi	s0,sp,48
    80003be0:	00050913          	mv	s2,a0
        int i = 0;
    80003be4:	00000993          	li	s3,0
    80003be8:	0100006f          	j	80003bf8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003bec:	00a00513          	li	a0,10
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	718080e7          	jalr	1816(ra) # 80002308 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003bf8:	00008797          	auipc	a5,0x8
    80003bfc:	9b87a783          	lw	a5,-1608(a5) # 8000b5b0 <_ZL9threadEnd>
    80003c00:	04079a63          	bnez	a5,80003c54 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003c04:	02093783          	ld	a5,32(s2)
    80003c08:	0087b503          	ld	a0,8(a5)
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	638080e7          	jalr	1592(ra) # 80005244 <_ZN9BufferCPP3getEv>
            i++;
    80003c14:	0019849b          	addiw	s1,s3,1
    80003c18:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003c1c:	0ff57513          	andi	a0,a0,255
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	6e8080e7          	jalr	1768(ra) # 80002308 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003c28:	05000793          	li	a5,80
    80003c2c:	02f4e4bb          	remw	s1,s1,a5
    80003c30:	fc0494e3          	bnez	s1,80003bf8 <_ZN8Consumer3runEv+0x34>
    80003c34:	fb9ff06f          	j	80003bec <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003c38:	02093783          	ld	a5,32(s2)
    80003c3c:	0087b503          	ld	a0,8(a5)
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	604080e7          	jalr	1540(ra) # 80005244 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003c48:	0ff57513          	andi	a0,a0,255
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	6bc080e7          	jalr	1724(ra) # 80002308 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003c54:	02093783          	ld	a5,32(s2)
    80003c58:	0087b503          	ld	a0,8(a5)
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	674080e7          	jalr	1652(ra) # 800052d0 <_ZN9BufferCPP6getCntEv>
    80003c64:	fca04ae3          	bgtz	a0,80003c38 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003c68:	02093783          	ld	a5,32(s2)
    80003c6c:	0107b503          	ld	a0,16(a5)
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	644080e7          	jalr	1604(ra) # 800022b4 <_ZN9Semaphore6signalEv>
    }
    80003c78:	02813083          	ld	ra,40(sp)
    80003c7c:	02013403          	ld	s0,32(sp)
    80003c80:	01813483          	ld	s1,24(sp)
    80003c84:	01013903          	ld	s2,16(sp)
    80003c88:	00813983          	ld	s3,8(sp)
    80003c8c:	03010113          	addi	sp,sp,48
    80003c90:	00008067          	ret

0000000080003c94 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00113423          	sd	ra,8(sp)
    80003c9c:	00813023          	sd	s0,0(sp)
    80003ca0:	01010413          	addi	s0,sp,16
    80003ca4:	00007797          	auipc	a5,0x7
    80003ca8:	7ac78793          	addi	a5,a5,1964 # 8000b450 <_ZTV8Consumer+0x10>
    80003cac:	00f53023          	sd	a5,0(a0)
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	390080e7          	jalr	912(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003cb8:	00813083          	ld	ra,8(sp)
    80003cbc:	00013403          	ld	s0,0(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <_ZN8ConsumerD0Ev>:
    80003cc8:	fe010113          	addi	sp,sp,-32
    80003ccc:	00113c23          	sd	ra,24(sp)
    80003cd0:	00813823          	sd	s0,16(sp)
    80003cd4:	00913423          	sd	s1,8(sp)
    80003cd8:	02010413          	addi	s0,sp,32
    80003cdc:	00050493          	mv	s1,a0
    80003ce0:	00007797          	auipc	a5,0x7
    80003ce4:	77078793          	addi	a5,a5,1904 # 8000b450 <_ZTV8Consumer+0x10>
    80003ce8:	00f53023          	sd	a5,0(a0)
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	354080e7          	jalr	852(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003cf4:	00048513          	mv	a0,s1
    80003cf8:	ffffe097          	auipc	ra,0xffffe
    80003cfc:	2c4080e7          	jalr	708(ra) # 80001fbc <_ZdlPv>
    80003d00:	01813083          	ld	ra,24(sp)
    80003d04:	01013403          	ld	s0,16(sp)
    80003d08:	00813483          	ld	s1,8(sp)
    80003d0c:	02010113          	addi	sp,sp,32
    80003d10:	00008067          	ret

0000000080003d14 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00113423          	sd	ra,8(sp)
    80003d1c:	00813023          	sd	s0,0(sp)
    80003d20:	01010413          	addi	s0,sp,16
    80003d24:	00007797          	auipc	a5,0x7
    80003d28:	6dc78793          	addi	a5,a5,1756 # 8000b400 <_ZTV16ProducerKeyborad+0x10>
    80003d2c:	00f53023          	sd	a5,0(a0)
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	310080e7          	jalr	784(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003d38:	00813083          	ld	ra,8(sp)
    80003d3c:	00013403          	ld	s0,0(sp)
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret

0000000080003d48 <_ZN16ProducerKeyboradD0Ev>:
    80003d48:	fe010113          	addi	sp,sp,-32
    80003d4c:	00113c23          	sd	ra,24(sp)
    80003d50:	00813823          	sd	s0,16(sp)
    80003d54:	00913423          	sd	s1,8(sp)
    80003d58:	02010413          	addi	s0,sp,32
    80003d5c:	00050493          	mv	s1,a0
    80003d60:	00007797          	auipc	a5,0x7
    80003d64:	6a078793          	addi	a5,a5,1696 # 8000b400 <_ZTV16ProducerKeyborad+0x10>
    80003d68:	00f53023          	sd	a5,0(a0)
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	2d4080e7          	jalr	724(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003d74:	00048513          	mv	a0,s1
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	244080e7          	jalr	580(ra) # 80001fbc <_ZdlPv>
    80003d80:	01813083          	ld	ra,24(sp)
    80003d84:	01013403          	ld	s0,16(sp)
    80003d88:	00813483          	ld	s1,8(sp)
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret

0000000080003d94 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00113423          	sd	ra,8(sp)
    80003d9c:	00813023          	sd	s0,0(sp)
    80003da0:	01010413          	addi	s0,sp,16
    80003da4:	00007797          	auipc	a5,0x7
    80003da8:	68478793          	addi	a5,a5,1668 # 8000b428 <_ZTV8Producer+0x10>
    80003dac:	00f53023          	sd	a5,0(a0)
    80003db0:	ffffe097          	auipc	ra,0xffffe
    80003db4:	290080e7          	jalr	656(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003db8:	00813083          	ld	ra,8(sp)
    80003dbc:	00013403          	ld	s0,0(sp)
    80003dc0:	01010113          	addi	sp,sp,16
    80003dc4:	00008067          	ret

0000000080003dc8 <_ZN8ProducerD0Ev>:
    80003dc8:	fe010113          	addi	sp,sp,-32
    80003dcc:	00113c23          	sd	ra,24(sp)
    80003dd0:	00813823          	sd	s0,16(sp)
    80003dd4:	00913423          	sd	s1,8(sp)
    80003dd8:	02010413          	addi	s0,sp,32
    80003ddc:	00050493          	mv	s1,a0
    80003de0:	00007797          	auipc	a5,0x7
    80003de4:	64878793          	addi	a5,a5,1608 # 8000b428 <_ZTV8Producer+0x10>
    80003de8:	00f53023          	sd	a5,0(a0)
    80003dec:	ffffe097          	auipc	ra,0xffffe
    80003df0:	254080e7          	jalr	596(ra) # 80002040 <_ZN6ThreadD1Ev>
    80003df4:	00048513          	mv	a0,s1
    80003df8:	ffffe097          	auipc	ra,0xffffe
    80003dfc:	1c4080e7          	jalr	452(ra) # 80001fbc <_ZdlPv>
    80003e00:	01813083          	ld	ra,24(sp)
    80003e04:	01013403          	ld	s0,16(sp)
    80003e08:	00813483          	ld	s1,8(sp)
    80003e0c:	02010113          	addi	sp,sp,32
    80003e10:	00008067          	ret

0000000080003e14 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003e14:	fe010113          	addi	sp,sp,-32
    80003e18:	00113c23          	sd	ra,24(sp)
    80003e1c:	00813823          	sd	s0,16(sp)
    80003e20:	00913423          	sd	s1,8(sp)
    80003e24:	02010413          	addi	s0,sp,32
    80003e28:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003e2c:	ffffd097          	auipc	ra,0xffffd
    80003e30:	700080e7          	jalr	1792(ra) # 8000152c <getc>
    80003e34:	0005059b          	sext.w	a1,a0
    80003e38:	01b00793          	li	a5,27
    80003e3c:	00f58c63          	beq	a1,a5,80003e54 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003e40:	0204b783          	ld	a5,32(s1)
    80003e44:	0087b503          	ld	a0,8(a5)
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	36c080e7          	jalr	876(ra) # 800051b4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003e50:	fddff06f          	j	80003e2c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003e54:	00100793          	li	a5,1
    80003e58:	00007717          	auipc	a4,0x7
    80003e5c:	74f72c23          	sw	a5,1880(a4) # 8000b5b0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003e60:	0204b783          	ld	a5,32(s1)
    80003e64:	02100593          	li	a1,33
    80003e68:	0087b503          	ld	a0,8(a5)
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	348080e7          	jalr	840(ra) # 800051b4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003e74:	0204b783          	ld	a5,32(s1)
    80003e78:	0107b503          	ld	a0,16(a5)
    80003e7c:	ffffe097          	auipc	ra,0xffffe
    80003e80:	438080e7          	jalr	1080(ra) # 800022b4 <_ZN9Semaphore6signalEv>
    }
    80003e84:	01813083          	ld	ra,24(sp)
    80003e88:	01013403          	ld	s0,16(sp)
    80003e8c:	00813483          	ld	s1,8(sp)
    80003e90:	02010113          	addi	sp,sp,32
    80003e94:	00008067          	ret

0000000080003e98 <_ZN8Producer3runEv>:
    void run() override {
    80003e98:	fe010113          	addi	sp,sp,-32
    80003e9c:	00113c23          	sd	ra,24(sp)
    80003ea0:	00813823          	sd	s0,16(sp)
    80003ea4:	00913423          	sd	s1,8(sp)
    80003ea8:	01213023          	sd	s2,0(sp)
    80003eac:	02010413          	addi	s0,sp,32
    80003eb0:	00050493          	mv	s1,a0
        int i = 0;
    80003eb4:	00000913          	li	s2,0
        while (!threadEnd) {
    80003eb8:	00007797          	auipc	a5,0x7
    80003ebc:	6f87a783          	lw	a5,1784(a5) # 8000b5b0 <_ZL9threadEnd>
    80003ec0:	04079263          	bnez	a5,80003f04 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003ec4:	0204b783          	ld	a5,32(s1)
    80003ec8:	0007a583          	lw	a1,0(a5)
    80003ecc:	0305859b          	addiw	a1,a1,48
    80003ed0:	0087b503          	ld	a0,8(a5)
    80003ed4:	00001097          	auipc	ra,0x1
    80003ed8:	2e0080e7          	jalr	736(ra) # 800051b4 <_ZN9BufferCPP3putEi>
            i++;
    80003edc:	0019071b          	addiw	a4,s2,1
    80003ee0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003ee4:	0204b783          	ld	a5,32(s1)
    80003ee8:	0007a783          	lw	a5,0(a5)
    80003eec:	00e787bb          	addw	a5,a5,a4
    80003ef0:	00500513          	li	a0,5
    80003ef4:	02a7e53b          	remw	a0,a5,a0
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	33c080e7          	jalr	828(ra) # 80002234 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003f00:	fb9ff06f          	j	80003eb8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003f04:	0204b783          	ld	a5,32(s1)
    80003f08:	0107b503          	ld	a0,16(a5)
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	3a8080e7          	jalr	936(ra) # 800022b4 <_ZN9Semaphore6signalEv>
    }
    80003f14:	01813083          	ld	ra,24(sp)
    80003f18:	01013403          	ld	s0,16(sp)
    80003f1c:	00813483          	ld	s1,8(sp)
    80003f20:	00013903          	ld	s2,0(sp)
    80003f24:	02010113          	addi	sp,sp,32
    80003f28:	00008067          	ret

0000000080003f2c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003f2c:	fe010113          	addi	sp,sp,-32
    80003f30:	00113c23          	sd	ra,24(sp)
    80003f34:	00813823          	sd	s0,16(sp)
    80003f38:	00913423          	sd	s1,8(sp)
    80003f3c:	01213023          	sd	s2,0(sp)
    80003f40:	02010413          	addi	s0,sp,32
    80003f44:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003f48:	00100793          	li	a5,1
    80003f4c:	02a7f863          	bgeu	a5,a0,80003f7c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003f50:	00a00793          	li	a5,10
    80003f54:	02f577b3          	remu	a5,a0,a5
    80003f58:	02078e63          	beqz	a5,80003f94 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003f5c:	fff48513          	addi	a0,s1,-1
    80003f60:	00000097          	auipc	ra,0x0
    80003f64:	fcc080e7          	jalr	-52(ra) # 80003f2c <_ZL9fibonaccim>
    80003f68:	00050913          	mv	s2,a0
    80003f6c:	ffe48513          	addi	a0,s1,-2
    80003f70:	00000097          	auipc	ra,0x0
    80003f74:	fbc080e7          	jalr	-68(ra) # 80003f2c <_ZL9fibonaccim>
    80003f78:	00a90533          	add	a0,s2,a0
}
    80003f7c:	01813083          	ld	ra,24(sp)
    80003f80:	01013403          	ld	s0,16(sp)
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	00013903          	ld	s2,0(sp)
    80003f8c:	02010113          	addi	sp,sp,32
    80003f90:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003f94:	ffffd097          	auipc	ra,0xffffd
    80003f98:	424080e7          	jalr	1060(ra) # 800013b8 <thread_dispatch>
    80003f9c:	fc1ff06f          	j	80003f5c <_ZL9fibonaccim+0x30>

0000000080003fa0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003fa0:	fe010113          	addi	sp,sp,-32
    80003fa4:	00113c23          	sd	ra,24(sp)
    80003fa8:	00813823          	sd	s0,16(sp)
    80003fac:	00913423          	sd	s1,8(sp)
    80003fb0:	01213023          	sd	s2,0(sp)
    80003fb4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003fb8:	00a00493          	li	s1,10
    80003fbc:	0400006f          	j	80003ffc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003fc0:	00005517          	auipc	a0,0x5
    80003fc4:	2f850513          	addi	a0,a0,760 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003fc8:	00001097          	auipc	ra,0x1
    80003fcc:	dc8080e7          	jalr	-568(ra) # 80004d90 <_Z11printStringPKc>
    80003fd0:	00000613          	li	a2,0
    80003fd4:	00a00593          	li	a1,10
    80003fd8:	00048513          	mv	a0,s1
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	f64080e7          	jalr	-156(ra) # 80004f40 <_Z8printIntiii>
    80003fe4:	00005517          	auipc	a0,0x5
    80003fe8:	4f450513          	addi	a0,a0,1268 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003fec:	00001097          	auipc	ra,0x1
    80003ff0:	da4080e7          	jalr	-604(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ff4:	0014849b          	addiw	s1,s1,1
    80003ff8:	0ff4f493          	andi	s1,s1,255
    80003ffc:	00c00793          	li	a5,12
    80004000:	fc97f0e3          	bgeu	a5,s1,80003fc0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004004:	00005517          	auipc	a0,0x5
    80004008:	2bc50513          	addi	a0,a0,700 # 800092c0 <CONSOLE_STATUS+0x2b0>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	d84080e7          	jalr	-636(ra) # 80004d90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004014:	00500313          	li	t1,5
    thread_dispatch();
    80004018:	ffffd097          	auipc	ra,0xffffd
    8000401c:	3a0080e7          	jalr	928(ra) # 800013b8 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004020:	01000513          	li	a0,16
    80004024:	00000097          	auipc	ra,0x0
    80004028:	f08080e7          	jalr	-248(ra) # 80003f2c <_ZL9fibonaccim>
    8000402c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004030:	00005517          	auipc	a0,0x5
    80004034:	2a050513          	addi	a0,a0,672 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	d58080e7          	jalr	-680(ra) # 80004d90 <_Z11printStringPKc>
    80004040:	00000613          	li	a2,0
    80004044:	00a00593          	li	a1,10
    80004048:	0009051b          	sext.w	a0,s2
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	ef4080e7          	jalr	-268(ra) # 80004f40 <_Z8printIntiii>
    80004054:	00005517          	auipc	a0,0x5
    80004058:	48450513          	addi	a0,a0,1156 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000405c:	00001097          	auipc	ra,0x1
    80004060:	d34080e7          	jalr	-716(ra) # 80004d90 <_Z11printStringPKc>
    80004064:	0400006f          	j	800040a4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004068:	00005517          	auipc	a0,0x5
    8000406c:	25050513          	addi	a0,a0,592 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004070:	00001097          	auipc	ra,0x1
    80004074:	d20080e7          	jalr	-736(ra) # 80004d90 <_Z11printStringPKc>
    80004078:	00000613          	li	a2,0
    8000407c:	00a00593          	li	a1,10
    80004080:	00048513          	mv	a0,s1
    80004084:	00001097          	auipc	ra,0x1
    80004088:	ebc080e7          	jalr	-324(ra) # 80004f40 <_Z8printIntiii>
    8000408c:	00005517          	auipc	a0,0x5
    80004090:	44c50513          	addi	a0,a0,1100 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004094:	00001097          	auipc	ra,0x1
    80004098:	cfc080e7          	jalr	-772(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000409c:	0014849b          	addiw	s1,s1,1
    800040a0:	0ff4f493          	andi	s1,s1,255
    800040a4:	00f00793          	li	a5,15
    800040a8:	fc97f0e3          	bgeu	a5,s1,80004068 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800040ac:	00005517          	auipc	a0,0x5
    800040b0:	23450513          	addi	a0,a0,564 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	cdc080e7          	jalr	-804(ra) # 80004d90 <_Z11printStringPKc>
    finishedD = true;
    800040bc:	00100793          	li	a5,1
    800040c0:	00007717          	auipc	a4,0x7
    800040c4:	50f70023          	sb	a5,1280(a4) # 8000b5c0 <_ZL9finishedD>
    thread_dispatch();
    800040c8:	ffffd097          	auipc	ra,0xffffd
    800040cc:	2f0080e7          	jalr	752(ra) # 800013b8 <thread_dispatch>
}
    800040d0:	01813083          	ld	ra,24(sp)
    800040d4:	01013403          	ld	s0,16(sp)
    800040d8:	00813483          	ld	s1,8(sp)
    800040dc:	00013903          	ld	s2,0(sp)
    800040e0:	02010113          	addi	sp,sp,32
    800040e4:	00008067          	ret

00000000800040e8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800040e8:	fe010113          	addi	sp,sp,-32
    800040ec:	00113c23          	sd	ra,24(sp)
    800040f0:	00813823          	sd	s0,16(sp)
    800040f4:	00913423          	sd	s1,8(sp)
    800040f8:	01213023          	sd	s2,0(sp)
    800040fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004100:	00000493          	li	s1,0
    80004104:	0400006f          	j	80004144 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004108:	00005517          	auipc	a0,0x5
    8000410c:	18050513          	addi	a0,a0,384 # 80009288 <CONSOLE_STATUS+0x278>
    80004110:	00001097          	auipc	ra,0x1
    80004114:	c80080e7          	jalr	-896(ra) # 80004d90 <_Z11printStringPKc>
    80004118:	00000613          	li	a2,0
    8000411c:	00a00593          	li	a1,10
    80004120:	00048513          	mv	a0,s1
    80004124:	00001097          	auipc	ra,0x1
    80004128:	e1c080e7          	jalr	-484(ra) # 80004f40 <_Z8printIntiii>
    8000412c:	00005517          	auipc	a0,0x5
    80004130:	3ac50513          	addi	a0,a0,940 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004134:	00001097          	auipc	ra,0x1
    80004138:	c5c080e7          	jalr	-932(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000413c:	0014849b          	addiw	s1,s1,1
    80004140:	0ff4f493          	andi	s1,s1,255
    80004144:	00200793          	li	a5,2
    80004148:	fc97f0e3          	bgeu	a5,s1,80004108 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000414c:	00005517          	auipc	a0,0x5
    80004150:	14450513          	addi	a0,a0,324 # 80009290 <CONSOLE_STATUS+0x280>
    80004154:	00001097          	auipc	ra,0x1
    80004158:	c3c080e7          	jalr	-964(ra) # 80004d90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000415c:	00700313          	li	t1,7
    thread_dispatch();
    80004160:	ffffd097          	auipc	ra,0xffffd
    80004164:	258080e7          	jalr	600(ra) # 800013b8 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004168:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000416c:	00005517          	auipc	a0,0x5
    80004170:	13450513          	addi	a0,a0,308 # 800092a0 <CONSOLE_STATUS+0x290>
    80004174:	00001097          	auipc	ra,0x1
    80004178:	c1c080e7          	jalr	-996(ra) # 80004d90 <_Z11printStringPKc>
    8000417c:	00000613          	li	a2,0
    80004180:	00a00593          	li	a1,10
    80004184:	0009051b          	sext.w	a0,s2
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	db8080e7          	jalr	-584(ra) # 80004f40 <_Z8printIntiii>
    80004190:	00005517          	auipc	a0,0x5
    80004194:	34850513          	addi	a0,a0,840 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004198:	00001097          	auipc	ra,0x1
    8000419c:	bf8080e7          	jalr	-1032(ra) # 80004d90 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800041a0:	00c00513          	li	a0,12
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	d88080e7          	jalr	-632(ra) # 80003f2c <_ZL9fibonaccim>
    800041ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800041b0:	00005517          	auipc	a0,0x5
    800041b4:	0f850513          	addi	a0,a0,248 # 800092a8 <CONSOLE_STATUS+0x298>
    800041b8:	00001097          	auipc	ra,0x1
    800041bc:	bd8080e7          	jalr	-1064(ra) # 80004d90 <_Z11printStringPKc>
    800041c0:	00000613          	li	a2,0
    800041c4:	00a00593          	li	a1,10
    800041c8:	0009051b          	sext.w	a0,s2
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	d74080e7          	jalr	-652(ra) # 80004f40 <_Z8printIntiii>
    800041d4:	00005517          	auipc	a0,0x5
    800041d8:	30450513          	addi	a0,a0,772 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	bb4080e7          	jalr	-1100(ra) # 80004d90 <_Z11printStringPKc>
    800041e4:	0400006f          	j	80004224 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800041e8:	00005517          	auipc	a0,0x5
    800041ec:	0a050513          	addi	a0,a0,160 # 80009288 <CONSOLE_STATUS+0x278>
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	ba0080e7          	jalr	-1120(ra) # 80004d90 <_Z11printStringPKc>
    800041f8:	00000613          	li	a2,0
    800041fc:	00a00593          	li	a1,10
    80004200:	00048513          	mv	a0,s1
    80004204:	00001097          	auipc	ra,0x1
    80004208:	d3c080e7          	jalr	-708(ra) # 80004f40 <_Z8printIntiii>
    8000420c:	00005517          	auipc	a0,0x5
    80004210:	2cc50513          	addi	a0,a0,716 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004214:	00001097          	auipc	ra,0x1
    80004218:	b7c080e7          	jalr	-1156(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000421c:	0014849b          	addiw	s1,s1,1
    80004220:	0ff4f493          	andi	s1,s1,255
    80004224:	00500793          	li	a5,5
    80004228:	fc97f0e3          	bgeu	a5,s1,800041e8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000422c:	00005517          	auipc	a0,0x5
    80004230:	03450513          	addi	a0,a0,52 # 80009260 <CONSOLE_STATUS+0x250>
    80004234:	00001097          	auipc	ra,0x1
    80004238:	b5c080e7          	jalr	-1188(ra) # 80004d90 <_Z11printStringPKc>
    finishedC = true;
    8000423c:	00100793          	li	a5,1
    80004240:	00007717          	auipc	a4,0x7
    80004244:	38f700a3          	sb	a5,897(a4) # 8000b5c1 <_ZL9finishedC>
    thread_dispatch();
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	170080e7          	jalr	368(ra) # 800013b8 <thread_dispatch>
}
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	00013903          	ld	s2,0(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret

0000000080004268 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00913423          	sd	s1,8(sp)
    80004278:	01213023          	sd	s2,0(sp)
    8000427c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004280:	00000913          	li	s2,0
    80004284:	0380006f          	j	800042bc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004288:	ffffd097          	auipc	ra,0xffffd
    8000428c:	130080e7          	jalr	304(ra) # 800013b8 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004290:	00148493          	addi	s1,s1,1
    80004294:	000027b7          	lui	a5,0x2
    80004298:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000429c:	0097ee63          	bltu	a5,s1,800042b8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042a0:	00000713          	li	a4,0
    800042a4:	000077b7          	lui	a5,0x7
    800042a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800042ac:	fce7eee3          	bltu	a5,a4,80004288 <_ZL11workerBodyBPv+0x20>
    800042b0:	00170713          	addi	a4,a4,1
    800042b4:	ff1ff06f          	j	800042a4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800042b8:	00190913          	addi	s2,s2,1
    800042bc:	00f00793          	li	a5,15
    800042c0:	0527e063          	bltu	a5,s2,80004300 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800042c4:	00005517          	auipc	a0,0x5
    800042c8:	fac50513          	addi	a0,a0,-84 # 80009270 <CONSOLE_STATUS+0x260>
    800042cc:	00001097          	auipc	ra,0x1
    800042d0:	ac4080e7          	jalr	-1340(ra) # 80004d90 <_Z11printStringPKc>
    800042d4:	00000613          	li	a2,0
    800042d8:	00a00593          	li	a1,10
    800042dc:	0009051b          	sext.w	a0,s2
    800042e0:	00001097          	auipc	ra,0x1
    800042e4:	c60080e7          	jalr	-928(ra) # 80004f40 <_Z8printIntiii>
    800042e8:	00005517          	auipc	a0,0x5
    800042ec:	1f050513          	addi	a0,a0,496 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800042f0:	00001097          	auipc	ra,0x1
    800042f4:	aa0080e7          	jalr	-1376(ra) # 80004d90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800042f8:	00000493          	li	s1,0
    800042fc:	f99ff06f          	j	80004294 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004300:	00005517          	auipc	a0,0x5
    80004304:	f7850513          	addi	a0,a0,-136 # 80009278 <CONSOLE_STATUS+0x268>
    80004308:	00001097          	auipc	ra,0x1
    8000430c:	a88080e7          	jalr	-1400(ra) # 80004d90 <_Z11printStringPKc>
    finishedB = true;
    80004310:	00100793          	li	a5,1
    80004314:	00007717          	auipc	a4,0x7
    80004318:	2af70723          	sb	a5,686(a4) # 8000b5c2 <_ZL9finishedB>
    thread_dispatch();
    8000431c:	ffffd097          	auipc	ra,0xffffd
    80004320:	09c080e7          	jalr	156(ra) # 800013b8 <thread_dispatch>
}
    80004324:	01813083          	ld	ra,24(sp)
    80004328:	01013403          	ld	s0,16(sp)
    8000432c:	00813483          	ld	s1,8(sp)
    80004330:	00013903          	ld	s2,0(sp)
    80004334:	02010113          	addi	sp,sp,32
    80004338:	00008067          	ret

000000008000433c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00113c23          	sd	ra,24(sp)
    80004344:	00813823          	sd	s0,16(sp)
    80004348:	00913423          	sd	s1,8(sp)
    8000434c:	01213023          	sd	s2,0(sp)
    80004350:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004354:	00000913          	li	s2,0
    80004358:	0380006f          	j	80004390 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	05c080e7          	jalr	92(ra) # 800013b8 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004364:	00148493          	addi	s1,s1,1
    80004368:	000027b7          	lui	a5,0x2
    8000436c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004370:	0097ee63          	bltu	a5,s1,8000438c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004374:	00000713          	li	a4,0
    80004378:	000077b7          	lui	a5,0x7
    8000437c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004380:	fce7eee3          	bltu	a5,a4,8000435c <_ZL11workerBodyAPv+0x20>
    80004384:	00170713          	addi	a4,a4,1
    80004388:	ff1ff06f          	j	80004378 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000438c:	00190913          	addi	s2,s2,1
    80004390:	00900793          	li	a5,9
    80004394:	0527e063          	bltu	a5,s2,800043d4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004398:	00005517          	auipc	a0,0x5
    8000439c:	ec050513          	addi	a0,a0,-320 # 80009258 <CONSOLE_STATUS+0x248>
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	9f0080e7          	jalr	-1552(ra) # 80004d90 <_Z11printStringPKc>
    800043a8:	00000613          	li	a2,0
    800043ac:	00a00593          	li	a1,10
    800043b0:	0009051b          	sext.w	a0,s2
    800043b4:	00001097          	auipc	ra,0x1
    800043b8:	b8c080e7          	jalr	-1140(ra) # 80004f40 <_Z8printIntiii>
    800043bc:	00005517          	auipc	a0,0x5
    800043c0:	11c50513          	addi	a0,a0,284 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800043c4:	00001097          	auipc	ra,0x1
    800043c8:	9cc080e7          	jalr	-1588(ra) # 80004d90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043cc:	00000493          	li	s1,0
    800043d0:	f99ff06f          	j	80004368 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800043d4:	00005517          	auipc	a0,0x5
    800043d8:	e8c50513          	addi	a0,a0,-372 # 80009260 <CONSOLE_STATUS+0x250>
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	9b4080e7          	jalr	-1612(ra) # 80004d90 <_Z11printStringPKc>
    finishedA = true;
    800043e4:	00100793          	li	a5,1
    800043e8:	00007717          	auipc	a4,0x7
    800043ec:	1cf70da3          	sb	a5,475(a4) # 8000b5c3 <_ZL9finishedA>
}
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	00013903          	ld	s2,0(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret

0000000080004408 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004408:	fd010113          	addi	sp,sp,-48
    8000440c:	02113423          	sd	ra,40(sp)
    80004410:	02813023          	sd	s0,32(sp)
    80004414:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004418:	00000613          	li	a2,0
    8000441c:	00000597          	auipc	a1,0x0
    80004420:	f2058593          	addi	a1,a1,-224 # 8000433c <_ZL11workerBodyAPv>
    80004424:	fd040513          	addi	a0,s0,-48
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	1b8080e7          	jalr	440(ra) # 800015e0 <thread_create>
    printString("ThreadA created\n");
    80004430:	00005517          	auipc	a0,0x5
    80004434:	ec050513          	addi	a0,a0,-320 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004438:	00001097          	auipc	ra,0x1
    8000443c:	958080e7          	jalr	-1704(ra) # 80004d90 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004440:	00000613          	li	a2,0
    80004444:	00000597          	auipc	a1,0x0
    80004448:	e2458593          	addi	a1,a1,-476 # 80004268 <_ZL11workerBodyBPv>
    8000444c:	fd840513          	addi	a0,s0,-40
    80004450:	ffffd097          	auipc	ra,0xffffd
    80004454:	190080e7          	jalr	400(ra) # 800015e0 <thread_create>
    printString("ThreadB created\n");
    80004458:	00005517          	auipc	a0,0x5
    8000445c:	eb050513          	addi	a0,a0,-336 # 80009308 <CONSOLE_STATUS+0x2f8>
    80004460:	00001097          	auipc	ra,0x1
    80004464:	930080e7          	jalr	-1744(ra) # 80004d90 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004468:	00000613          	li	a2,0
    8000446c:	00000597          	auipc	a1,0x0
    80004470:	c7c58593          	addi	a1,a1,-900 # 800040e8 <_ZL11workerBodyCPv>
    80004474:	fe040513          	addi	a0,s0,-32
    80004478:	ffffd097          	auipc	ra,0xffffd
    8000447c:	168080e7          	jalr	360(ra) # 800015e0 <thread_create>
    printString("ThreadC created\n");
    80004480:	00005517          	auipc	a0,0x5
    80004484:	ea050513          	addi	a0,a0,-352 # 80009320 <CONSOLE_STATUS+0x310>
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	908080e7          	jalr	-1784(ra) # 80004d90 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004490:	00000613          	li	a2,0
    80004494:	00000597          	auipc	a1,0x0
    80004498:	b0c58593          	addi	a1,a1,-1268 # 80003fa0 <_ZL11workerBodyDPv>
    8000449c:	fe840513          	addi	a0,s0,-24
    800044a0:	ffffd097          	auipc	ra,0xffffd
    800044a4:	140080e7          	jalr	320(ra) # 800015e0 <thread_create>
    printString("ThreadD created\n");
    800044a8:	00005517          	auipc	a0,0x5
    800044ac:	e9050513          	addi	a0,a0,-368 # 80009338 <CONSOLE_STATUS+0x328>
    800044b0:	00001097          	auipc	ra,0x1
    800044b4:	8e0080e7          	jalr	-1824(ra) # 80004d90 <_Z11printStringPKc>
    800044b8:	00c0006f          	j	800044c4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800044bc:	ffffd097          	auipc	ra,0xffffd
    800044c0:	efc080e7          	jalr	-260(ra) # 800013b8 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800044c4:	00007797          	auipc	a5,0x7
    800044c8:	0ff7c783          	lbu	a5,255(a5) # 8000b5c3 <_ZL9finishedA>
    800044cc:	fe0788e3          	beqz	a5,800044bc <_Z18Threads_C_API_testv+0xb4>
    800044d0:	00007797          	auipc	a5,0x7
    800044d4:	0f27c783          	lbu	a5,242(a5) # 8000b5c2 <_ZL9finishedB>
    800044d8:	fe0782e3          	beqz	a5,800044bc <_Z18Threads_C_API_testv+0xb4>
    800044dc:	00007797          	auipc	a5,0x7
    800044e0:	0e57c783          	lbu	a5,229(a5) # 8000b5c1 <_ZL9finishedC>
    800044e4:	fc078ce3          	beqz	a5,800044bc <_Z18Threads_C_API_testv+0xb4>
    800044e8:	00007797          	auipc	a5,0x7
    800044ec:	0d87c783          	lbu	a5,216(a5) # 8000b5c0 <_ZL9finishedD>
    800044f0:	fc0786e3          	beqz	a5,800044bc <_Z18Threads_C_API_testv+0xb4>
    }

}
    800044f4:	02813083          	ld	ra,40(sp)
    800044f8:	02013403          	ld	s0,32(sp)
    800044fc:	03010113          	addi	sp,sp,48
    80004500:	00008067          	ret

0000000080004504 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004504:	fd010113          	addi	sp,sp,-48
    80004508:	02113423          	sd	ra,40(sp)
    8000450c:	02813023          	sd	s0,32(sp)
    80004510:	00913c23          	sd	s1,24(sp)
    80004514:	01213823          	sd	s2,16(sp)
    80004518:	01313423          	sd	s3,8(sp)
    8000451c:	03010413          	addi	s0,sp,48
    80004520:	00050993          	mv	s3,a0
    80004524:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004528:	00000913          	li	s2,0
    8000452c:	00c0006f          	j	80004538 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	cdc080e7          	jalr	-804(ra) # 8000220c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004538:	ffffd097          	auipc	ra,0xffffd
    8000453c:	ff4080e7          	jalr	-12(ra) # 8000152c <getc>
    80004540:	0005059b          	sext.w	a1,a0
    80004544:	01b00793          	li	a5,27
    80004548:	02f58a63          	beq	a1,a5,8000457c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000454c:	0084b503          	ld	a0,8(s1)
    80004550:	00001097          	auipc	ra,0x1
    80004554:	c64080e7          	jalr	-924(ra) # 800051b4 <_ZN9BufferCPP3putEi>
        i++;
    80004558:	0019071b          	addiw	a4,s2,1
    8000455c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004560:	0004a683          	lw	a3,0(s1)
    80004564:	0026979b          	slliw	a5,a3,0x2
    80004568:	00d787bb          	addw	a5,a5,a3
    8000456c:	0017979b          	slliw	a5,a5,0x1
    80004570:	02f767bb          	remw	a5,a4,a5
    80004574:	fc0792e3          	bnez	a5,80004538 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004578:	fb9ff06f          	j	80004530 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000457c:	00100793          	li	a5,1
    80004580:	00007717          	auipc	a4,0x7
    80004584:	04f72423          	sw	a5,72(a4) # 8000b5c8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004588:	0209b783          	ld	a5,32(s3)
    8000458c:	02100593          	li	a1,33
    80004590:	0087b503          	ld	a0,8(a5)
    80004594:	00001097          	auipc	ra,0x1
    80004598:	c20080e7          	jalr	-992(ra) # 800051b4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000459c:	0104b503          	ld	a0,16(s1)
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	d14080e7          	jalr	-748(ra) # 800022b4 <_ZN9Semaphore6signalEv>
}
    800045a8:	02813083          	ld	ra,40(sp)
    800045ac:	02013403          	ld	s0,32(sp)
    800045b0:	01813483          	ld	s1,24(sp)
    800045b4:	01013903          	ld	s2,16(sp)
    800045b8:	00813983          	ld	s3,8(sp)
    800045bc:	03010113          	addi	sp,sp,48
    800045c0:	00008067          	ret

00000000800045c4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800045c4:	fe010113          	addi	sp,sp,-32
    800045c8:	00113c23          	sd	ra,24(sp)
    800045cc:	00813823          	sd	s0,16(sp)
    800045d0:	00913423          	sd	s1,8(sp)
    800045d4:	01213023          	sd	s2,0(sp)
    800045d8:	02010413          	addi	s0,sp,32
    800045dc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800045e0:	00000913          	li	s2,0
    800045e4:	00c0006f          	j	800045f0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	c24080e7          	jalr	-988(ra) # 8000220c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800045f0:	00007797          	auipc	a5,0x7
    800045f4:	fd87a783          	lw	a5,-40(a5) # 8000b5c8 <_ZL9threadEnd>
    800045f8:	02079e63          	bnez	a5,80004634 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800045fc:	0004a583          	lw	a1,0(s1)
    80004600:	0305859b          	addiw	a1,a1,48
    80004604:	0084b503          	ld	a0,8(s1)
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	bac080e7          	jalr	-1108(ra) # 800051b4 <_ZN9BufferCPP3putEi>
        i++;
    80004610:	0019071b          	addiw	a4,s2,1
    80004614:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004618:	0004a683          	lw	a3,0(s1)
    8000461c:	0026979b          	slliw	a5,a3,0x2
    80004620:	00d787bb          	addw	a5,a5,a3
    80004624:	0017979b          	slliw	a5,a5,0x1
    80004628:	02f767bb          	remw	a5,a4,a5
    8000462c:	fc0792e3          	bnez	a5,800045f0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004630:	fb9ff06f          	j	800045e8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004634:	0104b503          	ld	a0,16(s1)
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	c7c080e7          	jalr	-900(ra) # 800022b4 <_ZN9Semaphore6signalEv>
}
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00813483          	ld	s1,8(sp)
    8000464c:	00013903          	ld	s2,0(sp)
    80004650:	02010113          	addi	sp,sp,32
    80004654:	00008067          	ret

0000000080004658 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004658:	fd010113          	addi	sp,sp,-48
    8000465c:	02113423          	sd	ra,40(sp)
    80004660:	02813023          	sd	s0,32(sp)
    80004664:	00913c23          	sd	s1,24(sp)
    80004668:	01213823          	sd	s2,16(sp)
    8000466c:	01313423          	sd	s3,8(sp)
    80004670:	01413023          	sd	s4,0(sp)
    80004674:	03010413          	addi	s0,sp,48
    80004678:	00050993          	mv	s3,a0
    8000467c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004680:	00000a13          	li	s4,0
    80004684:	01c0006f          	j	800046a0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	b84080e7          	jalr	-1148(ra) # 8000220c <_ZN6Thread8dispatchEv>
    80004690:	0500006f          	j	800046e0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004694:	00a00513          	li	a0,10
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	ed0080e7          	jalr	-304(ra) # 80001568 <putc>
    while (!threadEnd) {
    800046a0:	00007797          	auipc	a5,0x7
    800046a4:	f287a783          	lw	a5,-216(a5) # 8000b5c8 <_ZL9threadEnd>
    800046a8:	06079263          	bnez	a5,8000470c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800046ac:	00893503          	ld	a0,8(s2)
    800046b0:	00001097          	auipc	ra,0x1
    800046b4:	b94080e7          	jalr	-1132(ra) # 80005244 <_ZN9BufferCPP3getEv>
        i++;
    800046b8:	001a049b          	addiw	s1,s4,1
    800046bc:	00048a1b          	sext.w	s4,s1
        putc(key);
    800046c0:	0ff57513          	andi	a0,a0,255
    800046c4:	ffffd097          	auipc	ra,0xffffd
    800046c8:	ea4080e7          	jalr	-348(ra) # 80001568 <putc>
        if (i % (5 * data->id) == 0) {
    800046cc:	00092703          	lw	a4,0(s2)
    800046d0:	0027179b          	slliw	a5,a4,0x2
    800046d4:	00e787bb          	addw	a5,a5,a4
    800046d8:	02f4e7bb          	remw	a5,s1,a5
    800046dc:	fa0786e3          	beqz	a5,80004688 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800046e0:	05000793          	li	a5,80
    800046e4:	02f4e4bb          	remw	s1,s1,a5
    800046e8:	fa049ce3          	bnez	s1,800046a0 <_ZN12ConsumerSync8consumerEPv+0x48>
    800046ec:	fa9ff06f          	j	80004694 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800046f0:	0209b783          	ld	a5,32(s3)
    800046f4:	0087b503          	ld	a0,8(a5)
    800046f8:	00001097          	auipc	ra,0x1
    800046fc:	b4c080e7          	jalr	-1204(ra) # 80005244 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004700:	0ff57513          	andi	a0,a0,255
    80004704:	ffffe097          	auipc	ra,0xffffe
    80004708:	c04080e7          	jalr	-1020(ra) # 80002308 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000470c:	0209b783          	ld	a5,32(s3)
    80004710:	0087b503          	ld	a0,8(a5)
    80004714:	00001097          	auipc	ra,0x1
    80004718:	bbc080e7          	jalr	-1092(ra) # 800052d0 <_ZN9BufferCPP6getCntEv>
    8000471c:	fca04ae3          	bgtz	a0,800046f0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004720:	01093503          	ld	a0,16(s2)
    80004724:	ffffe097          	auipc	ra,0xffffe
    80004728:	b90080e7          	jalr	-1136(ra) # 800022b4 <_ZN9Semaphore6signalEv>
}
    8000472c:	02813083          	ld	ra,40(sp)
    80004730:	02013403          	ld	s0,32(sp)
    80004734:	01813483          	ld	s1,24(sp)
    80004738:	01013903          	ld	s2,16(sp)
    8000473c:	00813983          	ld	s3,8(sp)
    80004740:	00013a03          	ld	s4,0(sp)
    80004744:	03010113          	addi	sp,sp,48
    80004748:	00008067          	ret

000000008000474c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000474c:	f8010113          	addi	sp,sp,-128
    80004750:	06113c23          	sd	ra,120(sp)
    80004754:	06813823          	sd	s0,112(sp)
    80004758:	06913423          	sd	s1,104(sp)
    8000475c:	07213023          	sd	s2,96(sp)
    80004760:	05313c23          	sd	s3,88(sp)
    80004764:	05413823          	sd	s4,80(sp)
    80004768:	05513423          	sd	s5,72(sp)
    8000476c:	05613023          	sd	s6,64(sp)
    80004770:	03713c23          	sd	s7,56(sp)
    80004774:	03813823          	sd	s8,48(sp)
    80004778:	03913423          	sd	s9,40(sp)
    8000477c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004780:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004784:	00005517          	auipc	a0,0x5
    80004788:	9ec50513          	addi	a0,a0,-1556 # 80009170 <CONSOLE_STATUS+0x160>
    8000478c:	00000097          	auipc	ra,0x0
    80004790:	604080e7          	jalr	1540(ra) # 80004d90 <_Z11printStringPKc>
    getString(input, 30);
    80004794:	01e00593          	li	a1,30
    80004798:	f8040493          	addi	s1,s0,-128
    8000479c:	00048513          	mv	a0,s1
    800047a0:	00000097          	auipc	ra,0x0
    800047a4:	678080e7          	jalr	1656(ra) # 80004e18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800047a8:	00048513          	mv	a0,s1
    800047ac:	00000097          	auipc	ra,0x0
    800047b0:	744080e7          	jalr	1860(ra) # 80004ef0 <_Z11stringToIntPKc>
    800047b4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	9d850513          	addi	a0,a0,-1576 # 80009190 <CONSOLE_STATUS+0x180>
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	5d0080e7          	jalr	1488(ra) # 80004d90 <_Z11printStringPKc>
    getString(input, 30);
    800047c8:	01e00593          	li	a1,30
    800047cc:	00048513          	mv	a0,s1
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	648080e7          	jalr	1608(ra) # 80004e18 <_Z9getStringPci>
    n = stringToInt(input);
    800047d8:	00048513          	mv	a0,s1
    800047dc:	00000097          	auipc	ra,0x0
    800047e0:	714080e7          	jalr	1812(ra) # 80004ef0 <_Z11stringToIntPKc>
    800047e4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	9c850513          	addi	a0,a0,-1592 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800047f0:	00000097          	auipc	ra,0x0
    800047f4:	5a0080e7          	jalr	1440(ra) # 80004d90 <_Z11printStringPKc>
    800047f8:	00000613          	li	a2,0
    800047fc:	00a00593          	li	a1,10
    80004800:	00090513          	mv	a0,s2
    80004804:	00000097          	auipc	ra,0x0
    80004808:	73c080e7          	jalr	1852(ra) # 80004f40 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000480c:	00005517          	auipc	a0,0x5
    80004810:	9bc50513          	addi	a0,a0,-1604 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80004814:	00000097          	auipc	ra,0x0
    80004818:	57c080e7          	jalr	1404(ra) # 80004d90 <_Z11printStringPKc>
    8000481c:	00000613          	li	a2,0
    80004820:	00a00593          	li	a1,10
    80004824:	00048513          	mv	a0,s1
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	718080e7          	jalr	1816(ra) # 80004f40 <_Z8printIntiii>
    printString(".\n");
    80004830:	00005517          	auipc	a0,0x5
    80004834:	9b050513          	addi	a0,a0,-1616 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004838:	00000097          	auipc	ra,0x0
    8000483c:	558080e7          	jalr	1368(ra) # 80004d90 <_Z11printStringPKc>
    if(threadNum > n) {
    80004840:	0324c463          	blt	s1,s2,80004868 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004844:	03205c63          	blez	s2,8000487c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004848:	03800513          	li	a0,56
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	720080e7          	jalr	1824(ra) # 80001f6c <_Znwm>
    80004854:	00050a93          	mv	s5,a0
    80004858:	00048593          	mv	a1,s1
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	804080e7          	jalr	-2044(ra) # 80005060 <_ZN9BufferCPPC1Ei>
    80004864:	0300006f          	j	80004894 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004868:	00005517          	auipc	a0,0x5
    8000486c:	98050513          	addi	a0,a0,-1664 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004870:	00000097          	auipc	ra,0x0
    80004874:	520080e7          	jalr	1312(ra) # 80004d90 <_Z11printStringPKc>
        return;
    80004878:	0140006f          	j	8000488c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000487c:	00005517          	auipc	a0,0x5
    80004880:	9ac50513          	addi	a0,a0,-1620 # 80009228 <CONSOLE_STATUS+0x218>
    80004884:	00000097          	auipc	ra,0x0
    80004888:	50c080e7          	jalr	1292(ra) # 80004d90 <_Z11printStringPKc>
        return;
    8000488c:	000b8113          	mv	sp,s7
    80004890:	2380006f          	j	80004ac8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004894:	01000513          	li	a0,16
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	6d4080e7          	jalr	1748(ra) # 80001f6c <_Znwm>
    800048a0:	00050493          	mv	s1,a0
    800048a4:	00000593          	li	a1,0
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	9a8080e7          	jalr	-1624(ra) # 80002250 <_ZN9SemaphoreC1Ej>
    800048b0:	00007797          	auipc	a5,0x7
    800048b4:	d297b023          	sd	s1,-736(a5) # 8000b5d0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800048b8:	00391793          	slli	a5,s2,0x3
    800048bc:	00f78793          	addi	a5,a5,15
    800048c0:	ff07f793          	andi	a5,a5,-16
    800048c4:	40f10133          	sub	sp,sp,a5
    800048c8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800048cc:	0019071b          	addiw	a4,s2,1
    800048d0:	00171793          	slli	a5,a4,0x1
    800048d4:	00e787b3          	add	a5,a5,a4
    800048d8:	00379793          	slli	a5,a5,0x3
    800048dc:	00f78793          	addi	a5,a5,15
    800048e0:	ff07f793          	andi	a5,a5,-16
    800048e4:	40f10133          	sub	sp,sp,a5
    800048e8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800048ec:	00191c13          	slli	s8,s2,0x1
    800048f0:	012c07b3          	add	a5,s8,s2
    800048f4:	00379793          	slli	a5,a5,0x3
    800048f8:	00fa07b3          	add	a5,s4,a5
    800048fc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004900:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004904:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004908:	02800513          	li	a0,40
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	660080e7          	jalr	1632(ra) # 80001f6c <_Znwm>
    80004914:	00050b13          	mv	s6,a0
    80004918:	012c0c33          	add	s8,s8,s2
    8000491c:	003c1c13          	slli	s8,s8,0x3
    80004920:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004924:	ffffe097          	auipc	ra,0xffffe
    80004928:	838080e7          	jalr	-1992(ra) # 8000215c <_ZN6ThreadC1Ev>
    8000492c:	00007797          	auipc	a5,0x7
    80004930:	b9c78793          	addi	a5,a5,-1124 # 8000b4c8 <_ZTV12ConsumerSync+0x10>
    80004934:	00fb3023          	sd	a5,0(s6)
    80004938:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000493c:	000b0513          	mv	a0,s6
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	860080e7          	jalr	-1952(ra) # 800021a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004948:	00000493          	li	s1,0
    8000494c:	0380006f          	j	80004984 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004950:	00007797          	auipc	a5,0x7
    80004954:	b5078793          	addi	a5,a5,-1200 # 8000b4a0 <_ZTV12ProducerSync+0x10>
    80004958:	00fcb023          	sd	a5,0(s9)
    8000495c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004960:	00349793          	slli	a5,s1,0x3
    80004964:	00f987b3          	add	a5,s3,a5
    80004968:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000496c:	00349793          	slli	a5,s1,0x3
    80004970:	00f987b3          	add	a5,s3,a5
    80004974:	0007b503          	ld	a0,0(a5)
    80004978:	ffffe097          	auipc	ra,0xffffe
    8000497c:	828080e7          	jalr	-2008(ra) # 800021a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004980:	0014849b          	addiw	s1,s1,1
    80004984:	0b24d063          	bge	s1,s2,80004a24 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004988:	00149793          	slli	a5,s1,0x1
    8000498c:	009787b3          	add	a5,a5,s1
    80004990:	00379793          	slli	a5,a5,0x3
    80004994:	00fa07b3          	add	a5,s4,a5
    80004998:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000499c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800049a0:	00007717          	auipc	a4,0x7
    800049a4:	c3073703          	ld	a4,-976(a4) # 8000b5d0 <_ZL10waitForAll>
    800049a8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800049ac:	02905863          	blez	s1,800049dc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800049b0:	02800513          	li	a0,40
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	5b8080e7          	jalr	1464(ra) # 80001f6c <_Znwm>
    800049bc:	00050c93          	mv	s9,a0
    800049c0:	00149c13          	slli	s8,s1,0x1
    800049c4:	009c0c33          	add	s8,s8,s1
    800049c8:	003c1c13          	slli	s8,s8,0x3
    800049cc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	78c080e7          	jalr	1932(ra) # 8000215c <_ZN6ThreadC1Ev>
    800049d8:	f79ff06f          	j	80004950 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800049dc:	02800513          	li	a0,40
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	58c080e7          	jalr	1420(ra) # 80001f6c <_Znwm>
    800049e8:	00050c93          	mv	s9,a0
    800049ec:	00149c13          	slli	s8,s1,0x1
    800049f0:	009c0c33          	add	s8,s8,s1
    800049f4:	003c1c13          	slli	s8,s8,0x3
    800049f8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	760080e7          	jalr	1888(ra) # 8000215c <_ZN6ThreadC1Ev>
    80004a04:	00007797          	auipc	a5,0x7
    80004a08:	a7478793          	addi	a5,a5,-1420 # 8000b478 <_ZTV16ProducerKeyboard+0x10>
    80004a0c:	00fcb023          	sd	a5,0(s9)
    80004a10:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004a14:	00349793          	slli	a5,s1,0x3
    80004a18:	00f987b3          	add	a5,s3,a5
    80004a1c:	0197b023          	sd	s9,0(a5)
    80004a20:	f4dff06f          	j	8000496c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	7e8080e7          	jalr	2024(ra) # 8000220c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a2c:	00000493          	li	s1,0
    80004a30:	00994e63          	blt	s2,s1,80004a4c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004a34:	00007517          	auipc	a0,0x7
    80004a38:	b9c53503          	ld	a0,-1124(a0) # 8000b5d0 <_ZL10waitForAll>
    80004a3c:	ffffe097          	auipc	ra,0xffffe
    80004a40:	84c080e7          	jalr	-1972(ra) # 80002288 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a44:	0014849b          	addiw	s1,s1,1
    80004a48:	fe9ff06f          	j	80004a30 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004a4c:	00000493          	li	s1,0
    80004a50:	0080006f          	j	80004a58 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004a54:	0014849b          	addiw	s1,s1,1
    80004a58:	0324d263          	bge	s1,s2,80004a7c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004a5c:	00349793          	slli	a5,s1,0x3
    80004a60:	00f987b3          	add	a5,s3,a5
    80004a64:	0007b503          	ld	a0,0(a5)
    80004a68:	fe0506e3          	beqz	a0,80004a54 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004a6c:	00053783          	ld	a5,0(a0)
    80004a70:	0087b783          	ld	a5,8(a5)
    80004a74:	000780e7          	jalr	a5
    80004a78:	fddff06f          	j	80004a54 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004a7c:	000b0a63          	beqz	s6,80004a90 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004a80:	000b3783          	ld	a5,0(s6)
    80004a84:	0087b783          	ld	a5,8(a5)
    80004a88:	000b0513          	mv	a0,s6
    80004a8c:	000780e7          	jalr	a5
    delete waitForAll;
    80004a90:	00007517          	auipc	a0,0x7
    80004a94:	b4053503          	ld	a0,-1216(a0) # 8000b5d0 <_ZL10waitForAll>
    80004a98:	00050863          	beqz	a0,80004aa8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004a9c:	00053783          	ld	a5,0(a0)
    80004aa0:	0087b783          	ld	a5,8(a5)
    80004aa4:	000780e7          	jalr	a5
    delete buffer;
    80004aa8:	000a8e63          	beqz	s5,80004ac4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004aac:	000a8513          	mv	a0,s5
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	8a8080e7          	jalr	-1880(ra) # 80005358 <_ZN9BufferCPPD1Ev>
    80004ab8:	000a8513          	mv	a0,s5
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	500080e7          	jalr	1280(ra) # 80001fbc <_ZdlPv>
    80004ac4:	000b8113          	mv	sp,s7
    80004ac8:	f8040113          	addi	sp,s0,-128
    80004acc:	07813083          	ld	ra,120(sp)
    80004ad0:	07013403          	ld	s0,112(sp)
    80004ad4:	06813483          	ld	s1,104(sp)
    80004ad8:	06013903          	ld	s2,96(sp)
    80004adc:	05813983          	ld	s3,88(sp)
    80004ae0:	05013a03          	ld	s4,80(sp)
    80004ae4:	04813a83          	ld	s5,72(sp)
    80004ae8:	04013b03          	ld	s6,64(sp)
    80004aec:	03813b83          	ld	s7,56(sp)
    80004af0:	03013c03          	ld	s8,48(sp)
    80004af4:	02813c83          	ld	s9,40(sp)
    80004af8:	08010113          	addi	sp,sp,128
    80004afc:	00008067          	ret
    80004b00:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004b04:	000a8513          	mv	a0,s5
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	4b4080e7          	jalr	1204(ra) # 80001fbc <_ZdlPv>
    80004b10:	00048513          	mv	a0,s1
    80004b14:	00008097          	auipc	ra,0x8
    80004b18:	ba4080e7          	jalr	-1116(ra) # 8000c6b8 <_Unwind_Resume>
    80004b1c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004b20:	00048513          	mv	a0,s1
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	498080e7          	jalr	1176(ra) # 80001fbc <_ZdlPv>
    80004b2c:	00090513          	mv	a0,s2
    80004b30:	00008097          	auipc	ra,0x8
    80004b34:	b88080e7          	jalr	-1144(ra) # 8000c6b8 <_Unwind_Resume>
    80004b38:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004b3c:	000b0513          	mv	a0,s6
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	47c080e7          	jalr	1148(ra) # 80001fbc <_ZdlPv>
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	00008097          	auipc	ra,0x8
    80004b50:	b6c080e7          	jalr	-1172(ra) # 8000c6b8 <_Unwind_Resume>
    80004b54:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004b58:	000c8513          	mv	a0,s9
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	460080e7          	jalr	1120(ra) # 80001fbc <_ZdlPv>
    80004b64:	00048513          	mv	a0,s1
    80004b68:	00008097          	auipc	ra,0x8
    80004b6c:	b50080e7          	jalr	-1200(ra) # 8000c6b8 <_Unwind_Resume>
    80004b70:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004b74:	000c8513          	mv	a0,s9
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	444080e7          	jalr	1092(ra) # 80001fbc <_ZdlPv>
    80004b80:	00048513          	mv	a0,s1
    80004b84:	00008097          	auipc	ra,0x8
    80004b88:	b34080e7          	jalr	-1228(ra) # 8000c6b8 <_Unwind_Resume>

0000000080004b8c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004b8c:	ff010113          	addi	sp,sp,-16
    80004b90:	00113423          	sd	ra,8(sp)
    80004b94:	00813023          	sd	s0,0(sp)
    80004b98:	01010413          	addi	s0,sp,16
    80004b9c:	00007797          	auipc	a5,0x7
    80004ba0:	92c78793          	addi	a5,a5,-1748 # 8000b4c8 <_ZTV12ConsumerSync+0x10>
    80004ba4:	00f53023          	sd	a5,0(a0)
    80004ba8:	ffffd097          	auipc	ra,0xffffd
    80004bac:	498080e7          	jalr	1176(ra) # 80002040 <_ZN6ThreadD1Ev>
    80004bb0:	00813083          	ld	ra,8(sp)
    80004bb4:	00013403          	ld	s0,0(sp)
    80004bb8:	01010113          	addi	sp,sp,16
    80004bbc:	00008067          	ret

0000000080004bc0 <_ZN12ConsumerSyncD0Ev>:
    80004bc0:	fe010113          	addi	sp,sp,-32
    80004bc4:	00113c23          	sd	ra,24(sp)
    80004bc8:	00813823          	sd	s0,16(sp)
    80004bcc:	00913423          	sd	s1,8(sp)
    80004bd0:	02010413          	addi	s0,sp,32
    80004bd4:	00050493          	mv	s1,a0
    80004bd8:	00007797          	auipc	a5,0x7
    80004bdc:	8f078793          	addi	a5,a5,-1808 # 8000b4c8 <_ZTV12ConsumerSync+0x10>
    80004be0:	00f53023          	sd	a5,0(a0)
    80004be4:	ffffd097          	auipc	ra,0xffffd
    80004be8:	45c080e7          	jalr	1116(ra) # 80002040 <_ZN6ThreadD1Ev>
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	3cc080e7          	jalr	972(ra) # 80001fbc <_ZdlPv>
    80004bf8:	01813083          	ld	ra,24(sp)
    80004bfc:	01013403          	ld	s0,16(sp)
    80004c00:	00813483          	ld	s1,8(sp)
    80004c04:	02010113          	addi	sp,sp,32
    80004c08:	00008067          	ret

0000000080004c0c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004c0c:	ff010113          	addi	sp,sp,-16
    80004c10:	00113423          	sd	ra,8(sp)
    80004c14:	00813023          	sd	s0,0(sp)
    80004c18:	01010413          	addi	s0,sp,16
    80004c1c:	00007797          	auipc	a5,0x7
    80004c20:	88478793          	addi	a5,a5,-1916 # 8000b4a0 <_ZTV12ProducerSync+0x10>
    80004c24:	00f53023          	sd	a5,0(a0)
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	418080e7          	jalr	1048(ra) # 80002040 <_ZN6ThreadD1Ev>
    80004c30:	00813083          	ld	ra,8(sp)
    80004c34:	00013403          	ld	s0,0(sp)
    80004c38:	01010113          	addi	sp,sp,16
    80004c3c:	00008067          	ret

0000000080004c40 <_ZN12ProducerSyncD0Ev>:
    80004c40:	fe010113          	addi	sp,sp,-32
    80004c44:	00113c23          	sd	ra,24(sp)
    80004c48:	00813823          	sd	s0,16(sp)
    80004c4c:	00913423          	sd	s1,8(sp)
    80004c50:	02010413          	addi	s0,sp,32
    80004c54:	00050493          	mv	s1,a0
    80004c58:	00007797          	auipc	a5,0x7
    80004c5c:	84878793          	addi	a5,a5,-1976 # 8000b4a0 <_ZTV12ProducerSync+0x10>
    80004c60:	00f53023          	sd	a5,0(a0)
    80004c64:	ffffd097          	auipc	ra,0xffffd
    80004c68:	3dc080e7          	jalr	988(ra) # 80002040 <_ZN6ThreadD1Ev>
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	34c080e7          	jalr	844(ra) # 80001fbc <_ZdlPv>
    80004c78:	01813083          	ld	ra,24(sp)
    80004c7c:	01013403          	ld	s0,16(sp)
    80004c80:	00813483          	ld	s1,8(sp)
    80004c84:	02010113          	addi	sp,sp,32
    80004c88:	00008067          	ret

0000000080004c8c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard: public Thread {
    80004c8c:	ff010113          	addi	sp,sp,-16
    80004c90:	00113423          	sd	ra,8(sp)
    80004c94:	00813023          	sd	s0,0(sp)
    80004c98:	01010413          	addi	s0,sp,16
    80004c9c:	00006797          	auipc	a5,0x6
    80004ca0:	7dc78793          	addi	a5,a5,2012 # 8000b478 <_ZTV16ProducerKeyboard+0x10>
    80004ca4:	00f53023          	sd	a5,0(a0)
    80004ca8:	ffffd097          	auipc	ra,0xffffd
    80004cac:	398080e7          	jalr	920(ra) # 80002040 <_ZN6ThreadD1Ev>
    80004cb0:	00813083          	ld	ra,8(sp)
    80004cb4:	00013403          	ld	s0,0(sp)
    80004cb8:	01010113          	addi	sp,sp,16
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN16ProducerKeyboardD0Ev>:
    80004cc0:	fe010113          	addi	sp,sp,-32
    80004cc4:	00113c23          	sd	ra,24(sp)
    80004cc8:	00813823          	sd	s0,16(sp)
    80004ccc:	00913423          	sd	s1,8(sp)
    80004cd0:	02010413          	addi	s0,sp,32
    80004cd4:	00050493          	mv	s1,a0
    80004cd8:	00006797          	auipc	a5,0x6
    80004cdc:	7a078793          	addi	a5,a5,1952 # 8000b478 <_ZTV16ProducerKeyboard+0x10>
    80004ce0:	00f53023          	sd	a5,0(a0)
    80004ce4:	ffffd097          	auipc	ra,0xffffd
    80004ce8:	35c080e7          	jalr	860(ra) # 80002040 <_ZN6ThreadD1Ev>
    80004cec:	00048513          	mv	a0,s1
    80004cf0:	ffffd097          	auipc	ra,0xffffd
    80004cf4:	2cc080e7          	jalr	716(ra) # 80001fbc <_ZdlPv>
    80004cf8:	01813083          	ld	ra,24(sp)
    80004cfc:	01013403          	ld	s0,16(sp)
    80004d00:	00813483          	ld	s1,8(sp)
    80004d04:	02010113          	addi	sp,sp,32
    80004d08:	00008067          	ret

0000000080004d0c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004d0c:	ff010113          	addi	sp,sp,-16
    80004d10:	00113423          	sd	ra,8(sp)
    80004d14:	00813023          	sd	s0,0(sp)
    80004d18:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004d1c:	02053583          	ld	a1,32(a0)
    80004d20:	fffff097          	auipc	ra,0xfffff
    80004d24:	7e4080e7          	jalr	2020(ra) # 80004504 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004d28:	00813083          	ld	ra,8(sp)
    80004d2c:	00013403          	ld	s0,0(sp)
    80004d30:	01010113          	addi	sp,sp,16
    80004d34:	00008067          	ret

0000000080004d38 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004d38:	ff010113          	addi	sp,sp,-16
    80004d3c:	00113423          	sd	ra,8(sp)
    80004d40:	00813023          	sd	s0,0(sp)
    80004d44:	01010413          	addi	s0,sp,16
        producer(td);
    80004d48:	02053583          	ld	a1,32(a0)
    80004d4c:	00000097          	auipc	ra,0x0
    80004d50:	878080e7          	jalr	-1928(ra) # 800045c4 <_ZN12ProducerSync8producerEPv>
    }
    80004d54:	00813083          	ld	ra,8(sp)
    80004d58:	00013403          	ld	s0,0(sp)
    80004d5c:	01010113          	addi	sp,sp,16
    80004d60:	00008067          	ret

0000000080004d64 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004d64:	ff010113          	addi	sp,sp,-16
    80004d68:	00113423          	sd	ra,8(sp)
    80004d6c:	00813023          	sd	s0,0(sp)
    80004d70:	01010413          	addi	s0,sp,16
        consumer(td);
    80004d74:	02053583          	ld	a1,32(a0)
    80004d78:	00000097          	auipc	ra,0x0
    80004d7c:	8e0080e7          	jalr	-1824(ra) # 80004658 <_ZN12ConsumerSync8consumerEPv>
    }
    80004d80:	00813083          	ld	ra,8(sp)
    80004d84:	00013403          	ld	s0,0(sp)
    80004d88:	01010113          	addi	sp,sp,16
    80004d8c:	00008067          	ret

0000000080004d90 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004d90:	fe010113          	addi	sp,sp,-32
    80004d94:	00113c23          	sd	ra,24(sp)
    80004d98:	00813823          	sd	s0,16(sp)
    80004d9c:	00913423          	sd	s1,8(sp)
    80004da0:	02010413          	addi	s0,sp,32
    80004da4:	00050493          	mv	s1,a0
    LOCK();
    80004da8:	00100613          	li	a2,1
    80004dac:	00000593          	li	a1,0
    80004db0:	00007517          	auipc	a0,0x7
    80004db4:	82850513          	addi	a0,a0,-2008 # 8000b5d8 <lockPrint>
    80004db8:	ffffc097          	auipc	ra,0xffffc
    80004dbc:	5b4080e7          	jalr	1460(ra) # 8000136c <copy_and_swap>
    80004dc0:	00050863          	beqz	a0,80004dd0 <_Z11printStringPKc+0x40>
    80004dc4:	ffffc097          	auipc	ra,0xffffc
    80004dc8:	5f4080e7          	jalr	1524(ra) # 800013b8 <thread_dispatch>
    80004dcc:	fddff06f          	j	80004da8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004dd0:	0004c503          	lbu	a0,0(s1)
    80004dd4:	00050a63          	beqz	a0,80004de8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004dd8:	ffffc097          	auipc	ra,0xffffc
    80004ddc:	790080e7          	jalr	1936(ra) # 80001568 <putc>
        string++;
    80004de0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004de4:	fedff06f          	j	80004dd0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004de8:	00000613          	li	a2,0
    80004dec:	00100593          	li	a1,1
    80004df0:	00006517          	auipc	a0,0x6
    80004df4:	7e850513          	addi	a0,a0,2024 # 8000b5d8 <lockPrint>
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	574080e7          	jalr	1396(ra) # 8000136c <copy_and_swap>
    80004e00:	fe0514e3          	bnez	a0,80004de8 <_Z11printStringPKc+0x58>
}
    80004e04:	01813083          	ld	ra,24(sp)
    80004e08:	01013403          	ld	s0,16(sp)
    80004e0c:	00813483          	ld	s1,8(sp)
    80004e10:	02010113          	addi	sp,sp,32
    80004e14:	00008067          	ret

0000000080004e18 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004e18:	fd010113          	addi	sp,sp,-48
    80004e1c:	02113423          	sd	ra,40(sp)
    80004e20:	02813023          	sd	s0,32(sp)
    80004e24:	00913c23          	sd	s1,24(sp)
    80004e28:	01213823          	sd	s2,16(sp)
    80004e2c:	01313423          	sd	s3,8(sp)
    80004e30:	01413023          	sd	s4,0(sp)
    80004e34:	03010413          	addi	s0,sp,48
    80004e38:	00050993          	mv	s3,a0
    80004e3c:	00058a13          	mv	s4,a1
    LOCK();
    80004e40:	00100613          	li	a2,1
    80004e44:	00000593          	li	a1,0
    80004e48:	00006517          	auipc	a0,0x6
    80004e4c:	79050513          	addi	a0,a0,1936 # 8000b5d8 <lockPrint>
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	51c080e7          	jalr	1308(ra) # 8000136c <copy_and_swap>
    80004e58:	00050863          	beqz	a0,80004e68 <_Z9getStringPci+0x50>
    80004e5c:	ffffc097          	auipc	ra,0xffffc
    80004e60:	55c080e7          	jalr	1372(ra) # 800013b8 <thread_dispatch>
    80004e64:	fddff06f          	j	80004e40 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004e68:	00000913          	li	s2,0
    80004e6c:	00090493          	mv	s1,s2
    80004e70:	0019091b          	addiw	s2,s2,1
    80004e74:	03495a63          	bge	s2,s4,80004ea8 <_Z9getStringPci+0x90>
        cc = getc();
    80004e78:	ffffc097          	auipc	ra,0xffffc
    80004e7c:	6b4080e7          	jalr	1716(ra) # 8000152c <getc>
        if(cc < 1)
    80004e80:	02050463          	beqz	a0,80004ea8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004e84:	009984b3          	add	s1,s3,s1
    80004e88:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004e8c:	00a00793          	li	a5,10
    80004e90:	00f50a63          	beq	a0,a5,80004ea4 <_Z9getStringPci+0x8c>
    80004e94:	00d00793          	li	a5,13
    80004e98:	fcf51ae3          	bne	a0,a5,80004e6c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004e9c:	00090493          	mv	s1,s2
    80004ea0:	0080006f          	j	80004ea8 <_Z9getStringPci+0x90>
    80004ea4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004ea8:	009984b3          	add	s1,s3,s1
    80004eac:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004eb0:	00000613          	li	a2,0
    80004eb4:	00100593          	li	a1,1
    80004eb8:	00006517          	auipc	a0,0x6
    80004ebc:	72050513          	addi	a0,a0,1824 # 8000b5d8 <lockPrint>
    80004ec0:	ffffc097          	auipc	ra,0xffffc
    80004ec4:	4ac080e7          	jalr	1196(ra) # 8000136c <copy_and_swap>
    80004ec8:	fe0514e3          	bnez	a0,80004eb0 <_Z9getStringPci+0x98>
    return buf;
}
    80004ecc:	00098513          	mv	a0,s3
    80004ed0:	02813083          	ld	ra,40(sp)
    80004ed4:	02013403          	ld	s0,32(sp)
    80004ed8:	01813483          	ld	s1,24(sp)
    80004edc:	01013903          	ld	s2,16(sp)
    80004ee0:	00813983          	ld	s3,8(sp)
    80004ee4:	00013a03          	ld	s4,0(sp)
    80004ee8:	03010113          	addi	sp,sp,48
    80004eec:	00008067          	ret

0000000080004ef0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004ef0:	ff010113          	addi	sp,sp,-16
    80004ef4:	00813423          	sd	s0,8(sp)
    80004ef8:	01010413          	addi	s0,sp,16
    80004efc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004f00:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004f04:	0006c603          	lbu	a2,0(a3)
    80004f08:	fd06071b          	addiw	a4,a2,-48
    80004f0c:	0ff77713          	andi	a4,a4,255
    80004f10:	00900793          	li	a5,9
    80004f14:	02e7e063          	bltu	a5,a4,80004f34 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004f18:	0025179b          	slliw	a5,a0,0x2
    80004f1c:	00a787bb          	addw	a5,a5,a0
    80004f20:	0017979b          	slliw	a5,a5,0x1
    80004f24:	00168693          	addi	a3,a3,1
    80004f28:	00c787bb          	addw	a5,a5,a2
    80004f2c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004f30:	fd5ff06f          	j	80004f04 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004f34:	00813403          	ld	s0,8(sp)
    80004f38:	01010113          	addi	sp,sp,16
    80004f3c:	00008067          	ret

0000000080004f40 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004f40:	fc010113          	addi	sp,sp,-64
    80004f44:	02113c23          	sd	ra,56(sp)
    80004f48:	02813823          	sd	s0,48(sp)
    80004f4c:	02913423          	sd	s1,40(sp)
    80004f50:	03213023          	sd	s2,32(sp)
    80004f54:	01313c23          	sd	s3,24(sp)
    80004f58:	04010413          	addi	s0,sp,64
    80004f5c:	00050493          	mv	s1,a0
    80004f60:	00058913          	mv	s2,a1
    80004f64:	00060993          	mv	s3,a2
    LOCK();
    80004f68:	00100613          	li	a2,1
    80004f6c:	00000593          	li	a1,0
    80004f70:	00006517          	auipc	a0,0x6
    80004f74:	66850513          	addi	a0,a0,1640 # 8000b5d8 <lockPrint>
    80004f78:	ffffc097          	auipc	ra,0xffffc
    80004f7c:	3f4080e7          	jalr	1012(ra) # 8000136c <copy_and_swap>
    80004f80:	00050863          	beqz	a0,80004f90 <_Z8printIntiii+0x50>
    80004f84:	ffffc097          	auipc	ra,0xffffc
    80004f88:	434080e7          	jalr	1076(ra) # 800013b8 <thread_dispatch>
    80004f8c:	fddff06f          	j	80004f68 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004f90:	00098463          	beqz	s3,80004f98 <_Z8printIntiii+0x58>
    80004f94:	0804c463          	bltz	s1,8000501c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004f98:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004f9c:	00000593          	li	a1,0
    }

    i = 0;
    80004fa0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004fa4:	0009079b          	sext.w	a5,s2
    80004fa8:	0325773b          	remuw	a4,a0,s2
    80004fac:	00048613          	mv	a2,s1
    80004fb0:	0014849b          	addiw	s1,s1,1
    80004fb4:	02071693          	slli	a3,a4,0x20
    80004fb8:	0206d693          	srli	a3,a3,0x20
    80004fbc:	00006717          	auipc	a4,0x6
    80004fc0:	52470713          	addi	a4,a4,1316 # 8000b4e0 <digits>
    80004fc4:	00d70733          	add	a4,a4,a3
    80004fc8:	00074683          	lbu	a3,0(a4)
    80004fcc:	fd040713          	addi	a4,s0,-48
    80004fd0:	00c70733          	add	a4,a4,a2
    80004fd4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004fd8:	0005071b          	sext.w	a4,a0
    80004fdc:	0325553b          	divuw	a0,a0,s2
    80004fe0:	fcf772e3          	bgeu	a4,a5,80004fa4 <_Z8printIntiii+0x64>
    if(neg)
    80004fe4:	00058c63          	beqz	a1,80004ffc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004fe8:	fd040793          	addi	a5,s0,-48
    80004fec:	009784b3          	add	s1,a5,s1
    80004ff0:	02d00793          	li	a5,45
    80004ff4:	fef48823          	sb	a5,-16(s1)
    80004ff8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004ffc:	fff4849b          	addiw	s1,s1,-1
    80005000:	0204c463          	bltz	s1,80005028 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005004:	fd040793          	addi	a5,s0,-48
    80005008:	009787b3          	add	a5,a5,s1
    8000500c:	ff07c503          	lbu	a0,-16(a5)
    80005010:	ffffc097          	auipc	ra,0xffffc
    80005014:	558080e7          	jalr	1368(ra) # 80001568 <putc>
    80005018:	fe5ff06f          	j	80004ffc <_Z8printIntiii+0xbc>
        x = -xx;
    8000501c:	4090053b          	negw	a0,s1
        neg = 1;
    80005020:	00100593          	li	a1,1
        x = -xx;
    80005024:	f7dff06f          	j	80004fa0 <_Z8printIntiii+0x60>

    UNLOCK();
    80005028:	00000613          	li	a2,0
    8000502c:	00100593          	li	a1,1
    80005030:	00006517          	auipc	a0,0x6
    80005034:	5a850513          	addi	a0,a0,1448 # 8000b5d8 <lockPrint>
    80005038:	ffffc097          	auipc	ra,0xffffc
    8000503c:	334080e7          	jalr	820(ra) # 8000136c <copy_and_swap>
    80005040:	fe0514e3          	bnez	a0,80005028 <_Z8printIntiii+0xe8>
    80005044:	03813083          	ld	ra,56(sp)
    80005048:	03013403          	ld	s0,48(sp)
    8000504c:	02813483          	ld	s1,40(sp)
    80005050:	02013903          	ld	s2,32(sp)
    80005054:	01813983          	ld	s3,24(sp)
    80005058:	04010113          	addi	sp,sp,64
    8000505c:	00008067          	ret

0000000080005060 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005060:	fd010113          	addi	sp,sp,-48
    80005064:	02113423          	sd	ra,40(sp)
    80005068:	02813023          	sd	s0,32(sp)
    8000506c:	00913c23          	sd	s1,24(sp)
    80005070:	01213823          	sd	s2,16(sp)
    80005074:	01313423          	sd	s3,8(sp)
    80005078:	03010413          	addi	s0,sp,48
    8000507c:	00050493          	mv	s1,a0
    80005080:	00058913          	mv	s2,a1
    80005084:	0015879b          	addiw	a5,a1,1
    80005088:	0007851b          	sext.w	a0,a5
    8000508c:	00f4a023          	sw	a5,0(s1)
    80005090:	0004a823          	sw	zero,16(s1)
    80005094:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005098:	00251513          	slli	a0,a0,0x2
    8000509c:	ffffc097          	auipc	ra,0xffffc
    800050a0:	504080e7          	jalr	1284(ra) # 800015a0 <mem_alloc>
    800050a4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800050a8:	01000513          	li	a0,16
    800050ac:	ffffd097          	auipc	ra,0xffffd
    800050b0:	ec0080e7          	jalr	-320(ra) # 80001f6c <_Znwm>
    800050b4:	00050993          	mv	s3,a0
    800050b8:	00000593          	li	a1,0
    800050bc:	ffffd097          	auipc	ra,0xffffd
    800050c0:	194080e7          	jalr	404(ra) # 80002250 <_ZN9SemaphoreC1Ej>
    800050c4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800050c8:	01000513          	li	a0,16
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	ea0080e7          	jalr	-352(ra) # 80001f6c <_Znwm>
    800050d4:	00050993          	mv	s3,a0
    800050d8:	00090593          	mv	a1,s2
    800050dc:	ffffd097          	auipc	ra,0xffffd
    800050e0:	174080e7          	jalr	372(ra) # 80002250 <_ZN9SemaphoreC1Ej>
    800050e4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800050e8:	01000513          	li	a0,16
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	e80080e7          	jalr	-384(ra) # 80001f6c <_Znwm>
    800050f4:	00050913          	mv	s2,a0
    800050f8:	00100593          	li	a1,1
    800050fc:	ffffd097          	auipc	ra,0xffffd
    80005100:	154080e7          	jalr	340(ra) # 80002250 <_ZN9SemaphoreC1Ej>
    80005104:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005108:	01000513          	li	a0,16
    8000510c:	ffffd097          	auipc	ra,0xffffd
    80005110:	e60080e7          	jalr	-416(ra) # 80001f6c <_Znwm>
    80005114:	00050913          	mv	s2,a0
    80005118:	00100593          	li	a1,1
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	134080e7          	jalr	308(ra) # 80002250 <_ZN9SemaphoreC1Ej>
    80005124:	0324b823          	sd	s2,48(s1)
}
    80005128:	02813083          	ld	ra,40(sp)
    8000512c:	02013403          	ld	s0,32(sp)
    80005130:	01813483          	ld	s1,24(sp)
    80005134:	01013903          	ld	s2,16(sp)
    80005138:	00813983          	ld	s3,8(sp)
    8000513c:	03010113          	addi	sp,sp,48
    80005140:	00008067          	ret
    80005144:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005148:	00098513          	mv	a0,s3
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	e70080e7          	jalr	-400(ra) # 80001fbc <_ZdlPv>
    80005154:	00048513          	mv	a0,s1
    80005158:	00007097          	auipc	ra,0x7
    8000515c:	560080e7          	jalr	1376(ra) # 8000c6b8 <_Unwind_Resume>
    80005160:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005164:	00098513          	mv	a0,s3
    80005168:	ffffd097          	auipc	ra,0xffffd
    8000516c:	e54080e7          	jalr	-428(ra) # 80001fbc <_ZdlPv>
    80005170:	00048513          	mv	a0,s1
    80005174:	00007097          	auipc	ra,0x7
    80005178:	544080e7          	jalr	1348(ra) # 8000c6b8 <_Unwind_Resume>
    8000517c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005180:	00090513          	mv	a0,s2
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	e38080e7          	jalr	-456(ra) # 80001fbc <_ZdlPv>
    8000518c:	00048513          	mv	a0,s1
    80005190:	00007097          	auipc	ra,0x7
    80005194:	528080e7          	jalr	1320(ra) # 8000c6b8 <_Unwind_Resume>
    80005198:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000519c:	00090513          	mv	a0,s2
    800051a0:	ffffd097          	auipc	ra,0xffffd
    800051a4:	e1c080e7          	jalr	-484(ra) # 80001fbc <_ZdlPv>
    800051a8:	00048513          	mv	a0,s1
    800051ac:	00007097          	auipc	ra,0x7
    800051b0:	50c080e7          	jalr	1292(ra) # 8000c6b8 <_Unwind_Resume>

00000000800051b4 <_ZN9BufferCPP3putEi>:
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void BufferCPP::put(int val) {
    800051b4:	fe010113          	addi	sp,sp,-32
    800051b8:	00113c23          	sd	ra,24(sp)
    800051bc:	00813823          	sd	s0,16(sp)
    800051c0:	00913423          	sd	s1,8(sp)
    800051c4:	01213023          	sd	s2,0(sp)
    800051c8:	02010413          	addi	s0,sp,32
    800051cc:	00050493          	mv	s1,a0
    800051d0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800051d4:	01853503          	ld	a0,24(a0)
    800051d8:	ffffd097          	auipc	ra,0xffffd
    800051dc:	0b0080e7          	jalr	176(ra) # 80002288 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800051e0:	0304b503          	ld	a0,48(s1)
    800051e4:	ffffd097          	auipc	ra,0xffffd
    800051e8:	0a4080e7          	jalr	164(ra) # 80002288 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800051ec:	0084b783          	ld	a5,8(s1)
    800051f0:	0144a703          	lw	a4,20(s1)
    800051f4:	00271713          	slli	a4,a4,0x2
    800051f8:	00e787b3          	add	a5,a5,a4
    800051fc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005200:	0144a783          	lw	a5,20(s1)
    80005204:	0017879b          	addiw	a5,a5,1
    80005208:	0004a703          	lw	a4,0(s1)
    8000520c:	02e7e7bb          	remw	a5,a5,a4
    80005210:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005214:	0304b503          	ld	a0,48(s1)
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	09c080e7          	jalr	156(ra) # 800022b4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005220:	0204b503          	ld	a0,32(s1)
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	090080e7          	jalr	144(ra) # 800022b4 <_ZN9Semaphore6signalEv>

}
    8000522c:	01813083          	ld	ra,24(sp)
    80005230:	01013403          	ld	s0,16(sp)
    80005234:	00813483          	ld	s1,8(sp)
    80005238:	00013903          	ld	s2,0(sp)
    8000523c:	02010113          	addi	sp,sp,32
    80005240:	00008067          	ret

0000000080005244 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005244:	fe010113          	addi	sp,sp,-32
    80005248:	00113c23          	sd	ra,24(sp)
    8000524c:	00813823          	sd	s0,16(sp)
    80005250:	00913423          	sd	s1,8(sp)
    80005254:	01213023          	sd	s2,0(sp)
    80005258:	02010413          	addi	s0,sp,32
    8000525c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005260:	02053503          	ld	a0,32(a0)
    80005264:	ffffd097          	auipc	ra,0xffffd
    80005268:	024080e7          	jalr	36(ra) # 80002288 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000526c:	0284b503          	ld	a0,40(s1)
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	018080e7          	jalr	24(ra) # 80002288 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005278:	0084b703          	ld	a4,8(s1)
    8000527c:	0104a783          	lw	a5,16(s1)
    80005280:	00279693          	slli	a3,a5,0x2
    80005284:	00d70733          	add	a4,a4,a3
    80005288:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000528c:	0017879b          	addiw	a5,a5,1
    80005290:	0004a703          	lw	a4,0(s1)
    80005294:	02e7e7bb          	remw	a5,a5,a4
    80005298:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000529c:	0284b503          	ld	a0,40(s1)
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	014080e7          	jalr	20(ra) # 800022b4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800052a8:	0184b503          	ld	a0,24(s1)
    800052ac:	ffffd097          	auipc	ra,0xffffd
    800052b0:	008080e7          	jalr	8(ra) # 800022b4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800052b4:	00090513          	mv	a0,s2
    800052b8:	01813083          	ld	ra,24(sp)
    800052bc:	01013403          	ld	s0,16(sp)
    800052c0:	00813483          	ld	s1,8(sp)
    800052c4:	00013903          	ld	s2,0(sp)
    800052c8:	02010113          	addi	sp,sp,32
    800052cc:	00008067          	ret

00000000800052d0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800052d0:	fe010113          	addi	sp,sp,-32
    800052d4:	00113c23          	sd	ra,24(sp)
    800052d8:	00813823          	sd	s0,16(sp)
    800052dc:	00913423          	sd	s1,8(sp)
    800052e0:	01213023          	sd	s2,0(sp)
    800052e4:	02010413          	addi	s0,sp,32
    800052e8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800052ec:	02853503          	ld	a0,40(a0)
    800052f0:	ffffd097          	auipc	ra,0xffffd
    800052f4:	f98080e7          	jalr	-104(ra) # 80002288 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800052f8:	0304b503          	ld	a0,48(s1)
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	f8c080e7          	jalr	-116(ra) # 80002288 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005304:	0144a783          	lw	a5,20(s1)
    80005308:	0104a903          	lw	s2,16(s1)
    8000530c:	0327ce63          	blt	a5,s2,80005348 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005310:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005314:	0304b503          	ld	a0,48(s1)
    80005318:	ffffd097          	auipc	ra,0xffffd
    8000531c:	f9c080e7          	jalr	-100(ra) # 800022b4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005320:	0284b503          	ld	a0,40(s1)
    80005324:	ffffd097          	auipc	ra,0xffffd
    80005328:	f90080e7          	jalr	-112(ra) # 800022b4 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000532c:	00090513          	mv	a0,s2
    80005330:	01813083          	ld	ra,24(sp)
    80005334:	01013403          	ld	s0,16(sp)
    80005338:	00813483          	ld	s1,8(sp)
    8000533c:	00013903          	ld	s2,0(sp)
    80005340:	02010113          	addi	sp,sp,32
    80005344:	00008067          	ret
        ret = cap - head + tail;
    80005348:	0004a703          	lw	a4,0(s1)
    8000534c:	4127093b          	subw	s2,a4,s2
    80005350:	00f9093b          	addw	s2,s2,a5
    80005354:	fc1ff06f          	j	80005314 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005358 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005358:	fe010113          	addi	sp,sp,-32
    8000535c:	00113c23          	sd	ra,24(sp)
    80005360:	00813823          	sd	s0,16(sp)
    80005364:	00913423          	sd	s1,8(sp)
    80005368:	02010413          	addi	s0,sp,32
    8000536c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005370:	00a00513          	li	a0,10
    80005374:	ffffd097          	auipc	ra,0xffffd
    80005378:	f94080e7          	jalr	-108(ra) # 80002308 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000537c:	00004517          	auipc	a0,0x4
    80005380:	fd450513          	addi	a0,a0,-44 # 80009350 <CONSOLE_STATUS+0x340>
    80005384:	00000097          	auipc	ra,0x0
    80005388:	a0c080e7          	jalr	-1524(ra) # 80004d90 <_Z11printStringPKc>
    while (getCnt()) {
    8000538c:	00048513          	mv	a0,s1
    80005390:	00000097          	auipc	ra,0x0
    80005394:	f40080e7          	jalr	-192(ra) # 800052d0 <_ZN9BufferCPP6getCntEv>
    80005398:	02050c63          	beqz	a0,800053d0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000539c:	0084b783          	ld	a5,8(s1)
    800053a0:	0104a703          	lw	a4,16(s1)
    800053a4:	00271713          	slli	a4,a4,0x2
    800053a8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800053ac:	0007c503          	lbu	a0,0(a5)
    800053b0:	ffffd097          	auipc	ra,0xffffd
    800053b4:	f58080e7          	jalr	-168(ra) # 80002308 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800053b8:	0104a783          	lw	a5,16(s1)
    800053bc:	0017879b          	addiw	a5,a5,1
    800053c0:	0004a703          	lw	a4,0(s1)
    800053c4:	02e7e7bb          	remw	a5,a5,a4
    800053c8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800053cc:	fc1ff06f          	j	8000538c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800053d0:	02100513          	li	a0,33
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	f34080e7          	jalr	-204(ra) # 80002308 <_ZN7Console4putcEc>
    Console::putc('\n');
    800053dc:	00a00513          	li	a0,10
    800053e0:	ffffd097          	auipc	ra,0xffffd
    800053e4:	f28080e7          	jalr	-216(ra) # 80002308 <_ZN7Console4putcEc>
    mem_free(buffer);
    800053e8:	0084b503          	ld	a0,8(s1)
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	2ec080e7          	jalr	748(ra) # 800016d8 <mem_free>
    delete itemAvailable;
    800053f4:	0204b503          	ld	a0,32(s1)
    800053f8:	00050863          	beqz	a0,80005408 <_ZN9BufferCPPD1Ev+0xb0>
    800053fc:	00053783          	ld	a5,0(a0)
    80005400:	0087b783          	ld	a5,8(a5)
    80005404:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005408:	0184b503          	ld	a0,24(s1)
    8000540c:	00050863          	beqz	a0,8000541c <_ZN9BufferCPPD1Ev+0xc4>
    80005410:	00053783          	ld	a5,0(a0)
    80005414:	0087b783          	ld	a5,8(a5)
    80005418:	000780e7          	jalr	a5
    delete mutexTail;
    8000541c:	0304b503          	ld	a0,48(s1)
    80005420:	00050863          	beqz	a0,80005430 <_ZN9BufferCPPD1Ev+0xd8>
    80005424:	00053783          	ld	a5,0(a0)
    80005428:	0087b783          	ld	a5,8(a5)
    8000542c:	000780e7          	jalr	a5
    delete mutexHead;
    80005430:	0284b503          	ld	a0,40(s1)
    80005434:	00050863          	beqz	a0,80005444 <_ZN9BufferCPPD1Ev+0xec>
    80005438:	00053783          	ld	a5,0(a0)
    8000543c:	0087b783          	ld	a5,8(a5)
    80005440:	000780e7          	jalr	a5
}
    80005444:	01813083          	ld	ra,24(sp)
    80005448:	01013403          	ld	s0,16(sp)
    8000544c:	00813483          	ld	s1,8(sp)
    80005450:	02010113          	addi	sp,sp,32
    80005454:	00008067          	ret

0000000080005458 <_Z8userMainv>:

#endif

//#include "../h/syscall_cpp.hpp"

void userMain() {
    80005458:	fe010113          	addi	sp,sp,-32
    8000545c:	00113c23          	sd	ra,24(sp)
    80005460:	00813823          	sd	s0,16(sp)
    80005464:	00913423          	sd	s1,8(sp)
    80005468:	01213023          	sd	s2,0(sp)
    8000546c:	02010413          	addi	s0,sp,32

      printString("Unesite broj testa? [1-7]\n");
    80005470:	00004517          	auipc	a0,0x4
    80005474:	ef850513          	addi	a0,a0,-264 # 80009368 <CONSOLE_STATUS+0x358>
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	918080e7          	jalr	-1768(ra) # 80004d90 <_Z11printStringPKc>
      int test = getc() - '0';
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	0ac080e7          	jalr	172(ra) # 8000152c <getc>
    80005488:	00050913          	mv	s2,a0
    8000548c:	fd05049b          	addiw	s1,a0,-48
      getc(); // Enter posle broja
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	09c080e7          	jalr	156(ra) # 8000152c <getc>
              printString("Nije navedeno da je zadatak 3 implementiran\n");
              return;
          }
      }

      if (test >= 5 && test <= 6) {
    80005498:	fcb9091b          	addiw	s2,s2,-53
    8000549c:	00100793          	li	a5,1
    800054a0:	0327f463          	bgeu	a5,s2,800054c8 <_Z8userMainv+0x70>
              printString("Nije navedeno da je zadatak 4 implementiran\n");
              return;
          }
      }

      switch (test) {
    800054a4:	00700793          	li	a5,7
    800054a8:	0e97e263          	bltu	a5,s1,8000558c <_Z8userMainv+0x134>
    800054ac:	00249493          	slli	s1,s1,0x2
    800054b0:	00004717          	auipc	a4,0x4
    800054b4:	0d070713          	addi	a4,a4,208 # 80009580 <CONSOLE_STATUS+0x570>
    800054b8:	00e484b3          	add	s1,s1,a4
    800054bc:	0004a783          	lw	a5,0(s1)
    800054c0:	00e787b3          	add	a5,a5,a4
    800054c4:	00078067          	jr	a5
              printString("Nije navedeno da je zadatak 4 implementiran\n");
    800054c8:	00004517          	auipc	a0,0x4
    800054cc:	ec050513          	addi	a0,a0,-320 # 80009388 <CONSOLE_STATUS+0x378>
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	8c0080e7          	jalr	-1856(ra) # 80004d90 <_Z11printStringPKc>
          default:
              printString("Niste uneli odgovarajuci broj za test\n");
      }


    800054d8:	01813083          	ld	ra,24(sp)
    800054dc:	01013403          	ld	s0,16(sp)
    800054e0:	00813483          	ld	s1,8(sp)
    800054e4:	00013903          	ld	s2,0(sp)
    800054e8:	02010113          	addi	sp,sp,32
    800054ec:	00008067          	ret
              Threads_C_API_test();
    800054f0:	fffff097          	auipc	ra,0xfffff
    800054f4:	f18080e7          	jalr	-232(ra) # 80004408 <_Z18Threads_C_API_testv>
              printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800054f8:	00004517          	auipc	a0,0x4
    800054fc:	ec050513          	addi	a0,a0,-320 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005500:	00000097          	auipc	ra,0x0
    80005504:	890080e7          	jalr	-1904(ra) # 80004d90 <_Z11printStringPKc>
              break;
    80005508:	fd1ff06f          	j	800054d8 <_Z8userMainv+0x80>
              Threads_CPP_API_test();
    8000550c:	ffffe097          	auipc	ra,0xffffe
    80005510:	ddc080e7          	jalr	-548(ra) # 800032e8 <_Z20Threads_CPP_API_testv>
              printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005514:	00004517          	auipc	a0,0x4
    80005518:	ee450513          	addi	a0,a0,-284 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000551c:	00000097          	auipc	ra,0x0
    80005520:	874080e7          	jalr	-1932(ra) # 80004d90 <_Z11printStringPKc>
              break;
    80005524:	fb5ff06f          	j	800054d8 <_Z8userMainv+0x80>
              producerConsumer_C_API();
    80005528:	ffffd097          	auipc	ra,0xffffd
    8000552c:	614080e7          	jalr	1556(ra) # 80002b3c <_Z22producerConsumer_C_APIv>
              printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005530:	00004517          	auipc	a0,0x4
    80005534:	f0850513          	addi	a0,a0,-248 # 80009438 <CONSOLE_STATUS+0x428>
    80005538:	00000097          	auipc	ra,0x0
    8000553c:	858080e7          	jalr	-1960(ra) # 80004d90 <_Z11printStringPKc>
              break;
    80005540:	f99ff06f          	j	800054d8 <_Z8userMainv+0x80>
              producerConsumer_CPP_Sync_API();
    80005544:	fffff097          	auipc	ra,0xfffff
    80005548:	208080e7          	jalr	520(ra) # 8000474c <_Z29producerConsumer_CPP_Sync_APIv>
              printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000554c:	00004517          	auipc	a0,0x4
    80005550:	f3c50513          	addi	a0,a0,-196 # 80009488 <CONSOLE_STATUS+0x478>
    80005554:	00000097          	auipc	ra,0x0
    80005558:	83c080e7          	jalr	-1988(ra) # 80004d90 <_Z11printStringPKc>
              break;
    8000555c:	f7dff06f          	j	800054d8 <_Z8userMainv+0x80>
              System_Mode_test();
    80005560:	00000097          	auipc	ra,0x0
    80005564:	658080e7          	jalr	1624(ra) # 80005bb8 <_Z16System_Mode_testv>
              printString("Test se nije uspesno zavrsio\n");
    80005568:	00004517          	auipc	a0,0x4
    8000556c:	f7850513          	addi	a0,a0,-136 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005570:	00000097          	auipc	ra,0x0
    80005574:	820080e7          	jalr	-2016(ra) # 80004d90 <_Z11printStringPKc>
              printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005578:	00004517          	auipc	a0,0x4
    8000557c:	f8850513          	addi	a0,a0,-120 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005580:	00000097          	auipc	ra,0x0
    80005584:	810080e7          	jalr	-2032(ra) # 80004d90 <_Z11printStringPKc>
              break;
    80005588:	f51ff06f          	j	800054d8 <_Z8userMainv+0x80>
              printString("Niste uneli odgovarajuci broj za test\n");
    8000558c:	00004517          	auipc	a0,0x4
    80005590:	fcc50513          	addi	a0,a0,-52 # 80009558 <CONSOLE_STATUS+0x548>
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	7fc080e7          	jalr	2044(ra) # 80004d90 <_Z11printStringPKc>
    8000559c:	f3dff06f          	j	800054d8 <_Z8userMainv+0x80>

00000000800055a0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800055a0:	fe010113          	addi	sp,sp,-32
    800055a4:	00113c23          	sd	ra,24(sp)
    800055a8:	00813823          	sd	s0,16(sp)
    800055ac:	00913423          	sd	s1,8(sp)
    800055b0:	01213023          	sd	s2,0(sp)
    800055b4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800055b8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800055bc:	00600493          	li	s1,6
    while (--i > 0) {
    800055c0:	fff4849b          	addiw	s1,s1,-1
    800055c4:	04905463          	blez	s1,8000560c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800055c8:	00004517          	auipc	a0,0x4
    800055cc:	fd850513          	addi	a0,a0,-40 # 800095a0 <CONSOLE_STATUS+0x590>
    800055d0:	fffff097          	auipc	ra,0xfffff
    800055d4:	7c0080e7          	jalr	1984(ra) # 80004d90 <_Z11printStringPKc>
        printInt(sleep_time);
    800055d8:	00000613          	li	a2,0
    800055dc:	00a00593          	li	a1,10
    800055e0:	0009051b          	sext.w	a0,s2
    800055e4:	00000097          	auipc	ra,0x0
    800055e8:	95c080e7          	jalr	-1700(ra) # 80004f40 <_Z8printIntiii>
        printString(" !\n");
    800055ec:	00004517          	auipc	a0,0x4
    800055f0:	fbc50513          	addi	a0,a0,-68 # 800095a8 <CONSOLE_STATUS+0x598>
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	79c080e7          	jalr	1948(ra) # 80004d90 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800055fc:	00090513          	mv	a0,s2
    80005600:	ffffc097          	auipc	ra,0xffffc
    80005604:	108080e7          	jalr	264(ra) # 80001708 <time_sleep>
    while (--i > 0) {
    80005608:	fb9ff06f          	j	800055c0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000560c:	00a00793          	li	a5,10
    80005610:	02f95933          	divu	s2,s2,a5
    80005614:	fff90913          	addi	s2,s2,-1
    80005618:	00006797          	auipc	a5,0x6
    8000561c:	fc878793          	addi	a5,a5,-56 # 8000b5e0 <_ZL8finished>
    80005620:	01278933          	add	s2,a5,s2
    80005624:	00100793          	li	a5,1
    80005628:	00f90023          	sb	a5,0(s2)
}
    8000562c:	01813083          	ld	ra,24(sp)
    80005630:	01013403          	ld	s0,16(sp)
    80005634:	00813483          	ld	s1,8(sp)
    80005638:	00013903          	ld	s2,0(sp)
    8000563c:	02010113          	addi	sp,sp,32
    80005640:	00008067          	ret

0000000080005644 <_Z12testSleepingv>:

void testSleeping() {
    80005644:	fc010113          	addi	sp,sp,-64
    80005648:	02113c23          	sd	ra,56(sp)
    8000564c:	02813823          	sd	s0,48(sp)
    80005650:	02913423          	sd	s1,40(sp)
    80005654:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005658:	00a00793          	li	a5,10
    8000565c:	fcf43823          	sd	a5,-48(s0)
    80005660:	01400793          	li	a5,20
    80005664:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005668:	00000493          	li	s1,0
    8000566c:	02c0006f          	j	80005698 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005670:	00349793          	slli	a5,s1,0x3
    80005674:	fd040613          	addi	a2,s0,-48
    80005678:	00f60633          	add	a2,a2,a5
    8000567c:	00000597          	auipc	a1,0x0
    80005680:	f2458593          	addi	a1,a1,-220 # 800055a0 <_ZL9sleepyRunPv>
    80005684:	fc040513          	addi	a0,s0,-64
    80005688:	00f50533          	add	a0,a0,a5
    8000568c:	ffffc097          	auipc	ra,0xffffc
    80005690:	f54080e7          	jalr	-172(ra) # 800015e0 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005694:	0014849b          	addiw	s1,s1,1
    80005698:	00100793          	li	a5,1
    8000569c:	fc97dae3          	bge	a5,s1,80005670 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800056a0:	00006797          	auipc	a5,0x6
    800056a4:	f407c783          	lbu	a5,-192(a5) # 8000b5e0 <_ZL8finished>
    800056a8:	fe078ce3          	beqz	a5,800056a0 <_Z12testSleepingv+0x5c>
    800056ac:	00006797          	auipc	a5,0x6
    800056b0:	f357c783          	lbu	a5,-203(a5) # 8000b5e1 <_ZL8finished+0x1>
    800056b4:	fe0786e3          	beqz	a5,800056a0 <_Z12testSleepingv+0x5c>
}
    800056b8:	03813083          	ld	ra,56(sp)
    800056bc:	03013403          	ld	s0,48(sp)
    800056c0:	02813483          	ld	s1,40(sp)
    800056c4:	04010113          	addi	sp,sp,64
    800056c8:	00008067          	ret

00000000800056cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800056cc:	fe010113          	addi	sp,sp,-32
    800056d0:	00113c23          	sd	ra,24(sp)
    800056d4:	00813823          	sd	s0,16(sp)
    800056d8:	00913423          	sd	s1,8(sp)
    800056dc:	01213023          	sd	s2,0(sp)
    800056e0:	02010413          	addi	s0,sp,32
    800056e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800056e8:	00100793          	li	a5,1
    800056ec:	02a7f863          	bgeu	a5,a0,8000571c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800056f0:	00a00793          	li	a5,10
    800056f4:	02f577b3          	remu	a5,a0,a5
    800056f8:	02078e63          	beqz	a5,80005734 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800056fc:	fff48513          	addi	a0,s1,-1
    80005700:	00000097          	auipc	ra,0x0
    80005704:	fcc080e7          	jalr	-52(ra) # 800056cc <_ZL9fibonaccim>
    80005708:	00050913          	mv	s2,a0
    8000570c:	ffe48513          	addi	a0,s1,-2
    80005710:	00000097          	auipc	ra,0x0
    80005714:	fbc080e7          	jalr	-68(ra) # 800056cc <_ZL9fibonaccim>
    80005718:	00a90533          	add	a0,s2,a0
}
    8000571c:	01813083          	ld	ra,24(sp)
    80005720:	01013403          	ld	s0,16(sp)
    80005724:	00813483          	ld	s1,8(sp)
    80005728:	00013903          	ld	s2,0(sp)
    8000572c:	02010113          	addi	sp,sp,32
    80005730:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	c84080e7          	jalr	-892(ra) # 800013b8 <thread_dispatch>
    8000573c:	fc1ff06f          	j	800056fc <_ZL9fibonaccim+0x30>

0000000080005740 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005740:	fe010113          	addi	sp,sp,-32
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00813823          	sd	s0,16(sp)
    8000574c:	00913423          	sd	s1,8(sp)
    80005750:	01213023          	sd	s2,0(sp)
    80005754:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005758:	00a00493          	li	s1,10
    8000575c:	0400006f          	j	8000579c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005760:	00004517          	auipc	a0,0x4
    80005764:	b5850513          	addi	a0,a0,-1192 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005768:	fffff097          	auipc	ra,0xfffff
    8000576c:	628080e7          	jalr	1576(ra) # 80004d90 <_Z11printStringPKc>
    80005770:	00000613          	li	a2,0
    80005774:	00a00593          	li	a1,10
    80005778:	00048513          	mv	a0,s1
    8000577c:	fffff097          	auipc	ra,0xfffff
    80005780:	7c4080e7          	jalr	1988(ra) # 80004f40 <_Z8printIntiii>
    80005784:	00004517          	auipc	a0,0x4
    80005788:	d5450513          	addi	a0,a0,-684 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000578c:	fffff097          	auipc	ra,0xfffff
    80005790:	604080e7          	jalr	1540(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005794:	0014849b          	addiw	s1,s1,1
    80005798:	0ff4f493          	andi	s1,s1,255
    8000579c:	00c00793          	li	a5,12
    800057a0:	fc97f0e3          	bgeu	a5,s1,80005760 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800057a4:	00004517          	auipc	a0,0x4
    800057a8:	b1c50513          	addi	a0,a0,-1252 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800057ac:	fffff097          	auipc	ra,0xfffff
    800057b0:	5e4080e7          	jalr	1508(ra) # 80004d90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800057b4:	00500313          	li	t1,5
    thread_dispatch();
    800057b8:	ffffc097          	auipc	ra,0xffffc
    800057bc:	c00080e7          	jalr	-1024(ra) # 800013b8 <thread_dispatch>

    uint64 result = fibonacci(16);
    800057c0:	01000513          	li	a0,16
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	f08080e7          	jalr	-248(ra) # 800056cc <_ZL9fibonaccim>
    800057cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800057d0:	00004517          	auipc	a0,0x4
    800057d4:	b0050513          	addi	a0,a0,-1280 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800057d8:	fffff097          	auipc	ra,0xfffff
    800057dc:	5b8080e7          	jalr	1464(ra) # 80004d90 <_Z11printStringPKc>
    800057e0:	00000613          	li	a2,0
    800057e4:	00a00593          	li	a1,10
    800057e8:	0009051b          	sext.w	a0,s2
    800057ec:	fffff097          	auipc	ra,0xfffff
    800057f0:	754080e7          	jalr	1876(ra) # 80004f40 <_Z8printIntiii>
    800057f4:	00004517          	auipc	a0,0x4
    800057f8:	ce450513          	addi	a0,a0,-796 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800057fc:	fffff097          	auipc	ra,0xfffff
    80005800:	594080e7          	jalr	1428(ra) # 80004d90 <_Z11printStringPKc>
    80005804:	0400006f          	j	80005844 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005808:	00004517          	auipc	a0,0x4
    8000580c:	ab050513          	addi	a0,a0,-1360 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005810:	fffff097          	auipc	ra,0xfffff
    80005814:	580080e7          	jalr	1408(ra) # 80004d90 <_Z11printStringPKc>
    80005818:	00000613          	li	a2,0
    8000581c:	00a00593          	li	a1,10
    80005820:	00048513          	mv	a0,s1
    80005824:	fffff097          	auipc	ra,0xfffff
    80005828:	71c080e7          	jalr	1820(ra) # 80004f40 <_Z8printIntiii>
    8000582c:	00004517          	auipc	a0,0x4
    80005830:	cac50513          	addi	a0,a0,-852 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005834:	fffff097          	auipc	ra,0xfffff
    80005838:	55c080e7          	jalr	1372(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000583c:	0014849b          	addiw	s1,s1,1
    80005840:	0ff4f493          	andi	s1,s1,255
    80005844:	00f00793          	li	a5,15
    80005848:	fc97f0e3          	bgeu	a5,s1,80005808 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000584c:	00004517          	auipc	a0,0x4
    80005850:	a9450513          	addi	a0,a0,-1388 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005854:	fffff097          	auipc	ra,0xfffff
    80005858:	53c080e7          	jalr	1340(ra) # 80004d90 <_Z11printStringPKc>
    finishedD = true;
    8000585c:	00100793          	li	a5,1
    80005860:	00006717          	auipc	a4,0x6
    80005864:	d8f70123          	sb	a5,-638(a4) # 8000b5e2 <_ZL9finishedD>
    thread_dispatch();
    80005868:	ffffc097          	auipc	ra,0xffffc
    8000586c:	b50080e7          	jalr	-1200(ra) # 800013b8 <thread_dispatch>
}
    80005870:	01813083          	ld	ra,24(sp)
    80005874:	01013403          	ld	s0,16(sp)
    80005878:	00813483          	ld	s1,8(sp)
    8000587c:	00013903          	ld	s2,0(sp)
    80005880:	02010113          	addi	sp,sp,32
    80005884:	00008067          	ret

0000000080005888 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005888:	fe010113          	addi	sp,sp,-32
    8000588c:	00113c23          	sd	ra,24(sp)
    80005890:	00813823          	sd	s0,16(sp)
    80005894:	00913423          	sd	s1,8(sp)
    80005898:	01213023          	sd	s2,0(sp)
    8000589c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800058a0:	00000493          	li	s1,0
    800058a4:	0400006f          	j	800058e4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800058a8:	00004517          	auipc	a0,0x4
    800058ac:	9e050513          	addi	a0,a0,-1568 # 80009288 <CONSOLE_STATUS+0x278>
    800058b0:	fffff097          	auipc	ra,0xfffff
    800058b4:	4e0080e7          	jalr	1248(ra) # 80004d90 <_Z11printStringPKc>
    800058b8:	00000613          	li	a2,0
    800058bc:	00a00593          	li	a1,10
    800058c0:	00048513          	mv	a0,s1
    800058c4:	fffff097          	auipc	ra,0xfffff
    800058c8:	67c080e7          	jalr	1660(ra) # 80004f40 <_Z8printIntiii>
    800058cc:	00004517          	auipc	a0,0x4
    800058d0:	c0c50513          	addi	a0,a0,-1012 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800058d4:	fffff097          	auipc	ra,0xfffff
    800058d8:	4bc080e7          	jalr	1212(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800058dc:	0014849b          	addiw	s1,s1,1
    800058e0:	0ff4f493          	andi	s1,s1,255
    800058e4:	00200793          	li	a5,2
    800058e8:	fc97f0e3          	bgeu	a5,s1,800058a8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800058ec:	00004517          	auipc	a0,0x4
    800058f0:	9a450513          	addi	a0,a0,-1628 # 80009290 <CONSOLE_STATUS+0x280>
    800058f4:	fffff097          	auipc	ra,0xfffff
    800058f8:	49c080e7          	jalr	1180(ra) # 80004d90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800058fc:	00700313          	li	t1,7
    thread_dispatch();
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	ab8080e7          	jalr	-1352(ra) # 800013b8 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005908:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	99450513          	addi	a0,a0,-1644 # 800092a0 <CONSOLE_STATUS+0x290>
    80005914:	fffff097          	auipc	ra,0xfffff
    80005918:	47c080e7          	jalr	1148(ra) # 80004d90 <_Z11printStringPKc>
    8000591c:	00000613          	li	a2,0
    80005920:	00a00593          	li	a1,10
    80005924:	0009051b          	sext.w	a0,s2
    80005928:	fffff097          	auipc	ra,0xfffff
    8000592c:	618080e7          	jalr	1560(ra) # 80004f40 <_Z8printIntiii>
    80005930:	00004517          	auipc	a0,0x4
    80005934:	ba850513          	addi	a0,a0,-1112 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005938:	fffff097          	auipc	ra,0xfffff
    8000593c:	458080e7          	jalr	1112(ra) # 80004d90 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005940:	00c00513          	li	a0,12
    80005944:	00000097          	auipc	ra,0x0
    80005948:	d88080e7          	jalr	-632(ra) # 800056cc <_ZL9fibonaccim>
    8000594c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005950:	00004517          	auipc	a0,0x4
    80005954:	95850513          	addi	a0,a0,-1704 # 800092a8 <CONSOLE_STATUS+0x298>
    80005958:	fffff097          	auipc	ra,0xfffff
    8000595c:	438080e7          	jalr	1080(ra) # 80004d90 <_Z11printStringPKc>
    80005960:	00000613          	li	a2,0
    80005964:	00a00593          	li	a1,10
    80005968:	0009051b          	sext.w	a0,s2
    8000596c:	fffff097          	auipc	ra,0xfffff
    80005970:	5d4080e7          	jalr	1492(ra) # 80004f40 <_Z8printIntiii>
    80005974:	00004517          	auipc	a0,0x4
    80005978:	b6450513          	addi	a0,a0,-1180 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000597c:	fffff097          	auipc	ra,0xfffff
    80005980:	414080e7          	jalr	1044(ra) # 80004d90 <_Z11printStringPKc>
    80005984:	0400006f          	j	800059c4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005988:	00004517          	auipc	a0,0x4
    8000598c:	90050513          	addi	a0,a0,-1792 # 80009288 <CONSOLE_STATUS+0x278>
    80005990:	fffff097          	auipc	ra,0xfffff
    80005994:	400080e7          	jalr	1024(ra) # 80004d90 <_Z11printStringPKc>
    80005998:	00000613          	li	a2,0
    8000599c:	00a00593          	li	a1,10
    800059a0:	00048513          	mv	a0,s1
    800059a4:	fffff097          	auipc	ra,0xfffff
    800059a8:	59c080e7          	jalr	1436(ra) # 80004f40 <_Z8printIntiii>
    800059ac:	00004517          	auipc	a0,0x4
    800059b0:	b2c50513          	addi	a0,a0,-1236 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800059b4:	fffff097          	auipc	ra,0xfffff
    800059b8:	3dc080e7          	jalr	988(ra) # 80004d90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800059bc:	0014849b          	addiw	s1,s1,1
    800059c0:	0ff4f493          	andi	s1,s1,255
    800059c4:	00500793          	li	a5,5
    800059c8:	fc97f0e3          	bgeu	a5,s1,80005988 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800059cc:	00004517          	auipc	a0,0x4
    800059d0:	89450513          	addi	a0,a0,-1900 # 80009260 <CONSOLE_STATUS+0x250>
    800059d4:	fffff097          	auipc	ra,0xfffff
    800059d8:	3bc080e7          	jalr	956(ra) # 80004d90 <_Z11printStringPKc>
    finishedC = true;
    800059dc:	00100793          	li	a5,1
    800059e0:	00006717          	auipc	a4,0x6
    800059e4:	c0f701a3          	sb	a5,-1021(a4) # 8000b5e3 <_ZL9finishedC>
    thread_dispatch();
    800059e8:	ffffc097          	auipc	ra,0xffffc
    800059ec:	9d0080e7          	jalr	-1584(ra) # 800013b8 <thread_dispatch>
}
    800059f0:	01813083          	ld	ra,24(sp)
    800059f4:	01013403          	ld	s0,16(sp)
    800059f8:	00813483          	ld	s1,8(sp)
    800059fc:	00013903          	ld	s2,0(sp)
    80005a00:	02010113          	addi	sp,sp,32
    80005a04:	00008067          	ret

0000000080005a08 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005a08:	fe010113          	addi	sp,sp,-32
    80005a0c:	00113c23          	sd	ra,24(sp)
    80005a10:	00813823          	sd	s0,16(sp)
    80005a14:	00913423          	sd	s1,8(sp)
    80005a18:	01213023          	sd	s2,0(sp)
    80005a1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005a20:	00000913          	li	s2,0
    80005a24:	0400006f          	j	80005a64 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	990080e7          	jalr	-1648(ra) # 800013b8 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005a30:	00148493          	addi	s1,s1,1
    80005a34:	000027b7          	lui	a5,0x2
    80005a38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a3c:	0097ee63          	bltu	a5,s1,80005a58 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a40:	00000713          	li	a4,0
    80005a44:	000077b7          	lui	a5,0x7
    80005a48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a4c:	fce7eee3          	bltu	a5,a4,80005a28 <_ZL11workerBodyBPv+0x20>
    80005a50:	00170713          	addi	a4,a4,1
    80005a54:	ff1ff06f          	j	80005a44 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005a58:	00a00793          	li	a5,10
    80005a5c:	04f90663          	beq	s2,a5,80005aa8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005a60:	00190913          	addi	s2,s2,1
    80005a64:	00f00793          	li	a5,15
    80005a68:	0527e463          	bltu	a5,s2,80005ab0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005a6c:	00004517          	auipc	a0,0x4
    80005a70:	80450513          	addi	a0,a0,-2044 # 80009270 <CONSOLE_STATUS+0x260>
    80005a74:	fffff097          	auipc	ra,0xfffff
    80005a78:	31c080e7          	jalr	796(ra) # 80004d90 <_Z11printStringPKc>
    80005a7c:	00000613          	li	a2,0
    80005a80:	00a00593          	li	a1,10
    80005a84:	0009051b          	sext.w	a0,s2
    80005a88:	fffff097          	auipc	ra,0xfffff
    80005a8c:	4b8080e7          	jalr	1208(ra) # 80004f40 <_Z8printIntiii>
    80005a90:	00004517          	auipc	a0,0x4
    80005a94:	a4850513          	addi	a0,a0,-1464 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005a98:	fffff097          	auipc	ra,0xfffff
    80005a9c:	2f8080e7          	jalr	760(ra) # 80004d90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005aa0:	00000493          	li	s1,0
    80005aa4:	f91ff06f          	j	80005a34 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005aa8:	14102ff3          	csrr	t6,sepc
    80005aac:	fb5ff06f          	j	80005a60 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005ab0:	00003517          	auipc	a0,0x3
    80005ab4:	7c850513          	addi	a0,a0,1992 # 80009278 <CONSOLE_STATUS+0x268>
    80005ab8:	fffff097          	auipc	ra,0xfffff
    80005abc:	2d8080e7          	jalr	728(ra) # 80004d90 <_Z11printStringPKc>
    finishedB = true;
    80005ac0:	00100793          	li	a5,1
    80005ac4:	00006717          	auipc	a4,0x6
    80005ac8:	b2f70023          	sb	a5,-1248(a4) # 8000b5e4 <_ZL9finishedB>
    thread_dispatch();
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	8ec080e7          	jalr	-1812(ra) # 800013b8 <thread_dispatch>
}
    80005ad4:	01813083          	ld	ra,24(sp)
    80005ad8:	01013403          	ld	s0,16(sp)
    80005adc:	00813483          	ld	s1,8(sp)
    80005ae0:	00013903          	ld	s2,0(sp)
    80005ae4:	02010113          	addi	sp,sp,32
    80005ae8:	00008067          	ret

0000000080005aec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005aec:	fe010113          	addi	sp,sp,-32
    80005af0:	00113c23          	sd	ra,24(sp)
    80005af4:	00813823          	sd	s0,16(sp)
    80005af8:	00913423          	sd	s1,8(sp)
    80005afc:	01213023          	sd	s2,0(sp)
    80005b00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005b04:	00000913          	li	s2,0
    80005b08:	0380006f          	j	80005b40 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	8ac080e7          	jalr	-1876(ra) # 800013b8 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005b14:	00148493          	addi	s1,s1,1
    80005b18:	000027b7          	lui	a5,0x2
    80005b1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005b20:	0097ee63          	bltu	a5,s1,80005b3c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005b24:	00000713          	li	a4,0
    80005b28:	000077b7          	lui	a5,0x7
    80005b2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005b30:	fce7eee3          	bltu	a5,a4,80005b0c <_ZL11workerBodyAPv+0x20>
    80005b34:	00170713          	addi	a4,a4,1
    80005b38:	ff1ff06f          	j	80005b28 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005b3c:	00190913          	addi	s2,s2,1
    80005b40:	00900793          	li	a5,9
    80005b44:	0527e063          	bltu	a5,s2,80005b84 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005b48:	00003517          	auipc	a0,0x3
    80005b4c:	71050513          	addi	a0,a0,1808 # 80009258 <CONSOLE_STATUS+0x248>
    80005b50:	fffff097          	auipc	ra,0xfffff
    80005b54:	240080e7          	jalr	576(ra) # 80004d90 <_Z11printStringPKc>
    80005b58:	00000613          	li	a2,0
    80005b5c:	00a00593          	li	a1,10
    80005b60:	0009051b          	sext.w	a0,s2
    80005b64:	fffff097          	auipc	ra,0xfffff
    80005b68:	3dc080e7          	jalr	988(ra) # 80004f40 <_Z8printIntiii>
    80005b6c:	00004517          	auipc	a0,0x4
    80005b70:	96c50513          	addi	a0,a0,-1684 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005b74:	fffff097          	auipc	ra,0xfffff
    80005b78:	21c080e7          	jalr	540(ra) # 80004d90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005b7c:	00000493          	li	s1,0
    80005b80:	f99ff06f          	j	80005b18 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005b84:	00003517          	auipc	a0,0x3
    80005b88:	6dc50513          	addi	a0,a0,1756 # 80009260 <CONSOLE_STATUS+0x250>
    80005b8c:	fffff097          	auipc	ra,0xfffff
    80005b90:	204080e7          	jalr	516(ra) # 80004d90 <_Z11printStringPKc>
    finishedA = true;
    80005b94:	00100793          	li	a5,1
    80005b98:	00006717          	auipc	a4,0x6
    80005b9c:	a4f706a3          	sb	a5,-1459(a4) # 8000b5e5 <_ZL9finishedA>
}
    80005ba0:	01813083          	ld	ra,24(sp)
    80005ba4:	01013403          	ld	s0,16(sp)
    80005ba8:	00813483          	ld	s1,8(sp)
    80005bac:	00013903          	ld	s2,0(sp)
    80005bb0:	02010113          	addi	sp,sp,32
    80005bb4:	00008067          	ret

0000000080005bb8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005bb8:	fd010113          	addi	sp,sp,-48
    80005bbc:	02113423          	sd	ra,40(sp)
    80005bc0:	02813023          	sd	s0,32(sp)
    80005bc4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005bc8:	00000613          	li	a2,0
    80005bcc:	00000597          	auipc	a1,0x0
    80005bd0:	f2058593          	addi	a1,a1,-224 # 80005aec <_ZL11workerBodyAPv>
    80005bd4:	fd040513          	addi	a0,s0,-48
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	a08080e7          	jalr	-1528(ra) # 800015e0 <thread_create>
    printString("ThreadA created\n");
    80005be0:	00003517          	auipc	a0,0x3
    80005be4:	71050513          	addi	a0,a0,1808 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005be8:	fffff097          	auipc	ra,0xfffff
    80005bec:	1a8080e7          	jalr	424(ra) # 80004d90 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005bf0:	00000613          	li	a2,0
    80005bf4:	00000597          	auipc	a1,0x0
    80005bf8:	e1458593          	addi	a1,a1,-492 # 80005a08 <_ZL11workerBodyBPv>
    80005bfc:	fd840513          	addi	a0,s0,-40
    80005c00:	ffffc097          	auipc	ra,0xffffc
    80005c04:	9e0080e7          	jalr	-1568(ra) # 800015e0 <thread_create>
    printString("ThreadB created\n");
    80005c08:	00003517          	auipc	a0,0x3
    80005c0c:	70050513          	addi	a0,a0,1792 # 80009308 <CONSOLE_STATUS+0x2f8>
    80005c10:	fffff097          	auipc	ra,0xfffff
    80005c14:	180080e7          	jalr	384(ra) # 80004d90 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005c18:	00000613          	li	a2,0
    80005c1c:	00000597          	auipc	a1,0x0
    80005c20:	c6c58593          	addi	a1,a1,-916 # 80005888 <_ZL11workerBodyCPv>
    80005c24:	fe040513          	addi	a0,s0,-32
    80005c28:	ffffc097          	auipc	ra,0xffffc
    80005c2c:	9b8080e7          	jalr	-1608(ra) # 800015e0 <thread_create>
    printString("ThreadC created\n");
    80005c30:	00003517          	auipc	a0,0x3
    80005c34:	6f050513          	addi	a0,a0,1776 # 80009320 <CONSOLE_STATUS+0x310>
    80005c38:	fffff097          	auipc	ra,0xfffff
    80005c3c:	158080e7          	jalr	344(ra) # 80004d90 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005c40:	00000613          	li	a2,0
    80005c44:	00000597          	auipc	a1,0x0
    80005c48:	afc58593          	addi	a1,a1,-1284 # 80005740 <_ZL11workerBodyDPv>
    80005c4c:	fe840513          	addi	a0,s0,-24
    80005c50:	ffffc097          	auipc	ra,0xffffc
    80005c54:	990080e7          	jalr	-1648(ra) # 800015e0 <thread_create>
    printString("ThreadD created\n");
    80005c58:	00003517          	auipc	a0,0x3
    80005c5c:	6e050513          	addi	a0,a0,1760 # 80009338 <CONSOLE_STATUS+0x328>
    80005c60:	fffff097          	auipc	ra,0xfffff
    80005c64:	130080e7          	jalr	304(ra) # 80004d90 <_Z11printStringPKc>
    80005c68:	00c0006f          	j	80005c74 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005c6c:	ffffb097          	auipc	ra,0xffffb
    80005c70:	74c080e7          	jalr	1868(ra) # 800013b8 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005c74:	00006797          	auipc	a5,0x6
    80005c78:	9717c783          	lbu	a5,-1679(a5) # 8000b5e5 <_ZL9finishedA>
    80005c7c:	fe0788e3          	beqz	a5,80005c6c <_Z16System_Mode_testv+0xb4>
    80005c80:	00006797          	auipc	a5,0x6
    80005c84:	9647c783          	lbu	a5,-1692(a5) # 8000b5e4 <_ZL9finishedB>
    80005c88:	fe0782e3          	beqz	a5,80005c6c <_Z16System_Mode_testv+0xb4>
    80005c8c:	00006797          	auipc	a5,0x6
    80005c90:	9577c783          	lbu	a5,-1705(a5) # 8000b5e3 <_ZL9finishedC>
    80005c94:	fc078ce3          	beqz	a5,80005c6c <_Z16System_Mode_testv+0xb4>
    80005c98:	00006797          	auipc	a5,0x6
    80005c9c:	94a7c783          	lbu	a5,-1718(a5) # 8000b5e2 <_ZL9finishedD>
    80005ca0:	fc0786e3          	beqz	a5,80005c6c <_Z16System_Mode_testv+0xb4>
    }

}
    80005ca4:	02813083          	ld	ra,40(sp)
    80005ca8:	02013403          	ld	s0,32(sp)
    80005cac:	03010113          	addi	sp,sp,48
    80005cb0:	00008067          	ret

0000000080005cb4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005cb4:	fe010113          	addi	sp,sp,-32
    80005cb8:	00113c23          	sd	ra,24(sp)
    80005cbc:	00813823          	sd	s0,16(sp)
    80005cc0:	00913423          	sd	s1,8(sp)
    80005cc4:	01213023          	sd	s2,0(sp)
    80005cc8:	02010413          	addi	s0,sp,32
    80005ccc:	00050493          	mv	s1,a0
    80005cd0:	00058913          	mv	s2,a1
    80005cd4:	0015879b          	addiw	a5,a1,1
    80005cd8:	0007851b          	sext.w	a0,a5
    80005cdc:	00f4a023          	sw	a5,0(s1)
    80005ce0:	0004a823          	sw	zero,16(s1)
    80005ce4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005ce8:	00251513          	slli	a0,a0,0x2
    80005cec:	ffffc097          	auipc	ra,0xffffc
    80005cf0:	8b4080e7          	jalr	-1868(ra) # 800015a0 <mem_alloc>
    80005cf4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005cf8:	00000593          	li	a1,0
    80005cfc:	02048513          	addi	a0,s1,32
    80005d00:	ffffb097          	auipc	ra,0xffffb
    80005d04:	734080e7          	jalr	1844(ra) # 80001434 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80005d08:	00090593          	mv	a1,s2
    80005d0c:	01848513          	addi	a0,s1,24
    80005d10:	ffffb097          	auipc	ra,0xffffb
    80005d14:	724080e7          	jalr	1828(ra) # 80001434 <sem_open>
    sem_open(&mutexHead, 1);
    80005d18:	00100593          	li	a1,1
    80005d1c:	02848513          	addi	a0,s1,40
    80005d20:	ffffb097          	auipc	ra,0xffffb
    80005d24:	714080e7          	jalr	1812(ra) # 80001434 <sem_open>
    sem_open(&mutexTail, 1);
    80005d28:	00100593          	li	a1,1
    80005d2c:	03048513          	addi	a0,s1,48
    80005d30:	ffffb097          	auipc	ra,0xffffb
    80005d34:	704080e7          	jalr	1796(ra) # 80001434 <sem_open>
}
    80005d38:	01813083          	ld	ra,24(sp)
    80005d3c:	01013403          	ld	s0,16(sp)
    80005d40:	00813483          	ld	s1,8(sp)
    80005d44:	00013903          	ld	s2,0(sp)
    80005d48:	02010113          	addi	sp,sp,32
    80005d4c:	00008067          	ret

0000000080005d50 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005d50:	fe010113          	addi	sp,sp,-32
    80005d54:	00113c23          	sd	ra,24(sp)
    80005d58:	00813823          	sd	s0,16(sp)
    80005d5c:	00913423          	sd	s1,8(sp)
    80005d60:	01213023          	sd	s2,0(sp)
    80005d64:	02010413          	addi	s0,sp,32
    80005d68:	00050493          	mv	s1,a0
    80005d6c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005d70:	01853503          	ld	a0,24(a0)
    80005d74:	ffffb097          	auipc	ra,0xffffb
    80005d78:	748080e7          	jalr	1864(ra) # 800014bc <sem_wait>

    sem_wait(mutexTail);
    80005d7c:	0304b503          	ld	a0,48(s1)
    80005d80:	ffffb097          	auipc	ra,0xffffb
    80005d84:	73c080e7          	jalr	1852(ra) # 800014bc <sem_wait>
    buffer[tail] = val;
    80005d88:	0084b783          	ld	a5,8(s1)
    80005d8c:	0144a703          	lw	a4,20(s1)
    80005d90:	00271713          	slli	a4,a4,0x2
    80005d94:	00e787b3          	add	a5,a5,a4
    80005d98:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d9c:	0144a783          	lw	a5,20(s1)
    80005da0:	0017879b          	addiw	a5,a5,1
    80005da4:	0004a703          	lw	a4,0(s1)
    80005da8:	02e7e7bb          	remw	a5,a5,a4
    80005dac:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005db0:	0304b503          	ld	a0,48(s1)
    80005db4:	ffffb097          	auipc	ra,0xffffb
    80005db8:	740080e7          	jalr	1856(ra) # 800014f4 <sem_signal>

    sem_signal(itemAvailable);
    80005dbc:	0204b503          	ld	a0,32(s1)
    80005dc0:	ffffb097          	auipc	ra,0xffffb
    80005dc4:	734080e7          	jalr	1844(ra) # 800014f4 <sem_signal>

}
    80005dc8:	01813083          	ld	ra,24(sp)
    80005dcc:	01013403          	ld	s0,16(sp)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	00013903          	ld	s2,0(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00008067          	ret

0000000080005de0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005de0:	fe010113          	addi	sp,sp,-32
    80005de4:	00113c23          	sd	ra,24(sp)
    80005de8:	00813823          	sd	s0,16(sp)
    80005dec:	00913423          	sd	s1,8(sp)
    80005df0:	01213023          	sd	s2,0(sp)
    80005df4:	02010413          	addi	s0,sp,32
    80005df8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005dfc:	02053503          	ld	a0,32(a0)
    80005e00:	ffffb097          	auipc	ra,0xffffb
    80005e04:	6bc080e7          	jalr	1724(ra) # 800014bc <sem_wait>

    sem_wait(mutexHead);
    80005e08:	0284b503          	ld	a0,40(s1)
    80005e0c:	ffffb097          	auipc	ra,0xffffb
    80005e10:	6b0080e7          	jalr	1712(ra) # 800014bc <sem_wait>

    int ret = buffer[head];
    80005e14:	0084b703          	ld	a4,8(s1)
    80005e18:	0104a783          	lw	a5,16(s1)
    80005e1c:	00279693          	slli	a3,a5,0x2
    80005e20:	00d70733          	add	a4,a4,a3
    80005e24:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e28:	0017879b          	addiw	a5,a5,1
    80005e2c:	0004a703          	lw	a4,0(s1)
    80005e30:	02e7e7bb          	remw	a5,a5,a4
    80005e34:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005e38:	0284b503          	ld	a0,40(s1)
    80005e3c:	ffffb097          	auipc	ra,0xffffb
    80005e40:	6b8080e7          	jalr	1720(ra) # 800014f4 <sem_signal>

    sem_signal(spaceAvailable);
    80005e44:	0184b503          	ld	a0,24(s1)
    80005e48:	ffffb097          	auipc	ra,0xffffb
    80005e4c:	6ac080e7          	jalr	1708(ra) # 800014f4 <sem_signal>

    return ret;
}
    80005e50:	00090513          	mv	a0,s2
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	00013903          	ld	s2,0(sp)
    80005e64:	02010113          	addi	sp,sp,32
    80005e68:	00008067          	ret

0000000080005e6c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005e6c:	fe010113          	addi	sp,sp,-32
    80005e70:	00113c23          	sd	ra,24(sp)
    80005e74:	00813823          	sd	s0,16(sp)
    80005e78:	00913423          	sd	s1,8(sp)
    80005e7c:	01213023          	sd	s2,0(sp)
    80005e80:	02010413          	addi	s0,sp,32
    80005e84:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005e88:	02853503          	ld	a0,40(a0)
    80005e8c:	ffffb097          	auipc	ra,0xffffb
    80005e90:	630080e7          	jalr	1584(ra) # 800014bc <sem_wait>
    sem_wait(mutexTail);
    80005e94:	0304b503          	ld	a0,48(s1)
    80005e98:	ffffb097          	auipc	ra,0xffffb
    80005e9c:	624080e7          	jalr	1572(ra) # 800014bc <sem_wait>

    if (tail >= head) {
    80005ea0:	0144a783          	lw	a5,20(s1)
    80005ea4:	0104a903          	lw	s2,16(s1)
    80005ea8:	0327ce63          	blt	a5,s2,80005ee4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005eac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005eb0:	0304b503          	ld	a0,48(s1)
    80005eb4:	ffffb097          	auipc	ra,0xffffb
    80005eb8:	640080e7          	jalr	1600(ra) # 800014f4 <sem_signal>
    sem_signal(mutexHead);
    80005ebc:	0284b503          	ld	a0,40(s1)
    80005ec0:	ffffb097          	auipc	ra,0xffffb
    80005ec4:	634080e7          	jalr	1588(ra) # 800014f4 <sem_signal>

    return ret;
}
    80005ec8:	00090513          	mv	a0,s2
    80005ecc:	01813083          	ld	ra,24(sp)
    80005ed0:	01013403          	ld	s0,16(sp)
    80005ed4:	00813483          	ld	s1,8(sp)
    80005ed8:	00013903          	ld	s2,0(sp)
    80005edc:	02010113          	addi	sp,sp,32
    80005ee0:	00008067          	ret
        ret = cap - head + tail;
    80005ee4:	0004a703          	lw	a4,0(s1)
    80005ee8:	4127093b          	subw	s2,a4,s2
    80005eec:	00f9093b          	addw	s2,s2,a5
    80005ef0:	fc1ff06f          	j	80005eb0 <_ZN6Buffer6getCntEv+0x44>

0000000080005ef4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005ef4:	fe010113          	addi	sp,sp,-32
    80005ef8:	00113c23          	sd	ra,24(sp)
    80005efc:	00813823          	sd	s0,16(sp)
    80005f00:	00913423          	sd	s1,8(sp)
    80005f04:	02010413          	addi	s0,sp,32
    80005f08:	00050493          	mv	s1,a0
    putc('\n');
    80005f0c:	00a00513          	li	a0,10
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	658080e7          	jalr	1624(ra) # 80001568 <putc>
    printString("Buffer deleted!\n");
    80005f18:	00003517          	auipc	a0,0x3
    80005f1c:	43850513          	addi	a0,a0,1080 # 80009350 <CONSOLE_STATUS+0x340>
    80005f20:	fffff097          	auipc	ra,0xfffff
    80005f24:	e70080e7          	jalr	-400(ra) # 80004d90 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005f28:	00048513          	mv	a0,s1
    80005f2c:	00000097          	auipc	ra,0x0
    80005f30:	f40080e7          	jalr	-192(ra) # 80005e6c <_ZN6Buffer6getCntEv>
    80005f34:	02a05c63          	blez	a0,80005f6c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005f38:	0084b783          	ld	a5,8(s1)
    80005f3c:	0104a703          	lw	a4,16(s1)
    80005f40:	00271713          	slli	a4,a4,0x2
    80005f44:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005f48:	0007c503          	lbu	a0,0(a5)
    80005f4c:	ffffb097          	auipc	ra,0xffffb
    80005f50:	61c080e7          	jalr	1564(ra) # 80001568 <putc>
        head = (head + 1) % cap;
    80005f54:	0104a783          	lw	a5,16(s1)
    80005f58:	0017879b          	addiw	a5,a5,1
    80005f5c:	0004a703          	lw	a4,0(s1)
    80005f60:	02e7e7bb          	remw	a5,a5,a4
    80005f64:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005f68:	fc1ff06f          	j	80005f28 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005f6c:	02100513          	li	a0,33
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	5f8080e7          	jalr	1528(ra) # 80001568 <putc>
    putc('\n');
    80005f78:	00a00513          	li	a0,10
    80005f7c:	ffffb097          	auipc	ra,0xffffb
    80005f80:	5ec080e7          	jalr	1516(ra) # 80001568 <putc>
    mem_free(buffer);
    80005f84:	0084b503          	ld	a0,8(s1)
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	750080e7          	jalr	1872(ra) # 800016d8 <mem_free>
    sem_close(itemAvailable);
    80005f90:	0204b503          	ld	a0,32(s1)
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	4dc080e7          	jalr	1244(ra) # 80001470 <sem_close>
    sem_close(spaceAvailable);
    80005f9c:	0184b503          	ld	a0,24(s1)
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	4d0080e7          	jalr	1232(ra) # 80001470 <sem_close>
    sem_close(mutexTail);
    80005fa8:	0304b503          	ld	a0,48(s1)
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	4c4080e7          	jalr	1220(ra) # 80001470 <sem_close>
    sem_close(mutexHead);
    80005fb4:	0284b503          	ld	a0,40(s1)
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	4b8080e7          	jalr	1208(ra) # 80001470 <sem_close>
}
    80005fc0:	01813083          	ld	ra,24(sp)
    80005fc4:	01013403          	ld	s0,16(sp)
    80005fc8:	00813483          	ld	s1,8(sp)
    80005fcc:	02010113          	addi	sp,sp,32
    80005fd0:	00008067          	ret

0000000080005fd4 <start>:
    80005fd4:	ff010113          	addi	sp,sp,-16
    80005fd8:	00813423          	sd	s0,8(sp)
    80005fdc:	01010413          	addi	s0,sp,16
    80005fe0:	300027f3          	csrr	a5,mstatus
    80005fe4:	ffffe737          	lui	a4,0xffffe
    80005fe8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1faf>
    80005fec:	00e7f7b3          	and	a5,a5,a4
    80005ff0:	00001737          	lui	a4,0x1
    80005ff4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005ff8:	00e7e7b3          	or	a5,a5,a4
    80005ffc:	30079073          	csrw	mstatus,a5
    80006000:	00000797          	auipc	a5,0x0
    80006004:	16078793          	addi	a5,a5,352 # 80006160 <system_main>
    80006008:	34179073          	csrw	mepc,a5
    8000600c:	00000793          	li	a5,0
    80006010:	18079073          	csrw	satp,a5
    80006014:	000107b7          	lui	a5,0x10
    80006018:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000601c:	30279073          	csrw	medeleg,a5
    80006020:	30379073          	csrw	mideleg,a5
    80006024:	104027f3          	csrr	a5,sie
    80006028:	2227e793          	ori	a5,a5,546
    8000602c:	10479073          	csrw	sie,a5
    80006030:	fff00793          	li	a5,-1
    80006034:	00a7d793          	srli	a5,a5,0xa
    80006038:	3b079073          	csrw	pmpaddr0,a5
    8000603c:	00f00793          	li	a5,15
    80006040:	3a079073          	csrw	pmpcfg0,a5
    80006044:	f14027f3          	csrr	a5,mhartid
    80006048:	0200c737          	lui	a4,0x200c
    8000604c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006050:	0007869b          	sext.w	a3,a5
    80006054:	00269713          	slli	a4,a3,0x2
    80006058:	000f4637          	lui	a2,0xf4
    8000605c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006060:	00d70733          	add	a4,a4,a3
    80006064:	0037979b          	slliw	a5,a5,0x3
    80006068:	020046b7          	lui	a3,0x2004
    8000606c:	00d787b3          	add	a5,a5,a3
    80006070:	00c585b3          	add	a1,a1,a2
    80006074:	00371693          	slli	a3,a4,0x3
    80006078:	00005717          	auipc	a4,0x5
    8000607c:	57870713          	addi	a4,a4,1400 # 8000b5f0 <timer_scratch>
    80006080:	00b7b023          	sd	a1,0(a5)
    80006084:	00d70733          	add	a4,a4,a3
    80006088:	00f73c23          	sd	a5,24(a4)
    8000608c:	02c73023          	sd	a2,32(a4)
    80006090:	34071073          	csrw	mscratch,a4
    80006094:	00000797          	auipc	a5,0x0
    80006098:	6ec78793          	addi	a5,a5,1772 # 80006780 <timervec>
    8000609c:	30579073          	csrw	mtvec,a5
    800060a0:	300027f3          	csrr	a5,mstatus
    800060a4:	0087e793          	ori	a5,a5,8
    800060a8:	30079073          	csrw	mstatus,a5
    800060ac:	304027f3          	csrr	a5,mie
    800060b0:	0807e793          	ori	a5,a5,128
    800060b4:	30479073          	csrw	mie,a5
    800060b8:	f14027f3          	csrr	a5,mhartid
    800060bc:	0007879b          	sext.w	a5,a5
    800060c0:	00078213          	mv	tp,a5
    800060c4:	30200073          	mret
    800060c8:	00813403          	ld	s0,8(sp)
    800060cc:	01010113          	addi	sp,sp,16
    800060d0:	00008067          	ret

00000000800060d4 <timerinit>:
    800060d4:	ff010113          	addi	sp,sp,-16
    800060d8:	00813423          	sd	s0,8(sp)
    800060dc:	01010413          	addi	s0,sp,16
    800060e0:	f14027f3          	csrr	a5,mhartid
    800060e4:	0200c737          	lui	a4,0x200c
    800060e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800060ec:	0007869b          	sext.w	a3,a5
    800060f0:	00269713          	slli	a4,a3,0x2
    800060f4:	000f4637          	lui	a2,0xf4
    800060f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800060fc:	00d70733          	add	a4,a4,a3
    80006100:	0037979b          	slliw	a5,a5,0x3
    80006104:	020046b7          	lui	a3,0x2004
    80006108:	00d787b3          	add	a5,a5,a3
    8000610c:	00c585b3          	add	a1,a1,a2
    80006110:	00371693          	slli	a3,a4,0x3
    80006114:	00005717          	auipc	a4,0x5
    80006118:	4dc70713          	addi	a4,a4,1244 # 8000b5f0 <timer_scratch>
    8000611c:	00b7b023          	sd	a1,0(a5)
    80006120:	00d70733          	add	a4,a4,a3
    80006124:	00f73c23          	sd	a5,24(a4)
    80006128:	02c73023          	sd	a2,32(a4)
    8000612c:	34071073          	csrw	mscratch,a4
    80006130:	00000797          	auipc	a5,0x0
    80006134:	65078793          	addi	a5,a5,1616 # 80006780 <timervec>
    80006138:	30579073          	csrw	mtvec,a5
    8000613c:	300027f3          	csrr	a5,mstatus
    80006140:	0087e793          	ori	a5,a5,8
    80006144:	30079073          	csrw	mstatus,a5
    80006148:	304027f3          	csrr	a5,mie
    8000614c:	0807e793          	ori	a5,a5,128
    80006150:	30479073          	csrw	mie,a5
    80006154:	00813403          	ld	s0,8(sp)
    80006158:	01010113          	addi	sp,sp,16
    8000615c:	00008067          	ret

0000000080006160 <system_main>:
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00813823          	sd	s0,16(sp)
    80006168:	00913423          	sd	s1,8(sp)
    8000616c:	00113c23          	sd	ra,24(sp)
    80006170:	02010413          	addi	s0,sp,32
    80006174:	00000097          	auipc	ra,0x0
    80006178:	0c4080e7          	jalr	196(ra) # 80006238 <cpuid>
    8000617c:	00005497          	auipc	s1,0x5
    80006180:	3c448493          	addi	s1,s1,964 # 8000b540 <started>
    80006184:	02050263          	beqz	a0,800061a8 <system_main+0x48>
    80006188:	0004a783          	lw	a5,0(s1)
    8000618c:	0007879b          	sext.w	a5,a5
    80006190:	fe078ce3          	beqz	a5,80006188 <system_main+0x28>
    80006194:	0ff0000f          	fence
    80006198:	00003517          	auipc	a0,0x3
    8000619c:	44850513          	addi	a0,a0,1096 # 800095e0 <CONSOLE_STATUS+0x5d0>
    800061a0:	00001097          	auipc	ra,0x1
    800061a4:	a7c080e7          	jalr	-1412(ra) # 80006c1c <panic>
    800061a8:	00001097          	auipc	ra,0x1
    800061ac:	9d0080e7          	jalr	-1584(ra) # 80006b78 <consoleinit>
    800061b0:	00001097          	auipc	ra,0x1
    800061b4:	15c080e7          	jalr	348(ra) # 8000730c <printfinit>
    800061b8:	00003517          	auipc	a0,0x3
    800061bc:	32050513          	addi	a0,a0,800 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800061c0:	00001097          	auipc	ra,0x1
    800061c4:	ab8080e7          	jalr	-1352(ra) # 80006c78 <__printf>
    800061c8:	00003517          	auipc	a0,0x3
    800061cc:	3e850513          	addi	a0,a0,1000 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800061d0:	00001097          	auipc	ra,0x1
    800061d4:	aa8080e7          	jalr	-1368(ra) # 80006c78 <__printf>
    800061d8:	00003517          	auipc	a0,0x3
    800061dc:	30050513          	addi	a0,a0,768 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800061e0:	00001097          	auipc	ra,0x1
    800061e4:	a98080e7          	jalr	-1384(ra) # 80006c78 <__printf>
    800061e8:	00001097          	auipc	ra,0x1
    800061ec:	4b0080e7          	jalr	1200(ra) # 80007698 <kinit>
    800061f0:	00000097          	auipc	ra,0x0
    800061f4:	148080e7          	jalr	328(ra) # 80006338 <trapinit>
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	16c080e7          	jalr	364(ra) # 80006364 <trapinithart>
    80006200:	00000097          	auipc	ra,0x0
    80006204:	5c0080e7          	jalr	1472(ra) # 800067c0 <plicinit>
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	5e0080e7          	jalr	1504(ra) # 800067e8 <plicinithart>
    80006210:	00000097          	auipc	ra,0x0
    80006214:	078080e7          	jalr	120(ra) # 80006288 <userinit>
    80006218:	0ff0000f          	fence
    8000621c:	00100793          	li	a5,1
    80006220:	00003517          	auipc	a0,0x3
    80006224:	3a850513          	addi	a0,a0,936 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006228:	00f4a023          	sw	a5,0(s1)
    8000622c:	00001097          	auipc	ra,0x1
    80006230:	a4c080e7          	jalr	-1460(ra) # 80006c78 <__printf>
    80006234:	0000006f          	j	80006234 <system_main+0xd4>

0000000080006238 <cpuid>:
    80006238:	ff010113          	addi	sp,sp,-16
    8000623c:	00813423          	sd	s0,8(sp)
    80006240:	01010413          	addi	s0,sp,16
    80006244:	00020513          	mv	a0,tp
    80006248:	00813403          	ld	s0,8(sp)
    8000624c:	0005051b          	sext.w	a0,a0
    80006250:	01010113          	addi	sp,sp,16
    80006254:	00008067          	ret

0000000080006258 <mycpu>:
    80006258:	ff010113          	addi	sp,sp,-16
    8000625c:	00813423          	sd	s0,8(sp)
    80006260:	01010413          	addi	s0,sp,16
    80006264:	00020793          	mv	a5,tp
    80006268:	00813403          	ld	s0,8(sp)
    8000626c:	0007879b          	sext.w	a5,a5
    80006270:	00779793          	slli	a5,a5,0x7
    80006274:	00006517          	auipc	a0,0x6
    80006278:	3ac50513          	addi	a0,a0,940 # 8000c620 <cpus>
    8000627c:	00f50533          	add	a0,a0,a5
    80006280:	01010113          	addi	sp,sp,16
    80006284:	00008067          	ret

0000000080006288 <userinit>:
    80006288:	ff010113          	addi	sp,sp,-16
    8000628c:	00813423          	sd	s0,8(sp)
    80006290:	01010413          	addi	s0,sp,16
    80006294:	00813403          	ld	s0,8(sp)
    80006298:	01010113          	addi	sp,sp,16
    8000629c:	ffffc317          	auipc	t1,0xffffc
    800062a0:	c5830067          	jr	-936(t1) # 80001ef4 <main>

00000000800062a4 <either_copyout>:
    800062a4:	ff010113          	addi	sp,sp,-16
    800062a8:	00813023          	sd	s0,0(sp)
    800062ac:	00113423          	sd	ra,8(sp)
    800062b0:	01010413          	addi	s0,sp,16
    800062b4:	02051663          	bnez	a0,800062e0 <either_copyout+0x3c>
    800062b8:	00058513          	mv	a0,a1
    800062bc:	00060593          	mv	a1,a2
    800062c0:	0006861b          	sext.w	a2,a3
    800062c4:	00002097          	auipc	ra,0x2
    800062c8:	c60080e7          	jalr	-928(ra) # 80007f24 <__memmove>
    800062cc:	00813083          	ld	ra,8(sp)
    800062d0:	00013403          	ld	s0,0(sp)
    800062d4:	00000513          	li	a0,0
    800062d8:	01010113          	addi	sp,sp,16
    800062dc:	00008067          	ret
    800062e0:	00003517          	auipc	a0,0x3
    800062e4:	32850513          	addi	a0,a0,808 # 80009608 <CONSOLE_STATUS+0x5f8>
    800062e8:	00001097          	auipc	ra,0x1
    800062ec:	934080e7          	jalr	-1740(ra) # 80006c1c <panic>

00000000800062f0 <either_copyin>:
    800062f0:	ff010113          	addi	sp,sp,-16
    800062f4:	00813023          	sd	s0,0(sp)
    800062f8:	00113423          	sd	ra,8(sp)
    800062fc:	01010413          	addi	s0,sp,16
    80006300:	02059463          	bnez	a1,80006328 <either_copyin+0x38>
    80006304:	00060593          	mv	a1,a2
    80006308:	0006861b          	sext.w	a2,a3
    8000630c:	00002097          	auipc	ra,0x2
    80006310:	c18080e7          	jalr	-1000(ra) # 80007f24 <__memmove>
    80006314:	00813083          	ld	ra,8(sp)
    80006318:	00013403          	ld	s0,0(sp)
    8000631c:	00000513          	li	a0,0
    80006320:	01010113          	addi	sp,sp,16
    80006324:	00008067          	ret
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	30850513          	addi	a0,a0,776 # 80009630 <CONSOLE_STATUS+0x620>
    80006330:	00001097          	auipc	ra,0x1
    80006334:	8ec080e7          	jalr	-1812(ra) # 80006c1c <panic>

0000000080006338 <trapinit>:
    80006338:	ff010113          	addi	sp,sp,-16
    8000633c:	00813423          	sd	s0,8(sp)
    80006340:	01010413          	addi	s0,sp,16
    80006344:	00813403          	ld	s0,8(sp)
    80006348:	00003597          	auipc	a1,0x3
    8000634c:	31058593          	addi	a1,a1,784 # 80009658 <CONSOLE_STATUS+0x648>
    80006350:	00006517          	auipc	a0,0x6
    80006354:	35050513          	addi	a0,a0,848 # 8000c6a0 <tickslock>
    80006358:	01010113          	addi	sp,sp,16
    8000635c:	00001317          	auipc	t1,0x1
    80006360:	5cc30067          	jr	1484(t1) # 80007928 <initlock>

0000000080006364 <trapinithart>:
    80006364:	ff010113          	addi	sp,sp,-16
    80006368:	00813423          	sd	s0,8(sp)
    8000636c:	01010413          	addi	s0,sp,16
    80006370:	00000797          	auipc	a5,0x0
    80006374:	30078793          	addi	a5,a5,768 # 80006670 <kernelvec>
    80006378:	10579073          	csrw	stvec,a5
    8000637c:	00813403          	ld	s0,8(sp)
    80006380:	01010113          	addi	sp,sp,16
    80006384:	00008067          	ret

0000000080006388 <usertrap>:
    80006388:	ff010113          	addi	sp,sp,-16
    8000638c:	00813423          	sd	s0,8(sp)
    80006390:	01010413          	addi	s0,sp,16
    80006394:	00813403          	ld	s0,8(sp)
    80006398:	01010113          	addi	sp,sp,16
    8000639c:	00008067          	ret

00000000800063a0 <usertrapret>:
    800063a0:	ff010113          	addi	sp,sp,-16
    800063a4:	00813423          	sd	s0,8(sp)
    800063a8:	01010413          	addi	s0,sp,16
    800063ac:	00813403          	ld	s0,8(sp)
    800063b0:	01010113          	addi	sp,sp,16
    800063b4:	00008067          	ret

00000000800063b8 <kerneltrap>:
    800063b8:	fe010113          	addi	sp,sp,-32
    800063bc:	00813823          	sd	s0,16(sp)
    800063c0:	00113c23          	sd	ra,24(sp)
    800063c4:	00913423          	sd	s1,8(sp)
    800063c8:	02010413          	addi	s0,sp,32
    800063cc:	142025f3          	csrr	a1,scause
    800063d0:	100027f3          	csrr	a5,sstatus
    800063d4:	0027f793          	andi	a5,a5,2
    800063d8:	10079c63          	bnez	a5,800064f0 <kerneltrap+0x138>
    800063dc:	142027f3          	csrr	a5,scause
    800063e0:	0207ce63          	bltz	a5,8000641c <kerneltrap+0x64>
    800063e4:	00003517          	auipc	a0,0x3
    800063e8:	2bc50513          	addi	a0,a0,700 # 800096a0 <CONSOLE_STATUS+0x690>
    800063ec:	00001097          	auipc	ra,0x1
    800063f0:	88c080e7          	jalr	-1908(ra) # 80006c78 <__printf>
    800063f4:	141025f3          	csrr	a1,sepc
    800063f8:	14302673          	csrr	a2,stval
    800063fc:	00003517          	auipc	a0,0x3
    80006400:	2b450513          	addi	a0,a0,692 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006404:	00001097          	auipc	ra,0x1
    80006408:	874080e7          	jalr	-1932(ra) # 80006c78 <__printf>
    8000640c:	00003517          	auipc	a0,0x3
    80006410:	2bc50513          	addi	a0,a0,700 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006414:	00001097          	auipc	ra,0x1
    80006418:	808080e7          	jalr	-2040(ra) # 80006c1c <panic>
    8000641c:	0ff7f713          	andi	a4,a5,255
    80006420:	00900693          	li	a3,9
    80006424:	04d70063          	beq	a4,a3,80006464 <kerneltrap+0xac>
    80006428:	fff00713          	li	a4,-1
    8000642c:	03f71713          	slli	a4,a4,0x3f
    80006430:	00170713          	addi	a4,a4,1
    80006434:	fae798e3          	bne	a5,a4,800063e4 <kerneltrap+0x2c>
    80006438:	00000097          	auipc	ra,0x0
    8000643c:	e00080e7          	jalr	-512(ra) # 80006238 <cpuid>
    80006440:	06050663          	beqz	a0,800064ac <kerneltrap+0xf4>
    80006444:	144027f3          	csrr	a5,sip
    80006448:	ffd7f793          	andi	a5,a5,-3
    8000644c:	14479073          	csrw	sip,a5
    80006450:	01813083          	ld	ra,24(sp)
    80006454:	01013403          	ld	s0,16(sp)
    80006458:	00813483          	ld	s1,8(sp)
    8000645c:	02010113          	addi	sp,sp,32
    80006460:	00008067          	ret
    80006464:	00000097          	auipc	ra,0x0
    80006468:	3d0080e7          	jalr	976(ra) # 80006834 <plic_claim>
    8000646c:	00a00793          	li	a5,10
    80006470:	00050493          	mv	s1,a0
    80006474:	06f50863          	beq	a0,a5,800064e4 <kerneltrap+0x12c>
    80006478:	fc050ce3          	beqz	a0,80006450 <kerneltrap+0x98>
    8000647c:	00050593          	mv	a1,a0
    80006480:	00003517          	auipc	a0,0x3
    80006484:	20050513          	addi	a0,a0,512 # 80009680 <CONSOLE_STATUS+0x670>
    80006488:	00000097          	auipc	ra,0x0
    8000648c:	7f0080e7          	jalr	2032(ra) # 80006c78 <__printf>
    80006490:	01013403          	ld	s0,16(sp)
    80006494:	01813083          	ld	ra,24(sp)
    80006498:	00048513          	mv	a0,s1
    8000649c:	00813483          	ld	s1,8(sp)
    800064a0:	02010113          	addi	sp,sp,32
    800064a4:	00000317          	auipc	t1,0x0
    800064a8:	3c830067          	jr	968(t1) # 8000686c <plic_complete>
    800064ac:	00006517          	auipc	a0,0x6
    800064b0:	1f450513          	addi	a0,a0,500 # 8000c6a0 <tickslock>
    800064b4:	00001097          	auipc	ra,0x1
    800064b8:	498080e7          	jalr	1176(ra) # 8000794c <acquire>
    800064bc:	00005717          	auipc	a4,0x5
    800064c0:	08870713          	addi	a4,a4,136 # 8000b544 <ticks>
    800064c4:	00072783          	lw	a5,0(a4)
    800064c8:	00006517          	auipc	a0,0x6
    800064cc:	1d850513          	addi	a0,a0,472 # 8000c6a0 <tickslock>
    800064d0:	0017879b          	addiw	a5,a5,1
    800064d4:	00f72023          	sw	a5,0(a4)
    800064d8:	00001097          	auipc	ra,0x1
    800064dc:	540080e7          	jalr	1344(ra) # 80007a18 <release>
    800064e0:	f65ff06f          	j	80006444 <kerneltrap+0x8c>
    800064e4:	00001097          	auipc	ra,0x1
    800064e8:	09c080e7          	jalr	156(ra) # 80007580 <uartintr>
    800064ec:	fa5ff06f          	j	80006490 <kerneltrap+0xd8>
    800064f0:	00003517          	auipc	a0,0x3
    800064f4:	17050513          	addi	a0,a0,368 # 80009660 <CONSOLE_STATUS+0x650>
    800064f8:	00000097          	auipc	ra,0x0
    800064fc:	724080e7          	jalr	1828(ra) # 80006c1c <panic>

0000000080006500 <clockintr>:
    80006500:	fe010113          	addi	sp,sp,-32
    80006504:	00813823          	sd	s0,16(sp)
    80006508:	00913423          	sd	s1,8(sp)
    8000650c:	00113c23          	sd	ra,24(sp)
    80006510:	02010413          	addi	s0,sp,32
    80006514:	00006497          	auipc	s1,0x6
    80006518:	18c48493          	addi	s1,s1,396 # 8000c6a0 <tickslock>
    8000651c:	00048513          	mv	a0,s1
    80006520:	00001097          	auipc	ra,0x1
    80006524:	42c080e7          	jalr	1068(ra) # 8000794c <acquire>
    80006528:	00005717          	auipc	a4,0x5
    8000652c:	01c70713          	addi	a4,a4,28 # 8000b544 <ticks>
    80006530:	00072783          	lw	a5,0(a4)
    80006534:	01013403          	ld	s0,16(sp)
    80006538:	01813083          	ld	ra,24(sp)
    8000653c:	00048513          	mv	a0,s1
    80006540:	0017879b          	addiw	a5,a5,1
    80006544:	00813483          	ld	s1,8(sp)
    80006548:	00f72023          	sw	a5,0(a4)
    8000654c:	02010113          	addi	sp,sp,32
    80006550:	00001317          	auipc	t1,0x1
    80006554:	4c830067          	jr	1224(t1) # 80007a18 <release>

0000000080006558 <devintr>:
    80006558:	142027f3          	csrr	a5,scause
    8000655c:	00000513          	li	a0,0
    80006560:	0007c463          	bltz	a5,80006568 <devintr+0x10>
    80006564:	00008067          	ret
    80006568:	fe010113          	addi	sp,sp,-32
    8000656c:	00813823          	sd	s0,16(sp)
    80006570:	00113c23          	sd	ra,24(sp)
    80006574:	00913423          	sd	s1,8(sp)
    80006578:	02010413          	addi	s0,sp,32
    8000657c:	0ff7f713          	andi	a4,a5,255
    80006580:	00900693          	li	a3,9
    80006584:	04d70c63          	beq	a4,a3,800065dc <devintr+0x84>
    80006588:	fff00713          	li	a4,-1
    8000658c:	03f71713          	slli	a4,a4,0x3f
    80006590:	00170713          	addi	a4,a4,1
    80006594:	00e78c63          	beq	a5,a4,800065ac <devintr+0x54>
    80006598:	01813083          	ld	ra,24(sp)
    8000659c:	01013403          	ld	s0,16(sp)
    800065a0:	00813483          	ld	s1,8(sp)
    800065a4:	02010113          	addi	sp,sp,32
    800065a8:	00008067          	ret
    800065ac:	00000097          	auipc	ra,0x0
    800065b0:	c8c080e7          	jalr	-884(ra) # 80006238 <cpuid>
    800065b4:	06050663          	beqz	a0,80006620 <devintr+0xc8>
    800065b8:	144027f3          	csrr	a5,sip
    800065bc:	ffd7f793          	andi	a5,a5,-3
    800065c0:	14479073          	csrw	sip,a5
    800065c4:	01813083          	ld	ra,24(sp)
    800065c8:	01013403          	ld	s0,16(sp)
    800065cc:	00813483          	ld	s1,8(sp)
    800065d0:	00200513          	li	a0,2
    800065d4:	02010113          	addi	sp,sp,32
    800065d8:	00008067          	ret
    800065dc:	00000097          	auipc	ra,0x0
    800065e0:	258080e7          	jalr	600(ra) # 80006834 <plic_claim>
    800065e4:	00a00793          	li	a5,10
    800065e8:	00050493          	mv	s1,a0
    800065ec:	06f50663          	beq	a0,a5,80006658 <devintr+0x100>
    800065f0:	00100513          	li	a0,1
    800065f4:	fa0482e3          	beqz	s1,80006598 <devintr+0x40>
    800065f8:	00048593          	mv	a1,s1
    800065fc:	00003517          	auipc	a0,0x3
    80006600:	08450513          	addi	a0,a0,132 # 80009680 <CONSOLE_STATUS+0x670>
    80006604:	00000097          	auipc	ra,0x0
    80006608:	674080e7          	jalr	1652(ra) # 80006c78 <__printf>
    8000660c:	00048513          	mv	a0,s1
    80006610:	00000097          	auipc	ra,0x0
    80006614:	25c080e7          	jalr	604(ra) # 8000686c <plic_complete>
    80006618:	00100513          	li	a0,1
    8000661c:	f7dff06f          	j	80006598 <devintr+0x40>
    80006620:	00006517          	auipc	a0,0x6
    80006624:	08050513          	addi	a0,a0,128 # 8000c6a0 <tickslock>
    80006628:	00001097          	auipc	ra,0x1
    8000662c:	324080e7          	jalr	804(ra) # 8000794c <acquire>
    80006630:	00005717          	auipc	a4,0x5
    80006634:	f1470713          	addi	a4,a4,-236 # 8000b544 <ticks>
    80006638:	00072783          	lw	a5,0(a4)
    8000663c:	00006517          	auipc	a0,0x6
    80006640:	06450513          	addi	a0,a0,100 # 8000c6a0 <tickslock>
    80006644:	0017879b          	addiw	a5,a5,1
    80006648:	00f72023          	sw	a5,0(a4)
    8000664c:	00001097          	auipc	ra,0x1
    80006650:	3cc080e7          	jalr	972(ra) # 80007a18 <release>
    80006654:	f65ff06f          	j	800065b8 <devintr+0x60>
    80006658:	00001097          	auipc	ra,0x1
    8000665c:	f28080e7          	jalr	-216(ra) # 80007580 <uartintr>
    80006660:	fadff06f          	j	8000660c <devintr+0xb4>
	...

0000000080006670 <kernelvec>:
    80006670:	f0010113          	addi	sp,sp,-256
    80006674:	00113023          	sd	ra,0(sp)
    80006678:	00213423          	sd	sp,8(sp)
    8000667c:	00313823          	sd	gp,16(sp)
    80006680:	00413c23          	sd	tp,24(sp)
    80006684:	02513023          	sd	t0,32(sp)
    80006688:	02613423          	sd	t1,40(sp)
    8000668c:	02713823          	sd	t2,48(sp)
    80006690:	02813c23          	sd	s0,56(sp)
    80006694:	04913023          	sd	s1,64(sp)
    80006698:	04a13423          	sd	a0,72(sp)
    8000669c:	04b13823          	sd	a1,80(sp)
    800066a0:	04c13c23          	sd	a2,88(sp)
    800066a4:	06d13023          	sd	a3,96(sp)
    800066a8:	06e13423          	sd	a4,104(sp)
    800066ac:	06f13823          	sd	a5,112(sp)
    800066b0:	07013c23          	sd	a6,120(sp)
    800066b4:	09113023          	sd	a7,128(sp)
    800066b8:	09213423          	sd	s2,136(sp)
    800066bc:	09313823          	sd	s3,144(sp)
    800066c0:	09413c23          	sd	s4,152(sp)
    800066c4:	0b513023          	sd	s5,160(sp)
    800066c8:	0b613423          	sd	s6,168(sp)
    800066cc:	0b713823          	sd	s7,176(sp)
    800066d0:	0b813c23          	sd	s8,184(sp)
    800066d4:	0d913023          	sd	s9,192(sp)
    800066d8:	0da13423          	sd	s10,200(sp)
    800066dc:	0db13823          	sd	s11,208(sp)
    800066e0:	0dc13c23          	sd	t3,216(sp)
    800066e4:	0fd13023          	sd	t4,224(sp)
    800066e8:	0fe13423          	sd	t5,232(sp)
    800066ec:	0ff13823          	sd	t6,240(sp)
    800066f0:	cc9ff0ef          	jal	ra,800063b8 <kerneltrap>
    800066f4:	00013083          	ld	ra,0(sp)
    800066f8:	00813103          	ld	sp,8(sp)
    800066fc:	01013183          	ld	gp,16(sp)
    80006700:	02013283          	ld	t0,32(sp)
    80006704:	02813303          	ld	t1,40(sp)
    80006708:	03013383          	ld	t2,48(sp)
    8000670c:	03813403          	ld	s0,56(sp)
    80006710:	04013483          	ld	s1,64(sp)
    80006714:	04813503          	ld	a0,72(sp)
    80006718:	05013583          	ld	a1,80(sp)
    8000671c:	05813603          	ld	a2,88(sp)
    80006720:	06013683          	ld	a3,96(sp)
    80006724:	06813703          	ld	a4,104(sp)
    80006728:	07013783          	ld	a5,112(sp)
    8000672c:	07813803          	ld	a6,120(sp)
    80006730:	08013883          	ld	a7,128(sp)
    80006734:	08813903          	ld	s2,136(sp)
    80006738:	09013983          	ld	s3,144(sp)
    8000673c:	09813a03          	ld	s4,152(sp)
    80006740:	0a013a83          	ld	s5,160(sp)
    80006744:	0a813b03          	ld	s6,168(sp)
    80006748:	0b013b83          	ld	s7,176(sp)
    8000674c:	0b813c03          	ld	s8,184(sp)
    80006750:	0c013c83          	ld	s9,192(sp)
    80006754:	0c813d03          	ld	s10,200(sp)
    80006758:	0d013d83          	ld	s11,208(sp)
    8000675c:	0d813e03          	ld	t3,216(sp)
    80006760:	0e013e83          	ld	t4,224(sp)
    80006764:	0e813f03          	ld	t5,232(sp)
    80006768:	0f013f83          	ld	t6,240(sp)
    8000676c:	10010113          	addi	sp,sp,256
    80006770:	10200073          	sret
    80006774:	00000013          	nop
    80006778:	00000013          	nop
    8000677c:	00000013          	nop

0000000080006780 <timervec>:
    80006780:	34051573          	csrrw	a0,mscratch,a0
    80006784:	00b53023          	sd	a1,0(a0)
    80006788:	00c53423          	sd	a2,8(a0)
    8000678c:	00d53823          	sd	a3,16(a0)
    80006790:	01853583          	ld	a1,24(a0)
    80006794:	02053603          	ld	a2,32(a0)
    80006798:	0005b683          	ld	a3,0(a1)
    8000679c:	00c686b3          	add	a3,a3,a2
    800067a0:	00d5b023          	sd	a3,0(a1)
    800067a4:	00200593          	li	a1,2
    800067a8:	14459073          	csrw	sip,a1
    800067ac:	01053683          	ld	a3,16(a0)
    800067b0:	00853603          	ld	a2,8(a0)
    800067b4:	00053583          	ld	a1,0(a0)
    800067b8:	34051573          	csrrw	a0,mscratch,a0
    800067bc:	30200073          	mret

00000000800067c0 <plicinit>:
    800067c0:	ff010113          	addi	sp,sp,-16
    800067c4:	00813423          	sd	s0,8(sp)
    800067c8:	01010413          	addi	s0,sp,16
    800067cc:	00813403          	ld	s0,8(sp)
    800067d0:	0c0007b7          	lui	a5,0xc000
    800067d4:	00100713          	li	a4,1
    800067d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800067dc:	00e7a223          	sw	a4,4(a5)
    800067e0:	01010113          	addi	sp,sp,16
    800067e4:	00008067          	ret

00000000800067e8 <plicinithart>:
    800067e8:	ff010113          	addi	sp,sp,-16
    800067ec:	00813023          	sd	s0,0(sp)
    800067f0:	00113423          	sd	ra,8(sp)
    800067f4:	01010413          	addi	s0,sp,16
    800067f8:	00000097          	auipc	ra,0x0
    800067fc:	a40080e7          	jalr	-1472(ra) # 80006238 <cpuid>
    80006800:	0085171b          	slliw	a4,a0,0x8
    80006804:	0c0027b7          	lui	a5,0xc002
    80006808:	00e787b3          	add	a5,a5,a4
    8000680c:	40200713          	li	a4,1026
    80006810:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006814:	00813083          	ld	ra,8(sp)
    80006818:	00013403          	ld	s0,0(sp)
    8000681c:	00d5151b          	slliw	a0,a0,0xd
    80006820:	0c2017b7          	lui	a5,0xc201
    80006824:	00a78533          	add	a0,a5,a0
    80006828:	00052023          	sw	zero,0(a0)
    8000682c:	01010113          	addi	sp,sp,16
    80006830:	00008067          	ret

0000000080006834 <plic_claim>:
    80006834:	ff010113          	addi	sp,sp,-16
    80006838:	00813023          	sd	s0,0(sp)
    8000683c:	00113423          	sd	ra,8(sp)
    80006840:	01010413          	addi	s0,sp,16
    80006844:	00000097          	auipc	ra,0x0
    80006848:	9f4080e7          	jalr	-1548(ra) # 80006238 <cpuid>
    8000684c:	00813083          	ld	ra,8(sp)
    80006850:	00013403          	ld	s0,0(sp)
    80006854:	00d5151b          	slliw	a0,a0,0xd
    80006858:	0c2017b7          	lui	a5,0xc201
    8000685c:	00a78533          	add	a0,a5,a0
    80006860:	00452503          	lw	a0,4(a0)
    80006864:	01010113          	addi	sp,sp,16
    80006868:	00008067          	ret

000000008000686c <plic_complete>:
    8000686c:	fe010113          	addi	sp,sp,-32
    80006870:	00813823          	sd	s0,16(sp)
    80006874:	00913423          	sd	s1,8(sp)
    80006878:	00113c23          	sd	ra,24(sp)
    8000687c:	02010413          	addi	s0,sp,32
    80006880:	00050493          	mv	s1,a0
    80006884:	00000097          	auipc	ra,0x0
    80006888:	9b4080e7          	jalr	-1612(ra) # 80006238 <cpuid>
    8000688c:	01813083          	ld	ra,24(sp)
    80006890:	01013403          	ld	s0,16(sp)
    80006894:	00d5179b          	slliw	a5,a0,0xd
    80006898:	0c201737          	lui	a4,0xc201
    8000689c:	00f707b3          	add	a5,a4,a5
    800068a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800068a4:	00813483          	ld	s1,8(sp)
    800068a8:	02010113          	addi	sp,sp,32
    800068ac:	00008067          	ret

00000000800068b0 <consolewrite>:
    800068b0:	fb010113          	addi	sp,sp,-80
    800068b4:	04813023          	sd	s0,64(sp)
    800068b8:	04113423          	sd	ra,72(sp)
    800068bc:	02913c23          	sd	s1,56(sp)
    800068c0:	03213823          	sd	s2,48(sp)
    800068c4:	03313423          	sd	s3,40(sp)
    800068c8:	03413023          	sd	s4,32(sp)
    800068cc:	01513c23          	sd	s5,24(sp)
    800068d0:	05010413          	addi	s0,sp,80
    800068d4:	06c05c63          	blez	a2,8000694c <consolewrite+0x9c>
    800068d8:	00060993          	mv	s3,a2
    800068dc:	00050a13          	mv	s4,a0
    800068e0:	00058493          	mv	s1,a1
    800068e4:	00000913          	li	s2,0
    800068e8:	fff00a93          	li	s5,-1
    800068ec:	01c0006f          	j	80006908 <consolewrite+0x58>
    800068f0:	fbf44503          	lbu	a0,-65(s0)
    800068f4:	0019091b          	addiw	s2,s2,1
    800068f8:	00148493          	addi	s1,s1,1
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	a9c080e7          	jalr	-1380(ra) # 80007398 <uartputc>
    80006904:	03298063          	beq	s3,s2,80006924 <consolewrite+0x74>
    80006908:	00048613          	mv	a2,s1
    8000690c:	00100693          	li	a3,1
    80006910:	000a0593          	mv	a1,s4
    80006914:	fbf40513          	addi	a0,s0,-65
    80006918:	00000097          	auipc	ra,0x0
    8000691c:	9d8080e7          	jalr	-1576(ra) # 800062f0 <either_copyin>
    80006920:	fd5518e3          	bne	a0,s5,800068f0 <consolewrite+0x40>
    80006924:	04813083          	ld	ra,72(sp)
    80006928:	04013403          	ld	s0,64(sp)
    8000692c:	03813483          	ld	s1,56(sp)
    80006930:	02813983          	ld	s3,40(sp)
    80006934:	02013a03          	ld	s4,32(sp)
    80006938:	01813a83          	ld	s5,24(sp)
    8000693c:	00090513          	mv	a0,s2
    80006940:	03013903          	ld	s2,48(sp)
    80006944:	05010113          	addi	sp,sp,80
    80006948:	00008067          	ret
    8000694c:	00000913          	li	s2,0
    80006950:	fd5ff06f          	j	80006924 <consolewrite+0x74>

0000000080006954 <consoleread>:
    80006954:	f9010113          	addi	sp,sp,-112
    80006958:	06813023          	sd	s0,96(sp)
    8000695c:	04913c23          	sd	s1,88(sp)
    80006960:	05213823          	sd	s2,80(sp)
    80006964:	05313423          	sd	s3,72(sp)
    80006968:	05413023          	sd	s4,64(sp)
    8000696c:	03513c23          	sd	s5,56(sp)
    80006970:	03613823          	sd	s6,48(sp)
    80006974:	03713423          	sd	s7,40(sp)
    80006978:	03813023          	sd	s8,32(sp)
    8000697c:	06113423          	sd	ra,104(sp)
    80006980:	01913c23          	sd	s9,24(sp)
    80006984:	07010413          	addi	s0,sp,112
    80006988:	00060b93          	mv	s7,a2
    8000698c:	00050913          	mv	s2,a0
    80006990:	00058c13          	mv	s8,a1
    80006994:	00060b1b          	sext.w	s6,a2
    80006998:	00006497          	auipc	s1,0x6
    8000699c:	d3048493          	addi	s1,s1,-720 # 8000c6c8 <cons>
    800069a0:	00400993          	li	s3,4
    800069a4:	fff00a13          	li	s4,-1
    800069a8:	00a00a93          	li	s5,10
    800069ac:	05705e63          	blez	s7,80006a08 <consoleread+0xb4>
    800069b0:	09c4a703          	lw	a4,156(s1)
    800069b4:	0984a783          	lw	a5,152(s1)
    800069b8:	0007071b          	sext.w	a4,a4
    800069bc:	08e78463          	beq	a5,a4,80006a44 <consoleread+0xf0>
    800069c0:	07f7f713          	andi	a4,a5,127
    800069c4:	00e48733          	add	a4,s1,a4
    800069c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800069cc:	0017869b          	addiw	a3,a5,1
    800069d0:	08d4ac23          	sw	a3,152(s1)
    800069d4:	00070c9b          	sext.w	s9,a4
    800069d8:	0b370663          	beq	a4,s3,80006a84 <consoleread+0x130>
    800069dc:	00100693          	li	a3,1
    800069e0:	f9f40613          	addi	a2,s0,-97
    800069e4:	000c0593          	mv	a1,s8
    800069e8:	00090513          	mv	a0,s2
    800069ec:	f8e40fa3          	sb	a4,-97(s0)
    800069f0:	00000097          	auipc	ra,0x0
    800069f4:	8b4080e7          	jalr	-1868(ra) # 800062a4 <either_copyout>
    800069f8:	01450863          	beq	a0,s4,80006a08 <consoleread+0xb4>
    800069fc:	001c0c13          	addi	s8,s8,1
    80006a00:	fffb8b9b          	addiw	s7,s7,-1
    80006a04:	fb5c94e3          	bne	s9,s5,800069ac <consoleread+0x58>
    80006a08:	000b851b          	sext.w	a0,s7
    80006a0c:	06813083          	ld	ra,104(sp)
    80006a10:	06013403          	ld	s0,96(sp)
    80006a14:	05813483          	ld	s1,88(sp)
    80006a18:	05013903          	ld	s2,80(sp)
    80006a1c:	04813983          	ld	s3,72(sp)
    80006a20:	04013a03          	ld	s4,64(sp)
    80006a24:	03813a83          	ld	s5,56(sp)
    80006a28:	02813b83          	ld	s7,40(sp)
    80006a2c:	02013c03          	ld	s8,32(sp)
    80006a30:	01813c83          	ld	s9,24(sp)
    80006a34:	40ab053b          	subw	a0,s6,a0
    80006a38:	03013b03          	ld	s6,48(sp)
    80006a3c:	07010113          	addi	sp,sp,112
    80006a40:	00008067          	ret
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	1d8080e7          	jalr	472(ra) # 80007c1c <push_on>
    80006a4c:	0984a703          	lw	a4,152(s1)
    80006a50:	09c4a783          	lw	a5,156(s1)
    80006a54:	0007879b          	sext.w	a5,a5
    80006a58:	fef70ce3          	beq	a4,a5,80006a50 <consoleread+0xfc>
    80006a5c:	00001097          	auipc	ra,0x1
    80006a60:	234080e7          	jalr	564(ra) # 80007c90 <pop_on>
    80006a64:	0984a783          	lw	a5,152(s1)
    80006a68:	07f7f713          	andi	a4,a5,127
    80006a6c:	00e48733          	add	a4,s1,a4
    80006a70:	01874703          	lbu	a4,24(a4)
    80006a74:	0017869b          	addiw	a3,a5,1
    80006a78:	08d4ac23          	sw	a3,152(s1)
    80006a7c:	00070c9b          	sext.w	s9,a4
    80006a80:	f5371ee3          	bne	a4,s3,800069dc <consoleread+0x88>
    80006a84:	000b851b          	sext.w	a0,s7
    80006a88:	f96bf2e3          	bgeu	s7,s6,80006a0c <consoleread+0xb8>
    80006a8c:	08f4ac23          	sw	a5,152(s1)
    80006a90:	f7dff06f          	j	80006a0c <consoleread+0xb8>

0000000080006a94 <consputc>:
    80006a94:	10000793          	li	a5,256
    80006a98:	00f50663          	beq	a0,a5,80006aa4 <consputc+0x10>
    80006a9c:	00001317          	auipc	t1,0x1
    80006aa0:	9f430067          	jr	-1548(t1) # 80007490 <uartputc_sync>
    80006aa4:	ff010113          	addi	sp,sp,-16
    80006aa8:	00113423          	sd	ra,8(sp)
    80006aac:	00813023          	sd	s0,0(sp)
    80006ab0:	01010413          	addi	s0,sp,16
    80006ab4:	00800513          	li	a0,8
    80006ab8:	00001097          	auipc	ra,0x1
    80006abc:	9d8080e7          	jalr	-1576(ra) # 80007490 <uartputc_sync>
    80006ac0:	02000513          	li	a0,32
    80006ac4:	00001097          	auipc	ra,0x1
    80006ac8:	9cc080e7          	jalr	-1588(ra) # 80007490 <uartputc_sync>
    80006acc:	00013403          	ld	s0,0(sp)
    80006ad0:	00813083          	ld	ra,8(sp)
    80006ad4:	00800513          	li	a0,8
    80006ad8:	01010113          	addi	sp,sp,16
    80006adc:	00001317          	auipc	t1,0x1
    80006ae0:	9b430067          	jr	-1612(t1) # 80007490 <uartputc_sync>

0000000080006ae4 <consoleintr>:
    80006ae4:	fe010113          	addi	sp,sp,-32
    80006ae8:	00813823          	sd	s0,16(sp)
    80006aec:	00913423          	sd	s1,8(sp)
    80006af0:	01213023          	sd	s2,0(sp)
    80006af4:	00113c23          	sd	ra,24(sp)
    80006af8:	02010413          	addi	s0,sp,32
    80006afc:	00006917          	auipc	s2,0x6
    80006b00:	bcc90913          	addi	s2,s2,-1076 # 8000c6c8 <cons>
    80006b04:	00050493          	mv	s1,a0
    80006b08:	00090513          	mv	a0,s2
    80006b0c:	00001097          	auipc	ra,0x1
    80006b10:	e40080e7          	jalr	-448(ra) # 8000794c <acquire>
    80006b14:	02048c63          	beqz	s1,80006b4c <consoleintr+0x68>
    80006b18:	0a092783          	lw	a5,160(s2)
    80006b1c:	09892703          	lw	a4,152(s2)
    80006b20:	07f00693          	li	a3,127
    80006b24:	40e7873b          	subw	a4,a5,a4
    80006b28:	02e6e263          	bltu	a3,a4,80006b4c <consoleintr+0x68>
    80006b2c:	00d00713          	li	a4,13
    80006b30:	04e48063          	beq	s1,a4,80006b70 <consoleintr+0x8c>
    80006b34:	07f7f713          	andi	a4,a5,127
    80006b38:	00e90733          	add	a4,s2,a4
    80006b3c:	0017879b          	addiw	a5,a5,1
    80006b40:	0af92023          	sw	a5,160(s2)
    80006b44:	00970c23          	sb	s1,24(a4)
    80006b48:	08f92e23          	sw	a5,156(s2)
    80006b4c:	01013403          	ld	s0,16(sp)
    80006b50:	01813083          	ld	ra,24(sp)
    80006b54:	00813483          	ld	s1,8(sp)
    80006b58:	00013903          	ld	s2,0(sp)
    80006b5c:	00006517          	auipc	a0,0x6
    80006b60:	b6c50513          	addi	a0,a0,-1172 # 8000c6c8 <cons>
    80006b64:	02010113          	addi	sp,sp,32
    80006b68:	00001317          	auipc	t1,0x1
    80006b6c:	eb030067          	jr	-336(t1) # 80007a18 <release>
    80006b70:	00a00493          	li	s1,10
    80006b74:	fc1ff06f          	j	80006b34 <consoleintr+0x50>

0000000080006b78 <consoleinit>:
    80006b78:	fe010113          	addi	sp,sp,-32
    80006b7c:	00113c23          	sd	ra,24(sp)
    80006b80:	00813823          	sd	s0,16(sp)
    80006b84:	00913423          	sd	s1,8(sp)
    80006b88:	02010413          	addi	s0,sp,32
    80006b8c:	00006497          	auipc	s1,0x6
    80006b90:	b3c48493          	addi	s1,s1,-1220 # 8000c6c8 <cons>
    80006b94:	00048513          	mv	a0,s1
    80006b98:	00003597          	auipc	a1,0x3
    80006b9c:	b4058593          	addi	a1,a1,-1216 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006ba0:	00001097          	auipc	ra,0x1
    80006ba4:	d88080e7          	jalr	-632(ra) # 80007928 <initlock>
    80006ba8:	00000097          	auipc	ra,0x0
    80006bac:	7ac080e7          	jalr	1964(ra) # 80007354 <uartinit>
    80006bb0:	01813083          	ld	ra,24(sp)
    80006bb4:	01013403          	ld	s0,16(sp)
    80006bb8:	00000797          	auipc	a5,0x0
    80006bbc:	d9c78793          	addi	a5,a5,-612 # 80006954 <consoleread>
    80006bc0:	0af4bc23          	sd	a5,184(s1)
    80006bc4:	00000797          	auipc	a5,0x0
    80006bc8:	cec78793          	addi	a5,a5,-788 # 800068b0 <consolewrite>
    80006bcc:	0cf4b023          	sd	a5,192(s1)
    80006bd0:	00813483          	ld	s1,8(sp)
    80006bd4:	02010113          	addi	sp,sp,32
    80006bd8:	00008067          	ret

0000000080006bdc <console_read>:
    80006bdc:	ff010113          	addi	sp,sp,-16
    80006be0:	00813423          	sd	s0,8(sp)
    80006be4:	01010413          	addi	s0,sp,16
    80006be8:	00813403          	ld	s0,8(sp)
    80006bec:	00006317          	auipc	t1,0x6
    80006bf0:	b9433303          	ld	t1,-1132(t1) # 8000c780 <devsw+0x10>
    80006bf4:	01010113          	addi	sp,sp,16
    80006bf8:	00030067          	jr	t1

0000000080006bfc <console_write>:
    80006bfc:	ff010113          	addi	sp,sp,-16
    80006c00:	00813423          	sd	s0,8(sp)
    80006c04:	01010413          	addi	s0,sp,16
    80006c08:	00813403          	ld	s0,8(sp)
    80006c0c:	00006317          	auipc	t1,0x6
    80006c10:	b7c33303          	ld	t1,-1156(t1) # 8000c788 <devsw+0x18>
    80006c14:	01010113          	addi	sp,sp,16
    80006c18:	00030067          	jr	t1

0000000080006c1c <panic>:
    80006c1c:	fe010113          	addi	sp,sp,-32
    80006c20:	00113c23          	sd	ra,24(sp)
    80006c24:	00813823          	sd	s0,16(sp)
    80006c28:	00913423          	sd	s1,8(sp)
    80006c2c:	02010413          	addi	s0,sp,32
    80006c30:	00050493          	mv	s1,a0
    80006c34:	00003517          	auipc	a0,0x3
    80006c38:	aac50513          	addi	a0,a0,-1364 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006c3c:	00006797          	auipc	a5,0x6
    80006c40:	be07a623          	sw	zero,-1044(a5) # 8000c828 <pr+0x18>
    80006c44:	00000097          	auipc	ra,0x0
    80006c48:	034080e7          	jalr	52(ra) # 80006c78 <__printf>
    80006c4c:	00048513          	mv	a0,s1
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	028080e7          	jalr	40(ra) # 80006c78 <__printf>
    80006c58:	00003517          	auipc	a0,0x3
    80006c5c:	88050513          	addi	a0,a0,-1920 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006c60:	00000097          	auipc	ra,0x0
    80006c64:	018080e7          	jalr	24(ra) # 80006c78 <__printf>
    80006c68:	00100793          	li	a5,1
    80006c6c:	00005717          	auipc	a4,0x5
    80006c70:	8cf72e23          	sw	a5,-1828(a4) # 8000b548 <panicked>
    80006c74:	0000006f          	j	80006c74 <panic+0x58>

0000000080006c78 <__printf>:
    80006c78:	f3010113          	addi	sp,sp,-208
    80006c7c:	08813023          	sd	s0,128(sp)
    80006c80:	07313423          	sd	s3,104(sp)
    80006c84:	09010413          	addi	s0,sp,144
    80006c88:	05813023          	sd	s8,64(sp)
    80006c8c:	08113423          	sd	ra,136(sp)
    80006c90:	06913c23          	sd	s1,120(sp)
    80006c94:	07213823          	sd	s2,112(sp)
    80006c98:	07413023          	sd	s4,96(sp)
    80006c9c:	05513c23          	sd	s5,88(sp)
    80006ca0:	05613823          	sd	s6,80(sp)
    80006ca4:	05713423          	sd	s7,72(sp)
    80006ca8:	03913c23          	sd	s9,56(sp)
    80006cac:	03a13823          	sd	s10,48(sp)
    80006cb0:	03b13423          	sd	s11,40(sp)
    80006cb4:	00006317          	auipc	t1,0x6
    80006cb8:	b5c30313          	addi	t1,t1,-1188 # 8000c810 <pr>
    80006cbc:	01832c03          	lw	s8,24(t1)
    80006cc0:	00b43423          	sd	a1,8(s0)
    80006cc4:	00c43823          	sd	a2,16(s0)
    80006cc8:	00d43c23          	sd	a3,24(s0)
    80006ccc:	02e43023          	sd	a4,32(s0)
    80006cd0:	02f43423          	sd	a5,40(s0)
    80006cd4:	03043823          	sd	a6,48(s0)
    80006cd8:	03143c23          	sd	a7,56(s0)
    80006cdc:	00050993          	mv	s3,a0
    80006ce0:	4a0c1663          	bnez	s8,8000718c <__printf+0x514>
    80006ce4:	60098c63          	beqz	s3,800072fc <__printf+0x684>
    80006ce8:	0009c503          	lbu	a0,0(s3)
    80006cec:	00840793          	addi	a5,s0,8
    80006cf0:	f6f43c23          	sd	a5,-136(s0)
    80006cf4:	00000493          	li	s1,0
    80006cf8:	22050063          	beqz	a0,80006f18 <__printf+0x2a0>
    80006cfc:	00002a37          	lui	s4,0x2
    80006d00:	00018ab7          	lui	s5,0x18
    80006d04:	000f4b37          	lui	s6,0xf4
    80006d08:	00989bb7          	lui	s7,0x989
    80006d0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006d10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006d14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006d18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006d1c:	00148c9b          	addiw	s9,s1,1
    80006d20:	02500793          	li	a5,37
    80006d24:	01998933          	add	s2,s3,s9
    80006d28:	38f51263          	bne	a0,a5,800070ac <__printf+0x434>
    80006d2c:	00094783          	lbu	a5,0(s2)
    80006d30:	00078c9b          	sext.w	s9,a5
    80006d34:	1e078263          	beqz	a5,80006f18 <__printf+0x2a0>
    80006d38:	0024849b          	addiw	s1,s1,2
    80006d3c:	07000713          	li	a4,112
    80006d40:	00998933          	add	s2,s3,s1
    80006d44:	38e78a63          	beq	a5,a4,800070d8 <__printf+0x460>
    80006d48:	20f76863          	bltu	a4,a5,80006f58 <__printf+0x2e0>
    80006d4c:	42a78863          	beq	a5,a0,8000717c <__printf+0x504>
    80006d50:	06400713          	li	a4,100
    80006d54:	40e79663          	bne	a5,a4,80007160 <__printf+0x4e8>
    80006d58:	f7843783          	ld	a5,-136(s0)
    80006d5c:	0007a603          	lw	a2,0(a5)
    80006d60:	00878793          	addi	a5,a5,8
    80006d64:	f6f43c23          	sd	a5,-136(s0)
    80006d68:	42064a63          	bltz	a2,8000719c <__printf+0x524>
    80006d6c:	00a00713          	li	a4,10
    80006d70:	02e677bb          	remuw	a5,a2,a4
    80006d74:	00003d97          	auipc	s11,0x3
    80006d78:	994d8d93          	addi	s11,s11,-1644 # 80009708 <digits>
    80006d7c:	00900593          	li	a1,9
    80006d80:	0006051b          	sext.w	a0,a2
    80006d84:	00000c93          	li	s9,0
    80006d88:	02079793          	slli	a5,a5,0x20
    80006d8c:	0207d793          	srli	a5,a5,0x20
    80006d90:	00fd87b3          	add	a5,s11,a5
    80006d94:	0007c783          	lbu	a5,0(a5)
    80006d98:	02e656bb          	divuw	a3,a2,a4
    80006d9c:	f8f40023          	sb	a5,-128(s0)
    80006da0:	14c5d863          	bge	a1,a2,80006ef0 <__printf+0x278>
    80006da4:	06300593          	li	a1,99
    80006da8:	00100c93          	li	s9,1
    80006dac:	02e6f7bb          	remuw	a5,a3,a4
    80006db0:	02079793          	slli	a5,a5,0x20
    80006db4:	0207d793          	srli	a5,a5,0x20
    80006db8:	00fd87b3          	add	a5,s11,a5
    80006dbc:	0007c783          	lbu	a5,0(a5)
    80006dc0:	02e6d73b          	divuw	a4,a3,a4
    80006dc4:	f8f400a3          	sb	a5,-127(s0)
    80006dc8:	12a5f463          	bgeu	a1,a0,80006ef0 <__printf+0x278>
    80006dcc:	00a00693          	li	a3,10
    80006dd0:	00900593          	li	a1,9
    80006dd4:	02d777bb          	remuw	a5,a4,a3
    80006dd8:	02079793          	slli	a5,a5,0x20
    80006ddc:	0207d793          	srli	a5,a5,0x20
    80006de0:	00fd87b3          	add	a5,s11,a5
    80006de4:	0007c503          	lbu	a0,0(a5)
    80006de8:	02d757bb          	divuw	a5,a4,a3
    80006dec:	f8a40123          	sb	a0,-126(s0)
    80006df0:	48e5f263          	bgeu	a1,a4,80007274 <__printf+0x5fc>
    80006df4:	06300513          	li	a0,99
    80006df8:	02d7f5bb          	remuw	a1,a5,a3
    80006dfc:	02059593          	slli	a1,a1,0x20
    80006e00:	0205d593          	srli	a1,a1,0x20
    80006e04:	00bd85b3          	add	a1,s11,a1
    80006e08:	0005c583          	lbu	a1,0(a1)
    80006e0c:	02d7d7bb          	divuw	a5,a5,a3
    80006e10:	f8b401a3          	sb	a1,-125(s0)
    80006e14:	48e57263          	bgeu	a0,a4,80007298 <__printf+0x620>
    80006e18:	3e700513          	li	a0,999
    80006e1c:	02d7f5bb          	remuw	a1,a5,a3
    80006e20:	02059593          	slli	a1,a1,0x20
    80006e24:	0205d593          	srli	a1,a1,0x20
    80006e28:	00bd85b3          	add	a1,s11,a1
    80006e2c:	0005c583          	lbu	a1,0(a1)
    80006e30:	02d7d7bb          	divuw	a5,a5,a3
    80006e34:	f8b40223          	sb	a1,-124(s0)
    80006e38:	46e57663          	bgeu	a0,a4,800072a4 <__printf+0x62c>
    80006e3c:	02d7f5bb          	remuw	a1,a5,a3
    80006e40:	02059593          	slli	a1,a1,0x20
    80006e44:	0205d593          	srli	a1,a1,0x20
    80006e48:	00bd85b3          	add	a1,s11,a1
    80006e4c:	0005c583          	lbu	a1,0(a1)
    80006e50:	02d7d7bb          	divuw	a5,a5,a3
    80006e54:	f8b402a3          	sb	a1,-123(s0)
    80006e58:	46ea7863          	bgeu	s4,a4,800072c8 <__printf+0x650>
    80006e5c:	02d7f5bb          	remuw	a1,a5,a3
    80006e60:	02059593          	slli	a1,a1,0x20
    80006e64:	0205d593          	srli	a1,a1,0x20
    80006e68:	00bd85b3          	add	a1,s11,a1
    80006e6c:	0005c583          	lbu	a1,0(a1)
    80006e70:	02d7d7bb          	divuw	a5,a5,a3
    80006e74:	f8b40323          	sb	a1,-122(s0)
    80006e78:	3eeaf863          	bgeu	s5,a4,80007268 <__printf+0x5f0>
    80006e7c:	02d7f5bb          	remuw	a1,a5,a3
    80006e80:	02059593          	slli	a1,a1,0x20
    80006e84:	0205d593          	srli	a1,a1,0x20
    80006e88:	00bd85b3          	add	a1,s11,a1
    80006e8c:	0005c583          	lbu	a1,0(a1)
    80006e90:	02d7d7bb          	divuw	a5,a5,a3
    80006e94:	f8b403a3          	sb	a1,-121(s0)
    80006e98:	42eb7e63          	bgeu	s6,a4,800072d4 <__printf+0x65c>
    80006e9c:	02d7f5bb          	remuw	a1,a5,a3
    80006ea0:	02059593          	slli	a1,a1,0x20
    80006ea4:	0205d593          	srli	a1,a1,0x20
    80006ea8:	00bd85b3          	add	a1,s11,a1
    80006eac:	0005c583          	lbu	a1,0(a1)
    80006eb0:	02d7d7bb          	divuw	a5,a5,a3
    80006eb4:	f8b40423          	sb	a1,-120(s0)
    80006eb8:	42ebfc63          	bgeu	s7,a4,800072f0 <__printf+0x678>
    80006ebc:	02079793          	slli	a5,a5,0x20
    80006ec0:	0207d793          	srli	a5,a5,0x20
    80006ec4:	00fd8db3          	add	s11,s11,a5
    80006ec8:	000dc703          	lbu	a4,0(s11)
    80006ecc:	00a00793          	li	a5,10
    80006ed0:	00900c93          	li	s9,9
    80006ed4:	f8e404a3          	sb	a4,-119(s0)
    80006ed8:	00065c63          	bgez	a2,80006ef0 <__printf+0x278>
    80006edc:	f9040713          	addi	a4,s0,-112
    80006ee0:	00f70733          	add	a4,a4,a5
    80006ee4:	02d00693          	li	a3,45
    80006ee8:	fed70823          	sb	a3,-16(a4)
    80006eec:	00078c93          	mv	s9,a5
    80006ef0:	f8040793          	addi	a5,s0,-128
    80006ef4:	01978cb3          	add	s9,a5,s9
    80006ef8:	f7f40d13          	addi	s10,s0,-129
    80006efc:	000cc503          	lbu	a0,0(s9)
    80006f00:	fffc8c93          	addi	s9,s9,-1
    80006f04:	00000097          	auipc	ra,0x0
    80006f08:	b90080e7          	jalr	-1136(ra) # 80006a94 <consputc>
    80006f0c:	ffac98e3          	bne	s9,s10,80006efc <__printf+0x284>
    80006f10:	00094503          	lbu	a0,0(s2)
    80006f14:	e00514e3          	bnez	a0,80006d1c <__printf+0xa4>
    80006f18:	1a0c1663          	bnez	s8,800070c4 <__printf+0x44c>
    80006f1c:	08813083          	ld	ra,136(sp)
    80006f20:	08013403          	ld	s0,128(sp)
    80006f24:	07813483          	ld	s1,120(sp)
    80006f28:	07013903          	ld	s2,112(sp)
    80006f2c:	06813983          	ld	s3,104(sp)
    80006f30:	06013a03          	ld	s4,96(sp)
    80006f34:	05813a83          	ld	s5,88(sp)
    80006f38:	05013b03          	ld	s6,80(sp)
    80006f3c:	04813b83          	ld	s7,72(sp)
    80006f40:	04013c03          	ld	s8,64(sp)
    80006f44:	03813c83          	ld	s9,56(sp)
    80006f48:	03013d03          	ld	s10,48(sp)
    80006f4c:	02813d83          	ld	s11,40(sp)
    80006f50:	0d010113          	addi	sp,sp,208
    80006f54:	00008067          	ret
    80006f58:	07300713          	li	a4,115
    80006f5c:	1ce78a63          	beq	a5,a4,80007130 <__printf+0x4b8>
    80006f60:	07800713          	li	a4,120
    80006f64:	1ee79e63          	bne	a5,a4,80007160 <__printf+0x4e8>
    80006f68:	f7843783          	ld	a5,-136(s0)
    80006f6c:	0007a703          	lw	a4,0(a5)
    80006f70:	00878793          	addi	a5,a5,8
    80006f74:	f6f43c23          	sd	a5,-136(s0)
    80006f78:	28074263          	bltz	a4,800071fc <__printf+0x584>
    80006f7c:	00002d97          	auipc	s11,0x2
    80006f80:	78cd8d93          	addi	s11,s11,1932 # 80009708 <digits>
    80006f84:	00f77793          	andi	a5,a4,15
    80006f88:	00fd87b3          	add	a5,s11,a5
    80006f8c:	0007c683          	lbu	a3,0(a5)
    80006f90:	00f00613          	li	a2,15
    80006f94:	0007079b          	sext.w	a5,a4
    80006f98:	f8d40023          	sb	a3,-128(s0)
    80006f9c:	0047559b          	srliw	a1,a4,0x4
    80006fa0:	0047569b          	srliw	a3,a4,0x4
    80006fa4:	00000c93          	li	s9,0
    80006fa8:	0ee65063          	bge	a2,a4,80007088 <__printf+0x410>
    80006fac:	00f6f693          	andi	a3,a3,15
    80006fb0:	00dd86b3          	add	a3,s11,a3
    80006fb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006fb8:	0087d79b          	srliw	a5,a5,0x8
    80006fbc:	00100c93          	li	s9,1
    80006fc0:	f8d400a3          	sb	a3,-127(s0)
    80006fc4:	0cb67263          	bgeu	a2,a1,80007088 <__printf+0x410>
    80006fc8:	00f7f693          	andi	a3,a5,15
    80006fcc:	00dd86b3          	add	a3,s11,a3
    80006fd0:	0006c583          	lbu	a1,0(a3)
    80006fd4:	00f00613          	li	a2,15
    80006fd8:	0047d69b          	srliw	a3,a5,0x4
    80006fdc:	f8b40123          	sb	a1,-126(s0)
    80006fe0:	0047d593          	srli	a1,a5,0x4
    80006fe4:	28f67e63          	bgeu	a2,a5,80007280 <__printf+0x608>
    80006fe8:	00f6f693          	andi	a3,a3,15
    80006fec:	00dd86b3          	add	a3,s11,a3
    80006ff0:	0006c503          	lbu	a0,0(a3)
    80006ff4:	0087d813          	srli	a6,a5,0x8
    80006ff8:	0087d69b          	srliw	a3,a5,0x8
    80006ffc:	f8a401a3          	sb	a0,-125(s0)
    80007000:	28b67663          	bgeu	a2,a1,8000728c <__printf+0x614>
    80007004:	00f6f693          	andi	a3,a3,15
    80007008:	00dd86b3          	add	a3,s11,a3
    8000700c:	0006c583          	lbu	a1,0(a3)
    80007010:	00c7d513          	srli	a0,a5,0xc
    80007014:	00c7d69b          	srliw	a3,a5,0xc
    80007018:	f8b40223          	sb	a1,-124(s0)
    8000701c:	29067a63          	bgeu	a2,a6,800072b0 <__printf+0x638>
    80007020:	00f6f693          	andi	a3,a3,15
    80007024:	00dd86b3          	add	a3,s11,a3
    80007028:	0006c583          	lbu	a1,0(a3)
    8000702c:	0107d813          	srli	a6,a5,0x10
    80007030:	0107d69b          	srliw	a3,a5,0x10
    80007034:	f8b402a3          	sb	a1,-123(s0)
    80007038:	28a67263          	bgeu	a2,a0,800072bc <__printf+0x644>
    8000703c:	00f6f693          	andi	a3,a3,15
    80007040:	00dd86b3          	add	a3,s11,a3
    80007044:	0006c683          	lbu	a3,0(a3)
    80007048:	0147d79b          	srliw	a5,a5,0x14
    8000704c:	f8d40323          	sb	a3,-122(s0)
    80007050:	21067663          	bgeu	a2,a6,8000725c <__printf+0x5e4>
    80007054:	02079793          	slli	a5,a5,0x20
    80007058:	0207d793          	srli	a5,a5,0x20
    8000705c:	00fd8db3          	add	s11,s11,a5
    80007060:	000dc683          	lbu	a3,0(s11)
    80007064:	00800793          	li	a5,8
    80007068:	00700c93          	li	s9,7
    8000706c:	f8d403a3          	sb	a3,-121(s0)
    80007070:	00075c63          	bgez	a4,80007088 <__printf+0x410>
    80007074:	f9040713          	addi	a4,s0,-112
    80007078:	00f70733          	add	a4,a4,a5
    8000707c:	02d00693          	li	a3,45
    80007080:	fed70823          	sb	a3,-16(a4)
    80007084:	00078c93          	mv	s9,a5
    80007088:	f8040793          	addi	a5,s0,-128
    8000708c:	01978cb3          	add	s9,a5,s9
    80007090:	f7f40d13          	addi	s10,s0,-129
    80007094:	000cc503          	lbu	a0,0(s9)
    80007098:	fffc8c93          	addi	s9,s9,-1
    8000709c:	00000097          	auipc	ra,0x0
    800070a0:	9f8080e7          	jalr	-1544(ra) # 80006a94 <consputc>
    800070a4:	ff9d18e3          	bne	s10,s9,80007094 <__printf+0x41c>
    800070a8:	0100006f          	j	800070b8 <__printf+0x440>
    800070ac:	00000097          	auipc	ra,0x0
    800070b0:	9e8080e7          	jalr	-1560(ra) # 80006a94 <consputc>
    800070b4:	000c8493          	mv	s1,s9
    800070b8:	00094503          	lbu	a0,0(s2)
    800070bc:	c60510e3          	bnez	a0,80006d1c <__printf+0xa4>
    800070c0:	e40c0ee3          	beqz	s8,80006f1c <__printf+0x2a4>
    800070c4:	00005517          	auipc	a0,0x5
    800070c8:	74c50513          	addi	a0,a0,1868 # 8000c810 <pr>
    800070cc:	00001097          	auipc	ra,0x1
    800070d0:	94c080e7          	jalr	-1716(ra) # 80007a18 <release>
    800070d4:	e49ff06f          	j	80006f1c <__printf+0x2a4>
    800070d8:	f7843783          	ld	a5,-136(s0)
    800070dc:	03000513          	li	a0,48
    800070e0:	01000d13          	li	s10,16
    800070e4:	00878713          	addi	a4,a5,8
    800070e8:	0007bc83          	ld	s9,0(a5)
    800070ec:	f6e43c23          	sd	a4,-136(s0)
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	9a4080e7          	jalr	-1628(ra) # 80006a94 <consputc>
    800070f8:	07800513          	li	a0,120
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	998080e7          	jalr	-1640(ra) # 80006a94 <consputc>
    80007104:	00002d97          	auipc	s11,0x2
    80007108:	604d8d93          	addi	s11,s11,1540 # 80009708 <digits>
    8000710c:	03ccd793          	srli	a5,s9,0x3c
    80007110:	00fd87b3          	add	a5,s11,a5
    80007114:	0007c503          	lbu	a0,0(a5)
    80007118:	fffd0d1b          	addiw	s10,s10,-1
    8000711c:	004c9c93          	slli	s9,s9,0x4
    80007120:	00000097          	auipc	ra,0x0
    80007124:	974080e7          	jalr	-1676(ra) # 80006a94 <consputc>
    80007128:	fe0d12e3          	bnez	s10,8000710c <__printf+0x494>
    8000712c:	f8dff06f          	j	800070b8 <__printf+0x440>
    80007130:	f7843783          	ld	a5,-136(s0)
    80007134:	0007bc83          	ld	s9,0(a5)
    80007138:	00878793          	addi	a5,a5,8
    8000713c:	f6f43c23          	sd	a5,-136(s0)
    80007140:	000c9a63          	bnez	s9,80007154 <__printf+0x4dc>
    80007144:	1080006f          	j	8000724c <__printf+0x5d4>
    80007148:	001c8c93          	addi	s9,s9,1
    8000714c:	00000097          	auipc	ra,0x0
    80007150:	948080e7          	jalr	-1720(ra) # 80006a94 <consputc>
    80007154:	000cc503          	lbu	a0,0(s9)
    80007158:	fe0518e3          	bnez	a0,80007148 <__printf+0x4d0>
    8000715c:	f5dff06f          	j	800070b8 <__printf+0x440>
    80007160:	02500513          	li	a0,37
    80007164:	00000097          	auipc	ra,0x0
    80007168:	930080e7          	jalr	-1744(ra) # 80006a94 <consputc>
    8000716c:	000c8513          	mv	a0,s9
    80007170:	00000097          	auipc	ra,0x0
    80007174:	924080e7          	jalr	-1756(ra) # 80006a94 <consputc>
    80007178:	f41ff06f          	j	800070b8 <__printf+0x440>
    8000717c:	02500513          	li	a0,37
    80007180:	00000097          	auipc	ra,0x0
    80007184:	914080e7          	jalr	-1772(ra) # 80006a94 <consputc>
    80007188:	f31ff06f          	j	800070b8 <__printf+0x440>
    8000718c:	00030513          	mv	a0,t1
    80007190:	00000097          	auipc	ra,0x0
    80007194:	7bc080e7          	jalr	1980(ra) # 8000794c <acquire>
    80007198:	b4dff06f          	j	80006ce4 <__printf+0x6c>
    8000719c:	40c0053b          	negw	a0,a2
    800071a0:	00a00713          	li	a4,10
    800071a4:	02e576bb          	remuw	a3,a0,a4
    800071a8:	00002d97          	auipc	s11,0x2
    800071ac:	560d8d93          	addi	s11,s11,1376 # 80009708 <digits>
    800071b0:	ff700593          	li	a1,-9
    800071b4:	02069693          	slli	a3,a3,0x20
    800071b8:	0206d693          	srli	a3,a3,0x20
    800071bc:	00dd86b3          	add	a3,s11,a3
    800071c0:	0006c683          	lbu	a3,0(a3)
    800071c4:	02e557bb          	divuw	a5,a0,a4
    800071c8:	f8d40023          	sb	a3,-128(s0)
    800071cc:	10b65e63          	bge	a2,a1,800072e8 <__printf+0x670>
    800071d0:	06300593          	li	a1,99
    800071d4:	02e7f6bb          	remuw	a3,a5,a4
    800071d8:	02069693          	slli	a3,a3,0x20
    800071dc:	0206d693          	srli	a3,a3,0x20
    800071e0:	00dd86b3          	add	a3,s11,a3
    800071e4:	0006c683          	lbu	a3,0(a3)
    800071e8:	02e7d73b          	divuw	a4,a5,a4
    800071ec:	00200793          	li	a5,2
    800071f0:	f8d400a3          	sb	a3,-127(s0)
    800071f4:	bca5ece3          	bltu	a1,a0,80006dcc <__printf+0x154>
    800071f8:	ce5ff06f          	j	80006edc <__printf+0x264>
    800071fc:	40e007bb          	negw	a5,a4
    80007200:	00002d97          	auipc	s11,0x2
    80007204:	508d8d93          	addi	s11,s11,1288 # 80009708 <digits>
    80007208:	00f7f693          	andi	a3,a5,15
    8000720c:	00dd86b3          	add	a3,s11,a3
    80007210:	0006c583          	lbu	a1,0(a3)
    80007214:	ff100613          	li	a2,-15
    80007218:	0047d69b          	srliw	a3,a5,0x4
    8000721c:	f8b40023          	sb	a1,-128(s0)
    80007220:	0047d59b          	srliw	a1,a5,0x4
    80007224:	0ac75e63          	bge	a4,a2,800072e0 <__printf+0x668>
    80007228:	00f6f693          	andi	a3,a3,15
    8000722c:	00dd86b3          	add	a3,s11,a3
    80007230:	0006c603          	lbu	a2,0(a3)
    80007234:	00f00693          	li	a3,15
    80007238:	0087d79b          	srliw	a5,a5,0x8
    8000723c:	f8c400a3          	sb	a2,-127(s0)
    80007240:	d8b6e4e3          	bltu	a3,a1,80006fc8 <__printf+0x350>
    80007244:	00200793          	li	a5,2
    80007248:	e2dff06f          	j	80007074 <__printf+0x3fc>
    8000724c:	00002c97          	auipc	s9,0x2
    80007250:	49cc8c93          	addi	s9,s9,1180 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007254:	02800513          	li	a0,40
    80007258:	ef1ff06f          	j	80007148 <__printf+0x4d0>
    8000725c:	00700793          	li	a5,7
    80007260:	00600c93          	li	s9,6
    80007264:	e0dff06f          	j	80007070 <__printf+0x3f8>
    80007268:	00700793          	li	a5,7
    8000726c:	00600c93          	li	s9,6
    80007270:	c69ff06f          	j	80006ed8 <__printf+0x260>
    80007274:	00300793          	li	a5,3
    80007278:	00200c93          	li	s9,2
    8000727c:	c5dff06f          	j	80006ed8 <__printf+0x260>
    80007280:	00300793          	li	a5,3
    80007284:	00200c93          	li	s9,2
    80007288:	de9ff06f          	j	80007070 <__printf+0x3f8>
    8000728c:	00400793          	li	a5,4
    80007290:	00300c93          	li	s9,3
    80007294:	dddff06f          	j	80007070 <__printf+0x3f8>
    80007298:	00400793          	li	a5,4
    8000729c:	00300c93          	li	s9,3
    800072a0:	c39ff06f          	j	80006ed8 <__printf+0x260>
    800072a4:	00500793          	li	a5,5
    800072a8:	00400c93          	li	s9,4
    800072ac:	c2dff06f          	j	80006ed8 <__printf+0x260>
    800072b0:	00500793          	li	a5,5
    800072b4:	00400c93          	li	s9,4
    800072b8:	db9ff06f          	j	80007070 <__printf+0x3f8>
    800072bc:	00600793          	li	a5,6
    800072c0:	00500c93          	li	s9,5
    800072c4:	dadff06f          	j	80007070 <__printf+0x3f8>
    800072c8:	00600793          	li	a5,6
    800072cc:	00500c93          	li	s9,5
    800072d0:	c09ff06f          	j	80006ed8 <__printf+0x260>
    800072d4:	00800793          	li	a5,8
    800072d8:	00700c93          	li	s9,7
    800072dc:	bfdff06f          	j	80006ed8 <__printf+0x260>
    800072e0:	00100793          	li	a5,1
    800072e4:	d91ff06f          	j	80007074 <__printf+0x3fc>
    800072e8:	00100793          	li	a5,1
    800072ec:	bf1ff06f          	j	80006edc <__printf+0x264>
    800072f0:	00900793          	li	a5,9
    800072f4:	00800c93          	li	s9,8
    800072f8:	be1ff06f          	j	80006ed8 <__printf+0x260>
    800072fc:	00002517          	auipc	a0,0x2
    80007300:	3f450513          	addi	a0,a0,1012 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007304:	00000097          	auipc	ra,0x0
    80007308:	918080e7          	jalr	-1768(ra) # 80006c1c <panic>

000000008000730c <printfinit>:
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00813823          	sd	s0,16(sp)
    80007314:	00913423          	sd	s1,8(sp)
    80007318:	00113c23          	sd	ra,24(sp)
    8000731c:	02010413          	addi	s0,sp,32
    80007320:	00005497          	auipc	s1,0x5
    80007324:	4f048493          	addi	s1,s1,1264 # 8000c810 <pr>
    80007328:	00048513          	mv	a0,s1
    8000732c:	00002597          	auipc	a1,0x2
    80007330:	3d458593          	addi	a1,a1,980 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007334:	00000097          	auipc	ra,0x0
    80007338:	5f4080e7          	jalr	1524(ra) # 80007928 <initlock>
    8000733c:	01813083          	ld	ra,24(sp)
    80007340:	01013403          	ld	s0,16(sp)
    80007344:	0004ac23          	sw	zero,24(s1)
    80007348:	00813483          	ld	s1,8(sp)
    8000734c:	02010113          	addi	sp,sp,32
    80007350:	00008067          	ret

0000000080007354 <uartinit>:
    80007354:	ff010113          	addi	sp,sp,-16
    80007358:	00813423          	sd	s0,8(sp)
    8000735c:	01010413          	addi	s0,sp,16
    80007360:	100007b7          	lui	a5,0x10000
    80007364:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007368:	f8000713          	li	a4,-128
    8000736c:	00e781a3          	sb	a4,3(a5)
    80007370:	00300713          	li	a4,3
    80007374:	00e78023          	sb	a4,0(a5)
    80007378:	000780a3          	sb	zero,1(a5)
    8000737c:	00e781a3          	sb	a4,3(a5)
    80007380:	00700693          	li	a3,7
    80007384:	00d78123          	sb	a3,2(a5)
    80007388:	00e780a3          	sb	a4,1(a5)
    8000738c:	00813403          	ld	s0,8(sp)
    80007390:	01010113          	addi	sp,sp,16
    80007394:	00008067          	ret

0000000080007398 <uartputc>:
    80007398:	00004797          	auipc	a5,0x4
    8000739c:	1b07a783          	lw	a5,432(a5) # 8000b548 <panicked>
    800073a0:	00078463          	beqz	a5,800073a8 <uartputc+0x10>
    800073a4:	0000006f          	j	800073a4 <uartputc+0xc>
    800073a8:	fd010113          	addi	sp,sp,-48
    800073ac:	02813023          	sd	s0,32(sp)
    800073b0:	00913c23          	sd	s1,24(sp)
    800073b4:	01213823          	sd	s2,16(sp)
    800073b8:	01313423          	sd	s3,8(sp)
    800073bc:	02113423          	sd	ra,40(sp)
    800073c0:	03010413          	addi	s0,sp,48
    800073c4:	00004917          	auipc	s2,0x4
    800073c8:	18c90913          	addi	s2,s2,396 # 8000b550 <uart_tx_r>
    800073cc:	00093783          	ld	a5,0(s2)
    800073d0:	00004497          	auipc	s1,0x4
    800073d4:	18848493          	addi	s1,s1,392 # 8000b558 <uart_tx_w>
    800073d8:	0004b703          	ld	a4,0(s1)
    800073dc:	02078693          	addi	a3,a5,32
    800073e0:	00050993          	mv	s3,a0
    800073e4:	02e69c63          	bne	a3,a4,8000741c <uartputc+0x84>
    800073e8:	00001097          	auipc	ra,0x1
    800073ec:	834080e7          	jalr	-1996(ra) # 80007c1c <push_on>
    800073f0:	00093783          	ld	a5,0(s2)
    800073f4:	0004b703          	ld	a4,0(s1)
    800073f8:	02078793          	addi	a5,a5,32
    800073fc:	00e79463          	bne	a5,a4,80007404 <uartputc+0x6c>
    80007400:	0000006f          	j	80007400 <uartputc+0x68>
    80007404:	00001097          	auipc	ra,0x1
    80007408:	88c080e7          	jalr	-1908(ra) # 80007c90 <pop_on>
    8000740c:	00093783          	ld	a5,0(s2)
    80007410:	0004b703          	ld	a4,0(s1)
    80007414:	02078693          	addi	a3,a5,32
    80007418:	fce688e3          	beq	a3,a4,800073e8 <uartputc+0x50>
    8000741c:	01f77693          	andi	a3,a4,31
    80007420:	00005597          	auipc	a1,0x5
    80007424:	41058593          	addi	a1,a1,1040 # 8000c830 <uart_tx_buf>
    80007428:	00d586b3          	add	a3,a1,a3
    8000742c:	00170713          	addi	a4,a4,1
    80007430:	01368023          	sb	s3,0(a3)
    80007434:	00e4b023          	sd	a4,0(s1)
    80007438:	10000637          	lui	a2,0x10000
    8000743c:	02f71063          	bne	a4,a5,8000745c <uartputc+0xc4>
    80007440:	0340006f          	j	80007474 <uartputc+0xdc>
    80007444:	00074703          	lbu	a4,0(a4)
    80007448:	00f93023          	sd	a5,0(s2)
    8000744c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007450:	00093783          	ld	a5,0(s2)
    80007454:	0004b703          	ld	a4,0(s1)
    80007458:	00f70e63          	beq	a4,a5,80007474 <uartputc+0xdc>
    8000745c:	00564683          	lbu	a3,5(a2)
    80007460:	01f7f713          	andi	a4,a5,31
    80007464:	00e58733          	add	a4,a1,a4
    80007468:	0206f693          	andi	a3,a3,32
    8000746c:	00178793          	addi	a5,a5,1
    80007470:	fc069ae3          	bnez	a3,80007444 <uartputc+0xac>
    80007474:	02813083          	ld	ra,40(sp)
    80007478:	02013403          	ld	s0,32(sp)
    8000747c:	01813483          	ld	s1,24(sp)
    80007480:	01013903          	ld	s2,16(sp)
    80007484:	00813983          	ld	s3,8(sp)
    80007488:	03010113          	addi	sp,sp,48
    8000748c:	00008067          	ret

0000000080007490 <uartputc_sync>:
    80007490:	ff010113          	addi	sp,sp,-16
    80007494:	00813423          	sd	s0,8(sp)
    80007498:	01010413          	addi	s0,sp,16
    8000749c:	00004717          	auipc	a4,0x4
    800074a0:	0ac72703          	lw	a4,172(a4) # 8000b548 <panicked>
    800074a4:	02071663          	bnez	a4,800074d0 <uartputc_sync+0x40>
    800074a8:	00050793          	mv	a5,a0
    800074ac:	100006b7          	lui	a3,0x10000
    800074b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800074b4:	02077713          	andi	a4,a4,32
    800074b8:	fe070ce3          	beqz	a4,800074b0 <uartputc_sync+0x20>
    800074bc:	0ff7f793          	andi	a5,a5,255
    800074c0:	00f68023          	sb	a5,0(a3)
    800074c4:	00813403          	ld	s0,8(sp)
    800074c8:	01010113          	addi	sp,sp,16
    800074cc:	00008067          	ret
    800074d0:	0000006f          	j	800074d0 <uartputc_sync+0x40>

00000000800074d4 <uartstart>:
    800074d4:	ff010113          	addi	sp,sp,-16
    800074d8:	00813423          	sd	s0,8(sp)
    800074dc:	01010413          	addi	s0,sp,16
    800074e0:	00004617          	auipc	a2,0x4
    800074e4:	07060613          	addi	a2,a2,112 # 8000b550 <uart_tx_r>
    800074e8:	00004517          	auipc	a0,0x4
    800074ec:	07050513          	addi	a0,a0,112 # 8000b558 <uart_tx_w>
    800074f0:	00063783          	ld	a5,0(a2)
    800074f4:	00053703          	ld	a4,0(a0)
    800074f8:	04f70263          	beq	a4,a5,8000753c <uartstart+0x68>
    800074fc:	100005b7          	lui	a1,0x10000
    80007500:	00005817          	auipc	a6,0x5
    80007504:	33080813          	addi	a6,a6,816 # 8000c830 <uart_tx_buf>
    80007508:	01c0006f          	j	80007524 <uartstart+0x50>
    8000750c:	0006c703          	lbu	a4,0(a3)
    80007510:	00f63023          	sd	a5,0(a2)
    80007514:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007518:	00063783          	ld	a5,0(a2)
    8000751c:	00053703          	ld	a4,0(a0)
    80007520:	00f70e63          	beq	a4,a5,8000753c <uartstart+0x68>
    80007524:	01f7f713          	andi	a4,a5,31
    80007528:	00e806b3          	add	a3,a6,a4
    8000752c:	0055c703          	lbu	a4,5(a1)
    80007530:	00178793          	addi	a5,a5,1
    80007534:	02077713          	andi	a4,a4,32
    80007538:	fc071ae3          	bnez	a4,8000750c <uartstart+0x38>
    8000753c:	00813403          	ld	s0,8(sp)
    80007540:	01010113          	addi	sp,sp,16
    80007544:	00008067          	ret

0000000080007548 <uartgetc>:
    80007548:	ff010113          	addi	sp,sp,-16
    8000754c:	00813423          	sd	s0,8(sp)
    80007550:	01010413          	addi	s0,sp,16
    80007554:	10000737          	lui	a4,0x10000
    80007558:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000755c:	0017f793          	andi	a5,a5,1
    80007560:	00078c63          	beqz	a5,80007578 <uartgetc+0x30>
    80007564:	00074503          	lbu	a0,0(a4)
    80007568:	0ff57513          	andi	a0,a0,255
    8000756c:	00813403          	ld	s0,8(sp)
    80007570:	01010113          	addi	sp,sp,16
    80007574:	00008067          	ret
    80007578:	fff00513          	li	a0,-1
    8000757c:	ff1ff06f          	j	8000756c <uartgetc+0x24>

0000000080007580 <uartintr>:
    80007580:	100007b7          	lui	a5,0x10000
    80007584:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007588:	0017f793          	andi	a5,a5,1
    8000758c:	0a078463          	beqz	a5,80007634 <uartintr+0xb4>
    80007590:	fe010113          	addi	sp,sp,-32
    80007594:	00813823          	sd	s0,16(sp)
    80007598:	00913423          	sd	s1,8(sp)
    8000759c:	00113c23          	sd	ra,24(sp)
    800075a0:	02010413          	addi	s0,sp,32
    800075a4:	100004b7          	lui	s1,0x10000
    800075a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800075ac:	0ff57513          	andi	a0,a0,255
    800075b0:	fffff097          	auipc	ra,0xfffff
    800075b4:	534080e7          	jalr	1332(ra) # 80006ae4 <consoleintr>
    800075b8:	0054c783          	lbu	a5,5(s1)
    800075bc:	0017f793          	andi	a5,a5,1
    800075c0:	fe0794e3          	bnez	a5,800075a8 <uartintr+0x28>
    800075c4:	00004617          	auipc	a2,0x4
    800075c8:	f8c60613          	addi	a2,a2,-116 # 8000b550 <uart_tx_r>
    800075cc:	00004517          	auipc	a0,0x4
    800075d0:	f8c50513          	addi	a0,a0,-116 # 8000b558 <uart_tx_w>
    800075d4:	00063783          	ld	a5,0(a2)
    800075d8:	00053703          	ld	a4,0(a0)
    800075dc:	04f70263          	beq	a4,a5,80007620 <uartintr+0xa0>
    800075e0:	100005b7          	lui	a1,0x10000
    800075e4:	00005817          	auipc	a6,0x5
    800075e8:	24c80813          	addi	a6,a6,588 # 8000c830 <uart_tx_buf>
    800075ec:	01c0006f          	j	80007608 <uartintr+0x88>
    800075f0:	0006c703          	lbu	a4,0(a3)
    800075f4:	00f63023          	sd	a5,0(a2)
    800075f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075fc:	00063783          	ld	a5,0(a2)
    80007600:	00053703          	ld	a4,0(a0)
    80007604:	00f70e63          	beq	a4,a5,80007620 <uartintr+0xa0>
    80007608:	01f7f713          	andi	a4,a5,31
    8000760c:	00e806b3          	add	a3,a6,a4
    80007610:	0055c703          	lbu	a4,5(a1)
    80007614:	00178793          	addi	a5,a5,1
    80007618:	02077713          	andi	a4,a4,32
    8000761c:	fc071ae3          	bnez	a4,800075f0 <uartintr+0x70>
    80007620:	01813083          	ld	ra,24(sp)
    80007624:	01013403          	ld	s0,16(sp)
    80007628:	00813483          	ld	s1,8(sp)
    8000762c:	02010113          	addi	sp,sp,32
    80007630:	00008067          	ret
    80007634:	00004617          	auipc	a2,0x4
    80007638:	f1c60613          	addi	a2,a2,-228 # 8000b550 <uart_tx_r>
    8000763c:	00004517          	auipc	a0,0x4
    80007640:	f1c50513          	addi	a0,a0,-228 # 8000b558 <uart_tx_w>
    80007644:	00063783          	ld	a5,0(a2)
    80007648:	00053703          	ld	a4,0(a0)
    8000764c:	04f70263          	beq	a4,a5,80007690 <uartintr+0x110>
    80007650:	100005b7          	lui	a1,0x10000
    80007654:	00005817          	auipc	a6,0x5
    80007658:	1dc80813          	addi	a6,a6,476 # 8000c830 <uart_tx_buf>
    8000765c:	01c0006f          	j	80007678 <uartintr+0xf8>
    80007660:	0006c703          	lbu	a4,0(a3)
    80007664:	00f63023          	sd	a5,0(a2)
    80007668:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000766c:	00063783          	ld	a5,0(a2)
    80007670:	00053703          	ld	a4,0(a0)
    80007674:	02f70063          	beq	a4,a5,80007694 <uartintr+0x114>
    80007678:	01f7f713          	andi	a4,a5,31
    8000767c:	00e806b3          	add	a3,a6,a4
    80007680:	0055c703          	lbu	a4,5(a1)
    80007684:	00178793          	addi	a5,a5,1
    80007688:	02077713          	andi	a4,a4,32
    8000768c:	fc071ae3          	bnez	a4,80007660 <uartintr+0xe0>
    80007690:	00008067          	ret
    80007694:	00008067          	ret

0000000080007698 <kinit>:
    80007698:	fc010113          	addi	sp,sp,-64
    8000769c:	02913423          	sd	s1,40(sp)
    800076a0:	fffff7b7          	lui	a5,0xfffff
    800076a4:	00006497          	auipc	s1,0x6
    800076a8:	1ab48493          	addi	s1,s1,427 # 8000d84f <end+0xfff>
    800076ac:	02813823          	sd	s0,48(sp)
    800076b0:	01313c23          	sd	s3,24(sp)
    800076b4:	00f4f4b3          	and	s1,s1,a5
    800076b8:	02113c23          	sd	ra,56(sp)
    800076bc:	03213023          	sd	s2,32(sp)
    800076c0:	01413823          	sd	s4,16(sp)
    800076c4:	01513423          	sd	s5,8(sp)
    800076c8:	04010413          	addi	s0,sp,64
    800076cc:	000017b7          	lui	a5,0x1
    800076d0:	01100993          	li	s3,17
    800076d4:	00f487b3          	add	a5,s1,a5
    800076d8:	01b99993          	slli	s3,s3,0x1b
    800076dc:	06f9e063          	bltu	s3,a5,8000773c <kinit+0xa4>
    800076e0:	00005a97          	auipc	s5,0x5
    800076e4:	170a8a93          	addi	s5,s5,368 # 8000c850 <end>
    800076e8:	0754ec63          	bltu	s1,s5,80007760 <kinit+0xc8>
    800076ec:	0734fa63          	bgeu	s1,s3,80007760 <kinit+0xc8>
    800076f0:	00088a37          	lui	s4,0x88
    800076f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800076f8:	00004917          	auipc	s2,0x4
    800076fc:	e6890913          	addi	s2,s2,-408 # 8000b560 <kmem>
    80007700:	00ca1a13          	slli	s4,s4,0xc
    80007704:	0140006f          	j	80007718 <kinit+0x80>
    80007708:	000017b7          	lui	a5,0x1
    8000770c:	00f484b3          	add	s1,s1,a5
    80007710:	0554e863          	bltu	s1,s5,80007760 <kinit+0xc8>
    80007714:	0534f663          	bgeu	s1,s3,80007760 <kinit+0xc8>
    80007718:	00001637          	lui	a2,0x1
    8000771c:	00100593          	li	a1,1
    80007720:	00048513          	mv	a0,s1
    80007724:	00000097          	auipc	ra,0x0
    80007728:	5e4080e7          	jalr	1508(ra) # 80007d08 <__memset>
    8000772c:	00093783          	ld	a5,0(s2)
    80007730:	00f4b023          	sd	a5,0(s1)
    80007734:	00993023          	sd	s1,0(s2)
    80007738:	fd4498e3          	bne	s1,s4,80007708 <kinit+0x70>
    8000773c:	03813083          	ld	ra,56(sp)
    80007740:	03013403          	ld	s0,48(sp)
    80007744:	02813483          	ld	s1,40(sp)
    80007748:	02013903          	ld	s2,32(sp)
    8000774c:	01813983          	ld	s3,24(sp)
    80007750:	01013a03          	ld	s4,16(sp)
    80007754:	00813a83          	ld	s5,8(sp)
    80007758:	04010113          	addi	sp,sp,64
    8000775c:	00008067          	ret
    80007760:	00002517          	auipc	a0,0x2
    80007764:	fc050513          	addi	a0,a0,-64 # 80009720 <digits+0x18>
    80007768:	fffff097          	auipc	ra,0xfffff
    8000776c:	4b4080e7          	jalr	1204(ra) # 80006c1c <panic>

0000000080007770 <freerange>:
    80007770:	fc010113          	addi	sp,sp,-64
    80007774:	000017b7          	lui	a5,0x1
    80007778:	02913423          	sd	s1,40(sp)
    8000777c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007780:	009504b3          	add	s1,a0,s1
    80007784:	fffff537          	lui	a0,0xfffff
    80007788:	02813823          	sd	s0,48(sp)
    8000778c:	02113c23          	sd	ra,56(sp)
    80007790:	03213023          	sd	s2,32(sp)
    80007794:	01313c23          	sd	s3,24(sp)
    80007798:	01413823          	sd	s4,16(sp)
    8000779c:	01513423          	sd	s5,8(sp)
    800077a0:	01613023          	sd	s6,0(sp)
    800077a4:	04010413          	addi	s0,sp,64
    800077a8:	00a4f4b3          	and	s1,s1,a0
    800077ac:	00f487b3          	add	a5,s1,a5
    800077b0:	06f5e463          	bltu	a1,a5,80007818 <freerange+0xa8>
    800077b4:	00005a97          	auipc	s5,0x5
    800077b8:	09ca8a93          	addi	s5,s5,156 # 8000c850 <end>
    800077bc:	0954e263          	bltu	s1,s5,80007840 <freerange+0xd0>
    800077c0:	01100993          	li	s3,17
    800077c4:	01b99993          	slli	s3,s3,0x1b
    800077c8:	0734fc63          	bgeu	s1,s3,80007840 <freerange+0xd0>
    800077cc:	00058a13          	mv	s4,a1
    800077d0:	00004917          	auipc	s2,0x4
    800077d4:	d9090913          	addi	s2,s2,-624 # 8000b560 <kmem>
    800077d8:	00002b37          	lui	s6,0x2
    800077dc:	0140006f          	j	800077f0 <freerange+0x80>
    800077e0:	000017b7          	lui	a5,0x1
    800077e4:	00f484b3          	add	s1,s1,a5
    800077e8:	0554ec63          	bltu	s1,s5,80007840 <freerange+0xd0>
    800077ec:	0534fa63          	bgeu	s1,s3,80007840 <freerange+0xd0>
    800077f0:	00001637          	lui	a2,0x1
    800077f4:	00100593          	li	a1,1
    800077f8:	00048513          	mv	a0,s1
    800077fc:	00000097          	auipc	ra,0x0
    80007800:	50c080e7          	jalr	1292(ra) # 80007d08 <__memset>
    80007804:	00093703          	ld	a4,0(s2)
    80007808:	016487b3          	add	a5,s1,s6
    8000780c:	00e4b023          	sd	a4,0(s1)
    80007810:	00993023          	sd	s1,0(s2)
    80007814:	fcfa76e3          	bgeu	s4,a5,800077e0 <freerange+0x70>
    80007818:	03813083          	ld	ra,56(sp)
    8000781c:	03013403          	ld	s0,48(sp)
    80007820:	02813483          	ld	s1,40(sp)
    80007824:	02013903          	ld	s2,32(sp)
    80007828:	01813983          	ld	s3,24(sp)
    8000782c:	01013a03          	ld	s4,16(sp)
    80007830:	00813a83          	ld	s5,8(sp)
    80007834:	00013b03          	ld	s6,0(sp)
    80007838:	04010113          	addi	sp,sp,64
    8000783c:	00008067          	ret
    80007840:	00002517          	auipc	a0,0x2
    80007844:	ee050513          	addi	a0,a0,-288 # 80009720 <digits+0x18>
    80007848:	fffff097          	auipc	ra,0xfffff
    8000784c:	3d4080e7          	jalr	980(ra) # 80006c1c <panic>

0000000080007850 <kfree>:
    80007850:	fe010113          	addi	sp,sp,-32
    80007854:	00813823          	sd	s0,16(sp)
    80007858:	00113c23          	sd	ra,24(sp)
    8000785c:	00913423          	sd	s1,8(sp)
    80007860:	02010413          	addi	s0,sp,32
    80007864:	03451793          	slli	a5,a0,0x34
    80007868:	04079c63          	bnez	a5,800078c0 <kfree+0x70>
    8000786c:	00005797          	auipc	a5,0x5
    80007870:	fe478793          	addi	a5,a5,-28 # 8000c850 <end>
    80007874:	00050493          	mv	s1,a0
    80007878:	04f56463          	bltu	a0,a5,800078c0 <kfree+0x70>
    8000787c:	01100793          	li	a5,17
    80007880:	01b79793          	slli	a5,a5,0x1b
    80007884:	02f57e63          	bgeu	a0,a5,800078c0 <kfree+0x70>
    80007888:	00001637          	lui	a2,0x1
    8000788c:	00100593          	li	a1,1
    80007890:	00000097          	auipc	ra,0x0
    80007894:	478080e7          	jalr	1144(ra) # 80007d08 <__memset>
    80007898:	00004797          	auipc	a5,0x4
    8000789c:	cc878793          	addi	a5,a5,-824 # 8000b560 <kmem>
    800078a0:	0007b703          	ld	a4,0(a5)
    800078a4:	01813083          	ld	ra,24(sp)
    800078a8:	01013403          	ld	s0,16(sp)
    800078ac:	00e4b023          	sd	a4,0(s1)
    800078b0:	0097b023          	sd	s1,0(a5)
    800078b4:	00813483          	ld	s1,8(sp)
    800078b8:	02010113          	addi	sp,sp,32
    800078bc:	00008067          	ret
    800078c0:	00002517          	auipc	a0,0x2
    800078c4:	e6050513          	addi	a0,a0,-416 # 80009720 <digits+0x18>
    800078c8:	fffff097          	auipc	ra,0xfffff
    800078cc:	354080e7          	jalr	852(ra) # 80006c1c <panic>

00000000800078d0 <kalloc>:
    800078d0:	fe010113          	addi	sp,sp,-32
    800078d4:	00813823          	sd	s0,16(sp)
    800078d8:	00913423          	sd	s1,8(sp)
    800078dc:	00113c23          	sd	ra,24(sp)
    800078e0:	02010413          	addi	s0,sp,32
    800078e4:	00004797          	auipc	a5,0x4
    800078e8:	c7c78793          	addi	a5,a5,-900 # 8000b560 <kmem>
    800078ec:	0007b483          	ld	s1,0(a5)
    800078f0:	02048063          	beqz	s1,80007910 <kalloc+0x40>
    800078f4:	0004b703          	ld	a4,0(s1)
    800078f8:	00001637          	lui	a2,0x1
    800078fc:	00500593          	li	a1,5
    80007900:	00048513          	mv	a0,s1
    80007904:	00e7b023          	sd	a4,0(a5)
    80007908:	00000097          	auipc	ra,0x0
    8000790c:	400080e7          	jalr	1024(ra) # 80007d08 <__memset>
    80007910:	01813083          	ld	ra,24(sp)
    80007914:	01013403          	ld	s0,16(sp)
    80007918:	00048513          	mv	a0,s1
    8000791c:	00813483          	ld	s1,8(sp)
    80007920:	02010113          	addi	sp,sp,32
    80007924:	00008067          	ret

0000000080007928 <initlock>:
    80007928:	ff010113          	addi	sp,sp,-16
    8000792c:	00813423          	sd	s0,8(sp)
    80007930:	01010413          	addi	s0,sp,16
    80007934:	00813403          	ld	s0,8(sp)
    80007938:	00b53423          	sd	a1,8(a0)
    8000793c:	00052023          	sw	zero,0(a0)
    80007940:	00053823          	sd	zero,16(a0)
    80007944:	01010113          	addi	sp,sp,16
    80007948:	00008067          	ret

000000008000794c <acquire>:
    8000794c:	fe010113          	addi	sp,sp,-32
    80007950:	00813823          	sd	s0,16(sp)
    80007954:	00913423          	sd	s1,8(sp)
    80007958:	00113c23          	sd	ra,24(sp)
    8000795c:	01213023          	sd	s2,0(sp)
    80007960:	02010413          	addi	s0,sp,32
    80007964:	00050493          	mv	s1,a0
    80007968:	10002973          	csrr	s2,sstatus
    8000796c:	100027f3          	csrr	a5,sstatus
    80007970:	ffd7f793          	andi	a5,a5,-3
    80007974:	10079073          	csrw	sstatus,a5
    80007978:	fffff097          	auipc	ra,0xfffff
    8000797c:	8e0080e7          	jalr	-1824(ra) # 80006258 <mycpu>
    80007980:	07852783          	lw	a5,120(a0)
    80007984:	06078e63          	beqz	a5,80007a00 <acquire+0xb4>
    80007988:	fffff097          	auipc	ra,0xfffff
    8000798c:	8d0080e7          	jalr	-1840(ra) # 80006258 <mycpu>
    80007990:	07852783          	lw	a5,120(a0)
    80007994:	0004a703          	lw	a4,0(s1)
    80007998:	0017879b          	addiw	a5,a5,1
    8000799c:	06f52c23          	sw	a5,120(a0)
    800079a0:	04071063          	bnez	a4,800079e0 <acquire+0x94>
    800079a4:	00100713          	li	a4,1
    800079a8:	00070793          	mv	a5,a4
    800079ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800079b0:	0007879b          	sext.w	a5,a5
    800079b4:	fe079ae3          	bnez	a5,800079a8 <acquire+0x5c>
    800079b8:	0ff0000f          	fence
    800079bc:	fffff097          	auipc	ra,0xfffff
    800079c0:	89c080e7          	jalr	-1892(ra) # 80006258 <mycpu>
    800079c4:	01813083          	ld	ra,24(sp)
    800079c8:	01013403          	ld	s0,16(sp)
    800079cc:	00a4b823          	sd	a0,16(s1)
    800079d0:	00013903          	ld	s2,0(sp)
    800079d4:	00813483          	ld	s1,8(sp)
    800079d8:	02010113          	addi	sp,sp,32
    800079dc:	00008067          	ret
    800079e0:	0104b903          	ld	s2,16(s1)
    800079e4:	fffff097          	auipc	ra,0xfffff
    800079e8:	874080e7          	jalr	-1932(ra) # 80006258 <mycpu>
    800079ec:	faa91ce3          	bne	s2,a0,800079a4 <acquire+0x58>
    800079f0:	00002517          	auipc	a0,0x2
    800079f4:	d3850513          	addi	a0,a0,-712 # 80009728 <digits+0x20>
    800079f8:	fffff097          	auipc	ra,0xfffff
    800079fc:	224080e7          	jalr	548(ra) # 80006c1c <panic>
    80007a00:	00195913          	srli	s2,s2,0x1
    80007a04:	fffff097          	auipc	ra,0xfffff
    80007a08:	854080e7          	jalr	-1964(ra) # 80006258 <mycpu>
    80007a0c:	00197913          	andi	s2,s2,1
    80007a10:	07252e23          	sw	s2,124(a0)
    80007a14:	f75ff06f          	j	80007988 <acquire+0x3c>

0000000080007a18 <release>:
    80007a18:	fe010113          	addi	sp,sp,-32
    80007a1c:	00813823          	sd	s0,16(sp)
    80007a20:	00113c23          	sd	ra,24(sp)
    80007a24:	00913423          	sd	s1,8(sp)
    80007a28:	01213023          	sd	s2,0(sp)
    80007a2c:	02010413          	addi	s0,sp,32
    80007a30:	00052783          	lw	a5,0(a0)
    80007a34:	00079a63          	bnez	a5,80007a48 <release+0x30>
    80007a38:	00002517          	auipc	a0,0x2
    80007a3c:	cf850513          	addi	a0,a0,-776 # 80009730 <digits+0x28>
    80007a40:	fffff097          	auipc	ra,0xfffff
    80007a44:	1dc080e7          	jalr	476(ra) # 80006c1c <panic>
    80007a48:	01053903          	ld	s2,16(a0)
    80007a4c:	00050493          	mv	s1,a0
    80007a50:	fffff097          	auipc	ra,0xfffff
    80007a54:	808080e7          	jalr	-2040(ra) # 80006258 <mycpu>
    80007a58:	fea910e3          	bne	s2,a0,80007a38 <release+0x20>
    80007a5c:	0004b823          	sd	zero,16(s1)
    80007a60:	0ff0000f          	fence
    80007a64:	0f50000f          	fence	iorw,ow
    80007a68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007a6c:	ffffe097          	auipc	ra,0xffffe
    80007a70:	7ec080e7          	jalr	2028(ra) # 80006258 <mycpu>
    80007a74:	100027f3          	csrr	a5,sstatus
    80007a78:	0027f793          	andi	a5,a5,2
    80007a7c:	04079a63          	bnez	a5,80007ad0 <release+0xb8>
    80007a80:	07852783          	lw	a5,120(a0)
    80007a84:	02f05e63          	blez	a5,80007ac0 <release+0xa8>
    80007a88:	fff7871b          	addiw	a4,a5,-1
    80007a8c:	06e52c23          	sw	a4,120(a0)
    80007a90:	00071c63          	bnez	a4,80007aa8 <release+0x90>
    80007a94:	07c52783          	lw	a5,124(a0)
    80007a98:	00078863          	beqz	a5,80007aa8 <release+0x90>
    80007a9c:	100027f3          	csrr	a5,sstatus
    80007aa0:	0027e793          	ori	a5,a5,2
    80007aa4:	10079073          	csrw	sstatus,a5
    80007aa8:	01813083          	ld	ra,24(sp)
    80007aac:	01013403          	ld	s0,16(sp)
    80007ab0:	00813483          	ld	s1,8(sp)
    80007ab4:	00013903          	ld	s2,0(sp)
    80007ab8:	02010113          	addi	sp,sp,32
    80007abc:	00008067          	ret
    80007ac0:	00002517          	auipc	a0,0x2
    80007ac4:	c9050513          	addi	a0,a0,-880 # 80009750 <digits+0x48>
    80007ac8:	fffff097          	auipc	ra,0xfffff
    80007acc:	154080e7          	jalr	340(ra) # 80006c1c <panic>
    80007ad0:	00002517          	auipc	a0,0x2
    80007ad4:	c6850513          	addi	a0,a0,-920 # 80009738 <digits+0x30>
    80007ad8:	fffff097          	auipc	ra,0xfffff
    80007adc:	144080e7          	jalr	324(ra) # 80006c1c <panic>

0000000080007ae0 <holding>:
    80007ae0:	00052783          	lw	a5,0(a0)
    80007ae4:	00079663          	bnez	a5,80007af0 <holding+0x10>
    80007ae8:	00000513          	li	a0,0
    80007aec:	00008067          	ret
    80007af0:	fe010113          	addi	sp,sp,-32
    80007af4:	00813823          	sd	s0,16(sp)
    80007af8:	00913423          	sd	s1,8(sp)
    80007afc:	00113c23          	sd	ra,24(sp)
    80007b00:	02010413          	addi	s0,sp,32
    80007b04:	01053483          	ld	s1,16(a0)
    80007b08:	ffffe097          	auipc	ra,0xffffe
    80007b0c:	750080e7          	jalr	1872(ra) # 80006258 <mycpu>
    80007b10:	01813083          	ld	ra,24(sp)
    80007b14:	01013403          	ld	s0,16(sp)
    80007b18:	40a48533          	sub	a0,s1,a0
    80007b1c:	00153513          	seqz	a0,a0
    80007b20:	00813483          	ld	s1,8(sp)
    80007b24:	02010113          	addi	sp,sp,32
    80007b28:	00008067          	ret

0000000080007b2c <push_off>:
    80007b2c:	fe010113          	addi	sp,sp,-32
    80007b30:	00813823          	sd	s0,16(sp)
    80007b34:	00113c23          	sd	ra,24(sp)
    80007b38:	00913423          	sd	s1,8(sp)
    80007b3c:	02010413          	addi	s0,sp,32
    80007b40:	100024f3          	csrr	s1,sstatus
    80007b44:	100027f3          	csrr	a5,sstatus
    80007b48:	ffd7f793          	andi	a5,a5,-3
    80007b4c:	10079073          	csrw	sstatus,a5
    80007b50:	ffffe097          	auipc	ra,0xffffe
    80007b54:	708080e7          	jalr	1800(ra) # 80006258 <mycpu>
    80007b58:	07852783          	lw	a5,120(a0)
    80007b5c:	02078663          	beqz	a5,80007b88 <push_off+0x5c>
    80007b60:	ffffe097          	auipc	ra,0xffffe
    80007b64:	6f8080e7          	jalr	1784(ra) # 80006258 <mycpu>
    80007b68:	07852783          	lw	a5,120(a0)
    80007b6c:	01813083          	ld	ra,24(sp)
    80007b70:	01013403          	ld	s0,16(sp)
    80007b74:	0017879b          	addiw	a5,a5,1
    80007b78:	06f52c23          	sw	a5,120(a0)
    80007b7c:	00813483          	ld	s1,8(sp)
    80007b80:	02010113          	addi	sp,sp,32
    80007b84:	00008067          	ret
    80007b88:	0014d493          	srli	s1,s1,0x1
    80007b8c:	ffffe097          	auipc	ra,0xffffe
    80007b90:	6cc080e7          	jalr	1740(ra) # 80006258 <mycpu>
    80007b94:	0014f493          	andi	s1,s1,1
    80007b98:	06952e23          	sw	s1,124(a0)
    80007b9c:	fc5ff06f          	j	80007b60 <push_off+0x34>

0000000080007ba0 <pop_off>:
    80007ba0:	ff010113          	addi	sp,sp,-16
    80007ba4:	00813023          	sd	s0,0(sp)
    80007ba8:	00113423          	sd	ra,8(sp)
    80007bac:	01010413          	addi	s0,sp,16
    80007bb0:	ffffe097          	auipc	ra,0xffffe
    80007bb4:	6a8080e7          	jalr	1704(ra) # 80006258 <mycpu>
    80007bb8:	100027f3          	csrr	a5,sstatus
    80007bbc:	0027f793          	andi	a5,a5,2
    80007bc0:	04079663          	bnez	a5,80007c0c <pop_off+0x6c>
    80007bc4:	07852783          	lw	a5,120(a0)
    80007bc8:	02f05a63          	blez	a5,80007bfc <pop_off+0x5c>
    80007bcc:	fff7871b          	addiw	a4,a5,-1
    80007bd0:	06e52c23          	sw	a4,120(a0)
    80007bd4:	00071c63          	bnez	a4,80007bec <pop_off+0x4c>
    80007bd8:	07c52783          	lw	a5,124(a0)
    80007bdc:	00078863          	beqz	a5,80007bec <pop_off+0x4c>
    80007be0:	100027f3          	csrr	a5,sstatus
    80007be4:	0027e793          	ori	a5,a5,2
    80007be8:	10079073          	csrw	sstatus,a5
    80007bec:	00813083          	ld	ra,8(sp)
    80007bf0:	00013403          	ld	s0,0(sp)
    80007bf4:	01010113          	addi	sp,sp,16
    80007bf8:	00008067          	ret
    80007bfc:	00002517          	auipc	a0,0x2
    80007c00:	b5450513          	addi	a0,a0,-1196 # 80009750 <digits+0x48>
    80007c04:	fffff097          	auipc	ra,0xfffff
    80007c08:	018080e7          	jalr	24(ra) # 80006c1c <panic>
    80007c0c:	00002517          	auipc	a0,0x2
    80007c10:	b2c50513          	addi	a0,a0,-1236 # 80009738 <digits+0x30>
    80007c14:	fffff097          	auipc	ra,0xfffff
    80007c18:	008080e7          	jalr	8(ra) # 80006c1c <panic>

0000000080007c1c <push_on>:
    80007c1c:	fe010113          	addi	sp,sp,-32
    80007c20:	00813823          	sd	s0,16(sp)
    80007c24:	00113c23          	sd	ra,24(sp)
    80007c28:	00913423          	sd	s1,8(sp)
    80007c2c:	02010413          	addi	s0,sp,32
    80007c30:	100024f3          	csrr	s1,sstatus
    80007c34:	100027f3          	csrr	a5,sstatus
    80007c38:	0027e793          	ori	a5,a5,2
    80007c3c:	10079073          	csrw	sstatus,a5
    80007c40:	ffffe097          	auipc	ra,0xffffe
    80007c44:	618080e7          	jalr	1560(ra) # 80006258 <mycpu>
    80007c48:	07852783          	lw	a5,120(a0)
    80007c4c:	02078663          	beqz	a5,80007c78 <push_on+0x5c>
    80007c50:	ffffe097          	auipc	ra,0xffffe
    80007c54:	608080e7          	jalr	1544(ra) # 80006258 <mycpu>
    80007c58:	07852783          	lw	a5,120(a0)
    80007c5c:	01813083          	ld	ra,24(sp)
    80007c60:	01013403          	ld	s0,16(sp)
    80007c64:	0017879b          	addiw	a5,a5,1
    80007c68:	06f52c23          	sw	a5,120(a0)
    80007c6c:	00813483          	ld	s1,8(sp)
    80007c70:	02010113          	addi	sp,sp,32
    80007c74:	00008067          	ret
    80007c78:	0014d493          	srli	s1,s1,0x1
    80007c7c:	ffffe097          	auipc	ra,0xffffe
    80007c80:	5dc080e7          	jalr	1500(ra) # 80006258 <mycpu>
    80007c84:	0014f493          	andi	s1,s1,1
    80007c88:	06952e23          	sw	s1,124(a0)
    80007c8c:	fc5ff06f          	j	80007c50 <push_on+0x34>

0000000080007c90 <pop_on>:
    80007c90:	ff010113          	addi	sp,sp,-16
    80007c94:	00813023          	sd	s0,0(sp)
    80007c98:	00113423          	sd	ra,8(sp)
    80007c9c:	01010413          	addi	s0,sp,16
    80007ca0:	ffffe097          	auipc	ra,0xffffe
    80007ca4:	5b8080e7          	jalr	1464(ra) # 80006258 <mycpu>
    80007ca8:	100027f3          	csrr	a5,sstatus
    80007cac:	0027f793          	andi	a5,a5,2
    80007cb0:	04078463          	beqz	a5,80007cf8 <pop_on+0x68>
    80007cb4:	07852783          	lw	a5,120(a0)
    80007cb8:	02f05863          	blez	a5,80007ce8 <pop_on+0x58>
    80007cbc:	fff7879b          	addiw	a5,a5,-1
    80007cc0:	06f52c23          	sw	a5,120(a0)
    80007cc4:	07853783          	ld	a5,120(a0)
    80007cc8:	00079863          	bnez	a5,80007cd8 <pop_on+0x48>
    80007ccc:	100027f3          	csrr	a5,sstatus
    80007cd0:	ffd7f793          	andi	a5,a5,-3
    80007cd4:	10079073          	csrw	sstatus,a5
    80007cd8:	00813083          	ld	ra,8(sp)
    80007cdc:	00013403          	ld	s0,0(sp)
    80007ce0:	01010113          	addi	sp,sp,16
    80007ce4:	00008067          	ret
    80007ce8:	00002517          	auipc	a0,0x2
    80007cec:	a9050513          	addi	a0,a0,-1392 # 80009778 <digits+0x70>
    80007cf0:	fffff097          	auipc	ra,0xfffff
    80007cf4:	f2c080e7          	jalr	-212(ra) # 80006c1c <panic>
    80007cf8:	00002517          	auipc	a0,0x2
    80007cfc:	a6050513          	addi	a0,a0,-1440 # 80009758 <digits+0x50>
    80007d00:	fffff097          	auipc	ra,0xfffff
    80007d04:	f1c080e7          	jalr	-228(ra) # 80006c1c <panic>

0000000080007d08 <__memset>:
    80007d08:	ff010113          	addi	sp,sp,-16
    80007d0c:	00813423          	sd	s0,8(sp)
    80007d10:	01010413          	addi	s0,sp,16
    80007d14:	1a060e63          	beqz	a2,80007ed0 <__memset+0x1c8>
    80007d18:	40a007b3          	neg	a5,a0
    80007d1c:	0077f793          	andi	a5,a5,7
    80007d20:	00778693          	addi	a3,a5,7
    80007d24:	00b00813          	li	a6,11
    80007d28:	0ff5f593          	andi	a1,a1,255
    80007d2c:	fff6071b          	addiw	a4,a2,-1
    80007d30:	1b06e663          	bltu	a3,a6,80007edc <__memset+0x1d4>
    80007d34:	1cd76463          	bltu	a4,a3,80007efc <__memset+0x1f4>
    80007d38:	1a078e63          	beqz	a5,80007ef4 <__memset+0x1ec>
    80007d3c:	00b50023          	sb	a1,0(a0)
    80007d40:	00100713          	li	a4,1
    80007d44:	1ae78463          	beq	a5,a4,80007eec <__memset+0x1e4>
    80007d48:	00b500a3          	sb	a1,1(a0)
    80007d4c:	00200713          	li	a4,2
    80007d50:	1ae78a63          	beq	a5,a4,80007f04 <__memset+0x1fc>
    80007d54:	00b50123          	sb	a1,2(a0)
    80007d58:	00300713          	li	a4,3
    80007d5c:	18e78463          	beq	a5,a4,80007ee4 <__memset+0x1dc>
    80007d60:	00b501a3          	sb	a1,3(a0)
    80007d64:	00400713          	li	a4,4
    80007d68:	1ae78263          	beq	a5,a4,80007f0c <__memset+0x204>
    80007d6c:	00b50223          	sb	a1,4(a0)
    80007d70:	00500713          	li	a4,5
    80007d74:	1ae78063          	beq	a5,a4,80007f14 <__memset+0x20c>
    80007d78:	00b502a3          	sb	a1,5(a0)
    80007d7c:	00700713          	li	a4,7
    80007d80:	18e79e63          	bne	a5,a4,80007f1c <__memset+0x214>
    80007d84:	00b50323          	sb	a1,6(a0)
    80007d88:	00700e93          	li	t4,7
    80007d8c:	00859713          	slli	a4,a1,0x8
    80007d90:	00e5e733          	or	a4,a1,a4
    80007d94:	01059e13          	slli	t3,a1,0x10
    80007d98:	01c76e33          	or	t3,a4,t3
    80007d9c:	01859313          	slli	t1,a1,0x18
    80007da0:	006e6333          	or	t1,t3,t1
    80007da4:	02059893          	slli	a7,a1,0x20
    80007da8:	40f60e3b          	subw	t3,a2,a5
    80007dac:	011368b3          	or	a7,t1,a7
    80007db0:	02859813          	slli	a6,a1,0x28
    80007db4:	0108e833          	or	a6,a7,a6
    80007db8:	03059693          	slli	a3,a1,0x30
    80007dbc:	003e589b          	srliw	a7,t3,0x3
    80007dc0:	00d866b3          	or	a3,a6,a3
    80007dc4:	03859713          	slli	a4,a1,0x38
    80007dc8:	00389813          	slli	a6,a7,0x3
    80007dcc:	00f507b3          	add	a5,a0,a5
    80007dd0:	00e6e733          	or	a4,a3,a4
    80007dd4:	000e089b          	sext.w	a7,t3
    80007dd8:	00f806b3          	add	a3,a6,a5
    80007ddc:	00e7b023          	sd	a4,0(a5)
    80007de0:	00878793          	addi	a5,a5,8
    80007de4:	fed79ce3          	bne	a5,a3,80007ddc <__memset+0xd4>
    80007de8:	ff8e7793          	andi	a5,t3,-8
    80007dec:	0007871b          	sext.w	a4,a5
    80007df0:	01d787bb          	addw	a5,a5,t4
    80007df4:	0ce88e63          	beq	a7,a4,80007ed0 <__memset+0x1c8>
    80007df8:	00f50733          	add	a4,a0,a5
    80007dfc:	00b70023          	sb	a1,0(a4)
    80007e00:	0017871b          	addiw	a4,a5,1
    80007e04:	0cc77663          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e08:	00e50733          	add	a4,a0,a4
    80007e0c:	00b70023          	sb	a1,0(a4)
    80007e10:	0027871b          	addiw	a4,a5,2
    80007e14:	0ac77e63          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e18:	00e50733          	add	a4,a0,a4
    80007e1c:	00b70023          	sb	a1,0(a4)
    80007e20:	0037871b          	addiw	a4,a5,3
    80007e24:	0ac77663          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e28:	00e50733          	add	a4,a0,a4
    80007e2c:	00b70023          	sb	a1,0(a4)
    80007e30:	0047871b          	addiw	a4,a5,4
    80007e34:	08c77e63          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e38:	00e50733          	add	a4,a0,a4
    80007e3c:	00b70023          	sb	a1,0(a4)
    80007e40:	0057871b          	addiw	a4,a5,5
    80007e44:	08c77663          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e48:	00e50733          	add	a4,a0,a4
    80007e4c:	00b70023          	sb	a1,0(a4)
    80007e50:	0067871b          	addiw	a4,a5,6
    80007e54:	06c77e63          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e58:	00e50733          	add	a4,a0,a4
    80007e5c:	00b70023          	sb	a1,0(a4)
    80007e60:	0077871b          	addiw	a4,a5,7
    80007e64:	06c77663          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e68:	00e50733          	add	a4,a0,a4
    80007e6c:	00b70023          	sb	a1,0(a4)
    80007e70:	0087871b          	addiw	a4,a5,8
    80007e74:	04c77e63          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e78:	00e50733          	add	a4,a0,a4
    80007e7c:	00b70023          	sb	a1,0(a4)
    80007e80:	0097871b          	addiw	a4,a5,9
    80007e84:	04c77663          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e88:	00e50733          	add	a4,a0,a4
    80007e8c:	00b70023          	sb	a1,0(a4)
    80007e90:	00a7871b          	addiw	a4,a5,10
    80007e94:	02c77e63          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007e98:	00e50733          	add	a4,a0,a4
    80007e9c:	00b70023          	sb	a1,0(a4)
    80007ea0:	00b7871b          	addiw	a4,a5,11
    80007ea4:	02c77663          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007ea8:	00e50733          	add	a4,a0,a4
    80007eac:	00b70023          	sb	a1,0(a4)
    80007eb0:	00c7871b          	addiw	a4,a5,12
    80007eb4:	00c77e63          	bgeu	a4,a2,80007ed0 <__memset+0x1c8>
    80007eb8:	00e50733          	add	a4,a0,a4
    80007ebc:	00b70023          	sb	a1,0(a4)
    80007ec0:	00d7879b          	addiw	a5,a5,13
    80007ec4:	00c7f663          	bgeu	a5,a2,80007ed0 <__memset+0x1c8>
    80007ec8:	00f507b3          	add	a5,a0,a5
    80007ecc:	00b78023          	sb	a1,0(a5)
    80007ed0:	00813403          	ld	s0,8(sp)
    80007ed4:	01010113          	addi	sp,sp,16
    80007ed8:	00008067          	ret
    80007edc:	00b00693          	li	a3,11
    80007ee0:	e55ff06f          	j	80007d34 <__memset+0x2c>
    80007ee4:	00300e93          	li	t4,3
    80007ee8:	ea5ff06f          	j	80007d8c <__memset+0x84>
    80007eec:	00100e93          	li	t4,1
    80007ef0:	e9dff06f          	j	80007d8c <__memset+0x84>
    80007ef4:	00000e93          	li	t4,0
    80007ef8:	e95ff06f          	j	80007d8c <__memset+0x84>
    80007efc:	00000793          	li	a5,0
    80007f00:	ef9ff06f          	j	80007df8 <__memset+0xf0>
    80007f04:	00200e93          	li	t4,2
    80007f08:	e85ff06f          	j	80007d8c <__memset+0x84>
    80007f0c:	00400e93          	li	t4,4
    80007f10:	e7dff06f          	j	80007d8c <__memset+0x84>
    80007f14:	00500e93          	li	t4,5
    80007f18:	e75ff06f          	j	80007d8c <__memset+0x84>
    80007f1c:	00600e93          	li	t4,6
    80007f20:	e6dff06f          	j	80007d8c <__memset+0x84>

0000000080007f24 <__memmove>:
    80007f24:	ff010113          	addi	sp,sp,-16
    80007f28:	00813423          	sd	s0,8(sp)
    80007f2c:	01010413          	addi	s0,sp,16
    80007f30:	0e060863          	beqz	a2,80008020 <__memmove+0xfc>
    80007f34:	fff6069b          	addiw	a3,a2,-1
    80007f38:	0006881b          	sext.w	a6,a3
    80007f3c:	0ea5e863          	bltu	a1,a0,8000802c <__memmove+0x108>
    80007f40:	00758713          	addi	a4,a1,7
    80007f44:	00a5e7b3          	or	a5,a1,a0
    80007f48:	40a70733          	sub	a4,a4,a0
    80007f4c:	0077f793          	andi	a5,a5,7
    80007f50:	00f73713          	sltiu	a4,a4,15
    80007f54:	00174713          	xori	a4,a4,1
    80007f58:	0017b793          	seqz	a5,a5
    80007f5c:	00e7f7b3          	and	a5,a5,a4
    80007f60:	10078863          	beqz	a5,80008070 <__memmove+0x14c>
    80007f64:	00900793          	li	a5,9
    80007f68:	1107f463          	bgeu	a5,a6,80008070 <__memmove+0x14c>
    80007f6c:	0036581b          	srliw	a6,a2,0x3
    80007f70:	fff8081b          	addiw	a6,a6,-1
    80007f74:	02081813          	slli	a6,a6,0x20
    80007f78:	01d85893          	srli	a7,a6,0x1d
    80007f7c:	00858813          	addi	a6,a1,8
    80007f80:	00058793          	mv	a5,a1
    80007f84:	00050713          	mv	a4,a0
    80007f88:	01088833          	add	a6,a7,a6
    80007f8c:	0007b883          	ld	a7,0(a5)
    80007f90:	00878793          	addi	a5,a5,8
    80007f94:	00870713          	addi	a4,a4,8
    80007f98:	ff173c23          	sd	a7,-8(a4)
    80007f9c:	ff0798e3          	bne	a5,a6,80007f8c <__memmove+0x68>
    80007fa0:	ff867713          	andi	a4,a2,-8
    80007fa4:	02071793          	slli	a5,a4,0x20
    80007fa8:	0207d793          	srli	a5,a5,0x20
    80007fac:	00f585b3          	add	a1,a1,a5
    80007fb0:	40e686bb          	subw	a3,a3,a4
    80007fb4:	00f507b3          	add	a5,a0,a5
    80007fb8:	06e60463          	beq	a2,a4,80008020 <__memmove+0xfc>
    80007fbc:	0005c703          	lbu	a4,0(a1)
    80007fc0:	00e78023          	sb	a4,0(a5)
    80007fc4:	04068e63          	beqz	a3,80008020 <__memmove+0xfc>
    80007fc8:	0015c603          	lbu	a2,1(a1)
    80007fcc:	00100713          	li	a4,1
    80007fd0:	00c780a3          	sb	a2,1(a5)
    80007fd4:	04e68663          	beq	a3,a4,80008020 <__memmove+0xfc>
    80007fd8:	0025c603          	lbu	a2,2(a1)
    80007fdc:	00200713          	li	a4,2
    80007fe0:	00c78123          	sb	a2,2(a5)
    80007fe4:	02e68e63          	beq	a3,a4,80008020 <__memmove+0xfc>
    80007fe8:	0035c603          	lbu	a2,3(a1)
    80007fec:	00300713          	li	a4,3
    80007ff0:	00c781a3          	sb	a2,3(a5)
    80007ff4:	02e68663          	beq	a3,a4,80008020 <__memmove+0xfc>
    80007ff8:	0045c603          	lbu	a2,4(a1)
    80007ffc:	00400713          	li	a4,4
    80008000:	00c78223          	sb	a2,4(a5)
    80008004:	00e68e63          	beq	a3,a4,80008020 <__memmove+0xfc>
    80008008:	0055c603          	lbu	a2,5(a1)
    8000800c:	00500713          	li	a4,5
    80008010:	00c782a3          	sb	a2,5(a5)
    80008014:	00e68663          	beq	a3,a4,80008020 <__memmove+0xfc>
    80008018:	0065c703          	lbu	a4,6(a1)
    8000801c:	00e78323          	sb	a4,6(a5)
    80008020:	00813403          	ld	s0,8(sp)
    80008024:	01010113          	addi	sp,sp,16
    80008028:	00008067          	ret
    8000802c:	02061713          	slli	a4,a2,0x20
    80008030:	02075713          	srli	a4,a4,0x20
    80008034:	00e587b3          	add	a5,a1,a4
    80008038:	f0f574e3          	bgeu	a0,a5,80007f40 <__memmove+0x1c>
    8000803c:	02069613          	slli	a2,a3,0x20
    80008040:	02065613          	srli	a2,a2,0x20
    80008044:	fff64613          	not	a2,a2
    80008048:	00e50733          	add	a4,a0,a4
    8000804c:	00c78633          	add	a2,a5,a2
    80008050:	fff7c683          	lbu	a3,-1(a5)
    80008054:	fff78793          	addi	a5,a5,-1
    80008058:	fff70713          	addi	a4,a4,-1
    8000805c:	00d70023          	sb	a3,0(a4)
    80008060:	fec798e3          	bne	a5,a2,80008050 <__memmove+0x12c>
    80008064:	00813403          	ld	s0,8(sp)
    80008068:	01010113          	addi	sp,sp,16
    8000806c:	00008067          	ret
    80008070:	02069713          	slli	a4,a3,0x20
    80008074:	02075713          	srli	a4,a4,0x20
    80008078:	00170713          	addi	a4,a4,1
    8000807c:	00e50733          	add	a4,a0,a4
    80008080:	00050793          	mv	a5,a0
    80008084:	0005c683          	lbu	a3,0(a1)
    80008088:	00178793          	addi	a5,a5,1
    8000808c:	00158593          	addi	a1,a1,1
    80008090:	fed78fa3          	sb	a3,-1(a5)
    80008094:	fee798e3          	bne	a5,a4,80008084 <__memmove+0x160>
    80008098:	f89ff06f          	j	80008020 <__memmove+0xfc>

000000008000809c <__putc>:
    8000809c:	fe010113          	addi	sp,sp,-32
    800080a0:	00813823          	sd	s0,16(sp)
    800080a4:	00113c23          	sd	ra,24(sp)
    800080a8:	02010413          	addi	s0,sp,32
    800080ac:	00050793          	mv	a5,a0
    800080b0:	fef40593          	addi	a1,s0,-17
    800080b4:	00100613          	li	a2,1
    800080b8:	00000513          	li	a0,0
    800080bc:	fef407a3          	sb	a5,-17(s0)
    800080c0:	fffff097          	auipc	ra,0xfffff
    800080c4:	b3c080e7          	jalr	-1220(ra) # 80006bfc <console_write>
    800080c8:	01813083          	ld	ra,24(sp)
    800080cc:	01013403          	ld	s0,16(sp)
    800080d0:	02010113          	addi	sp,sp,32
    800080d4:	00008067          	ret

00000000800080d8 <__getc>:
    800080d8:	fe010113          	addi	sp,sp,-32
    800080dc:	00813823          	sd	s0,16(sp)
    800080e0:	00113c23          	sd	ra,24(sp)
    800080e4:	02010413          	addi	s0,sp,32
    800080e8:	fe840593          	addi	a1,s0,-24
    800080ec:	00100613          	li	a2,1
    800080f0:	00000513          	li	a0,0
    800080f4:	fffff097          	auipc	ra,0xfffff
    800080f8:	ae8080e7          	jalr	-1304(ra) # 80006bdc <console_read>
    800080fc:	fe844503          	lbu	a0,-24(s0)
    80008100:	01813083          	ld	ra,24(sp)
    80008104:	01013403          	ld	s0,16(sp)
    80008108:	02010113          	addi	sp,sp,32
    8000810c:	00008067          	ret

0000000080008110 <console_handler>:
    80008110:	fe010113          	addi	sp,sp,-32
    80008114:	00813823          	sd	s0,16(sp)
    80008118:	00113c23          	sd	ra,24(sp)
    8000811c:	00913423          	sd	s1,8(sp)
    80008120:	02010413          	addi	s0,sp,32
    80008124:	14202773          	csrr	a4,scause
    80008128:	100027f3          	csrr	a5,sstatus
    8000812c:	0027f793          	andi	a5,a5,2
    80008130:	06079e63          	bnez	a5,800081ac <console_handler+0x9c>
    80008134:	00074c63          	bltz	a4,8000814c <console_handler+0x3c>
    80008138:	01813083          	ld	ra,24(sp)
    8000813c:	01013403          	ld	s0,16(sp)
    80008140:	00813483          	ld	s1,8(sp)
    80008144:	02010113          	addi	sp,sp,32
    80008148:	00008067          	ret
    8000814c:	0ff77713          	andi	a4,a4,255
    80008150:	00900793          	li	a5,9
    80008154:	fef712e3          	bne	a4,a5,80008138 <console_handler+0x28>
    80008158:	ffffe097          	auipc	ra,0xffffe
    8000815c:	6dc080e7          	jalr	1756(ra) # 80006834 <plic_claim>
    80008160:	00a00793          	li	a5,10
    80008164:	00050493          	mv	s1,a0
    80008168:	02f50c63          	beq	a0,a5,800081a0 <console_handler+0x90>
    8000816c:	fc0506e3          	beqz	a0,80008138 <console_handler+0x28>
    80008170:	00050593          	mv	a1,a0
    80008174:	00001517          	auipc	a0,0x1
    80008178:	50c50513          	addi	a0,a0,1292 # 80009680 <CONSOLE_STATUS+0x670>
    8000817c:	fffff097          	auipc	ra,0xfffff
    80008180:	afc080e7          	jalr	-1284(ra) # 80006c78 <__printf>
    80008184:	01013403          	ld	s0,16(sp)
    80008188:	01813083          	ld	ra,24(sp)
    8000818c:	00048513          	mv	a0,s1
    80008190:	00813483          	ld	s1,8(sp)
    80008194:	02010113          	addi	sp,sp,32
    80008198:	ffffe317          	auipc	t1,0xffffe
    8000819c:	6d430067          	jr	1748(t1) # 8000686c <plic_complete>
    800081a0:	fffff097          	auipc	ra,0xfffff
    800081a4:	3e0080e7          	jalr	992(ra) # 80007580 <uartintr>
    800081a8:	fddff06f          	j	80008184 <console_handler+0x74>
    800081ac:	00001517          	auipc	a0,0x1
    800081b0:	5d450513          	addi	a0,a0,1492 # 80009780 <digits+0x78>
    800081b4:	fffff097          	auipc	ra,0xfffff
    800081b8:	a68080e7          	jalr	-1432(ra) # 80006c1c <panic>
	...
