	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
/*
	thumb_func_start sub_08149DC0
sub_08149DC0: @ 0x08149DC0
	push {r4, lr}
	ldr r0, _08149DDC @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08149DE0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08149DE8
	.align 2, 0
_08149DDC: .4byte gCurGameState
_08149DE0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08149DE8:
	adds r4, r0, #0
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _08149E1C
	cmp r1, #2
	beq _08149E1C
	cmp r0, #0x4a
	bls _08149E1C
	ldr r0, _08149E14 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08149E1C
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _08149E18 @ =sub_0814A6BC
	b _08149E32
	.align 2, 0
_08149E14: .4byte gPressedKeys
_08149E18: .4byte sub_0814A6BC
_08149E1C:
	ldr r1, [r4]
	ldr r0, _08149E60 @ =0x00000257
	cmp r1, r0
	bls _08149E38
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _08149E38
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _08149E64 @ =sub_0814A518
_08149E32:
	str r1, [r0]
	movs r0, #2
	str r0, [r4, #4]
_08149E38:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149E4A
	adds r0, r4, #0
	bl _call_via_r1
_08149E4A:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08149E60: .4byte 0x00000257
_08149E64: .4byte sub_0814A518
*/
	thumb_func_start sub_08149E68
sub_08149E68: @ 0x08149E68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _08149EF8 @ =gUnk_08D62720
	mov r8, r0
	mov sl, r6
	ldr r1, _08149EFC @ =0x0000FFC0
	mov sb, r1
