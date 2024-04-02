
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	01013103          	ld	sp,16(sp) # 80006010 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5c9020ef          	jal	ra,80002de4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.extern base
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    sd sp,(base), x31
    80001084:	00005f97          	auipc	t6,0x5
    80001088:	002fbe23          	sd	sp,28(t6) # 800060a0 <base>
    call _ZN5Riscv20handleSupervisorTrapEv
    8000108c:	65c010ef          	jal	ra,800026e8 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001090:	00013003          	ld	zero,0(sp)
    80001094:	00813083          	ld	ra,8(sp)
    80001098:	01013103          	ld	sp,16(sp)
    8000109c:	01813183          	ld	gp,24(sp)
    800010a0:	02013203          	ld	tp,32(sp)
    800010a4:	02813283          	ld	t0,40(sp)
    800010a8:	03013303          	ld	t1,48(sp)
    800010ac:	03813383          	ld	t2,56(sp)
    800010b0:	04013403          	ld	s0,64(sp)
    800010b4:	04813483          	ld	s1,72(sp)
    800010b8:	05013503          	ld	a0,80(sp)
    800010bc:	05813583          	ld	a1,88(sp)
    800010c0:	06013603          	ld	a2,96(sp)
    800010c4:	06813683          	ld	a3,104(sp)
    800010c8:	07013703          	ld	a4,112(sp)
    800010cc:	07813783          	ld	a5,120(sp)
    800010d0:	08013803          	ld	a6,128(sp)
    800010d4:	08813883          	ld	a7,136(sp)
    800010d8:	09013903          	ld	s2,144(sp)
    800010dc:	09813983          	ld	s3,152(sp)
    800010e0:	0a013a03          	ld	s4,160(sp)
    800010e4:	0a813a83          	ld	s5,168(sp)
    800010e8:	0b013b03          	ld	s6,176(sp)
    800010ec:	0b813b83          	ld	s7,184(sp)
    800010f0:	0c013c03          	ld	s8,192(sp)
    800010f4:	0c813c83          	ld	s9,200(sp)
    800010f8:	0d013d03          	ld	s10,208(sp)
    800010fc:	0d813d83          	ld	s11,216(sp)
    80001100:	0e013e03          	ld	t3,224(sp)
    80001104:	0e813e83          	ld	t4,232(sp)
    80001108:	0f013f03          	ld	t5,240(sp)
    8000110c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001110:	10010113          	addi	sp,sp,256

    80001114:	10200073          	sret
	...

0000000080001120 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001120:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001124:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001128:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000112c:	0085b103          	ld	sp,8(a1)

    80001130:	00008067          	ret

0000000080001134 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001134:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001138:	00b29a63          	bne	t0,a1,8000114c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000113c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001140:	fe029ae3          	bnez	t0,80001134 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001144:	00000513          	li	a0,0
    jr ra                  # Return.
    80001148:	00008067          	ret

000000008000114c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000114c:	00100513          	li	a0,1
    80001150:	00008067          	ret

0000000080001154 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include "../h/tcb.hpp"

class TCB;

void* mem_alloc (size_t size){ // size u bajtovima
    80001154:	ff010113          	addi	sp,sp,-16
    80001158:	00813423          	sd	s0,8(sp)
    8000115c:	01010413          	addi	s0,sp,16
    size_t blocks = 0;
    blocks = size/ MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE? 1:0);
    80001160:	00655793          	srli	a5,a0,0x6
    80001164:	03f57513          	andi	a0,a0,63
    80001168:	00050463          	beqz	a0,80001170 <_Z9mem_allocm+0x1c>
    8000116c:	00100513          	li	a0,1
    80001170:	00a78533          	add	a0,a5,a0
    //size_t nsize = blocks*MEM_BLOCK_SIZE;
    void* ret = nullptr;
    __asm__ volatile("mv a1, %0" :: "r" (blocks));
    80001174:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001178:	00100513          	li	a0,1
    __asm__ volatile("ecall"); // size u blokovima
    8000117c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001180:	00050513          	mv	a0,a0
    //ret = memoryAllocator::allocate(blocks);
    return ret;
}
    80001184:	00813403          	ld	s0,8(sp)
    80001188:	01010113          	addi	sp,sp,16
    8000118c:	00008067          	ret

0000000080001190 <_Z8mem_freePv>:

int mem_free(void* addr){
    80001190:	ff010113          	addi	sp,sp,-16
    80001194:	00813423          	sd	s0,8(sp)
    80001198:	01010413          	addi	s0,sp,16
    int ret;
    __asm__ volatile("mv a1, %0" :: "r" (addr));
    8000119c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    800011a0:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    800011a4:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011a8:	00050513          	mv	a0,a0
    return ret;
};
    800011ac:	0005051b          	sext.w	a0,a0
    800011b0:	00813403          	ld	s0,8(sp)
    800011b4:	01010113          	addi	sp,sp,16
    800011b8:	00008067          	ret

00000000800011bc <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    800011bc:	ff010113          	addi	sp,sp,-16
    800011c0:	00813423          	sd	s0,8(sp)
    800011c4:	01010413          	addi	s0,sp,16
    //stack = MemoryAllocator::allocate(1024*sizeof(uint64))
    __asm__ volatile("mv a3, %0" :: "r" (arg));
    800011c8:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" :: "r" (start_routine));
    800011cc:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r" (handle));
    800011d0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800011d4:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800011d8:	00000073          	ecall
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011dc:	00050513          	mv	a0,a0
    return ret;
}
    800011e0:	0005051b          	sext.w	a0,a0
    800011e4:	00813403          	ld	s0,8(sp)
    800011e8:	01010113          	addi	sp,sp,16
    800011ec:	00008067          	ret

00000000800011f0 <_Z21thread_create_pendingPP3TCBPFvPvES2_>:

int thread_create_pending(thread_t* handle, void(*start_routine)(void*), void* arg){
    800011f0:	ff010113          	addi	sp,sp,-16
    800011f4:	00813423          	sd	s0,8(sp)
    800011f8:	01010413          	addi	s0,sp,16
    //stack = MemoryAllocator::allocate(1024*sizeof(uint64))
    __asm__ volatile("mv a3, %0" :: "r" (arg));
    800011fc:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" :: "r" (start_routine));
    80001200:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r" (handle));
    80001204:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001208:	01400513          	li	a0,20
    __asm__ volatile("ecall");
    8000120c:	00000073          	ecall
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001210:	00050513          	mv	a0,a0
    return ret;
}
    80001214:	0005051b          	sext.w	a0,a0
    80001218:	00813403          	ld	s0,8(sp)
    8000121c:	01010113          	addi	sp,sp,16
    80001220:	00008067          	ret

0000000080001224 <_Z11thread_exitv>:

int thread_exit() {
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00813423          	sd	s0,8(sp)
    8000122c:	01010413          	addi	s0,sp,16
    int ret;
    __asm__ volatile("li a0, 0x12");
    80001230:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    80001234:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001238:	00050513          	mv	a0,a0
    return ret;
}
    8000123c:	0005051b          	sext.w	a0,a0
    80001240:	00813403          	ld	s0,8(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <_Z15thread_dispatchv>:

void thread_dispatch(){
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00813423          	sd	s0,8(sp)
    80001254:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001258:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000125c:	00000073          	ecall
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z15exit_supervisorv>:

void exit_supervisor(){
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00813423          	sd	s0,8(sp)
    80001274:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x15");
    80001278:	01500513          	li	a0,21
    __asm__ volatile("ecall");
    8000127c:	00000073          	ecall
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z4putcc>:

void putc(char c){
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00813423          	sd	s0,8(sp)
    80001294:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :: "r" (c));
    80001298:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000129c:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    800012a0:	00000073          	ecall
}
    800012a4:	00813403          	ld	s0,8(sp)
    800012a8:	01010113          	addi	sp,sp,16
    800012ac:	00008067          	ret

00000000800012b0 <_Z4getcv>:

char getc(){
    800012b0:	ff010113          	addi	sp,sp,-16
    800012b4:	00813423          	sd	s0,8(sp)
    800012b8:	01010413          	addi	s0,sp,16
    char cc;
    __asm__ volatile("li a0, 0x41");
    800012bc:	04100513          	li	a0,65
    __asm__ volatile("ecall");
    800012c0:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (cc));
    800012c4:	00050513          	mv	a0,a0
    return cc;
}
    800012c8:	0ff57513          	andi	a0,a0,255
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    800012d8:	fe010113          	addi	sp,sp,-32
    800012dc:	00113c23          	sd	ra,24(sp)
    800012e0:	00813823          	sd	s0,16(sp)
    800012e4:	00913423          	sd	s1,8(sp)
    800012e8:	01213023          	sd	s2,0(sp)
    800012ec:	02010413          	addi	s0,sp,32
    800012f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012f4:	00100793          	li	a5,1
    800012f8:	02a7f863          	bgeu	a5,a0,80001328 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800012fc:	00a00793          	li	a5,10
    80001300:	02f577b3          	remu	a5,a0,a5
    80001304:	02078e63          	beqz	a5,80001340 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001308:	fff48513          	addi	a0,s1,-1
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	fcc080e7          	jalr	-52(ra) # 800012d8 <_Z9fibonaccim>
    80001314:	00050913          	mv	s2,a0
    80001318:	ffe48513          	addi	a0,s1,-2
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	fbc080e7          	jalr	-68(ra) # 800012d8 <_Z9fibonaccim>
    80001324:	00a90533          	add	a0,s2,a0
}
    80001328:	01813083          	ld	ra,24(sp)
    8000132c:	01013403          	ld	s0,16(sp)
    80001330:	00813483          	ld	s1,8(sp)
    80001334:	00013903          	ld	s2,0(sp)
    80001338:	02010113          	addi	sp,sp,32
    8000133c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001340:	00000097          	auipc	ra,0x0
    80001344:	f0c080e7          	jalr	-244(ra) # 8000124c <_Z15thread_dispatchv>
    80001348:	fc1ff06f          	j	80001308 <_Z9fibonaccim+0x30>

000000008000134c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000134c:	fe010113          	addi	sp,sp,-32
    80001350:	00113c23          	sd	ra,24(sp)
    80001354:	00813823          	sd	s0,16(sp)
    80001358:	00913423          	sd	s1,8(sp)
    8000135c:	01213023          	sd	s2,0(sp)
    80001360:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001364:	00000913          	li	s2,0
    80001368:	0380006f          	j	800013a0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	ee0080e7          	jalr	-288(ra) # 8000124c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001374:	00148493          	addi	s1,s1,1
    80001378:	000027b7          	lui	a5,0x2
    8000137c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001380:	0097ee63          	bltu	a5,s1,8000139c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001384:	00000713          	li	a4,0
    80001388:	000077b7          	lui	a5,0x7
    8000138c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001390:	fce7eee3          	bltu	a5,a4,8000136c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80001394:	00170713          	addi	a4,a4,1
    80001398:	ff1ff06f          	j	80001388 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000139c:	00190913          	addi	s2,s2,1
    800013a0:	00900793          	li	a5,9
    800013a4:	0527e063          	bltu	a5,s2,800013e4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800013a8:	00004517          	auipc	a0,0x4
    800013ac:	c7850513          	addi	a0,a0,-904 # 80005020 <CONSOLE_STATUS+0x10>
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	788080e7          	jalr	1928(ra) # 80002b38 <_Z11printStringPKc>
    800013b8:	00000613          	li	a2,0
    800013bc:	00a00593          	li	a1,10
    800013c0:	0009051b          	sext.w	a0,s2
    800013c4:	00002097          	auipc	ra,0x2
    800013c8:	90c080e7          	jalr	-1780(ra) # 80002cd0 <_Z8printIntiii>
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	ec450513          	addi	a0,a0,-316 # 80005290 <CONSOLE_STATUS+0x280>
    800013d4:	00001097          	auipc	ra,0x1
    800013d8:	764080e7          	jalr	1892(ra) # 80002b38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800013dc:	00000493          	li	s1,0
    800013e0:	f99ff06f          	j	80001378 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800013e4:	00004517          	auipc	a0,0x4
    800013e8:	c4450513          	addi	a0,a0,-956 # 80005028 <CONSOLE_STATUS+0x18>
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	74c080e7          	jalr	1868(ra) # 80002b38 <_Z11printStringPKc>
    finishedA = true;
    800013f4:	00100793          	li	a5,1
    800013f8:	00005717          	auipc	a4,0x5
    800013fc:	c6f70c23          	sb	a5,-904(a4) # 80006070 <finishedA>
}
    80001400:	01813083          	ld	ra,24(sp)
    80001404:	01013403          	ld	s0,16(sp)
    80001408:	00813483          	ld	s1,8(sp)
    8000140c:	00013903          	ld	s2,0(sp)
    80001410:	02010113          	addi	sp,sp,32
    80001414:	00008067          	ret

0000000080001418 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001418:	fe010113          	addi	sp,sp,-32
    8000141c:	00113c23          	sd	ra,24(sp)
    80001420:	00813823          	sd	s0,16(sp)
    80001424:	00913423          	sd	s1,8(sp)
    80001428:	01213023          	sd	s2,0(sp)
    8000142c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001430:	00000913          	li	s2,0
    80001434:	0380006f          	j	8000146c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	e14080e7          	jalr	-492(ra) # 8000124c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001440:	00148493          	addi	s1,s1,1
    80001444:	000027b7          	lui	a5,0x2
    80001448:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000144c:	0097ee63          	bltu	a5,s1,80001468 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001450:	00000713          	li	a4,0
    80001454:	000077b7          	lui	a5,0x7
    80001458:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000145c:	fce7eee3          	bltu	a5,a4,80001438 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80001460:	00170713          	addi	a4,a4,1
    80001464:	ff1ff06f          	j	80001454 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001468:	00190913          	addi	s2,s2,1
    8000146c:	00f00793          	li	a5,15
    80001470:	0527e063          	bltu	a5,s2,800014b0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80001474:	00004517          	auipc	a0,0x4
    80001478:	bc450513          	addi	a0,a0,-1084 # 80005038 <CONSOLE_STATUS+0x28>
    8000147c:	00001097          	auipc	ra,0x1
    80001480:	6bc080e7          	jalr	1724(ra) # 80002b38 <_Z11printStringPKc>
    80001484:	00000613          	li	a2,0
    80001488:	00a00593          	li	a1,10
    8000148c:	0009051b          	sext.w	a0,s2
    80001490:	00002097          	auipc	ra,0x2
    80001494:	840080e7          	jalr	-1984(ra) # 80002cd0 <_Z8printIntiii>
    80001498:	00004517          	auipc	a0,0x4
    8000149c:	df850513          	addi	a0,a0,-520 # 80005290 <CONSOLE_STATUS+0x280>
    800014a0:	00001097          	auipc	ra,0x1
    800014a4:	698080e7          	jalr	1688(ra) # 80002b38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800014a8:	00000493          	li	s1,0
    800014ac:	f99ff06f          	j	80001444 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800014b0:	00004517          	auipc	a0,0x4
    800014b4:	b9050513          	addi	a0,a0,-1136 # 80005040 <CONSOLE_STATUS+0x30>
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	680080e7          	jalr	1664(ra) # 80002b38 <_Z11printStringPKc>
    finishedB = true;
    800014c0:	00100793          	li	a5,1
    800014c4:	00005717          	auipc	a4,0x5
    800014c8:	baf706a3          	sb	a5,-1107(a4) # 80006071 <finishedB>
    thread_dispatch();
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	d80080e7          	jalr	-640(ra) # 8000124c <_Z15thread_dispatchv>
}
    800014d4:	01813083          	ld	ra,24(sp)
    800014d8:	01013403          	ld	s0,16(sp)
    800014dc:	00813483          	ld	s1,8(sp)
    800014e0:	00013903          	ld	s2,0(sp)
    800014e4:	02010113          	addi	sp,sp,32
    800014e8:	00008067          	ret

00000000800014ec <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00113c23          	sd	ra,24(sp)
    800014f4:	00813823          	sd	s0,16(sp)
    800014f8:	00913423          	sd	s1,8(sp)
    800014fc:	01213023          	sd	s2,0(sp)
    80001500:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001504:	00000493          	li	s1,0
    80001508:	0400006f          	j	80001548 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b4450513          	addi	a0,a0,-1212 # 80005050 <CONSOLE_STATUS+0x40>
    80001514:	00001097          	auipc	ra,0x1
    80001518:	624080e7          	jalr	1572(ra) # 80002b38 <_Z11printStringPKc>
    8000151c:	00000613          	li	a2,0
    80001520:	00a00593          	li	a1,10
    80001524:	00048513          	mv	a0,s1
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	7a8080e7          	jalr	1960(ra) # 80002cd0 <_Z8printIntiii>
    80001530:	00004517          	auipc	a0,0x4
    80001534:	d6050513          	addi	a0,a0,-672 # 80005290 <CONSOLE_STATUS+0x280>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	600080e7          	jalr	1536(ra) # 80002b38 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001540:	0014849b          	addiw	s1,s1,1
    80001544:	0ff4f493          	andi	s1,s1,255
    80001548:	00200793          	li	a5,2
    8000154c:	fc97f0e3          	bgeu	a5,s1,8000150c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80001550:	00004517          	auipc	a0,0x4
    80001554:	b0850513          	addi	a0,a0,-1272 # 80005058 <CONSOLE_STATUS+0x48>
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	5e0080e7          	jalr	1504(ra) # 80002b38 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001560:	00700313          	li	t1,7
    thread_dispatch();
    80001564:	00000097          	auipc	ra,0x0
    80001568:	ce8080e7          	jalr	-792(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000156c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80001570:	00004517          	auipc	a0,0x4
    80001574:	af850513          	addi	a0,a0,-1288 # 80005068 <CONSOLE_STATUS+0x58>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	5c0080e7          	jalr	1472(ra) # 80002b38 <_Z11printStringPKc>
    80001580:	00000613          	li	a2,0
    80001584:	00a00593          	li	a1,10
    80001588:	0009051b          	sext.w	a0,s2
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	744080e7          	jalr	1860(ra) # 80002cd0 <_Z8printIntiii>
    80001594:	00004517          	auipc	a0,0x4
    80001598:	cfc50513          	addi	a0,a0,-772 # 80005290 <CONSOLE_STATUS+0x280>
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	59c080e7          	jalr	1436(ra) # 80002b38 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015a4:	00c00513          	li	a0,12
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	d30080e7          	jalr	-720(ra) # 800012d8 <_Z9fibonaccim>
    800015b0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800015b4:	00004517          	auipc	a0,0x4
    800015b8:	abc50513          	addi	a0,a0,-1348 # 80005070 <CONSOLE_STATUS+0x60>
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	57c080e7          	jalr	1404(ra) # 80002b38 <_Z11printStringPKc>
    800015c4:	00000613          	li	a2,0
    800015c8:	00a00593          	li	a1,10
    800015cc:	0009051b          	sext.w	a0,s2
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	700080e7          	jalr	1792(ra) # 80002cd0 <_Z8printIntiii>
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	cb850513          	addi	a0,a0,-840 # 80005290 <CONSOLE_STATUS+0x280>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	558080e7          	jalr	1368(ra) # 80002b38 <_Z11printStringPKc>
    800015e8:	0400006f          	j	80001628 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800015ec:	00004517          	auipc	a0,0x4
    800015f0:	a6450513          	addi	a0,a0,-1436 # 80005050 <CONSOLE_STATUS+0x40>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	544080e7          	jalr	1348(ra) # 80002b38 <_Z11printStringPKc>
    800015fc:	00000613          	li	a2,0
    80001600:	00a00593          	li	a1,10
    80001604:	00048513          	mv	a0,s1
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	6c8080e7          	jalr	1736(ra) # 80002cd0 <_Z8printIntiii>
    80001610:	00004517          	auipc	a0,0x4
    80001614:	c8050513          	addi	a0,a0,-896 # 80005290 <CONSOLE_STATUS+0x280>
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	520080e7          	jalr	1312(ra) # 80002b38 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001620:	0014849b          	addiw	s1,s1,1
    80001624:	0ff4f493          	andi	s1,s1,255
    80001628:	00500793          	li	a5,5
    8000162c:	fc97f0e3          	bgeu	a5,s1,800015ec <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	a5050513          	addi	a0,a0,-1456 # 80005080 <CONSOLE_STATUS+0x70>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	500080e7          	jalr	1280(ra) # 80002b38 <_Z11printStringPKc>
    finishedC = true;
    80001640:	00100793          	li	a5,1
    80001644:	00005717          	auipc	a4,0x5
    80001648:	a2f70723          	sb	a5,-1490(a4) # 80006072 <finishedC>
    thread_dispatch();
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	c00080e7          	jalr	-1024(ra) # 8000124c <_Z15thread_dispatchv>
}
    80001654:	01813083          	ld	ra,24(sp)
    80001658:	01013403          	ld	s0,16(sp)
    8000165c:	00813483          	ld	s1,8(sp)
    80001660:	00013903          	ld	s2,0(sp)
    80001664:	02010113          	addi	sp,sp,32
    80001668:	00008067          	ret

000000008000166c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000166c:	fe010113          	addi	sp,sp,-32
    80001670:	00113c23          	sd	ra,24(sp)
    80001674:	00813823          	sd	s0,16(sp)
    80001678:	00913423          	sd	s1,8(sp)
    8000167c:	01213023          	sd	s2,0(sp)
    80001680:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001684:	00a00493          	li	s1,10
    80001688:	0400006f          	j	800016c8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	a0450513          	addi	a0,a0,-1532 # 80005090 <CONSOLE_STATUS+0x80>
    80001694:	00001097          	auipc	ra,0x1
    80001698:	4a4080e7          	jalr	1188(ra) # 80002b38 <_Z11printStringPKc>
    8000169c:	00000613          	li	a2,0
    800016a0:	00a00593          	li	a1,10
    800016a4:	00048513          	mv	a0,s1
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	628080e7          	jalr	1576(ra) # 80002cd0 <_Z8printIntiii>
    800016b0:	00004517          	auipc	a0,0x4
    800016b4:	be050513          	addi	a0,a0,-1056 # 80005290 <CONSOLE_STATUS+0x280>
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	480080e7          	jalr	1152(ra) # 80002b38 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800016c0:	0014849b          	addiw	s1,s1,1
    800016c4:	0ff4f493          	andi	s1,s1,255
    800016c8:	00c00793          	li	a5,12
    800016cc:	fc97f0e3          	bgeu	a5,s1,8000168c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800016d0:	00004517          	auipc	a0,0x4
    800016d4:	9c850513          	addi	a0,a0,-1592 # 80005098 <CONSOLE_STATUS+0x88>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	460080e7          	jalr	1120(ra) # 80002b38 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800016e0:	00500313          	li	t1,5
    thread_dispatch();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	b68080e7          	jalr	-1176(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800016ec:	01000513          	li	a0,16
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	be8080e7          	jalr	-1048(ra) # 800012d8 <_Z9fibonaccim>
    800016f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800016fc:	00004517          	auipc	a0,0x4
    80001700:	9ac50513          	addi	a0,a0,-1620 # 800050a8 <CONSOLE_STATUS+0x98>
    80001704:	00001097          	auipc	ra,0x1
    80001708:	434080e7          	jalr	1076(ra) # 80002b38 <_Z11printStringPKc>
    8000170c:	00000613          	li	a2,0
    80001710:	00a00593          	li	a1,10
    80001714:	0009051b          	sext.w	a0,s2
    80001718:	00001097          	auipc	ra,0x1
    8000171c:	5b8080e7          	jalr	1464(ra) # 80002cd0 <_Z8printIntiii>
    80001720:	00004517          	auipc	a0,0x4
    80001724:	b7050513          	addi	a0,a0,-1168 # 80005290 <CONSOLE_STATUS+0x280>
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	410080e7          	jalr	1040(ra) # 80002b38 <_Z11printStringPKc>
    80001730:	0400006f          	j	80001770 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001734:	00004517          	auipc	a0,0x4
    80001738:	95c50513          	addi	a0,a0,-1700 # 80005090 <CONSOLE_STATUS+0x80>
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	3fc080e7          	jalr	1020(ra) # 80002b38 <_Z11printStringPKc>
    80001744:	00000613          	li	a2,0
    80001748:	00a00593          	li	a1,10
    8000174c:	00048513          	mv	a0,s1
    80001750:	00001097          	auipc	ra,0x1
    80001754:	580080e7          	jalr	1408(ra) # 80002cd0 <_Z8printIntiii>
    80001758:	00004517          	auipc	a0,0x4
    8000175c:	b3850513          	addi	a0,a0,-1224 # 80005290 <CONSOLE_STATUS+0x280>
    80001760:	00001097          	auipc	ra,0x1
    80001764:	3d8080e7          	jalr	984(ra) # 80002b38 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001768:	0014849b          	addiw	s1,s1,1
    8000176c:	0ff4f493          	andi	s1,s1,255
    80001770:	00f00793          	li	a5,15
    80001774:	fc97f0e3          	bgeu	a5,s1,80001734 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80001778:	00004517          	auipc	a0,0x4
    8000177c:	94050513          	addi	a0,a0,-1728 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001780:	00001097          	auipc	ra,0x1
    80001784:	3b8080e7          	jalr	952(ra) # 80002b38 <_Z11printStringPKc>
    finishedD = true;
    80001788:	00100793          	li	a5,1
    8000178c:	00005717          	auipc	a4,0x5
    80001790:	8ef703a3          	sb	a5,-1817(a4) # 80006073 <finishedD>
    thread_dispatch();
    80001794:	00000097          	auipc	ra,0x0
    80001798:	ab8080e7          	jalr	-1352(ra) # 8000124c <_Z15thread_dispatchv>
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	00013903          	ld	s2,0(sp)
    800017ac:	02010113          	addi	sp,sp,32
    800017b0:	00008067          	ret

00000000800017b4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800017b4:	fc010113          	addi	sp,sp,-64
    800017b8:	02113c23          	sd	ra,56(sp)
    800017bc:	02813823          	sd	s0,48(sp)
    800017c0:	02913423          	sd	s1,40(sp)
    800017c4:	03213023          	sd	s2,32(sp)
    800017c8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800017cc:	01800513          	li	a0,24
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	d1c080e7          	jalr	-740(ra) # 800024ec <_Znwm>
    800017d8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	e2c080e7          	jalr	-468(ra) # 80002608 <_ZN6ThreadC1Ev>
    800017e4:	00004797          	auipc	a5,0x4
    800017e8:	73c78793          	addi	a5,a5,1852 # 80005f20 <_ZTV7WorkerA+0x10>
    800017ec:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800017f0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800017f4:	00004517          	auipc	a0,0x4
    800017f8:	8d450513          	addi	a0,a0,-1836 # 800050c8 <CONSOLE_STATUS+0xb8>
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	33c080e7          	jalr	828(ra) # 80002b38 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001804:	01800513          	li	a0,24
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	ce4080e7          	jalr	-796(ra) # 800024ec <_Znwm>
    80001810:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001814:	00001097          	auipc	ra,0x1
    80001818:	df4080e7          	jalr	-524(ra) # 80002608 <_ZN6ThreadC1Ev>
    8000181c:	00004797          	auipc	a5,0x4
    80001820:	72c78793          	addi	a5,a5,1836 # 80005f48 <_ZTV7WorkerB+0x10>
    80001824:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001828:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000182c:	00004517          	auipc	a0,0x4
    80001830:	8b450513          	addi	a0,a0,-1868 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001834:	00001097          	auipc	ra,0x1
    80001838:	304080e7          	jalr	772(ra) # 80002b38 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000183c:	01800513          	li	a0,24
    80001840:	00001097          	auipc	ra,0x1
    80001844:	cac080e7          	jalr	-852(ra) # 800024ec <_Znwm>
    80001848:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	dbc080e7          	jalr	-580(ra) # 80002608 <_ZN6ThreadC1Ev>
    80001854:	00004797          	auipc	a5,0x4
    80001858:	71c78793          	addi	a5,a5,1820 # 80005f70 <_ZTV7WorkerC+0x10>
    8000185c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80001860:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80001864:	00004517          	auipc	a0,0x4
    80001868:	89450513          	addi	a0,a0,-1900 # 800050f8 <CONSOLE_STATUS+0xe8>
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	2cc080e7          	jalr	716(ra) # 80002b38 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80001874:	01800513          	li	a0,24
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	c74080e7          	jalr	-908(ra) # 800024ec <_Znwm>
    80001880:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80001884:	00001097          	auipc	ra,0x1
    80001888:	d84080e7          	jalr	-636(ra) # 80002608 <_ZN6ThreadC1Ev>
    8000188c:	00004797          	auipc	a5,0x4
    80001890:	70c78793          	addi	a5,a5,1804 # 80005f98 <_ZTV7WorkerD+0x10>
    80001894:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80001898:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000189c:	00004517          	auipc	a0,0x4
    800018a0:	87450513          	addi	a0,a0,-1932 # 80005110 <CONSOLE_STATUS+0x100>
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	294080e7          	jalr	660(ra) # 80002b38 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800018ac:	00000493          	li	s1,0
    800018b0:	00300793          	li	a5,3
    800018b4:	0297c663          	blt	a5,s1,800018e0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800018b8:	00349793          	slli	a5,s1,0x3
    800018bc:	fe040713          	addi	a4,s0,-32
    800018c0:	00f707b3          	add	a5,a4,a5
    800018c4:	fe07b503          	ld	a0,-32(a5)
    800018c8:	00001097          	auipc	ra,0x1
    800018cc:	db0080e7          	jalr	-592(ra) # 80002678 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800018d0:	0014849b          	addiw	s1,s1,1
    800018d4:	fddff06f          	j	800018b0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	d78080e7          	jalr	-648(ra) # 80002650 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800018e0:	00004797          	auipc	a5,0x4
    800018e4:	7907c783          	lbu	a5,1936(a5) # 80006070 <finishedA>
    800018e8:	fe0788e3          	beqz	a5,800018d8 <_Z20Threads_CPP_API_testv+0x124>
    800018ec:	00004797          	auipc	a5,0x4
    800018f0:	7857c783          	lbu	a5,1925(a5) # 80006071 <finishedB>
    800018f4:	fe0782e3          	beqz	a5,800018d8 <_Z20Threads_CPP_API_testv+0x124>
    800018f8:	00004797          	auipc	a5,0x4
    800018fc:	77a7c783          	lbu	a5,1914(a5) # 80006072 <finishedC>
    80001900:	fc078ce3          	beqz	a5,800018d8 <_Z20Threads_CPP_API_testv+0x124>
    80001904:	00004797          	auipc	a5,0x4
    80001908:	76f7c783          	lbu	a5,1903(a5) # 80006073 <finishedD>
    8000190c:	fc0786e3          	beqz	a5,800018d8 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80001910:	fc040493          	addi	s1,s0,-64
    80001914:	0080006f          	j	8000191c <_Z20Threads_CPP_API_testv+0x168>
    80001918:	00848493          	addi	s1,s1,8
    8000191c:	fe040793          	addi	a5,s0,-32
    80001920:	08f48663          	beq	s1,a5,800019ac <_Z20Threads_CPP_API_testv+0x1f8>
    80001924:	0004b503          	ld	a0,0(s1)
    80001928:	fe0508e3          	beqz	a0,80001918 <_Z20Threads_CPP_API_testv+0x164>
    8000192c:	00053783          	ld	a5,0(a0)
    80001930:	0087b783          	ld	a5,8(a5)
    80001934:	000780e7          	jalr	a5
    80001938:	fe1ff06f          	j	80001918 <_Z20Threads_CPP_API_testv+0x164>
    8000193c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001940:	00048513          	mv	a0,s1
    80001944:	00001097          	auipc	ra,0x1
    80001948:	bf8080e7          	jalr	-1032(ra) # 8000253c <_ZdlPv>
    8000194c:	00090513          	mv	a0,s2
    80001950:	00006097          	auipc	ra,0x6
    80001954:	838080e7          	jalr	-1992(ra) # 80007188 <_Unwind_Resume>
    80001958:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000195c:	00048513          	mv	a0,s1
    80001960:	00001097          	auipc	ra,0x1
    80001964:	bdc080e7          	jalr	-1060(ra) # 8000253c <_ZdlPv>
    80001968:	00090513          	mv	a0,s2
    8000196c:	00006097          	auipc	ra,0x6
    80001970:	81c080e7          	jalr	-2020(ra) # 80007188 <_Unwind_Resume>
    80001974:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80001978:	00048513          	mv	a0,s1
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	bc0080e7          	jalr	-1088(ra) # 8000253c <_ZdlPv>
    80001984:	00090513          	mv	a0,s2
    80001988:	00006097          	auipc	ra,0x6
    8000198c:	800080e7          	jalr	-2048(ra) # 80007188 <_Unwind_Resume>
    80001990:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80001994:	00048513          	mv	a0,s1
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	ba4080e7          	jalr	-1116(ra) # 8000253c <_ZdlPv>
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00005097          	auipc	ra,0x5
    800019a8:	7e4080e7          	jalr	2020(ra) # 80007188 <_Unwind_Resume>
}
    800019ac:	03813083          	ld	ra,56(sp)
    800019b0:	03013403          	ld	s0,48(sp)
    800019b4:	02813483          	ld	s1,40(sp)
    800019b8:	02013903          	ld	s2,32(sp)
    800019bc:	04010113          	addi	sp,sp,64
    800019c0:	00008067          	ret

