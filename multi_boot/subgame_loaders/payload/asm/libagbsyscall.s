	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CpuSet
CpuSet: @ 0x0203A0B8
	svc #0xb
	bx lr

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x0203A0BC
	svc #0x12
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x0203A0C0
	svc #0x11
	bx lr

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x0203A0C4
	svc #0xf
	bx lr

	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x0203A0C8
	svc #1
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x0203A0CC
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
