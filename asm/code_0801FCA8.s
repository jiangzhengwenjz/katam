	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0801FCA8
sub_0801FCA8: @ 0x0801FCA8
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0801FCDC @ =sub_0801F7F8
	movs r1, #0xbe
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r3, _0801FCE0 @ =nullsub_111
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801FCE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801FCEC
	.align 2, 0
_0801FCDC: .4byte sub_0801F7F8
_0801FCE0: .4byte nullsub_111
_0801FCE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801FCEC:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0801FD28 @ =0x010000BE
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FD2C @ =sub_0801FEC0
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0801E9DC
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD28: .4byte 0x010000BE
_0801FD2C: .4byte sub_0801FEC0

	thumb_func_start sub_0801FD30
sub_0801FD30: @ 0x0801FD30
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0xef
	movs r0, #0xe
	strb r0, [r2]
	subs r2, #0x28
	strb r0, [r2]
	subs r2, #0x28
	strb r0, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FD58
sub_0801FD58: @ 0x0801FD58
	push {r4, lr}
	ldr r0, _0801FD74 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801FD78
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801FD80
	.align 2, 0
_0801FD74: .4byte gCurTask
_0801FD78:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801FD80:
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801FD9E
	adds r0, r4, #0
	bl sub_0801ED08
_0801FD9E:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_29
nullsub_29: @ 0x0801FDB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FDB8
sub_0801FDB8: @ 0x0801FDB8
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FDD0 @ =sub_0801EF64
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FDD0: .4byte sub_0801EF64

	thumb_func_start sub_0801FDD4
sub_0801FDD4: @ 0x0801FDD4
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FDE0 @ =sub_0801EFC0
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FDE0: .4byte sub_0801EFC0

	thumb_func_start sub_0801FDE4
sub_0801FDE4: @ 0x0801FDE4
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FDF0 @ =sub_0801FF50
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FDF0: .4byte sub_0801FF50

	thumb_func_start sub_0801FDF4
sub_0801FDF4: @ 0x0801FDF4
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FE0C @ =sub_0801F0B0
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE0C: .4byte sub_0801F0B0

	thumb_func_start sub_0801FE10
sub_0801FE10: @ 0x0801FE10
	adds r3, r0, #0
	ldr r1, _0801FE30 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FE34 @ =sub_0801FFB0
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE30: .4byte gBldRegs
_0801FE34: .4byte sub_0801FFB0

	thumb_func_start nullsub_110
nullsub_110: @ 0x0801FE38
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FE3C
sub_0801FE3C: @ 0x0801FE3C
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FE54 @ =sub_0801F5AC
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE54: .4byte sub_0801F5AC

	thumb_func_start sub_0801FE58
sub_0801FE58: @ 0x0801FE58
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FE64 @ =sub_0801F608
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FE64: .4byte sub_0801F608

	thumb_func_start sub_0801FE68
sub_0801FE68: @ 0x0801FE68
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FE74 @ =sub_0801FFEC
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FE74: .4byte sub_0801FFEC

	thumb_func_start sub_0801FE78
sub_0801FE78: @ 0x0801FE78
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FE90 @ =sub_0801F6C8
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE90: .4byte sub_0801F6C8

	thumb_func_start sub_0801FE94
sub_0801FE94: @ 0x0801FE94
	adds r3, r0, #0
	ldr r1, _0801FEB4 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FEB8 @ =sub_0802001C
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FEB4: .4byte gBldRegs
_0801FEB8: .4byte sub_0802001C

	thumb_func_start nullsub_111
nullsub_111: @ 0x0801FEBC
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FEC0
sub_0801FEC0: @ 0x0801FEC0
	push {r4, lr}
	ldr r3, _0801FEEC @ =gDispCnt
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _0801FEF0 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _0801FEF4 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FEF8 @ =sub_0801F8EC
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEEC: .4byte gDispCnt
_0801FEF0: .4byte 0x0000F9FF
_0801FEF4: .4byte gBgScrollRegs
_0801FEF8: .4byte sub_0801F8EC

	thumb_func_start sub_0801FEFC
sub_0801FEFC: @ 0x0801FEFC
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FF08 @ =sub_080200C0
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FF08: .4byte sub_080200C0

	thumb_func_start sub_0801FF0C
sub_0801FF0C: @ 0x0801FF0C
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FF24 @ =sub_0801FB98
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FF24: .4byte sub_0801FB98

	thumb_func_start sub_0801FF28
sub_0801FF28: @ 0x0801FF28
	adds r3, r0, #0
	ldr r1, _0801FF48 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FF4C @ =sub_08020164
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FF48: .4byte gBldRegs
_0801FF4C: .4byte sub_08020164

	thumb_func_start sub_0801FF50
sub_0801FF50: @ 0x0801FF50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801FF78 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0801FF80
	ldr r0, _0801FF7C @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	b _0801FF96
	.align 2, 0
_0801FF78: .4byte gPressedKeys
_0801FF7C: .4byte 0x0000021F
_0801FF80:
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801FFA0
	ldr r0, _0801FFA8 @ =0x0000021E
	bl m4aSongNumStart
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
_0801FF96:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FFAC @ =sub_0801FE10
	str r0, [r1]
_0801FFA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFA8: .4byte 0x0000021E
_0801FFAC: .4byte sub_0801FE10

	thumb_func_start sub_0801FFB0
