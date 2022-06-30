	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0200C760
sub_0200C760: @ 0x0200C760
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0200C79C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0200C7A0 @ =gUnk_03002640
	str r1, [r0, #4]
	ldr r1, _0200C7A4 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0200C7A8 @ =gUnk_03001420
	str r1, [r0, #4]
	ldr r1, _0200C7AC @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _0200C7B0 @ =gUnk_030014E4
	str r2, [r0]
	ldr r0, _0200C7B4 @ =gUnk_030014E8
	strb r2, [r0]
	movs r0, #0
	bl MultiSioInit
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0200C79C: .4byte 0x040000D4
_0200C7A0: .4byte gUnk_03002640
_0200C7A4: .4byte 0x85000005
_0200C7A8: .4byte gUnk_03001420
_0200C7AC: .4byte 0x85000014
_0200C7B0: .4byte gUnk_030014E4
_0200C7B4: .4byte gUnk_030014E8

	thumb_func_start sub_0200C7B8
sub_0200C7B8: @ 0x0200C7B8
	push {r4, lr}
	ldr r0, _0200C7F8 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0200C7EC
	ldr r3, _0200C7FC @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0200C800 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200C804 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _0200C808 @ =gUnk_03000740
	ldr r0, _0200C80C @ =gUnk_03005870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl MultiSioInit
_0200C7EC:
	ldr r1, _0200C810 @ =gUnk_030014E8
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200C7F8: .4byte gUnk_030013D0
_0200C7FC: .4byte 0x04000208
_0200C800: .4byte 0x04000200
_0200C804: .4byte 0x0000FFBF
_0200C808: .4byte gUnk_03000740
_0200C80C: .4byte gUnk_03005870
_0200C810: .4byte gUnk_030014E8

	thumb_func_start sub_0200C814
sub_0200C814: @ 0x0200C814
	push {r4, lr}
	ldr r1, _0200C848 @ =gUnk_030014E8
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0200C84C @ =gUnk_030013D0
	ldr r0, [r4]
	ldr r1, _0200C850 @ =0xFFEFFFFF
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
	beq _0200C840
	bl sub_0200C858
_0200C840:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200C848: .4byte gUnk_030014E8
_0200C84C: .4byte gUnk_030013D0
_0200C850: .4byte 0xFFEFFFFF

	thumb_func_start sub_0200C854
sub_0200C854: @ 0x0200C854
	bx lr
	.align 2, 0

	thumb_func_start sub_0200C858
sub_0200C858: @ 0x0200C858
	bx lr
	.align 2, 0

	thumb_func_start nullsub_016
nullsub_016: @ 0x0200C85C
	bx lr
	.align 2, 0

	thumb_func_start sub_0200C860
sub_0200C860: @ 0x0200C860
	movs r0, #1
	bx lr
