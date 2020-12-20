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
