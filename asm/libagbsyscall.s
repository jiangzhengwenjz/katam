	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ArcTan2
ArcTan2: @ 0x081592EC
	svc #0xa
	bx lr

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x081592F0
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x081592F4
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x081592F8
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x081592FC
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x08159304
	svc #0x12
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x08159308
	svc #0x11
	bx lr

	thumb_func_start MultiBoot
MultiBoot: @ 0x0815930C
	movs r1, #1
	svc #0x25
	bx lr
	.align 2, 0

	thumb_func_start RLUnCompVram
RLUnCompVram: @ 0x08159314
	svc #0x15
	bx lr

	thumb_func_start RLUnCompWram
RLUnCompWram: @ 0x08159318
	svc #0x14
	bx lr

	thumb_func_start SoftReset
SoftReset: @ 0x0815931C
	ldr r3, _0815932C @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _08159330 @ =gUnk_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_0815932C: .4byte 0x04000208
_08159330: .4byte gUnk_03007F00

	thumb_func_start SoundBiasReset
SoundBiasReset: @ 0x08159334
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start SoundBiasSet
SoundBiasSet: @ 0x0815933C
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start Sqrt
Sqrt: @ 0x08159344
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08159348
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
