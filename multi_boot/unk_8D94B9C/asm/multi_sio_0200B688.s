	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0200B688
sub_0200B688: @ 0x0200B688
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0200B6C4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0200B6C8 @ =gUnk_03002640
	str r1, [r0, #4]
	ldr r1, _0200B6CC @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0200B6D0 @ =gUnk_03001420
	str r1, [r0, #4]
	ldr r1, _0200B6D4 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _0200B6D8 @ =gUnk_030014E4
	str r2, [r0]
	ldr r0, _0200B6DC @ =gUnk_030014E8
	strb r2, [r0]
	movs r0, #0
	bl MultiSioInit
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0200B6C4: .4byte 0x040000D4
_0200B6C8: .4byte gUnk_03002640
_0200B6CC: .4byte 0x85000005
_0200B6D0: .4byte gUnk_03001420
_0200B6D4: .4byte 0x85000014
_0200B6D8: .4byte gUnk_030014E4
_0200B6DC: .4byte gUnk_030014E8

	thumb_func_start sub_0200B6E0
sub_0200B6E0: @ 0x0200B6E0
	push {r4, lr}
	ldr r0, _0200B720 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0200B714
	ldr r3, _0200B724 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0200B728 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200B72C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _0200B730 @ =gUnk_03000740
	ldr r0, _0200B734 @ =gUnk_03005870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl MultiSioInit
_0200B714:
	ldr r1, _0200B738 @ =gUnk_030014E8
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200B720: .4byte gUnk_030013D0
_0200B724: .4byte 0x04000208
_0200B728: .4byte 0x04000200
_0200B72C: .4byte 0x0000FFBF
_0200B730: .4byte gUnk_03000740
_0200B734: .4byte gUnk_03005870
_0200B738: .4byte gUnk_030014E8

	thumb_func_start sub_0200B73C
sub_0200B73C: @ 0x0200B73C
	push {r4, lr}
	ldr r1, _0200B770 @ =gUnk_030014E8
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0200B774 @ =gUnk_030013D0
	ldr r0, [r4]
	ldr r1, _0200B778 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0200B768
	bl sub_0200B780
_0200B768:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200B770: .4byte gUnk_030014E8
_0200B774: .4byte gUnk_030013D0
_0200B778: .4byte 0xFFEFFFFF

	thumb_func_start sub_0200B77C
sub_0200B77C: @ 0x0200B77C
	bx lr
	.align 2, 0

	thumb_func_start sub_0200B780
sub_0200B780: @ 0x0200B780
	bx lr
	.align 2, 0

	thumb_func_start nullsub_16
nullsub_16: @ 0x0200B784
	bx lr
	.align 2, 0

	thumb_func_start sub_0200B788
sub_0200B788: @ 0x0200B788
	movs r0, #1
	bx lr