00000000800019c4 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	de0080e7          	jalr	-544(ra) # 800017b4 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    800019fc:	00004797          	auipc	a5,0x4
    80001a00:	52478793          	addi	a5,a5,1316 # 80005f20 <_ZTV7WorkerA+0x10>
    80001a04:	00f53023          	sd	a5,0(a0)
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	ab0080e7          	jalr	-1360(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001a10:	00813083          	ld	ra,8(sp)
    80001a14:	00013403          	ld	s0,0(sp)
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret

0000000080001a20 <_ZN7WorkerAD0Ev>:
    80001a20:	fe010113          	addi	sp,sp,-32
    80001a24:	00113c23          	sd	ra,24(sp)
    80001a28:	00813823          	sd	s0,16(sp)
    80001a2c:	00913423          	sd	s1,8(sp)
    80001a30:	02010413          	addi	s0,sp,32
    80001a34:	00050493          	mv	s1,a0
    80001a38:	00004797          	auipc	a5,0x4
    80001a3c:	4e878793          	addi	a5,a5,1256 # 80005f20 <_ZTV7WorkerA+0x10>
    80001a40:	00f53023          	sd	a5,0(a0)
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	a74080e7          	jalr	-1420(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	aec080e7          	jalr	-1300(ra) # 8000253c <_ZdlPv>
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	02010113          	addi	sp,sp,32
    80001a68:	00008067          	ret

0000000080001a6c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00113423          	sd	ra,8(sp)
    80001a74:	00813023          	sd	s0,0(sp)
    80001a78:	01010413          	addi	s0,sp,16
    80001a7c:	00004797          	auipc	a5,0x4
    80001a80:	4cc78793          	addi	a5,a5,1228 # 80005f48 <_ZTV7WorkerB+0x10>
    80001a84:	00f53023          	sd	a5,0(a0)
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	a30080e7          	jalr	-1488(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001a90:	00813083          	ld	ra,8(sp)
    80001a94:	00013403          	ld	s0,0(sp)
    80001a98:	01010113          	addi	sp,sp,16
    80001a9c:	00008067          	ret

0000000080001aa0 <_ZN7WorkerBD0Ev>:
    80001aa0:	fe010113          	addi	sp,sp,-32
    80001aa4:	00113c23          	sd	ra,24(sp)
    80001aa8:	00813823          	sd	s0,16(sp)
    80001aac:	00913423          	sd	s1,8(sp)
    80001ab0:	02010413          	addi	s0,sp,32
    80001ab4:	00050493          	mv	s1,a0
    80001ab8:	00004797          	auipc	a5,0x4
    80001abc:	49078793          	addi	a5,a5,1168 # 80005f48 <_ZTV7WorkerB+0x10>
    80001ac0:	00f53023          	sd	a5,0(a0)
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	9f4080e7          	jalr	-1548(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	00001097          	auipc	ra,0x1
    80001ad4:	a6c080e7          	jalr	-1428(ra) # 8000253c <_ZdlPv>
    80001ad8:	01813083          	ld	ra,24(sp)
    80001adc:	01013403          	ld	s0,16(sp)
    80001ae0:	00813483          	ld	s1,8(sp)
    80001ae4:	02010113          	addi	sp,sp,32
    80001ae8:	00008067          	ret

0000000080001aec <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80001aec:	ff010113          	addi	sp,sp,-16
    80001af0:	00113423          	sd	ra,8(sp)
    80001af4:	00813023          	sd	s0,0(sp)
    80001af8:	01010413          	addi	s0,sp,16
    80001afc:	00004797          	auipc	a5,0x4
    80001b00:	47478793          	addi	a5,a5,1140 # 80005f70 <_ZTV7WorkerC+0x10>
    80001b04:	00f53023          	sd	a5,0(a0)
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	9b0080e7          	jalr	-1616(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001b10:	00813083          	ld	ra,8(sp)
    80001b14:	00013403          	ld	s0,0(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN7WorkerCD0Ev>:
    80001b20:	fe010113          	addi	sp,sp,-32
    80001b24:	00113c23          	sd	ra,24(sp)
    80001b28:	00813823          	sd	s0,16(sp)
    80001b2c:	00913423          	sd	s1,8(sp)
    80001b30:	02010413          	addi	s0,sp,32
    80001b34:	00050493          	mv	s1,a0
    80001b38:	00004797          	auipc	a5,0x4
    80001b3c:	43878793          	addi	a5,a5,1080 # 80005f70 <_ZTV7WorkerC+0x10>
    80001b40:	00f53023          	sd	a5,0(a0)
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	974080e7          	jalr	-1676(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001b4c:	00048513          	mv	a0,s1
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	9ec080e7          	jalr	-1556(ra) # 8000253c <_ZdlPv>
    80001b58:	01813083          	ld	ra,24(sp)
    80001b5c:	01013403          	ld	s0,16(sp)
    80001b60:	00813483          	ld	s1,8(sp)
    80001b64:	02010113          	addi	sp,sp,32
    80001b68:	00008067          	ret

0000000080001b6c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    80001b7c:	00004797          	auipc	a5,0x4
    80001b80:	41c78793          	addi	a5,a5,1052 # 80005f98 <_ZTV7WorkerD+0x10>
    80001b84:	00f53023          	sd	a5,0(a0)
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	930080e7          	jalr	-1744(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001b90:	00813083          	ld	ra,8(sp)
    80001b94:	00013403          	ld	s0,0(sp)
    80001b98:	01010113          	addi	sp,sp,16
    80001b9c:	00008067          	ret

0000000080001ba0 <_ZN7WorkerDD0Ev>:
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	02010413          	addi	s0,sp,32
    80001bb4:	00050493          	mv	s1,a0
    80001bb8:	00004797          	auipc	a5,0x4
    80001bbc:	3e078793          	addi	a5,a5,992 # 80005f98 <_ZTV7WorkerD+0x10>
    80001bc0:	00f53023          	sd	a5,0(a0)
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	8f4080e7          	jalr	-1804(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80001bcc:	00048513          	mv	a0,s1
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	96c080e7          	jalr	-1684(ra) # 8000253c <_ZdlPv>
    80001bd8:	01813083          	ld	ra,24(sp)
    80001bdc:	01013403          	ld	s0,16(sp)
    80001be0:	00813483          	ld	s1,8(sp)
    80001be4:	02010113          	addi	sp,sp,32
    80001be8:	00008067          	ret

0000000080001bec <_ZN7WorkerA3runEv>:
    void run() override {
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00113423          	sd	ra,8(sp)
    80001bf4:	00813023          	sd	s0,0(sp)
    80001bf8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80001bfc:	00000593          	li	a1,0
    80001c00:	fffff097          	auipc	ra,0xfffff
    80001c04:	74c080e7          	jalr	1868(ra) # 8000134c <_ZN7WorkerA11workerBodyAEPv>
    }
    80001c08:	00813083          	ld	ra,8(sp)
    80001c0c:	00013403          	ld	s0,0(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <_ZN7WorkerB3runEv>:
    void run() override {
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00113423          	sd	ra,8(sp)
    80001c20:	00813023          	sd	s0,0(sp)
    80001c24:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80001c28:	00000593          	li	a1,0
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	7ec080e7          	jalr	2028(ra) # 80001418 <_ZN7WorkerB11workerBodyBEPv>
    }
    80001c34:	00813083          	ld	ra,8(sp)
    80001c38:	00013403          	ld	s0,0(sp)
    80001c3c:	01010113          	addi	sp,sp,16
    80001c40:	00008067          	ret

0000000080001c44 <_ZN7WorkerC3runEv>:
    void run() override {
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00113423          	sd	ra,8(sp)
    80001c4c:	00813023          	sd	s0,0(sp)
    80001c50:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80001c54:	00000593          	li	a1,0
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	894080e7          	jalr	-1900(ra) # 800014ec <_ZN7WorkerC11workerBodyCEPv>
    }
    80001c60:	00813083          	ld	ra,8(sp)
    80001c64:	00013403          	ld	s0,0(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN7WorkerD3runEv>:
    void run() override {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80001c80:	00000593          	li	a1,0
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	9e8080e7          	jalr	-1560(ra) # 8000166c <_ZN7WorkerD11workerBodyDEPv>
    }
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <main>:
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

extern void userMain();

int main(){
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    MemoryAllocator::getInstance();
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	634080e7          	jalr	1588(ra) # 800022e0 <_ZN15MemoryAllocator11getInstanceEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001cb4:	00004797          	auipc	a5,0x4
    80001cb8:	3547b783          	ld	a5,852(a5) # 80006008 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001cbc:	10579073          	csrw	stvec,a5

    TCB *m = nullptr;
    m = TCB::createThread(nullptr, nullptr, nullptr);
    80001cc0:	00000613          	li	a2,0
    80001cc4:	00000593          	li	a1,0
    80001cc8:	00000513          	li	a0,0
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	188080e7          	jalr	392(ra) # 80001e54 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    TCB::running = m;
    80001cd4:	00004797          	auipc	a5,0x4
    80001cd8:	3447b783          	ld	a5,836(a5) # 80006018 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001cdc:	00a7b023          	sd	a0,0(a5)
    exit_supervisor();
    80001ce0:	fffff097          	auipc	ra,0xfffff
    80001ce4:	58c080e7          	jalr	1420(ra) # 8000126c <_Z15exit_supervisorv>
    int *a = new int();
    uint64 *u = new uint64();
    delete(a);
    delete(u);
    delete[](c);*/
    userMain();
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	cdc080e7          	jalr	-804(ra) # 800019c4 <_Z8userMainv>
    return 0;
    80001cf0:	00000513          	li	a0,0
    80001cf4:	00813083          	ld	ra,8(sp)
    80001cf8:	00013403          	ld	s0,0(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZN3TCB8dispatchEv>:
    TCB::dispatch();
    //Riscv::popRegisters();
}

void TCB::dispatch()
{
    80001d04:	fe010113          	addi	sp,sp,-32
    80001d08:	00113c23          	sd	ra,24(sp)
    80001d0c:	00813823          	sd	s0,16(sp)
    80001d10:	00913423          	sd	s1,8(sp)
    80001d14:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001d18:	00004497          	auipc	s1,0x4
    80001d1c:	3604b483          	ld	s1,864(s1) # 80006078 <_ZN3TCB7runningE>
    }
    void operator delete(void* address) {
        MemoryAllocator::FreeMem(address);
    }

    bool isFinished() const { return finished; }
    80001d20:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001d24:	02078c63          	beqz	a5,80001d5c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	d08080e7          	jalr	-760(ra) # 80002a30 <_ZN9Scheduler3getEv>
    80001d30:	00004797          	auipc	a5,0x4
    80001d34:	34a7b423          	sd	a0,840(a5) # 80006078 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001d38:	02050593          	addi	a1,a0,32
    80001d3c:	02048513          	addi	a0,s1,32
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	3e0080e7          	jalr	992(ra) # 80001120 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d48:	01813083          	ld	ra,24(sp)
    80001d4c:	01013403          	ld	s0,16(sp)
    80001d50:	00813483          	ld	s1,8(sp)
    80001d54:	02010113          	addi	sp,sp,32
    80001d58:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	d38080e7          	jalr	-712(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
    80001d68:	fc1ff06f          	j	80001d28 <_ZN3TCB8dispatchEv+0x24>

0000000080001d6c <_Z4wrapv>:
void wrap(){
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00813823          	sd	s0,16(sp)
    80001d78:	00913423          	sd	s1,8(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    TCB::running->body(TCB::running->arg);
    80001d80:	00004497          	auipc	s1,0x4
    80001d84:	2f848493          	addi	s1,s1,760 # 80006078 <_ZN3TCB7runningE>
    80001d88:	0004b783          	ld	a5,0(s1)
    80001d8c:	0107b703          	ld	a4,16(a5)
    80001d90:	0087b503          	ld	a0,8(a5)
    80001d94:	000700e7          	jalr	a4
    TCB::running->setFinished(true);
    80001d98:	0004b783          	ld	a5,0(s1)

    void setFinished(bool value) { finished = value; }
    80001d9c:	00100713          	li	a4,1
    80001da0:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	f60080e7          	jalr	-160(ra) # 80001d04 <_ZN3TCB8dispatchEv>
}
    80001dac:	01813083          	ld	ra,24(sp)
    80001db0:	01013403          	ld	s0,16(sp)
    80001db4:	00813483          	ld	s1,8(sp)
    80001db8:	02010113          	addi	sp,sp,32
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN3TCB5yieldEv>:
{
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    TCB::dispatch();
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	f34080e7          	jalr	-204(ra) # 80001d04 <_ZN3TCB8dispatchEv>
}
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN3TCB10fillThreadEPS_PFvPvES1_Pm>:

void TCB::fillThread(TCB *thr, TCB::Body body, void *arg, uint64 *stack) {
    thr->arg = arg;
    80001de8:	00c53423          	sd	a2,8(a0)
    thr->body = body;
    80001dec:	00b53823          	sd	a1,16(a0)
    thr->finished = false;
    80001df0:	02050823          	sb	zero,48(a0)
    if(body!= nullptr) {
    80001df4:	04058663          	beqz	a1,80001e40 <_ZN3TCB10fillThreadEPS_PFvPvES1_Pm+0x58>
        thr->stack = stack;
    80001df8:	00d53c23          	sd	a3,24(a0)
        thr->context.ra = (uint64)(&wrap);
    80001dfc:	00000797          	auipc	a5,0x0
    80001e00:	f7078793          	addi	a5,a5,-144 # 80001d6c <_Z4wrapv>
    80001e04:	02f53023          	sd	a5,32(a0)
        thr->context.sp = (uint64)&stack[STACK_SIZE];
    80001e08:	000027b7          	lui	a5,0x2
    80001e0c:	00f686b3          	add	a3,a3,a5
    80001e10:	02d53423          	sd	a3,40(a0)
    }else{
        thr->stack = nullptr;
        thr->context.ra = 0;
        thr->context.sp = 0;
    }
    if (body != nullptr) { Scheduler::put(thr);}
    80001e14:	02058e63          	beqz	a1,80001e50 <_ZN3TCB10fillThreadEPS_PFvPvES1_Pm+0x68>
void TCB::fillThread(TCB *thr, TCB::Body body, void *arg, uint64 *stack) {
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00113423          	sd	ra,8(sp)
    80001e20:	00813023          	sd	s0,0(sp)
    80001e24:	01010413          	addi	s0,sp,16
    if (body != nullptr) { Scheduler::put(thr);}
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	c70080e7          	jalr	-912(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
}
    80001e30:	00813083          	ld	ra,8(sp)
    80001e34:	00013403          	ld	s0,0(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret
        thr->stack = nullptr;
    80001e40:	00053c23          	sd	zero,24(a0)
        thr->context.ra = 0;
    80001e44:	02053023          	sd	zero,32(a0)
        thr->context.sp = 0;
    80001e48:	02053423          	sd	zero,40(a0)
    80001e4c:	fc9ff06f          	j	80001e14 <_ZN3TCB10fillThreadEPS_PFvPvES1_Pm+0x2c>
    80001e50:	00008067          	ret

0000000080001e54 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
{
    80001e54:	fd010113          	addi	sp,sp,-48
    80001e58:	02113423          	sd	ra,40(sp)
    80001e5c:	02813023          	sd	s0,32(sp)
    80001e60:	00913c23          	sd	s1,24(sp)
    80001e64:	01213823          	sd	s2,16(sp)
    80001e68:	01313423          	sd	s3,8(sp)
    80001e6c:	01413023          	sd	s4,0(sp)
    80001e70:	03010413          	addi	s0,sp,48
    80001e74:	00050913          	mv	s2,a0
    80001e78:	00058993          	mv	s3,a1
    80001e7c:	00060a13          	mv	s4,a2
    TCB* thr = (TCB*)MemoryAllocator::allocateB(sizeof(TCB));
    80001e80:	03800513          	li	a0,56
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	4b8080e7          	jalr	1208(ra) # 8000233c <_ZN15MemoryAllocator9allocateBEm>
    80001e8c:	00050493          	mv	s1,a0
    fillThread(thr, body, arg, stack);
    80001e90:	000a0693          	mv	a3,s4
    80001e94:	00098613          	mv	a2,s3
    80001e98:	00090593          	mv	a1,s2
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	f4c080e7          	jalr	-180(ra) # 80001de8 <_ZN3TCB10fillThreadEPS_PFvPvES1_Pm>
}
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	02813083          	ld	ra,40(sp)
    80001eac:	02013403          	ld	s0,32(sp)
    80001eb0:	01813483          	ld	s1,24(sp)
    80001eb4:	01013903          	ld	s2,16(sp)
    80001eb8:	00813983          	ld	s3,8(sp)
    80001ebc:	00013a03          	ld	s4,0(sp)
    80001ec0:	03010113          	addi	sp,sp,48
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN3TCB17fillThreadPendingEPS_PFvPvES1_Pm>:
    TCB* thr = (TCB*)MemoryAllocator::allocateB(sizeof(TCB));
    fillThreadPending(thr, body, arg, stack);
    return thr;
}

void TCB::fillThreadPending(TCB *thr, TCB::Body body, void *arg, uint64 *stack) {
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00813423          	sd	s0,8(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    thr->arg = arg;
    80001ed4:	00c53423          	sd	a2,8(a0)
    thr->body = body;
    80001ed8:	00b53823          	sd	a1,16(a0)
    thr->finished = false;
    80001edc:	02050823          	sb	zero,48(a0)
    if(body!= nullptr) {
    80001ee0:	02058663          	beqz	a1,80001f0c <_ZN3TCB17fillThreadPendingEPS_PFvPvES1_Pm+0x44>
        thr->stack = stack;
    80001ee4:	00d53c23          	sd	a3,24(a0)
        thr->context.ra = (uint64)(&wrap);
    80001ee8:	00000797          	auipc	a5,0x0
    80001eec:	e8478793          	addi	a5,a5,-380 # 80001d6c <_Z4wrapv>
    80001ef0:	02f53023          	sd	a5,32(a0)
        thr->context.sp = (uint64)&stack[STACK_SIZE];
    80001ef4:	000027b7          	lui	a5,0x2
    80001ef8:	00f686b3          	add	a3,a3,a5
    80001efc:	02d53423          	sd	a3,40(a0)
    }else{
        thr->stack = nullptr;
        thr->context.ra = 0;
        thr->context.sp = 0;
    }
}
    80001f00:	00813403          	ld	s0,8(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret
        thr->stack = nullptr;
    80001f0c:	00053c23          	sd	zero,24(a0)
        thr->context.ra = 0;
    80001f10:	02053023          	sd	zero,32(a0)
        thr->context.sp = 0;
    80001f14:	02053423          	sd	zero,40(a0)
}
    80001f18:	fe9ff06f          	j	80001f00 <_ZN3TCB17fillThreadPendingEPS_PFvPvES1_Pm+0x38>

0000000080001f1c <_ZN3TCB19createThreadPendingEPFvPvES0_Pm>:
TCB *TCB::createThreadPending(TCB::Body body, void *arg, uint64 *stack) {
    80001f1c:	fd010113          	addi	sp,sp,-48
    80001f20:	02113423          	sd	ra,40(sp)
    80001f24:	02813023          	sd	s0,32(sp)
    80001f28:	00913c23          	sd	s1,24(sp)
    80001f2c:	01213823          	sd	s2,16(sp)
    80001f30:	01313423          	sd	s3,8(sp)
    80001f34:	01413023          	sd	s4,0(sp)
    80001f38:	03010413          	addi	s0,sp,48
    80001f3c:	00050913          	mv	s2,a0
    80001f40:	00058993          	mv	s3,a1
    80001f44:	00060a13          	mv	s4,a2
    TCB* thr = (TCB*)MemoryAllocator::allocateB(sizeof(TCB));
    80001f48:	03800513          	li	a0,56
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	3f0080e7          	jalr	1008(ra) # 8000233c <_ZN15MemoryAllocator9allocateBEm>
    80001f54:	00050493          	mv	s1,a0
    fillThreadPending(thr, body, arg, stack);
    80001f58:	000a0693          	mv	a3,s4
    80001f5c:	00098613          	mv	a2,s3
    80001f60:	00090593          	mv	a1,s2
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	f64080e7          	jalr	-156(ra) # 80001ec8 <_ZN3TCB17fillThreadPendingEPS_PFvPvES1_Pm>
}
    80001f6c:	00048513          	mv	a0,s1
    80001f70:	02813083          	ld	ra,40(sp)
    80001f74:	02013403          	ld	s0,32(sp)
    80001f78:	01813483          	ld	s1,24(sp)
    80001f7c:	01013903          	ld	s2,16(sp)
    80001f80:	00813983          	ld	s3,8(sp)
    80001f84:	00013a03          	ld	s4,0(sp)
    80001f88:	03010113          	addi	sp,sp,48
    80001f8c:	00008067          	ret

0000000080001f90 <_ZN15MemoryAllocator11connectNextEP7MemNode>:
MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}

int MemoryAllocator::connectNext(MemNode *cur) {
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    if(!cur) return 0;
    80001f9c:	04050663          	beqz	a0,80001fe8 <_ZN15MemoryAllocator11connectNextEP7MemNode+0x58>
    if(cur->next && (char *)cur + cur->size == (char*)(cur->next)) {
    80001fa0:	00853783          	ld	a5,8(a0)
    80001fa4:	04078663          	beqz	a5,80001ff0 <_ZN15MemoryAllocator11connectNextEP7MemNode+0x60>
    80001fa8:	00053703          	ld	a4,0(a0)
    80001fac:	00e506b3          	add	a3,a0,a4
    80001fb0:	00d78a63          	beq	a5,a3,80001fc4 <_ZN15MemoryAllocator11connectNextEP7MemNode+0x34>
        cur->next = cur->next->next;
        if (cur->next) cur->next->prev = cur;
        return 1;
    }
    else
        return 0;
    80001fb4:	00000513          	li	a0,0
}
    80001fb8:	00813403          	ld	s0,8(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret
        cur->size += cur->next->size;
    80001fc4:	0007b683          	ld	a3,0(a5) # 2000 <_entry-0x7fffe000>
    80001fc8:	00d70733          	add	a4,a4,a3
    80001fcc:	00e53023          	sd	a4,0(a0)
        cur->next = cur->next->next;
    80001fd0:	0087b783          	ld	a5,8(a5)
    80001fd4:	00f53423          	sd	a5,8(a0)
        if (cur->next) cur->next->prev = cur;
    80001fd8:	00078463          	beqz	a5,80001fe0 <_ZN15MemoryAllocator11connectNextEP7MemNode+0x50>
    80001fdc:	00a7b823          	sd	a0,16(a5)
        return 1;
    80001fe0:	00100513          	li	a0,1
    80001fe4:	fd5ff06f          	j	80001fb8 <_ZN15MemoryAllocator11connectNextEP7MemNode+0x28>
    if(!cur) return 0;
    80001fe8:	00000513          	li	a0,0
    80001fec:	fcdff06f          	j	80001fb8 <_ZN15MemoryAllocator11connectNextEP7MemNode+0x28>
        return 0;
    80001ff0:	00000513          	li	a0,0
    80001ff4:	fc5ff06f          	j	80001fb8 <_ZN15MemoryAllocator11connectNextEP7MemNode+0x28>

0000000080001ff8 <_ZN15MemoryAllocator7FreeMemEPv>:

int MemoryAllocator::FreeMem(void* addr) { // dobija pokazivac na neki alocirani chonk memorije
    80001ff8:	fe010113          	addi	sp,sp,-32
    80001ffc:	00113c23          	sd	ra,24(sp)
    80002000:	00813823          	sd	s0,16(sp)
    80002004:	00913423          	sd	s1,8(sp)
    80002008:	02010413          	addi	s0,sp,32
    // a u listi zauzetih ne

    // dodavanje u listu slobodnih
    // newSeg ukazuje na element liste zauzetih clanova i njegova velicina ostaje ista
    // newSeg treba da se ubaci iza cur
    addr = (void*)((char*)addr - MEM_BLOCK_SIZE);
    8000200c:	fc050493          	addi	s1,a0,-64

    if(addr == nullptr || addr> HEAP_END_ADDR) return -1;   // nevazeca adresa
    80002010:	10048e63          	beqz	s1,8000212c <_ZN15MemoryAllocator7FreeMemEPv+0x134>
    80002014:	00050713          	mv	a4,a0
    80002018:	00004797          	auipc	a5,0x4
    8000201c:	0087b783          	ld	a5,8(a5) # 80006020 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002020:	0007b783          	ld	a5,0(a5)
    80002024:	1097e863          	bltu	a5,s1,80002134 <_ZN15MemoryAllocator7FreeMemEPv+0x13c>
    MemNode* newSeg = (MemNode*)addr;

    //trazenje segmenta u listi zauzetih
    MemNode* curr = 0;
    if(!oMemHead || addr <oMemHead){
    80002028:	00004697          	auipc	a3,0x4
    8000202c:	0586b683          	ld	a3,88(a3) # 80006080 <_ZN15MemoryAllocator8oMemHeadE>
    80002030:	10068663          	beqz	a3,8000213c <_ZN15MemoryAllocator7FreeMemEPv+0x144>
    80002034:	10d4e863          	bltu	s1,a3,80002144 <_ZN15MemoryAllocator7FreeMemEPv+0x14c>
        return -2; // adresa se ne nalazi u listi zauzetih chonkova
    }
    else{
        for(curr = oMemHead; curr!=0 && addr!=curr; curr = curr->next);}
    80002038:	00068793          	mv	a5,a3
    8000203c:	00078863          	beqz	a5,8000204c <_ZN15MemoryAllocator7FreeMemEPv+0x54>
    80002040:	00978663          	beq	a5,s1,8000204c <_ZN15MemoryAllocator7FreeMemEPv+0x54>
    80002044:	0087b783          	ld	a5,8(a5)
    80002048:	ff5ff06f          	j	8000203c <_ZN15MemoryAllocator7FreeMemEPv+0x44>
    if(addr!=(curr)) return -2; // adresa se ne nalazi u listi zauzetih chonkova
    8000204c:	10979063          	bne	a5,s1,8000214c <_ZN15MemoryAllocator7FreeMemEPv+0x154>

    // sada je u addr sigurno neki element iz liste zauzetih
    // izbacivanje elementa iz liste zauzetih
    if(oMemHead == newSeg) oMemHead = newSeg->next;
    80002050:	04968e63          	beq	a3,s1,800020ac <_ZN15MemoryAllocator7FreeMemEPv+0xb4>
    if(newSeg ->next != nullptr) newSeg->next->prev = newSeg->prev;
    80002054:	fc873783          	ld	a5,-56(a4)
    80002058:	00078663          	beqz	a5,80002064 <_ZN15MemoryAllocator7FreeMemEPv+0x6c>
    8000205c:	fd073683          	ld	a3,-48(a4)
    80002060:	00d7b823          	sd	a3,16(a5)
    if(newSeg ->prev != nullptr) newSeg->prev->next = newSeg->next;
    80002064:	fd073783          	ld	a5,-48(a4)
    80002068:	00078663          	beqz	a5,80002074 <_ZN15MemoryAllocator7FreeMemEPv+0x7c>
    8000206c:	fc873683          	ld	a3,-56(a4)
    80002070:	00d7b423          	sd	a3,8(a5)


    // trazenje mesta za novi element free liste
    MemNode* cur = 0;
    if(!fMemHead || addr <(char*)fMemHead){
    80002074:	00004517          	auipc	a0,0x4
    80002078:	01453503          	ld	a0,20(a0) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    8000207c:	08050a63          	beqz	a0,80002110 <_ZN15MemoryAllocator7FreeMemEPv+0x118>
    80002080:	02a4ee63          	bltu	s1,a0,800020bc <_ZN15MemoryAllocator7FreeMemEPv+0xc4>
        cur = 0; // block je na prvom mestu
    }
    else{
        for(cur = fMemHead; cur->next !=0 && addr>(char*)(cur->next); cur = cur->next);}
    80002084:	00050793          	mv	a5,a0
    80002088:	00853503          	ld	a0,8(a0)
    8000208c:	00050463          	beqz	a0,80002094 <_ZN15MemoryAllocator7FreeMemEPv+0x9c>
    80002090:	fe956ae3          	bltu	a0,s1,80002084 <_ZN15MemoryAllocator7FreeMemEPv+0x8c>


    //uvezivanje novog segmenta u free listu

    //newSeg->size je vec upisan podatak
    newSeg->prev = cur;
    80002094:	fcf73823          	sd	a5,-48(a4)
    if(cur) newSeg->next = cur ->next;
    80002098:	08078063          	beqz	a5,80002118 <_ZN15MemoryAllocator7FreeMemEPv+0x120>
    8000209c:	0087b683          	ld	a3,8(a5)
    800020a0:	fcd73423          	sd	a3,-56(a4)
    800020a4:	00078513          	mv	a0,a5
    800020a8:	0280006f          	j	800020d0 <_ZN15MemoryAllocator7FreeMemEPv+0xd8>
    if(oMemHead == newSeg) oMemHead = newSeg->next;
    800020ac:	fc873783          	ld	a5,-56(a4)
    800020b0:	00004697          	auipc	a3,0x4
    800020b4:	fcf6b823          	sd	a5,-48(a3) # 80006080 <_ZN15MemoryAllocator8oMemHeadE>
    800020b8:	f9dff06f          	j	80002054 <_ZN15MemoryAllocator7FreeMemEPv+0x5c>
    newSeg->prev = cur;
    800020bc:	fc073823          	sd	zero,-48(a4)
        cur = 0; // block je na prvom mestu
    800020c0:	00000513          	li	a0,0
    else newSeg->next = fMemHead;
    800020c4:	00004797          	auipc	a5,0x4
    800020c8:	fc47b783          	ld	a5,-60(a5) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    800020cc:	fcf73423          	sd	a5,-56(a4)
    if(newSeg ->next) newSeg->next->prev = newSeg;
    800020d0:	fc873783          	ld	a5,-56(a4)
    800020d4:	00078463          	beqz	a5,800020dc <_ZN15MemoryAllocator7FreeMemEPv+0xe4>
    800020d8:	0097b823          	sd	s1,16(a5)
    if(cur) cur->next = newSeg;
    800020dc:	04050263          	beqz	a0,80002120 <_ZN15MemoryAllocator7FreeMemEPv+0x128>
    800020e0:	00953423          	sd	s1,8(a0)
    else fMemHead = newSeg;

    connectNext(cur);
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	eac080e7          	jalr	-340(ra) # 80001f90 <_ZN15MemoryAllocator11connectNextEP7MemNode>
    connectNext(newSeg);
    800020ec:	00048513          	mv	a0,s1
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	ea0080e7          	jalr	-352(ra) # 80001f90 <_ZN15MemoryAllocator11connectNextEP7MemNode>
    return 0;
    800020f8:	00000513          	li	a0,0
}
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00008067          	ret
    newSeg->prev = cur;
    80002110:	fc073823          	sd	zero,-48(a4)
    if(cur) newSeg->next = cur ->next;
    80002114:	fb1ff06f          	j	800020c4 <_ZN15MemoryAllocator7FreeMemEPv+0xcc>
    80002118:	00078513          	mv	a0,a5
    8000211c:	fa9ff06f          	j	800020c4 <_ZN15MemoryAllocator7FreeMemEPv+0xcc>
    else fMemHead = newSeg;
    80002120:	00004797          	auipc	a5,0x4
    80002124:	f697b423          	sd	s1,-152(a5) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    80002128:	fbdff06f          	j	800020e4 <_ZN15MemoryAllocator7FreeMemEPv+0xec>
    if(addr == nullptr || addr> HEAP_END_ADDR) return -1;   // nevazeca adresa
    8000212c:	fff00513          	li	a0,-1
    80002130:	fcdff06f          	j	800020fc <_ZN15MemoryAllocator7FreeMemEPv+0x104>
    80002134:	fff00513          	li	a0,-1
    80002138:	fc5ff06f          	j	800020fc <_ZN15MemoryAllocator7FreeMemEPv+0x104>
        return -2; // adresa se ne nalazi u listi zauzetih chonkova
    8000213c:	ffe00513          	li	a0,-2
    80002140:	fbdff06f          	j	800020fc <_ZN15MemoryAllocator7FreeMemEPv+0x104>
    80002144:	ffe00513          	li	a0,-2
    80002148:	fb5ff06f          	j	800020fc <_ZN15MemoryAllocator7FreeMemEPv+0x104>
    if(addr!=(curr)) return -2; // adresa se ne nalazi u listi zauzetih chonkova
    8000214c:	ffe00513          	li	a0,-2
    80002150:	fadff06f          	j	800020fc <_ZN15MemoryAllocator7FreeMemEPv+0x104>

0000000080002154 <_ZN15MemoryAllocator8allocateEm>:


void *MemoryAllocator::allocate(size_t size) {
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00813423          	sd	s0,8(sp)
    8000215c:	01010413          	addi	s0,sp,16
    //void *addr = fmemhead;
    //size je sada broj blokova
    //size_t nsize = size * MEM_BLOCK_SIZE;
    //nsize += sizeof(MemNode);
    //size_t blocks = nsize/ MEM_BLOCK_SIZE + (nsize % MEM_BLOCK_SIZE? 1:0);
    size_t nsize = (size + 1) * MEM_BLOCK_SIZE; // koliko blokova je potrebno + 1 blok za MemNode
    80002160:	00150793          	addi	a5,a0,1
    80002164:	00679793          	slli	a5,a5,0x6

    // izbacivanje iz liste slobodnih fragmenata - first fit

    MemNode *ret = 0;
    for(MemNode* cur = fMemHead; cur!=0; cur = cur->next) {
    80002168:	00004517          	auipc	a0,0x4
    8000216c:	f2053503          	ld	a0,-224(a0) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    80002170:	08050663          	beqz	a0,800021fc <_ZN15MemoryAllocator8allocateEm+0xa8>
        if (cur->size < nsize) continue;
    80002174:	00053703          	ld	a4,0(a0)
    80002178:	02f76a63          	bltu	a4,a5,800021ac <_ZN15MemoryAllocator8allocateEm+0x58>
        if (cur->size - nsize <= sizeof(MemNode)) { // nema novog segmenta
    8000217c:	40f70733          	sub	a4,a4,a5
    80002180:	01800693          	li	a3,24
    80002184:	04e6e063          	bltu	a3,a4,800021c4 <_ZN15MemoryAllocator8allocateEm+0x70>
            if (cur->prev) cur->prev->next = cur->next;
    80002188:	01053703          	ld	a4,16(a0)
    8000218c:	02070463          	beqz	a4,800021b4 <_ZN15MemoryAllocator8allocateEm+0x60>
    80002190:	00853683          	ld	a3,8(a0)
    80002194:	00d73423          	sd	a3,8(a4)
            else fMemHead = cur->next;
            if (cur->next) cur->next->prev = cur->prev;
    80002198:	00853703          	ld	a4,8(a0)
    8000219c:	06070063          	beqz	a4,800021fc <_ZN15MemoryAllocator8allocateEm+0xa8>
    800021a0:	01053683          	ld	a3,16(a0)
    800021a4:	00d73823          	sd	a3,16(a4)
    800021a8:	0540006f          	j	800021fc <_ZN15MemoryAllocator8allocateEm+0xa8>
    for(MemNode* cur = fMemHead; cur!=0; cur = cur->next) {
    800021ac:	00853503          	ld	a0,8(a0)
    800021b0:	fc1ff06f          	j	80002170 <_ZN15MemoryAllocator8allocateEm+0x1c>
            else fMemHead = cur->next;
    800021b4:	00853703          	ld	a4,8(a0)
    800021b8:	00004697          	auipc	a3,0x4
    800021bc:	ece6b823          	sd	a4,-304(a3) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    800021c0:	fd9ff06f          	j	80002198 <_ZN15MemoryAllocator8allocateEm+0x44>
            ret = cur;
            break;
        } else {
            MemNode *newSeg = (MemNode *) ((char *) cur + nsize);
    800021c4:	00f50733          	add	a4,a0,a5
            if (cur->prev) cur->prev->next = newSeg;
    800021c8:	01053683          	ld	a3,16(a0)
    800021cc:	06068863          	beqz	a3,8000223c <_ZN15MemoryAllocator8allocateEm+0xe8>
    800021d0:	00e6b423          	sd	a4,8(a3)
            else fMemHead = newSeg;
            if (cur->next) cur->next->prev = newSeg;
    800021d4:	00853683          	ld	a3,8(a0)
    800021d8:	00068463          	beqz	a3,800021e0 <_ZN15MemoryAllocator8allocateEm+0x8c>
    800021dc:	00e6b823          	sd	a4,16(a3)
            newSeg->prev = cur->prev;
    800021e0:	01053683          	ld	a3,16(a0)
    800021e4:	00d73823          	sd	a3,16(a4)
            newSeg->next = cur->next;
    800021e8:	00853683          	ld	a3,8(a0)
    800021ec:	00d73423          	sd	a3,8(a4)
            newSeg->size = cur->size - nsize;
    800021f0:	00053683          	ld	a3,0(a0)
    800021f4:	40f686b3          	sub	a3,a3,a5
    800021f8:	00d73023          	sd	a3,0(a4)
            ret = cur;
            break;
        }
    }
    if(ret == 0) return nullptr;
    800021fc:	06050863          	beqz	a0,8000226c <_ZN15MemoryAllocator8allocateEm+0x118>

    // uvezivanje ret u listu zauzetih
    ret->size = nsize;
    80002200:	00f53023          	sd	a5,0(a0)
    MemNode *t = 0;
    if(!oMemHead || ret<oMemHead)
    80002204:	00004697          	auipc	a3,0x4
    80002208:	e7c6b683          	ld	a3,-388(a3) # 80006080 <_ZN15MemoryAllocator8oMemHeadE>
    8000220c:	06068663          	beqz	a3,80002278 <_ZN15MemoryAllocator8allocateEm+0x124>
    80002210:	02d56c63          	bltu	a0,a3,80002248 <_ZN15MemoryAllocator8allocateEm+0xf4>
        t = 0;
    else
        for(t = oMemHead; t->next != 0 && (char*)ret > (char*)t->next; t = t->next);
    80002214:	00068793          	mv	a5,a3
    80002218:	00078713          	mv	a4,a5
    8000221c:	0087b783          	ld	a5,8(a5)
    80002220:	00078463          	beqz	a5,80002228 <_ZN15MemoryAllocator8allocateEm+0xd4>
    80002224:	fea7eae3          	bltu	a5,a0,80002218 <_ZN15MemoryAllocator8allocateEm+0xc4>
    ret->prev = t;
    80002228:	00e53823          	sd	a4,16(a0)
    if(t) ret->next =  t->next;
    8000222c:	02070263          	beqz	a4,80002250 <_ZN15MemoryAllocator8allocateEm+0xfc>
    80002230:	00873783          	ld	a5,8(a4)
    80002234:	00f53423          	sd	a5,8(a0)
    80002238:	01c0006f          	j	80002254 <_ZN15MemoryAllocator8allocateEm+0x100>
            else fMemHead = newSeg;
    8000223c:	00004697          	auipc	a3,0x4
    80002240:	e4e6b623          	sd	a4,-436(a3) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    80002244:	f91ff06f          	j	800021d4 <_ZN15MemoryAllocator8allocateEm+0x80>
    ret->prev = t;
    80002248:	00053823          	sd	zero,16(a0)
        t = 0;
    8000224c:	00000713          	li	a4,0
    else ret->next = oMemHead;
    80002250:	00d53423          	sd	a3,8(a0)
    if(ret->next) ret->next->prev = ret;
    80002254:	00853783          	ld	a5,8(a0)
    80002258:	00078463          	beqz	a5,80002260 <_ZN15MemoryAllocator8allocateEm+0x10c>
    8000225c:	00a7b823          	sd	a0,16(a5)
    if(t) t->next = ret;
    80002260:	02070263          	beqz	a4,80002284 <_ZN15MemoryAllocator8allocateEm+0x130>
    80002264:	00a73423          	sd	a0,8(a4)
    else oMemHead = ret;

    return (void*)((char*)ret+ MEM_BLOCK_SIZE);
    80002268:	04050513          	addi	a0,a0,64
}
    8000226c:	00813403          	ld	s0,8(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret
    ret->prev = t;
    80002278:	00053823          	sd	zero,16(a0)
        t = 0;
    8000227c:	00068713          	mv	a4,a3
    80002280:	fd1ff06f          	j	80002250 <_ZN15MemoryAllocator8allocateEm+0xfc>
    else oMemHead = ret;
    80002284:	00004797          	auipc	a5,0x4
    80002288:	dea7be23          	sd	a0,-516(a5) # 80006080 <_ZN15MemoryAllocator8oMemHeadE>
    8000228c:	fddff06f          	j	80002268 <_ZN15MemoryAllocator8allocateEm+0x114>

0000000080002290 <_ZN15MemoryAllocatorC1Ev>:

MemoryAllocator::MemoryAllocator() {
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00813423          	sd	s0,8(sp)
    80002298:	01010413          	addi	s0,sp,16
    fMemHead = (MemNode*)HEAP_START_ADDR;
    8000229c:	00004797          	auipc	a5,0x4
    800022a0:	d647b783          	ld	a5,-668(a5) # 80006000 <_GLOBAL_OFFSET_TABLE_+0x8>
    800022a4:	0007b783          	ld	a5,0(a5)
    800022a8:	00004697          	auipc	a3,0x4
    800022ac:	dd868693          	addi	a3,a3,-552 # 80006080 <_ZN15MemoryAllocator8oMemHeadE>
    800022b0:	00f6b423          	sd	a5,8(a3)
    fMemHead->next = fMemHead->prev = nullptr;
    800022b4:	0007b823          	sd	zero,16(a5)
    800022b8:	0007b423          	sd	zero,8(a5)
    fMemHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    800022bc:	00004717          	auipc	a4,0x4
    800022c0:	d6473703          	ld	a4,-668(a4) # 80006020 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022c4:	00073703          	ld	a4,0(a4)
    800022c8:	40f70733          	sub	a4,a4,a5
    800022cc:	00e7b023          	sd	a4,0(a5)
    oMemHead = 0;
    800022d0:	0006b023          	sd	zero,0(a3)
}
    800022d4:	00813403          	ld	s0,8(sp)
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <_ZN15MemoryAllocator11getInstanceEv>:
    static MemoryAllocator instance;
    800022e0:	00004797          	auipc	a5,0x4
    800022e4:	db07c783          	lbu	a5,-592(a5) # 80006090 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800022e8:	00078863          	beqz	a5,800022f8 <_ZN15MemoryAllocator11getInstanceEv+0x18>
}
    800022ec:	00004517          	auipc	a0,0x4
    800022f0:	dac50513          	addi	a0,a0,-596 # 80006098 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800022f4:	00008067          	ret
MemoryAllocator &MemoryAllocator::getInstance() {
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00113423          	sd	ra,8(sp)
    80002300:	00813023          	sd	s0,0(sp)
    80002304:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80002308:	00004517          	auipc	a0,0x4
    8000230c:	d9050513          	addi	a0,a0,-624 # 80006098 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002310:	00000097          	auipc	ra,0x0
    80002314:	f80080e7          	jalr	-128(ra) # 80002290 <_ZN15MemoryAllocatorC1Ev>
    80002318:	00100793          	li	a5,1
    8000231c:	00004717          	auipc	a4,0x4
    80002320:	d6f70a23          	sb	a5,-652(a4) # 80006090 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
}
    80002324:	00004517          	auipc	a0,0x4
    80002328:	d7450513          	addi	a0,a0,-652 # 80006098 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000232c:	00813083          	ld	ra,8(sp)
    80002330:	00013403          	ld	s0,0(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZN15MemoryAllocator9allocateBEm>:

void *MemoryAllocator::allocateB(size_t size){
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16
    //size je sada broj bajtova
    //size_t nsize = size + sizeof(MemNode);

    size_t blocks = size/ MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE? 1:0);
    80002348:	00655793          	srli	a5,a0,0x6
    8000234c:	03f57513          	andi	a0,a0,63
    80002350:	00050463          	beqz	a0,80002358 <_ZN15MemoryAllocator9allocateBEm+0x1c>
    80002354:	00100513          	li	a0,1
    80002358:	00a787b3          	add	a5,a5,a0
    blocks ++;
    8000235c:	00178793          	addi	a5,a5,1
    size_t nsize = blocks* MEM_BLOCK_SIZE;
    80002360:	00679793          	slli	a5,a5,0x6

    // izbacivanje iz liste slobodnih fragmenata - first fit

    MemNode *ret = 0;
    for(MemNode* cur = fMemHead; cur!=0; cur = cur->next) {
    80002364:	00004517          	auipc	a0,0x4
    80002368:	d2453503          	ld	a0,-732(a0) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    8000236c:	08050663          	beqz	a0,800023f8 <_ZN15MemoryAllocator9allocateBEm+0xbc>
        if (cur->size < nsize) continue;
    80002370:	00053703          	ld	a4,0(a0)
    80002374:	02f76a63          	bltu	a4,a5,800023a8 <_ZN15MemoryAllocator9allocateBEm+0x6c>
        if (cur->size - nsize <= sizeof(MemNode)) { // nema novog segmenta
    80002378:	40f70733          	sub	a4,a4,a5
    8000237c:	01800693          	li	a3,24
    80002380:	04e6e063          	bltu	a3,a4,800023c0 <_ZN15MemoryAllocator9allocateBEm+0x84>
            if (cur->prev) cur->prev->next = cur->next;
    80002384:	01053703          	ld	a4,16(a0)
    80002388:	02070463          	beqz	a4,800023b0 <_ZN15MemoryAllocator9allocateBEm+0x74>
    8000238c:	00853683          	ld	a3,8(a0)
    80002390:	00d73423          	sd	a3,8(a4)
            else fMemHead = cur->next;
            if (cur->next) cur->next->prev = cur->prev;
    80002394:	00853703          	ld	a4,8(a0)
    80002398:	06070063          	beqz	a4,800023f8 <_ZN15MemoryAllocator9allocateBEm+0xbc>
    8000239c:	01053683          	ld	a3,16(a0)
    800023a0:	00d73823          	sd	a3,16(a4)
    800023a4:	0540006f          	j	800023f8 <_ZN15MemoryAllocator9allocateBEm+0xbc>
    for(MemNode* cur = fMemHead; cur!=0; cur = cur->next) {
    800023a8:	00853503          	ld	a0,8(a0)
    800023ac:	fc1ff06f          	j	8000236c <_ZN15MemoryAllocator9allocateBEm+0x30>
            else fMemHead = cur->next;
    800023b0:	00853703          	ld	a4,8(a0)
    800023b4:	00004697          	auipc	a3,0x4
    800023b8:	cce6ba23          	sd	a4,-812(a3) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    800023bc:	fd9ff06f          	j	80002394 <_ZN15MemoryAllocator9allocateBEm+0x58>
            ret = cur;
            break;
        } else {
            MemNode *newSeg = (MemNode *) ((char *) cur + nsize);
    800023c0:	00f50733          	add	a4,a0,a5
            if (cur->prev) cur->prev->next = newSeg;
    800023c4:	01053683          	ld	a3,16(a0)
    800023c8:	06068863          	beqz	a3,80002438 <_ZN15MemoryAllocator9allocateBEm+0xfc>
    800023cc:	00e6b423          	sd	a4,8(a3)
            else fMemHead = newSeg;
            if (cur->next) cur->next->prev = newSeg;
    800023d0:	00853683          	ld	a3,8(a0)
    800023d4:	00068463          	beqz	a3,800023dc <_ZN15MemoryAllocator9allocateBEm+0xa0>
    800023d8:	00e6b823          	sd	a4,16(a3)
            newSeg->prev = cur->prev;
    800023dc:	01053683          	ld	a3,16(a0)
    800023e0:	00d73823          	sd	a3,16(a4)
            newSeg->next = cur->next;
    800023e4:	00853683          	ld	a3,8(a0)
    800023e8:	00d73423          	sd	a3,8(a4)
            newSeg->size = cur->size - nsize;
    800023ec:	00053683          	ld	a3,0(a0)
    800023f0:	40f686b3          	sub	a3,a3,a5
    800023f4:	00d73023          	sd	a3,0(a4)
            ret = cur;
            break;
        }
    }
    if(ret == 0) return nullptr;
    800023f8:	06050863          	beqz	a0,80002468 <_ZN15MemoryAllocator9allocateBEm+0x12c>

    // uvezivanje ret u listu zauzetih
    ret->size = nsize;
    800023fc:	00f53023          	sd	a5,0(a0)
    MemNode *t = 0;
    if(!oMemHead || ret<oMemHead)
    80002400:	00004697          	auipc	a3,0x4
    80002404:	c806b683          	ld	a3,-896(a3) # 80006080 <_ZN15MemoryAllocator8oMemHeadE>
    80002408:	06068663          	beqz	a3,80002474 <_ZN15MemoryAllocator9allocateBEm+0x138>
    8000240c:	02d56c63          	bltu	a0,a3,80002444 <_ZN15MemoryAllocator9allocateBEm+0x108>
        t = 0;
    else
        for(t = oMemHead; t->next != 0 && (char*)ret > (char*)t->next; t = t->next);
    80002410:	00068793          	mv	a5,a3
    80002414:	00078713          	mv	a4,a5
    80002418:	0087b783          	ld	a5,8(a5)
    8000241c:	00078463          	beqz	a5,80002424 <_ZN15MemoryAllocator9allocateBEm+0xe8>
    80002420:	fea7eae3          	bltu	a5,a0,80002414 <_ZN15MemoryAllocator9allocateBEm+0xd8>
    ret->prev = t;
    80002424:	00e53823          	sd	a4,16(a0)
    if(t) ret->next =  t->next;
    80002428:	02070263          	beqz	a4,8000244c <_ZN15MemoryAllocator9allocateBEm+0x110>
    8000242c:	00873783          	ld	a5,8(a4)
    80002430:	00f53423          	sd	a5,8(a0)
    80002434:	01c0006f          	j	80002450 <_ZN15MemoryAllocator9allocateBEm+0x114>
            else fMemHead = newSeg;
    80002438:	00004697          	auipc	a3,0x4
    8000243c:	c4e6b823          	sd	a4,-944(a3) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    80002440:	f91ff06f          	j	800023d0 <_ZN15MemoryAllocator9allocateBEm+0x94>
    ret->prev = t;
    80002444:	00053823          	sd	zero,16(a0)
        t = 0;
    80002448:	00000713          	li	a4,0
    else ret->next = oMemHead;
    8000244c:	00d53423          	sd	a3,8(a0)
    if(ret->next) ret->next->prev = ret;
    80002450:	00853783          	ld	a5,8(a0)
    80002454:	00078463          	beqz	a5,8000245c <_ZN15MemoryAllocator9allocateBEm+0x120>
    80002458:	00a7b823          	sd	a0,16(a5)
    if(t) t->next = ret;
    8000245c:	02070263          	beqz	a4,80002480 <_ZN15MemoryAllocator9allocateBEm+0x144>
    80002460:	00a73423          	sd	a0,8(a4)
    else oMemHead = ret;

    return (void*)((char*)ret+ MEM_BLOCK_SIZE);
    80002464:	04050513          	addi	a0,a0,64
}
    80002468:	00813403          	ld	s0,8(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret
    ret->prev = t;
    80002474:	00053823          	sd	zero,16(a0)
        t = 0;
    80002478:	00068713          	mv	a4,a3
    8000247c:	fd1ff06f          	j	8000244c <_ZN15MemoryAllocator9allocateBEm+0x110>
    else oMemHead = ret;
    80002480:	00004797          	auipc	a5,0x4
    80002484:	c0a7b023          	sd	a0,-1024(a5) # 80006080 <_ZN15MemoryAllocator8oMemHeadE>
    80002488:	fddff06f          	j	80002464 <_ZN15MemoryAllocator9allocateBEm+0x128>

000000008000248c <_Z7wrapperPv>:
Thread::Thread(void (*body)(void *), void *arg) {
    started = 0;
    thread_create_pending(&myHandle, body, arg);
}

void wrapper (void* t) {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    Thread *tr = (Thread*)t;
    tr->run();
    8000249c:	00053783          	ld	a5,0(a0)
    800024a0:	0107b783          	ld	a5,16(a5)
    800024a4:	000780e7          	jalr	a5
}
    800024a8:	00813083          	ld	ra,8(sp)
    800024ac:	00013403          	ld	s0,0(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret

00000000800024b8 <_ZN6ThreadD1Ev>:
        }
        started = 1;
        return 0;
}

Thread::~Thread() {
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00113423          	sd	ra,8(sp)
    800024c0:	00813023          	sd	s0,0(sp)
    800024c4:	01010413          	addi	s0,sp,16
    800024c8:	00004797          	auipc	a5,0x4
    800024cc:	b0078793          	addi	a5,a5,-1280 # 80005fc8 <_ZTV6Thread+0x10>
    800024d0:	00f53023          	sd	a5,0(a0)
    thread_exit();
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	d50080e7          	jalr	-688(ra) # 80001224 <_Z11thread_exitv>
}
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	01010113          	addi	sp,sp,16
    800024e8:	00008067          	ret

00000000800024ec <_Znwm>:
void *operator new(size_t n) { return mem_alloc(n); }
    800024ec:	ff010113          	addi	sp,sp,-16
    800024f0:	00113423          	sd	ra,8(sp)
    800024f4:	00813023          	sd	s0,0(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	c58080e7          	jalr	-936(ra) # 80001154 <_Z9mem_allocm>
    80002504:	00813083          	ld	ra,8(sp)
    80002508:	00013403          	ld	s0,0(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <_Znam>:
void *operator new[](size_t n) { return mem_alloc(n); }
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00113423          	sd	ra,8(sp)
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	01010413          	addi	s0,sp,16
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	c30080e7          	jalr	-976(ra) # 80001154 <_Z9mem_allocm>
    8000252c:	00813083          	ld	ra,8(sp)
    80002530:	00013403          	ld	s0,0(sp)
    80002534:	01010113          	addi	sp,sp,16
    80002538:	00008067          	ret

000000008000253c <_ZdlPv>:
void operator delete(void *p) noexcept { mem_free(p); }
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00113423          	sd	ra,8(sp)
    80002544:	00813023          	sd	s0,0(sp)
    80002548:	01010413          	addi	s0,sp,16
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	c44080e7          	jalr	-956(ra) # 80001190 <_Z8mem_freePv>
    80002554:	00813083          	ld	ra,8(sp)
    80002558:	00013403          	ld	s0,0(sp)
    8000255c:	01010113          	addi	sp,sp,16
    80002560:	00008067          	ret

0000000080002564 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002564:	fe010113          	addi	sp,sp,-32
    80002568:	00113c23          	sd	ra,24(sp)
    8000256c:	00813823          	sd	s0,16(sp)
    80002570:	00913423          	sd	s1,8(sp)
    80002574:	02010413          	addi	s0,sp,32
    80002578:	00050493          	mv	s1,a0
}
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	f3c080e7          	jalr	-196(ra) # 800024b8 <_ZN6ThreadD1Ev>
    80002584:	00048513          	mv	a0,s1
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	fb4080e7          	jalr	-76(ra) # 8000253c <_ZdlPv>
    80002590:	01813083          	ld	ra,24(sp)
    80002594:	01013403          	ld	s0,16(sp)
    80002598:	00813483          	ld	s1,8(sp)
    8000259c:	02010113          	addi	sp,sp,32
    800025a0:	00008067          	ret

00000000800025a4 <_ZdaPv>:
void operator delete[](void *p) noexcept { mem_free(p); }
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00113423          	sd	ra,8(sp)
    800025ac:	00813023          	sd	s0,0(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	bdc080e7          	jalr	-1060(ra) # 80001190 <_Z8mem_freePv>
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00113423          	sd	ra,8(sp)
    800025d4:	00813023          	sd	s0,0(sp)
    800025d8:	01010413          	addi	s0,sp,16
    800025dc:	00004797          	auipc	a5,0x4
    800025e0:	9ec78793          	addi	a5,a5,-1556 # 80005fc8 <_ZTV6Thread+0x10>
    800025e4:	00f53023          	sd	a5,0(a0)
    started = 0;
    800025e8:	00052423          	sw	zero,8(a0)
    thread_create_pending(&myHandle, body, arg);
    800025ec:	01050513          	addi	a0,a0,16
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	c00080e7          	jalr	-1024(ra) # 800011f0 <_Z21thread_create_pendingPP3TCBPFvPvES2_>
}
    800025f8:	00813083          	ld	ra,8(sp)
    800025fc:	00013403          	ld	s0,0(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <_ZN6ThreadC1Ev>:
Thread::Thread(){
    80002608:	ff010113          	addi	sp,sp,-16
    8000260c:	00113423          	sd	ra,8(sp)
    80002610:	00813023          	sd	s0,0(sp)
    80002614:	01010413          	addi	s0,sp,16
    80002618:	00004797          	auipc	a5,0x4
    8000261c:	9b078793          	addi	a5,a5,-1616 # 80005fc8 <_ZTV6Thread+0x10>
    80002620:	00f53023          	sd	a5,0(a0)
    started = 0;
    80002624:	00052423          	sw	zero,8(a0)
    thread_create_pending(&myHandle, wrapper, this);
    80002628:	00050613          	mv	a2,a0
    8000262c:	00000597          	auipc	a1,0x0
    80002630:	e6058593          	addi	a1,a1,-416 # 8000248c <_Z7wrapperPv>
    80002634:	01050513          	addi	a0,a0,16
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	bb8080e7          	jalr	-1096(ra) # 800011f0 <_Z21thread_create_pendingPP3TCBPFvPvES2_>
}
    80002640:	00813083          	ld	ra,8(sp)
    80002644:	00013403          	ld	s0,0(sp)
    80002648:	01010113          	addi	sp,sp,16
    8000264c:	00008067          	ret

0000000080002650 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00113423          	sd	ra,8(sp)
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	bec080e7          	jalr	-1044(ra) # 8000124c <_Z15thread_dispatchv>
}
    80002668:	00813083          	ld	ra,8(sp)
    8000266c:	00013403          	ld	s0,0(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret

0000000080002678 <_ZN6Thread5startEv>:
int Thread::start() {
    80002678:	fe010113          	addi	sp,sp,-32
    8000267c:	00113c23          	sd	ra,24(sp)
    80002680:	00813823          	sd	s0,16(sp)
    80002684:	00913423          	sd	s1,8(sp)
    80002688:	02010413          	addi	s0,sp,32
    8000268c:	00050493          	mv	s1,a0
    if(!started){
    80002690:	00852783          	lw	a5,8(a0)
    80002694:	02078263          	beqz	a5,800026b8 <_ZN6Thread5startEv+0x40>
        started = 1;
    80002698:	00100793          	li	a5,1
    8000269c:	00f4a423          	sw	a5,8(s1)
}
    800026a0:	00000513          	li	a0,0
    800026a4:	01813083          	ld	ra,24(sp)
    800026a8:	01013403          	ld	s0,16(sp)
    800026ac:	00813483          	ld	s1,8(sp)
    800026b0:	02010113          	addi	sp,sp,32
    800026b4:	00008067          	ret
        Scheduler::put(myHandle);
    800026b8:	01053503          	ld	a0,16(a0)
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	3dc080e7          	jalr	988(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
        myHandle->setFinished (false);
    800026c4:	0104b783          	ld	a5,16(s1)
        MemoryAllocator::FreeMem(address);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    800026c8:	02078823          	sb	zero,48(a5)
    800026cc:	fcdff06f          	j	80002698 <_ZN6Thread5startEv+0x20>

00000000800026d0 <_ZN6Thread3runEv>:

    //static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00813423          	sd	s0,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    800026dc:	00813403          	ld	s0,8(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN5Riscv20handleSupervisorTrapEv>:

uint64 base;



void Riscv::handleSupervisorTrap(){
    800026e8:	fa010113          	addi	sp,sp,-96
    800026ec:	04113c23          	sd	ra,88(sp)
    800026f0:	04813823          	sd	s0,80(sp)
    800026f4:	04913423          	sd	s1,72(sp)
    800026f8:	05213023          	sd	s2,64(sp)
    800026fc:	03313c23          	sd	s3,56(sp)
    80002700:	03413823          	sd	s4,48(sp)
    80002704:	03513423          	sd	s5,40(sp)
    80002708:	03613023          	sd	s6,32(sp)
    8000270c:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002710:	142027f3          	csrr	a5,scause
    80002714:	faf43423          	sd	a5,-88(s0)
    return scause;
    80002718:	fa843483          	ld	s1,-88(s0)
    uint64 scause = r_scause();
    if(scause == 0x8000000000000001UL){
    8000271c:	fff00793          	li	a5,-1
    80002720:	03f79793          	slli	a5,a5,0x3f
    80002724:	00178793          	addi	a5,a5,1
    80002728:	06f48063          	beq	s1,a5,80002788 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
        //Supervisor Software Interrupt
        mc_sip(SIP_SSIE);;
    }
    if(scause == 0x8000000000000009UL){
    8000272c:	fff00793          	li	a5,-1
    80002730:	03f79793          	slli	a5,a5,0x3f
    80002734:	00978793          	addi	a5,a5,9
    80002738:	04f48e63          	beq	s1,a5,80002794 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
        //"Supervisor External Interrupt
        console_handler();
    }
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
    8000273c:	ff848793          	addi	a5,s1,-8
    80002740:	00100713          	li	a4,1
    80002744:	04f77e63          	bgeu	a4,a5,800027a0 <_ZN5Riscv20handleSupervisorTrapEv+0xb8>
        }
        //w_sstatus(sstatus);
        w_sepc(sepc);

    }
    if(scause == 0x0000000000000002UL){
    80002748:	00200793          	li	a5,2
    8000274c:	24f48463          	beq	s1,a5,80002994 <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
        printString("Ilegalna instrukcija \n");
    }
    if(scause == 0x0000000000000005UL){
    80002750:	00500793          	li	a5,5
    80002754:	24f48a63          	beq	s1,a5,800029a8 <_ZN5Riscv20handleSupervisorTrapEv+0x2c0>
        printString("Nedozvoljena adresa citanja \n");
    }
    if(scause == 0x0000000000000007UL){
    80002758:	00700793          	li	a5,7
    8000275c:	26f48063          	beq	s1,a5,800029bc <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
        printString("Nedozvoljena adresa upisa \n");
    }
}
    80002760:	05813083          	ld	ra,88(sp)
    80002764:	05013403          	ld	s0,80(sp)
    80002768:	04813483          	ld	s1,72(sp)
    8000276c:	04013903          	ld	s2,64(sp)
    80002770:	03813983          	ld	s3,56(sp)
    80002774:	03013a03          	ld	s4,48(sp)
    80002778:	02813a83          	ld	s5,40(sp)
    8000277c:	02013b03          	ld	s6,32(sp)
    80002780:	06010113          	addi	sp,sp,96
    80002784:	00008067          	ret
    __asm__ volatile ("csrs sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002788:	00200793          	li	a5,2
    8000278c:	1447b073          	csrc	sip,a5
}
    80002790:	f9dff06f          	j	8000272c <_ZN5Riscv20handleSupervisorTrapEv+0x44>
        console_handler();
    80002794:	00002097          	auipc	ra,0x2
    80002798:	78c080e7          	jalr	1932(ra) # 80004f20 <console_handler>
    8000279c:	fa1ff06f          	j	8000273c <_ZN5Riscv20handleSupervisorTrapEv+0x54>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800027a0:	141027f3          	csrr	a5,sepc
    800027a4:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800027a8:	fb043983          	ld	s3,-80(s0)
        uint64 sepc = r_sepc() + 4;
    800027ac:	00498993          	addi	s3,s3,4
        __asm__ volatile("mv %0, a0" :"=r" (code));
    800027b0:	00050913          	mv	s2,a0
        if(code == 0x1){
    800027b4:	00100793          	li	a5,1
    800027b8:	04f90663          	beq	s2,a5,80002804 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
        if(code == 0x2){
    800027bc:	00200793          	li	a5,2
    800027c0:	06f90263          	beq	s2,a5,80002824 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        if(code == 0x11){
    800027c4:	01100793          	li	a5,17
    800027c8:	06f90e63          	beq	s2,a5,80002844 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
        if(code == 0x12){
    800027cc:	01200793          	li	a5,18
    800027d0:	0cf90c63          	beq	s2,a5,800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
        if(code == 0x13){
    800027d4:	01300793          	li	a5,19
    800027d8:	0ef90463          	beq	s2,a5,800028c0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        if(code == 0x14) {
    800027dc:	01400793          	li	a5,20
    800027e0:	0ef90e63          	beq	s2,a5,800028dc <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
        if(code == 0x15){// promena rezima pri povratku iz prekidne rutine
    800027e4:	01500793          	li	a5,21
    800027e8:	14f90c63          	beq	s2,a5,80002940 <_ZN5Riscv20handleSupervisorTrapEv+0x258>
        if(code == 0x41){
    800027ec:	04100793          	li	a5,65
    800027f0:	16f90263          	beq	s2,a5,80002954 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
        if(code == 0x42){
    800027f4:	04200793          	li	a5,66
    800027f8:	18f90063          	beq	s2,a5,80002978 <_ZN5Riscv20handleSupervisorTrapEv+0x290>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800027fc:	14199073          	csrw	sepc,s3
}
    80002800:	f49ff06f          	j	80002748 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
            __asm__ volatile("mv %0, a1" :"=r" (bl));
    80002804:	00058513          	mv	a0,a1
            void *addr = MemoryAllocator::allocate(bl);
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	94c080e7          	jalr	-1716(ra) # 80002154 <_ZN15MemoryAllocator8allocateEm>
            __asm__ volatile("mv a0, %0" :: "r" ((uint64)addr));
    80002810:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
    80002814:	00004797          	auipc	a5,0x4
    80002818:	88c7b783          	ld	a5,-1908(a5) # 800060a0 <base>
    8000281c:	04a7b823          	sd	a0,80(a5)
    80002820:	f9dff06f          	j	800027bc <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
            __asm__ volatile("mv %0, a1" :"=r" (addr));
    80002824:	00058513          	mv	a0,a1
            int ret = MemoryAllocator::FreeMem((void*)addr);
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	7d0080e7          	jalr	2000(ra) # 80001ff8 <_ZN15MemoryAllocator7FreeMemEPv>
            __asm__ volatile("mv a0, %0" :: "r" (ret));
    80002830:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
    80002834:	00004797          	auipc	a5,0x4
    80002838:	86c7b783          	ld	a5,-1940(a5) # 800060a0 <base>
    8000283c:	04a7b823          	sd	a0,80(a5)
    80002840:	f85ff06f          	j	800027c4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
            __asm__ volatile("mv %0, a1" :"=r" (handle));
    80002844:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" :"=r" (body));
    80002848:	00060a93          	mv	s5,a2
            __asm__ volatile("mv %0, a3" :"=r" (arg));
    8000284c:	00068b13          	mv	s6,a3
            volatile void* st = MemoryAllocator::allocateB(1024*sizeof(uint64));
    80002850:	00002537          	lui	a0,0x2
    80002854:	00000097          	auipc	ra,0x0
    80002858:	ae8080e7          	jalr	-1304(ra) # 8000233c <_ZN15MemoryAllocator9allocateBEm>
    8000285c:	00050613          	mv	a2,a0
            *handle = TCB::createThread(body, arg, stack);
    80002860:	000b0593          	mv	a1,s6
    80002864:	000a8513          	mv	a0,s5
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	5ec080e7          	jalr	1516(ra) # 80001e54 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002870:	00aa3023          	sd	a0,0(s4)
            if(*handle!= nullptr) {
    80002874:	00050e63          	beqz	a0,80002890 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                __asm__ volatile("mv a0, %0" :: "r" (1));
    80002878:	00100793          	li	a5,1
    8000287c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
    80002880:	00004797          	auipc	a5,0x4
    80002884:	8207b783          	ld	a5,-2016(a5) # 800060a0 <base>
    80002888:	04a7b823          	sd	a0,80(a5)
    8000288c:	f41ff06f          	j	800027cc <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("mv a0, %0" :: "r" (0));
    80002890:	00000793          	li	a5,0
    80002894:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
    80002898:	00004797          	auipc	a5,0x4
    8000289c:	8087b783          	ld	a5,-2040(a5) # 800060a0 <base>
    800028a0:	04a7b823          	sd	a0,80(a5)
    800028a4:	f29ff06f          	j	800027cc <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
            TCB::running->setFinished(true);
    800028a8:	00003797          	auipc	a5,0x3
    800028ac:	7707b783          	ld	a5,1904(a5) # 80006018 <_GLOBAL_OFFSET_TABLE_+0x20>
    800028b0:	0007b783          	ld	a5,0(a5)
    800028b4:	00100713          	li	a4,1
    800028b8:	02e78823          	sb	a4,48(a5)
    800028bc:	f19ff06f          	j	800027d4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800028c0:	100027f3          	csrr	a5,sstatus
    800028c4:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800028c8:	fb843a03          	ld	s4,-72(s0)
            TCB::dispatch();
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	438080e7          	jalr	1080(ra) # 80001d04 <_ZN3TCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800028d4:	100a1073          	csrw	sstatus,s4
}
    800028d8:	f05ff06f          	j	800027dc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
            __asm__ volatile("mv %0, a1" :"=r" (handle));
    800028dc:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" :"=r" (body));
    800028e0:	00060a93          	mv	s5,a2
            __asm__ volatile("mv %0, a3" :"=r" (arg));
    800028e4:	00068b13          	mv	s6,a3
            volatile void *st = MemoryAllocator::allocateB(1024 * sizeof(uint64));
    800028e8:	00002537          	lui	a0,0x2
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	a50080e7          	jalr	-1456(ra) # 8000233c <_ZN15MemoryAllocator9allocateBEm>
    800028f4:	00050613          	mv	a2,a0
            *handle = TCB::createThreadPending(body, arg, stack);
    800028f8:	000b0593          	mv	a1,s6
    800028fc:	000a8513          	mv	a0,s5
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	61c080e7          	jalr	1564(ra) # 80001f1c <_ZN3TCB19createThreadPendingEPFvPvES0_Pm>
    80002908:	00aa3023          	sd	a0,0(s4)
            if (*handle != nullptr) {
    8000290c:	00050e63          	beqz	a0,80002928 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
                __asm__ volatile("mv a0, %0"::"r" (1));
    80002910:	00100793          	li	a5,1
    80002914:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0, 0x50(%0)"::"r" (base));
    80002918:	00003797          	auipc	a5,0x3
    8000291c:	7887b783          	ld	a5,1928(a5) # 800060a0 <base>
    80002920:	04a7b823          	sd	a0,80(a5)
    80002924:	ec1ff06f          	j	800027e4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                __asm__ volatile("mv a0, %0"::"r" (0));
    80002928:	00000793          	li	a5,0
    8000292c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0, 0x50(%0)"::"r" (base));
    80002930:	00003797          	auipc	a5,0x3
    80002934:	7707b783          	ld	a5,1904(a5) # 800060a0 <base>
    80002938:	04a7b823          	sd	a0,80(a5)
    8000293c:	ea9ff06f          	j	800027e4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002940:	10000793          	li	a5,256
    80002944:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002948:	02000793          	li	a5,32
    8000294c:	1007a073          	csrs	sstatus,a5
}
    80002950:	e9dff06f          	j	800027ec <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            c = __getc();
    80002954:	00002097          	auipc	ra,0x2
    80002958:	594080e7          	jalr	1428(ra) # 80004ee8 <__getc>
            __asm__ volatile("mv a0, %0" :: "r" (c));
    8000295c:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 0x50(%0)" :: "r" (base));
    80002960:	00003797          	auipc	a5,0x3
    80002964:	7407b783          	ld	a5,1856(a5) # 800060a0 <base>
    80002968:	04a7b823          	sd	a0,80(a5)
            console_handler();
    8000296c:	00002097          	auipc	ra,0x2
    80002970:	5b4080e7          	jalr	1460(ra) # 80004f20 <console_handler>
    80002974:	e81ff06f          	j	800027f4 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
            __asm__ volatile("mv %0, a1" :"=r" (c));
    80002978:	00058513          	mv	a0,a1
            __putc(c);
    8000297c:	0ff57513          	andi	a0,a0,255
    80002980:	00002097          	auipc	ra,0x2
    80002984:	52c080e7          	jalr	1324(ra) # 80004eac <__putc>
            console_handler();
    80002988:	00002097          	auipc	ra,0x2
    8000298c:	598080e7          	jalr	1432(ra) # 80004f20 <console_handler>
    80002990:	e6dff06f          	j	800027fc <_ZN5Riscv20handleSupervisorTrapEv+0x114>
        printString("Ilegalna instrukcija \n");
    80002994:	00002517          	auipc	a0,0x2
    80002998:	79450513          	addi	a0,a0,1940 # 80005128 <CONSOLE_STATUS+0x118>
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	19c080e7          	jalr	412(ra) # 80002b38 <_Z11printStringPKc>
    800029a4:	dadff06f          	j	80002750 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
        printString("Nedozvoljena adresa citanja \n");
    800029a8:	00002517          	auipc	a0,0x2
    800029ac:	79850513          	addi	a0,a0,1944 # 80005140 <CONSOLE_STATUS+0x130>
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	188080e7          	jalr	392(ra) # 80002b38 <_Z11printStringPKc>
    800029b8:	da1ff06f          	j	80002758 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
        printString("Nedozvoljena adresa upisa \n");
    800029bc:	00002517          	auipc	a0,0x2
    800029c0:	7a450513          	addi	a0,a0,1956 # 80005160 <CONSOLE_STATUS+0x150>
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	174080e7          	jalr	372(ra) # 80002b38 <_Z11printStringPKc>
}
    800029cc:	d95ff06f          	j	80002760 <_ZN5Riscv20handleSupervisorTrapEv+0x78>

00000000800029d0 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00813423          	sd	s0,8(sp)
    800029d8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800029dc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800029e0:	10200073          	sret
    800029e4:	00813403          	ld	s0,8(sp)
    800029e8:	01010113          	addi	sp,sp,16
    800029ec:	00008067          	ret

00000000800029f0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyCoroutineQueue.addLast(tcb);
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00813423          	sd	s0,8(sp)
    800029f8:	01010413          	addi	s0,sp,16
    800029fc:	00100793          	li	a5,1
    80002a00:	00f50863          	beq	a0,a5,80002a10 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a04:	00813403          	ld	s0,8(sp)
    80002a08:	01010113          	addi	sp,sp,16
    80002a0c:	00008067          	ret
    80002a10:	000107b7          	lui	a5,0x10
    80002a14:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a18:	fef596e3          	bne	a1,a5,80002a04 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002a1c:	00003797          	auipc	a5,0x3
    80002a20:	68c78793          	addi	a5,a5,1676 # 800060a8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a24:	0007b023          	sd	zero,0(a5)
    80002a28:	0007b423          	sd	zero,8(a5)
    80002a2c:	fd9ff06f          	j	80002a04 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002a30 <_ZN9Scheduler3getEv>:
{
    80002a30:	fe010113          	addi	sp,sp,-32
    80002a34:	00113c23          	sd	ra,24(sp)
    80002a38:	00813823          	sd	s0,16(sp)
    80002a3c:	00913423          	sd	s1,8(sp)
    80002a40:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002a44:	00003517          	auipc	a0,0x3
    80002a48:	66453503          	ld	a0,1636(a0) # 800060a8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a4c:	04050263          	beqz	a0,80002a90 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002a50:	00853783          	ld	a5,8(a0)
    80002a54:	00003717          	auipc	a4,0x3
    80002a58:	64f73a23          	sd	a5,1620(a4) # 800060a8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002a5c:	02078463          	beqz	a5,80002a84 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002a60:	00053483          	ld	s1,0(a0)
        MemoryAllocator::FreeMem(elem);
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	594080e7          	jalr	1428(ra) # 80001ff8 <_ZN15MemoryAllocator7FreeMemEPv>
}
    80002a6c:	00048513          	mv	a0,s1
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	01013403          	ld	s0,16(sp)
    80002a78:	00813483          	ld	s1,8(sp)
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret
        if (!head) { tail = 0; }
    80002a84:	00003797          	auipc	a5,0x3
    80002a88:	6207b623          	sd	zero,1580(a5) # 800060b0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002a8c:	fd5ff06f          	j	80002a60 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002a90:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002a94:	fd9ff06f          	j	80002a6c <_ZN9Scheduler3getEv+0x3c>

0000000080002a98 <_ZN9Scheduler3putEP3TCB>:
{
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00113c23          	sd	ra,24(sp)
    80002aa0:	00813823          	sd	s0,16(sp)
    80002aa4:	00913423          	sd	s1,8(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::allocateB(sizeof(Elem));
    80002ab0:	01000513          	li	a0,16
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	888080e7          	jalr	-1912(ra) # 8000233c <_ZN15MemoryAllocator9allocateBEm>
        elem->data = data;
    80002abc:	00953023          	sd	s1,0(a0)
        elem->next = 0;
    80002ac0:	00053423          	sd	zero,8(a0)
        if (tail)
    80002ac4:	00003797          	auipc	a5,0x3
    80002ac8:	5ec7b783          	ld	a5,1516(a5) # 800060b0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002acc:	02078263          	beqz	a5,80002af0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002ad0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002ad4:	00003797          	auipc	a5,0x3
    80002ad8:	5ca7be23          	sd	a0,1500(a5) # 800060b0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
            head = tail = elem;
    80002af0:	00003797          	auipc	a5,0x3
    80002af4:	5b878793          	addi	a5,a5,1464 # 800060a8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002af8:	00a7b423          	sd	a0,8(a5)
    80002afc:	00a7b023          	sd	a0,0(a5)
    80002b00:	fddff06f          	j	80002adc <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002b04 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00113423          	sd	ra,8(sp)
    80002b0c:	00813023          	sd	s0,0(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	000105b7          	lui	a1,0x10
    80002b18:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b1c:	00100513          	li	a0,1
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	ed0080e7          	jalr	-304(ra) # 800029f0 <_Z41__static_initialization_and_destruction_0ii>
    80002b28:	00813083          	ld	ra,8(sp)
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002b38:	fe010113          	addi	sp,sp,-32
    80002b3c:	00113c23          	sd	ra,24(sp)
    80002b40:	00813823          	sd	s0,16(sp)
    80002b44:	00913423          	sd	s1,8(sp)
    80002b48:	02010413          	addi	s0,sp,32
    80002b4c:	00050493          	mv	s1,a0
    LOCK();
    80002b50:	00100613          	li	a2,1
    80002b54:	00000593          	li	a1,0
    80002b58:	00003517          	auipc	a0,0x3
    80002b5c:	56050513          	addi	a0,a0,1376 # 800060b8 <lockPrint>
    80002b60:	ffffe097          	auipc	ra,0xffffe
    80002b64:	5d4080e7          	jalr	1492(ra) # 80001134 <copy_and_swap>
    80002b68:	fe0514e3          	bnez	a0,80002b50 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002b6c:	0004c503          	lbu	a0,0(s1)
    80002b70:	00050a63          	beqz	a0,80002b84 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002b74:	ffffe097          	auipc	ra,0xffffe
    80002b78:	718080e7          	jalr	1816(ra) # 8000128c <_Z4putcc>
        string++;
    80002b7c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002b80:	fedff06f          	j	80002b6c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002b84:	00000613          	li	a2,0
    80002b88:	00100593          	li	a1,1
    80002b8c:	00003517          	auipc	a0,0x3
    80002b90:	52c50513          	addi	a0,a0,1324 # 800060b8 <lockPrint>
    80002b94:	ffffe097          	auipc	ra,0xffffe
    80002b98:	5a0080e7          	jalr	1440(ra) # 80001134 <copy_and_swap>
    80002b9c:	fe0514e3          	bnez	a0,80002b84 <_Z11printStringPKc+0x4c>
}
    80002ba0:	01813083          	ld	ra,24(sp)
    80002ba4:	01013403          	ld	s0,16(sp)
    80002ba8:	00813483          	ld	s1,8(sp)
    80002bac:	02010113          	addi	sp,sp,32
    80002bb0:	00008067          	ret

0000000080002bb4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002bb4:	fd010113          	addi	sp,sp,-48
    80002bb8:	02113423          	sd	ra,40(sp)
    80002bbc:	02813023          	sd	s0,32(sp)
    80002bc0:	00913c23          	sd	s1,24(sp)
    80002bc4:	01213823          	sd	s2,16(sp)
    80002bc8:	01313423          	sd	s3,8(sp)
    80002bcc:	01413023          	sd	s4,0(sp)
    80002bd0:	03010413          	addi	s0,sp,48
    80002bd4:	00050993          	mv	s3,a0
    80002bd8:	00058a13          	mv	s4,a1
    LOCK();
    80002bdc:	00100613          	li	a2,1
    80002be0:	00000593          	li	a1,0
    80002be4:	00003517          	auipc	a0,0x3
    80002be8:	4d450513          	addi	a0,a0,1236 # 800060b8 <lockPrint>
    80002bec:	ffffe097          	auipc	ra,0xffffe
    80002bf0:	548080e7          	jalr	1352(ra) # 80001134 <copy_and_swap>
    80002bf4:	fe0514e3          	bnez	a0,80002bdc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002bf8:	00000913          	li	s2,0
    80002bfc:	00090493          	mv	s1,s2
    80002c00:	0019091b          	addiw	s2,s2,1
    80002c04:	03495a63          	bge	s2,s4,80002c38 <_Z9getStringPci+0x84>
        cc = getc();
    80002c08:	ffffe097          	auipc	ra,0xffffe
    80002c0c:	6a8080e7          	jalr	1704(ra) # 800012b0 <_Z4getcv>
        if(cc < 1)
    80002c10:	02050463          	beqz	a0,80002c38 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002c14:	009984b3          	add	s1,s3,s1
    80002c18:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002c1c:	00a00793          	li	a5,10
    80002c20:	00f50a63          	beq	a0,a5,80002c34 <_Z9getStringPci+0x80>
    80002c24:	00d00793          	li	a5,13
    80002c28:	fcf51ae3          	bne	a0,a5,80002bfc <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002c2c:	00090493          	mv	s1,s2
    80002c30:	0080006f          	j	80002c38 <_Z9getStringPci+0x84>
    80002c34:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002c38:	009984b3          	add	s1,s3,s1
    80002c3c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002c40:	00000613          	li	a2,0
    80002c44:	00100593          	li	a1,1
    80002c48:	00003517          	auipc	a0,0x3
    80002c4c:	47050513          	addi	a0,a0,1136 # 800060b8 <lockPrint>
    80002c50:	ffffe097          	auipc	ra,0xffffe
    80002c54:	4e4080e7          	jalr	1252(ra) # 80001134 <copy_and_swap>
    80002c58:	fe0514e3          	bnez	a0,80002c40 <_Z9getStringPci+0x8c>
    return buf;
}
    80002c5c:	00098513          	mv	a0,s3
    80002c60:	02813083          	ld	ra,40(sp)
    80002c64:	02013403          	ld	s0,32(sp)
    80002c68:	01813483          	ld	s1,24(sp)
    80002c6c:	01013903          	ld	s2,16(sp)
    80002c70:	00813983          	ld	s3,8(sp)
    80002c74:	00013a03          	ld	s4,0(sp)
    80002c78:	03010113          	addi	sp,sp,48
    80002c7c:	00008067          	ret

0000000080002c80 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002c80:	ff010113          	addi	sp,sp,-16
    80002c84:	00813423          	sd	s0,8(sp)
    80002c88:	01010413          	addi	s0,sp,16
    80002c8c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002c90:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002c94:	0006c603          	lbu	a2,0(a3)
    80002c98:	fd06071b          	addiw	a4,a2,-48
    80002c9c:	0ff77713          	andi	a4,a4,255
    80002ca0:	00900793          	li	a5,9
    80002ca4:	02e7e063          	bltu	a5,a4,80002cc4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002ca8:	0025179b          	slliw	a5,a0,0x2
    80002cac:	00a787bb          	addw	a5,a5,a0
    80002cb0:	0017979b          	slliw	a5,a5,0x1
    80002cb4:	00168693          	addi	a3,a3,1
    80002cb8:	00c787bb          	addw	a5,a5,a2
    80002cbc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002cc0:	fd5ff06f          	j	80002c94 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002cc4:	00813403          	ld	s0,8(sp)
    80002cc8:	01010113          	addi	sp,sp,16
    80002ccc:	00008067          	ret

0000000080002cd0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002cd0:	fc010113          	addi	sp,sp,-64
    80002cd4:	02113c23          	sd	ra,56(sp)
    80002cd8:	02813823          	sd	s0,48(sp)
    80002cdc:	02913423          	sd	s1,40(sp)
    80002ce0:	03213023          	sd	s2,32(sp)
    80002ce4:	01313c23          	sd	s3,24(sp)
    80002ce8:	04010413          	addi	s0,sp,64
    80002cec:	00050493          	mv	s1,a0
    80002cf0:	00058913          	mv	s2,a1
    80002cf4:	00060993          	mv	s3,a2
    LOCK();
    80002cf8:	00100613          	li	a2,1
    80002cfc:	00000593          	li	a1,0
    80002d00:	00003517          	auipc	a0,0x3
    80002d04:	3b850513          	addi	a0,a0,952 # 800060b8 <lockPrint>
    80002d08:	ffffe097          	auipc	ra,0xffffe
    80002d0c:	42c080e7          	jalr	1068(ra) # 80001134 <copy_and_swap>
    80002d10:	fe0514e3          	bnez	a0,80002cf8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002d14:	00098463          	beqz	s3,80002d1c <_Z8printIntiii+0x4c>
    80002d18:	0804c463          	bltz	s1,80002da0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002d1c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002d20:	00000593          	li	a1,0
    }

    i = 0;
    80002d24:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002d28:	0009079b          	sext.w	a5,s2
    80002d2c:	0325773b          	remuw	a4,a0,s2
    80002d30:	00048613          	mv	a2,s1
    80002d34:	0014849b          	addiw	s1,s1,1
    80002d38:	02071693          	slli	a3,a4,0x20
    80002d3c:	0206d693          	srli	a3,a3,0x20
    80002d40:	00003717          	auipc	a4,0x3
    80002d44:	2a070713          	addi	a4,a4,672 # 80005fe0 <digits>
    80002d48:	00d70733          	add	a4,a4,a3
    80002d4c:	00074683          	lbu	a3,0(a4)
    80002d50:	fd040713          	addi	a4,s0,-48
    80002d54:	00c70733          	add	a4,a4,a2
    80002d58:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002d5c:	0005071b          	sext.w	a4,a0
    80002d60:	0325553b          	divuw	a0,a0,s2
    80002d64:	fcf772e3          	bgeu	a4,a5,80002d28 <_Z8printIntiii+0x58>
    if(neg)
    80002d68:	00058c63          	beqz	a1,80002d80 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002d6c:	fd040793          	addi	a5,s0,-48
    80002d70:	009784b3          	add	s1,a5,s1
    80002d74:	02d00793          	li	a5,45
    80002d78:	fef48823          	sb	a5,-16(s1)
    80002d7c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002d80:	fff4849b          	addiw	s1,s1,-1
    80002d84:	0204c463          	bltz	s1,80002dac <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002d88:	fd040793          	addi	a5,s0,-48
    80002d8c:	009787b3          	add	a5,a5,s1
    80002d90:	ff07c503          	lbu	a0,-16(a5)
    80002d94:	ffffe097          	auipc	ra,0xffffe
    80002d98:	4f8080e7          	jalr	1272(ra) # 8000128c <_Z4putcc>
    80002d9c:	fe5ff06f          	j	80002d80 <_Z8printIntiii+0xb0>
        x = -xx;
    80002da0:	4090053b          	negw	a0,s1
        neg = 1;
    80002da4:	00100593          	li	a1,1
        x = -xx;
    80002da8:	f7dff06f          	j	80002d24 <_Z8printIntiii+0x54>

    UNLOCK();
    80002dac:	00000613          	li	a2,0
    80002db0:	00100593          	li	a1,1
    80002db4:	00003517          	auipc	a0,0x3
    80002db8:	30450513          	addi	a0,a0,772 # 800060b8 <lockPrint>
    80002dbc:	ffffe097          	auipc	ra,0xffffe
    80002dc0:	378080e7          	jalr	888(ra) # 80001134 <copy_and_swap>
    80002dc4:	fe0514e3          	bnez	a0,80002dac <_Z8printIntiii+0xdc>
    80002dc8:	03813083          	ld	ra,56(sp)
    80002dcc:	03013403          	ld	s0,48(sp)
    80002dd0:	02813483          	ld	s1,40(sp)
    80002dd4:	02013903          	ld	s2,32(sp)
    80002dd8:	01813983          	ld	s3,24(sp)
    80002ddc:	04010113          	addi	sp,sp,64
    80002de0:	00008067          	ret

0000000080002de4 <start>:
    80002de4:	ff010113          	addi	sp,sp,-16
    80002de8:	00813423          	sd	s0,8(sp)
    80002dec:	01010413          	addi	s0,sp,16
    80002df0:	300027f3          	csrr	a5,mstatus
    80002df4:	ffffe737          	lui	a4,0xffffe
    80002df8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff74df>
    80002dfc:	00e7f7b3          	and	a5,a5,a4
    80002e00:	00001737          	lui	a4,0x1
    80002e04:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002e08:	00e7e7b3          	or	a5,a5,a4
    80002e0c:	30079073          	csrw	mstatus,a5
    80002e10:	00000797          	auipc	a5,0x0
    80002e14:	16078793          	addi	a5,a5,352 # 80002f70 <system_main>
    80002e18:	34179073          	csrw	mepc,a5
    80002e1c:	00000793          	li	a5,0
    80002e20:	18079073          	csrw	satp,a5
    80002e24:	000107b7          	lui	a5,0x10
    80002e28:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002e2c:	30279073          	csrw	medeleg,a5
    80002e30:	30379073          	csrw	mideleg,a5
    80002e34:	104027f3          	csrr	a5,sie
    80002e38:	2227e793          	ori	a5,a5,546
    80002e3c:	10479073          	csrw	sie,a5
    80002e40:	fff00793          	li	a5,-1
    80002e44:	00a7d793          	srli	a5,a5,0xa
    80002e48:	3b079073          	csrw	pmpaddr0,a5
    80002e4c:	00f00793          	li	a5,15
    80002e50:	3a079073          	csrw	pmpcfg0,a5
    80002e54:	f14027f3          	csrr	a5,mhartid
    80002e58:	0200c737          	lui	a4,0x200c
    80002e5c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002e60:	0007869b          	sext.w	a3,a5
    80002e64:	00269713          	slli	a4,a3,0x2
    80002e68:	000f4637          	lui	a2,0xf4
    80002e6c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002e70:	00d70733          	add	a4,a4,a3
    80002e74:	0037979b          	slliw	a5,a5,0x3
    80002e78:	020046b7          	lui	a3,0x2004
    80002e7c:	00d787b3          	add	a5,a5,a3
    80002e80:	00c585b3          	add	a1,a1,a2
    80002e84:	00371693          	slli	a3,a4,0x3
    80002e88:	00003717          	auipc	a4,0x3
    80002e8c:	23870713          	addi	a4,a4,568 # 800060c0 <timer_scratch>
    80002e90:	00b7b023          	sd	a1,0(a5)
    80002e94:	00d70733          	add	a4,a4,a3
    80002e98:	00f73c23          	sd	a5,24(a4)
    80002e9c:	02c73023          	sd	a2,32(a4)
    80002ea0:	34071073          	csrw	mscratch,a4
    80002ea4:	00000797          	auipc	a5,0x0
    80002ea8:	6ec78793          	addi	a5,a5,1772 # 80003590 <timervec>
    80002eac:	30579073          	csrw	mtvec,a5
    80002eb0:	300027f3          	csrr	a5,mstatus
    80002eb4:	0087e793          	ori	a5,a5,8
    80002eb8:	30079073          	csrw	mstatus,a5
    80002ebc:	304027f3          	csrr	a5,mie
    80002ec0:	0807e793          	ori	a5,a5,128
    80002ec4:	30479073          	csrw	mie,a5
    80002ec8:	f14027f3          	csrr	a5,mhartid
    80002ecc:	0007879b          	sext.w	a5,a5
    80002ed0:	00078213          	mv	tp,a5
    80002ed4:	30200073          	mret
    80002ed8:	00813403          	ld	s0,8(sp)
    80002edc:	01010113          	addi	sp,sp,16
    80002ee0:	00008067          	ret

0000000080002ee4 <timerinit>:
    80002ee4:	ff010113          	addi	sp,sp,-16
    80002ee8:	00813423          	sd	s0,8(sp)
    80002eec:	01010413          	addi	s0,sp,16
    80002ef0:	f14027f3          	csrr	a5,mhartid
    80002ef4:	0200c737          	lui	a4,0x200c
    80002ef8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002efc:	0007869b          	sext.w	a3,a5
    80002f00:	00269713          	slli	a4,a3,0x2
    80002f04:	000f4637          	lui	a2,0xf4
    80002f08:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002f0c:	00d70733          	add	a4,a4,a3
    80002f10:	0037979b          	slliw	a5,a5,0x3
    80002f14:	020046b7          	lui	a3,0x2004
    80002f18:	00d787b3          	add	a5,a5,a3
    80002f1c:	00c585b3          	add	a1,a1,a2
    80002f20:	00371693          	slli	a3,a4,0x3
    80002f24:	00003717          	auipc	a4,0x3
    80002f28:	19c70713          	addi	a4,a4,412 # 800060c0 <timer_scratch>
    80002f2c:	00b7b023          	sd	a1,0(a5)
    80002f30:	00d70733          	add	a4,a4,a3
    80002f34:	00f73c23          	sd	a5,24(a4)
    80002f38:	02c73023          	sd	a2,32(a4)
    80002f3c:	34071073          	csrw	mscratch,a4
    80002f40:	00000797          	auipc	a5,0x0
    80002f44:	65078793          	addi	a5,a5,1616 # 80003590 <timervec>
    80002f48:	30579073          	csrw	mtvec,a5
    80002f4c:	300027f3          	csrr	a5,mstatus
    80002f50:	0087e793          	ori	a5,a5,8
    80002f54:	30079073          	csrw	mstatus,a5
    80002f58:	304027f3          	csrr	a5,mie
    80002f5c:	0807e793          	ori	a5,a5,128
    80002f60:	30479073          	csrw	mie,a5
    80002f64:	00813403          	ld	s0,8(sp)
    80002f68:	01010113          	addi	sp,sp,16
    80002f6c:	00008067          	ret

0000000080002f70 <system_main>:
    80002f70:	fe010113          	addi	sp,sp,-32
    80002f74:	00813823          	sd	s0,16(sp)
    80002f78:	00913423          	sd	s1,8(sp)
    80002f7c:	00113c23          	sd	ra,24(sp)
    80002f80:	02010413          	addi	s0,sp,32
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	0c4080e7          	jalr	196(ra) # 80003048 <cpuid>
    80002f8c:	00003497          	auipc	s1,0x3
    80002f90:	0b448493          	addi	s1,s1,180 # 80006040 <started>
    80002f94:	02050263          	beqz	a0,80002fb8 <system_main+0x48>
    80002f98:	0004a783          	lw	a5,0(s1)
    80002f9c:	0007879b          	sext.w	a5,a5
    80002fa0:	fe078ce3          	beqz	a5,80002f98 <system_main+0x28>
    80002fa4:	0ff0000f          	fence
    80002fa8:	00002517          	auipc	a0,0x2
    80002fac:	20850513          	addi	a0,a0,520 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80002fb0:	00001097          	auipc	ra,0x1
    80002fb4:	a7c080e7          	jalr	-1412(ra) # 80003a2c <panic>
    80002fb8:	00001097          	auipc	ra,0x1
    80002fbc:	9d0080e7          	jalr	-1584(ra) # 80003988 <consoleinit>
    80002fc0:	00001097          	auipc	ra,0x1
    80002fc4:	15c080e7          	jalr	348(ra) # 8000411c <printfinit>
    80002fc8:	00002517          	auipc	a0,0x2
    80002fcc:	2c850513          	addi	a0,a0,712 # 80005290 <CONSOLE_STATUS+0x280>
    80002fd0:	00001097          	auipc	ra,0x1
    80002fd4:	ab8080e7          	jalr	-1352(ra) # 80003a88 <__printf>
    80002fd8:	00002517          	auipc	a0,0x2
    80002fdc:	1a850513          	addi	a0,a0,424 # 80005180 <CONSOLE_STATUS+0x170>
    80002fe0:	00001097          	auipc	ra,0x1
    80002fe4:	aa8080e7          	jalr	-1368(ra) # 80003a88 <__printf>
    80002fe8:	00002517          	auipc	a0,0x2
    80002fec:	2a850513          	addi	a0,a0,680 # 80005290 <CONSOLE_STATUS+0x280>
    80002ff0:	00001097          	auipc	ra,0x1
    80002ff4:	a98080e7          	jalr	-1384(ra) # 80003a88 <__printf>
    80002ff8:	00001097          	auipc	ra,0x1
    80002ffc:	4b0080e7          	jalr	1200(ra) # 800044a8 <kinit>
    80003000:	00000097          	auipc	ra,0x0
    80003004:	148080e7          	jalr	328(ra) # 80003148 <trapinit>
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	16c080e7          	jalr	364(ra) # 80003174 <trapinithart>
    80003010:	00000097          	auipc	ra,0x0
    80003014:	5c0080e7          	jalr	1472(ra) # 800035d0 <plicinit>
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	5e0080e7          	jalr	1504(ra) # 800035f8 <plicinithart>
    80003020:	00000097          	auipc	ra,0x0
    80003024:	078080e7          	jalr	120(ra) # 80003098 <userinit>
    80003028:	0ff0000f          	fence
    8000302c:	00100793          	li	a5,1
    80003030:	00002517          	auipc	a0,0x2
    80003034:	16850513          	addi	a0,a0,360 # 80005198 <CONSOLE_STATUS+0x188>
    80003038:	00f4a023          	sw	a5,0(s1)
    8000303c:	00001097          	auipc	ra,0x1
    80003040:	a4c080e7          	jalr	-1460(ra) # 80003a88 <__printf>
    80003044:	0000006f          	j	80003044 <system_main+0xd4>

0000000080003048 <cpuid>:
    80003048:	ff010113          	addi	sp,sp,-16
    8000304c:	00813423          	sd	s0,8(sp)
    80003050:	01010413          	addi	s0,sp,16
    80003054:	00020513          	mv	a0,tp
    80003058:	00813403          	ld	s0,8(sp)
    8000305c:	0005051b          	sext.w	a0,a0
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret

0000000080003068 <mycpu>:
    80003068:	ff010113          	addi	sp,sp,-16
    8000306c:	00813423          	sd	s0,8(sp)
    80003070:	01010413          	addi	s0,sp,16
    80003074:	00020793          	mv	a5,tp
    80003078:	00813403          	ld	s0,8(sp)
    8000307c:	0007879b          	sext.w	a5,a5
    80003080:	00779793          	slli	a5,a5,0x7
    80003084:	00004517          	auipc	a0,0x4
    80003088:	06c50513          	addi	a0,a0,108 # 800070f0 <cpus>
    8000308c:	00f50533          	add	a0,a0,a5
    80003090:	01010113          	addi	sp,sp,16
    80003094:	00008067          	ret

0000000080003098 <userinit>:
    80003098:	ff010113          	addi	sp,sp,-16
    8000309c:	00813423          	sd	s0,8(sp)
    800030a0:	01010413          	addi	s0,sp,16
    800030a4:	00813403          	ld	s0,8(sp)
    800030a8:	01010113          	addi	sp,sp,16
    800030ac:	fffff317          	auipc	t1,0xfffff
    800030b0:	bf030067          	jr	-1040(t1) # 80001c9c <main>

00000000800030b4 <either_copyout>:
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813023          	sd	s0,0(sp)
    800030bc:	00113423          	sd	ra,8(sp)
    800030c0:	01010413          	addi	s0,sp,16
    800030c4:	02051663          	bnez	a0,800030f0 <either_copyout+0x3c>
    800030c8:	00058513          	mv	a0,a1
    800030cc:	00060593          	mv	a1,a2
    800030d0:	0006861b          	sext.w	a2,a3
    800030d4:	00002097          	auipc	ra,0x2
    800030d8:	c60080e7          	jalr	-928(ra) # 80004d34 <__memmove>
    800030dc:	00813083          	ld	ra,8(sp)
    800030e0:	00013403          	ld	s0,0(sp)
    800030e4:	00000513          	li	a0,0
    800030e8:	01010113          	addi	sp,sp,16
    800030ec:	00008067          	ret
    800030f0:	00002517          	auipc	a0,0x2
    800030f4:	0e850513          	addi	a0,a0,232 # 800051d8 <CONSOLE_STATUS+0x1c8>
    800030f8:	00001097          	auipc	ra,0x1
    800030fc:	934080e7          	jalr	-1740(ra) # 80003a2c <panic>

0000000080003100 <either_copyin>:
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00813023          	sd	s0,0(sp)
    80003108:	00113423          	sd	ra,8(sp)
    8000310c:	01010413          	addi	s0,sp,16
    80003110:	02059463          	bnez	a1,80003138 <either_copyin+0x38>
    80003114:	00060593          	mv	a1,a2
    80003118:	0006861b          	sext.w	a2,a3
    8000311c:	00002097          	auipc	ra,0x2
    80003120:	c18080e7          	jalr	-1000(ra) # 80004d34 <__memmove>
    80003124:	00813083          	ld	ra,8(sp)
    80003128:	00013403          	ld	s0,0(sp)
    8000312c:	00000513          	li	a0,0
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret
    80003138:	00002517          	auipc	a0,0x2
    8000313c:	0c850513          	addi	a0,a0,200 # 80005200 <CONSOLE_STATUS+0x1f0>
    80003140:	00001097          	auipc	ra,0x1
    80003144:	8ec080e7          	jalr	-1812(ra) # 80003a2c <panic>

0000000080003148 <trapinit>:
    80003148:	ff010113          	addi	sp,sp,-16
    8000314c:	00813423          	sd	s0,8(sp)
    80003150:	01010413          	addi	s0,sp,16
    80003154:	00813403          	ld	s0,8(sp)
    80003158:	00002597          	auipc	a1,0x2
    8000315c:	0d058593          	addi	a1,a1,208 # 80005228 <CONSOLE_STATUS+0x218>
    80003160:	00004517          	auipc	a0,0x4
    80003164:	01050513          	addi	a0,a0,16 # 80007170 <tickslock>
    80003168:	01010113          	addi	sp,sp,16
    8000316c:	00001317          	auipc	t1,0x1
    80003170:	5cc30067          	jr	1484(t1) # 80004738 <initlock>

0000000080003174 <trapinithart>:
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00813423          	sd	s0,8(sp)
    8000317c:	01010413          	addi	s0,sp,16
    80003180:	00000797          	auipc	a5,0x0
    80003184:	30078793          	addi	a5,a5,768 # 80003480 <kernelvec>
    80003188:	10579073          	csrw	stvec,a5
    8000318c:	00813403          	ld	s0,8(sp)
    80003190:	01010113          	addi	sp,sp,16
    80003194:	00008067          	ret

0000000080003198 <usertrap>:
    80003198:	ff010113          	addi	sp,sp,-16
    8000319c:	00813423          	sd	s0,8(sp)
    800031a0:	01010413          	addi	s0,sp,16
    800031a4:	00813403          	ld	s0,8(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <usertrapret>:
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00813423          	sd	s0,8(sp)
    800031b8:	01010413          	addi	s0,sp,16
    800031bc:	00813403          	ld	s0,8(sp)
    800031c0:	01010113          	addi	sp,sp,16
    800031c4:	00008067          	ret

00000000800031c8 <kerneltrap>:
    800031c8:	fe010113          	addi	sp,sp,-32
    800031cc:	00813823          	sd	s0,16(sp)
    800031d0:	00113c23          	sd	ra,24(sp)
    800031d4:	00913423          	sd	s1,8(sp)
    800031d8:	02010413          	addi	s0,sp,32
    800031dc:	142025f3          	csrr	a1,scause
    800031e0:	100027f3          	csrr	a5,sstatus
    800031e4:	0027f793          	andi	a5,a5,2
    800031e8:	10079c63          	bnez	a5,80003300 <kerneltrap+0x138>
    800031ec:	142027f3          	csrr	a5,scause
    800031f0:	0207ce63          	bltz	a5,8000322c <kerneltrap+0x64>
    800031f4:	00002517          	auipc	a0,0x2
    800031f8:	07c50513          	addi	a0,a0,124 # 80005270 <CONSOLE_STATUS+0x260>
    800031fc:	00001097          	auipc	ra,0x1
    80003200:	88c080e7          	jalr	-1908(ra) # 80003a88 <__printf>
    80003204:	141025f3          	csrr	a1,sepc
    80003208:	14302673          	csrr	a2,stval
    8000320c:	00002517          	auipc	a0,0x2
    80003210:	07450513          	addi	a0,a0,116 # 80005280 <CONSOLE_STATUS+0x270>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	874080e7          	jalr	-1932(ra) # 80003a88 <__printf>
    8000321c:	00002517          	auipc	a0,0x2
    80003220:	07c50513          	addi	a0,a0,124 # 80005298 <CONSOLE_STATUS+0x288>
    80003224:	00001097          	auipc	ra,0x1
    80003228:	808080e7          	jalr	-2040(ra) # 80003a2c <panic>
    8000322c:	0ff7f713          	andi	a4,a5,255
    80003230:	00900693          	li	a3,9
    80003234:	04d70063          	beq	a4,a3,80003274 <kerneltrap+0xac>
    80003238:	fff00713          	li	a4,-1
    8000323c:	03f71713          	slli	a4,a4,0x3f
    80003240:	00170713          	addi	a4,a4,1
    80003244:	fae798e3          	bne	a5,a4,800031f4 <kerneltrap+0x2c>
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	e00080e7          	jalr	-512(ra) # 80003048 <cpuid>
    80003250:	06050663          	beqz	a0,800032bc <kerneltrap+0xf4>
    80003254:	144027f3          	csrr	a5,sip
    80003258:	ffd7f793          	andi	a5,a5,-3
    8000325c:	14479073          	csrw	sip,a5
    80003260:	01813083          	ld	ra,24(sp)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	00813483          	ld	s1,8(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret
    80003274:	00000097          	auipc	ra,0x0
    80003278:	3d0080e7          	jalr	976(ra) # 80003644 <plic_claim>
    8000327c:	00a00793          	li	a5,10
    80003280:	00050493          	mv	s1,a0
    80003284:	06f50863          	beq	a0,a5,800032f4 <kerneltrap+0x12c>
    80003288:	fc050ce3          	beqz	a0,80003260 <kerneltrap+0x98>
    8000328c:	00050593          	mv	a1,a0
    80003290:	00002517          	auipc	a0,0x2
    80003294:	fc050513          	addi	a0,a0,-64 # 80005250 <CONSOLE_STATUS+0x240>
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	7f0080e7          	jalr	2032(ra) # 80003a88 <__printf>
    800032a0:	01013403          	ld	s0,16(sp)
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	00048513          	mv	a0,s1
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00000317          	auipc	t1,0x0
    800032b8:	3c830067          	jr	968(t1) # 8000367c <plic_complete>
    800032bc:	00004517          	auipc	a0,0x4
    800032c0:	eb450513          	addi	a0,a0,-332 # 80007170 <tickslock>
    800032c4:	00001097          	auipc	ra,0x1
    800032c8:	498080e7          	jalr	1176(ra) # 8000475c <acquire>
    800032cc:	00003717          	auipc	a4,0x3
    800032d0:	d7870713          	addi	a4,a4,-648 # 80006044 <ticks>
    800032d4:	00072783          	lw	a5,0(a4)
    800032d8:	00004517          	auipc	a0,0x4
    800032dc:	e9850513          	addi	a0,a0,-360 # 80007170 <tickslock>
    800032e0:	0017879b          	addiw	a5,a5,1
    800032e4:	00f72023          	sw	a5,0(a4)
    800032e8:	00001097          	auipc	ra,0x1
    800032ec:	540080e7          	jalr	1344(ra) # 80004828 <release>
    800032f0:	f65ff06f          	j	80003254 <kerneltrap+0x8c>
    800032f4:	00001097          	auipc	ra,0x1
    800032f8:	09c080e7          	jalr	156(ra) # 80004390 <uartintr>
    800032fc:	fa5ff06f          	j	800032a0 <kerneltrap+0xd8>
    80003300:	00002517          	auipc	a0,0x2
    80003304:	f3050513          	addi	a0,a0,-208 # 80005230 <CONSOLE_STATUS+0x220>
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	724080e7          	jalr	1828(ra) # 80003a2c <panic>

0000000080003310 <clockintr>:
    80003310:	fe010113          	addi	sp,sp,-32
    80003314:	00813823          	sd	s0,16(sp)
    80003318:	00913423          	sd	s1,8(sp)
    8000331c:	00113c23          	sd	ra,24(sp)
    80003320:	02010413          	addi	s0,sp,32
    80003324:	00004497          	auipc	s1,0x4
    80003328:	e4c48493          	addi	s1,s1,-436 # 80007170 <tickslock>
    8000332c:	00048513          	mv	a0,s1
    80003330:	00001097          	auipc	ra,0x1
    80003334:	42c080e7          	jalr	1068(ra) # 8000475c <acquire>
    80003338:	00003717          	auipc	a4,0x3
    8000333c:	d0c70713          	addi	a4,a4,-756 # 80006044 <ticks>
    80003340:	00072783          	lw	a5,0(a4)
    80003344:	01013403          	ld	s0,16(sp)
    80003348:	01813083          	ld	ra,24(sp)
    8000334c:	00048513          	mv	a0,s1
    80003350:	0017879b          	addiw	a5,a5,1
    80003354:	00813483          	ld	s1,8(sp)
    80003358:	00f72023          	sw	a5,0(a4)
    8000335c:	02010113          	addi	sp,sp,32
    80003360:	00001317          	auipc	t1,0x1
    80003364:	4c830067          	jr	1224(t1) # 80004828 <release>

0000000080003368 <devintr>:
    80003368:	142027f3          	csrr	a5,scause
    8000336c:	00000513          	li	a0,0
    80003370:	0007c463          	bltz	a5,80003378 <devintr+0x10>
    80003374:	00008067          	ret
    80003378:	fe010113          	addi	sp,sp,-32
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00113c23          	sd	ra,24(sp)
    80003384:	00913423          	sd	s1,8(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	0ff7f713          	andi	a4,a5,255
    80003390:	00900693          	li	a3,9
    80003394:	04d70c63          	beq	a4,a3,800033ec <devintr+0x84>
    80003398:	fff00713          	li	a4,-1
    8000339c:	03f71713          	slli	a4,a4,0x3f
    800033a0:	00170713          	addi	a4,a4,1
    800033a4:	00e78c63          	beq	a5,a4,800033bc <devintr+0x54>
    800033a8:	01813083          	ld	ra,24(sp)
    800033ac:	01013403          	ld	s0,16(sp)
    800033b0:	00813483          	ld	s1,8(sp)
    800033b4:	02010113          	addi	sp,sp,32
    800033b8:	00008067          	ret
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	c8c080e7          	jalr	-884(ra) # 80003048 <cpuid>
    800033c4:	06050663          	beqz	a0,80003430 <devintr+0xc8>
    800033c8:	144027f3          	csrr	a5,sip
    800033cc:	ffd7f793          	andi	a5,a5,-3
    800033d0:	14479073          	csrw	sip,a5
    800033d4:	01813083          	ld	ra,24(sp)
    800033d8:	01013403          	ld	s0,16(sp)
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	00200513          	li	a0,2
    800033e4:	02010113          	addi	sp,sp,32
    800033e8:	00008067          	ret
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	258080e7          	jalr	600(ra) # 80003644 <plic_claim>
    800033f4:	00a00793          	li	a5,10
    800033f8:	00050493          	mv	s1,a0
    800033fc:	06f50663          	beq	a0,a5,80003468 <devintr+0x100>
    80003400:	00100513          	li	a0,1
    80003404:	fa0482e3          	beqz	s1,800033a8 <devintr+0x40>
    80003408:	00048593          	mv	a1,s1
    8000340c:	00002517          	auipc	a0,0x2
    80003410:	e4450513          	addi	a0,a0,-444 # 80005250 <CONSOLE_STATUS+0x240>
    80003414:	00000097          	auipc	ra,0x0
    80003418:	674080e7          	jalr	1652(ra) # 80003a88 <__printf>
    8000341c:	00048513          	mv	a0,s1
    80003420:	00000097          	auipc	ra,0x0
    80003424:	25c080e7          	jalr	604(ra) # 8000367c <plic_complete>
    80003428:	00100513          	li	a0,1
    8000342c:	f7dff06f          	j	800033a8 <devintr+0x40>
    80003430:	00004517          	auipc	a0,0x4
    80003434:	d4050513          	addi	a0,a0,-704 # 80007170 <tickslock>
    80003438:	00001097          	auipc	ra,0x1
    8000343c:	324080e7          	jalr	804(ra) # 8000475c <acquire>
    80003440:	00003717          	auipc	a4,0x3
    80003444:	c0470713          	addi	a4,a4,-1020 # 80006044 <ticks>
    80003448:	00072783          	lw	a5,0(a4)
    8000344c:	00004517          	auipc	a0,0x4
    80003450:	d2450513          	addi	a0,a0,-732 # 80007170 <tickslock>
    80003454:	0017879b          	addiw	a5,a5,1
    80003458:	00f72023          	sw	a5,0(a4)
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	3cc080e7          	jalr	972(ra) # 80004828 <release>
    80003464:	f65ff06f          	j	800033c8 <devintr+0x60>
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	f28080e7          	jalr	-216(ra) # 80004390 <uartintr>
    80003470:	fadff06f          	j	8000341c <devintr+0xb4>
	...

0000000080003480 <kernelvec>:
    80003480:	f0010113          	addi	sp,sp,-256
    80003484:	00113023          	sd	ra,0(sp)
    80003488:	00213423          	sd	sp,8(sp)
    8000348c:	00313823          	sd	gp,16(sp)
    80003490:	00413c23          	sd	tp,24(sp)
    80003494:	02513023          	sd	t0,32(sp)
    80003498:	02613423          	sd	t1,40(sp)
    8000349c:	02713823          	sd	t2,48(sp)
    800034a0:	02813c23          	sd	s0,56(sp)
    800034a4:	04913023          	sd	s1,64(sp)
    800034a8:	04a13423          	sd	a0,72(sp)
    800034ac:	04b13823          	sd	a1,80(sp)
    800034b0:	04c13c23          	sd	a2,88(sp)
    800034b4:	06d13023          	sd	a3,96(sp)
    800034b8:	06e13423          	sd	a4,104(sp)
    800034bc:	06f13823          	sd	a5,112(sp)
    800034c0:	07013c23          	sd	a6,120(sp)
    800034c4:	09113023          	sd	a7,128(sp)
    800034c8:	09213423          	sd	s2,136(sp)
    800034cc:	09313823          	sd	s3,144(sp)
    800034d0:	09413c23          	sd	s4,152(sp)
    800034d4:	0b513023          	sd	s5,160(sp)
    800034d8:	0b613423          	sd	s6,168(sp)
    800034dc:	0b713823          	sd	s7,176(sp)
    800034e0:	0b813c23          	sd	s8,184(sp)
    800034e4:	0d913023          	sd	s9,192(sp)
    800034e8:	0da13423          	sd	s10,200(sp)
    800034ec:	0db13823          	sd	s11,208(sp)
    800034f0:	0dc13c23          	sd	t3,216(sp)
    800034f4:	0fd13023          	sd	t4,224(sp)
    800034f8:	0fe13423          	sd	t5,232(sp)
    800034fc:	0ff13823          	sd	t6,240(sp)
    80003500:	cc9ff0ef          	jal	ra,800031c8 <kerneltrap>
    80003504:	00013083          	ld	ra,0(sp)
    80003508:	00813103          	ld	sp,8(sp)
    8000350c:	01013183          	ld	gp,16(sp)
    80003510:	02013283          	ld	t0,32(sp)
    80003514:	02813303          	ld	t1,40(sp)
    80003518:	03013383          	ld	t2,48(sp)
    8000351c:	03813403          	ld	s0,56(sp)
    80003520:	04013483          	ld	s1,64(sp)
    80003524:	04813503          	ld	a0,72(sp)
    80003528:	05013583          	ld	a1,80(sp)
    8000352c:	05813603          	ld	a2,88(sp)
    80003530:	06013683          	ld	a3,96(sp)
    80003534:	06813703          	ld	a4,104(sp)
    80003538:	07013783          	ld	a5,112(sp)
    8000353c:	07813803          	ld	a6,120(sp)
    80003540:	08013883          	ld	a7,128(sp)
    80003544:	08813903          	ld	s2,136(sp)
    80003548:	09013983          	ld	s3,144(sp)
    8000354c:	09813a03          	ld	s4,152(sp)
    80003550:	0a013a83          	ld	s5,160(sp)
    80003554:	0a813b03          	ld	s6,168(sp)
    80003558:	0b013b83          	ld	s7,176(sp)
    8000355c:	0b813c03          	ld	s8,184(sp)
    80003560:	0c013c83          	ld	s9,192(sp)
    80003564:	0c813d03          	ld	s10,200(sp)
    80003568:	0d013d83          	ld	s11,208(sp)
    8000356c:	0d813e03          	ld	t3,216(sp)
    80003570:	0e013e83          	ld	t4,224(sp)
    80003574:	0e813f03          	ld	t5,232(sp)
    80003578:	0f013f83          	ld	t6,240(sp)
    8000357c:	10010113          	addi	sp,sp,256
    80003580:	10200073          	sret
    80003584:	00000013          	nop
    80003588:	00000013          	nop
    8000358c:	00000013          	nop

0000000080003590 <timervec>:
    80003590:	34051573          	csrrw	a0,mscratch,a0
    80003594:	00b53023          	sd	a1,0(a0)
    80003598:	00c53423          	sd	a2,8(a0)
    8000359c:	00d53823          	sd	a3,16(a0)
    800035a0:	01853583          	ld	a1,24(a0)
    800035a4:	02053603          	ld	a2,32(a0)
    800035a8:	0005b683          	ld	a3,0(a1)
    800035ac:	00c686b3          	add	a3,a3,a2
    800035b0:	00d5b023          	sd	a3,0(a1)
    800035b4:	00200593          	li	a1,2
    800035b8:	14459073          	csrw	sip,a1
    800035bc:	01053683          	ld	a3,16(a0)
    800035c0:	00853603          	ld	a2,8(a0)
    800035c4:	00053583          	ld	a1,0(a0)
    800035c8:	34051573          	csrrw	a0,mscratch,a0
    800035cc:	30200073          	mret

00000000800035d0 <plicinit>:
    800035d0:	ff010113          	addi	sp,sp,-16
    800035d4:	00813423          	sd	s0,8(sp)
    800035d8:	01010413          	addi	s0,sp,16
    800035dc:	00813403          	ld	s0,8(sp)
    800035e0:	0c0007b7          	lui	a5,0xc000
    800035e4:	00100713          	li	a4,1
    800035e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800035ec:	00e7a223          	sw	a4,4(a5)
    800035f0:	01010113          	addi	sp,sp,16
    800035f4:	00008067          	ret

00000000800035f8 <plicinithart>:
    800035f8:	ff010113          	addi	sp,sp,-16
    800035fc:	00813023          	sd	s0,0(sp)
    80003600:	00113423          	sd	ra,8(sp)
    80003604:	01010413          	addi	s0,sp,16
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	a40080e7          	jalr	-1472(ra) # 80003048 <cpuid>
    80003610:	0085171b          	slliw	a4,a0,0x8
    80003614:	0c0027b7          	lui	a5,0xc002
    80003618:	00e787b3          	add	a5,a5,a4
    8000361c:	40200713          	li	a4,1026
    80003620:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003624:	00813083          	ld	ra,8(sp)
    80003628:	00013403          	ld	s0,0(sp)
    8000362c:	00d5151b          	slliw	a0,a0,0xd
    80003630:	0c2017b7          	lui	a5,0xc201
    80003634:	00a78533          	add	a0,a5,a0
    80003638:	00052023          	sw	zero,0(a0)
    8000363c:	01010113          	addi	sp,sp,16
    80003640:	00008067          	ret

0000000080003644 <plic_claim>:
    80003644:	ff010113          	addi	sp,sp,-16
    80003648:	00813023          	sd	s0,0(sp)
    8000364c:	00113423          	sd	ra,8(sp)
    80003650:	01010413          	addi	s0,sp,16
    80003654:	00000097          	auipc	ra,0x0
    80003658:	9f4080e7          	jalr	-1548(ra) # 80003048 <cpuid>
    8000365c:	00813083          	ld	ra,8(sp)
    80003660:	00013403          	ld	s0,0(sp)
    80003664:	00d5151b          	slliw	a0,a0,0xd
    80003668:	0c2017b7          	lui	a5,0xc201
    8000366c:	00a78533          	add	a0,a5,a0
    80003670:	00452503          	lw	a0,4(a0)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <plic_complete>:
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	00050493          	mv	s1,a0
    80003694:	00000097          	auipc	ra,0x0
    80003698:	9b4080e7          	jalr	-1612(ra) # 80003048 <cpuid>
    8000369c:	01813083          	ld	ra,24(sp)
    800036a0:	01013403          	ld	s0,16(sp)
    800036a4:	00d5179b          	slliw	a5,a0,0xd
    800036a8:	0c201737          	lui	a4,0xc201
    800036ac:	00f707b3          	add	a5,a4,a5
    800036b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret

00000000800036c0 <consolewrite>:
    800036c0:	fb010113          	addi	sp,sp,-80
    800036c4:	04813023          	sd	s0,64(sp)
    800036c8:	04113423          	sd	ra,72(sp)
    800036cc:	02913c23          	sd	s1,56(sp)
    800036d0:	03213823          	sd	s2,48(sp)
    800036d4:	03313423          	sd	s3,40(sp)
    800036d8:	03413023          	sd	s4,32(sp)
    800036dc:	01513c23          	sd	s5,24(sp)
    800036e0:	05010413          	addi	s0,sp,80
    800036e4:	06c05c63          	blez	a2,8000375c <consolewrite+0x9c>
    800036e8:	00060993          	mv	s3,a2
    800036ec:	00050a13          	mv	s4,a0
    800036f0:	00058493          	mv	s1,a1
    800036f4:	00000913          	li	s2,0
    800036f8:	fff00a93          	li	s5,-1
    800036fc:	01c0006f          	j	80003718 <consolewrite+0x58>
    80003700:	fbf44503          	lbu	a0,-65(s0)
    80003704:	0019091b          	addiw	s2,s2,1
    80003708:	00148493          	addi	s1,s1,1
    8000370c:	00001097          	auipc	ra,0x1
    80003710:	a9c080e7          	jalr	-1380(ra) # 800041a8 <uartputc>
    80003714:	03298063          	beq	s3,s2,80003734 <consolewrite+0x74>
    80003718:	00048613          	mv	a2,s1
    8000371c:	00100693          	li	a3,1
    80003720:	000a0593          	mv	a1,s4
    80003724:	fbf40513          	addi	a0,s0,-65
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	9d8080e7          	jalr	-1576(ra) # 80003100 <either_copyin>
    80003730:	fd5518e3          	bne	a0,s5,80003700 <consolewrite+0x40>
    80003734:	04813083          	ld	ra,72(sp)
    80003738:	04013403          	ld	s0,64(sp)
    8000373c:	03813483          	ld	s1,56(sp)
    80003740:	02813983          	ld	s3,40(sp)
    80003744:	02013a03          	ld	s4,32(sp)
    80003748:	01813a83          	ld	s5,24(sp)
    8000374c:	00090513          	mv	a0,s2
    80003750:	03013903          	ld	s2,48(sp)
    80003754:	05010113          	addi	sp,sp,80
    80003758:	00008067          	ret
    8000375c:	00000913          	li	s2,0
    80003760:	fd5ff06f          	j	80003734 <consolewrite+0x74>

0000000080003764 <consoleread>:
    80003764:	f9010113          	addi	sp,sp,-112
    80003768:	06813023          	sd	s0,96(sp)
    8000376c:	04913c23          	sd	s1,88(sp)
    80003770:	05213823          	sd	s2,80(sp)
    80003774:	05313423          	sd	s3,72(sp)
    80003778:	05413023          	sd	s4,64(sp)
    8000377c:	03513c23          	sd	s5,56(sp)
    80003780:	03613823          	sd	s6,48(sp)
    80003784:	03713423          	sd	s7,40(sp)
    80003788:	03813023          	sd	s8,32(sp)
    8000378c:	06113423          	sd	ra,104(sp)
    80003790:	01913c23          	sd	s9,24(sp)
    80003794:	07010413          	addi	s0,sp,112
    80003798:	00060b93          	mv	s7,a2
    8000379c:	00050913          	mv	s2,a0
    800037a0:	00058c13          	mv	s8,a1
    800037a4:	00060b1b          	sext.w	s6,a2
    800037a8:	00004497          	auipc	s1,0x4
    800037ac:	9f048493          	addi	s1,s1,-1552 # 80007198 <cons>
    800037b0:	00400993          	li	s3,4
    800037b4:	fff00a13          	li	s4,-1
    800037b8:	00a00a93          	li	s5,10
    800037bc:	05705e63          	blez	s7,80003818 <consoleread+0xb4>
    800037c0:	09c4a703          	lw	a4,156(s1)
    800037c4:	0984a783          	lw	a5,152(s1)
    800037c8:	0007071b          	sext.w	a4,a4
    800037cc:	08e78463          	beq	a5,a4,80003854 <consoleread+0xf0>
    800037d0:	07f7f713          	andi	a4,a5,127
    800037d4:	00e48733          	add	a4,s1,a4
    800037d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800037dc:	0017869b          	addiw	a3,a5,1
    800037e0:	08d4ac23          	sw	a3,152(s1)
    800037e4:	00070c9b          	sext.w	s9,a4
    800037e8:	0b370663          	beq	a4,s3,80003894 <consoleread+0x130>
    800037ec:	00100693          	li	a3,1
    800037f0:	f9f40613          	addi	a2,s0,-97
    800037f4:	000c0593          	mv	a1,s8
    800037f8:	00090513          	mv	a0,s2
    800037fc:	f8e40fa3          	sb	a4,-97(s0)
    80003800:	00000097          	auipc	ra,0x0
    80003804:	8b4080e7          	jalr	-1868(ra) # 800030b4 <either_copyout>
    80003808:	01450863          	beq	a0,s4,80003818 <consoleread+0xb4>
    8000380c:	001c0c13          	addi	s8,s8,1
    80003810:	fffb8b9b          	addiw	s7,s7,-1
    80003814:	fb5c94e3          	bne	s9,s5,800037bc <consoleread+0x58>
    80003818:	000b851b          	sext.w	a0,s7
    8000381c:	06813083          	ld	ra,104(sp)
    80003820:	06013403          	ld	s0,96(sp)
    80003824:	05813483          	ld	s1,88(sp)
    80003828:	05013903          	ld	s2,80(sp)
    8000382c:	04813983          	ld	s3,72(sp)
    80003830:	04013a03          	ld	s4,64(sp)
    80003834:	03813a83          	ld	s5,56(sp)
    80003838:	02813b83          	ld	s7,40(sp)
    8000383c:	02013c03          	ld	s8,32(sp)
    80003840:	01813c83          	ld	s9,24(sp)
    80003844:	40ab053b          	subw	a0,s6,a0
    80003848:	03013b03          	ld	s6,48(sp)
    8000384c:	07010113          	addi	sp,sp,112
    80003850:	00008067          	ret
    80003854:	00001097          	auipc	ra,0x1
    80003858:	1d8080e7          	jalr	472(ra) # 80004a2c <push_on>
    8000385c:	0984a703          	lw	a4,152(s1)
    80003860:	09c4a783          	lw	a5,156(s1)
    80003864:	0007879b          	sext.w	a5,a5
    80003868:	fef70ce3          	beq	a4,a5,80003860 <consoleread+0xfc>
    8000386c:	00001097          	auipc	ra,0x1
    80003870:	234080e7          	jalr	564(ra) # 80004aa0 <pop_on>
    80003874:	0984a783          	lw	a5,152(s1)
    80003878:	07f7f713          	andi	a4,a5,127
    8000387c:	00e48733          	add	a4,s1,a4
    80003880:	01874703          	lbu	a4,24(a4)
    80003884:	0017869b          	addiw	a3,a5,1
    80003888:	08d4ac23          	sw	a3,152(s1)
    8000388c:	00070c9b          	sext.w	s9,a4
    80003890:	f5371ee3          	bne	a4,s3,800037ec <consoleread+0x88>
    80003894:	000b851b          	sext.w	a0,s7
    80003898:	f96bf2e3          	bgeu	s7,s6,8000381c <consoleread+0xb8>
    8000389c:	08f4ac23          	sw	a5,152(s1)
    800038a0:	f7dff06f          	j	8000381c <consoleread+0xb8>

00000000800038a4 <consputc>:
    800038a4:	10000793          	li	a5,256
    800038a8:	00f50663          	beq	a0,a5,800038b4 <consputc+0x10>
    800038ac:	00001317          	auipc	t1,0x1
    800038b0:	9f430067          	jr	-1548(t1) # 800042a0 <uartputc_sync>
    800038b4:	ff010113          	addi	sp,sp,-16
    800038b8:	00113423          	sd	ra,8(sp)
    800038bc:	00813023          	sd	s0,0(sp)
    800038c0:	01010413          	addi	s0,sp,16
    800038c4:	00800513          	li	a0,8
    800038c8:	00001097          	auipc	ra,0x1
    800038cc:	9d8080e7          	jalr	-1576(ra) # 800042a0 <uartputc_sync>
    800038d0:	02000513          	li	a0,32
    800038d4:	00001097          	auipc	ra,0x1
    800038d8:	9cc080e7          	jalr	-1588(ra) # 800042a0 <uartputc_sync>
    800038dc:	00013403          	ld	s0,0(sp)
    800038e0:	00813083          	ld	ra,8(sp)
    800038e4:	00800513          	li	a0,8
    800038e8:	01010113          	addi	sp,sp,16
    800038ec:	00001317          	auipc	t1,0x1
    800038f0:	9b430067          	jr	-1612(t1) # 800042a0 <uartputc_sync>

00000000800038f4 <consoleintr>:
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00813823          	sd	s0,16(sp)
    800038fc:	00913423          	sd	s1,8(sp)
    80003900:	01213023          	sd	s2,0(sp)
    80003904:	00113c23          	sd	ra,24(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	00004917          	auipc	s2,0x4
    80003910:	88c90913          	addi	s2,s2,-1908 # 80007198 <cons>
    80003914:	00050493          	mv	s1,a0
    80003918:	00090513          	mv	a0,s2
    8000391c:	00001097          	auipc	ra,0x1
    80003920:	e40080e7          	jalr	-448(ra) # 8000475c <acquire>
    80003924:	02048c63          	beqz	s1,8000395c <consoleintr+0x68>
    80003928:	0a092783          	lw	a5,160(s2)
    8000392c:	09892703          	lw	a4,152(s2)
    80003930:	07f00693          	li	a3,127
    80003934:	40e7873b          	subw	a4,a5,a4
    80003938:	02e6e263          	bltu	a3,a4,8000395c <consoleintr+0x68>
    8000393c:	00d00713          	li	a4,13
    80003940:	04e48063          	beq	s1,a4,80003980 <consoleintr+0x8c>
    80003944:	07f7f713          	andi	a4,a5,127
    80003948:	00e90733          	add	a4,s2,a4
    8000394c:	0017879b          	addiw	a5,a5,1
    80003950:	0af92023          	sw	a5,160(s2)
    80003954:	00970c23          	sb	s1,24(a4)
    80003958:	08f92e23          	sw	a5,156(s2)
    8000395c:	01013403          	ld	s0,16(sp)
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	00013903          	ld	s2,0(sp)
    8000396c:	00004517          	auipc	a0,0x4
    80003970:	82c50513          	addi	a0,a0,-2004 # 80007198 <cons>
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00001317          	auipc	t1,0x1
    8000397c:	eb030067          	jr	-336(t1) # 80004828 <release>
    80003980:	00a00493          	li	s1,10
    80003984:	fc1ff06f          	j	80003944 <consoleintr+0x50>

0000000080003988 <consoleinit>:
    80003988:	fe010113          	addi	sp,sp,-32
    8000398c:	00113c23          	sd	ra,24(sp)
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00913423          	sd	s1,8(sp)
    80003998:	02010413          	addi	s0,sp,32
    8000399c:	00003497          	auipc	s1,0x3
    800039a0:	7fc48493          	addi	s1,s1,2044 # 80007198 <cons>
    800039a4:	00048513          	mv	a0,s1
    800039a8:	00002597          	auipc	a1,0x2
    800039ac:	90058593          	addi	a1,a1,-1792 # 800052a8 <CONSOLE_STATUS+0x298>
    800039b0:	00001097          	auipc	ra,0x1
    800039b4:	d88080e7          	jalr	-632(ra) # 80004738 <initlock>
    800039b8:	00000097          	auipc	ra,0x0
    800039bc:	7ac080e7          	jalr	1964(ra) # 80004164 <uartinit>
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	00000797          	auipc	a5,0x0
    800039cc:	d9c78793          	addi	a5,a5,-612 # 80003764 <consoleread>
    800039d0:	0af4bc23          	sd	a5,184(s1)
    800039d4:	00000797          	auipc	a5,0x0
    800039d8:	cec78793          	addi	a5,a5,-788 # 800036c0 <consolewrite>
    800039dc:	0cf4b023          	sd	a5,192(s1)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	02010113          	addi	sp,sp,32
    800039e8:	00008067          	ret

00000000800039ec <console_read>:
    800039ec:	ff010113          	addi	sp,sp,-16
    800039f0:	00813423          	sd	s0,8(sp)
    800039f4:	01010413          	addi	s0,sp,16
    800039f8:	00813403          	ld	s0,8(sp)
    800039fc:	00004317          	auipc	t1,0x4
    80003a00:	85433303          	ld	t1,-1964(t1) # 80007250 <devsw+0x10>
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00030067          	jr	t1

0000000080003a0c <console_write>:
    80003a0c:	ff010113          	addi	sp,sp,-16
    80003a10:	00813423          	sd	s0,8(sp)
    80003a14:	01010413          	addi	s0,sp,16
    80003a18:	00813403          	ld	s0,8(sp)
    80003a1c:	00004317          	auipc	t1,0x4
    80003a20:	83c33303          	ld	t1,-1988(t1) # 80007258 <devsw+0x18>
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00030067          	jr	t1

0000000080003a2c <panic>:
    80003a2c:	fe010113          	addi	sp,sp,-32
    80003a30:	00113c23          	sd	ra,24(sp)
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	00050493          	mv	s1,a0
    80003a44:	00002517          	auipc	a0,0x2
    80003a48:	86c50513          	addi	a0,a0,-1940 # 800052b0 <CONSOLE_STATUS+0x2a0>
    80003a4c:	00004797          	auipc	a5,0x4
    80003a50:	8a07a623          	sw	zero,-1876(a5) # 800072f8 <pr+0x18>
    80003a54:	00000097          	auipc	ra,0x0
    80003a58:	034080e7          	jalr	52(ra) # 80003a88 <__printf>
    80003a5c:	00048513          	mv	a0,s1
    80003a60:	00000097          	auipc	ra,0x0
    80003a64:	028080e7          	jalr	40(ra) # 80003a88 <__printf>
    80003a68:	00002517          	auipc	a0,0x2
    80003a6c:	82850513          	addi	a0,a0,-2008 # 80005290 <CONSOLE_STATUS+0x280>
    80003a70:	00000097          	auipc	ra,0x0
    80003a74:	018080e7          	jalr	24(ra) # 80003a88 <__printf>
    80003a78:	00100793          	li	a5,1
    80003a7c:	00002717          	auipc	a4,0x2
    80003a80:	5cf72623          	sw	a5,1484(a4) # 80006048 <panicked>
    80003a84:	0000006f          	j	80003a84 <panic+0x58>

0000000080003a88 <__printf>:
    80003a88:	f3010113          	addi	sp,sp,-208
    80003a8c:	08813023          	sd	s0,128(sp)
    80003a90:	07313423          	sd	s3,104(sp)
    80003a94:	09010413          	addi	s0,sp,144
    80003a98:	05813023          	sd	s8,64(sp)
    80003a9c:	08113423          	sd	ra,136(sp)
    80003aa0:	06913c23          	sd	s1,120(sp)
    80003aa4:	07213823          	sd	s2,112(sp)
    80003aa8:	07413023          	sd	s4,96(sp)
    80003aac:	05513c23          	sd	s5,88(sp)
    80003ab0:	05613823          	sd	s6,80(sp)
    80003ab4:	05713423          	sd	s7,72(sp)
    80003ab8:	03913c23          	sd	s9,56(sp)
    80003abc:	03a13823          	sd	s10,48(sp)
    80003ac0:	03b13423          	sd	s11,40(sp)
    80003ac4:	00004317          	auipc	t1,0x4
    80003ac8:	81c30313          	addi	t1,t1,-2020 # 800072e0 <pr>
    80003acc:	01832c03          	lw	s8,24(t1)
    80003ad0:	00b43423          	sd	a1,8(s0)
    80003ad4:	00c43823          	sd	a2,16(s0)
    80003ad8:	00d43c23          	sd	a3,24(s0)
    80003adc:	02e43023          	sd	a4,32(s0)
    80003ae0:	02f43423          	sd	a5,40(s0)
    80003ae4:	03043823          	sd	a6,48(s0)
    80003ae8:	03143c23          	sd	a7,56(s0)
    80003aec:	00050993          	mv	s3,a0
    80003af0:	4a0c1663          	bnez	s8,80003f9c <__printf+0x514>
    80003af4:	60098c63          	beqz	s3,8000410c <__printf+0x684>
    80003af8:	0009c503          	lbu	a0,0(s3)
    80003afc:	00840793          	addi	a5,s0,8
    80003b00:	f6f43c23          	sd	a5,-136(s0)
    80003b04:	00000493          	li	s1,0
    80003b08:	22050063          	beqz	a0,80003d28 <__printf+0x2a0>
    80003b0c:	00002a37          	lui	s4,0x2
    80003b10:	00018ab7          	lui	s5,0x18
    80003b14:	000f4b37          	lui	s6,0xf4
    80003b18:	00989bb7          	lui	s7,0x989
    80003b1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003b20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003b24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003b28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003b2c:	00148c9b          	addiw	s9,s1,1
    80003b30:	02500793          	li	a5,37
    80003b34:	01998933          	add	s2,s3,s9
    80003b38:	38f51263          	bne	a0,a5,80003ebc <__printf+0x434>
    80003b3c:	00094783          	lbu	a5,0(s2)
    80003b40:	00078c9b          	sext.w	s9,a5
    80003b44:	1e078263          	beqz	a5,80003d28 <__printf+0x2a0>
    80003b48:	0024849b          	addiw	s1,s1,2
    80003b4c:	07000713          	li	a4,112
    80003b50:	00998933          	add	s2,s3,s1
    80003b54:	38e78a63          	beq	a5,a4,80003ee8 <__printf+0x460>
    80003b58:	20f76863          	bltu	a4,a5,80003d68 <__printf+0x2e0>
    80003b5c:	42a78863          	beq	a5,a0,80003f8c <__printf+0x504>
    80003b60:	06400713          	li	a4,100
    80003b64:	40e79663          	bne	a5,a4,80003f70 <__printf+0x4e8>
    80003b68:	f7843783          	ld	a5,-136(s0)
    80003b6c:	0007a603          	lw	a2,0(a5)
    80003b70:	00878793          	addi	a5,a5,8
    80003b74:	f6f43c23          	sd	a5,-136(s0)
    80003b78:	42064a63          	bltz	a2,80003fac <__printf+0x524>
    80003b7c:	00a00713          	li	a4,10
    80003b80:	02e677bb          	remuw	a5,a2,a4
    80003b84:	00001d97          	auipc	s11,0x1
    80003b88:	754d8d93          	addi	s11,s11,1876 # 800052d8 <digits>
    80003b8c:	00900593          	li	a1,9
    80003b90:	0006051b          	sext.w	a0,a2
    80003b94:	00000c93          	li	s9,0
    80003b98:	02079793          	slli	a5,a5,0x20
    80003b9c:	0207d793          	srli	a5,a5,0x20
    80003ba0:	00fd87b3          	add	a5,s11,a5
    80003ba4:	0007c783          	lbu	a5,0(a5)
    80003ba8:	02e656bb          	divuw	a3,a2,a4
    80003bac:	f8f40023          	sb	a5,-128(s0)
    80003bb0:	14c5d863          	bge	a1,a2,80003d00 <__printf+0x278>
    80003bb4:	06300593          	li	a1,99
    80003bb8:	00100c93          	li	s9,1
    80003bbc:	02e6f7bb          	remuw	a5,a3,a4
    80003bc0:	02079793          	slli	a5,a5,0x20
    80003bc4:	0207d793          	srli	a5,a5,0x20
    80003bc8:	00fd87b3          	add	a5,s11,a5
    80003bcc:	0007c783          	lbu	a5,0(a5)
    80003bd0:	02e6d73b          	divuw	a4,a3,a4
    80003bd4:	f8f400a3          	sb	a5,-127(s0)
    80003bd8:	12a5f463          	bgeu	a1,a0,80003d00 <__printf+0x278>
    80003bdc:	00a00693          	li	a3,10
    80003be0:	00900593          	li	a1,9
    80003be4:	02d777bb          	remuw	a5,a4,a3
    80003be8:	02079793          	slli	a5,a5,0x20
    80003bec:	0207d793          	srli	a5,a5,0x20
    80003bf0:	00fd87b3          	add	a5,s11,a5
    80003bf4:	0007c503          	lbu	a0,0(a5)
    80003bf8:	02d757bb          	divuw	a5,a4,a3
    80003bfc:	f8a40123          	sb	a0,-126(s0)
    80003c00:	48e5f263          	bgeu	a1,a4,80004084 <__printf+0x5fc>
    80003c04:	06300513          	li	a0,99
    80003c08:	02d7f5bb          	remuw	a1,a5,a3
    80003c0c:	02059593          	slli	a1,a1,0x20
    80003c10:	0205d593          	srli	a1,a1,0x20
    80003c14:	00bd85b3          	add	a1,s11,a1
    80003c18:	0005c583          	lbu	a1,0(a1)
    80003c1c:	02d7d7bb          	divuw	a5,a5,a3
    80003c20:	f8b401a3          	sb	a1,-125(s0)
    80003c24:	48e57263          	bgeu	a0,a4,800040a8 <__printf+0x620>
    80003c28:	3e700513          	li	a0,999
    80003c2c:	02d7f5bb          	remuw	a1,a5,a3
    80003c30:	02059593          	slli	a1,a1,0x20
    80003c34:	0205d593          	srli	a1,a1,0x20
    80003c38:	00bd85b3          	add	a1,s11,a1
    80003c3c:	0005c583          	lbu	a1,0(a1)
    80003c40:	02d7d7bb          	divuw	a5,a5,a3
    80003c44:	f8b40223          	sb	a1,-124(s0)
    80003c48:	46e57663          	bgeu	a0,a4,800040b4 <__printf+0x62c>
    80003c4c:	02d7f5bb          	remuw	a1,a5,a3
    80003c50:	02059593          	slli	a1,a1,0x20
    80003c54:	0205d593          	srli	a1,a1,0x20
    80003c58:	00bd85b3          	add	a1,s11,a1
    80003c5c:	0005c583          	lbu	a1,0(a1)
    80003c60:	02d7d7bb          	divuw	a5,a5,a3
    80003c64:	f8b402a3          	sb	a1,-123(s0)
    80003c68:	46ea7863          	bgeu	s4,a4,800040d8 <__printf+0x650>
    80003c6c:	02d7f5bb          	remuw	a1,a5,a3
    80003c70:	02059593          	slli	a1,a1,0x20
    80003c74:	0205d593          	srli	a1,a1,0x20
    80003c78:	00bd85b3          	add	a1,s11,a1
    80003c7c:	0005c583          	lbu	a1,0(a1)
    80003c80:	02d7d7bb          	divuw	a5,a5,a3
    80003c84:	f8b40323          	sb	a1,-122(s0)
    80003c88:	3eeaf863          	bgeu	s5,a4,80004078 <__printf+0x5f0>
    80003c8c:	02d7f5bb          	remuw	a1,a5,a3
    80003c90:	02059593          	slli	a1,a1,0x20
    80003c94:	0205d593          	srli	a1,a1,0x20
    80003c98:	00bd85b3          	add	a1,s11,a1
    80003c9c:	0005c583          	lbu	a1,0(a1)
    80003ca0:	02d7d7bb          	divuw	a5,a5,a3
    80003ca4:	f8b403a3          	sb	a1,-121(s0)
    80003ca8:	42eb7e63          	bgeu	s6,a4,800040e4 <__printf+0x65c>
    80003cac:	02d7f5bb          	remuw	a1,a5,a3
    80003cb0:	02059593          	slli	a1,a1,0x20
    80003cb4:	0205d593          	srli	a1,a1,0x20
    80003cb8:	00bd85b3          	add	a1,s11,a1
    80003cbc:	0005c583          	lbu	a1,0(a1)
    80003cc0:	02d7d7bb          	divuw	a5,a5,a3
    80003cc4:	f8b40423          	sb	a1,-120(s0)
    80003cc8:	42ebfc63          	bgeu	s7,a4,80004100 <__printf+0x678>
    80003ccc:	02079793          	slli	a5,a5,0x20
    80003cd0:	0207d793          	srli	a5,a5,0x20
    80003cd4:	00fd8db3          	add	s11,s11,a5
    80003cd8:	000dc703          	lbu	a4,0(s11)
    80003cdc:	00a00793          	li	a5,10
    80003ce0:	00900c93          	li	s9,9
    80003ce4:	f8e404a3          	sb	a4,-119(s0)
    80003ce8:	00065c63          	bgez	a2,80003d00 <__printf+0x278>
    80003cec:	f9040713          	addi	a4,s0,-112
    80003cf0:	00f70733          	add	a4,a4,a5
    80003cf4:	02d00693          	li	a3,45
    80003cf8:	fed70823          	sb	a3,-16(a4)
    80003cfc:	00078c93          	mv	s9,a5
    80003d00:	f8040793          	addi	a5,s0,-128
    80003d04:	01978cb3          	add	s9,a5,s9
    80003d08:	f7f40d13          	addi	s10,s0,-129
    80003d0c:	000cc503          	lbu	a0,0(s9)
    80003d10:	fffc8c93          	addi	s9,s9,-1
    80003d14:	00000097          	auipc	ra,0x0
    80003d18:	b90080e7          	jalr	-1136(ra) # 800038a4 <consputc>
    80003d1c:	ffac98e3          	bne	s9,s10,80003d0c <__printf+0x284>
    80003d20:	00094503          	lbu	a0,0(s2)
    80003d24:	e00514e3          	bnez	a0,80003b2c <__printf+0xa4>
    80003d28:	1a0c1663          	bnez	s8,80003ed4 <__printf+0x44c>
    80003d2c:	08813083          	ld	ra,136(sp)
    80003d30:	08013403          	ld	s0,128(sp)
    80003d34:	07813483          	ld	s1,120(sp)
    80003d38:	07013903          	ld	s2,112(sp)
    80003d3c:	06813983          	ld	s3,104(sp)
    80003d40:	06013a03          	ld	s4,96(sp)
    80003d44:	05813a83          	ld	s5,88(sp)
    80003d48:	05013b03          	ld	s6,80(sp)
    80003d4c:	04813b83          	ld	s7,72(sp)
    80003d50:	04013c03          	ld	s8,64(sp)
    80003d54:	03813c83          	ld	s9,56(sp)
    80003d58:	03013d03          	ld	s10,48(sp)
    80003d5c:	02813d83          	ld	s11,40(sp)
    80003d60:	0d010113          	addi	sp,sp,208
    80003d64:	00008067          	ret
    80003d68:	07300713          	li	a4,115
    80003d6c:	1ce78a63          	beq	a5,a4,80003f40 <__printf+0x4b8>
    80003d70:	07800713          	li	a4,120
    80003d74:	1ee79e63          	bne	a5,a4,80003f70 <__printf+0x4e8>
    80003d78:	f7843783          	ld	a5,-136(s0)
    80003d7c:	0007a703          	lw	a4,0(a5)
    80003d80:	00878793          	addi	a5,a5,8
    80003d84:	f6f43c23          	sd	a5,-136(s0)
    80003d88:	28074263          	bltz	a4,8000400c <__printf+0x584>
    80003d8c:	00001d97          	auipc	s11,0x1
    80003d90:	54cd8d93          	addi	s11,s11,1356 # 800052d8 <digits>
    80003d94:	00f77793          	andi	a5,a4,15
    80003d98:	00fd87b3          	add	a5,s11,a5
    80003d9c:	0007c683          	lbu	a3,0(a5)
    80003da0:	00f00613          	li	a2,15
    80003da4:	0007079b          	sext.w	a5,a4
    80003da8:	f8d40023          	sb	a3,-128(s0)
    80003dac:	0047559b          	srliw	a1,a4,0x4
    80003db0:	0047569b          	srliw	a3,a4,0x4
    80003db4:	00000c93          	li	s9,0
    80003db8:	0ee65063          	bge	a2,a4,80003e98 <__printf+0x410>
    80003dbc:	00f6f693          	andi	a3,a3,15
    80003dc0:	00dd86b3          	add	a3,s11,a3
    80003dc4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003dc8:	0087d79b          	srliw	a5,a5,0x8
    80003dcc:	00100c93          	li	s9,1
    80003dd0:	f8d400a3          	sb	a3,-127(s0)
    80003dd4:	0cb67263          	bgeu	a2,a1,80003e98 <__printf+0x410>
    80003dd8:	00f7f693          	andi	a3,a5,15
    80003ddc:	00dd86b3          	add	a3,s11,a3
    80003de0:	0006c583          	lbu	a1,0(a3)
    80003de4:	00f00613          	li	a2,15
    80003de8:	0047d69b          	srliw	a3,a5,0x4
    80003dec:	f8b40123          	sb	a1,-126(s0)
    80003df0:	0047d593          	srli	a1,a5,0x4
    80003df4:	28f67e63          	bgeu	a2,a5,80004090 <__printf+0x608>
    80003df8:	00f6f693          	andi	a3,a3,15
    80003dfc:	00dd86b3          	add	a3,s11,a3
    80003e00:	0006c503          	lbu	a0,0(a3)
    80003e04:	0087d813          	srli	a6,a5,0x8
    80003e08:	0087d69b          	srliw	a3,a5,0x8
    80003e0c:	f8a401a3          	sb	a0,-125(s0)
    80003e10:	28b67663          	bgeu	a2,a1,8000409c <__printf+0x614>
    80003e14:	00f6f693          	andi	a3,a3,15
    80003e18:	00dd86b3          	add	a3,s11,a3
    80003e1c:	0006c583          	lbu	a1,0(a3)
    80003e20:	00c7d513          	srli	a0,a5,0xc
    80003e24:	00c7d69b          	srliw	a3,a5,0xc
    80003e28:	f8b40223          	sb	a1,-124(s0)
    80003e2c:	29067a63          	bgeu	a2,a6,800040c0 <__printf+0x638>
    80003e30:	00f6f693          	andi	a3,a3,15
    80003e34:	00dd86b3          	add	a3,s11,a3
    80003e38:	0006c583          	lbu	a1,0(a3)
    80003e3c:	0107d813          	srli	a6,a5,0x10
    80003e40:	0107d69b          	srliw	a3,a5,0x10
    80003e44:	f8b402a3          	sb	a1,-123(s0)
    80003e48:	28a67263          	bgeu	a2,a0,800040cc <__printf+0x644>
    80003e4c:	00f6f693          	andi	a3,a3,15
    80003e50:	00dd86b3          	add	a3,s11,a3
    80003e54:	0006c683          	lbu	a3,0(a3)
    80003e58:	0147d79b          	srliw	a5,a5,0x14
    80003e5c:	f8d40323          	sb	a3,-122(s0)
    80003e60:	21067663          	bgeu	a2,a6,8000406c <__printf+0x5e4>
    80003e64:	02079793          	slli	a5,a5,0x20
    80003e68:	0207d793          	srli	a5,a5,0x20
    80003e6c:	00fd8db3          	add	s11,s11,a5
    80003e70:	000dc683          	lbu	a3,0(s11)
    80003e74:	00800793          	li	a5,8
    80003e78:	00700c93          	li	s9,7
    80003e7c:	f8d403a3          	sb	a3,-121(s0)
    80003e80:	00075c63          	bgez	a4,80003e98 <__printf+0x410>
    80003e84:	f9040713          	addi	a4,s0,-112
    80003e88:	00f70733          	add	a4,a4,a5
    80003e8c:	02d00693          	li	a3,45
    80003e90:	fed70823          	sb	a3,-16(a4)
    80003e94:	00078c93          	mv	s9,a5
    80003e98:	f8040793          	addi	a5,s0,-128
    80003e9c:	01978cb3          	add	s9,a5,s9
    80003ea0:	f7f40d13          	addi	s10,s0,-129
    80003ea4:	000cc503          	lbu	a0,0(s9)
    80003ea8:	fffc8c93          	addi	s9,s9,-1
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	9f8080e7          	jalr	-1544(ra) # 800038a4 <consputc>
    80003eb4:	ff9d18e3          	bne	s10,s9,80003ea4 <__printf+0x41c>
    80003eb8:	0100006f          	j	80003ec8 <__printf+0x440>
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	9e8080e7          	jalr	-1560(ra) # 800038a4 <consputc>
    80003ec4:	000c8493          	mv	s1,s9
    80003ec8:	00094503          	lbu	a0,0(s2)
    80003ecc:	c60510e3          	bnez	a0,80003b2c <__printf+0xa4>
    80003ed0:	e40c0ee3          	beqz	s8,80003d2c <__printf+0x2a4>
    80003ed4:	00003517          	auipc	a0,0x3
    80003ed8:	40c50513          	addi	a0,a0,1036 # 800072e0 <pr>
    80003edc:	00001097          	auipc	ra,0x1
    80003ee0:	94c080e7          	jalr	-1716(ra) # 80004828 <release>
    80003ee4:	e49ff06f          	j	80003d2c <__printf+0x2a4>
    80003ee8:	f7843783          	ld	a5,-136(s0)
    80003eec:	03000513          	li	a0,48
    80003ef0:	01000d13          	li	s10,16
    80003ef4:	00878713          	addi	a4,a5,8
    80003ef8:	0007bc83          	ld	s9,0(a5)
    80003efc:	f6e43c23          	sd	a4,-136(s0)
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	9a4080e7          	jalr	-1628(ra) # 800038a4 <consputc>
    80003f08:	07800513          	li	a0,120
    80003f0c:	00000097          	auipc	ra,0x0
    80003f10:	998080e7          	jalr	-1640(ra) # 800038a4 <consputc>
    80003f14:	00001d97          	auipc	s11,0x1
    80003f18:	3c4d8d93          	addi	s11,s11,964 # 800052d8 <digits>
    80003f1c:	03ccd793          	srli	a5,s9,0x3c
    80003f20:	00fd87b3          	add	a5,s11,a5
    80003f24:	0007c503          	lbu	a0,0(a5)
    80003f28:	fffd0d1b          	addiw	s10,s10,-1
    80003f2c:	004c9c93          	slli	s9,s9,0x4
    80003f30:	00000097          	auipc	ra,0x0
    80003f34:	974080e7          	jalr	-1676(ra) # 800038a4 <consputc>
    80003f38:	fe0d12e3          	bnez	s10,80003f1c <__printf+0x494>
    80003f3c:	f8dff06f          	j	80003ec8 <__printf+0x440>
    80003f40:	f7843783          	ld	a5,-136(s0)
    80003f44:	0007bc83          	ld	s9,0(a5)
    80003f48:	00878793          	addi	a5,a5,8
    80003f4c:	f6f43c23          	sd	a5,-136(s0)
    80003f50:	000c9a63          	bnez	s9,80003f64 <__printf+0x4dc>
    80003f54:	1080006f          	j	8000405c <__printf+0x5d4>
    80003f58:	001c8c93          	addi	s9,s9,1
    80003f5c:	00000097          	auipc	ra,0x0
    80003f60:	948080e7          	jalr	-1720(ra) # 800038a4 <consputc>
    80003f64:	000cc503          	lbu	a0,0(s9)
    80003f68:	fe0518e3          	bnez	a0,80003f58 <__printf+0x4d0>
    80003f6c:	f5dff06f          	j	80003ec8 <__printf+0x440>
    80003f70:	02500513          	li	a0,37
    80003f74:	00000097          	auipc	ra,0x0
    80003f78:	930080e7          	jalr	-1744(ra) # 800038a4 <consputc>
    80003f7c:	000c8513          	mv	a0,s9
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	924080e7          	jalr	-1756(ra) # 800038a4 <consputc>
    80003f88:	f41ff06f          	j	80003ec8 <__printf+0x440>
    80003f8c:	02500513          	li	a0,37
    80003f90:	00000097          	auipc	ra,0x0
    80003f94:	914080e7          	jalr	-1772(ra) # 800038a4 <consputc>
    80003f98:	f31ff06f          	j	80003ec8 <__printf+0x440>
    80003f9c:	00030513          	mv	a0,t1
    80003fa0:	00000097          	auipc	ra,0x0
    80003fa4:	7bc080e7          	jalr	1980(ra) # 8000475c <acquire>
    80003fa8:	b4dff06f          	j	80003af4 <__printf+0x6c>
    80003fac:	40c0053b          	negw	a0,a2
    80003fb0:	00a00713          	li	a4,10
    80003fb4:	02e576bb          	remuw	a3,a0,a4
    80003fb8:	00001d97          	auipc	s11,0x1
    80003fbc:	320d8d93          	addi	s11,s11,800 # 800052d8 <digits>
    80003fc0:	ff700593          	li	a1,-9
    80003fc4:	02069693          	slli	a3,a3,0x20
    80003fc8:	0206d693          	srli	a3,a3,0x20
    80003fcc:	00dd86b3          	add	a3,s11,a3
    80003fd0:	0006c683          	lbu	a3,0(a3)
    80003fd4:	02e557bb          	divuw	a5,a0,a4
    80003fd8:	f8d40023          	sb	a3,-128(s0)
    80003fdc:	10b65e63          	bge	a2,a1,800040f8 <__printf+0x670>
    80003fe0:	06300593          	li	a1,99
    80003fe4:	02e7f6bb          	remuw	a3,a5,a4
    80003fe8:	02069693          	slli	a3,a3,0x20
    80003fec:	0206d693          	srli	a3,a3,0x20
    80003ff0:	00dd86b3          	add	a3,s11,a3
    80003ff4:	0006c683          	lbu	a3,0(a3)
    80003ff8:	02e7d73b          	divuw	a4,a5,a4
    80003ffc:	00200793          	li	a5,2
    80004000:	f8d400a3          	sb	a3,-127(s0)
    80004004:	bca5ece3          	bltu	a1,a0,80003bdc <__printf+0x154>
    80004008:	ce5ff06f          	j	80003cec <__printf+0x264>
    8000400c:	40e007bb          	negw	a5,a4
    80004010:	00001d97          	auipc	s11,0x1
    80004014:	2c8d8d93          	addi	s11,s11,712 # 800052d8 <digits>
    80004018:	00f7f693          	andi	a3,a5,15
    8000401c:	00dd86b3          	add	a3,s11,a3
    80004020:	0006c583          	lbu	a1,0(a3)
    80004024:	ff100613          	li	a2,-15
    80004028:	0047d69b          	srliw	a3,a5,0x4
    8000402c:	f8b40023          	sb	a1,-128(s0)
    80004030:	0047d59b          	srliw	a1,a5,0x4
    80004034:	0ac75e63          	bge	a4,a2,800040f0 <__printf+0x668>
    80004038:	00f6f693          	andi	a3,a3,15
    8000403c:	00dd86b3          	add	a3,s11,a3
    80004040:	0006c603          	lbu	a2,0(a3)
    80004044:	00f00693          	li	a3,15
    80004048:	0087d79b          	srliw	a5,a5,0x8
    8000404c:	f8c400a3          	sb	a2,-127(s0)
    80004050:	d8b6e4e3          	bltu	a3,a1,80003dd8 <__printf+0x350>
    80004054:	00200793          	li	a5,2
    80004058:	e2dff06f          	j	80003e84 <__printf+0x3fc>
    8000405c:	00001c97          	auipc	s9,0x1
    80004060:	25cc8c93          	addi	s9,s9,604 # 800052b8 <CONSOLE_STATUS+0x2a8>
    80004064:	02800513          	li	a0,40
    80004068:	ef1ff06f          	j	80003f58 <__printf+0x4d0>
    8000406c:	00700793          	li	a5,7
    80004070:	00600c93          	li	s9,6
    80004074:	e0dff06f          	j	80003e80 <__printf+0x3f8>
    80004078:	00700793          	li	a5,7
    8000407c:	00600c93          	li	s9,6
    80004080:	c69ff06f          	j	80003ce8 <__printf+0x260>
    80004084:	00300793          	li	a5,3
    80004088:	00200c93          	li	s9,2
    8000408c:	c5dff06f          	j	80003ce8 <__printf+0x260>
    80004090:	00300793          	li	a5,3
    80004094:	00200c93          	li	s9,2
    80004098:	de9ff06f          	j	80003e80 <__printf+0x3f8>
    8000409c:	00400793          	li	a5,4
    800040a0:	00300c93          	li	s9,3
    800040a4:	dddff06f          	j	80003e80 <__printf+0x3f8>
    800040a8:	00400793          	li	a5,4
    800040ac:	00300c93          	li	s9,3
    800040b0:	c39ff06f          	j	80003ce8 <__printf+0x260>
    800040b4:	00500793          	li	a5,5
    800040b8:	00400c93          	li	s9,4
    800040bc:	c2dff06f          	j	80003ce8 <__printf+0x260>
    800040c0:	00500793          	li	a5,5
    800040c4:	00400c93          	li	s9,4
    800040c8:	db9ff06f          	j	80003e80 <__printf+0x3f8>
    800040cc:	00600793          	li	a5,6
    800040d0:	00500c93          	li	s9,5
    800040d4:	dadff06f          	j	80003e80 <__printf+0x3f8>
    800040d8:	00600793          	li	a5,6
    800040dc:	00500c93          	li	s9,5
    800040e0:	c09ff06f          	j	80003ce8 <__printf+0x260>
    800040e4:	00800793          	li	a5,8
    800040e8:	00700c93          	li	s9,7
    800040ec:	bfdff06f          	j	80003ce8 <__printf+0x260>
    800040f0:	00100793          	li	a5,1
    800040f4:	d91ff06f          	j	80003e84 <__printf+0x3fc>
    800040f8:	00100793          	li	a5,1
    800040fc:	bf1ff06f          	j	80003cec <__printf+0x264>
    80004100:	00900793          	li	a5,9
    80004104:	00800c93          	li	s9,8
    80004108:	be1ff06f          	j	80003ce8 <__printf+0x260>
    8000410c:	00001517          	auipc	a0,0x1
    80004110:	1b450513          	addi	a0,a0,436 # 800052c0 <CONSOLE_STATUS+0x2b0>
    80004114:	00000097          	auipc	ra,0x0
    80004118:	918080e7          	jalr	-1768(ra) # 80003a2c <panic>

000000008000411c <printfinit>:
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	00113c23          	sd	ra,24(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	00003497          	auipc	s1,0x3
    80004134:	1b048493          	addi	s1,s1,432 # 800072e0 <pr>
    80004138:	00048513          	mv	a0,s1
    8000413c:	00001597          	auipc	a1,0x1
    80004140:	19458593          	addi	a1,a1,404 # 800052d0 <CONSOLE_STATUS+0x2c0>
    80004144:	00000097          	auipc	ra,0x0
    80004148:	5f4080e7          	jalr	1524(ra) # 80004738 <initlock>
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	01013403          	ld	s0,16(sp)
    80004154:	0004ac23          	sw	zero,24(s1)
    80004158:	00813483          	ld	s1,8(sp)
    8000415c:	02010113          	addi	sp,sp,32
    80004160:	00008067          	ret

0000000080004164 <uartinit>:
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00813423          	sd	s0,8(sp)
    8000416c:	01010413          	addi	s0,sp,16
    80004170:	100007b7          	lui	a5,0x10000
    80004174:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004178:	f8000713          	li	a4,-128
    8000417c:	00e781a3          	sb	a4,3(a5)
    80004180:	00300713          	li	a4,3
    80004184:	00e78023          	sb	a4,0(a5)
    80004188:	000780a3          	sb	zero,1(a5)
    8000418c:	00e781a3          	sb	a4,3(a5)
    80004190:	00700693          	li	a3,7
    80004194:	00d78123          	sb	a3,2(a5)
    80004198:	00e780a3          	sb	a4,1(a5)
    8000419c:	00813403          	ld	s0,8(sp)
    800041a0:	01010113          	addi	sp,sp,16
    800041a4:	00008067          	ret

00000000800041a8 <uartputc>:
    800041a8:	00002797          	auipc	a5,0x2
    800041ac:	ea07a783          	lw	a5,-352(a5) # 80006048 <panicked>
    800041b0:	00078463          	beqz	a5,800041b8 <uartputc+0x10>
    800041b4:	0000006f          	j	800041b4 <uartputc+0xc>
    800041b8:	fd010113          	addi	sp,sp,-48
    800041bc:	02813023          	sd	s0,32(sp)
    800041c0:	00913c23          	sd	s1,24(sp)
    800041c4:	01213823          	sd	s2,16(sp)
    800041c8:	01313423          	sd	s3,8(sp)
    800041cc:	02113423          	sd	ra,40(sp)
    800041d0:	03010413          	addi	s0,sp,48
    800041d4:	00002917          	auipc	s2,0x2
    800041d8:	e7c90913          	addi	s2,s2,-388 # 80006050 <uart_tx_r>
    800041dc:	00093783          	ld	a5,0(s2)
    800041e0:	00002497          	auipc	s1,0x2
    800041e4:	e7848493          	addi	s1,s1,-392 # 80006058 <uart_tx_w>
    800041e8:	0004b703          	ld	a4,0(s1)
    800041ec:	02078693          	addi	a3,a5,32
    800041f0:	00050993          	mv	s3,a0
    800041f4:	02e69c63          	bne	a3,a4,8000422c <uartputc+0x84>
    800041f8:	00001097          	auipc	ra,0x1
    800041fc:	834080e7          	jalr	-1996(ra) # 80004a2c <push_on>
    80004200:	00093783          	ld	a5,0(s2)
    80004204:	0004b703          	ld	a4,0(s1)
    80004208:	02078793          	addi	a5,a5,32
    8000420c:	00e79463          	bne	a5,a4,80004214 <uartputc+0x6c>
    80004210:	0000006f          	j	80004210 <uartputc+0x68>
    80004214:	00001097          	auipc	ra,0x1
    80004218:	88c080e7          	jalr	-1908(ra) # 80004aa0 <pop_on>
    8000421c:	00093783          	ld	a5,0(s2)
    80004220:	0004b703          	ld	a4,0(s1)
    80004224:	02078693          	addi	a3,a5,32
    80004228:	fce688e3          	beq	a3,a4,800041f8 <uartputc+0x50>
    8000422c:	01f77693          	andi	a3,a4,31
    80004230:	00003597          	auipc	a1,0x3
    80004234:	0d058593          	addi	a1,a1,208 # 80007300 <uart_tx_buf>
    80004238:	00d586b3          	add	a3,a1,a3
    8000423c:	00170713          	addi	a4,a4,1
    80004240:	01368023          	sb	s3,0(a3)
    80004244:	00e4b023          	sd	a4,0(s1)
    80004248:	10000637          	lui	a2,0x10000
    8000424c:	02f71063          	bne	a4,a5,8000426c <uartputc+0xc4>
    80004250:	0340006f          	j	80004284 <uartputc+0xdc>
    80004254:	00074703          	lbu	a4,0(a4)
    80004258:	00f93023          	sd	a5,0(s2)
    8000425c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004260:	00093783          	ld	a5,0(s2)
    80004264:	0004b703          	ld	a4,0(s1)
    80004268:	00f70e63          	beq	a4,a5,80004284 <uartputc+0xdc>
    8000426c:	00564683          	lbu	a3,5(a2)
    80004270:	01f7f713          	andi	a4,a5,31
    80004274:	00e58733          	add	a4,a1,a4
    80004278:	0206f693          	andi	a3,a3,32
    8000427c:	00178793          	addi	a5,a5,1
    80004280:	fc069ae3          	bnez	a3,80004254 <uartputc+0xac>
    80004284:	02813083          	ld	ra,40(sp)
    80004288:	02013403          	ld	s0,32(sp)
    8000428c:	01813483          	ld	s1,24(sp)
    80004290:	01013903          	ld	s2,16(sp)
    80004294:	00813983          	ld	s3,8(sp)
    80004298:	03010113          	addi	sp,sp,48
    8000429c:	00008067          	ret

00000000800042a0 <uartputc_sync>:
    800042a0:	ff010113          	addi	sp,sp,-16
    800042a4:	00813423          	sd	s0,8(sp)
    800042a8:	01010413          	addi	s0,sp,16
    800042ac:	00002717          	auipc	a4,0x2
    800042b0:	d9c72703          	lw	a4,-612(a4) # 80006048 <panicked>
    800042b4:	02071663          	bnez	a4,800042e0 <uartputc_sync+0x40>
    800042b8:	00050793          	mv	a5,a0
    800042bc:	100006b7          	lui	a3,0x10000
    800042c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800042c4:	02077713          	andi	a4,a4,32
    800042c8:	fe070ce3          	beqz	a4,800042c0 <uartputc_sync+0x20>
    800042cc:	0ff7f793          	andi	a5,a5,255
    800042d0:	00f68023          	sb	a5,0(a3)
    800042d4:	00813403          	ld	s0,8(sp)
    800042d8:	01010113          	addi	sp,sp,16
    800042dc:	00008067          	ret
    800042e0:	0000006f          	j	800042e0 <uartputc_sync+0x40>

00000000800042e4 <uartstart>:
    800042e4:	ff010113          	addi	sp,sp,-16
    800042e8:	00813423          	sd	s0,8(sp)
    800042ec:	01010413          	addi	s0,sp,16
    800042f0:	00002617          	auipc	a2,0x2
    800042f4:	d6060613          	addi	a2,a2,-672 # 80006050 <uart_tx_r>
    800042f8:	00002517          	auipc	a0,0x2
    800042fc:	d6050513          	addi	a0,a0,-672 # 80006058 <uart_tx_w>
    80004300:	00063783          	ld	a5,0(a2)
    80004304:	00053703          	ld	a4,0(a0)
    80004308:	04f70263          	beq	a4,a5,8000434c <uartstart+0x68>
    8000430c:	100005b7          	lui	a1,0x10000
    80004310:	00003817          	auipc	a6,0x3
    80004314:	ff080813          	addi	a6,a6,-16 # 80007300 <uart_tx_buf>
    80004318:	01c0006f          	j	80004334 <uartstart+0x50>
    8000431c:	0006c703          	lbu	a4,0(a3)
    80004320:	00f63023          	sd	a5,0(a2)
    80004324:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004328:	00063783          	ld	a5,0(a2)
    8000432c:	00053703          	ld	a4,0(a0)
    80004330:	00f70e63          	beq	a4,a5,8000434c <uartstart+0x68>
    80004334:	01f7f713          	andi	a4,a5,31
    80004338:	00e806b3          	add	a3,a6,a4
    8000433c:	0055c703          	lbu	a4,5(a1)
    80004340:	00178793          	addi	a5,a5,1
    80004344:	02077713          	andi	a4,a4,32
    80004348:	fc071ae3          	bnez	a4,8000431c <uartstart+0x38>
    8000434c:	00813403          	ld	s0,8(sp)
    80004350:	01010113          	addi	sp,sp,16
    80004354:	00008067          	ret

0000000080004358 <uartgetc>:
    80004358:	ff010113          	addi	sp,sp,-16
    8000435c:	00813423          	sd	s0,8(sp)
    80004360:	01010413          	addi	s0,sp,16
    80004364:	10000737          	lui	a4,0x10000
    80004368:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000436c:	0017f793          	andi	a5,a5,1
    80004370:	00078c63          	beqz	a5,80004388 <uartgetc+0x30>
    80004374:	00074503          	lbu	a0,0(a4)
    80004378:	0ff57513          	andi	a0,a0,255
    8000437c:	00813403          	ld	s0,8(sp)
    80004380:	01010113          	addi	sp,sp,16
    80004384:	00008067          	ret
    80004388:	fff00513          	li	a0,-1
    8000438c:	ff1ff06f          	j	8000437c <uartgetc+0x24>

0000000080004390 <uartintr>:
    80004390:	100007b7          	lui	a5,0x10000
    80004394:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004398:	0017f793          	andi	a5,a5,1
    8000439c:	0a078463          	beqz	a5,80004444 <uartintr+0xb4>
    800043a0:	fe010113          	addi	sp,sp,-32
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00913423          	sd	s1,8(sp)
    800043ac:	00113c23          	sd	ra,24(sp)
    800043b0:	02010413          	addi	s0,sp,32
    800043b4:	100004b7          	lui	s1,0x10000
    800043b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800043bc:	0ff57513          	andi	a0,a0,255
    800043c0:	fffff097          	auipc	ra,0xfffff
    800043c4:	534080e7          	jalr	1332(ra) # 800038f4 <consoleintr>
    800043c8:	0054c783          	lbu	a5,5(s1)
    800043cc:	0017f793          	andi	a5,a5,1
    800043d0:	fe0794e3          	bnez	a5,800043b8 <uartintr+0x28>
    800043d4:	00002617          	auipc	a2,0x2
    800043d8:	c7c60613          	addi	a2,a2,-900 # 80006050 <uart_tx_r>
    800043dc:	00002517          	auipc	a0,0x2
    800043e0:	c7c50513          	addi	a0,a0,-900 # 80006058 <uart_tx_w>
    800043e4:	00063783          	ld	a5,0(a2)
    800043e8:	00053703          	ld	a4,0(a0)
    800043ec:	04f70263          	beq	a4,a5,80004430 <uartintr+0xa0>
    800043f0:	100005b7          	lui	a1,0x10000
    800043f4:	00003817          	auipc	a6,0x3
    800043f8:	f0c80813          	addi	a6,a6,-244 # 80007300 <uart_tx_buf>
    800043fc:	01c0006f          	j	80004418 <uartintr+0x88>
    80004400:	0006c703          	lbu	a4,0(a3)
    80004404:	00f63023          	sd	a5,0(a2)
    80004408:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000440c:	00063783          	ld	a5,0(a2)
    80004410:	00053703          	ld	a4,0(a0)
    80004414:	00f70e63          	beq	a4,a5,80004430 <uartintr+0xa0>
    80004418:	01f7f713          	andi	a4,a5,31
    8000441c:	00e806b3          	add	a3,a6,a4
    80004420:	0055c703          	lbu	a4,5(a1)
    80004424:	00178793          	addi	a5,a5,1
    80004428:	02077713          	andi	a4,a4,32
    8000442c:	fc071ae3          	bnez	a4,80004400 <uartintr+0x70>
    80004430:	01813083          	ld	ra,24(sp)
    80004434:	01013403          	ld	s0,16(sp)
    80004438:	00813483          	ld	s1,8(sp)
    8000443c:	02010113          	addi	sp,sp,32
    80004440:	00008067          	ret
    80004444:	00002617          	auipc	a2,0x2
    80004448:	c0c60613          	addi	a2,a2,-1012 # 80006050 <uart_tx_r>
    8000444c:	00002517          	auipc	a0,0x2
    80004450:	c0c50513          	addi	a0,a0,-1012 # 80006058 <uart_tx_w>
    80004454:	00063783          	ld	a5,0(a2)
    80004458:	00053703          	ld	a4,0(a0)
    8000445c:	04f70263          	beq	a4,a5,800044a0 <uartintr+0x110>
    80004460:	100005b7          	lui	a1,0x10000
    80004464:	00003817          	auipc	a6,0x3
    80004468:	e9c80813          	addi	a6,a6,-356 # 80007300 <uart_tx_buf>
    8000446c:	01c0006f          	j	80004488 <uartintr+0xf8>
    80004470:	0006c703          	lbu	a4,0(a3)
    80004474:	00f63023          	sd	a5,0(a2)
    80004478:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000447c:	00063783          	ld	a5,0(a2)
    80004480:	00053703          	ld	a4,0(a0)
    80004484:	02f70063          	beq	a4,a5,800044a4 <uartintr+0x114>
    80004488:	01f7f713          	andi	a4,a5,31
    8000448c:	00e806b3          	add	a3,a6,a4
    80004490:	0055c703          	lbu	a4,5(a1)
    80004494:	00178793          	addi	a5,a5,1
    80004498:	02077713          	andi	a4,a4,32
    8000449c:	fc071ae3          	bnez	a4,80004470 <uartintr+0xe0>
    800044a0:	00008067          	ret
    800044a4:	00008067          	ret

00000000800044a8 <kinit>:
    800044a8:	fc010113          	addi	sp,sp,-64
    800044ac:	02913423          	sd	s1,40(sp)
    800044b0:	fffff7b7          	lui	a5,0xfffff
    800044b4:	00004497          	auipc	s1,0x4
    800044b8:	e6b48493          	addi	s1,s1,-405 # 8000831f <end+0xfff>
    800044bc:	02813823          	sd	s0,48(sp)
    800044c0:	01313c23          	sd	s3,24(sp)
    800044c4:	00f4f4b3          	and	s1,s1,a5
    800044c8:	02113c23          	sd	ra,56(sp)
    800044cc:	03213023          	sd	s2,32(sp)
    800044d0:	01413823          	sd	s4,16(sp)
    800044d4:	01513423          	sd	s5,8(sp)
    800044d8:	04010413          	addi	s0,sp,64
    800044dc:	000017b7          	lui	a5,0x1
    800044e0:	01100993          	li	s3,17
    800044e4:	00f487b3          	add	a5,s1,a5
    800044e8:	01b99993          	slli	s3,s3,0x1b
    800044ec:	06f9e063          	bltu	s3,a5,8000454c <kinit+0xa4>
    800044f0:	00003a97          	auipc	s5,0x3
    800044f4:	e30a8a93          	addi	s5,s5,-464 # 80007320 <end>
    800044f8:	0754ec63          	bltu	s1,s5,80004570 <kinit+0xc8>
    800044fc:	0734fa63          	bgeu	s1,s3,80004570 <kinit+0xc8>
    80004500:	00088a37          	lui	s4,0x88
    80004504:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004508:	00002917          	auipc	s2,0x2
    8000450c:	b5890913          	addi	s2,s2,-1192 # 80006060 <kmem>
    80004510:	00ca1a13          	slli	s4,s4,0xc
    80004514:	0140006f          	j	80004528 <kinit+0x80>
    80004518:	000017b7          	lui	a5,0x1
    8000451c:	00f484b3          	add	s1,s1,a5
    80004520:	0554e863          	bltu	s1,s5,80004570 <kinit+0xc8>
    80004524:	0534f663          	bgeu	s1,s3,80004570 <kinit+0xc8>
    80004528:	00001637          	lui	a2,0x1
    8000452c:	00100593          	li	a1,1
    80004530:	00048513          	mv	a0,s1
    80004534:	00000097          	auipc	ra,0x0
    80004538:	5e4080e7          	jalr	1508(ra) # 80004b18 <__memset>
    8000453c:	00093783          	ld	a5,0(s2)
    80004540:	00f4b023          	sd	a5,0(s1)
    80004544:	00993023          	sd	s1,0(s2)
    80004548:	fd4498e3          	bne	s1,s4,80004518 <kinit+0x70>
    8000454c:	03813083          	ld	ra,56(sp)
    80004550:	03013403          	ld	s0,48(sp)
    80004554:	02813483          	ld	s1,40(sp)
    80004558:	02013903          	ld	s2,32(sp)
    8000455c:	01813983          	ld	s3,24(sp)
    80004560:	01013a03          	ld	s4,16(sp)
    80004564:	00813a83          	ld	s5,8(sp)
    80004568:	04010113          	addi	sp,sp,64
    8000456c:	00008067          	ret
    80004570:	00001517          	auipc	a0,0x1
    80004574:	d8050513          	addi	a0,a0,-640 # 800052f0 <digits+0x18>
    80004578:	fffff097          	auipc	ra,0xfffff
    8000457c:	4b4080e7          	jalr	1204(ra) # 80003a2c <panic>

0000000080004580 <freerange>:
    80004580:	fc010113          	addi	sp,sp,-64
    80004584:	000017b7          	lui	a5,0x1
    80004588:	02913423          	sd	s1,40(sp)
    8000458c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004590:	009504b3          	add	s1,a0,s1
    80004594:	fffff537          	lui	a0,0xfffff
    80004598:	02813823          	sd	s0,48(sp)
    8000459c:	02113c23          	sd	ra,56(sp)
    800045a0:	03213023          	sd	s2,32(sp)
    800045a4:	01313c23          	sd	s3,24(sp)
    800045a8:	01413823          	sd	s4,16(sp)
    800045ac:	01513423          	sd	s5,8(sp)
    800045b0:	01613023          	sd	s6,0(sp)
    800045b4:	04010413          	addi	s0,sp,64
    800045b8:	00a4f4b3          	and	s1,s1,a0
    800045bc:	00f487b3          	add	a5,s1,a5
    800045c0:	06f5e463          	bltu	a1,a5,80004628 <freerange+0xa8>
    800045c4:	00003a97          	auipc	s5,0x3
    800045c8:	d5ca8a93          	addi	s5,s5,-676 # 80007320 <end>
    800045cc:	0954e263          	bltu	s1,s5,80004650 <freerange+0xd0>
    800045d0:	01100993          	li	s3,17
    800045d4:	01b99993          	slli	s3,s3,0x1b
    800045d8:	0734fc63          	bgeu	s1,s3,80004650 <freerange+0xd0>
    800045dc:	00058a13          	mv	s4,a1
    800045e0:	00002917          	auipc	s2,0x2
    800045e4:	a8090913          	addi	s2,s2,-1408 # 80006060 <kmem>
    800045e8:	00002b37          	lui	s6,0x2
    800045ec:	0140006f          	j	80004600 <freerange+0x80>
    800045f0:	000017b7          	lui	a5,0x1
    800045f4:	00f484b3          	add	s1,s1,a5
    800045f8:	0554ec63          	bltu	s1,s5,80004650 <freerange+0xd0>
    800045fc:	0534fa63          	bgeu	s1,s3,80004650 <freerange+0xd0>
    80004600:	00001637          	lui	a2,0x1
    80004604:	00100593          	li	a1,1
    80004608:	00048513          	mv	a0,s1
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	50c080e7          	jalr	1292(ra) # 80004b18 <__memset>
    80004614:	00093703          	ld	a4,0(s2)
    80004618:	016487b3          	add	a5,s1,s6
    8000461c:	00e4b023          	sd	a4,0(s1)
    80004620:	00993023          	sd	s1,0(s2)
    80004624:	fcfa76e3          	bgeu	s4,a5,800045f0 <freerange+0x70>
    80004628:	03813083          	ld	ra,56(sp)
    8000462c:	03013403          	ld	s0,48(sp)
    80004630:	02813483          	ld	s1,40(sp)
    80004634:	02013903          	ld	s2,32(sp)
    80004638:	01813983          	ld	s3,24(sp)
    8000463c:	01013a03          	ld	s4,16(sp)
    80004640:	00813a83          	ld	s5,8(sp)
    80004644:	00013b03          	ld	s6,0(sp)
    80004648:	04010113          	addi	sp,sp,64
    8000464c:	00008067          	ret
    80004650:	00001517          	auipc	a0,0x1
    80004654:	ca050513          	addi	a0,a0,-864 # 800052f0 <digits+0x18>
    80004658:	fffff097          	auipc	ra,0xfffff
    8000465c:	3d4080e7          	jalr	980(ra) # 80003a2c <panic>

0000000080004660 <kfree>:
    80004660:	fe010113          	addi	sp,sp,-32
    80004664:	00813823          	sd	s0,16(sp)
    80004668:	00113c23          	sd	ra,24(sp)
    8000466c:	00913423          	sd	s1,8(sp)
    80004670:	02010413          	addi	s0,sp,32
    80004674:	03451793          	slli	a5,a0,0x34
    80004678:	04079c63          	bnez	a5,800046d0 <kfree+0x70>
    8000467c:	00003797          	auipc	a5,0x3
    80004680:	ca478793          	addi	a5,a5,-860 # 80007320 <end>
    80004684:	00050493          	mv	s1,a0
    80004688:	04f56463          	bltu	a0,a5,800046d0 <kfree+0x70>
    8000468c:	01100793          	li	a5,17
    80004690:	01b79793          	slli	a5,a5,0x1b
    80004694:	02f57e63          	bgeu	a0,a5,800046d0 <kfree+0x70>
    80004698:	00001637          	lui	a2,0x1
    8000469c:	00100593          	li	a1,1
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	478080e7          	jalr	1144(ra) # 80004b18 <__memset>
    800046a8:	00002797          	auipc	a5,0x2
    800046ac:	9b878793          	addi	a5,a5,-1608 # 80006060 <kmem>
    800046b0:	0007b703          	ld	a4,0(a5)
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00e4b023          	sd	a4,0(s1)
    800046c0:	0097b023          	sd	s1,0(a5)
    800046c4:	00813483          	ld	s1,8(sp)
    800046c8:	02010113          	addi	sp,sp,32
    800046cc:	00008067          	ret
    800046d0:	00001517          	auipc	a0,0x1
    800046d4:	c2050513          	addi	a0,a0,-992 # 800052f0 <digits+0x18>
    800046d8:	fffff097          	auipc	ra,0xfffff
    800046dc:	354080e7          	jalr	852(ra) # 80003a2c <panic>

00000000800046e0 <kalloc>:
    800046e0:	fe010113          	addi	sp,sp,-32
    800046e4:	00813823          	sd	s0,16(sp)
    800046e8:	00913423          	sd	s1,8(sp)
    800046ec:	00113c23          	sd	ra,24(sp)
    800046f0:	02010413          	addi	s0,sp,32
    800046f4:	00002797          	auipc	a5,0x2
    800046f8:	96c78793          	addi	a5,a5,-1684 # 80006060 <kmem>
    800046fc:	0007b483          	ld	s1,0(a5)
    80004700:	02048063          	beqz	s1,80004720 <kalloc+0x40>
    80004704:	0004b703          	ld	a4,0(s1)
    80004708:	00001637          	lui	a2,0x1
    8000470c:	00500593          	li	a1,5
    80004710:	00048513          	mv	a0,s1
    80004714:	00e7b023          	sd	a4,0(a5)
    80004718:	00000097          	auipc	ra,0x0
    8000471c:	400080e7          	jalr	1024(ra) # 80004b18 <__memset>
    80004720:	01813083          	ld	ra,24(sp)
    80004724:	01013403          	ld	s0,16(sp)
    80004728:	00048513          	mv	a0,s1
    8000472c:	00813483          	ld	s1,8(sp)
    80004730:	02010113          	addi	sp,sp,32
    80004734:	00008067          	ret

0000000080004738 <initlock>:
    80004738:	ff010113          	addi	sp,sp,-16
    8000473c:	00813423          	sd	s0,8(sp)
    80004740:	01010413          	addi	s0,sp,16
    80004744:	00813403          	ld	s0,8(sp)
    80004748:	00b53423          	sd	a1,8(a0)
    8000474c:	00052023          	sw	zero,0(a0)
    80004750:	00053823          	sd	zero,16(a0)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret

000000008000475c <acquire>:
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00813823          	sd	s0,16(sp)
    80004764:	00913423          	sd	s1,8(sp)
    80004768:	00113c23          	sd	ra,24(sp)
    8000476c:	01213023          	sd	s2,0(sp)
    80004770:	02010413          	addi	s0,sp,32
    80004774:	00050493          	mv	s1,a0
    80004778:	10002973          	csrr	s2,sstatus
    8000477c:	100027f3          	csrr	a5,sstatus
    80004780:	ffd7f793          	andi	a5,a5,-3
    80004784:	10079073          	csrw	sstatus,a5
    80004788:	fffff097          	auipc	ra,0xfffff
    8000478c:	8e0080e7          	jalr	-1824(ra) # 80003068 <mycpu>
    80004790:	07852783          	lw	a5,120(a0)
    80004794:	06078e63          	beqz	a5,80004810 <acquire+0xb4>
    80004798:	fffff097          	auipc	ra,0xfffff
    8000479c:	8d0080e7          	jalr	-1840(ra) # 80003068 <mycpu>
    800047a0:	07852783          	lw	a5,120(a0)
    800047a4:	0004a703          	lw	a4,0(s1)
    800047a8:	0017879b          	addiw	a5,a5,1
    800047ac:	06f52c23          	sw	a5,120(a0)
    800047b0:	04071063          	bnez	a4,800047f0 <acquire+0x94>
    800047b4:	00100713          	li	a4,1
    800047b8:	00070793          	mv	a5,a4
    800047bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800047c0:	0007879b          	sext.w	a5,a5
    800047c4:	fe079ae3          	bnez	a5,800047b8 <acquire+0x5c>
    800047c8:	0ff0000f          	fence
    800047cc:	fffff097          	auipc	ra,0xfffff
    800047d0:	89c080e7          	jalr	-1892(ra) # 80003068 <mycpu>
    800047d4:	01813083          	ld	ra,24(sp)
    800047d8:	01013403          	ld	s0,16(sp)
    800047dc:	00a4b823          	sd	a0,16(s1)
    800047e0:	00013903          	ld	s2,0(sp)
    800047e4:	00813483          	ld	s1,8(sp)
    800047e8:	02010113          	addi	sp,sp,32
    800047ec:	00008067          	ret
    800047f0:	0104b903          	ld	s2,16(s1)
    800047f4:	fffff097          	auipc	ra,0xfffff
    800047f8:	874080e7          	jalr	-1932(ra) # 80003068 <mycpu>
    800047fc:	faa91ce3          	bne	s2,a0,800047b4 <acquire+0x58>
    80004800:	00001517          	auipc	a0,0x1
    80004804:	af850513          	addi	a0,a0,-1288 # 800052f8 <digits+0x20>
    80004808:	fffff097          	auipc	ra,0xfffff
    8000480c:	224080e7          	jalr	548(ra) # 80003a2c <panic>
    80004810:	00195913          	srli	s2,s2,0x1
    80004814:	fffff097          	auipc	ra,0xfffff
    80004818:	854080e7          	jalr	-1964(ra) # 80003068 <mycpu>
    8000481c:	00197913          	andi	s2,s2,1
    80004820:	07252e23          	sw	s2,124(a0)
    80004824:	f75ff06f          	j	80004798 <acquire+0x3c>

0000000080004828 <release>:
    80004828:	fe010113          	addi	sp,sp,-32
    8000482c:	00813823          	sd	s0,16(sp)
    80004830:	00113c23          	sd	ra,24(sp)
    80004834:	00913423          	sd	s1,8(sp)
    80004838:	01213023          	sd	s2,0(sp)
    8000483c:	02010413          	addi	s0,sp,32
    80004840:	00052783          	lw	a5,0(a0)
    80004844:	00079a63          	bnez	a5,80004858 <release+0x30>
    80004848:	00001517          	auipc	a0,0x1
    8000484c:	ab850513          	addi	a0,a0,-1352 # 80005300 <digits+0x28>
    80004850:	fffff097          	auipc	ra,0xfffff
    80004854:	1dc080e7          	jalr	476(ra) # 80003a2c <panic>
    80004858:	01053903          	ld	s2,16(a0)
    8000485c:	00050493          	mv	s1,a0
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	808080e7          	jalr	-2040(ra) # 80003068 <mycpu>
    80004868:	fea910e3          	bne	s2,a0,80004848 <release+0x20>
    8000486c:	0004b823          	sd	zero,16(s1)
    80004870:	0ff0000f          	fence
    80004874:	0f50000f          	fence	iorw,ow
    80004878:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	7ec080e7          	jalr	2028(ra) # 80003068 <mycpu>
    80004884:	100027f3          	csrr	a5,sstatus
    80004888:	0027f793          	andi	a5,a5,2
    8000488c:	04079a63          	bnez	a5,800048e0 <release+0xb8>
    80004890:	07852783          	lw	a5,120(a0)
    80004894:	02f05e63          	blez	a5,800048d0 <release+0xa8>
    80004898:	fff7871b          	addiw	a4,a5,-1
    8000489c:	06e52c23          	sw	a4,120(a0)
    800048a0:	00071c63          	bnez	a4,800048b8 <release+0x90>
    800048a4:	07c52783          	lw	a5,124(a0)
    800048a8:	00078863          	beqz	a5,800048b8 <release+0x90>
    800048ac:	100027f3          	csrr	a5,sstatus
    800048b0:	0027e793          	ori	a5,a5,2
    800048b4:	10079073          	csrw	sstatus,a5
    800048b8:	01813083          	ld	ra,24(sp)
    800048bc:	01013403          	ld	s0,16(sp)
    800048c0:	00813483          	ld	s1,8(sp)
    800048c4:	00013903          	ld	s2,0(sp)
    800048c8:	02010113          	addi	sp,sp,32
    800048cc:	00008067          	ret
    800048d0:	00001517          	auipc	a0,0x1
    800048d4:	a5050513          	addi	a0,a0,-1456 # 80005320 <digits+0x48>
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	154080e7          	jalr	340(ra) # 80003a2c <panic>
    800048e0:	00001517          	auipc	a0,0x1
    800048e4:	a2850513          	addi	a0,a0,-1496 # 80005308 <digits+0x30>
    800048e8:	fffff097          	auipc	ra,0xfffff
    800048ec:	144080e7          	jalr	324(ra) # 80003a2c <panic>

00000000800048f0 <holding>:
    800048f0:	00052783          	lw	a5,0(a0)
    800048f4:	00079663          	bnez	a5,80004900 <holding+0x10>
    800048f8:	00000513          	li	a0,0
    800048fc:	00008067          	ret
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00913423          	sd	s1,8(sp)
    8000490c:	00113c23          	sd	ra,24(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	01053483          	ld	s1,16(a0)
    80004918:	ffffe097          	auipc	ra,0xffffe
    8000491c:	750080e7          	jalr	1872(ra) # 80003068 <mycpu>
    80004920:	01813083          	ld	ra,24(sp)
    80004924:	01013403          	ld	s0,16(sp)
    80004928:	40a48533          	sub	a0,s1,a0
    8000492c:	00153513          	seqz	a0,a0
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret

000000008000493c <push_off>:
    8000493c:	fe010113          	addi	sp,sp,-32
    80004940:	00813823          	sd	s0,16(sp)
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00913423          	sd	s1,8(sp)
    8000494c:	02010413          	addi	s0,sp,32
    80004950:	100024f3          	csrr	s1,sstatus
    80004954:	100027f3          	csrr	a5,sstatus
    80004958:	ffd7f793          	andi	a5,a5,-3
    8000495c:	10079073          	csrw	sstatus,a5
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	708080e7          	jalr	1800(ra) # 80003068 <mycpu>
    80004968:	07852783          	lw	a5,120(a0)
    8000496c:	02078663          	beqz	a5,80004998 <push_off+0x5c>
    80004970:	ffffe097          	auipc	ra,0xffffe
    80004974:	6f8080e7          	jalr	1784(ra) # 80003068 <mycpu>
    80004978:	07852783          	lw	a5,120(a0)
    8000497c:	01813083          	ld	ra,24(sp)
    80004980:	01013403          	ld	s0,16(sp)
    80004984:	0017879b          	addiw	a5,a5,1
    80004988:	06f52c23          	sw	a5,120(a0)
    8000498c:	00813483          	ld	s1,8(sp)
    80004990:	02010113          	addi	sp,sp,32
    80004994:	00008067          	ret
    80004998:	0014d493          	srli	s1,s1,0x1
    8000499c:	ffffe097          	auipc	ra,0xffffe
    800049a0:	6cc080e7          	jalr	1740(ra) # 80003068 <mycpu>
    800049a4:	0014f493          	andi	s1,s1,1
    800049a8:	06952e23          	sw	s1,124(a0)
    800049ac:	fc5ff06f          	j	80004970 <push_off+0x34>

00000000800049b0 <pop_off>:
    800049b0:	ff010113          	addi	sp,sp,-16
    800049b4:	00813023          	sd	s0,0(sp)
    800049b8:	00113423          	sd	ra,8(sp)
    800049bc:	01010413          	addi	s0,sp,16
    800049c0:	ffffe097          	auipc	ra,0xffffe
    800049c4:	6a8080e7          	jalr	1704(ra) # 80003068 <mycpu>
    800049c8:	100027f3          	csrr	a5,sstatus
    800049cc:	0027f793          	andi	a5,a5,2
    800049d0:	04079663          	bnez	a5,80004a1c <pop_off+0x6c>
    800049d4:	07852783          	lw	a5,120(a0)
    800049d8:	02f05a63          	blez	a5,80004a0c <pop_off+0x5c>
    800049dc:	fff7871b          	addiw	a4,a5,-1
    800049e0:	06e52c23          	sw	a4,120(a0)
    800049e4:	00071c63          	bnez	a4,800049fc <pop_off+0x4c>
    800049e8:	07c52783          	lw	a5,124(a0)
    800049ec:	00078863          	beqz	a5,800049fc <pop_off+0x4c>
    800049f0:	100027f3          	csrr	a5,sstatus
    800049f4:	0027e793          	ori	a5,a5,2
    800049f8:	10079073          	csrw	sstatus,a5
    800049fc:	00813083          	ld	ra,8(sp)
    80004a00:	00013403          	ld	s0,0(sp)
    80004a04:	01010113          	addi	sp,sp,16
    80004a08:	00008067          	ret
    80004a0c:	00001517          	auipc	a0,0x1
    80004a10:	91450513          	addi	a0,a0,-1772 # 80005320 <digits+0x48>
    80004a14:	fffff097          	auipc	ra,0xfffff
    80004a18:	018080e7          	jalr	24(ra) # 80003a2c <panic>
    80004a1c:	00001517          	auipc	a0,0x1
    80004a20:	8ec50513          	addi	a0,a0,-1812 # 80005308 <digits+0x30>
    80004a24:	fffff097          	auipc	ra,0xfffff
    80004a28:	008080e7          	jalr	8(ra) # 80003a2c <panic>

0000000080004a2c <push_on>:
    80004a2c:	fe010113          	addi	sp,sp,-32
    80004a30:	00813823          	sd	s0,16(sp)
    80004a34:	00113c23          	sd	ra,24(sp)
    80004a38:	00913423          	sd	s1,8(sp)
    80004a3c:	02010413          	addi	s0,sp,32
    80004a40:	100024f3          	csrr	s1,sstatus
    80004a44:	100027f3          	csrr	a5,sstatus
    80004a48:	0027e793          	ori	a5,a5,2
    80004a4c:	10079073          	csrw	sstatus,a5
    80004a50:	ffffe097          	auipc	ra,0xffffe
    80004a54:	618080e7          	jalr	1560(ra) # 80003068 <mycpu>
    80004a58:	07852783          	lw	a5,120(a0)
    80004a5c:	02078663          	beqz	a5,80004a88 <push_on+0x5c>
    80004a60:	ffffe097          	auipc	ra,0xffffe
    80004a64:	608080e7          	jalr	1544(ra) # 80003068 <mycpu>
    80004a68:	07852783          	lw	a5,120(a0)
    80004a6c:	01813083          	ld	ra,24(sp)
    80004a70:	01013403          	ld	s0,16(sp)
    80004a74:	0017879b          	addiw	a5,a5,1
    80004a78:	06f52c23          	sw	a5,120(a0)
    80004a7c:	00813483          	ld	s1,8(sp)
    80004a80:	02010113          	addi	sp,sp,32
    80004a84:	00008067          	ret
    80004a88:	0014d493          	srli	s1,s1,0x1
    80004a8c:	ffffe097          	auipc	ra,0xffffe
    80004a90:	5dc080e7          	jalr	1500(ra) # 80003068 <mycpu>
    80004a94:	0014f493          	andi	s1,s1,1
    80004a98:	06952e23          	sw	s1,124(a0)
    80004a9c:	fc5ff06f          	j	80004a60 <push_on+0x34>

0000000080004aa0 <pop_on>:
    80004aa0:	ff010113          	addi	sp,sp,-16
    80004aa4:	00813023          	sd	s0,0(sp)
    80004aa8:	00113423          	sd	ra,8(sp)
    80004aac:	01010413          	addi	s0,sp,16
    80004ab0:	ffffe097          	auipc	ra,0xffffe
    80004ab4:	5b8080e7          	jalr	1464(ra) # 80003068 <mycpu>
    80004ab8:	100027f3          	csrr	a5,sstatus
    80004abc:	0027f793          	andi	a5,a5,2
    80004ac0:	04078463          	beqz	a5,80004b08 <pop_on+0x68>
    80004ac4:	07852783          	lw	a5,120(a0)
    80004ac8:	02f05863          	blez	a5,80004af8 <pop_on+0x58>
    80004acc:	fff7879b          	addiw	a5,a5,-1
    80004ad0:	06f52c23          	sw	a5,120(a0)
    80004ad4:	07853783          	ld	a5,120(a0)
    80004ad8:	00079863          	bnez	a5,80004ae8 <pop_on+0x48>
    80004adc:	100027f3          	csrr	a5,sstatus
    80004ae0:	ffd7f793          	andi	a5,a5,-3
    80004ae4:	10079073          	csrw	sstatus,a5
    80004ae8:	00813083          	ld	ra,8(sp)
    80004aec:	00013403          	ld	s0,0(sp)
    80004af0:	01010113          	addi	sp,sp,16
    80004af4:	00008067          	ret
    80004af8:	00001517          	auipc	a0,0x1
    80004afc:	85050513          	addi	a0,a0,-1968 # 80005348 <digits+0x70>
    80004b00:	fffff097          	auipc	ra,0xfffff
    80004b04:	f2c080e7          	jalr	-212(ra) # 80003a2c <panic>
    80004b08:	00001517          	auipc	a0,0x1
    80004b0c:	82050513          	addi	a0,a0,-2016 # 80005328 <digits+0x50>
    80004b10:	fffff097          	auipc	ra,0xfffff
    80004b14:	f1c080e7          	jalr	-228(ra) # 80003a2c <panic>

0000000080004b18 <__memset>:
    80004b18:	ff010113          	addi	sp,sp,-16
    80004b1c:	00813423          	sd	s0,8(sp)
    80004b20:	01010413          	addi	s0,sp,16
    80004b24:	1a060e63          	beqz	a2,80004ce0 <__memset+0x1c8>
    80004b28:	40a007b3          	neg	a5,a0
    80004b2c:	0077f793          	andi	a5,a5,7
    80004b30:	00778693          	addi	a3,a5,7
    80004b34:	00b00813          	li	a6,11
    80004b38:	0ff5f593          	andi	a1,a1,255
    80004b3c:	fff6071b          	addiw	a4,a2,-1
    80004b40:	1b06e663          	bltu	a3,a6,80004cec <__memset+0x1d4>
    80004b44:	1cd76463          	bltu	a4,a3,80004d0c <__memset+0x1f4>
    80004b48:	1a078e63          	beqz	a5,80004d04 <__memset+0x1ec>
    80004b4c:	00b50023          	sb	a1,0(a0)
    80004b50:	00100713          	li	a4,1
    80004b54:	1ae78463          	beq	a5,a4,80004cfc <__memset+0x1e4>
    80004b58:	00b500a3          	sb	a1,1(a0)
    80004b5c:	00200713          	li	a4,2
    80004b60:	1ae78a63          	beq	a5,a4,80004d14 <__memset+0x1fc>
    80004b64:	00b50123          	sb	a1,2(a0)
    80004b68:	00300713          	li	a4,3
    80004b6c:	18e78463          	beq	a5,a4,80004cf4 <__memset+0x1dc>
    80004b70:	00b501a3          	sb	a1,3(a0)
    80004b74:	00400713          	li	a4,4
    80004b78:	1ae78263          	beq	a5,a4,80004d1c <__memset+0x204>
    80004b7c:	00b50223          	sb	a1,4(a0)
    80004b80:	00500713          	li	a4,5
    80004b84:	1ae78063          	beq	a5,a4,80004d24 <__memset+0x20c>
    80004b88:	00b502a3          	sb	a1,5(a0)
    80004b8c:	00700713          	li	a4,7
    80004b90:	18e79e63          	bne	a5,a4,80004d2c <__memset+0x214>
    80004b94:	00b50323          	sb	a1,6(a0)
    80004b98:	00700e93          	li	t4,7
    80004b9c:	00859713          	slli	a4,a1,0x8
    80004ba0:	00e5e733          	or	a4,a1,a4
    80004ba4:	01059e13          	slli	t3,a1,0x10
    80004ba8:	01c76e33          	or	t3,a4,t3
    80004bac:	01859313          	slli	t1,a1,0x18
    80004bb0:	006e6333          	or	t1,t3,t1
    80004bb4:	02059893          	slli	a7,a1,0x20
    80004bb8:	40f60e3b          	subw	t3,a2,a5
    80004bbc:	011368b3          	or	a7,t1,a7
    80004bc0:	02859813          	slli	a6,a1,0x28
    80004bc4:	0108e833          	or	a6,a7,a6
    80004bc8:	03059693          	slli	a3,a1,0x30
    80004bcc:	003e589b          	srliw	a7,t3,0x3
    80004bd0:	00d866b3          	or	a3,a6,a3
    80004bd4:	03859713          	slli	a4,a1,0x38
    80004bd8:	00389813          	slli	a6,a7,0x3
    80004bdc:	00f507b3          	add	a5,a0,a5
    80004be0:	00e6e733          	or	a4,a3,a4
    80004be4:	000e089b          	sext.w	a7,t3
    80004be8:	00f806b3          	add	a3,a6,a5
    80004bec:	00e7b023          	sd	a4,0(a5)
    80004bf0:	00878793          	addi	a5,a5,8
    80004bf4:	fed79ce3          	bne	a5,a3,80004bec <__memset+0xd4>
    80004bf8:	ff8e7793          	andi	a5,t3,-8
    80004bfc:	0007871b          	sext.w	a4,a5
    80004c00:	01d787bb          	addw	a5,a5,t4
    80004c04:	0ce88e63          	beq	a7,a4,80004ce0 <__memset+0x1c8>
    80004c08:	00f50733          	add	a4,a0,a5
    80004c0c:	00b70023          	sb	a1,0(a4)
    80004c10:	0017871b          	addiw	a4,a5,1
    80004c14:	0cc77663          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c18:	00e50733          	add	a4,a0,a4
    80004c1c:	00b70023          	sb	a1,0(a4)
    80004c20:	0027871b          	addiw	a4,a5,2
    80004c24:	0ac77e63          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c28:	00e50733          	add	a4,a0,a4
    80004c2c:	00b70023          	sb	a1,0(a4)
    80004c30:	0037871b          	addiw	a4,a5,3
    80004c34:	0ac77663          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c38:	00e50733          	add	a4,a0,a4
    80004c3c:	00b70023          	sb	a1,0(a4)
    80004c40:	0047871b          	addiw	a4,a5,4
    80004c44:	08c77e63          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c48:	00e50733          	add	a4,a0,a4
    80004c4c:	00b70023          	sb	a1,0(a4)
    80004c50:	0057871b          	addiw	a4,a5,5
    80004c54:	08c77663          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c58:	00e50733          	add	a4,a0,a4
    80004c5c:	00b70023          	sb	a1,0(a4)
    80004c60:	0067871b          	addiw	a4,a5,6
    80004c64:	06c77e63          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c68:	00e50733          	add	a4,a0,a4
    80004c6c:	00b70023          	sb	a1,0(a4)
    80004c70:	0077871b          	addiw	a4,a5,7
    80004c74:	06c77663          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c78:	00e50733          	add	a4,a0,a4
    80004c7c:	00b70023          	sb	a1,0(a4)
    80004c80:	0087871b          	addiw	a4,a5,8
    80004c84:	04c77e63          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c88:	00e50733          	add	a4,a0,a4
    80004c8c:	00b70023          	sb	a1,0(a4)
    80004c90:	0097871b          	addiw	a4,a5,9
    80004c94:	04c77663          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004c98:	00e50733          	add	a4,a0,a4
    80004c9c:	00b70023          	sb	a1,0(a4)
    80004ca0:	00a7871b          	addiw	a4,a5,10
    80004ca4:	02c77e63          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004ca8:	00e50733          	add	a4,a0,a4
    80004cac:	00b70023          	sb	a1,0(a4)
    80004cb0:	00b7871b          	addiw	a4,a5,11
    80004cb4:	02c77663          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004cb8:	00e50733          	add	a4,a0,a4
    80004cbc:	00b70023          	sb	a1,0(a4)
    80004cc0:	00c7871b          	addiw	a4,a5,12
    80004cc4:	00c77e63          	bgeu	a4,a2,80004ce0 <__memset+0x1c8>
    80004cc8:	00e50733          	add	a4,a0,a4
    80004ccc:	00b70023          	sb	a1,0(a4)
    80004cd0:	00d7879b          	addiw	a5,a5,13
    80004cd4:	00c7f663          	bgeu	a5,a2,80004ce0 <__memset+0x1c8>
    80004cd8:	00f507b3          	add	a5,a0,a5
    80004cdc:	00b78023          	sb	a1,0(a5)
    80004ce0:	00813403          	ld	s0,8(sp)
    80004ce4:	01010113          	addi	sp,sp,16
    80004ce8:	00008067          	ret
    80004cec:	00b00693          	li	a3,11
    80004cf0:	e55ff06f          	j	80004b44 <__memset+0x2c>
    80004cf4:	00300e93          	li	t4,3
    80004cf8:	ea5ff06f          	j	80004b9c <__memset+0x84>
    80004cfc:	00100e93          	li	t4,1
    80004d00:	e9dff06f          	j	80004b9c <__memset+0x84>
    80004d04:	00000e93          	li	t4,0
    80004d08:	e95ff06f          	j	80004b9c <__memset+0x84>
    80004d0c:	00000793          	li	a5,0
    80004d10:	ef9ff06f          	j	80004c08 <__memset+0xf0>
    80004d14:	00200e93          	li	t4,2
    80004d18:	e85ff06f          	j	80004b9c <__memset+0x84>
    80004d1c:	00400e93          	li	t4,4
    80004d20:	e7dff06f          	j	80004b9c <__memset+0x84>
    80004d24:	00500e93          	li	t4,5
    80004d28:	e75ff06f          	j	80004b9c <__memset+0x84>
    80004d2c:	00600e93          	li	t4,6
    80004d30:	e6dff06f          	j	80004b9c <__memset+0x84>

0000000080004d34 <__memmove>:
    80004d34:	ff010113          	addi	sp,sp,-16
    80004d38:	00813423          	sd	s0,8(sp)
    80004d3c:	01010413          	addi	s0,sp,16
    80004d40:	0e060863          	beqz	a2,80004e30 <__memmove+0xfc>
    80004d44:	fff6069b          	addiw	a3,a2,-1
    80004d48:	0006881b          	sext.w	a6,a3
    80004d4c:	0ea5e863          	bltu	a1,a0,80004e3c <__memmove+0x108>
    80004d50:	00758713          	addi	a4,a1,7
    80004d54:	00a5e7b3          	or	a5,a1,a0
    80004d58:	40a70733          	sub	a4,a4,a0
    80004d5c:	0077f793          	andi	a5,a5,7
    80004d60:	00f73713          	sltiu	a4,a4,15
    80004d64:	00174713          	xori	a4,a4,1
    80004d68:	0017b793          	seqz	a5,a5
    80004d6c:	00e7f7b3          	and	a5,a5,a4
    80004d70:	10078863          	beqz	a5,80004e80 <__memmove+0x14c>
    80004d74:	00900793          	li	a5,9
    80004d78:	1107f463          	bgeu	a5,a6,80004e80 <__memmove+0x14c>
    80004d7c:	0036581b          	srliw	a6,a2,0x3
    80004d80:	fff8081b          	addiw	a6,a6,-1
    80004d84:	02081813          	slli	a6,a6,0x20
    80004d88:	01d85893          	srli	a7,a6,0x1d
    80004d8c:	00858813          	addi	a6,a1,8
    80004d90:	00058793          	mv	a5,a1
    80004d94:	00050713          	mv	a4,a0
    80004d98:	01088833          	add	a6,a7,a6
    80004d9c:	0007b883          	ld	a7,0(a5)
    80004da0:	00878793          	addi	a5,a5,8
    80004da4:	00870713          	addi	a4,a4,8
    80004da8:	ff173c23          	sd	a7,-8(a4)
    80004dac:	ff0798e3          	bne	a5,a6,80004d9c <__memmove+0x68>
    80004db0:	ff867713          	andi	a4,a2,-8
    80004db4:	02071793          	slli	a5,a4,0x20
    80004db8:	0207d793          	srli	a5,a5,0x20
    80004dbc:	00f585b3          	add	a1,a1,a5
    80004dc0:	40e686bb          	subw	a3,a3,a4
    80004dc4:	00f507b3          	add	a5,a0,a5
    80004dc8:	06e60463          	beq	a2,a4,80004e30 <__memmove+0xfc>
    80004dcc:	0005c703          	lbu	a4,0(a1)
    80004dd0:	00e78023          	sb	a4,0(a5)
    80004dd4:	04068e63          	beqz	a3,80004e30 <__memmove+0xfc>
    80004dd8:	0015c603          	lbu	a2,1(a1)
    80004ddc:	00100713          	li	a4,1
    80004de0:	00c780a3          	sb	a2,1(a5)
    80004de4:	04e68663          	beq	a3,a4,80004e30 <__memmove+0xfc>
    80004de8:	0025c603          	lbu	a2,2(a1)
    80004dec:	00200713          	li	a4,2
    80004df0:	00c78123          	sb	a2,2(a5)
    80004df4:	02e68e63          	beq	a3,a4,80004e30 <__memmove+0xfc>
    80004df8:	0035c603          	lbu	a2,3(a1)
    80004dfc:	00300713          	li	a4,3
    80004e00:	00c781a3          	sb	a2,3(a5)
    80004e04:	02e68663          	beq	a3,a4,80004e30 <__memmove+0xfc>
    80004e08:	0045c603          	lbu	a2,4(a1)
    80004e0c:	00400713          	li	a4,4
    80004e10:	00c78223          	sb	a2,4(a5)
    80004e14:	00e68e63          	beq	a3,a4,80004e30 <__memmove+0xfc>
    80004e18:	0055c603          	lbu	a2,5(a1)
    80004e1c:	00500713          	li	a4,5
    80004e20:	00c782a3          	sb	a2,5(a5)
    80004e24:	00e68663          	beq	a3,a4,80004e30 <__memmove+0xfc>
    80004e28:	0065c703          	lbu	a4,6(a1)
    80004e2c:	00e78323          	sb	a4,6(a5)
    80004e30:	00813403          	ld	s0,8(sp)
    80004e34:	01010113          	addi	sp,sp,16
    80004e38:	00008067          	ret
    80004e3c:	02061713          	slli	a4,a2,0x20
    80004e40:	02075713          	srli	a4,a4,0x20
    80004e44:	00e587b3          	add	a5,a1,a4
    80004e48:	f0f574e3          	bgeu	a0,a5,80004d50 <__memmove+0x1c>
    80004e4c:	02069613          	slli	a2,a3,0x20
    80004e50:	02065613          	srli	a2,a2,0x20
    80004e54:	fff64613          	not	a2,a2
    80004e58:	00e50733          	add	a4,a0,a4
    80004e5c:	00c78633          	add	a2,a5,a2
    80004e60:	fff7c683          	lbu	a3,-1(a5)
    80004e64:	fff78793          	addi	a5,a5,-1
    80004e68:	fff70713          	addi	a4,a4,-1
    80004e6c:	00d70023          	sb	a3,0(a4)
    80004e70:	fec798e3          	bne	a5,a2,80004e60 <__memmove+0x12c>
    80004e74:	00813403          	ld	s0,8(sp)
    80004e78:	01010113          	addi	sp,sp,16
    80004e7c:	00008067          	ret
    80004e80:	02069713          	slli	a4,a3,0x20
    80004e84:	02075713          	srli	a4,a4,0x20
    80004e88:	00170713          	addi	a4,a4,1
    80004e8c:	00e50733          	add	a4,a0,a4
    80004e90:	00050793          	mv	a5,a0
    80004e94:	0005c683          	lbu	a3,0(a1)
    80004e98:	00178793          	addi	a5,a5,1
    80004e9c:	00158593          	addi	a1,a1,1
    80004ea0:	fed78fa3          	sb	a3,-1(a5)
    80004ea4:	fee798e3          	bne	a5,a4,80004e94 <__memmove+0x160>
    80004ea8:	f89ff06f          	j	80004e30 <__memmove+0xfc>

0000000080004eac <__putc>:
    80004eac:	fe010113          	addi	sp,sp,-32
    80004eb0:	00813823          	sd	s0,16(sp)
    80004eb4:	00113c23          	sd	ra,24(sp)
    80004eb8:	02010413          	addi	s0,sp,32
    80004ebc:	00050793          	mv	a5,a0
    80004ec0:	fef40593          	addi	a1,s0,-17
    80004ec4:	00100613          	li	a2,1
    80004ec8:	00000513          	li	a0,0
    80004ecc:	fef407a3          	sb	a5,-17(s0)
    80004ed0:	fffff097          	auipc	ra,0xfffff
    80004ed4:	b3c080e7          	jalr	-1220(ra) # 80003a0c <console_write>
    80004ed8:	01813083          	ld	ra,24(sp)
    80004edc:	01013403          	ld	s0,16(sp)
    80004ee0:	02010113          	addi	sp,sp,32
    80004ee4:	00008067          	ret

0000000080004ee8 <__getc>:
    80004ee8:	fe010113          	addi	sp,sp,-32
    80004eec:	00813823          	sd	s0,16(sp)
    80004ef0:	00113c23          	sd	ra,24(sp)
    80004ef4:	02010413          	addi	s0,sp,32
    80004ef8:	fe840593          	addi	a1,s0,-24
    80004efc:	00100613          	li	a2,1
    80004f00:	00000513          	li	a0,0
    80004f04:	fffff097          	auipc	ra,0xfffff
    80004f08:	ae8080e7          	jalr	-1304(ra) # 800039ec <console_read>
    80004f0c:	fe844503          	lbu	a0,-24(s0)
    80004f10:	01813083          	ld	ra,24(sp)
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	00008067          	ret

0000000080004f20 <console_handler>:
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00113c23          	sd	ra,24(sp)
    80004f2c:	00913423          	sd	s1,8(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	14202773          	csrr	a4,scause
    80004f38:	100027f3          	csrr	a5,sstatus
    80004f3c:	0027f793          	andi	a5,a5,2
    80004f40:	06079e63          	bnez	a5,80004fbc <console_handler+0x9c>
    80004f44:	00074c63          	bltz	a4,80004f5c <console_handler+0x3c>
    80004f48:	01813083          	ld	ra,24(sp)
    80004f4c:	01013403          	ld	s0,16(sp)
    80004f50:	00813483          	ld	s1,8(sp)
    80004f54:	02010113          	addi	sp,sp,32
    80004f58:	00008067          	ret
    80004f5c:	0ff77713          	andi	a4,a4,255
    80004f60:	00900793          	li	a5,9
    80004f64:	fef712e3          	bne	a4,a5,80004f48 <console_handler+0x28>
    80004f68:	ffffe097          	auipc	ra,0xffffe
    80004f6c:	6dc080e7          	jalr	1756(ra) # 80003644 <plic_claim>
    80004f70:	00a00793          	li	a5,10
    80004f74:	00050493          	mv	s1,a0
    80004f78:	02f50c63          	beq	a0,a5,80004fb0 <console_handler+0x90>
    80004f7c:	fc0506e3          	beqz	a0,80004f48 <console_handler+0x28>
    80004f80:	00050593          	mv	a1,a0
    80004f84:	00000517          	auipc	a0,0x0
    80004f88:	2cc50513          	addi	a0,a0,716 # 80005250 <CONSOLE_STATUS+0x240>
    80004f8c:	fffff097          	auipc	ra,0xfffff
    80004f90:	afc080e7          	jalr	-1284(ra) # 80003a88 <__printf>
    80004f94:	01013403          	ld	s0,16(sp)
    80004f98:	01813083          	ld	ra,24(sp)
    80004f9c:	00048513          	mv	a0,s1
    80004fa0:	00813483          	ld	s1,8(sp)
    80004fa4:	02010113          	addi	sp,sp,32
    80004fa8:	ffffe317          	auipc	t1,0xffffe
    80004fac:	6d430067          	jr	1748(t1) # 8000367c <plic_complete>
    80004fb0:	fffff097          	auipc	ra,0xfffff
    80004fb4:	3e0080e7          	jalr	992(ra) # 80004390 <uartintr>
    80004fb8:	fddff06f          	j	80004f94 <console_handler+0x74>
    80004fbc:	00000517          	auipc	a0,0x0
    80004fc0:	39450513          	addi	a0,a0,916 # 80005350 <digits+0x78>
    80004fc4:	fffff097          	auipc	ra,0xfffff
    80004fc8:	a68080e7          	jalr	-1432(ra) # 80003a2c <panic>
	...
