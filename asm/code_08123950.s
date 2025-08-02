	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08123950
sub_08123950: @ 0x08123950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r1, _081239D4 @ =gUnk_03002E60
	ldr r0, _081239D8 @ =gUnk_082D7850
	str r0, [r1]
	ldr r1, _081239DC @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _081239E0 @ =gBgCntRegs
	movs r2, #0
	movs r3, #0
	ldr r0, _081239E4 @ =0x00001201
	strh r0, [r1]
	ldr r0, _081239E8 @ =0x00001605
	strh r0, [r1, #2]
	str r3, [sp, #4]
	ldr r1, _081239EC @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _081239F0 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _081239F4 @ =gUnk_030060A0
	strb r2, [r0]
	ldr r1, _081239F8 @ =gUnk_03002E80
	strb r2, [r1]
	strb r2, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #3]
	ldr r0, _081239FC @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	ldr r0, _08123A00 @ =sub_08123F18
	movs r1, #0xf8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	str r3, [sp]
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08123A04
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _08123A0C
	.align 2, 0
_081239D4: .4byte gUnk_03002E60
_081239D8: .4byte gUnk_082D7850
_081239DC: .4byte gDispCnt
_081239E0: .4byte gBgCntRegs
_081239E4: .4byte 0x00001201
_081239E8: .4byte 0x00001605
_081239EC: .4byte 0x040000D4
_081239F0: .4byte 0x85000010
_081239F4: .4byte gUnk_030060A0
_081239F8: .4byte gUnk_03002E80
_081239FC: .4byte gBgScrollRegs
_08123A00: .4byte sub_08123F18
_08123A04:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_08123A0C:
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #0
	str r1, [r0]
	add r0, sp, #8
	strh r1, [r0]
	adds r1, r7, #0
	ldr r2, _08123E04 @ =0x01000020
	bl CpuSet
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r7, #4]
	movs r2, #0
	strh r2, [r7, #0xa]
	ldr r0, _08123E08 @ =0x06009000
	str r0, [r7, #0xc]
	strh r2, [r7, #0x18]
	strh r2, [r7, #0x1a]
	movs r3, #2
	strh r3, [r7, #0x1c]
	strh r2, [r7, #0x1e]
	strh r2, [r7, #0x20]
	strh r2, [r7, #0x22]
	strh r2, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r1, #0x14
	strh r1, [r7, #0x28]
	ldr r2, _08123E0C @ =0x00007FFF
	strh r2, [r7, #0x34]
	adds r3, r2, #0
	strh r3, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	strh r2, [r7, #0x2e]
	adds r0, r7, #0
	bl sub_08153060
	mov r0, sp
	adds r0, #0xa
	movs r3, #0
	strh r3, [r0]
	adds r1, r7, #0
	adds r1, #0x40
	str r1, [sp, #0x10]
	ldr r2, _08123E04 @ =0x01000020
	bl CpuSet
	ldr r0, _08123E10 @ =0x06004000
	str r0, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x4a
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08123E14 @ =0x0600B000
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	adds r0, #0x58
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	movs r3, #3
	strh r3, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	movs r1, #0x1e
	strh r1, [r0]
	adds r0, #2
	movs r2, #0x14
	strh r2, [r0]
	adds r0, #0xc
	ldr r3, _08123E0C @ =0x00007FFF
	strh r3, [r0]
	adds r0, #2
	adds r1, r3, #0
	strh r1, [r0]
	subs r0, #0xc
	movs r2, #0
	strb r2, [r0]
	adds r0, #4
	movs r3, #1
	strh r3, [r0]
	ldr r0, [sp, #0x10]
	bl sub_08153060
	add r0, sp, #0xc
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08123E18 @ =0x06005000
	ldr r2, _08123E1C @ =0x01000010
	bl CpuSet
	adds r2, r7, #0
	adds r2, #0xb0
	str r2, [sp, #0x14]
	movs r3, #0x1f
	strh r3, [r2]
	movs r0, #0xb2
	adds r0, r0, r7
	mov sl, r0
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0xb4
	movs r2, #2
	strh r2, [r0]
	subs r0, #6
	movs r3, #0
	strh r3, [r0]
	subs r0, #2
	strh r2, [r0]
	movs r0, #0x20
	bl VramMalloc
	adds r1, r7, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	movs r2, #1
	strh r2, [r1, #0xc]
	movs r3, #0
	strb r3, [r1, #0x1a]
	movs r0, #0
	strh r0, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	ldr r2, [sp, #0x14]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	adds r0, r7, #0
	adds r0, #0xe4
	str r0, [sp, #0x18]
	movs r1, #0x1f
	strh r1, [r0]
	movs r2, #0xe6
	adds r2, r2, r7
	mov sl, r2
	movs r0, #7
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0xe8
	movs r3, #3
	strh r3, [r0]
	subs r0, #6
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	movs r2, #4
	strh r2, [r0]
	movs r0, #0x20
	bl VramMalloc
	adds r1, r7, #0
	adds r1, #0xb8
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	ldr r3, [sp, #0x18]
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #8]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x1c]
	movs r2, #0x1f
	strh r2, [r1]
	movs r3, #0x8d
	lsls r3, r3, #1
	adds r3, r3, r7
	mov sb, r3
	movs r0, #0xa
	strh r0, [r3]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #2
	strh r2, [r0]
	movs r3, #0x8b
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #3
	strh r3, [r0]
	movs r0, #0x20
	bl VramMalloc
	adds r1, r7, #0
	adds r1, #0xec
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	movs r2, #1
	strh r2, [r1, #0xc]
	movs r3, #0
	strb r3, [r1, #0x1a]
	movs r0, #0
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	ldr r2, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #0x1f
	strh r1, [r6]
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp, #0x20]
	movs r0, #0xc
	strh r0, [r2]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #1
	strh r1, [r0]
	movs r2, #0xa5
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #0
	strh r3, [r0]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #1
	strh r2, [r0]
	movs r0, #0x20
	bl VramMalloc
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	movs r2, #1
	strh r2, [r1, #0xc]
	movs r3, #0
	strb r3, [r1, #0x1a]
	movs r0, #0
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	ldr r3, [sp, #0x20]
	ldrh r0, [r3]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #8]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r7, r1
	movs r2, #0x1f
	strh r2, [r5]
	movs r3, #0xc1
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x24]
	movs r0, #0xd
	strh r0, [r3]
	adds r1, #4
	adds r0, r7, r1
	movs r2, #3
	strh r2, [r0]
	movs r3, #0xbf
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #2
	strh r3, [r0]
	movs r0, #0x20
	bl VramMalloc
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	ldr r2, [sp, #0x24]
	ldrh r0, [r2]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	movs r0, #0xda
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #0x28]
	movs r1, #0x1f
	strh r1, [r0]
	movs r2, #0xdb
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	movs r3, #0
	strh r3, [r2]
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #5
	strh r2, [r0]
	movs r3, #0xd9
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #1
	strh r3, [r0]
	movs r0, #0x20
	bl VramMalloc
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	ldr r3, [sp, #0x28]
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #8]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r4, r7, r1
	movs r2, #0x1f
	strh r2, [r4]
	movs r3, #0xf5
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x2c]
	movs r0, #0x10
	strh r0, [r3]
	adds r1, #4
	adds r0, r7, r1
	movs r2, #4
	strh r2, [r0]
	movs r3, #0xf3
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #3
	strh r3, [r0]
	movs r0, #0x20
	bl VramMalloc
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	ldr r2, [sp, #0x2c]
	ldrh r0, [r2]
	lsls r0, r0, #3
	b _08123E20
	.align 2, 0
_08123E04: .4byte 0x01000020
_08123E08: .4byte 0x06009000
_08123E0C: .4byte 0x00007FFF
_08123E10: .4byte 0x06004000
_08123E14: .4byte 0x0600B000
_08123E18: .4byte 0x06005000
_08123E1C: .4byte 0x01000010
_08123E20:
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08123E38
sub_08123E38: @ 0x08123E38
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08123E98
	ldrh r0, [r4, #0x2a]
	ldrh r2, [r4, #0x28]
	cmp r0, r2
	blo _08123E92
	ldr r7, _08123EA0 @ =0x06009000
	movs r5, #0
	ldrh r0, [r4, #0x30]
	cmp r5, r0
	bhs _08123E82
	mov r6, sp
_08123E5A:
	ldrh r1, [r4, #0x2e]
	adds r1, r1, r5
	lsls r1, r1, #6
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r6]
	adds r1, r7, r1
	mov r0, sp
	ldr r2, _08123EA4 @ =0x01000001
	bl CpuSet
	adds r5, #1
	ldrh r0, [r4, #0x30]
	cmp r5, r0
	blo _08123E5A
_08123E82:
	ldrh r0, [r4, #0x2c]
	subs r0, #1
	movs r1, #0
	strh r0, [r4, #0x2c]
	strh r1, [r4, #0x2a]
	ldrh r0, [r4, #0x10]
	subs r0, #8
	strh r0, [r4, #0x10]
_08123E92:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_08123E98:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08123EA0: .4byte 0x06009000
_08123EA4: .4byte 0x01000001

	thumb_func_start sub_08123EA8
sub_08123EA8: @ 0x08123EA8
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r1, _08123F08 @ =gUnk_08357F54
	add r0, sp, #4
	movs r2, #8
	bl memcpy
	add r5, sp, #0xc
	adds r1, r5, #0
	ldr r0, _08123F0C @ =gUnk_08357F5C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r4, sp, #0x1c
	adds r1, r4, #0
	ldr r0, _08123F10 @ =gUnk_08357F6C
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	movs r0, #0
	bl sub_0803D1A4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08123EFE
	movs r0, #0
	bl sub_0803D208
	str r5, [sp]
	movs r0, #1
	movs r1, #0
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_080332BC
	ldr r0, _08123F14 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08123EFE:
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08123F08: .4byte gUnk_08357F54
_08123F0C: .4byte gUnk_08357F5C
_08123F10: .4byte gUnk_08357F6C
_08123F14: .4byte gCurTask

	thumb_func_start sub_08123F18
sub_08123F18: @ 0x08123F18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _08123F40 @ =gUnk_08357F8C
	mov r0, sp
	movs r2, #0xe
	bl memcpy
	ldr r0, _08123F44 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08123F48
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08123F50
	.align 2, 0
_08123F40: .4byte gUnk_08357F8C
_08123F44: .4byte gCurTask
_08123F48:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08123F50:
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x80
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	add r7, sp, #0x10
	cmp r0, #0x78
	bls _08123F82
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0x84
_08123F68:
	adds r0, r4, #0
	bl sub_08123E38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r4, #0x34
	adds r5, #1
	cmp r5, #6
	bls _08123F68
_08123F82:
	adds r4, r6, #0
	adds r4, #0x80
	ldr r0, [r4]
	cmp r0, #0xf0
	bls _08123FAA
	ldr r0, _08123FC0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08123FA6
	movs r0, #0
	bl sub_0803C95C
	ldr r0, _08123FC4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08123FC8 @ =sub_08123EA8
	str r0, [r1, #8]
_08123FA6:
	movs r0, #0xfa
	str r0, [r4]
_08123FAA:
	movs r0, #0
	strh r0, [r7]
	ldr r1, _08123FCC @ =0x06005000
	ldr r2, _08123FD0 @ =0x01000010
	adds r0, r7, #0
	bl CpuSet
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08123FC0: .4byte gPressedKeys
_08123FC4: .4byte gCurTask
_08123FC8: .4byte sub_08123EA8
_08123FCC: .4byte 0x06005000
_08123FD0: .4byte 0x01000010

	thumb_func_start sub_08123FD4
sub_08123FD4: @ 0x08123FD4
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	movs r4, #0
	add r5, sp, #0xc
	add r6, sp, #0x1c
_08123FDE:
	lsls r0, r4, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	lsls r2, r4, #2
	adds r2, r5, r2
	lsls r3, r4, #3
	adds r3, r6, r3
	adds r0, r4, #0
	bl sub_08002C98
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08123FDE
	ldr r1, _08124030 @ =gUnk_0203AD1C
	ldr r0, _08124034 @ =gUnk_0203ADE0
	ldrh r0, [r0]
	movs r2, #0
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r1, #3]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	ldr r0, _08124038 @ =gUnk_0203AD10
	str r2, [r0]
	str r5, [sp]
	movs r0, #1
	movs r1, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_080332BC
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08124030: .4byte gUnk_0203AD1C
_08124034: .4byte gUnk_0203ADE0
_08124038: .4byte gUnk_0203AD10