_08149E80:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, #0x10
	adds r4, r7, r4
	lsls r5, r6, #1
	adds r5, r5, r6
	lsls r5, r5, #1
	mov r0, r8
	adds r0, #4
	adds r0, r5, r0
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	mov r1, r8
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, _08149F00 @ =gUnk_08D62722
	adds r5, r5, r0
	ldrh r0, [r5]
	strb r0, [r4, #0x1a]
	mov r1, sl
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x20
	strb r0, [r4, #0x1c]
	movs r0, #0
	strb r0, [r4, #0x1f]
	mov r1, sb
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	mov r0, sl
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bls _08149E80
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08149F04 @ =sub_08149F08
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149EF8: .4byte gUnk_08D62720
_08149EFC: .4byte 0x0000FFC0
_08149F00: .4byte gUnk_08D62722
_08149F04: .4byte sub_08149F08

	thumb_func_start sub_08149F08
sub_08149F08: @ 0x08149F08
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x94
	lsls r0, r0, #1
	adds r7, r5, r0
	ldrb r0, [r7]
	ldr r1, [r5, #8]
	movs r2, #1
	orrs r1, r2
	str r1, [r5, #8]
	adds r6, r5, #0
	adds r6, #0x10
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x18
	adds r4, r4, r1
	strh r4, [r6, #0x10]
	movs r0, #0x7f
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08149F78
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08149F7E
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _08149F74 @ =sub_0814A404
	str r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _08149F7E
	.align 2, 0
_08149F74: .4byte sub_0814A404
_08149F78:
	adds r0, r6, #0
	bl sub_0815604C
_08149F7E:
	adds r0, r5, #0
	bl sub_0814A39C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08149F8C
sub_08149F8C: @ 0x08149F8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r4, #0
_08149F96:
	adds r0, r4, #0
	bl sub_0814A218
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08149F96
	movs r4, #0
_08149FA8:
	adds r0, r4, #0
	bl sub_0814A240
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08149FA8
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814A114 @ =gBgCntRegs
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _0814A118 @ =0x06000800
	adds r6, r2, r3
	lsls r1, r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814A01A
_08149FFE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08149FFE
_0814A01A:
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814A114 @ =gBgCntRegs
	ldrh r2, [r1, #2]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	adds r1, r1, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814A078
_0814A05C:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814A05C
_0814A078:
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814A114 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	adds r1, r1, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814A0D8
_0814A0BC:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814A0BC
_0814A0D8:
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _0814A11C @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814A120
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08158334
	b _0814A13E
	.align 2, 0
_0814A108: .4byte gUnk_08387D58
_0814A10C: .4byte gUnk_08D60A80
_0814A110: .4byte gUnk_082D7850
_0814A114: .4byte gBgCntRegs
_0814A118: .4byte 0x06000800
_0814A11C: .4byte gUnk_03002440
_0814A120:
	ldr r2, _0814A164 @ =0x040000D4
	ldr r1, _0814A168 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814A16C @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _0814A170 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_0814A13E:
	mov r0, r8
	bl sub_08149E68
	movs r1, #0x9a
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	add r1, r8
	ldr r0, _0814A174 @ =sub_0814A178
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A164: .4byte 0x040000D4
_0814A168: .4byte gUnk_082D7850
_0814A16C: .4byte gBgPalette
_0814A170: .4byte 0x80000100
_0814A174: .4byte sub_0814A178

	thumb_func_start sub_0814A178
sub_0814A178: @ 0x0814A178
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	movs r7, #0
	strh r4, [r0]
	ldr r5, _0814A1C0 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0814A1BA
	strh r7, [r5, #4]
	strh r7, [r5, #2]
	strh r7, [r5]
	movs r0, #1
	str r0, [r6, #4]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0814A1C4 @ =sub_0814A420
	str r0, [r1]
_0814A1BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A1C0: .4byte gBldRegs
_0814A1C4: .4byte sub_0814A420

	thumb_func_start sub_0814A1C8
sub_0814A1C8: @ 0x0814A1C8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A1E2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814A1EA
_0814A1E2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814A1EA:
	adds r6, r0, #0
	movs r5, #0
_0814A1EE:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x10
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814A206
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0814A206:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0814A1EE
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A218
sub_0814A218: @ 0x0814A218
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814A23C @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814A23C: .4byte 0x01002000

	thumb_func_start sub_0814A240
sub_0814A240: @ 0x0814A240
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _0814A26C @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814A270 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814A26C: .4byte 0x000001FF
_0814A270: .4byte 0x01000400

	thumb_func_start sub_0814A274
sub_0814A274: @ 0x0814A274
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, _0814A2A4 @ =gUnk_08D626F0
	ldr r1, _0814A2A8 @ =gUnk_08D60A80
	ldrh r1, [r1]
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r1, [r1]
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A2AC @ =sub_0814A2B0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A2A4: .4byte gUnk_08D626F0
_0814A2A8: .4byte gUnk_08D60A80
_0814A2AC: .4byte sub_0814A2B0

	thumb_func_start sub_0814A2B0
sub_0814A2B0: @ 0x0814A2B0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #4]
	cmp r0, #1
	bne _0814A2C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0814A2C8 @ =sub_0814A2CC
	str r0, [r1]
_0814A2C4:
	pop {r0}
	bx r0
	.align 2, 0
_0814A2C8: .4byte sub_0814A2CC

	thumb_func_start sub_0814A2CC
sub_0814A2CC: @ 0x0814A2CC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_0814F274
	cmp r0, #0
	bne _0814A2FE
	ldr r1, _0814A304 @ =gUnk_08D626F0
	ldr r0, _0814A308 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0814A30C @ =sub_0814A310
	str r0, [r1]
_0814A2FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A304: .4byte gUnk_08D626F0
_0814A308: .4byte gUnk_08D60A80
_0814A30C: .4byte sub_0814A310

	thumb_func_start sub_0814A310
sub_0814A310: @ 0x0814A310
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_0814F274
	cmp r0, #0
	bne _0814A344
	ldr r1, _0814A34C @ =gUnk_08D626F0
	ldr r0, _0814A350 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0814A354 @ =sub_0814A358
	str r0, [r1]
_0814A344:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A34C: .4byte gUnk_08D626F0
_0814A350: .4byte gUnk_08D60A80
_0814A354: .4byte sub_0814A358

	thumb_func_start sub_0814A358
sub_0814A358: @ 0x0814A358
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_0814F274
	cmp r0, #0
	bne _0814A38A
	ldr r1, _0814A390 @ =gUnk_08D626F0
	ldr r0, _0814A394 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0814A398 @ =sub_0814A310
	str r0, [r1]
_0814A38A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A390: .4byte gUnk_08D626F0
_0814A394: .4byte gUnk_08D60A80
_0814A398: .4byte sub_0814A310

	thumb_func_start sub_0814A39C
sub_0814A39C: @ 0x0814A39C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, r8
	ldrb r7, [r0]
	movs r6, #0
	cmp r6, r7
	bhs _0814A3F4
_0814A3B2:
	ldr r0, _0814A400 @ =gUnk_08D6274A
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r5, r0, #2
	adds r5, r5, r0
	lsls r5, r5, #3
	adds r5, #0x10
	add r5, r8
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r0, r6, #0
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x18
	adds r4, r4, r1
	strh r4, [r5, #0x10]
	movs r0, #0x7f
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _0814A3B2
_0814A3F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A400: .4byte gUnk_08D6274A

	thumb_func_start sub_0814A404
sub_0814A404: @ 0x0814A404
	push {lr}
	bl sub_0814A39C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A410
sub_0814A410: @ 0x0814A410
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0814A41C @ =sub_08149F8C
	str r1, [r0]
	bx lr
	.align 2, 0
_0814A41C: .4byte sub_08149F8C

	thumb_func_start sub_0814A420
sub_0814A420: @ 0x0814A420
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0814A458 @ =gBldRegs
	ldr r0, _0814A45C @ =0x00000641
	strh r0, [r1]
	ldr r0, _0814A460 @ =0x00001010
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r2, _0814A464 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0814A468 @ =sub_0814A46C
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A458: .4byte gBldRegs
_0814A45C: .4byte 0x00000641
_0814A460: .4byte 0x00001010
_0814A464: .4byte gDispCnt
_0814A468: .4byte sub_0814A46C

	thumb_func_start sub_0814A46C
sub_0814A46C: @ 0x0814A46C
	push {lr}
	adds r1, r0, #0
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0814A492
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r1, _0814A498 @ =sub_0814A49C
	str r1, [r0]
	movs r0, #0
	strh r0, [r2]
_0814A492:
	pop {r0}
	bx r0
	.align 2, 0
_0814A498: .4byte sub_0814A49C

	thumb_func_start sub_0814A49C
sub_0814A49C: @ 0x0814A49C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl m4aSongNumStartOrChange
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A4C0 @ =sub_0814A4C4
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A4C0: .4byte sub_0814A4C4

	thumb_func_start sub_0814A4C4
sub_0814A4C4: @ 0x0814A4C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	ldr r0, _0814A4F8 @ =0x0000018F
	cmp r1, r0
	bls _0814A4E2
	ldr r0, _0814A4FC @ =gUnk_030016A0
	movs r1, #0x11
	bl m4aMPlayFadeOut
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A500 @ =sub_0814A504
	str r0, [r1]
_0814A4E2:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A4F8: .4byte 0x0000018F
_0814A4FC: .4byte gUnk_030016A0
_0814A500: .4byte sub_0814A504

	thumb_func_start sub_0814A504
sub_0814A504: @ 0x0814A504
	push {lr}
	movs r2, #0x96
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A518
sub_0814A518: @ 0x0814A518
	push {lr}
	adds r2, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x9f
	lsls r1, r1, #1
	adds r3, r2, r1
	ldrh r1, [r3]
	ldr r0, _0814A550 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r3]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0814A554 @ =sub_0814A558
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A550: .4byte 0x0000FFBF
_0814A554: .4byte sub_0814A558

	thumb_func_start sub_0814A558
sub_0814A558: @ 0x0814A558
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_0814F274
	cmp r0, #0
	bne _0814A574
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A588 @ =sub_0814A58C
	str r0, [r1]
_0814A574:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A588: .4byte sub_0814A58C

	thumb_func_start sub_0814A58C
sub_0814A58C: @ 0x0814A58C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0814A5CC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814A5D0 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0814A5D4 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0814A5D8 @ =sub_0814A5DC
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r3, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A5CC: .4byte gDispCnt
_0814A5D0: .4byte 0x0000FEFF
_0814A5D4: .4byte gBldRegs
_0814A5D8: .4byte sub_0814A5DC

	thumb_func_start sub_0814A5DC
sub_0814A5DC: @ 0x0814A5DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0814A624 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x3c
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x3b
	ble _0814A60E
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0814A628 @ =sub_0814A62C
	str r0, [r1]
_0814A60E:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814A624: .4byte gBldRegs
_0814A628: .4byte sub_0814A62C

	thumb_func_start sub_0814A62C
sub_0814A62C: @ 0x0814A62C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0814A648 @ =gUnk_03000554
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814A650
	ldr r0, _0814A64C @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	bl sub_08026044
	b _0814A698
	.align 2, 0
_0814A648: .4byte gUnk_03000554
_0814A64C: .4byte gCurGameState
_0814A650:
	mov r0, sp
	ldr r1, _0814A6A0 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0814A6A4 @ =gBgPalette
	ldr r5, _0814A6A8 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0814A6AC @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0814A6B0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0814A6B4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _0814A6B8 @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	bl sub_08025F2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08025EC8
_0814A698:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A6A0: .4byte 0x00007FFF
_0814A6A4: .4byte gBgPalette
_0814A6A8: .4byte 0x01000100
_0814A6AC: .4byte gObjPalette
_0814A6B0: .4byte gUnk_03002440
_0814A6B4: .4byte gBldRegs
_0814A6B8: .4byte gCurGameState

	thumb_func_start sub_0814A6BC
sub_0814A6BC: @ 0x0814A6BC
	push {lr}
	adds r3, r0, #0
	ldr r2, _0814A6FC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814A700 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0814A704 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0814A708 @ =sub_0814A70C
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r3, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A6FC: .4byte gDispCnt
_0814A700: .4byte 0x0000FEFF
_0814A704: .4byte gBldRegs
_0814A708: .4byte sub_0814A70C

	thumb_func_start sub_0814A70C
sub_0814A70C: @ 0x0814A70C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0814A754 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _0814A73E
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0814A758 @ =sub_0814A75C
	str r0, [r1]
_0814A73E:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814A754: .4byte gBldRegs
_0814A758: .4byte sub_0814A75C

	thumb_func_start sub_0814A75C
sub_0814A75C: @ 0x0814A75C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl m4aSongNumStop
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A790 @ =sub_0814A794
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A790: .4byte sub_0814A794

	thumb_func_start sub_0814A794
sub_0814A794: @ 0x0814A794
	push {lr}
	adds r2, r0, #0
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0814A7B6
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0814A7C8 @ =sub_0814A7CC
	str r0, [r1]
_0814A7B6:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A7C8: .4byte sub_0814A7CC

	thumb_func_start sub_0814A7CC
sub_0814A7CC: @ 0x0814A7CC
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	ldr r1, _0814A810 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0814A814 @ =gBgPalette
	ldr r5, _0814A818 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0814A81C @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0814A820 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0814A824 @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	bl sub_08138B44
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A810: .4byte 0x00007FFF
_0814A814: .4byte gBgPalette
_0814A818: .4byte 0x01000100
_0814A81C: .4byte gObjPalette
_0814A820: .4byte gUnk_03002440
_0814A824: .4byte gCurGameState
