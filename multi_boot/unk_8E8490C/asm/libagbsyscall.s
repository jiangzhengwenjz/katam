	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x0200D06C
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x0200D070
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x0200D074
	svc #6
	bx lr

	thumb_func_start DivRem
DivRem: @ 0x0200D078
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x0200D080
	svc #0x12
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x0200D084
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