sub_0801FFB0: @ 0x0801FFB0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _0801FFE4 @ =gBldRegs
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _0801FFDE
	strh r4, [r5, #4]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FFE8 @ =sub_0801F118
	str r0, [r1]
_0801FFDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFE4: .4byte gBldRegs
_0801FFE8: .4byte sub_0801F118

	thumb_func_start sub_0801FFEC
sub_0801FFEC: @ 0x0801FFEC
	push {lr}
	adds r2, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08020014
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _08020018 @ =sub_0801FE94
	str r0, [r1]
_08020014:
	pop {r0}
	bx r0
	.align 2, 0
_08020018: .4byte sub_0801FE94

	thumb_func_start sub_0802001C
sub_0802001C: @ 0x0802001C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08020050 @ =gBldRegs
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _0802004A
	strh r4, [r5, #4]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _08020054 @ =sub_0801F730
	str r0, [r1]
_0802004A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020050: .4byte gBldRegs
_08020054: .4byte sub_0801F730

	thumb_func_start sub_08020058
sub_08020058: @ 0x08020058
	push {lr}
	adds r3, r0, #0
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _08020084
	ldr r2, _08020088 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802008C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _08020090 @ =sub_080201A0
	str r0, [r1]
_08020084:
	pop {r0}
	bx r0
	.align 2, 0
_08020088: .4byte gDispCnt
_0802008C: .4byte 0x0000FDFF
_08020090: .4byte sub_080201A0

	thumb_func_start sub_08020094
sub_08020094: @ 0x08020094
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_08030C94
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _080200BC @ =sub_0801F9FC
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080200BC: .4byte sub_0801F9FC

	thumb_func_start sub_080200C0
sub_080200C0: @ 0x080200C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r2, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r7, r4, r0
	movs r3, #0
	adds r0, #8
	adds r6, r4, r0
	adds r0, #8
	adds r5, r4, r0
_080200E0:
	lsls r1, r2, #1
	adds r0, r7, r1
	strh r3, [r0]
	adds r0, r6, r1
	strh r3, [r0]
	adds r1, r5, r1
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _080200E0
	movs r0, #3
	bl sub_08031C70
	bl sub_08031CD4
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _08020114 @ =sub_08020118
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020114: .4byte sub_08020118

	thumb_func_start sub_08020118
sub_08020118: @ 0x08020118
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08020158
	movs r0, #0
	strh r0, [r2]
	bl sub_08030D4C
	cmp r0, #0
	bne _0802014E
	bl sub_08032E98
	b _08020158
_0802014E:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _08020160 @ =sub_080201D0
	str r0, [r1]
_08020158:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020160: .4byte sub_080201D0

	thumb_func_start sub_08020164
sub_08020164: @ 0x08020164
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08020198 @ =gBldRegs
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _08020192
	strh r4, [r5, #4]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0802019C @ =sub_0801FC00
	str r0, [r1]
_08020192:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020198: .4byte gBldRegs
_0802019C: .4byte sub_0801FC00

	thumb_func_start sub_080201A0
sub_080201A0: @ 0x080201A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08158934
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #8
	strh r0, [r1]
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xb4
	strh r0, [r1]
	adds r0, #0xa0
	adds r1, r4, r0
	ldr r0, _080201CC @ =sub_080201EC
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080201CC: .4byte sub_080201EC

	thumb_func_start sub_080201D0
sub_080201D0: @ 0x080201D0
	adds r2, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _080201E8 @ =sub_0801FAD8
	str r0, [r1]
	bx lr
	.align 2, 0
_080201E8: .4byte sub_0801FAD8

	thumb_func_start sub_080201EC
sub_080201EC: @ 0x080201EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08020218 @ =0xFFFF0000
	cmp r1, r0
	bne _08020212
	bl sub_0815898C
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0802021C @ =sub_08020094
	str r0, [r1]
_08020212:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020218: .4byte 0xFFFF0000
_0802021C: .4byte sub_08020094

	thumb_func_start sub_08020220
sub_08020220: @ 0x08020220
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _08020284 @ =gUnk_03003A00
	ldrb r0, [r2]
	lsls r7, r0, #2
	lsls r1, r0, #1
	adds r6, r1, r0
	ldr r1, _08020288 @ =gUnk_0203A9A0
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldrb r5, [r1]
	cmp r5, #0x7f
	bhi _0802027A
_0802023C:
	lsls r4, r7, #1
	ldr r0, _0802028C @ =gOamBuffer
	adds r4, r4, r0
	lsls r1, r6, #1
	ldr r0, _08020290 @ =gUnk_0203A9B0
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _08020294 @ =0x01000003
	bl CpuSet
	adds r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x7f
	bls _0802023C
_0802027A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020284: .4byte gUnk_03003A00
_08020288: .4byte gUnk_0203A9A0
_0802028C: .4byte gOamBuffer
_08020290: .4byte gUnk_0203A9B0
_08020294: .4byte 0x01000003

	thumb_func_start sub_08020298
sub_08020298: @ 0x08020298
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, [r0, #4]
	mov r8, r0
	ldr r1, _0802032C @ =0x0000FFFF
	movs r0, #0
	bl sub_08152FB0
	ldr r1, _08020330 @ =gUnk_03003A04
	ldr r0, _08020334 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08020338 @ =gUnk_030068B0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802033C @ =gUnk_03006078
	ldr r0, _08020340 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_08157168
	ldr r1, _08020344 @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08020348 @ =gUnk_03002540
	ldr r0, _0802034C @ =0x06010000
	str r0, [r1]
	bl sub_08159074
	ldr r4, _08020350 @ =gUnk_03002440
	ldr r0, [r4]
	ldr r1, _08020354 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4]
	ldr r1, _08020358 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	mov r0, sp
	ldr r1, _0802035C @ =0x00007FFF
	adds r5, r1, #0
	strh r5, [r0]
	ldr r1, _08020360 @ =gBgPalette
	ldr r6, _08020364 @ =0x01000100
	adds r2, r6, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, _08020368 @ =gObjPalette
	adds r2, r6, #0
	bl CpuSet
	ldr r0, [r4]
	movs r1, #3
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0802036C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	bl _call_via_r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802032C: .4byte 0x0000FFFF
_08020330: .4byte gUnk_03003A04
_08020334: .4byte gUnk_03003790
_08020338: .4byte gUnk_030068B0
_0802033C: .4byte gUnk_03006078
_08020340: .4byte gUnk_030039A4
_08020344: .4byte gUnk_03002488
_08020348: .4byte gUnk_03002540
_0802034C: .4byte 0x06010000
_08020350: .4byte gUnk_03002440
_08020354: .4byte 0xFFFFFBFF
_08020358: .4byte gDispCnt
_0802035C: .4byte 0x00007FFF
_08020360: .4byte gBgPalette
_08020364: .4byte 0x01000100
_08020368: .4byte gObjPalette
_0802036C: .4byte gBldRegs

	thumb_func_start sub_08020370
sub_08020370: @ 0x08020370
	push {r4, r5, r6, lr}
	ldr r2, _080203B8 @ =gUnk_0203A9A0
	ldrb r0, [r2]
	lsls r6, r0, #2
	lsls r1, r0, #1
	adds r5, r1, r0
	ldr r1, _080203BC @ =gUnk_03003A00
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldrb r4, [r1]
	cmp r4, #0x7f
	bhi _080203B2
_0802038A:
	lsls r0, r5, #1
	ldr r1, _080203C0 @ =gUnk_0203A9B0
	adds r0, r0, r1
	lsls r1, r6, #1
	ldr r2, _080203C4 @ =gOamBuffer
	adds r1, r1, r2
	movs r2, #3
	bl CpuSet
	adds r0, r6, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _0802038A
_080203B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080203B8: .4byte gUnk_0203A9A0
_080203BC: .4byte gUnk_03003A00
_080203C0: .4byte gUnk_0203A9B0
_080203C4: .4byte gOamBuffer

	thumb_func_start sub_080203C8
sub_080203C8: @ 0x080203C8
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r1, #0
	strh r4, [r0]
	ldr r6, _08020420 @ =gOamBuffer
	ldr r5, _08020424 @ =0x01000080
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r2, r5, #0
	bl CpuSet
	add r0, sp, #4
	strh r4, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r2, r5, #0
	bl CpuSet
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020420: .4byte gOamBuffer
_08020424: .4byte 0x01000080

	thumb_func_start sub_08020428
sub_08020428: @ 0x08020428
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08020458 @ =sub_080205BC
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802045C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08020464
	.align 2, 0
_08020458: .4byte sub_080205BC
_0802045C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08020464:
	ldr r0, _08020488 @ =sub_080205F0
	str r0, [r1]
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #8]
	bl m4aMPlayAllStop
	ldr r2, _0802048C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020488: .4byte sub_080205F0
_0802048C: .4byte gUnk_03002440

	thumb_func_start sub_08020490
sub_08020490: @ 0x08020490
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080204A8 @ =gUnk_02038990
	ldr r2, _080204AC @ =0x05000804
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080204A8: .4byte gUnk_02038990
_080204AC: .4byte 0x05000804

	thumb_func_start sub_080204B0
sub_080204B0: @ 0x080204B0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080204E4 @ =gUnk_02038990
	lsls r1, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r1, r2
	movs r3, #0
	strh r3, [r0]
	adds r0, r2, #2
	adds r0, r1, r0
	strh r3, [r0]
	adds r2, #4
	adds r1, r1, r2
	ldr r2, _080204E8 @ =0x001FFFFF
	ands r2, r4
	adds r0, r5, #0
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080204E4: .4byte gUnk_02038990
_080204E8: .4byte 0x001FFFFF

	thumb_func_start sub_080204EC
sub_080204EC: @ 0x080204EC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08020534 @ =gUnk_02038990
	adds r5, r1, r0
	ldrh r4, [r5, #2]
	movs r0, #0
	strh r0, [r5]
	ldr r3, _08020538 @ =0x000003FF
	ands r6, r3
	lsls r0, r4, #1
	adds r2, r0, r5
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _08020546
	adds r0, r3, #0
	ands r0, r1
	cmp r0, r6
	bne _08020540
	ldrh r3, [r2, #4]
	ldr r0, _0802053C @ =0xFFFFFC00
	ands r0, r3
	movs r1, #0xfc
	lsls r1, r1, #8
	cmp r0, r1
	beq _08020540
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	strh r0, [r2, #4]
	b _08020556
	.align 2, 0
_08020534: .4byte gUnk_02038990
_08020538: .4byte 0x000003FF
_0802053C: .4byte 0xFFFFFC00
_08020540:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08020546:
	lsls r0, r4, #1
	adds r0, r0, r5
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r6, r1
	strh r6, [r0, #4]
	strh r4, [r5, #2]
_08020556:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802055C
sub_0802055C: @ 0x0802055C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08020584 @ =gUnk_02038990
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #1
	adds r4, r0, r2
	ldrh r1, [r4, #4]
	ldr r5, _08020588 @ =0xFFFFFC00
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	bne _0802058C
	movs r0, #0
	b _080205AE
	.align 2, 0
_08020584: .4byte gUnk_02038990
_08020588: .4byte 0xFFFFFC00
_0802058C:
	ldr r3, _080205B4 @ =0x000003FF
	ands r3, r1
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r1, [r2]
	lsls r1, r1, #0xa
	ldrh r0, [r4, #4]
	ands r0, r5
	cmp r1, r0
	bne _080205AC
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
	movs r0, #0
	strh r0, [r2]
_080205AC:
	adds r0, r3, #0
_080205AE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080205B4: .4byte 0x000003FF

	thumb_func_start nullsub_112
nullsub_112: @ 0x080205B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080205BC
sub_080205BC: @ 0x080205BC
	push {lr}
	ldr r0, _080205D8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080205DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080205E4
	.align 2, 0
_080205D8: .4byte gCurTask
_080205DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080205E4:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080205F0
sub_080205F0: @ 0x080205F0
	push {lr}
	adds r3, r0, #0
	ldr r0, _08020614 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802060A
	ldr r2, _08020618 @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	ldr r0, _0802061C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_0802060A:
	ldr r0, _08020620 @ =sub_08020624
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08020614: .4byte gUnk_0203AD10
_08020618: .4byte gUnk_020382D0
_0802061C: .4byte 0x0000FFFD
_08020620: .4byte sub_08020624

	thumb_func_start sub_08020624
sub_08020624: @ 0x08020624
	ldr r2, _08020638 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	strh r3, [r0, #8]
	ldr r1, _0802063C @ =sub_08020640
	str r1, [r0]
	bx lr
	.align 2, 0
_08020638: .4byte gBldRegs
_0802063C: .4byte sub_08020640

	thumb_func_start sub_08020640
sub_08020640: @ 0x08020640
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #8]
	adds r1, r0, #1
	strh r1, [r2, #8]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08020668
	ldr r0, _08020660 @ =gBldRegs
	movs r1, #0x10
	strh r1, [r0, #4]
	ldr r0, _08020664 @ =sub_08020674
	str r0, [r2]
	b _0802066C
	.align 2, 0
_08020660: .4byte gBldRegs
_08020664: .4byte sub_08020674
_08020668:
	ldr r0, _08020670 @ =gBldRegs
	strh r1, [r0, #4]
_0802066C:
	pop {r0}
	bx r0
	.align 2, 0
_08020670: .4byte gBldRegs

	thumb_func_start sub_08020674
sub_08020674: @ 0x08020674
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08020698 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802068C
	bl sub_08031CC8
	bl sub_081589E8
_0802068C:
	ldr r0, _0802069C @ =sub_08020298
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020698: .4byte gUnk_0203AD10
_0802069C: .4byte sub_08020298

	thumb_func_start sub_080206A0
sub_080206A0: @ 0x080206A0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldrb r0, [r6, #0xe]
	cmp r0, #6
	bhi _080206FC
	lsls r0, r0, #2
	ldr r1, _080206BC @ =_080206C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080206BC: .4byte _080206C0
_080206C0: @ jump table
	.4byte _080206DC @ case 0
	.4byte _080206E0 @ case 1
	.4byte _080206E4 @ case 2
	.4byte _080206FC @ case 3
	.4byte _080206EA @ case 4
	.4byte _080206F4 @ case 5
	.4byte _080206F8 @ case 6
_080206DC:
	movs r5, #0xd8
	b _080206FA
_080206E0:
	movs r5, #0xc0
	b _080206FA
_080206E4:
	movs r5, #0xae
	lsls r5, r5, #2
	b _080206FA
_080206EA:
	movs r5, #0xcc
	ldr r3, _080206F0 @ =sub_08021DD4
	b _080206FC
	.align 2, 0
_080206F0: .4byte sub_08021DD4
_080206F4:
	movs r5, #0xec
	b _080206FA
_080206F8:
	movs r5, #0xb4
_080206FA:
	ldr r3, _08020728 @ =sub_0809A1C4
_080206FC:
	ldr r0, _0802072C @ =sub_08099B80
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xc4
	lsls r2, r2, #6
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020730
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08020738
	.align 2, 0
_08020728: .4byte sub_0809A1C4
_0802072C: .4byte sub_08099B80
_08020730:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08020738:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	lsls r2, r5, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0809F030
	ldr r0, [r4, #8]
	ldr r1, _08020790 @ =gUnk_02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _08020794 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020790: .4byte gUnk_02018F40
_08020794: .4byte gUnk_08351648

	thumb_func_start sub_08020798
sub_08020798: @ 0x08020798
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r5, #0
	movs r0, #0xb4
	adds r0, r0, r5
	mov r8, r0
	movs r4, #0
	ldr r1, _080207B8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080207BC @ =gUnk_020229E0
	b _080207D4
	.align 2, 0
_080207B8: .4byte gUnk_020229D4
_080207BC: .4byte gUnk_020229E0
_080207C0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080207DC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080207D4:
	cmp r0, #0
	bne _080207C0
	orrs r2, r3
	str r2, [r1]
_080207DC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	movs r0, #0xd0
	strh r0, [r1, #6]
	movs r0, #0x88
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x36
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x1a]
	strh r4, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0x18]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0800A868
	mov r1, r8
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xcc
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, _08020848 @ =sub_0802084C
	str r0, [r5, #0x78]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020848: .4byte sub_0802084C

	thumb_func_start sub_0802084C
sub_0802084C: @ 0x0802084C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov r1, sl
	adds r0, r1, #0
	str r0, [sp]
	movs r7, #1
	movs r2, #0
	mov sb, r2
	mov r8, r2
_08020868:
	movs r4, #0xd4
	lsls r4, r4, #1
	mov r0, r8
	muls r0, r4, r0
	ldr r1, _080208DC @ =gUnk_02020EE0
	adds r4, r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08020886
	b _08020A5A
_08020886:
	mov r0, sl
	adds r0, #0x60
	adds r6, r4, #0
	adds r6, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	beq _08020898
	b _08020A5A
_08020898:
	ldr r0, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #0x11
	ands r0, r5
	cmp r0, #0
	bne _080208E0
	adds r0, r4, #0
	bl sub_0804BAD8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080208B2
	b _08020A26
_080208B2:
	ldr r0, [r4, #8]
	orrs r0, r5
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r2, sb
	lsls r0, r2, #3
	add r0, sb
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	mov r1, r8
	adds r1, #0x4a
	adds r0, r4, #0
	adds r0, #0xd4
	strh r1, [r0]
	b _08020A26
	.align 2, 0
_080208DC: .4byte gUnk_02020EE0
_080208E0:
	adds r3, r4, #0
	adds r3, #0xd4
	ldrh r2, [r3]
	adds r0, r2, #0
	subs r0, #0x4a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _080209A4
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08020914
	adds r0, r2, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bhi _0802090E
	b _08020A26
_0802090E:
	movs r0, #0x4a
	strh r0, [r3]
	b _08020A26
_08020914:
	movs r0, #0x14
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0808925C
	ldr r0, _08020990 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r2, _08020994 @ =gUnk_02020EE0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08020A26
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020952
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r1
	bne _08020A26
_08020952:
	ldr r1, _08020998 @ =gSongTable
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r1, r4
	ldrh r3, [r0]
	lsls r0, r3, #2
	ldr r2, _0802099C @ =gUnk_08D60FA4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08020978
	subs r4, #4
	adds r0, r1, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08020A26
_08020978:
	cmp r3, #0
	beq _0802098A
	ldr r0, _080209A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08020A26
_0802098A:
	movs r0, #0x71
	b _08020A22
	.align 2, 0
_08020990: .4byte gUnk_0203AD3C
_08020994: .4byte gUnk_02020EE0
_08020998: .4byte gSongTable
_0802099C: .4byte gUnk_08D60FA4
_080209A0: .4byte gUnk_0203AD10
_080209A4:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x14
	bne _08020A40
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08020A26
	movs r0, #0
	strh r0, [r3]
	ldr r0, _08020A2C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r2, _08020A30 @ =gUnk_02020EE0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08020A26
	ldrb r0, [r4]
	cmp r0, #0
	bne _080209E8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r1
	bne _08020A26
_080209E8:
	ldr r1, _08020A34 @ =gSongTable
	movs r4, #0xd3
	lsls r4, r4, #2
	adds r0, r1, r4
	ldrh r3, [r0]
	lsls r0, r3, #2
	ldr r2, _08020A38 @ =gUnk_08D60FA4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08020A0E
	subs r4, #4
	adds r0, r1, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08020A26
_08020A0E:
	cmp r3, #0
	beq _08020A20
	ldr r0, _08020A3C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08020A26
_08020A20:
	movs r0, #0x69
_08020A22:
	bl m4aSongNumStart
_08020A26:
	movs r7, #0
	b _08020A50
	.align 2, 0
_08020A2C: .4byte gUnk_0203AD3C
_08020A30: .4byte gUnk_02020EE0
_08020A34: .4byte gSongTable
_08020A38: .4byte gUnk_08D60FA4
_08020A3C: .4byte gUnk_0203AD10
_08020A40:
	ldr r0, [sp]
	adds r0, #0xcc
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_08020A50:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08020A5A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #3
	bhi _08020A6A
	b _08020868
_08020A6A:
	cmp r7, #0
	beq _08020A7C
	ldr r0, [sp]
	adds r0, #0xce
	mov r4, sb
	strh r4, [r0]
	ldr r0, _08020A8C @ =sub_08022E6C
	mov r1, sl
	str r0, [r1, #0x78]
_08020A7C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020A8C: .4byte sub_08022E6C

	thumb_func_start sub_08020A90
sub_08020A90: @ 0x08020A90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0xd4
	ldrh r0, [r1]
	cmp r0, #0x63
	bls _08020AAC
	b _08020D32
_08020AAC:
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	mov sb, r1
	adds r2, r7, #0
	adds r2, #0xcc
	str r2, [sp, #0x10]
_08020ABC:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r2, _08020B14 @ =gUnk_02020EE0
	adds r6, r0, r2
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	mov r3, sb
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	mov ip, r2
	mov r5, sb
	adds r5, #1
	cmp r1, #0
	bne _08020AE2
	b _08020D16
_08020AE2:
	adds r0, r7, #0
	adds r0, #0xd2
	ldrh r1, [r0]
	adds r3, r0, #0
	ldr r4, [sp, #0xc]
	adds r4, #1
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _08020AF6
	b _08020D10
_08020AF6:
	movs r1, #0
	str r1, [sp, #8]
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #5
	bls _08020B08
	b _08020D10
_08020B08:
	lsls r0, r1, #2
	ldr r1, _08020B18 @ =_08020B1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020B14: .4byte gUnk_02020EE0
_08020B18: .4byte _08020B1C
_08020B1C: @ jump table
	.4byte _08020B34 @ case 0
	.4byte _08020BD4 @ case 1
	.4byte _08020BF4 @ case 2
	.4byte _08020C28 @ case 3
	.4byte _08020C64 @ case 4
	.4byte _08020CE8 @ case 5
_08020B34:
	ldr r2, _08020BA0 @ =0x000002C3
	mov sl, r2
	movs r5, #0
	str r5, [sp]
	ldr r0, [sp, #4]
	movs r1, #4
	movs r3, #0
	bl sub_0808B62C
	adds r2, r7, #0
	adds r2, #0xb8
	str r0, [r2]
	adds r0, #0x2b
	strb r5, [r0]
	ldr r3, _08020BA4 @ =gUnk_02020EE0
	ldr r0, _08020BA8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r4, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	bne _08020BAC
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020BB2
	mov r0, sl
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08020BB2
	mov r0, sl
	movs r1, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08020BB2
	.align 2, 0
_08020BA0: .4byte 0x000002C3
_08020BA4: .4byte gUnk_02020EE0
_08020BA8: .4byte gUnk_0203AD3C
_08020BAC:
	adds r0, r3, #0
	adds r0, #0x2b
	strb r5, [r0]
_08020BB2:
	ldr r1, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r4]
	ldr r0, [r6, #0x44]
	ldr r3, _08020BD0 @ =0xFFFFEC00
	adds r0, r0, r3
	str r0, [r1, #0x38]
	adds r1, r7, #0
	adds r1, #0xd0
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	b _08020C1A
	.align 2, 0
_08020BD0: .4byte 0xFFFFEC00
_08020BD4:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x1e
	bhi _08020BF0
	b _08020D10
_08020BF0:
	movs r0, #2
	b _08020C54
_08020BF4:
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #8]
	adds r4, r7, #0
	adds r4, #0xb8
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	str r3, [r4]
	adds r0, r7, #0
	adds r0, #0xd0
	strh r3, [r0]
	movs r0, #3
_08020C1A:
	mov r1, r8
	strh r0, [r1]
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	b _08020D10
_08020C28:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x10
	bls _08020D10
	ldrh r0, [r3]
	adds r1, r0, #1
	adds r0, r7, #0
	adds r0, #0xce
	ldrh r0, [r0]
	cmp r1, r0
	beq _08020C5A
	movs r0, #0
	strh r1, [r3]
_08020C54:
	mov r2, r8
	strh r0, [r2]
	b _08020D10
_08020C5A:
	movs r0, #0
	strh r0, [r2]
	movs r0, #4
	mov r3, r8
	b _08020D0E
_08020C64:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r2
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x2d
	bls _08020D10
	movs r6, #0
	movs r3, #0
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	b _08020CC0
_08020C8A:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r2, r3, #0
	muls r2, r0, r2
	mov r1, ip
	adds r0, r2, r1
	adds r0, #0xd4
	movs r1, #0x17
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _08020CE4 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08020CB0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bhi _08020CD4
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	asrs r0, r3
_08020CC0:
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020CB0
	adds r0, r7, #0
	adds r0, #0xce
	ldrh r0, [r0]
	subs r0, #1
	cmp r6, r0
	bne _08020C8A
_08020CD4:
	movs r0, #0
	mov r3, sl
	strh r0, [r3]
	movs r0, #5
	mov r1, r8
	strh r0, [r1]
	b _08020D10
	.align 2, 0
_08020CE4: .4byte 0xFFFFFA00
_08020CE8:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x78
	bls _08020D10
	movs r0, #0
	strh r0, [r2]
	mov r2, r8
	strh r0, [r2]
	ldrh r0, [r3]
	adds r0, #1
_08020D0E:
	strh r0, [r3]
_08020D10:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_08020D16:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _08020D22
	b _08020ABC
_08020D22:
	ldr r3, [sp, #8]
	cmp r3, #0
	beq _08020DC8
	adds r1, r7, #0
	adds r1, #0xd4
	movs r0, #0x64
	strh r0, [r1]
	b _08020DC8
_08020D32:
	ldrh r0, [r1]
	cmp r0, #0x64
	beq _08020D3E
	cmp r0, #0x65
	beq _08020DB0
	b _08020DC8
_08020D3E:
	movs r4, #0
	movs r3, #0
	ldr r0, _08020DAC @ =gUnk_02020EE0
	mov ip, r0
	ldr r2, [sp, #4]
	adds r2, #0xcc
	str r2, [sp, #0x10]
	mov r8, r1
	ldr r0, [sp, #4]
	adds r0, #0xd0
	mov sl, r0
_08020D54:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	mov r1, ip
	adds r2, r0, r1
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020D92
	adds r1, r2, #0
	adds r1, #0xd4
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r2, #0x40]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08020D92:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08020D54
	movs r0, #0
	mov r2, sl
	strh r0, [r2]
	movs r0, #0x65
	mov r3, r8
	strh r0, [r3]
	b _08020DC8
	.align 2, 0
_08020DAC: .4byte gUnk_02020EE0
_08020DB0:
	ldr r0, [sp, #4]
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _08020DC8
	ldr r0, _08020DD8 @ =sub_08022E80
	ldr r1, [sp, #4]
	str r0, [r1, #0x78]
_08020DC8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020DD8: .4byte sub_08022E80

	thumb_func_start sub_08020DDC
sub_08020DDC: @ 0x08020DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov r6, sb
	adds r0, #0xd0
	ldrh r0, [r0]
	movs r7, #0xf
	ands r7, r0
	cmp r7, #0
	beq _08020DFA
	b _08020F3E
_08020DFA:
	lsrs r5, r0, #4
	movs r0, #1
	ands r5, r0
	mov r0, sb
	adds r0, #0xce
	ldrh r0, [r0]
	movs r1, #0x1f
	cmp r0, #2
	bhi _08020E0E
	movs r1, #0xf
_08020E0E:
	mov sl, r1
	lsls r1, r5, #2
	mov r0, sb
	adds r0, #0xb8
	adds r4, r0, r1
	ldr r2, [r4]
	str r1, [sp, #4]
	cmp r2, #0
	beq _08020E2C
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_08020E2C:
	ldr r0, _08020E94 @ =0x000002C3
	mov r8, r0
	str r7, [sp]
	mov r0, sb
	movs r1, #4
	mov r2, r8
	movs r3, #0
	bl sub_0808B62C
	str r0, [r4]
	adds r0, #0x2b
	strb r7, [r0]
	ldr r2, _08020E98 @ =gUnk_02020EE0
	ldr r0, _08020E9C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08020EA0
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020EA6
	mov r0, r8
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08020EA6
	mov r0, r8
	movs r1, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08020EA6
	.align 2, 0
_08020E94: .4byte 0x000002C3
_08020E98: .4byte gUnk_02020EE0
_08020E9C: .4byte gUnk_0203AD3C
_08020EA0:
	adds r0, r1, #0
	adds r0, #0x2b
	strb r7, [r0]
_08020EA6:
	cmp r5, #0
	beq _08020EEC
	adds r4, r6, #0
	adds r4, #0xb8
	ldr r1, [sp, #4]
	adds r0, r4, r1
	ldr r5, [r0]
	ldr r3, _08020EE0 @ =gUnk_030068D8
	ldr r1, [r3]
	ldr r0, _08020EE4 @ =0x00196225
	muls r1, r0, r1
	ldr r2, _08020EE8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	adds r0, r6, #0
	adds r0, #0xce
	ldrh r2, [r0]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	rsbs r0, r0, #0
	asrs r0, r0, #1
	lsrs r1, r1, #0x10
	mov r2, sl
	ands r1, r2
	adds r1, #0x4e
	adds r0, r0, r1
	b _08020F1A
	.align 2, 0
_08020EE0: .4byte gUnk_030068D8
_08020EE4: .4byte 0x00196225
_08020EE8: .4byte 0x3C6EF35F
_08020EEC:
	adds r4, r6, #0
	adds r4, #0xb8
	ldr r5, [r4]
	ldr r3, _08020F98 @ =gUnk_030068D8
	ldr r1, [r3]
	ldr r0, _08020F9C @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08020FA0 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r3]
	adds r0, r6, #0
	adds r0, #0xce
	ldrh r2, [r0]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	rsbs r0, r0, #0
	asrs r0, r0, #1
	lsrs r1, r1, #0x10
	mov r2, sl
	ands r1, r2
	subs r1, #0x52
	subs r0, r0, r1
_08020F1A:
	lsls r0, r0, #8
	str r0, [r5, #0x34]
	ldr r1, [sp, #4]
	adds r0, r4, r1
	ldr r2, [r0]
	ldr r1, [r3]
	ldr r0, _08020F9C @ =0x00196225
	muls r1, r0, r1
	ldr r4, _08020FA0 @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x74
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2, #0x38]
_08020F3E:
	adds r0, r6, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _08020F88
	adds r3, r6, #0
	adds r3, #0xb8
	ldr r2, [r3]
	cmp r2, #0
	beq _08020F66
	ldrh r1, [r2, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
_08020F66:
	movs r5, #0
	str r5, [r3]
	adds r4, r6, #0
	adds r4, #0xbc
	ldr r2, [r4]
	cmp r2, #0
	beq _08020F80
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_08020F80:
	str r5, [r4]
	ldr r0, _08020FA4 @ =sub_08022E80
	mov r4, sb
	str r0, [r4, #0x78]
_08020F88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020F98: .4byte gUnk_030068D8
_08020F9C: .4byte 0x00196225
_08020FA0: .4byte 0x3C6EF35F
_08020FA4: .4byte sub_08022E80

	thumb_func_start sub_08020FA8
sub_08020FA8: @ 0x08020FA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r0, [sp, #4]
	adds r0, #0xb4
	ldr r7, [r0]
	ldr r6, _08021068 @ =gUnk_0203AD3C
	ldrb r1, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _0802106C @ =gUnk_02023530
	adds r1, r1, r0
	mov sb, r1
	mov r1, r8
	adds r1, #0xd0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	mov sl, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080210AA
	adds r1, r7, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080210AA
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080210AA
	ldr r5, _08021070 @ =0x000002C3
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	movs r1, #4
	adds r2, r5, #0
	movs r3, #0
	bl sub_0808B62C
	mov r4, r8
	adds r4, #0xc8
	str r0, [r4]
	adds r0, #0x2b
	mov r1, sl
	strb r1, [r0]
	ldr r2, _08021074 @ =gUnk_02020EE0
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08021078
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021080
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08021080
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08021080
	.align 2, 0
_08021068: .4byte gUnk_0203AD3C
_0802106C: .4byte gUnk_02023530
_08021070: .4byte 0x000002C3
_08021074: .4byte gUnk_02020EE0
_08021078:
	adds r0, r1, #0
	adds r0, #0x2b
	mov r2, sl
	strb r2, [r0]
_08021080:
	ldr r2, [sp, #4]
	adds r2, #0xc8
	ldr r1, [r2]
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r2]
	ldr r0, [r7, #0x44]
	ldr r3, _080210F0 @ =0xFFFFEC00
	adds r0, r0, r3
	str r0, [r1, #0x38]
	adds r1, r7, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x83
	strb r2, [r0]
	subs r1, #0x24
	movs r0, #0x10
	strb r0, [r1]
_080210AA:
	ldr r1, [sp, #4]
	adds r1, #0xd0
	ldrh r0, [r1]
	movs r3, #1
	ands r3, r0
	mov ip, r1
	cmp r3, #0
	beq _08021100
	ldr r2, _080210F4 @ =gUnk_030068D8
	ldr r0, [r2]
	ldr r6, _080210F8 @ =0x00196225
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r4, _080210FC @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #7
	ands r0, r3
	subs r0, #4
	mov r5, sb
	adds r5, #0x44
	strh r0, [r5]
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	subs r0, #4
	mov r1, sb
	adds r1, #0x46
	strh r0, [r1]
	b _08021110
	.align 2, 0
_080210F0: .4byte 0xFFFFEC00
_080210F4: .4byte gUnk_030068D8
_080210F8: .4byte 0x00196225
_080210FC: .4byte 0x3C6EF35F
_08021100:
	mov r1, sb
	adds r1, #0x44
	strh r3, [r1]
	mov r0, sb
	adds r0, #0x46
	strh r3, [r0]
	adds r5, r1, #0
	adds r1, r0, #0
_08021110:
	adds r3, r7, #0
	adds r3, #0x50
	movs r4, #0
	ldrsh r2, [r3, r4]
	cmp r2, #0
	bne _08021138
	mov r4, ip
	ldrh r0, [r4]
	cmp r0, #0x78
	bls _08021138
	strh r2, [r5]
	strh r2, [r1]
	strh r2, [r3]
	adds r0, r7, #0
	adds r0, #0x2c
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _08021148 @ =sub_0802114C
	mov r1, r8
	str r0, [r1, #0x78]
_08021138:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021148: .4byte sub_0802114C

	thumb_func_start sub_0802114C
sub_0802114C: @ 0x0802114C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, #0xb4
	ldr r4, [r0]
	ldr r2, _08021240 @ =0x00000292
	ldr r0, [sp, #4]
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r4, #0x40]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x44]
	str r1, [r0, #0x38]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x13
	strb r0, [r1]
	subs r1, #0x33
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [sp, #4]
	adds r0, #0xc8
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	movs r0, #0
	mov sb, r0
_080211A2:
	ldr r0, [sp, #8]
	adds r0, #0xcc
	ldrh r0, [r0]
	mov r1, sb
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021288
	movs r2, #0xd4
	lsls r2, r2, #1
	mov r0, sb
	muls r0, r2, r0
	ldr r3, _08021244 @ =gUnk_02020EE0
	adds r0, r0, r3
	adds r2, r0, #0
	adds r2, #0xd4
	movs r1, #0
	mov sl, r1
	movs r1, #0xa
	strh r1, [r2]
	ldr r7, _08021248 @ =0x000002C3
	movs r2, #0
	str r2, [sp]
	movs r1, #4
	adds r2, r7, #0
	movs r3, #1
	bl sub_0808B62C
	mov r3, sb
	lsls r1, r3, #2
	ldr r2, [sp, #8]
	adds r2, #0xb8
	adds r5, r2, r1
	str r0, [r5]
	adds r0, #0x2b
	mov r3, sl
	strb r3, [r0]
	ldr r0, _0802124C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r3, #0xd4
	lsls r3, r3, #1
	muls r0, r3, r0
	ldr r3, _08021244 @ =gUnk_02020EE0
	adds r0, r0, r3
	adds r0, #0x60
	ldr r4, [r5]
	adds r3, r4, #0
	adds r3, #0x42
	ldrh r0, [r0]
	mov r8, r1
	adds r6, r2, #0
	ldrh r3, [r3]
	cmp r0, r3
	bne _08021250
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021258
	adds r0, r7, #0
	bl sub_0803DF24
	ldr r1, [r5]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08021258
	adds r0, r7, #0
	movs r1, #1
	bl sub_0803DFAC
	ldr r1, [r5]
	adds r1, #0x2b
	strb r0, [r1]
	b _08021258
	.align 2, 0
_08021240: .4byte 0x00000292
_08021244: .4byte gUnk_02020EE0
_08021248: .4byte 0x000002C3
_0802124C: .4byte gUnk_0203AD3C
_08021250:
	adds r0, r4, #0
	adds r0, #0x2b
	mov r1, sl
	strb r1, [r0]
_08021258:
	mov r2, r8
	adds r0, r6, r2
	ldr r2, [r0]
	movs r3, #0xd4
	lsls r3, r3, #1
	mov r1, sb
	muls r1, r3, r1
	ldr r0, _080212AC @ =gUnk_02020EE0
	adds r0, #0x40
	adds r0, r1, r0
	ldr r0, [r0]
	ldr r3, _080212B0 @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r2, #0x34]
	ldr r0, _080212B4 @ =gUnk_02020F24
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, _080212B8 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldrh r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #6]
_08021288:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bls _080211A2
	ldr r0, _080212BC @ =sub_080212C0
	ldr r2, [sp, #4]
	str r0, [r2, #0x78]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080212AC: .4byte gUnk_02020EE0
_080212B0: .4byte 0xFFFFF800
_080212B4: .4byte gUnk_02020F24
_080212B8: .4byte 0xFFFFF400
_080212BC: .4byte sub_080212C0

	thumb_func_start sub_080212C0
sub_080212C0: @ 0x080212C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	mov r1, ip
	adds r0, r1, #0
	str r0, [sp]
	mov r0, ip
	adds r0, #0xb4
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x13
	strh r0, [r1]
	ldr r1, [r2, #0x40]
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	ble _08021348
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	movs r4, #0
	mov r6, ip
	adds r6, #0xcc
	ldr r7, _08021358 @ =sub_08022EA0
	mov sb, r7
	ldr r0, _0802135C @ =gUnk_02020EE0
	mov r8, r0
	movs r5, #0
_08021308:
	ldrh r0, [r6]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021338
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	add r0, r8
	adds r0, #0xd4
	strh r5, [r0]
	lsls r0, r4, #2
	ldr r2, [sp]
	adds r2, #0xb8
	adds r2, r2, r0
	ldr r3, [r2]
	ldrh r0, [r3, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3, #6]
	str r5, [r2]
_08021338:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08021308
	mov r0, sb
	mov r1, ip
	str r0, [r1, #0x78]
_08021348:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021358: .4byte sub_08022EA0
_0802135C: .4byte gUnk_02020EE0

	thumb_func_start sub_08021360
sub_08021360: @ 0x08021360
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	movs r4, #0
	ldr r5, _080213A8 @ =gUnk_02020EE0
_0802136A:
	adds r0, r3, #0
	adds r0, #0xcc
	ldrh r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802140A
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r4, #0
	muls r3, r0, r3
	adds r2, r5, #0
	adds r2, #8
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, _080213AC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r2]
	adds r3, r3, r5
	ldr r1, _080213B0 @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r2, r5, #0
	cmp r0, #0xb
	bne _080213B4
	adds r0, r3, #0
	bl sub_080641FC
	b _0802141E
	.align 2, 0
_080213A8: .4byte gUnk_02020EE0
_080213AC: .4byte 0xFEFFFFFF
_080213B0: .4byte 0x00000103
_080213B4:
	cmp r0, #0xe
	bne _080213C0
	adds r0, r3, #0
	bl sub_0806A798
	b _0802141E
_080213C0:
	cmp r0, #0x13
	bne _080213D6
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080213D6
	adds r0, r3, #0
	bl sub_08047EF0
	b _0802141E
_080213D6:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r2, r0, r2
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080213F0
	adds r0, r2, #0
	bl sub_08059810
	b _0802141E
_080213F0:
	ldr r0, [r2, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08021402
	adds r0, r2, #0
	bl sub_08044EA8
	b _0802141E
_08021402:
	adds r0, r2, #0
	bl sub_0803FE74
	b _0802141E
_0802140A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802136A
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
_0802141E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08021424
sub_08021424: @ 0x08021424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov sb, ip
	movs r6, #1
	movs r7, #0
	movs r4, #0
	ldr r0, _08021494 @ =gUnk_02020EE0
	mov r8, r0
	movs r1, #8
	add r1, r8
	mov sl, r1
	mov r5, ip
	adds r5, #0xb8
_08021446:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, r8
	adds r2, r3, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080214B6
	mov r0, ip
	adds r0, #0x60
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080214B6
	mov r1, sl
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08021498
	ldr r0, [r2, #8]
	orrs r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	movs r6, #0
	b _080214B0
	.align 2, 0
_08021494: .4byte gUnk_02020EE0
_08021498:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	beq _080214A6
	movs r6, #0
	b _080214B0
_080214A6:
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
_080214B0:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080214B6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08021446
	cmp r6, #0
	beq _080214D0
	mov r0, sb
	adds r0, #0xba
	strh r7, [r0]
	ldr r0, _080214E0 @ =sub_08022ECC
	mov r1, ip
	str r0, [r1, #0x78]
_080214D0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080214E0: .4byte sub_08022ECC

	thumb_func_start sub_080214E4
sub_080214E4: @ 0x080214E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r5
	adds r7, r5, #0
	adds r7, #0xb4
	movs r4, #0
	ldr r1, _08021504 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08021508 @ =gUnk_020229E0
	b _08021520
	.align 2, 0
_08021504: .4byte gUnk_020229D4
_08021508: .4byte gUnk_020229E0
_0802150C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08021528
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08021520:
	cmp r0, #0
	bne _0802150C
	orrs r2, r3
	str r2, [r1]
_08021528:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r3, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	ldr r0, _080215AC @ =0x0000FFE0
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x36
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0800A868
	str r0, [r7]
	mov r2, r8
	adds r2, #0xb4
	ldr r1, [r2]
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
	ldr r0, [r2]
	adds r0, #0x83
	movs r1, #7
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x52
	movs r1, #0xfe
	lsls r1, r1, #8
	strh r1, [r0]
	ldr r0, _080215B0 @ =sub_08023504
	str r0, [r5, #0x78]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080215AC: .4byte 0x0000FFE0
_080215B0: .4byte sub_08023504

	thumb_func_start sub_080215B4
sub_080215B4: @ 0x080215B4
	push {r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r0, #0xb4
	ldr r4, [r0]
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	ldr r0, _0802162C @ =0x000002C3
	strh r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	adds r4, #0x83
	movs r0, #8
	strb r0, [r4]
	ldr r0, _08021630 @ =sub_08022EE0
	str r0, [r5, #0x78]
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802162C: .4byte 0x000002C3
_08021630: .4byte sub_08022EE0

	thumb_func_start sub_08021634
sub_08021634: @ 0x08021634
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r0, #0xb4
	ldr r6, [r0]
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x26
	strh r0, [r1]
	ldr r1, [r6, #0x44]
	ldr r0, _08021674 @ =0x000087FF
	cmp r1, r0
	ble _08021712
	movs r4, #0
	ldr r1, _08021678 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _0802167C @ =gUnk_020229E0
	movs r7, #0x56
	add r7, r8
	mov ip, r7
	b _08021694
	.align 2, 0
_08021674: .4byte 0x000087FF
_08021678: .4byte gUnk_020229D4
_0802167C: .4byte gUnk_020229E0
_08021680:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0802169C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08021694:
	cmp r0, #0
	bne _08021680
	orrs r2, r3
	str r2, [r1]
_0802169C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r3, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x8f
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl sub_0800A868
	adds r4, r0, #0
	ldr r2, _08021720 @ =0x000002C9
	str r5, [sp]
	movs r1, #0x14
	movs r3, #0
	bl sub_0808B62C
	ldr r1, [r4, #0x44]
	ldr r7, _08021724 @ =0xFFFFD800
	adds r1, r1, r7
	str r1, [r0, #0x38]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, _08021728 @ =sub_08022EF8
	mov r1, r8
	str r0, [r1, #0x78]
_08021712:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021720: .4byte 0x000002C9
_08021724: .4byte 0xFFFFD800
_08021728: .4byte sub_08022EF8

	thumb_func_start sub_0802172C
sub_0802172C: @ 0x0802172C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sl, r6
	movs r0, #0xad
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	mov r8, r0
	movs r7, #0
	movs r1, #0
	mov sb, r1
_0802174E:
	lsls r1, r7, #2
	movs r0, #0xa5
	lsls r0, r0, #2
	add r0, sl
	adds r5, r0, r1
	mov r2, sb
	str r2, [r5]
	adds r2, r6, #0
	adds r2, #0x60
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r0, _0802182C @ =gUnk_02020EE0
	adds r3, r4, r0
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802180C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0802180C
	ldr r1, _0802182C @ =gUnk_02020EE0
	adds r1, #0x40
	adds r1, r4, r1
	mov r2, r8
	lsls r0, r2, #3
	add r0, r8
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r0, #0x64
	lsls r0, r0, #8
	str r0, [r1]
	ldr r3, _08021830 @ =gUnk_02020EE8
	adds r2, r4, r3
	ldr r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r2]
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xa7
	lsls r2, r2, #2
	movs r3, #0
	bl sub_0808B62C
	str r0, [r5]
	mov r1, r8
	lsls r2, r1, #2
	ldr r3, _08021834 @ =gUnk_082DEA4C
	adds r1, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x34]
	ldr r1, _08021838 @ =gUnk_082DEA4E
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x38]
	mov r1, sb
	strh r1, [r0, #0x3c]
	strh r1, [r0, #0x3e]
	ldr r2, [r0, #0x14]
	ldr r1, _0802183C @ =0xFFFFCFFF
	ands r2, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r2, r1
	str r2, [r0, #0x14]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0xad
	lsls r1, r1, #2
	add r1, sl
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0802180C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _0802174E
	ldr r0, _08021840 @ =sub_08022F0C
	str r0, [r6, #0x78]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802182C: .4byte gUnk_02020EE0
_08021830: .4byte gUnk_02020EE8
_08021834: .4byte gUnk_082DEA4C
_08021838: .4byte gUnk_082DEA4E
_0802183C: .4byte 0xFFFFCFFF
_08021840: .4byte sub_08022F0C

	thumb_func_start sub_08021844
sub_08021844: @ 0x08021844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r7
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r6, #0
	ldr r1, _08021950 @ =gUnk_082DEA5C
	mov sl, r1
_08021860:
	lsls r1, r5, #1
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, r8
	adds r0, r0, r1
	strh r6, [r0]
	lsls r1, r5, #2
	movs r0, #0xa5
	lsls r0, r0, #2
	add r0, r8
	adds r4, r0, r1
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080218C8
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0x10
	ldr r2, _08021954 @ =0x000002DE
	movs r3, #0
	bl sub_0808B62C
	str r0, [r4]
	mov r3, sb
	lsls r2, r3, #2
	mov r3, sl
	adds r1, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x34]
	ldr r1, _08021958 @ =gUnk_082DEA5E
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x38]
	strh r6, [r0, #0x3c]
	strh r6, [r0, #0x3e]
	ldr r2, [r0, #0x14]
	ldr r1, _0802195C @ =0xFFFFCFFF
	ands r2, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r2, r1
	str r2, [r0, #0x14]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080218C8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08021860
	ldr r1, _08021960 @ =gUnk_02020EE0
	ldr r0, _08021964 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802193A
	ldrb r0, [r7]
	cmp r0, #0
	bne _080218FE
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0802193A
_080218FE:
	ldr r1, _08021968 @ =gUnk_08D60FA4
	ldr r4, _0802196C @ =gSongTable
	ldr r2, _08021970 @ =0x0000100C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08021922
	ldr r1, _08021974 @ =0x00001008
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0802193A
_08021922:
	cmp r3, #0
	beq _08021934
	ldr r0, _08021978 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802193A
_08021934:
	ldr r0, _0802197C @ =0x00000201
	bl m4aSongNumStart
_0802193A:
	ldr r0, _08021980 @ =sub_08021984
	str r0, [r7, #0x78]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021950: .4byte gUnk_082DEA5C
_08021954: .4byte 0x000002DE
_08021958: .4byte gUnk_082DEA5E
_0802195C: .4byte 0xFFFFCFFF
_08021960: .4byte gUnk_02020EE0
_08021964: .4byte gUnk_0203AD3C
_08021968: .4byte gUnk_08D60FA4
_0802196C: .4byte gSongTable
_08021970: .4byte 0x0000100C
_08021974: .4byte 0x00001008
_08021978: .4byte gUnk_0203AD10
_0802197C: .4byte 0x00000201
_08021980: .4byte sub_08021984

	thumb_func_start sub_08021984
sub_08021984: @ 0x08021984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov r7, sl
	movs r0, #0
	str r0, [sp]
	mov sb, r0
_0802199A:
	mov r2, sb
	lsls r1, r2, #2
	movs r3, #0xa5
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080219AE
	b _08021D5A
_080219AE:
	adds r5, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r2, _080219E8 @ =gUnk_02020EE0
	adds r6, r0, r2
	mov r1, sb
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xb4
	adds r4, r7, r0
	lsls r1, r1, #1
	adds r3, #0x10
	adds r0, r7, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r2, #0
	mov r8, r1
	cmp r0, #5
	bls _080219DE
	b _08021D50
_080219DE:
	lsls r0, r0, #2
	ldr r1, _080219EC @ =_080219F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080219E8: .4byte gUnk_02020EE0
_080219EC: .4byte _080219F0
_080219F0: @ jump table
	.4byte _08021A08 @ case 0
	.4byte _08021BAA @ case 1
	.4byte _08021C14 @ case 2
	.4byte _08021CB8 @ case 3
	.4byte _08021D04 @ case 4
	.4byte _08021D44 @ case 5
_08021A08:
	movs r4, #1
	mov ip, r4
	ldr r0, [r5, #0x34]
	ldr r1, [r6, #0x40]
	cmp r0, r1
	ble _08021A70
	subs r4, r0, r1
	asrs r1, r4, #8
	ldr r0, _08021A3C @ =gUnk_082DEA6C
	ldr r2, [sp]
	lsls r3, r2, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021A40 @ =gUnk_082DEA7C
	adds r0, r3, r0
	str r0, [sp, #8]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08021A44
	ldr r3, [sp, #8]
	ldrh r1, [r3]
	b _08021A56
	.align 2, 0
_08021A3C: .4byte gUnk_082DEA6C
_08021A40: .4byte gUnk_082DEA7C
_08021A44:
	ldr r0, _08021A6C @ =gUnk_082DEA8C
	adds r0, r3, r0
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r1, #0
	cmp r0, r2
	ble _08021A54
	adds r0, r2, #0
_08021A54:
	adds r1, r0, #0
_08021A56:
	movs r2, #0
	strh r1, [r5, #0x3c]
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, r4
	bge _08021AC8
	rsbs r0, r1, #0
	strh r0, [r5, #0x3c]
	mov ip, r2
	b _08021AD2
	.align 2, 0
_08021A6C: .4byte gUnk_082DEA8C
_08021A70:
	cmp r0, r1
	bge _08021ACC
	subs r4, r1, r0
	asrs r1, r4, #8
	ldr r0, _08021A9C @ =gUnk_082DEA6C
	ldr r2, [sp]
	lsls r3, r2, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021AA0 @ =gUnk_082DEA7C
	adds r0, r3, r0
	str r0, [sp, #8]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08021AA4
	ldr r3, [sp, #8]
	ldrh r1, [r3]
	b _08021AB2
	.align 2, 0
_08021A9C: .4byte gUnk_082DEA6C
_08021AA0: .4byte gUnk_082DEA7C
_08021AA4:
	ldr r0, _08021AC4 @ =gUnk_082DEA8C
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08021AB2
	adds r1, r0, #0
_08021AB2:
	movs r2, #0
	strh r1, [r5, #0x3c]
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, r4
	bge _08021AC8
	mov ip, r2
	b _08021AD2
	.align 2, 0
_08021AC4: .4byte gUnk_082DEA8C
_08021AC8:
	strh r2, [r5, #0x3c]
	b _08021AD2
_08021ACC:
	str r1, [r5, #0x34]
	movs r0, #0
	strh r0, [r5, #0x3c]
_08021AD2:
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x44]
	cmp r1, r0
	ble _08021B30
	subs r4, r1, r0
	asrs r1, r4, #8
	ldr r0, _08021B00 @ =gUnk_082DEA6C
	ldr r6, [sp]
	lsls r3, r6, #2
	adds r0, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021B04 @ =gUnk_082DEA7C
	adds r0, #2
	adds r2, r3, r0
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _08021B08
	ldrh r1, [r2]
	b _08021B18
	.align 2, 0
_08021B00: .4byte gUnk_082DEA6C
_08021B04: .4byte gUnk_082DEA7C
_08021B08:
	ldr r0, _08021B2C @ =gUnk_082DEA8C
	adds r0, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08021B18
	adds r1, r0, #0
_08021B18:
	movs r2, #0
	strh r1, [r5, #0x3e]
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	cmp r0, r4
	bge _08021B26
	b _08021D50
_08021B26:
	strh r2, [r5, #0x3e]
	b _08021B96
	.align 2, 0
_08021B2C: .4byte gUnk_082DEA8C
_08021B30:
	cmp r1, r0
	bge _08021B90
	subs r4, r0, r1
	asrs r1, r4, #8
	ldr r0, _08021B5C @ =gUnk_082DEA6C
	ldr r6, [sp]
	lsls r3, r6, #2
	adds r0, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021B60 @ =gUnk_082DEA7C
	adds r0, #2
	adds r2, r3, r0
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _08021B64
	ldrh r1, [r2]
	b _08021B78
	.align 2, 0
_08021B5C: .4byte gUnk_082DEA6C
_08021B60: .4byte gUnk_082DEA7C
_08021B64:
	ldr r0, _08021B8C @ =gUnk_082DEA8C
	adds r0, #2
	adds r0, r3, r0
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r1, #0
	cmp r0, r2
	ble _08021B76
	adds r0, r2, #0
_08021B76:
	adds r1, r0, #0
_08021B78:
	movs r2, #0
	strh r1, [r5, #0x3e]
	movs r6, #0x3e
	ldrsh r0, [r5, r6]
	cmp r0, r4
	bge _08021B26
	mov ip, r2
	rsbs r0, r1, #0
	b _08021B94
	.align 2, 0
_08021B8C: .4byte gUnk_082DEA8C
_08021B90:
	str r0, [r5, #0x38]
	movs r0, #0
_08021B94:
	strh r0, [r5, #0x3e]
_08021B96:
	mov r0, ip
	cmp r0, #0
	bne _08021B9E
	b _08021D50
_08021B9E:
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #1
	b _08021D4E
_08021BAA:
	adds r0, r6, #0
	bl sub_080525C0
	ldr r2, _08021C10 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r6, #0
	adds r1, #0xd4
	movs r2, #0
	movs r0, #0x5b
	strh r0, [r1]
	ldr r0, [r5, #0x34]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	str r4, [r6, #0x6c]
	ldrh r1, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	mov r4, sb
	lsls r1, r4, #2
	movs r6, #0xa5
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r0, r0, r1
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	strh r2, [r0]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r7, r2
	add r0, r8
	movs r1, #2
	b _08021D4E
	.align 2, 0
_08021C10: .4byte 0x00000292
_08021C14:
	movs r4, #0xab
	lsls r4, r4, #2
	adds r0, r7, r4
	add r0, r8
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bhi _08021C2C
	b _08021D50
_08021C2C:
	ldr r0, _08021CA4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x60
	mov r1, sl
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08021C98
	mov r6, sl
	ldrb r0, [r6]
	cmp r0, #0
	bne _08021C58
	mov r0, sl
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08021C98
_08021C58:
	ldr r1, _08021CA8 @ =gUnk_08D60FA4
	ldr r4, _08021CAC @ =gSongTable
	ldr r2, _08021CB0 @ =0x00001044
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08021C7E
	movs r6, #0x82
	lsls r6, r6, #5
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08021C98
_08021C7E:
	cmp r3, #0
	beq _08021C90
	ldr r0, _08021CB4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08021C98
_08021C90:
	movs r0, #0x82
	lsls r0, r0, #2
	bl m4aSongNumStart
_08021C98:
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #3
	b _08021D4E
	.align 2, 0
_08021CA4: .4byte gUnk_0203AD3C
_08021CA8: .4byte gUnk_08D60FA4
_08021CAC: .4byte gSongTable
_08021CB0: .4byte 0x00001044
_08021CB4: .4byte gUnk_0203AD10
_08021CB8:
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	ldrh r0, [r3]
	adds r0, #0xa
	strh r0, [r3]
	ldr r1, _08021D00 @ =gUnk_082DEA9C
	ldr r3, [sp]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	ble _08021D50
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #4
	b _08021D4E
	.align 2, 0
_08021D00: .4byte gUnk_082DEA9C
_08021D04:
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	ldrh r0, [r2]
	adds r0, #0x18
	strh r0, [r2]
	ldrh r0, [r3]
	adds r0, #0xa
	strh r0, [r3]
	ldr r1, [r4, #0x44]
	ldr r0, _08021D40 @ =0xFFFFE000
	cmp r1, r0
	bge _08021D50
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #5
	b _08021D4E
	.align 2, 0
_08021D40: .4byte 0xFFFFE000
_08021D44:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
_08021D4E:
	strh r1, [r0]
_08021D50:
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
_08021D5A:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _08021D6A
	b _0802199A
_08021D6A:
	movs r1, #1
	movs r2, #0
	mov sb, r2
	movs r4, #0xa5
	lsls r4, r4, #2
	adds r3, r7, r4
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r2, r7, r6
_08021D7C:
	mov r4, sb
	lsls r0, r4, #2
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08021D94
	lsls r0, r4, #1
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, #4
	bhi _08021D94
	movs r1, #0
_08021D94:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bls _08021D7C
	cmp r1, #0
	beq _08021DBE
	ldr r0, _08021DD0 @ =gUnk_0835105C
	ldrh r1, [r0, #0x1e]
	mov r0, sl
	movs r2, #0
	bl sub_0808859C
	mov r6, sl
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
_08021DBE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021DD0: .4byte gUnk_0835105C

	thumb_func_start sub_08021DD4
sub_08021DD4: @ 0x08021DD4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021DEE
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08021DF6
_08021DEE:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08021DF6:
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r6, [r0, #2]
	ldrb r7, [r0, #3]
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r5, [r0]
	ldr r1, _08021E48 @ =gUnk_0203AD2C
	ldrh r0, [r1]
	cmp r0, #0x63
	bhi _08021E76
	movs r0, #0x64
	strh r0, [r1]
	ldr r0, _08021E4C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08021E76
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08021E64
	ldr r0, _08021E50 @ =gUnk_0203AD3C
	ldr r1, _08021E54 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08021E5C
	ldr r2, _08021E58 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _08021E3E
	adds r1, r0, #0
_08021E3E:
	movs r0, #1
	bl sub_0800ACD4
	b _08021E76
	.align 2, 0
_08021E48: .4byte gUnk_0203AD2C
_08021E4C: .4byte gUnk_0203AD10
_08021E50: .4byte gUnk_0203AD3C
_08021E54: .4byte gUnk_0203AD24
_08021E58: .4byte gUnk_0203AD48
_08021E5C:
	movs r0, #8
	bl sub_08031CE4
	b _08021E76
_08021E64:
	ldr r2, _08021EA4 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _08021E70
	adds r1, r0, #0
_08021E70:
	movs r0, #1
	bl sub_0800ACD4
_08021E76:
	adds r0, r4, #0
	bl sub_0809A1C4
	cmp r6, #0
	bne _08021E84
	cmp r5, #0xff
	beq _08021E9E
_08021E84:
	ldr r1, _08021EA8 @ =gUnk_02023530
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r5, r0
	adds r0, r0, r1
	ldr r1, _08021EAC @ =0x0000065E
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #1
	bl sub_08001678
_08021E9E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021EA4: .4byte gUnk_0203AD48
_08021EA8: .4byte gUnk_02023530
_08021EAC: .4byte 0x0000065E

	thumb_func_start sub_08021EB0
sub_08021EB0: @ 0x08021EB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	str r7, [sp, #0x2c]
	ldr r0, _08021F34 @ =gUnk_082DE9FC
	ldrh r5, [r0, #0x24]
	ldrh r0, [r0, #0x26]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #0
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r5, #0
	mov r3, r8
	bl sub_0808B62C
	adds r4, r7, #0
	adds r4, #0xbc
	str r0, [r4]
	adds r0, #0x2b
	strb r6, [r0]
	ldr r2, _08021F38 @ =gUnk_02020EE0
	ldr r0, _08021F3C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08021F40
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021F46
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08021F46
	adds r0, r5, #0
	mov r1, r8
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08021F46
	.align 2, 0
_08021F34: .4byte gUnk_082DE9FC
_08021F38: .4byte gUnk_02020EE0
_08021F3C: .4byte gUnk_0203AD3C
_08021F40:
	adds r0, r1, #0
	adds r0, #0x2b
	strb r6, [r0]
_08021F46:
	ldr r0, [sp, #0x2c]
	adds r0, #0xbc
	mov sl, r0
	ldr r0, [r0]
	ldr r5, _08022078 @ =0xFFFFC000
	str r5, [r0, #0x38]
	str r5, [r0, #0x34]
	ldr r1, _0802207C @ =gUnk_082DEA24
	ldrh r6, [r1, #0x24]
	ldrh r2, [r1, #0x26]
	mov r8, r2
	mov r0, r8
	lsls r3, r0, #0x18
	lsrs r3, r3, #0x18
	movs r4, #0
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_0808B62C
	ldr r1, [sp, #0x2c]
	adds r1, #0xc0
	mov sb, r1
	str r0, [r1]
	mov r2, sl
	ldr r1, [r2]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r1, #1
	adds r0, #0x2b
	strb r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #4]
	add r0, sp, #4
	strh r6, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x1a]
	adds r1, r0, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, r1, #0
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	adds r2, r1, #0
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	adds r0, r2, #0
	bl sub_08155128
	add r0, sp, #4
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r2, sb
	ldr r0, [r2]
	str r5, [r0, #0x38]
	str r5, [r0, #0x34]
	ldr r0, _08022080 @ =gUnk_082DE9FC
	ldrh r2, [r0]
	ldrb r3, [r0, #2]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x14
	bl sub_0808B62C
	ldr r2, [sp, #0x2c]
	adds r2, #0xb4
	str r0, [r2]
	mov r3, sl
	ldr r1, [r3]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r0, #0x2b
	strb r1, [r0]
	ldr r0, [r2]
	movs r6, #0xc8
	lsls r6, r6, #8
	str r6, [r0, #0x34]
	ldr r0, [r2]
	movs r5, #0x88
	lsls r5, r5, #8
	str r5, [r0, #0x38]
	ldr r0, _0802207C @ =gUnk_082DEA24
	ldrh r2, [r0]
	ldrb r3, [r0, #2]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x14
	bl sub_0808B62C
	ldr r2, [sp, #0x2c]
	adds r2, #0xb8
	str r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r0, #0x2b
	strb r1, [r0]
	ldr r0, [r2]
	str r6, [r0, #0x34]
	ldr r0, [r2]
	str r5, [r0, #0x38]
	movs r2, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r8, r0
	ldr r6, _08022084 @ =gUnk_02020EE0
	ldr r5, _08022088 @ =0x01000800
	subs r4, #2
	movs r3, #0
_08022046:
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	ldr r1, [r0, #8]
	orrs r1, r5
	ands r1, r4
	str r1, [r0, #8]
	adds r0, #0xd4
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08022046
	ldr r0, _0802208C @ =sub_08022F50
	str r0, [r7, #0x78]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022078: .4byte 0xFFFFC000
_0802207C: .4byte gUnk_082DEA24
_08022080: .4byte gUnk_082DE9FC
_08022084: .4byte gUnk_02020EE0
_08022088: .4byte 0x01000800
_0802208C: .4byte sub_08022F50

	thumb_func_start sub_08022090
sub_08022090: @ 0x08022090
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xc4
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _080220F4 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _080220F8 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _080220FC @ =0x00000243
	bl m4aSongNumStart
	adds r0, r5, #0
	adds r0, #0xc8
	strh r4, [r0]
	ldr r0, _08022100 @ =sub_08022104
	str r0, [r5, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080220F4: .4byte gUnk_082DE9FC
_080220F8: .4byte gUnk_082DEA24
_080220FC: .4byte 0x00000243
_08022100: .4byte sub_08022104

	thumb_func_start sub_08022104
sub_08022104: @ 0x08022104
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc6
	adds r0, r0, r5
	mov ip, r0
	ldrh r0, [r0]
	adds r0, #0x26
	mov r1, ip
	strh r0, [r1]
	adds r3, r5, #0
	adds r3, #0xb4
	ldr r2, [r3]
	adds r4, r5, #0
	adds r4, #0xc4
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r2, [r3]
	mov r3, ip
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	adds r3, r5, #0
	adds r3, #0xb8
	ldr r2, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r2, [r3]
	mov r4, ip
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldr r0, [r3]
	ldr r1, [r0, #0x38]
	ldr r0, _0802216C @ =0xFFFFC000
	cmp r1, r0
	bgt _08022164
	ldr r0, _08022170 @ =sub_08023054
	str r0, [r5, #0x78]
_08022164:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802216C: .4byte 0xFFFFC000
_08022170: .4byte sub_08023054

	thumb_func_start sub_08022174
sub_08022174: @ 0x08022174
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r6
	movs r3, #0
	ldr r7, _0802221C @ =gUnk_082DE9FC
	adds r5, r6, #0
	adds r5, #0xde
	adds r4, r6, #0
	adds r4, #0xe2
	movs r2, #0
_08022190:
	adds r1, r5, r3
	adds r0, r4, r3
	strb r2, [r0]
	strb r2, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08022190
	mov r1, r8
	adds r1, #0xb4
	movs r0, #0
	mov sb, r0
	movs r0, #0
	strh r0, [r1]
	ldrh r5, [r7, #0x10]
	ldrb r7, [r7, #0x12]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_0808B62C
	mov r2, r8
	adds r2, #0xbc
	str r0, [r2]
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
	ldr r3, _08022220 @ =gUnk_02020EE0
	ldr r0, _08022224 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r4, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	bne _08022228
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022230
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08022230
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08022230
	.align 2, 0
_0802221C: .4byte gUnk_082DE9FC
_08022220: .4byte gUnk_02020EE0
_08022224: .4byte gUnk_0203AD3C
_08022228:
	adds r0, r3, #0
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
_08022230:
	ldr r1, [r4]
	movs r0, #0xb8
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	ldr r1, [r4]
	movs r0, #0x8e
	lsls r0, r0, #9
	str r0, [r1, #0x38]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #1
	eors r1, r0
	movs r0, #0
	mov sb, r0
	movs r3, #0
	strh r1, [r2, #6]
	ldr r0, _080222C0 @ =gUnk_082DEA24
	ldrh r5, [r0, #0x10]
	ldrb r7, [r0, #0x12]
	str r3, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_0808B62C
	mov r2, r8
	adds r2, #0xc0
	str r0, [r2]
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
	ldr r3, _080222C4 @ =gUnk_02020EE0
	ldr r0, _080222C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r4, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	bne _080222CC
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _080222D4
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080222D4
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _080222D4
	.align 2, 0
_080222C0: .4byte gUnk_082DEA24
_080222C4: .4byte gUnk_02020EE0
_080222C8: .4byte gUnk_0203AD3C
_080222CC:
	adds r0, r3, #0
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
_080222D4:
	ldr r1, [r4]
	movs r0, #0xb8
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	ldr r1, [r4]
	movs r0, #0x8e
	lsls r0, r0, #9
	str r0, [r1, #0x38]
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #1
	eors r0, r1
	strh r0, [r2, #6]
	movs r3, #0
	ldr r7, _08022344 @ =gUnk_02020EE0
	ldr r0, _08022348 @ =sub_080230DC
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r5, r6, #0
	adds r5, #0x60
_080222FE:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r2, r0, r7
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08022328
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r5]
	cmp r0, r1
	bne _08022328
	ldr r0, [r2, #8]
	ldr r1, _0802234C @ =0x01000800
	orrs r0, r1
	orrs r0, r4
	str r0, [r2, #8]
_08022328:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080222FE
	mov r0, r8
	str r0, [r6, #0x78]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022344: .4byte gUnk_02020EE0
_08022348: .4byte sub_080230DC
_0802234C: .4byte 0x01000800

	thumb_func_start sub_08022350
sub_08022350: @ 0x08022350
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	mov sb, r7
	ldr r0, _08022444 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _08022448 @ =gUnk_02023530
	adds r1, r1, r0
	mov ip, r1
	movs r0, #0xb4
	adds r0, r0, r7
	mov r8, r0
	ldrh r0, [r0]
	adds r0, #1
	mov r1, r8
	strh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802245C
	adds r1, r7, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
	ldr r5, _0802244C @ =gUnk_030068D8
	ldr r0, [r5]
	ldr r4, _08022450 @ =0x00196225
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r2, _08022454 @ =0x3C6EF35F
	adds r1, r1, r2
	movs r3, #7
	adds r0, r1, #0
	ands r0, r3
	subs r0, #4
	adds r6, r7, #0
	adds r6, #0xca
	strb r0, [r6]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r0, r0, r2
	str r0, [r5]
	ands r0, r3
	subs r0, #4
	adds r3, r7, #0
	adds r3, #0xcb
	strb r0, [r3]
	mov r2, ip
	adds r2, #0x44
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x46
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	movs r6, #0
	str r2, [sp]
	str r1, [sp, #4]
	adds r4, r7, #0
	adds r4, #0xc8
	movs r0, #0xc9
	adds r0, r0, r7
	mov sl, r0
	adds r2, r7, #0
	adds r2, #0x60
_080223EC:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _08022458 @ =gUnk_02020EE0
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08022436
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r3, [r2]
	cmp r0, r3
	bne _08022436
	mov r0, sb
	adds r0, #0xca
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r5, ip
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	mov r0, sb
	adds r0, #0xcb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_08022436:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080223EC
	b _080224F4
	.align 2, 0
_08022444: .4byte gUnk_0203AD3C
_08022448: .4byte gUnk_02023530
_0802244C: .4byte gUnk_030068D8
_08022450: .4byte 0x00196225
_08022454: .4byte 0x3C6EF35F
_08022458: .4byte gUnk_02020EE0
_0802245C:
	adds r1, r7, #0
	adds r1, #0xcc
	movs r0, #0
	strb r0, [r1]
	mov r3, ip
	adds r3, #0x44
	adds r5, r7, #0
	adds r5, #0xca
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x46
	adds r4, r7, #0
	adds r4, #0xcb
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldrh r0, [r1]
	subs r0, r0, r2
	strh r0, [r1]
	movs r6, #0
	str r3, [sp]
	str r1, [sp, #4]
	adds r3, r5, #0
	adds r2, r4, #0
	subs r4, #3
	movs r0, #0xc9
	adds r0, r0, r7
	mov sl, r0
	adds r1, r7, #0
	adds r1, #0x60
	str r1, [sp, #8]
_080224A0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r5, _0802253C @ =gUnk_02020EE0
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080224E4
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080224E4
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	mov r5, ip
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_080224E4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080224A0
	movs r0, #0
	strb r0, [r3]
	strb r0, [r2]
_080224F4:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sl
	ldrb r1, [r1]
	cmp r0, r1
	blo _08022554
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x95
	bgt _08022554
	movs r0, #0
	strb r0, [r4]
	ldr r2, _08022540 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08022544 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08022548 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #0x1f
	ands r0, r1
	adds r0, #5
	mov r5, sl
	strb r0, [r5]
	movs r0, #0x10
	ldr r1, _0802254C @ =gBldRegs
	strh r0, [r1, #4]
	ldr r0, _08022550 @ =0x0000023E
	bl m4aSongNumStart
	b _08022568
	.align 2, 0
_0802253C: .4byte gUnk_02020EE0
_08022540: .4byte gUnk_030068D8
_08022544: .4byte 0x00196225
_08022548: .4byte 0x3C6EF35F
_0802254C: .4byte gBldRegs
_08022550: .4byte 0x0000023E
_08022554:
	ldr r0, _08022560 @ =gBldRegs
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _08022564
	subs r1, #1
	b _08022566
	.align 2, 0
_08022560: .4byte gBldRegs
_08022564:
	movs r1, #0
_08022566:
	strh r1, [r0, #4]
_08022568:
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x95
	ble _0802260E
	ldr r0, _08022620 @ =gBldRegs
	ldrh r2, [r0, #4]
	cmp r2, #0
	bne _0802260E
	mov r1, sb
	adds r1, #0xcc
	ldrb r0, [r1]
	ldr r5, _08022624 @ =sub_08023154
	cmp r0, #0
	beq _08022604
	strb r2, [r1]
	mov r3, sb
	adds r3, #0xca
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r4, [sp]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r4]
	mov r2, sb
	adds r2, #0xcb
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldr r4, [sp, #4]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r4]
	movs r6, #0
	movs r0, #0x60
	adds r0, r0, r7
	mov r8, r0
_080225B0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _08022628 @ =gUnk_02020EE0
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080225F4
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080225F4
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	mov r4, ip
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080225F4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080225B0
	movs r0, #0
	strb r0, [r3]
	strb r0, [r2]
_08022604:
	movs r0, #0
	ldr r1, _08022620 @ =gBldRegs
	strh r0, [r1]
	strh r0, [r1, #4]
	str r5, [r7, #0x78]
_0802260E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022620: .4byte gBldRegs
_08022624: .4byte sub_08023154
_08022628: .4byte gUnk_02020EE0

	thumb_func_start sub_0802262C
sub_0802262C: @ 0x0802262C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08022690 @ =0x00000399
	mov r8, r0
	movs r7, #0
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0x24
	mov r2, r8
	movs r3, #0xa
	bl sub_0808B62C
	adds r1, r6, #0
	adds r1, #0xb8
	str r0, [r1]
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _08022694 @ =gUnk_02020EE0
	ldr r0, _08022698 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802269C
	mov r0, r8
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0802269E
	mov r0, r8
	movs r1, #0xd
	bl sub_0803DFAC
	strb r0, [r4]
	b _0802269E
	.align 2, 0
_08022690: .4byte 0x00000399
_08022694: .4byte gUnk_02020EE0
_08022698: .4byte gUnk_0203AD3C
_0802269C:
	strb r7, [r4]
_0802269E:
	movs r0, #0xb8
	lsls r0, r0, #9
	str r0, [r5, #0x34]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [r5, #0x38]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x20]
	ldr r0, _080226C0 @ =sub_0802318C
	str r0, [r6, #0x78]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080226C0: .4byte sub_0802318C

	thumb_func_start sub_080226C4
sub_080226C4: @ 0x080226C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov r8, ip
	mov r1, ip
	adds r1, #0xb4
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	ldr r0, _08022730 @ =gUnk_02020EE0
	mov sb, r0
	ldr r1, _08022734 @ =sub_08022770
	mov sl, r1
	movs r6, #0x80
	lsls r6, r6, #1
	mov r5, ip
	adds r5, #0xd0
	mov r7, ip
	adds r7, #0x60
_080226F0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	mov r1, sb
	adds r3, r0, r1
	adds r0, r3, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08022750
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _08022750
	lsls r2, r4, #2
	mov r0, r8
	adds r0, #0xce
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	cmp r0, #0xdf
	ble _08022738
	adds r1, r5, r2
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0802273E
	.align 2, 0
_08022730: .4byte gUnk_02020EE0
_08022734: .4byte sub_08022770
_08022738:
	adds r1, r5, r2
	movs r0, #0xc0
	lsls r0, r0, #2
_0802273E:
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x4a
	adds r0, r3, #0
	adds r0, #0xd4
	strh r1, [r0]
	ldr r0, [r3, #8]
	orrs r0, r6
	str r0, [r3, #8]
_08022750:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080226F0
	mov r0, sl
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08022770
sub_08022770: @ 0x08022770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #8]
	mov sb, r0
	movs r3, #1
	adds r1, r0, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0
	mov r8, r0
	mov r7, sp
	add r1, sp, #4
	mov sl, r1
_08022796:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r6, _08022824 @ =gUnk_02020EE0
	adds r0, r0, r6
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _080227B8
	b _08022984
_080227B8:
	mov r0, ip
	adds r0, #0x60
	ldr r1, [sp, #8]
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080227CA
	b _08022984
_080227CA:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r0, sb
	adds r0, #0xde
	mov r6, r8
	adds r4, r0, r6
	ldrb r2, [r4]
	str r0, [sp, #0xc]
	cmp r2, #1
	bne _080227EA
	b _08022930
_080227EA:
	cmp r2, #1
	ble _080227F0
	b _08022984
_080227F0:
	cmp r2, #0
	beq _080227F6
	b _08022984
_080227F6:
	mov r1, ip
	adds r1, #0xd4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bls _0802280C
	movs r0, #0x4a
	strh r0, [r1]
_0802280C:
	mov r0, sb
	adds r0, #0xb4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r0, #0xc7
	bgt _08022828
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0802282A
	.align 2, 0
_08022824: .4byte gUnk_02020EE0
_08022828:
	movs r0, #0xc8
_0802282A:
	adds r3, r0, #0
	mov r2, r8
	lsls r1, r2, #2
	mov r0, sb
	adds r0, #0xce
	adds r4, r0, r1
	ldrh r0, [r4]
	strh r0, [r7]
	mov r0, sb
	adds r0, #0xd0
	adds r5, r0, r1
	ldrh r0, [r5]
	strh r0, [r7, #2]
	mov r6, ip
	ldr r1, [r6, #0x40]
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r0, r2, #0
	subs r0, r0, r1
	mov r6, sl
	strh r0, [r6]
	mov r0, ip
	ldr r1, [r0, #0x44]
	ldr r2, _08022920 @ =0xFFFFE000
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r6, #2]
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r6, #2
	ldrsh r2, [r7, r6]
	str r2, [sp, #0x10]
	adds r1, r0, #0
	muls r1, r2, r1
	str r1, [sp, #0x14]
	movs r6, #0
	ldrsh r2, [r7, r6]
	mov r1, sl
	movs r6, #2
	ldrsh r0, [r1, r6]
	muls r0, r2, r0
	ldr r6, [sp, #0x14]
	subs r1, r6, r0
	cmp r1, #0
	ble _0802288A
	lsls r0, r3, #0x18
	rsbs r0, r0, #0
	lsrs r3, r0, #0x18
_0802288A:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r3, _08022924 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #1
	ldr r3, _08022928 @ =gUnk_08D5FE14
	adds r0, r0, r3
	movs r6, #0
	ldrsh r3, [r0, r6]
	muls r2, r3, r2
	lsls r1, r1, #1
	ldr r0, _08022928 @ =gUnk_08D5FE14
	adds r1, r1, r0
	movs r6, #0
	ldrsh r1, [r1, r6]
	ldr r6, [sp, #0x10]
	adds r0, r6, #0
	muls r0, r1, r0
	subs r2, r2, r0
	asrs r2, r2, #0xe
	strh r2, [r4]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	movs r6, #2
	ldrsh r0, [r7, r6]
	muls r0, r3, r0
	adds r1, r1, r0
	asrs r1, r1, #0xe
	strh r1, [r5]
	movs r0, #0
	ldrsh r1, [r4, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r6, ip
	ldr r1, [r6, #0x44]
	adds r1, r1, r2
	str r1, [r6, #0x44]
	asrs r0, r0, #8
	ldr r2, _0802292C @ =0xFFFFFE98
	adds r0, r0, r2
	cmp r0, #0x10
	bhi _08022982
	asrs r0, r1, #8
	cmp r0, #0xd7
	ble _08022982
	cmp r0, #0xe8
	bgt _08022982
	movs r0, #0xb8
	lsls r0, r0, #9
	str r0, [r6, #0x40]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [r6, #0x44]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, [sp, #0xc]
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	b _08022982
	.align 2, 0
_08022920: .4byte 0xFFFFE000
_08022924: .4byte 0x000003FF
_08022928: .4byte gUnk_08D5FE14
_0802292C: .4byte 0xFFFFFE98
_08022930:
	mov r1, ip
	adds r1, #0xd4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bls _08022946
	movs r0, #0x4a
	strh r0, [r1]
_08022946:
	mov r0, sb
	adds r0, #0xe2
	mov r6, r8
	adds r3, r0, r6
	ldrb r0, [r3]
	ands r2, r0
	cmp r2, #0
	beq _08022964
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	mov r2, ip
	str r0, [r2, #8]
_08022964:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08022982
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #2
	strb r0, [r4]
_08022982:
	movs r3, #0
_08022984:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08022994
	b _08022796
_08022994:
	cmp r3, #0
	beq _080229BE
	ldr r0, _080229D0 @ =gUnk_030016A0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229D4 @ =gUnk_030016E0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229D8 @ =gUnk_03001720
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229DC @ =gUnk_03001770
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229E0 @ =sub_08023268
	ldr r6, [sp, #8]
	str r0, [r6, #0x78]
_080229BE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080229D0: .4byte gUnk_030016A0
_080229D4: .4byte gUnk_030016E0
_080229D8: .4byte gUnk_03001720
_080229DC: .4byte gUnk_03001770
_080229E0: .4byte sub_08023268

	thumb_func_start sub_080229E4
sub_080229E4: @ 0x080229E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0xb4
	movs r0, #0
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0xbc
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08022A80 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x1c]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1e]
	strb r0, [r2, #0x1a]
	movs r6, #0x20
	strb r6, [r2, #0x1c]
	adds r0, r2, #0
	bl sub_08155128
	ldr r5, [r4]
	ldrh r1, [r5, #6]
	ldr r4, _08022A84 @ =0x0000FFFB
	adds r0, r4, #0
	ands r0, r1
	movs r1, #8
	mov sl, r1
	mov r1, sl
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #1
	mov sb, r0
	mov r1, sb
	strh r1, [r5, #4]
	strh r6, [r5, #2]
	movs r0, #2
	mov r8, r0
	mov r1, r8
	strb r1, [r5, #1]
	adds r5, r7, #0
	adds r5, #0xc0
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08022A88 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x1c]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1e]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r5, [r5]
	ldrh r0, [r5, #6]
	ands r4, r0
	mov r0, sl
	orrs r4, r0
	strh r4, [r5, #6]
	mov r1, sb
	strh r1, [r5, #4]
	strh r6, [r5, #2]
	mov r0, r8
	strb r0, [r5, #1]
	ldr r0, _08022A8C @ =sub_08022A90
	str r0, [r7, #0x78]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022A80: .4byte gUnk_082DE9FC
_08022A84: .4byte 0x0000FFFB
_08022A88: .4byte gUnk_082DEA24
_08022A8C: .4byte sub_08022A90

	thumb_func_start sub_08022A90
sub_08022A90: @ 0x08022A90
	push {r4, r5, lr}
	adds r2, r0, #0
	mov ip, r2
	adds r4, r2, #0
	adds r4, #0xbc
	ldr r1, [r4]
	ldrh r3, [r1, #0x3c]
	movs r5, #0x3c
	ldrsh r0, [r1, r5]
	cmp r0, #0
	beq _08022ACA
	adds r0, r3, #0
	subs r0, #0x32
	movs r5, #0
	strh r0, [r1, #0x3c]
	adds r3, r2, #0
	adds r3, #0xc0
	ldr r1, [r3]
	ldrh r0, [r1, #0x3c]
	subs r0, #0x32
	strh r0, [r1, #0x3c]
	ldr r1, [r4]
	movs r4, #0x3c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _08022ACA
	strh r5, [r1, #0x3c]
	ldr r0, [r3]
	strh r5, [r0, #0x3c]
_08022ACA:
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r2, #0
	adds r4, #0xbc
	adds r5, r2, #0
	adds r5, #0xc0
	cmp r0, #9
	ble _08022B30
	movs r0, #0
	strh r0, [r1]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B60 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	movs r2, #1
	strh r2, [r3, #4]
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsrs r0, r0, #4
	strb r0, [r3, #1]
	ldr r3, [r5]
	ldrh r0, [r3, #6]
	ands r1, r0
	strh r1, [r3, #6]
	strh r2, [r3, #4]
	ldrh r0, [r3, #2]
	adds r0, #0x10
	strh r0, [r3, #2]
	lsrs r0, r0, #4
	strb r0, [r3, #1]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B64 @ =0x0000FFF7
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _08022B68 @ =sub_08022B74
	mov r1, ip
	str r0, [r1, #0x78]
_08022B30:
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B6C @ =0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B70 @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022B60: .4byte 0x0000FFFB
_08022B64: .4byte 0x0000FFF7
_08022B68: .4byte sub_08022B74
_08022B6C: .4byte 0x0000FFFD
_08022B70: .4byte 0x0000EFFF

	thumb_func_start sub_08022B74
sub_08022B74: @ 0x08022B74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r6
	adds r3, r6, #0
	adds r3, #0xbc
	ldr r1, [r3]
	ldrh r2, [r1, #0x3c]
	movs r4, #0x3c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _08022BB2
	adds r0, r2, #0
	subs r0, #0x32
	movs r4, #0
	strh r0, [r1, #0x3c]
	adds r2, r6, #0
	adds r2, #0xc0
	ldr r1, [r2]
	ldrh r0, [r1, #0x3c]
	subs r0, #0x32
	strh r0, [r1, #0x3c]
	ldr r1, [r3]
	movs r3, #0x3c
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08022BB2
	strh r4, [r1, #0x3c]
	ldr r0, [r2]
	strh r4, [r0, #0x3c]
_08022BB2:
	adds r7, r6, #0
	adds r7, #0xbc
	ldr r2, [r7]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	adds r5, r6, #0
	adds r5, #0xc0
	cmp r0, #0
	beq _08022C4C
	adds r2, #0xc
	ldr r1, _08022C80 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x20]
	movs r4, #0
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x22]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, [r7]
	strh r4, [r0, #4]
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08022C84 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x20]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x22]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, [r5]
	strh r4, [r0, #4]
	ldr r1, [r5]
	ldr r0, [r1, #0x34]
	movs r4, #0xa0
	lsls r4, r4, #5
	adds r0, r0, r4
	str r0, [r1, #0x34]
	ldr r1, [r5]
	ldr r0, [r1, #0x38]
	ldr r2, _08022C88 @ =0xFFFFE700
	adds r0, r0, r2
	str r0, [r1, #0x38]
	ldr r0, [r5]
	ldr r1, [r0, #0x34]
	movs r0, #0xb8
	lsls r0, r0, #9
	subs r0, r0, r1
	movs r1, #0x14
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0xe6
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, [r0, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #8
	subs r0, r0, r1
	movs r1, #0x14
	bl __divsi3
	ldr r3, _08022C8C @ =0xFFFFFE84
	adds r0, r0, r3
	adds r1, r6, #0
	adds r1, #0xe8
	strh r0, [r1]
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _08022C90 @ =sub_08022C9C
	mov r4, r8
	str r0, [r4, #0x78]
_08022C4C:
	ldr r3, [r7]
	ldrh r2, [r3, #6]
	ldr r1, _08022C94 @ =0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r3, [r7]
	ldrh r2, [r3, #6]
	ldr r1, _08022C98 @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022C80: .4byte gUnk_082DE9FC
_08022C84: .4byte gUnk_082DEA24
_08022C88: .4byte 0xFFFFE700
_08022C8C: .4byte 0xFFFFFE84
_08022C90: .4byte sub_08022C9C
_08022C94: .4byte 0x0000FFFD
_08022C98: .4byte 0x0000EFFF

	thumb_func_start sub_08022C9C
sub_08022C9C: @ 0x08022C9C
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r6, ip
	mov r3, ip
	adds r3, #0xe8
	ldrh r0, [r3]
	adds r0, #0x26
	strh r0, [r3]
	mov r4, ip
	adds r4, #0xc0
	ldr r2, [r4]
	mov r0, ip
	adds r0, #0xe6
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r2, [r4]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	subs r3, #0x2c
	ldr r1, [r3]
	ldrh r2, [r1, #0x3c]
	movs r4, #0x3c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _08022CEE
	adds r0, r2, #0
	subs r0, #0x32
	strh r0, [r1, #0x3c]
	ldr r1, [r3]
	movs r5, #0x3c
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08022CEE
	movs r0, #0
	strh r0, [r1, #0x3c]
_08022CEE:
	mov r5, ip
	adds r5, #0xbc
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08022D0C
	movs r0, #8
	orrs r0, r1
	strh r0, [r2, #6]
	ldr r0, [r5]
	adds r0, #0x28
	movs r1, #0x10
	strb r1, [r0]
_08022D0C:
	mov r1, ip
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _08022D3C
	mov r0, ip
	adds r0, #0xc0
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	ldr r0, _08022D38 @ =sub_080232E4
	str r0, [r6, #0x78]
	b _08022D68
	.align 2, 0
_08022D38: .4byte sub_080232E4
_08022D3C:
	ldr r3, [r5]
	ldrh r2, [r3, #6]
	ldr r1, _08022D70 @ =0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	mov r4, ip
	adds r4, #0xc0
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r3, [r5]
	ldrh r2, [r3, #6]
	ldr r1, _08022D74 @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
_08022D68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022D70: .4byte 0x0000FFFD
_08022D74: .4byte 0x0000EFFF

	thumb_func_start sub_08022D78
sub_08022D78: @ 0x08022D78
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb4
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08022DD0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	adds r3, r4, #0
	adds r3, #0xc4
	str r0, [r3]
	ldrh r1, [r0, #8]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, [r3]
	movs r0, #0x80
	strh r0, [r1, #0xa]
	ldr r1, [r3]
	ldr r0, _08022DD8 @ =0x0000FFFF
	strh r0, [r1, #4]
	ldr r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #6]
	movs r0, #0
	strh r0, [r5]
	ldr r0, _08022DDC @ =sub_080233A8
	str r0, [r4, #0x78]
	ldr r0, _08022DE0 @ =gUnk_0835105C
	ldrh r1, [r0, #0x14]
	adds r0, r4, #0
	movs r2, #0x48
	bl sub_0808859C
_08022DD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022DD8: .4byte 0x0000FFFF
_08022DDC: .4byte sub_080233A8
_08022DE0: .4byte gUnk_0835105C

	thumb_func_start sub_08022DE4
sub_08022DE4: @ 0x08022DE4
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bhi _08022E62
	lsls r0, r0, #2
	ldr r1, _08022DFC @ =_08022E00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022DFC: .4byte _08022E00
_08022E00: @ jump table
	.4byte _08022E1C @ case 0
	.4byte _08022E28 @ case 1
	.4byte _08022E34 @ case 2
	.4byte _08022E62 @ case 3
	.4byte _08022E40 @ case 4
	.4byte _08022E4C @ case 5
	.4byte _08022E58 @ case 6
_08022E1C:
	ldr r0, _08022E24 @ =sub_08020798
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E24: .4byte sub_08020798
_08022E28:
	ldr r0, _08022E30 @ =sub_08022EB4
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E30: .4byte sub_08022EB4
_08022E34:
	ldr r0, _08022E3C @ =sub_0802172C
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E3C: .4byte sub_0802172C
_08022E40:
	ldr r0, _08022E48 @ =sub_08022F24
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E48: .4byte sub_08022F24
_08022E4C:
	ldr r0, _08022E54 @ =sub_08022174
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E54: .4byte sub_08022174
_08022E58:
	ldr r1, _08022E68 @ =sub_080233E0
	str r1, [r2, #0x78]
	adds r0, r2, #0
	bl _call_via_r1
_08022E62:
	pop {r0}
	bx r0
	.align 2, 0
_08022E68: .4byte sub_080233E0

	thumb_func_start sub_08022E6C
sub_08022E6C: @ 0x08022E6C
	adds r2, r0, #0
	adds r2, #0xd0
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022E7C @ =sub_08023438
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022E7C: .4byte sub_08023438

	thumb_func_start sub_08022E80
sub_08022E80: @ 0x08022E80
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r2, [r1]
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #1
	strb r1, [r3]
	adds r2, #0x2c
	movs r1, #8
	strb r1, [r2]
	ldr r1, _08022E9C @ =sub_0802347C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022E9C: .4byte sub_0802347C

	thumb_func_start sub_08022EA0
sub_08022EA0: @ 0x08022EA0
	adds r2, r0, #0
	adds r2, #0xd0
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022EB0 @ =sub_080234C4
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022EB0: .4byte sub_080234C4

	thumb_func_start sub_08022EB4
sub_08022EB4: @ 0x08022EB4
	adds r2, r0, #0
	adds r0, #0xb8
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08022EC8 @ =sub_08021424
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_08022EC8: .4byte sub_08021424

	thumb_func_start sub_08022ECC
sub_08022ECC: @ 0x08022ECC
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022EDC @ =sub_080234E4
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022EDC: .4byte sub_080234E4

	thumb_func_start sub_08022EE0
sub_08022EE0: @ 0x08022EE0
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r1, [r1]
	adds r1, #0x52
	movs r2, #0x80
	lsls r2, r2, #3
	strh r2, [r1]
	ldr r1, _08022EF4 @ =sub_08021634
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022EF4: .4byte sub_08021634

	thumb_func_start sub_08022EF8
sub_08022EF8: @ 0x08022EF8
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022F08 @ =sub_08023524
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022F08: .4byte sub_08023524

	thumb_func_start sub_08022F0C
sub_08022F0C: @ 0x08022F0C
	ldr r1, _08022F1C @ =0x000002B6
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022F20 @ =sub_08023544
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022F1C: .4byte 0x000002B6
_08022F20: .4byte sub_08023544

	thumb_func_start sub_08022F24
sub_08022F24: @ 0x08022F24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08022F34 @ =gUnk_0203AD2C
	ldrh r0, [r0]
	cmp r0, #0x63
	bls _08022F3C
	ldr r0, _08022F38 @ =sub_080230A0
	b _08022F42
	.align 2, 0
_08022F34: .4byte gUnk_0203AD2C
_08022F38: .4byte sub_080230A0
_08022F3C:
	bl m4aMPlayAllStop
	ldr r0, _08022F4C @ =sub_08021EB0
_08022F42:
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022F4C: .4byte sub_08021EB0

	thumb_func_start sub_08022F50
sub_08022F50: @ 0x08022F50
	adds r2, r0, #0
	adds r2, #0xc8
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022F60 @ =sub_08022F64
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022F60: .4byte sub_08022F64

	thumb_func_start sub_08022F64
sub_08022F64: @ 0x08022F64
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08022F7E
	ldr r0, _08022F84 @ =sub_08022F88
	str r0, [r2, #0x78]
_08022F7E:
	pop {r0}
	bx r0
	.align 2, 0
_08022F84: .4byte sub_08022F88

	thumb_func_start sub_08022F88
sub_08022F88: @ 0x08022F88
	mov ip, r0
	adds r0, #0xb4
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	movs r2, #1
	eors r0, r2
	movs r3, #0
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0xb8
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	eors r0, r2
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0xc8
	strh r3, [r0]
	ldr r0, _08022FB4 @ =sub_08022FB8
	mov r1, ip
	str r0, [r1, #0x78]
	bx lr
	.align 2, 0
_08022FB4: .4byte sub_08022FB8

	thumb_func_start sub_08022FB8
sub_08022FB8: @ 0x08022FB8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08022FD2
	ldr r0, _08022FD8 @ =sub_08022FDC
	str r0, [r2, #0x78]
_08022FD2:
	pop {r0}
	bx r0
	.align 2, 0
_08022FD8: .4byte sub_08022FDC

	thumb_func_start sub_08022FDC
sub_08022FDC: @ 0x08022FDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08023024 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x14]
	movs r4, #0
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08023028 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x14]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r5, #0
	adds r0, #0xc8
	strh r4, [r0]
	ldr r0, _0802302C @ =sub_08023030
	str r0, [r5, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023024: .4byte gUnk_082DE9FC
_08023028: .4byte gUnk_082DEA24
_0802302C: .4byte sub_08023030

	thumb_func_start sub_08023030
sub_08023030: @ 0x08023030
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0802304A
	ldr r0, _08023050 @ =sub_08022090
	str r0, [r2, #0x78]
_0802304A:
	pop {r0}
	bx r0
	.align 2, 0
_08023050: .4byte sub_08022090

	thumb_func_start sub_08023054
sub_08023054: @ 0x08023054
	adds r2, r0, #0
	adds r2, #0xc8
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023064 @ =sub_08023068
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023064: .4byte sub_08023068

	thumb_func_start sub_08023068
sub_08023068: @ 0x08023068
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0802308E
	ldr r0, _08023094 @ =gUnk_089331AC
	ldr r1, _08023098 @ =0x00007D78
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0802309C @ =sub_080230A0
	str r0, [r4, #0x78]
_0802308E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023094: .4byte gUnk_089331AC
_08023098: .4byte 0x00007D78
_0802309C: .4byte sub_080230A0

	thumb_func_start sub_080230A0
sub_080230A0: @ 0x080230A0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _080230D4 @ =gUnk_02020EE0
	ldr r4, _080230D8 @ =0xFEFFFFFF
_080230AE:
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r1, [r0, #8]
	ands r1, r4
	str r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080230AE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080230D4: .4byte gUnk_02020EE0
_080230D8: .4byte 0xFEFFFFFF

	thumb_func_start sub_080230DC
sub_080230DC: @ 0x080230DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _080230F6
	ldr r0, _080230FC @ =sub_08023100
	str r0, [r2, #0x78]
_080230F6:
	pop {r0}
	bx r0
	.align 2, 0
_080230FC: .4byte sub_08023100

	thumb_func_start sub_08023100
sub_08023100: @ 0x08023100
	push {r4, lr}
	mov ip, r0
	ldr r1, _08023140 @ =gBldRegs
	movs r4, #0
	movs r3, #0
	movs r0, #0xbf
	strh r0, [r1]
	ldr r2, _08023144 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08023148 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802314C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xf
	ands r0, r1
	adds r0, #5
	mov r1, ip
	adds r1, #0xc9
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xb4
	strh r3, [r0]
	adds r0, #0x14
	strb r4, [r0]
	ldr r0, _08023150 @ =sub_08022350
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023140: .4byte gBldRegs
_08023144: .4byte gUnk_030068D8
_08023148: .4byte 0x00196225
_0802314C: .4byte 0x3C6EF35F
_08023150: .4byte sub_08022350

	thumb_func_start sub_08023154
sub_08023154: @ 0x08023154
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023164 @ =sub_08023168
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023164: .4byte sub_08023168

	thumb_func_start sub_08023168
sub_08023168: @ 0x08023168
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08023182
	ldr r0, _08023188 @ =sub_0802262C
	str r0, [r2, #0x78]
_08023182:
	pop {r0}
	bx r0
	.align 2, 0
_08023188: .4byte sub_0802262C

	thumb_func_start sub_0802318C
sub_0802318C: @ 0x0802318C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb8
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080231B2
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, _080231B8 @ =0x00000399
	strh r1, [r0, #0xc]
	movs r1, #0xb
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _080231BC @ =sub_080231C0
	str r0, [r4, #0x78]
_080231B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080231B8: .4byte 0x00000399
_080231BC: .4byte sub_080231C0

	thumb_func_start sub_080231C0
sub_080231C0: @ 0x080231C0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	mov r5, ip
	mov r1, ip
	adds r1, #0xb4
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	ldr r6, _08023214 @ =gUnk_02020EE0
	ldr r7, _08023218 @ =sub_08023238
	mov r4, ip
	adds r4, #0x60
_080231D8:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r2, r0, r6
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08023224
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4]
	cmp r0, r1
	bne _08023224
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x34]
	cmp r1, r0
	bge _0802321C
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08023222
	.align 2, 0
_08023214: .4byte gUnk_02020EE0
_08023218: .4byte sub_08023238
_0802321C:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_08023222:
	str r0, [r2, #8]
_08023224:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080231D8
	mov r0, ip
	str r7, [r0, #0x78]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08023238
sub_08023238: @ 0x08023238
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2c
	ble _08023258
	ldr r0, _08023260 @ =0x0000021A
	bl m4aSongNumStart
	ldr r0, _08023264 @ =sub_080226C4
	str r0, [r4, #0x78]
_08023258:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023260: .4byte 0x0000021A
_08023264: .4byte sub_080226C4

	thumb_func_start sub_08023268
sub_08023268: @ 0x08023268
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023278 @ =sub_0802327C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023278: .4byte sub_0802327C

	thumb_func_start sub_0802327C
sub_0802327C: @ 0x0802327C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08023296
	ldr r0, _0802329C @ =sub_080232A0
	str r0, [r2, #0x78]
_08023296:
	pop {r0}
	bx r0
	.align 2, 0
_0802329C: .4byte sub_080232A0

	thumb_func_start sub_080232A0
sub_080232A0: @ 0x080232A0
	adds r3, r0, #0
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, #4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x3c]
	strh r0, [r2, #0x3c]
	ldr r0, _080232B8 @ =sub_080232BC
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_080232B8: .4byte sub_080232BC

	thumb_func_start sub_080232BC
sub_080232BC: @ 0x080232BC
	push {lr}
	adds r1, r0, #0
	adds r0, #0xbc
	ldr r3, [r0]
	ldr r0, [r3, #0x34]
	movs r2, #0x84
	lsls r2, r2, #9
	cmp r0, r2
	ble _080232DC
	adds r0, r1, #0
	adds r0, #0xc0
	ldr r0, [r0]
	str r2, [r0, #0x34]
	str r2, [r3, #0x34]
	ldr r0, _080232E0 @ =sub_080229E4
	str r0, [r1, #0x78]
_080232DC:
	pop {r0}
	bx r0
	.align 2, 0
_080232E0: .4byte sub_080229E4

	thumb_func_start sub_080232E4
sub_080232E4: @ 0x080232E4
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080232F4 @ =sub_080232F8
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080232F4: .4byte sub_080232F8

	thumb_func_start sub_080232F8
sub_080232F8: @ 0x080232F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _08023312
	ldr r0, _08023318 @ =sub_0802331C
	str r0, [r2, #0x78]
_08023312:
	pop {r0}
	bx r0
	.align 2, 0
_08023318: .4byte sub_0802331C

	thumb_func_start sub_0802331C
sub_0802331C: @ 0x0802331C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xbc
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _0802335C @ =gUnk_082DE9FC
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r0, _08023360 @ =0x00000399
	strh r0, [r2, #0xc]
	movs r0, #0xc
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _08023364 @ =sub_08023368
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802335C: .4byte gUnk_082DE9FC
_08023360: .4byte 0x00000399
_08023364: .4byte sub_08023368

	thumb_func_start sub_08023368
sub_08023368: @ 0x08023368
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xb8
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08023388
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
	ldr r0, _08023390 @ =sub_08023394
	str r0, [r3, #0x78]
_08023388:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023390: .4byte sub_08023394

	thumb_func_start sub_08023394
sub_08023394: @ 0x08023394
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080233A4 @ =sub_08022D78
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080233A4: .4byte sub_08022D78

	thumb_func_start sub_080233A8
sub_080233A8: @ 0x080233A8
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080233D6
	adds r0, r3, #0
	adds r0, #0xc4
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	ldr r0, _080233DC @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_080233D6:
	pop {r0}
	bx r0
	.align 2, 0
_080233DC: .4byte 0x0000FFBF

	thumb_func_start sub_080233E0
sub_080233E0: @ 0x080233E0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080233F4 @ =gUnk_0203AD2C
	ldrh r1, [r0]
	ldr r0, _080233F8 @ =0x0000012B
	cmp r1, r0
	bls _08023400
	ldr r0, _080233FC @ =nullsub_113
	str r0, [r2, #0x78]
	b _0802340A
	.align 2, 0
_080233F4: .4byte gUnk_0203AD2C
_080233F8: .4byte 0x0000012B
_080233FC: .4byte nullsub_113
_08023400:
	ldr r1, _08023410 @ =sub_08023414
	str r1, [r2, #0x78]
	adds r0, r2, #0
	bl _call_via_r1
_0802340A:
	pop {r0}
	bx r0
	.align 2, 0
_08023410: .4byte sub_08023414

	thumb_func_start sub_08023414
sub_08023414: @ 0x08023414
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080395D4
	cmp r0, #0
	beq _0802342A
	movs r0, #0x1a
	bl sub_08039600
	ldr r0, _08023430 @ =nullsub_113
	str r0, [r4, #0x78]
_0802342A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023430: .4byte nullsub_113

	thumb_func_start nullsub_113
nullsub_113: @ 0x08023434
	bx lr
	.align 2, 0

	thumb_func_start sub_08023438
sub_08023438: @ 0x08023438
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xd0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08023474
	movs r0, #0
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xd2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xce
	ldrh r0, [r0]
	cmp r0, #4
	beq _08023470
	ldr r0, _0802346C @ =sub_08020A90
	b _08023472
	.align 2, 0
_0802346C: .4byte sub_08020A90
_08023470:
	ldr r0, _08023478 @ =sub_08020DDC
_08023472:
	str r0, [r3, #0x78]
_08023474:
	pop {r0}
	bx r0
	.align 2, 0
_08023478: .4byte sub_08020DDC

	thumb_func_start sub_0802347C
sub_0802347C: @ 0x0802347C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r3, [r0]
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x50
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080234B4 @ =0xFF5A0000
	cmp r0, r1
	bge _080234A2
	ldr r0, _080234B8 @ =0x0000FF5A
	strh r0, [r2]
_080234A2:
	ldr r1, [r3, #0x40]
	ldr r0, _080234BC @ =0x0000AFFF
	cmp r1, r0
	bgt _080234AE
	ldr r0, _080234C0 @ =sub_0802356C
	str r0, [r4, #0x78]
_080234AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080234B4: .4byte 0xFF5A0000
_080234B8: .4byte 0x0000FF5A
_080234BC: .4byte 0x0000AFFF
_080234C0: .4byte sub_0802356C

	thumb_func_start sub_080234C4
sub_080234C4: @ 0x080234C4
	push {lr}
	adds r3, r0, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _080234DC
	ldr r0, _080234E0 @ =sub_08021360
	str r0, [r3, #0x78]
_080234DC:
	pop {r0}
	bx r0
	.align 2, 0
_080234E0: .4byte sub_08021360

	thumb_func_start sub_080234E4
sub_080234E4: @ 0x080234E4
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _080234FC
	ldr r0, _08023500 @ =sub_08023580
	str r0, [r3, #0x78]
_080234FC:
	pop {r0}
	bx r0
	.align 2, 0
_08023500: .4byte sub_08023580

	thumb_func_start sub_08023504
sub_08023504: @ 0x08023504
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0802351A
	ldr r0, _08023520 @ =sub_08023594
	str r0, [r2, #0x78]
_0802351A:
	pop {r0}
	bx r0
	.align 2, 0
_08023520: .4byte sub_08023594

	thumb_func_start sub_08023524
sub_08023524: @ 0x08023524
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _0802353C
	ldr r0, _08023540 @ =sub_080235BC
	str r0, [r3, #0x78]
_0802353C:
	pop {r0}
	bx r0
	.align 2, 0
_08023540: .4byte sub_080235BC

	thumb_func_start sub_08023544
sub_08023544: @ 0x08023544
	push {lr}
	adds r3, r0, #0
	ldr r1, _08023564 @ =0x000002B6
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802355E
	ldr r0, _08023568 @ =sub_0802360C
	str r0, [r3, #0x78]
_0802355E:
	pop {r0}
	bx r0
	.align 2, 0
_08023564: .4byte 0x000002B6
_08023568: .4byte sub_0802360C

	thumb_func_start sub_0802356C
sub_0802356C: @ 0x0802356C
	adds r2, r0, #0
	adds r2, #0xd0
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802357C @ =sub_08020FA8
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0802357C: .4byte sub_08020FA8

	thumb_func_start sub_08023580
sub_08023580: @ 0x08023580
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023590 @ =sub_08023644
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023590: .4byte sub_08023644

	thumb_func_start sub_08023594
sub_08023594: @ 0x08023594
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	bl sub_0803CA20
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0xa]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r2, [r0]
	ldr r0, _080235B8 @ =sub_08023664
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080235B8: .4byte sub_08023664

	thumb_func_start sub_080235BC
sub_080235BC: @ 0x080235BC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r2, #0
	adds r4, r3, #0
	adds r4, #0xb8
	movs r0, #1
	mov ip, r0
	ldr r7, _08023604 @ =gUnk_02020EE8
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _08023608 @ =0xFEFFFFFF
_080235D2:
	ldrh r0, [r4]
	asrs r0, r2
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _080235EA
	adds r1, r2, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
_080235EA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _080235D2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023604: .4byte gUnk_02020EE8
_08023608: .4byte 0xFEFFFFFF

	thumb_func_start sub_0802360C
sub_0802360C: @ 0x0802360C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r7, _08023640 @ =sub_08023734
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r3, r4, r0
	movs r6, #0x80
	movs r5, #0x20
_0802361E:
	lsls r0, r2, #2
	adds r0, r3, r0
	ldr r1, [r0]
	cmp r1, #0
	beq _0802362E
	strh r6, [r1, #0x3c]
	ldr r0, [r0]
	strh r5, [r0, #0x3e]
_0802362E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0802361E
	str r7, [r4, #0x78]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023640: .4byte sub_08023734

	thumb_func_start sub_08023644
sub_08023644: @ 0x08023644
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802365C
	ldr r0, _08023660 @ =sub_080214E4
	str r0, [r3, #0x78]
_0802365C:
	pop {r0}
	bx r0
	.align 2, 0
_08023660: .4byte sub_080214E4

	thumb_func_start sub_08023664
sub_08023664: @ 0x08023664
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xb4
	ldr r4, [r0]
	adds r2, r3, #0
	adds r2, #0xbc
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _0802368E
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08023694 @ =sub_08023698
	str r0, [r3, #0x78]
_0802368E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023694: .4byte sub_08023698

	thumb_func_start sub_08023698
sub_08023698: @ 0x08023698
	adds r3, r0, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x40]
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [r1, #0x44]
	ldr r0, [r1, #8]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #8]
	adds r1, #0x83
	movs r2, #0
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0xbc
	strh r2, [r0]
	ldr r0, _080236C8 @ =sub_080236CC
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_080236C8: .4byte sub_080236CC

	thumb_func_start sub_080236CC
sub_080236CC: @ 0x080236CC
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _080236E4
	ldr r0, _080236E8 @ =sub_080236EC
	str r0, [r3, #0x78]
_080236E4:
	pop {r0}
	bx r0
	.align 2, 0
_080236E8: .4byte sub_080236EC

	thumb_func_start sub_080236EC
sub_080236EC: @ 0x080236EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	bl sub_0803C95C
	movs r2, #0
	ldr r1, _0802370C @ =0x0000FF80
	strh r1, [r0, #0xa]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r2, [r0]
	ldr r0, _08023710 @ =sub_08023714
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802370C: .4byte 0x0000FF80
_08023710: .4byte sub_08023714

	thumb_func_start sub_08023714
sub_08023714: @ 0x08023714
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x40
	bls _0802372C
	ldr r0, _08023730 @ =sub_080237DC
	str r0, [r3, #0x78]
_0802372C:
	pop {r0}
	bx r0
	.align 2, 0
_08023730: .4byte sub_080237DC

	thumb_func_start sub_08023734
sub_08023734: @ 0x08023734
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #1
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r5, r6, r0
	movs r3, #0
	ldr r0, _08023768 @ =0x00011FFF
	mov ip, r0
	ldr r7, _0802376C @ =0xFFFFE000
_0802374A:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08023774
	adds r1, r0, #0
	ldr r0, [r1, #0x34]
	cmp r0, ip
	bgt _08023770
	ldr r0, [r1, #0x38]
	cmp r0, r7
	ble _08023770
	movs r4, #0
	b _08023774
	.align 2, 0
_08023768: .4byte 0x00011FFF
_0802376C: .4byte 0xFFFFE000
_08023770:
	strh r3, [r1, #0x3c]
	strh r3, [r1, #0x3e]
_08023774:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0802374A
	cmp r4, #0
	beq _08023786
	ldr r0, _0802378C @ =sub_08023790
	str r0, [r6, #0x78]
_08023786:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802378C: .4byte sub_08023790

	thumb_func_start sub_08023790
sub_08023790: @ 0x08023790
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r3, #0
	ldr r0, _080237D8 @ =sub_08021844
	mov ip, r0
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r7, r0, #0
	movs r6, #1
	rsbs r6, r6, #0
_080237AE:
	lsls r0, r3, #2
	adds r2, r4, r0
	ldr r1, [r2]
	cmp r1, #0
	beq _080237C0
	ldrh r0, [r1, #6]
	orrs r0, r7
	strh r0, [r1, #6]
	str r6, [r2]
_080237C0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _080237AE
	mov r0, ip
	str r0, [r5, #0x78]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080237D8: .4byte sub_08021844

	thumb_func_start sub_080237DC
sub_080237DC: @ 0x080237DC
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080237EC @ =sub_080237F0
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080237EC: .4byte sub_080237F0

	thumb_func_start sub_080237F0
sub_080237F0: @ 0x080237F0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _08023808
	ldr r0, _0802380C @ =sub_080215B4
	str r0, [r3, #0x78]
_08023808:
	pop {r0}
	bx r0
	.align 2, 0
_0802380C: .4byte sub_080215B4

	thumb_func_start sub_08023810
sub_08023810: @ 0x08023810
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08023844 @ =sub_08099B80
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08023848 @ =sub_08023910
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802384C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08023854
	.align 2, 0
_08023844: .4byte sub_08099B80
_08023848: .4byte sub_08023910
_0802384C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08023854:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0809F030
	ldr r0, [r4, #0xc]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0809F3E0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	beq _080238CE
	subs r0, #1
	adds r1, r5, #0
	lsls r1, r0
	ldr r0, _080238F8 @ =gUnk_020229D0
	ldr r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080238CE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080238CE:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08023900
	ldr r2, _080238FC @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _08023906
	.align 2, 0
_080238F8: .4byte gUnk_020229D0
_080238FC: .4byte gUnk_08351648
_08023900:
	adds r0, r4, #0
	bl sub_08023A6C
_08023906:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08023910
sub_08023910: @ 0x08023910
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802392A
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08023932
_0802392A:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08023932:
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r1, [r3]
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	beq _0802394C
	ldr r2, _08023984 @ =gUnk_020229D0
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802394C:
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08023978
	adds r1, r0, #0
	ldr r3, _08023988 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0802398C @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
_08023978:
	adds r0, r5, #0
	bl sub_0809A1C4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023984: .4byte gUnk_020229D0
_08023988: .4byte gUnk_02023530
_0802398C: .4byte 0x0000065E

	thumb_func_start sub_08023990
sub_08023990: @ 0x08023990
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08023A5E
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08023A5E
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023A5E
	ldr r3, _08023A68 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_08024FE4
_08023A5E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A68: .4byte gUnk_02023530

	thumb_func_start sub_08023A6C
sub_08023A6C: @ 0x08023A6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08023AC0 @ =nullsub_114
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	ldr r1, _08023AC4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	beq _08023AE0
	cmp r0, #3
	bgt _08023AC8
	cmp r0, #2
	beq _08023AD8
	b _08023AD0
	.align 2, 0
_08023AC0: .4byte nullsub_114
_08023AC4: .4byte 0xFFFFCFFF
_08023AC8:
	cmp r0, #4
	beq _08023AE8
	cmp r0, #5
	beq _08023AF0
_08023AD0:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	b _08023AF6
_08023AD8:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #1
	b _08023AF6
_08023AE0:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #2
	b _08023AF6
_08023AE8:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #6
	b _08023AF6
_08023AF0:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #9
_08023AF6:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08023B14
	cmp r0, #0
	bne _08023B0C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08023B0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023B14
sub_08023B14: @ 0x08023B14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r5, #0
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	beq _08023B3A
	cmp r0, #1
	bgt _08023B30
	b _08023C2E
_08023B30:
	cmp r0, #2
	beq _08023B88
	cmp r0, #3
	beq _08023BDC
	b _08023C2E
_08023B3A:
	movs r3, #0
	ldr r0, _08023B80 @ =gUnk_0203AD44
	ldrb r1, [r0]
	adds r7, r2, #0
	cmp r5, r1
	bhs _08023B72
	ldr r0, _08023B84 @ =gUnk_02020EE0
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r2, [r0]
	movs r6, #0xd4
	lsls r6, r6, #1
_08023B54:
	adds r0, r3, #0
	muls r0, r6, r0
	add r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r2
	bne _08023B68
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08023B68:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r1
	blo _08023B54
_08023B72:
	ldr r0, [r7]
	ldrh r0, [r0, #0x12]
	cmp r0, r5
	bhs _08023C2E
_08023B7A:
	movs r0, #0
	b _08023C4E
	.align 2, 0
_08023B80: .4byte gUnk_0203AD44
_08023B84: .4byte gUnk_02020EE0
_08023B88:
	movs r3, #0
	ldr r0, _08023BD4 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08023C2A
	ldr r2, _08023BD8 @ =gUnk_02020EE0
	mov ip, r2
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r6, [r0]
	adds r2, r1, #0
_08023B9E:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	mov r7, ip
	adds r1, r0, r7
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08023BC8
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r7, #0x81
	lsls r7, r7, #1
	adds r1, r1, r7
	ldrh r0, [r0, #0x12]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _08023BC8
	movs r5, #1
_08023BC8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08023B9E
	b _08023C2A
	.align 2, 0
_08023BD4: .4byte gUnk_0203AD44
_08023BD8: .4byte gUnk_02020EE0
_08023BDC:
	movs r3, #0
	ldr r0, _08023C58 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08023C2A
	ldr r0, _08023C5C @ =gUnk_02020EE0
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r8, r0
	adds r6, r1, #0
_08023BF4:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	mov r2, ip
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r8
	bne _08023C20
	ldr r7, _08023C60 @ =0x00000101
	adds r2, r1, r7
	subs r7, #1
	adds r0, r1, r7
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08023C20
	movs r5, #1
_08023C20:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r6
	blo _08023BF4
_08023C2A:
	cmp r5, #0
	beq _08023B7A
_08023C2E:
	ldr r2, _08023C64 @ =sub_08023990
	adds r0, r4, #0
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
_08023C4E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023C58: .4byte gUnk_0203AD44
_08023C5C: .4byte gUnk_02020EE0
_08023C60: .4byte 0x00000101
_08023C64: .4byte sub_08023990

	thumb_func_start sub_08023C68
sub_08023C68: @ 0x08023C68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08023D3C @ =sub_08023D68
	movs r1, #1
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	ldr r0, _08023D40 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _08023C9A
	ldr r0, _08023D44 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
_08023C9A:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x3e
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _08023CC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_08023CC4:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08023D48 @ =gUnk_02020EE0
	ldr r0, _08023D4C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08023D34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08023CF8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08023D34
_08023CF8:
	ldr r1, _08023D50 @ =gUnk_08D60FA4
	ldr r4, _08023D54 @ =gSongTable
	ldr r2, _08023D58 @ =0x00001134
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08023D1C
	ldr r1, _08023D5C @ =0x00001130
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08023D34
_08023D1C:
	cmp r3, #0
	beq _08023D2E
	ldr r0, _08023D60 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08023D34
_08023D2E:
	ldr r0, _08023D64 @ =0x00000226
	bl m4aSongNumStart
_08023D34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D3C: .4byte sub_08023D68
_08023D40: .4byte 0xFFFFFBFF
_08023D44: .4byte 0xFFFFFDFF
_08023D48: .4byte gUnk_02020EE0
_08023D4C: .4byte gUnk_0203AD3C
_08023D50: .4byte gUnk_08D60FA4
_08023D54: .4byte gSongTable
_08023D58: .4byte 0x00001134
_08023D5C: .4byte 0x00001130
_08023D60: .4byte gUnk_0203AD10
_08023D64: .4byte 0x00000226

	thumb_func_start sub_08023D68
sub_08023D68: @ 0x08023D68
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #5
	bls _08023D78
	b _08023F2C
_08023D78:
	lsls r0, r0, #2
	ldr r1, _08023D84 @ =_08023D88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023D84: .4byte _08023D88
_08023D88: @ jump table
	.4byte _08023DA0 @ case 0
	.4byte _08023F2C @ case 1
	.4byte _08023EA2 @ case 2
	.4byte _08023EC6 @ case 3
	.4byte _08023EF0 @ case 4
	.4byte _08023F12 @ case 5
_08023DA0:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08023DE0
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _08023DCC @ =0xFFFFFEB4
	adds r5, r0, #0
	cmp r3, r1
	bge _08023DD4
	ldr r0, _08023DD0 @ =0x0000FEB4
	strh r0, [r5]
	b _08023E04
	.align 2, 0
_08023DCC: .4byte 0xFFFFFEB4
_08023DD0: .4byte 0x0000FEB4
_08023DD4:
	movs r0, #0xa6
	lsls r0, r0, #1
	cmp r3, r0
	ble _08023E04
	strh r0, [r5]
	b _08023E04
_08023DE0:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r5, r1, #0
	cmp r0, r3
	ble _08023DFC
	strh r3, [r5]
	b _08023E04
_08023DFC:
	ldr r1, _08023E20 @ =0xFFFFFEB4
	cmp r0, r1
	bge _08023E04
	strh r1, [r5]
_08023E04:
	adds r1, r2, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r4, [r0, #0x40]
	ldr r0, [r2, #0x40]
	subs r3, r4, r0
	adds r6, r1, #0
	cmp r3, #0
	blt _08023E28
	ldr r0, _08023E24 @ =0x00002FFF
	cmp r3, r0
	ble _08023E30
	b _08023E50
	.align 2, 0
_08023E20: .4byte 0xFFFFFEB4
_08023E24: .4byte 0x00002FFF
_08023E28:
	subs r1, r0, r4
	ldr r0, _08023E44 @ =0x00002FFF
	cmp r1, r0
	bgt _08023E50
_08023E30:
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	ldr r1, [r2, #0x44]
	subs r3, r0, r1
	cmp r3, #0
	blt _08023E48
	ldr r0, _08023E44 @ =0x00002FFF
	cmp r3, r0
	ble _08023E5C
	b _08023E50
	.align 2, 0
_08023E44: .4byte 0x00002FFF
_08023E48:
	subs r1, r1, r0
	ldr r0, _08023E6C @ =0x00002FFF
	cmp r1, r0
	ble _08023E5C
_08023E50:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bne _08023E70
_08023E5C:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08023F2C
	b _08023E88
	.align 2, 0
_08023E6C: .4byte 0x00002FFF
_08023E70:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08023F2C
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023E90
_08023E88:
	adds r0, r2, #0
	bl sub_08025040
	b _08023F2C
_08023E90:
	strh r0, [r5]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #0x31
	movs r0, #3
	b _08023F2A
_08023EA2:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x7f
	bgt _08023F2C
	adds r0, r2, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, [r2, #8]
	subs r1, #7
	ands r0, r1
	str r0, [r2, #8]
	b _08023F2C
_08023EC6:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08023F2C
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r2, #0x18]
	ldr r1, _08023EEC @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x18]
	adds r1, r2, #0
	adds r1, #0x85
	b _08023F28
	.align 2, 0
_08023EEC: .4byte 0xFFFFCFFF
_08023EF0:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08023F2C
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #6
	strb r0, [r3]
	strh r1, [r2, #4]
	b _08023F2C
_08023F12:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08023F2C
	movs r0, #0
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x83
_08023F28:
	movs r0, #1
_08023F2A:
	strb r0, [r1]
_08023F2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023F34
sub_08023F34: @ 0x08023F34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _08023F54
	ldr r0, _08023F50 @ =0x00002FFF
	cmp r2, r0
	ble _08023F5C
	b _08023F82
	.align 2, 0
_08023F50: .4byte 0x00002FFF
_08023F54:
	subs r1, r1, r0
	ldr r0, _08023F74 @ =0x00002FFF
	cmp r1, r0
	bgt _08023F82
_08023F5C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _08023F78
	ldr r0, _08023F74 @ =0x00002FFF
	cmp r2, r0
	ble _08023F80
	b _08023F82
	.align 2, 0
_08023F74: .4byte 0x00002FFF
_08023F78:
	subs r1, r1, r0
	ldr r0, _08023FB8 @ =0x00002FFF
	cmp r1, r0
	bgt _08023F82
_08023F80:
	movs r3, #1
_08023F82:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08023F94
	cmp r3, #0
	bne _08023F9C
_08023F94:
	adds r2, r4, #0
	adds r2, #0xb0
	cmp r0, #0x80
	ble _08024068
_08023F9C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	subs r1, #1
	adds r2, r0, #0
	cmp r1, #5
	bhi _08023FD8
	lsls r0, r1, #2
	ldr r1, _08023FBC @ =_08023FC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023FB8: .4byte 0x00002FFF
_08023FBC: .4byte _08023FC0
_08023FC0: @ jump table
	.4byte _08023FD8 @ case 0
	.4byte _08023FF0 @ case 1
	.4byte _08023FF8 @ case 2
	.4byte _08024000 @ case 3
	.4byte _08024046 @ case 4
	.4byte _08024008 @ case 5
_08023FD8:
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08024068
	b _08024060
_08023FF0:
	adds r0, r4, #0
	bl sub_080250F8
	b _080240E8
_08023FF8:
	adds r0, r4, #0
	bl sub_08025134
	b _080240E8
_08024000:
	adds r0, r4, #0
	bl sub_08025170
	b _080240E8
_08024008:
	movs r2, #0
	ldr r0, _08024050 @ =gUnk_0203AD34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024060
	ldr r0, _08024054 @ =gUnk_0203AD44
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	beq _08024042
	ldr r6, _08024058 @ =gUnk_02020EE0
	movs r5, #0xd4
	lsls r5, r5, #1
	ldr r3, _0802405C @ =0x00000103
_08024028:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _08024038
	movs r2, #1
_08024038:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _08024028
_08024042:
	cmp r2, #0
	bne _08024060
_08024046:
	adds r0, r4, #0
	bl sub_080251AC
	b _080240E8
	.align 2, 0
_08024050: .4byte gUnk_0203AD34
_08024054: .4byte gUnk_0203AD44
_08024058: .4byte gUnk_02020EE0
_0802405C: .4byte 0x00000103
_08024060:
	adds r0, r4, #0
	bl sub_08024F54
	b _080240E8
_08024068:
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _080240E8
	movs r6, #0
	ldr r0, _080240AC @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r6, r1
	bhs _080240E8
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov ip, r0
	ldr r5, _080240B0 @ =0x00002FFF
	adds r7, r1, #0
_08024086:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _080240B4 @ =gUnk_02020EE0
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, ip
	bne _080240DE
	ldr r3, [r1, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	cmp r2, #0
	blt _080240B8
	cmp r2, r5
	ble _080240BE
	b _080240DE
	.align 2, 0
_080240AC: .4byte gUnk_0203AD44
_080240B0: .4byte 0x00002FFF
_080240B4: .4byte gUnk_02020EE0
_080240B8:
	subs r0, r0, r3
	cmp r0, r5
	bgt _080240DE
_080240BE:
	ldr r3, [r1, #0x44]
	ldr r0, [r4, #0x44]
	subs r2, r3, r0
	cmp r2, #0
	blt _080240CE
	cmp r2, r5
	ble _080240D4
	b _080240DE
_080240CE:
	subs r0, r0, r3
	cmp r0, r5
	bgt _080240DE
_080240D4:
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024060
_080240DE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _08024086
_080240E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080240F0
sub_080240F0: @ 0x080240F0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #9
	beq _08024112
	cmp r0, #9
	bgt _08024108
	cmp r0, #0
	beq _080241A4
	b _080241B8
_08024108:
	cmp r0, #0xa
	beq _0802412A
	cmp r0, #0xb
	beq _0802418A
	b _080241B8
_08024112:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080241B8
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xa
	strb r0, [r2]
	b _080241B8
_0802412A:
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #1]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	bne _08024164
	movs r7, #1
	eors r1, r7
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080C3694
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0802415E
	strb r6, [r5]
_0802415E:
	ldr r0, [r4, #8]
	eors r0, r7
	str r0, [r4, #8]
_08024164:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _080241B8
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	b _080241B8
_0802418A:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080241B8
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0
	strb r0, [r2]
	strh r0, [r4, #4]
	b _080241B8
_080241A4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080241B8
	adds r0, r4, #0
	bl sub_08024F54
_080241B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080241C0
sub_080241C0: @ 0x080241C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xc
	beq _080241E2
	cmp r0, #0xc
	bgt _080241D8
	cmp r0, #0
	beq _0802427E
	b _08024292
_080241D8:
	cmp r0, #0xd
	beq _080241FA
	cmp r0, #0xe
	beq _08024264
	b _08024292
_080241E2:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024292
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xd
	strb r0, [r2]
	b _08024292
_080241FA:
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #1]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	bne _08024242
	movs r7, #1
	eors r1, r7
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080BB080
	adds r0, r4, #0
	bl sub_080BB470
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080BB804
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802423C
	strb r6, [r5]
_0802423C:
	ldr r0, [r4, #8]
	eors r0, r7
	str r0, [r4, #8]
_08024242:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _08024292
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xe
	strb r0, [r1]
	b _08024292
_08024264:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024292
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0
	strb r0, [r2]
	strh r0, [r4, #4]
	b _08024292
_0802427E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08024292
	adds r0, r4, #0
	bl sub_08024F54
_08024292:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024298
sub_08024298: @ 0x08024298
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0xf
	beq _080242B6
	cmp r0, #0xf
	bgt _080242B0
	cmp r0, #0
	beq _08024318
	b _0802432C
_080242B0:
	cmp r0, #0x10
	beq _080242D2
	b _0802432C
_080242B6:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802432C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #8]
	movs r1, #0
	movs r0, #0x10
	strb r0, [r6]
	strh r1, [r5, #4]
	b _0802432C
_080242D2:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802432C
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080242F6
	movs r4, #1
	eors r1, r4
	str r1, [r5, #8]
	adds r0, r5, #0
	bl sub_080B1850
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
_080242F6:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x58
	ble _0802432C
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #0
	strb r0, [r6]
	movs r0, #0
	strh r0, [r5, #4]
	b _0802432C
_08024318:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802432C
	adds r0, r5, #0
	bl sub_08024F54
_0802432C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024334
sub_08024334: @ 0x08024334
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0x11
	beq _08024352
	cmp r0, #0x11
	bgt _0802434C
	cmp r0, #0
	beq _080243B8
	b _080243CC
_0802434C:
	cmp r0, #0x12
	beq _0802436A
	b _080243CC
_08024352:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080243CC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0x12
	strb r0, [r2]
	b _080243CC
_0802436A:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0802438A
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bne _0802438A
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802438A
	adds r0, r4, #0
	bl sub_08024A18
_0802438A:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080243CC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _080243CC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	b _080243CC
_080243B8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080243CC
	adds r0, r4, #0
	bl sub_08024F54
_080243CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080243D4
sub_080243D4: @ 0x080243D4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080243F6
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08024414
	b _08024408
_080243F6:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r5, #6
	ldrsh r1, [r0, r5]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08024414
_08024408:
	lsls r0, r1, #8
	str r0, [r2, #0x40]
	adds r0, r2, #0
	bl sub_08025098
	b _0802463E
_08024414:
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r0, [r1]
	subs r0, #2
	adds r4, r1, #0
	cmp r0, #4
	bls _08024424
	b _0802463E
_08024424:
	lsls r0, r0, #2
	ldr r1, _08024430 @ =_08024434
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08024430: .4byte _08024434
_08024434: @ jump table
	.4byte _08024448 @ case 0
	.4byte _080244C4 @ case 1
	.4byte _08024574 @ case 2
	.4byte _08024582 @ case 3
	.4byte _080245FC @ case 4
_08024448:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024488
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _08024474 @ =0xFFFFFE24
	cmp r3, r0
	bge _0802447C
	ldr r0, _08024478 @ =0x0000FE24
	strh r0, [r1]
	b _080244A6
	.align 2, 0
_08024474: .4byte 0xFFFFFE24
_08024478: .4byte 0x0000FE24
_0802447C:
	movs r0, #0xee
	lsls r0, r0, #1
	cmp r3, r0
	ble _080244A6
	strh r0, [r1]
	b _080244A6
_08024488:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xee
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080244A4
	ldr r3, _080244C0 @ =0xFFFFFE24
	cmp r0, r3
	bge _080244A6
_080244A4:
	strh r3, [r1]
_080244A6:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080244B2
	b _0802463E
_080244B2:
	adds r0, r2, #0
	adds r0, #0x52
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	movs r0, #3
	b _0802463C
	.align 2, 0
_080244C0: .4byte 0xFFFFFE24
_080244C4:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024504
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _080244F0 @ =0xFFFFFE24
	cmp r3, r0
	bge _080244F8
	ldr r0, _080244F4 @ =0x0000FE24
	strh r0, [r1]
	b _08024522
	.align 2, 0
_080244F0: .4byte 0xFFFFFE24
_080244F4: .4byte 0x0000FE24
_080244F8:
	movs r0, #0xee
	lsls r0, r0, #1
	cmp r3, r0
	ble _08024522
	strh r0, [r1]
	b _08024522
_08024504:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xee
	lsls r3, r3, #1
	cmp r0, r3
	bgt _08024520
	ldr r3, _08024550 @ =0xFFFFFE24
	cmp r0, r3
	bge _08024522
_08024520:
	strh r3, [r1]
_08024522:
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #0
	beq _08024558
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _0802453C
	b _0802463E
_0802453C:
	ldr r0, [r2, #0x18]
	ldr r1, _08024554 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x18]
	movs r0, #0
	strb r0, [r3]
	b _0802463E
	.align 2, 0
_08024550: .4byte 0xFFFFFE24
_08024554: .4byte 0xFFFFCFFF
_08024558:
	adds r0, r2, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x7f
	bgt _0802463E
	movs r0, #4
	strb r0, [r4]
	ldr r0, [r2, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	b _0802463E
_08024574:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802463E
	movs r0, #5
	b _0802463C
_08024582:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080245C0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _080245AC @ =0xFFFFFE24
	cmp r3, r0
	bge _080245B4
	ldr r0, _080245B0 @ =0x0000FE24
	strh r0, [r1]
	b _080245DE
	.align 2, 0
_080245AC: .4byte 0xFFFFFE24
_080245B0: .4byte 0x0000FE24
_080245B4:
	movs r0, #0xee
	lsls r0, r0, #1
	cmp r3, r0
	ble _080245DE
	strh r0, [r1]
	b _080245DE
_080245C0:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xee
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080245DC
	ldr r3, _080245F8 @ =0xFFFFFE24
	cmp r0, r3
	bge _080245DE
_080245DC:
	strh r3, [r1]
_080245DE:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802463E
	movs r1, #0
	movs r0, #6
	strb r0, [r4]
	strh r1, [r2, #4]
	b _0802463E
	.align 2, 0
_080245F8: .4byte 0xFFFFFE24
_080245FC:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08024618
	adds r0, r3, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08024628
	b _08024624
_08024618:
	adds r0, r3, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08024628
_08024624:
	movs r0, #0
	strh r0, [r1]
_08024628:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802463E
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #2
_0802463C:
	strb r0, [r4]
_0802463E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08024644
sub_08024644: @ 0x08024644
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024660
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #6
	b _08024666
_08024660:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #6
_08024666:
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _08024688 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _0802468C @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080246A4
	.align 2, 0
_08024688: .4byte gUnk_020229D4
_0802468C: .4byte gUnk_020229E0
_08024690:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080246AC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080246A4:
	cmp r0, #0
	bne _08024690
	orrs r2, r3
	str r2, [r1]
_080246AC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xc9
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, r8
	ldrb r0, [r2]
	bl sub_0800A868
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802470C
sub_0802470C: @ 0x0802470C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08024740 @ =sub_08099B80
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08024744 @ =sub_0809A1C4
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024748
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08024750
	.align 2, 0
_08024740: .4byte sub_08099B80
_08024744: .4byte sub_0809A1C4
_08024748:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08024750:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0809F030
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #7
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802479A
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_0802479A:
	adds r0, r4, #0
	bl sub_0809F3E0
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080247D8 @ =sub_0809F840
	str r0, [r4, #0x7c]
	ldr r2, _080247DC @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080247D8: .4byte sub_0809F840
_080247DC: .4byte gUnk_08351648

	thumb_func_start sub_080247E0
sub_080247E0: @ 0x080247E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	adds r0, #0xac
	ldr r4, [r0]
	ldr r2, _08024830 @ =sub_08024998
	adds r0, r5, #0
	movs r1, #0
	bl sub_0809F7D8
	ldr r2, [r4, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r2, r1
	cmp r0, #0
	bge _08024800
	subs r0, r1, r2
_08024800:
	asrs r0, r0, #8
	cmp r0, #0x31
	bgt _08024840
	ldr r2, _08024834 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08024838 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802483C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080248E0
	.align 2, 0
_08024830: .4byte sub_08024998
_08024834: .4byte gUnk_030068D8
_08024838: .4byte 0x00196225
_0802483C: .4byte 0x3C6EF35F
_08024840:
	cmp r0, #0x63
	bgt _0802487C
	ldr r2, _08024870 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08024874 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08024878 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080248E0
	.align 2, 0
_08024870: .4byte gUnk_030068D8
_08024874: .4byte 0x00196225
_08024878: .4byte 0x3C6EF35F
_0802487C:
	cmp r0, #0x95
	bgt _080248B8
	ldr r2, _080248AC @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _080248B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080248B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080248E0
	.align 2, 0
_080248AC: .4byte gUnk_030068D8
_080248B0: .4byte 0x00196225
_080248B4: .4byte 0x3C6EF35F
_080248B8:
	ldr r2, _0802496C @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08024970 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08024974 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
_080248E0:
	strh r0, [r2]
	adds r2, r1, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080248F4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080248F4:
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r1, _08024978 @ =gUnk_02020EE0
	ldr r0, _0802497C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08024966
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802492A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08024966
_0802492A:
	ldr r1, _08024980 @ =gUnk_08D60FA4
	ldr r4, _08024984 @ =gSongTable
	ldr r2, _08024988 @ =0x00000A4C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0802494E
	ldr r1, _0802498C @ =0x00000A48
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08024966
_0802494E:
	cmp r3, #0
	beq _08024960
	ldr r0, _08024990 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08024966
_08024960:
	ldr r0, _08024994 @ =0x00000149
	bl m4aSongNumStart
_08024966:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802496C: .4byte gUnk_030068D8
_08024970: .4byte 0x00196225
_08024974: .4byte 0x3C6EF35F
_08024978: .4byte gUnk_02020EE0
_0802497C: .4byte gUnk_0203AD3C
_08024980: .4byte gUnk_08D60FA4
_08024984: .4byte gSongTable
_08024988: .4byte 0x00000A4C
_0802498C: .4byte 0x00000A48
_08024990: .4byte gUnk_0203AD10
_08024994: .4byte 0x00000149

	thumb_func_start sub_08024998
sub_08024998: @ 0x08024998
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	ldr r0, [r4, #8]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080249C8
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080249D6
	b _080249D2
_080249C8:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080249D6
_080249D2:
	movs r0, #0
	strh r0, [r1]
_080249D6:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080249EC
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080249EC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024A10
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
	movs r0, #0
	str r0, [r4, #0x70]
_08024A10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024A18
sub_08024A18: @ 0x08024A18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08024A48 @ =sub_08024B44
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08024A4C @ =sub_0802525C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024A50
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08024A58
	.align 2, 0
_08024A48: .4byte sub_08024B44
_08024A4C: .4byte sub_0802525C
_08024A50:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08024A58:
	adds r0, r5, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r7, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08024B34 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08024AA8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_08024AA8:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0x80
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r4, #0x40]
	ldr r1, _08024B38 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #2
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	movs r4, #4
	rsbs r4, r4, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _08024B3C @ =0x000003A6
	str r7, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080708DC
	ldr r0, _08024B40 @ =gUnk_0203AD34
	strb r6, [r0]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08024B34: .4byte gUnk_03000510
_08024B38: .4byte 0xFFFFFA00
_08024B3C: .4byte 0x000003A6
_08024B40: .4byte gUnk_0203AD34

	thumb_func_start sub_08024B44
sub_08024B44: @ 0x08024B44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r0, _08024B68 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024B6C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08024B74
	.align 2, 0
_08024B68: .4byte gCurTask
_08024B6C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08024B74:
	adds r5, r0, #0
	ldr r2, _08024BE0 @ =gUnk_02020EE0
	ldr r0, _08024BE4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08024C28
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08024BF0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08024C4C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _08024BE8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08024BEC @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _08024C4C
	.align 2, 0
_08024BE0: .4byte gUnk_02020EE0
_08024BE4: .4byte gUnk_0203AD3C
_08024BE8: .4byte 0xFFF7FFFF
_08024BEC: .4byte 0x0400000A
_08024BF0:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08024C4C
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _08024C20 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08024C24 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08024C4C
	.align 2, 0
_08024C20: .4byte 0xFFF7FFFF
_08024C24: .4byte 0x0400000A
_08024C28:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _08024C42
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _08024C42
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_08024C42:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_08024C4C:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08024C5A
	b _08024E12
_08024C5A:
	ldr r0, [r5, #8]
	movs r7, #4
	orrs r0, r7
	str r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r6, r8
	ands r6, r0
	cmp r6, #0
	bne _08024CDC
	adds r4, r5, #0
	adds r4, #0x52
	ldrh r0, [r4]
	subs r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _08024C8A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4]
_08024C8A:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08024CAE
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_08024CAE:
	adds r0, r5, #0
	bl sub_0809D8C8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08024CDC
	ldr r0, _08024D14 @ =0x000003A7
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5, #8]
	mov r1, r8
	orrs r0, r1
	ldr r1, _08024D18 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	strh r6, [r4]
_08024CDC:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024CEA
	b _08024E0C
_08024CEA:
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _08024D5E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08024D24
	ldr r2, _08024D1C @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08024D20 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08024D26
	.align 2, 0
_08024D14: .4byte 0x000003A7
_08024D18: .4byte 0xFFFFFDFF
_08024D1C: .4byte gUnk_02023530
_08024D20: .4byte 0x0000065E
_08024D24:
	movs r1, #0xff
_08024D26:
	cmp r1, #0xff
	beq _08024D5E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08024DF0 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08024DF4 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08024D5E:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08024E0C
	ldr r2, [r5, #0x6c]
	ldr r0, _08024DF8 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	cmp r2, #0
	beq _08024E0C
	ldrb r0, [r2]
	cmp r0, #0
	bne _08024E0C
	adds r0, r2, #0
	adds r0, #0x56
	ldr r1, _08024DFC @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08024E0C
	ldr r1, _08024E00 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024E0C
	adds r3, r2, #0
	adds r3, #0xdd
	ldrb r0, [r3]
	cmp r0, #0
	bne _08024E0C
	subs r1, #3
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08024E0C
	adds r4, r2, #0
	adds r4, #0xd4
	ldrh r0, [r4]
	cmp r0, #0x27
	beq _08024E0C
	cmp r0, #0x7a
	bhi _08024E0C
	adds r1, #0x10
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08024E0C
	ldr r0, [r2, #8]
	ldr r1, _08024E04 @ =0x03800B00
	ands r0, r1
	cmp r0, #0
	bne _08024E0C
	ldr r1, [r2, #0x78]
	ldr r0, _08024E08 @ =sub_0804BD00
	cmp r1, r0
	beq _08024E0C
	movs r0, #0x1a
	strb r0, [r3]
	adds r0, r2, #0
	bl sub_08054C0C
	movs r0, #0xf
	strh r0, [r4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _08024E12
	.align 2, 0
_08024DF0: .4byte gUnk_02022EB0
_08024DF4: .4byte gUnk_02022F50
_08024DF8: .4byte 0xFFFBFFFF
_08024DFC: .4byte gUnk_0203AD30
_08024E00: .4byte 0x00000103
_08024E04: .4byte 0x03800B00
_08024E08: .4byte sub_0804BD00
_08024E0C:
	adds r0, r5, #0
	bl sub_0806F8BC
_08024E12:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024E20
sub_08024E20: @ 0x08024E20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	beq _08024F22
	ldr r0, _08024E88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08024F22
	ldr r1, [r5, #0xc]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08024F22
	orrs r1, r2
	str r1, [r5, #0xc]
	ldr r3, _08024E8C @ =gUnk_082DEAF4
	ldr r2, _08024E90 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08024E94 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08024E98 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r4, #0
	ldr r1, _08024E9C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08024EA0 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08024EB8
	.align 2, 0
_08024E88: .4byte gUnk_0203AD10
_08024E8C: .4byte gUnk_082DEAF4
_08024E90: .4byte gUnk_030068D8
_08024E94: .4byte 0x00196225
_08024E98: .4byte 0x3C6EF35F
_08024E9C: .4byte gUnk_020229D4
_08024EA0: .4byte gUnk_020229E0
_08024EA4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08024EC0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08024EB8:
	cmp r0, #0
	bne _08024EA4
	orrs r2, r3
	str r2, [r1]
_08024EC0:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r0, r8
	strb r0, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	movs r0, #2
	strb r0, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl sub_0800A868
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_08024F22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024F2C
sub_08024F2C: @ 0x08024F2C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08024F46
	ldr r0, [r2, #8]
	ldr r1, _08024F4C @ =gUnk_02008340
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, _08024F50 @ =nullsub_114
	str r0, [r2, #0x78]
_08024F46:
	pop {r0}
	bx r0
	.align 2, 0
_08024F4C: .4byte gUnk_02008340
_08024F50: .4byte nullsub_114

	thumb_func_start sub_08024F54
sub_08024F54: @ 0x08024F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08024FA4 @ =sub_080243D4
	movs r1, #2
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	ldr r0, _08024FA8 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r4, #8]
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r0, [r3]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _08024F86
	ldr r0, _08024FAC @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
_08024F86:
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r3]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08024FB0
	movs r0, #1
	orrs r2, r0
	b _08024FB6
	.align 2, 0
_08024FA4: .4byte sub_080243D4
_08024FA8: .4byte 0xFFFFFBFF
_08024FAC: .4byte 0xFFFFFDFF
_08024FB0:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_08024FB6:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024FC0
sub_08024FC0: @ 0x08024FC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08024FDC @ =sub_08025214
	movs r1, #0
	bl sub_0809F7D8
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024FDC: .4byte sub_08025214

	thumb_func_start nullsub_114
nullsub_114: @ 0x08024FE0
	bx lr
	.align 2, 0

	thumb_func_start sub_08024FE4
sub_08024FE4: @ 0x08024FE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0802502C @ =sub_08025034
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	ldr r0, _08025030 @ =0xFFFFFBFF
	ands r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #0x3e
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _08025026
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #8]
_08025026:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802502C: .4byte sub_08025034
_08025030: .4byte 0xFFFFFBFF

	thumb_func_start sub_08025034
sub_08025034: @ 0x08025034
	push {lr}
	bl sub_08023C68
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025040
sub_08025040: @ 0x08025040
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08025090 @ =sub_08023F34
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _0802506C
	ldr r0, [r4, #8]
	ldr r1, _08025094 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
_0802506C:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bne _0802508A
	movs r0, #0x80
	strh r0, [r4, #4]
_0802508A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025090: .4byte sub_08023F34
_08025094: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025098
sub_08025098: @ 0x08025098
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080250D8 @ =sub_080250EC
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _080250DC
	movs r0, #1
	orrs r1, r0
	b _080250E2
	.align 2, 0
_080250D8: .4byte sub_080250EC
_080250DC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_080250E2:
	str r1, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080250EC
sub_080250EC: @ 0x080250EC
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	orrs r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_080250F8
sub_080250F8: @ 0x080250F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0802512C @ =sub_080240F0
	movs r1, #9
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08025130 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802512C: .4byte sub_080240F0
_08025130: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025134
sub_08025134: @ 0x08025134
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08025168 @ =sub_080241C0
	movs r1, #0xc
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _0802516C @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025168: .4byte sub_080241C0
_0802516C: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025170
sub_08025170: @ 0x08025170
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080251A4 @ =sub_08024298
	movs r1, #0xf
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080251A8 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080251A4: .4byte sub_08024298
_080251A8: .4byte 0xFFFFFDFF

	thumb_func_start sub_080251AC
sub_080251AC: @ 0x080251AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0802520C @ =sub_08024334
	movs r1, #0x11
	bl sub_0809F7D8
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _080251D8
	ldr r0, [r5, #8]
	ldr r1, _08025210 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
_080251D8:
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _08025206
	ldr r0, [r5, #8]
	movs r4, #1
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08024644
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
_08025206:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802520C: .4byte sub_08024334
_08025210: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025214
sub_08025214: @ 0x08025214
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	ldr r0, [r4, #8]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08025240
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_08025240:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08025254
	adds r0, r4, #0
	bl sub_080247E0
_08025254:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802525C
sub_0802525C: @ 0x0802525C
	push {lr}
	ldr r2, _0802526C @ =gUnk_0203AD34
	movs r1, #0
	strb r1, [r2]
	bl sub_0803DCCC
	pop {r0}
	bx r0
	.align 2, 0
_0802526C: .4byte gUnk_0203AD34

	thumb_func_start sub_08025270
sub_08025270: @ 0x08025270
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080252A4 @ =sub_08099B80
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080252A8 @ =sub_0809A1C4
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080252AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080252B4
	.align 2, 0
_080252A4: .4byte sub_08099B80
_080252A8: .4byte sub_0809A1C4
_080252AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080252B4:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0809F030
	adds r0, r5, #0
	adds r0, #0x85
	movs r4, #0
	strb r4, [r0]
	ldr r0, [r5, #8]
	ldr r1, _08025318 @ =0x00018B00
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r5, #0x68]
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x83
	strb r4, [r0]
	adds r0, r5, #0
	bl sub_0809F3E0
	ldr r2, _0802531C @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08025318: .4byte 0x00018B00
_0802531C: .4byte gUnk_08351648

	thumb_func_start sub_08025320
sub_08025320: @ 0x08025320
	ldr r1, _08025328 @ =sub_0802532C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08025328: .4byte sub_0802532C

	thumb_func_start sub_0802532C
sub_0802532C: @ 0x0802532C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x44]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq _0802535E
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	subs r1, #2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08025364 @ =sub_08025368
	str r0, [r4, #0x78]
_0802535E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025364: .4byte sub_08025368

	thumb_func_start sub_08025368
sub_08025368: @ 0x08025368
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x85
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08025388
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_08025388:
	pop {r0}
	bx r0

	thumb_func_start sub_0802538C
sub_0802538C: @ 0x0802538C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080253C0 @ =sub_08099B80
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080253C4 @ =sub_0809A1C4
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080253C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080253D0
	.align 2, 0
_080253C0: .4byte sub_08099B80
_080253C4: .4byte sub_0809A1C4
_080253C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080253D0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0809F030
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x82
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0809F3E0
	ldr r2, _08025430 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08025430: .4byte gUnk_08351648

	thumb_func_start sub_08025434
sub_08025434: @ 0x08025434
	ldr r1, _0802543C @ =sub_08025440
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0802543C: .4byte sub_08025440

	thumb_func_start sub_08025440
sub_08025440: @ 0x08025440
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802544C
sub_0802544C: @ 0x0802544C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xb0
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0802546A
	cmp r0, #1
	beq _0802549C
	b _080254C4
_0802546A:
	ldr r2, _08025494 @ =gUnk_02023530
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08025498 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_080029BC
	ldr r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	bne _080254C4
	b _080254C8
	.align 2, 0
_08025494: .4byte gUnk_02023530
_08025498: .4byte 0x0000065E
_0802549C:
	ldr r2, _08025590 @ =gUnk_02023530
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08025594 @ =0x0000065E
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_080029E4
	ldr r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	bne _080254C4
	movs r6, #1
_080254C4:
	cmp r6, #0
	beq _08025582
_080254C8:
	mov sb, r5
	ldr r0, [r5, #0x40]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	ldr r0, [r5, #0x44]
	lsls r0, r0, #4
	lsrs r6, r0, #0x10
	movs r0, #0x56
	adds r0, r0, r5
	mov r8, r0
	ldrb r4, [r0]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_0800E0E4
	ldr r1, _08025598 @ =gUnk_02020EE0
	ldr r0, _0802559C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08025570
	ldrb r0, [r5]
	cmp r0, #0
	bne _08025530
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, r2
	bne _08025570
_08025530:
	ldr r1, _080255A0 @ =gUnk_08D60FA4
	ldr r4, _080255A4 @ =gSongTable
	ldr r2, _080255A8 @ =0x00000FF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08025556
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08025570
_08025556:
	cmp r3, #0
	beq _08025568
	ldr r0, _080255AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08025570
_08025568:
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
_08025570:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_0800E0E4
	ldr r0, _080255B0 @ =nullsub_115
	str r0, [r5, #0x78]
_08025582:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025590: .4byte gUnk_02023530
_08025594: .4byte 0x0000065E
_08025598: .4byte gUnk_02020EE0
_0802559C: .4byte gUnk_0203AD3C
_080255A0: .4byte gUnk_08D60FA4
_080255A4: .4byte gSongTable
_080255A8: .4byte 0x00000FF4
_080255AC: .4byte gUnk_0203AD10
_080255B0: .4byte nullsub_115

	thumb_func_start sub_080255B4
sub_080255B4: @ 0x080255B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080255E8 @ =sub_08099B80
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080255EC @ =sub_0809A1C4
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080255F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080255F8
	.align 2, 0
_080255E8: .4byte sub_08099B80
_080255EC: .4byte sub_0809A1C4
_080255F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080255F8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0809F030
	ldr r0, [r4, #8]
	ldr r1, _08025638 @ =gUnk_02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _0802563C @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08025638: .4byte gUnk_02018F40
_0802563C: .4byte gUnk_08351648

	thumb_func_start sub_08025640
sub_08025640: @ 0x08025640
	ldr r1, _08025648 @ =sub_0802544C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08025648: .4byte sub_0802544C

	thumb_func_start nullsub_115
nullsub_115: @ 0x0802564C
	bx lr
	.align 2, 0

	thumb_func_start sub_08025650
sub_08025650: @ 0x08025650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	movs r3, #0
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x48]
	mov r7, sp
	adds r7, #0x1c
	str r7, [sp, #0x40]
	add r0, sp, #0x3c
	mov sl, r0
	adds r7, #0x22
	str r7, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	mov sb, r0
	ldr r6, [sp, #0x48]
	ldr r5, [sp, #0x40]
	ldr r7, _080256BC @ =gUnk_082DEB28
	mov r8, r7
	ldr r0, _080256C0 @ =gUnk_082DEB60
	mov ip, r0
	add r4, sp, #0x20
_0802568A:
	cmp r3, sb
	bhs _080256D0
	lsls r1, r3, #1
	mov r2, sp
	adds r2, r2, r1
	adds r2, #4
	ldr r0, _080256C4 @ =gUnk_082DEB10
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r1, r3, #2
	adds r2, r6, r1
	ldr r0, _080256C8 @ =gUnk_082DEB18
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	lsls r1, r3, #3
	adds r2, r5, r1
	mov r7, r8
	adds r0, r1, r7
	ldr r0, [r0]
	str r0, [r2]
	adds r2, r4, r1
	ldr r0, _080256CC @ =gUnk_082DEB2C
	b _080256FC
	.align 2, 0
_080256BC: .4byte gUnk_082DEB28
_080256C0: .4byte gUnk_082DEB60
_080256C4: .4byte gUnk_082DEB10
_080256C8: .4byte gUnk_082DEB18
_080256CC: .4byte gUnk_082DEB2C
_080256D0:
	lsls r1, r3, #1
	mov r2, sp
	adds r2, r2, r1
	adds r2, #4
	ldr r0, _0802577C @ =gUnk_082DEB48
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r1, r3, #2
	adds r2, r6, r1
	ldr r0, _08025780 @ =gUnk_082DEB50
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	lsls r1, r3, #3
	adds r2, r5, r1
	mov r7, ip
	adds r0, r1, r7
	ldr r0, [r0]
	str r0, [r2]
	adds r2, r4, r1
	ldr r0, _08025784 @ =gUnk_082DEB64
_080256FC:
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0802568A
	ldr r7, _08025788 @ =0x00007FFF
	adds r4, r7, #0
	mov r0, sl
	strh r4, [r0]
	ldr r5, _0802578C @ =0x01000100
	ldr r1, _08025790 @ =gBgPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r7, [sp, #0x44]
	strh r4, [r7]
	ldr r1, _08025794 @ =gObjPalette
	ldr r0, [sp, #0x44]
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08025798 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0802579C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	movs r1, #0
	add r2, sp, #4
	ldr r3, [sp, #0x40]
	bl sub_080332BC
	ldr r3, [sp, #0x4c]
	cmp r3, #3
	bhi _0802576C
	ldr r4, _080257A0 @ =gUnk_02038590
	movs r2, #0xf4
	ldr r1, _080257A4 @ =0x000003C9
_0802575A:
	adds r0, r3, #0
	muls r0, r2, r0
	adds r0, r0, r4
	strh r1, [r0, #0x18]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0802575A
_0802576C:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802577C: .4byte gUnk_082DEB48
_08025780: .4byte gUnk_082DEB50
_08025784: .4byte gUnk_082DEB64
_08025788: .4byte 0x00007FFF
_0802578C: .4byte 0x01000100
_08025790: .4byte gBgPalette
_08025794: .4byte gObjPalette
_08025798: .4byte gUnk_03002440
_0802579C: .4byte gBldRegs
_080257A0: .4byte gUnk_02038590
_080257A4: .4byte 0x000003C9

	thumb_func_start sub_080257A8
sub_080257A8: @ 0x080257A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _080258D4 @ =gBldRegs
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x40
	ldr r1, _080258D8 @ =gDispCnt
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x40
	ldr r1, _080258DC @ =0x00001F03
	ldr r2, _080258E0 @ =gBgCntRegs
	strh r1, [r2]
	ldr r1, _080258E4 @ =gBgScrollRegs
	mov r8, r1
	strh r4, [r1]
	strh r4, [r1, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080258E8 @ =0x0600F800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080258EC @ =0x0000028A
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r2, #0x1e
	strh r2, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x6a
	mov r2, sb
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	movs r1, #8
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	ldr r6, _080258F0 @ =0x00007FFF
	strh r6, [r0, #0x34]
	strh r6, [r0, #0x36]
	bl sub_08153060
	ldr r0, _080258F4 @ =gUnk_082D7850
	mov sl, r0
	ldr r0, _080258F8 @ =0x00000A28
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r1, r5, #0
	bl LZ77UnCompVram
	ldr r1, _080258D8 @ =gDispCnt
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _080258D8 @ =gDispCnt
	strh r0, [r1]
	ldr r1, _080258FC @ =gUnk_082DEB80
	ldr r0, _08025900 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r0, _08025904 @ =0x00001E0A
	ldr r2, _080258E0 @ =gBgCntRegs
	strh r0, [r2, #2]
	mov r0, r8
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r1, _08025908 @ =0x06008000
	mov r8, r1
	str r1, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0802590C @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r2, #0x1e
	strh r2, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #0x19
	strh r0, [r7, #0x2e]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	adds r0, r7, #0
	bl sub_08153060
	lsls r5, r5, #2
	add r5, sl
	ldr r0, [r5]
	ldr r0, [r0, #8]
	mov r1, r8
	bl LZ77UnCompVram
	ldr r2, _080258D8 @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _080258D8 @ =gDispCnt
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r0, _08025910 @ =sub_08025B58
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080258D4: .4byte gBldRegs
_080258D8: .4byte gDispCnt
_080258DC: .4byte 0x00001F03
_080258E0: .4byte gBgCntRegs
_080258E4: .4byte gBgScrollRegs
_080258E8: .4byte 0x0600F800
_080258EC: .4byte 0x0000028A
_080258F0: .4byte 0x00007FFF
_080258F4: .4byte gUnk_082D7850
_080258F8: .4byte 0x00000A28
_080258FC: .4byte gUnk_082DEB80
_08025900: .4byte gUnk_08D60A80
_08025904: .4byte 0x00001E0A
_08025908: .4byte 0x06008000
_0802590C: .4byte 0x0600F000
_08025910: .4byte sub_08025B58

	thumb_func_start sub_08025914
sub_08025914: @ 0x08025914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _08025A40 @ =gBldRegs
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x40
	ldr r1, _08025A44 @ =gDispCnt
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x40
	ldr r1, _08025A48 @ =0x00001F03
	ldr r2, _08025A4C @ =gBgCntRegs
	strh r1, [r2]
	ldr r1, _08025A50 @ =gBgScrollRegs
	mov r8, r1
	strh r4, [r1]
	strh r4, [r1, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08025A54 @ =0x0600F800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08025A58 @ =0x0000028B
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r2, #0x1e
	strh r2, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x6a
	mov r2, sb
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	movs r1, #8
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	ldr r6, _08025A5C @ =0x00007FFF
	strh r6, [r0, #0x34]
	strh r6, [r0, #0x36]
	bl sub_08153060
	ldr r0, _08025A60 @ =gUnk_082D7850
	mov sl, r0
	ldr r0, _08025A64 @ =0x00000A2C
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r1, r5, #0
	bl LZ77UnCompVram
	ldr r1, _08025A44 @ =gDispCnt
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _08025A44 @ =gDispCnt
	strh r0, [r1]
	ldr r1, _08025A68 @ =gUnk_082DEB8C
	ldr r0, _08025A6C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r0, _08025A70 @ =0x00001E0A
	ldr r2, _08025A4C @ =gBgCntRegs
	strh r0, [r2, #2]
	mov r0, r8
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r1, _08025A74 @ =0x06008000
	mov r8, r1
	str r1, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _08025A78 @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r2, #0x1e
	strh r2, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #9
	strh r0, [r7, #0x2e]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	adds r0, r7, #0
	bl sub_08153060
	lsls r5, r5, #2
	add r5, sl
	ldr r0, [r5]
	ldr r0, [r0, #8]
	mov r1, r8
	bl LZ77UnCompVram
	ldr r2, _08025A44 @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _08025A44 @ =gDispCnt
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r0, _08025A7C @ =sub_08025BA4
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025A40: .4byte gBldRegs
_08025A44: .4byte gDispCnt
_08025A48: .4byte 0x00001F03
_08025A4C: .4byte gBgCntRegs
_08025A50: .4byte gBgScrollRegs
_08025A54: .4byte 0x0600F800
_08025A58: .4byte 0x0000028B
_08025A5C: .4byte 0x00007FFF
_08025A60: .4byte gUnk_082D7850
_08025A64: .4byte 0x00000A2C
_08025A68: .4byte gUnk_082DEB8C
_08025A6C: .4byte gUnk_08D60A80
_08025A70: .4byte 0x00001E0A
_08025A74: .4byte 0x06008000
_08025A78: .4byte 0x0600F000
_08025A7C: .4byte sub_08025BA4

	thumb_func_start sub_08025A80
sub_08025A80: @ 0x08025A80
	push {lr}
	sub sp, #4
	ldr r0, _08025AAC @ =sub_08025B20
	movs r1, #0
	str r1, [sp]
	movs r1, #0x88
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025AB0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025AB8
	.align 2, 0
_08025AAC: .4byte sub_08025B20
_08025AB0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025AB8:
	adds r1, r2, #0
	adds r1, #0x80
	ldr r0, _08025ACC @ =sub_080257A8
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08025ACC: .4byte sub_080257A8

	thumb_func_start sub_08025AD0
sub_08025AD0: @ 0x08025AD0
	push {lr}
	sub sp, #4
	ldr r0, _08025AFC @ =sub_08025B6C
	movs r1, #0
	str r1, [sp]
	movs r1, #0x88
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025B08
	.align 2, 0
_08025AFC: .4byte sub_08025B6C
_08025B00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025B08:
	adds r1, r2, #0
	adds r1, #0x80
	ldr r0, _08025B1C @ =sub_08025914
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08025B1C: .4byte sub_08025914

	thumb_func_start sub_08025B20
sub_08025B20: @ 0x08025B20
	push {lr}
	ldr r0, _08025B3C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B40
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025B48
	.align 2, 0
_08025B3C: .4byte gCurTask
_08025B40:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025B48:
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start sub_08025B58
sub_08025B58: @ 0x08025B58
	adds r2, r0, #0
	adds r2, #0x84
	movs r1, #0
	strh r1, [r2]
	adds r0, #0x80
	ldr r1, _08025B68 @ =sub_08025BB8
	str r1, [r0]
	bx lr
	.align 2, 0
_08025B68: .4byte sub_08025BB8

	thumb_func_start sub_08025B6C
sub_08025B6C: @ 0x08025B6C
	push {lr}
	ldr r0, _08025B88 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B8C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025B94
	.align 2, 0
_08025B88: .4byte gCurTask
_08025B8C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025B94:
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start sub_08025BA4
sub_08025BA4: @ 0x08025BA4
	adds r2, r0, #0
	adds r2, #0x84
	movs r1, #0
	strh r1, [r2]
	adds r0, #0x80
	ldr r1, _08025BB4 @ =sub_08025BFC
	str r1, [r0]
	bx lr
	.align 2, 0
_08025BB4: .4byte sub_08025BFC

	thumb_func_start sub_08025BB8
sub_08025BB8: @ 0x08025BB8
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025BE8
	ldr r0, _08025BE0 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	subs r1, #4
	ldr r0, _08025BE4 @ =sub_08025C40
	str r0, [r1]
	b _08025BF0
	.align 2, 0
_08025BE0: .4byte gBldRegs
_08025BE4: .4byte sub_08025C40
_08025BE8:
	ldr r1, _08025BF8 @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #4]
_08025BF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025BF8: .4byte gBldRegs

	thumb_func_start sub_08025BFC
sub_08025BFC: @ 0x08025BFC
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025C2C
	ldr r0, _08025C24 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	subs r1, #4
	ldr r0, _08025C28 @ =sub_08025C64
	str r0, [r1]
	b _08025C34
	.align 2, 0
_08025C24: .4byte gBldRegs
_08025C28: .4byte sub_08025C64
_08025C2C:
	ldr r1, _08025C3C @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #4]
_08025C34:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025C3C: .4byte gBldRegs

	thumb_func_start sub_08025C40
sub_08025C40: @ 0x08025C40
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	adds r4, #0x80
	ldr r0, _08025C60 @ =sub_08025C88
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025C60: .4byte sub_08025C88

	thumb_func_start sub_08025C64
sub_08025C64: @ 0x08025C64
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x27
	bl m4aSongNumStart
	adds r4, #0x80
	ldr r0, _08025C84 @ =sub_08025CCC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025C84: .4byte sub_08025CCC

	thumb_func_start sub_08025C88
sub_08025C88: @ 0x08025C88
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x12
	cmp r0, r1
	bhi _08025CAC
	ldr r0, _08025CC0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08025CBA
_08025CAC:
	ldr r0, _08025CC4 @ =0x0000021E
	bl m4aSongNumStart
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _08025CC8 @ =sub_08025D10
	str r0, [r1]
_08025CBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025CC0: .4byte gPressedKeys
_08025CC4: .4byte 0x0000021E
_08025CC8: .4byte sub_08025D10

	thumb_func_start sub_08025CCC
sub_08025CCC: @ 0x08025CCC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x12
	cmp r0, r1
	bhi _08025CF0
	ldr r0, _08025D04 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08025CFE
_08025CF0:
	ldr r0, _08025D08 @ =0x0000021E
	bl m4aSongNumStart
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _08025D0C @ =sub_08025D30
	str r0, [r1]
_08025CFE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025D04: .4byte gPressedKeys
_08025D08: .4byte 0x0000021E
_08025D0C: .4byte sub_08025D30

	thumb_func_start sub_08025D10
sub_08025D10: @ 0x08025D10
	ldr r2, _08025D28 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x84
	strh r3, [r1]
	adds r0, #0x80
	ldr r1, _08025D2C @ =sub_08025D50
	str r1, [r0]
	bx lr
	.align 2, 0
_08025D28: .4byte gBldRegs
_08025D2C: .4byte sub_08025D50

	thumb_func_start sub_08025D30
sub_08025D30: @ 0x08025D30
	ldr r2, _08025D48 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x84
	strh r3, [r1]
	adds r0, #0x80
	ldr r1, _08025D4C @ =sub_08025D8C
	str r1, [r0]
	bx lr
	.align 2, 0
_08025D48: .4byte gBldRegs
_08025D4C: .4byte sub_08025D8C

	thumb_func_start sub_08025D50
sub_08025D50: @ 0x08025D50
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025D80
	ldr r1, _08025D78 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r1, r3, #0
	adds r1, #0x80
	ldr r0, _08025D7C @ =sub_08025DC8
	str r0, [r1]
	b _08025D84
	.align 2, 0
_08025D78: .4byte gBldRegs
_08025D7C: .4byte sub_08025DC8
_08025D80:
	ldr r0, _08025D88 @ =gBldRegs
	strh r2, [r0, #4]
_08025D84:
	pop {r0}
	bx r0
	.align 2, 0
_08025D88: .4byte gBldRegs

	thumb_func_start sub_08025D8C
sub_08025D8C: @ 0x08025D8C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025DBC
	ldr r1, _08025DB4 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r1, r3, #0
	adds r1, #0x80
	ldr r0, _08025DB8 @ =sub_08025DE4
	str r0, [r1]
	b _08025DC0
	.align 2, 0
_08025DB4: .4byte gBldRegs
_08025DB8: .4byte sub_08025DE4
_08025DBC:
	ldr r0, _08025DC4 @ =gBldRegs
	strh r2, [r0, #4]
_08025DC0:
	pop {r0}
	bx r0
	.align 2, 0
_08025DC4: .4byte gBldRegs

	thumb_func_start sub_08025DC8
sub_08025DC8: @ 0x08025DC8
	push {lr}
	bl m4aMPlayAllStop
	ldr r0, _08025DE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #3
	bl sub_08138D64
	pop {r0}
	bx r0
	.align 2, 0
_08025DE0: .4byte gCurTask

	thumb_func_start sub_08025DE4
sub_08025DE4: @ 0x08025DE4
	push {lr}
	bl m4aMPlayAllStop
	ldr r0, _08025DFC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #3
	bl sub_08138D64
	pop {r0}
	bx r0
	.align 2, 0
_08025DFC: .4byte gCurTask
