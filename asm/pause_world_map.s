	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08125A4C
sub_08125A4C: @ 0x08125A4C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, _08125AA8 @ =gDispCnt
	movs r2, #0xaa
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08125AAC @ =gBgCntRegs
	movs r3, #0
	ldr r0, _08125AB0 @ =0x00001606
	strh r0, [r1]
	ldr r0, _08125AB4 @ =0x00001708
	strh r0, [r1, #2]
	adds r0, #0xf9
	strh r0, [r1, #4]
	ldr r0, _08125AB8 @ =gBgScrollRegs
	movs r1, #8
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08125ABC @ =sub_08125B3C
	movs r1, #0x86
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #5
	str r3, [sp]
	movs r3, #4
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125AC0
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08125AC8
	.align 2, 0
_08125AA8: .4byte gDispCnt
_08125AAC: .4byte gBgCntRegs
_08125AB0: .4byte 0x00001606
_08125AB4: .4byte 0x00001708
_08125AB8: .4byte gBgScrollRegs
_08125ABC: .4byte sub_08125B3C
_08125AC0:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08125AC8:
	adds r4, r0, #0
	movs r3, #0x83
	lsls r3, r3, #2
	adds r2, r4, r3
	movs r3, #0
	strb r3, [r2]
	cmp r6, #0
	beq _08125B00
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	strb r6, [r2]
	str r3, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08125AF8 @ =0x05004000
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08125AFC @ =sub_08125D60
	str r0, [r5, #8]
	b _08125B04
	.align 2, 0
_08125AF8: .4byte 0x05004000
_08125AFC: .4byte sub_08125D60
_08125B00:
	bl sub_08127214
_08125B04:
	ldr r1, _08125B30 @ =0x0000020A
	adds r0, r4, r1
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	ldr r3, _08125B34 @ =0x0000020E
	adds r0, r4, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r4, r3
	strb r2, [r0]
	adds r3, #4
	adds r0, r4, r3
	str r1, [r0]
	ldr r1, _08125B38 @ =0x00000211
	adds r0, r4, r1
	strb r2, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08125B30: .4byte 0x0000020A
_08125B34: .4byte 0x0000020E
_08125B38: .4byte 0x00000211

	thumb_func_start sub_08125B3C
sub_08125B3C: @ 0x08125B3C
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08125B5C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125B60
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08125B68
	.align 2, 0
_08125B5C: .4byte gCurTask
_08125B60:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08125B68:
	adds r6, r0, #0
	bl sub_08125690
	ldr r0, _08125C50 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08125C54 @ =sub_08125C80
	str r0, [r1, #8]
	movs r0, #0x80
	movs r1, #0x7f
	bl sub_0803D280
	movs r0, #0
	movs r1, #0xff
	bl sub_0803D2A8
	movs r4, #0
	str r4, [sp]
	ldr r5, _08125C58 @ =0x06004000
	ldr r2, _08125C5C @ =0x05000800
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r1, #0
	strh r4, [r6, #0xa]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	movs r0, #0xb6
	strh r0, [r6, #0x1c]
	strh r4, [r6, #0x1e]
	strh r4, [r6, #0x20]
	strh r4, [r6, #0x22]
	strh r4, [r6, #0x24]
	movs r0, #0x20
	strh r0, [r6, #0x26]
	movs r0, #0x16
	strh r0, [r6, #0x28]
	ldr r0, _08125C60 @ =0x00007FFF
	strh r0, [r6, #0x34]
	strh r0, [r6, #0x36]
	adds r0, r6, #0
	adds r0, #0x2a
	strb r1, [r0]
	str r5, [r6, #4]
	movs r0, #0x19
	strh r0, [r6, #0x2e]
	ldr r0, _08125C64 @ =0x0600B000
	str r0, [r6, #0xc]
	ldr r0, _08125C68 @ =gUnk_081E08FC
	adds r1, r5, #0
	bl LZ77UnCompVram
	adds r0, r6, #0
	bl sub_08153060
	add r0, sp, #4
	strh r4, [r0]
	ldr r4, _08125C6C @ =0x0600C000
	ldr r2, _08125C70 @ =0x01000300
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08125C74 @ =gUnk_0835A3CC
	ldr r2, _08125C78 @ =0x04000140
	adds r1, r4, #0
	bl CpuSet
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_08125088
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #1
	bl sub_08125088
	adds r0, r6, #0
	adds r0, #0xe8
	movs r1, #2
	bl sub_08125088
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #3
	bl sub_08125088
	bl sub_08125828
	movs r4, #1
	ldr r0, _08125C7C @ =gUnk_08359C08
	adds r5, r0, #2
_08125C22:
	adds r0, r4, #0
	bl sub_08126A78
	ldrh r0, [r5]
	bl sub_08002A5C
	cmp r0, #0
	bne _08125C38
	adds r0, r4, #0
	bl sub_08126AAC
_08125C38:
	adds r5, #2
	adds r4, #1
	cmp r4, #0xf
	ble _08125C22
	adds r0, r6, #0
	bl sub_0812595C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08125C50: .4byte gCurTask
_08125C54: .4byte sub_08125C80
_08125C58: .4byte 0x06004000
_08125C5C: .4byte 0x05000800
_08125C60: .4byte 0x00007FFF
_08125C64: .4byte 0x0600B000
_08125C68: .4byte gUnk_081E08FC
_08125C6C: .4byte 0x0600C000
_08125C70: .4byte 0x01000300
_08125C74: .4byte gUnk_0835A3CC
_08125C78: .4byte 0x04000140
_08125C7C: .4byte gUnk_08359C08

	thumb_func_start sub_08125C80
sub_08125C80: @ 0x08125C80
	push {r4, r5, lr}
	ldr r0, _08125C9C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125CA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08125CA8
	.align 2, 0
_08125C9C: .4byte gCurTask
_08125CA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08125CA8:
	adds r5, r0, #0
	ldr r4, _08125CF8 @ =gUnk_0203ACC0
	ldrh r1, [r4, #0xe]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08125CDC
	ldrh r1, [r4, #0x22]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08125CDC
	ldrh r1, [r4, #0x36]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08125CDC
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08125D04
_08125CDC:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
	bl sub_08124EC8
	ldr r0, _08125CFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08125D00 @ =sub_08126AE0
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_0812595C
	b _08125D5A
	.align 2, 0
_08125CF8: .4byte gUnk_0203ACC0
_08125CFC: .4byte gCurTask
_08125D00: .4byte sub_08126AE0
_08125D04:
	adds r0, r5, #0
	bl sub_0812595C
	movs r3, #0
_08125D0C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r1, [r2, #0xe]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08125D50
	ldrb r1, [r2, #0xd]
	movs r0, #0xd
	ldrsb r0, [r2, r0]
	cmp r0, #1
	beq _08125D2C
	cmp r0, #4
	bne _08125D50
_08125D2C:
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	movs r0, #0x20
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _08125D48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08125D4C @ =sub_08126558
	str r0, [r1, #8]
	b _08125D5A
	.align 2, 0
_08125D48: .4byte gCurTask
_08125D4C: .4byte sub_08126558
_08125D50:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08125D0C
_08125D5A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08125D60
sub_08125D60: @ 0x08125D60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r2, _08125D84 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125D88
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _08125D90
	.align 2, 0
_08125D84: .4byte gCurTask
_08125D88:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_08125D90:
	ldr r0, _08125E48 @ =0x0000020E
	adds r3, r7, r0
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _08125E3C
	movs r1, #0
	mov r8, r1
	movs r4, #0
	strh r4, [r3]
	ldr r1, [r2]
	ldr r0, _08125E4C @ =sub_08125E74
	str r0, [r1, #8]
	bl sub_08125690
	str r4, [sp]
	ldr r5, _08125E50 @ =0x06004000
	ldr r2, _08125E54 @ =0x05000800
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	strh r4, [r7, #0xa]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	movs r0, #0xb6
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x20
	strh r0, [r7, #0x26]
	movs r0, #0x16
	strh r0, [r7, #0x28]
	ldr r6, _08125E58 @ =0x00007FFF
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r1, r8
	strb r1, [r0]
	str r5, [r7, #4]
	movs r0, #0x19
	strh r0, [r7, #0x2e]
	ldr r0, _08125E5C @ =0x0600B000
	str r0, [r7, #0xc]
	ldr r0, _08125E60 @ =gUnk_081E08FC
	adds r1, r5, #0
	bl LZ77UnCompVram
	adds r0, r7, #0
	bl sub_08153060
	add r0, sp, #4
	strh r4, [r0]
	ldr r4, _08125E64 @ =0x0600C000
	ldr r2, _08125E68 @ =0x01000300
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08125E6C @ =gUnk_0835A3CC
	ldr r2, _08125E70 @ =0x04000140
	adds r1, r4, #0
	bl CpuSet
	bl sub_08124EA0
	movs r0, #0x80
	movs r1, #0x7f
	bl sub_0803D280
	movs r0, #0
	movs r1, #0xff
	bl sub_0803D2A8
	mov r0, sp
	adds r0, #6
	strh r6, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
_08125E3C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08125E48: .4byte 0x0000020E
_08125E4C: .4byte sub_08125E74
_08125E50: .4byte 0x06004000
_08125E54: .4byte 0x05000800
_08125E58: .4byte 0x00007FFF
_08125E5C: .4byte 0x0600B000
_08125E60: .4byte gUnk_081E08FC
_08125E64: .4byte 0x0600C000
_08125E68: .4byte 0x01000300
_08125E6C: .4byte gUnk_0835A3CC
_08125E70: .4byte 0x04000140

	thumb_func_start sub_08125E74
sub_08125E74: @ 0x08125E74
	push {r4, r5, lr}
	ldr r2, _08125E90 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125E94
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08125E9C
	.align 2, 0
_08125E90: .4byte gCurTask
_08125E94:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08125E9C:
	ldr r1, [r2]
	ldr r0, _08125F14 @ =sub_08125F1C
	str r0, [r1, #8]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_081252FC
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_08125088
	adds r0, r4, #0
	adds r0, #0x94
	movs r1, #1
	bl sub_08125088
	adds r0, r4, #0
	adds r0, #0xe8
	movs r1, #2
	bl sub_08125088
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #3
	bl sub_08125088
	bl sub_08125828
	movs r4, #1
	ldr r0, _08125F18 @ =gUnk_08359C08
	adds r5, r0, #2
_08125EEE:
	adds r0, r4, #0
	bl sub_08126A78
	ldrh r0, [r5]
	bl sub_08002A5C
	cmp r0, #0
	bne _08125F04
	adds r0, r4, #0
	bl sub_08126AAC
_08125F04:
	adds r5, #2
	adds r4, #1
	cmp r4, #0xf
	ble _08125EEE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08125F14: .4byte sub_08125F1C
_08125F18: .4byte gUnk_08359C08

	thumb_func_start sub_08125F1C
sub_08125F1C: @ 0x08125F1C
	push {r4, r5, r6, lr}
	ldr r0, _08125F38 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125F3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08125F44
	.align 2, 0
_08125F38: .4byte gCurTask
_08125F3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08125F44:
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x40
	adds r6, r5, #0
	adds r6, #0x90
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125F7C
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125F7C
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125F7C:
	adds r4, r5, #0
	adds r4, #0x94
	adds r6, r5, #0
	adds r6, #0xe4
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125FB2
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125FB2
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125FB2:
	adds r4, r5, #0
	adds r4, #0xe8
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125FEE
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125FEE
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125FEE:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r5, r0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r6, r5, r1
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0812602C
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0812602C
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_0812602C:
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812604A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08126052
_0812604A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08126052:
	adds r0, #0x7f
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0812606E
	ldr r0, _08126074 @ =0x0000020E
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08126078 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0812607C @ =sub_0812618C
	str r0, [r1, #8]
_0812606E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08126074: .4byte 0x0000020E
_08126078: .4byte gCurTask
_0812607C: .4byte sub_0812618C

	thumb_func_start sub_08126080
sub_08126080: @ 0x08126080
	push {lr}
	movs r1, #0
	lsls r0, r0, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r0, r0, r2
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _08126116
	lsls r0, r0, #2
	ldr r1, _0812609C @ =_081260A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0812609C: .4byte _081260A0
_081260A0: @ jump table
	.4byte _081260DC @ case 0
	.4byte _081260E0 @ case 1
	.4byte _081260E4 @ case 2
	.4byte _081260E8 @ case 3
	.4byte _081260EC @ case 4
	.4byte _081260F0 @ case 5
	.4byte _081260F4 @ case 6
	.4byte _081260F8 @ case 7
	.4byte _081260FC @ case 8
	.4byte _08126100 @ case 9
	.4byte _08126104 @ case 10
	.4byte _08126108 @ case 11
	.4byte _0812610C @ case 12
	.4byte _08126110 @ case 13
	.4byte _08126114 @ case 14
_081260DC:
	movs r1, #2
	b _08126116
_081260E0:
	movs r1, #1
	b _08126116
_081260E4:
	movs r1, #6
	b _08126116
_081260E8:
	movs r1, #5
	b _08126116
_081260EC:
	movs r1, #9
	b _08126116
_081260F0:
	movs r1, #0xa
	b _08126116
_081260F4:
	movs r1, #0xd
	b _08126116
_081260F8:
	movs r1, #0xf
	b _08126116
_081260FC:
	movs r1, #7
	b _08126116
_08126100:
	movs r1, #8
	b _08126116
_08126104:
	movs r1, #0xb
	b _08126116
_08126108:
	movs r1, #0xc
	b _08126116
_0812610C:
	movs r1, #3
	b _08126116
_08126110:
	movs r1, #4
	b _08126116
_08126114:
	movs r1, #0xe
_08126116:
	movs r0, #2
	movs r2, #0
	bl sub_08002888
	movs r1, #1
	str r1, [r0]
	ldr r0, _08126158 @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08126182
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08126170
	ldr r0, _0812615C @ =gUnk_0203AD3C
	ldr r1, _08126160 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08126168
	ldr r2, _08126164 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0812614E
	adds r1, r0, #0
_0812614E:
	movs r0, #1
	bl sub_0800ACD4
	b _08126182
	.align 2, 0
_08126158: .4byte gUnk_0203AD10
_0812615C: .4byte gUnk_0203AD3C
_08126160: .4byte gUnk_0203AD24
_08126164: .4byte gUnk_0203AD48
_08126168:
	movs r0, #8
	bl sub_08031CE4
	b _08126182
_08126170:
	ldr r2, _08126188 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0812617C
	adds r1, r0, #0
_0812617C:
	movs r0, #1
	bl sub_0800ACD4
_08126182:
	pop {r0}
	bx r0
	.align 2, 0
_08126188: .4byte gUnk_0203AD48

	thumb_func_start sub_0812618C
sub_0812618C: @ 0x0812618C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _081261AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081261B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081261B8
	.align 2, 0
_081261AC: .4byte gCurTask
_081261B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081261B8:
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x40
	adds r6, r5, #0
	adds r6, #0x90
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081261F0
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081261F0
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_081261F0:
	adds r4, r5, #0
	adds r4, #0x94
	adds r6, r5, #0
	adds r6, #0xe4
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08126226
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08126226
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08126226:
	adds r4, r5, #0
	adds r4, #0xe8
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08126262
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08126262
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08126262:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r4, r5, r2
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081262A0
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081262A0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_081262A0:
	ldr r2, _08126350 @ =0x0000020E
	adds r4, r5, r2
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x78
	bne _081262B0
	bl sub_08124EC8
_081262B0:
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x96
	ble _081263B0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	str r0, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08126354 @ =0x05004000
	mov r0, sp
	bl CpuSet
	movs r2, #0x83
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_08126080
	movs r5, #0
	movs r4, #1
_081262EA:
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08126300
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08126300:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _081262EA
	cmp r5, #0xf
	bne _0812639C
	movs r0, #2
	movs r1, #0x12
	movs r2, #0
	bl sub_08002888
	movs r1, #1
	str r1, [r0]
	ldr r0, _08126358 @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08126382
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08126370
	ldr r0, _0812635C @ =gUnk_0203AD3C
	ldr r1, _08126360 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08126368
	ldr r2, _08126364 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _08126348
	adds r1, r0, #0
_08126348:
	movs r0, #1
	bl sub_0800ACD4
	b _08126382
	.align 2, 0
_08126350: .4byte 0x0000020E
_08126354: .4byte 0x05004000
_08126358: .4byte gUnk_0203AD10
_0812635C: .4byte gUnk_0203AD3C
_08126360: .4byte gUnk_0203AD24
_08126364: .4byte gUnk_0203AD48
_08126368:
	movs r0, #8
	bl sub_08031CE4
	b _08126382
_08126370:
	ldr r2, _08126394 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0812637C
	adds r1, r0, #0
_0812637C:
	movs r0, #1
	bl sub_0800ACD4
_08126382:
	ldr r0, _08126398 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	bl sub_0801DA58
	b _081263B4
	.align 2, 0
_08126394: .4byte gUnk_0203AD48
_08126398: .4byte gCurTask
_0812639C:
	ldr r0, _081263AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08039670
	b _081263B4
	.align 2, 0
_081263AC: .4byte gCurTask
_081263B0:
	adds r0, r1, #1
	strh r0, [r4]
_081263B4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_081263BC
sub_081263BC: @ 0x081263BC
	push {r4, r5, lr}
	sub sp, #0x28
	ldr r3, _08126400 @ =0x06012000
	str r3, [sp]
	mov r4, sp
	movs r5, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	strh r3, [r4, #0x14]
	mov r3, sp
	strh r0, [r3, #0xc]
	mov r0, sp
	strb r1, [r0, #0x1a]
	strh r5, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r2, [r0, #0x1f]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08126400: .4byte 0x06012000

	thumb_func_start sub_08126404
sub_08126404: @ 0x08126404
	push {lr}
	movs r0, #1
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126410
sub_08126410: @ 0x08126410
	push {lr}
	movs r0, #2
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_0812641C
sub_0812641C: @ 0x0812641C
	push {lr}
	movs r0, #3
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126428
sub_08126428: @ 0x08126428
	push {lr}
	movs r0, #4
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126434
sub_08126434: @ 0x08126434
	push {lr}
	movs r0, #5
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126440
sub_08126440: @ 0x08126440
	push {lr}
	movs r0, #6
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_0812644C
sub_0812644C: @ 0x0812644C
	push {lr}
	movs r0, #7
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126458
sub_08126458: @ 0x08126458
	push {lr}
	movs r0, #8
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126464
sub_08126464: @ 0x08126464
	push {lr}
	movs r0, #9
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126470
sub_08126470: @ 0x08126470
	push {lr}
	movs r0, #0xa
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_0812647C
sub_0812647C: @ 0x0812647C
	push {lr}
	movs r0, #0xb
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126488
sub_08126488: @ 0x08126488
	push {lr}
	movs r0, #0xc
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_08126494
sub_08126494: @ 0x08126494
	push {lr}
	movs r0, #0xd
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_081264A0
sub_081264A0: @ 0x081264A0
	push {lr}
	movs r0, #0xe
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_081264AC
sub_081264AC: @ 0x081264AC
	push {lr}
	movs r0, #0xf
	bl sub_08125A4C
	pop {r0}
	bx r0

	thumb_func_start sub_081264B8
sub_081264B8: @ 0x081264B8
	push {r4, lr}
	ldr r0, _081264D4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081264D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081264E0
	.align 2, 0
_081264D4: .4byte gCurTask
_081264D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081264E0:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081264F8
	ldr r0, _081264F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _081264FE
	.align 2, 0
_081264F4: .4byte gCurTask
_081264F8:
	adds r0, r4, #0
	bl sub_081564D8
_081264FE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08126504
sub_08126504: @ 0x08126504
	push {r4, r5, lr}
	ldr r2, _08126520 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08126524
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0812652C
	.align 2, 0
_08126520: .4byte gCurTask
_08126524:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0812652C:
	ldr r0, [r2]
	ldr r1, _08126554 @ =sub_081254A8
	str r1, [r0, #8]
	adds r0, r5, #0
	bl sub_08155128
	adds r4, r5, #0
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_081564D8
	adds r0, r4, #0
	bl sub_081564D8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08126554: .4byte sub_081254A8

	thumb_func_start sub_08126558
sub_08126558: @ 0x08126558
	push {r4, lr}
	ldr r0, _08126574 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08126578
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08126580
	.align 2, 0
_08126574: .4byte gCurTask
_08126578:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08126580:
	bl sub_0812A304
	cmp r0, #0
	bne _081265BC
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0812659A
	bl sub_08124430
	b _081265A2
_0812659A:
	cmp r0, #4
	bne _081265A2
	bl sub_081278D4
_081265A2:
	movs r0, #0x20
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _081265B8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _081265C2
	.align 2, 0
_081265B8: .4byte gCurTask
_081265BC:
	adds r0, r4, #0
	bl sub_0812595C
_081265C2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_081265C8
sub_081265C8: @ 0x081265C8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812660C @ =gUnk_08359DD8
	ldr r6, _08126610 @ =gUnk_08359DE8
	ldrb r5, [r0, #1]
	movs r4, #0
	cmp r4, r5
	bhs _08126602
_081265D8:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126614 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _081265D8
_08126602:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812660C: .4byte gUnk_08359DD8
_08126610: .4byte gUnk_08359DE8
_08126614: .4byte 0x0600C000

	thumb_func_start sub_08126618
sub_08126618: @ 0x08126618
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812665C @ =gUnk_08359DD8
	ldr r6, _08126660 @ =gUnk_08359DEC
	ldrb r5, [r0, #2]
	movs r4, #0
	cmp r4, r5
	bhs _08126652
_08126628:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126664 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126628
_08126652:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812665C: .4byte gUnk_08359DD8
_08126660: .4byte gUnk_08359DEC
_08126664: .4byte 0x0600C000

	thumb_func_start sub_08126668
sub_08126668: @ 0x08126668
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _081266AC @ =gUnk_08359DD8
	ldr r6, _081266B0 @ =gUnk_08359DF4
	ldrb r5, [r0, #3]
	movs r4, #0
	cmp r4, r5
	bhs _081266A2
_08126678:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _081266B4 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126678
_081266A2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081266AC: .4byte gUnk_08359DD8
_081266B0: .4byte gUnk_08359DF4
_081266B4: .4byte 0x0600C000

	thumb_func_start sub_081266B8
sub_081266B8: @ 0x081266B8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _081266FC @ =gUnk_08359DD8
	ldr r6, _08126700 @ =gUnk_08359DFC
	ldrb r5, [r0, #4]
	movs r4, #0
	cmp r4, r5
	bhs _081266F2
_081266C8:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126704 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _081266C8
_081266F2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081266FC: .4byte gUnk_08359DD8
_08126700: .4byte gUnk_08359DFC
_08126704: .4byte 0x0600C000

	thumb_func_start sub_08126708
sub_08126708: @ 0x08126708
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812674C @ =gUnk_08359DD8
	ldr r6, _08126750 @ =gUnk_08359E04
	ldrb r5, [r0, #5]
	movs r4, #0
	cmp r4, r5
	bhs _08126742
_08126718:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126754 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126718
_08126742:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812674C: .4byte gUnk_08359DD8
_08126750: .4byte gUnk_08359E04
_08126754: .4byte 0x0600C000

	thumb_func_start sub_08126758
sub_08126758: @ 0x08126758
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812679C @ =gUnk_08359DD8
	ldr r6, _081267A0 @ =gUnk_08359E08
	ldrb r5, [r0, #6]
	movs r4, #0
	cmp r4, r5
	bhs _08126792
_08126768:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _081267A4 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126768
_08126792:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812679C: .4byte gUnk_08359DD8
_081267A0: .4byte gUnk_08359E08
_081267A4: .4byte 0x0600C000

	thumb_func_start sub_081267A8
sub_081267A8: @ 0x081267A8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _081267EC @ =gUnk_08359DD8
	ldr r6, _081267F0 @ =gUnk_08359E10
	ldrb r5, [r0, #7]
	movs r4, #0
	cmp r4, r5
	bhs _081267E2
_081267B8:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _081267F4 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _081267B8
_081267E2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081267EC: .4byte gUnk_08359DD8
_081267F0: .4byte gUnk_08359E10
_081267F4: .4byte 0x0600C000

	thumb_func_start sub_081267F8
sub_081267F8: @ 0x081267F8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812683C @ =gUnk_08359DD8
	ldr r6, _08126840 @ =gUnk_08359E1C
	ldrb r5, [r0, #8]
	movs r4, #0
	cmp r4, r5
	bhs _08126832
_08126808:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126844 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126808
_08126832:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812683C: .4byte gUnk_08359DD8
_08126840: .4byte gUnk_08359E1C
_08126844: .4byte 0x0600C000

	thumb_func_start sub_08126848
sub_08126848: @ 0x08126848
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812688C @ =gUnk_08359DD8
	ldr r6, _08126890 @ =gUnk_08359E24
	ldrb r5, [r0, #9]
	movs r4, #0
	cmp r4, r5
	bhs _08126882
_08126858:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126894 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126858
_08126882:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812688C: .4byte gUnk_08359DD8
_08126890: .4byte gUnk_08359E24
_08126894: .4byte 0x0600C000

	thumb_func_start sub_08126898
sub_08126898: @ 0x08126898
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _081268DC @ =gUnk_08359DD8
	ldr r6, _081268E0 @ =gUnk_08359E30
	ldrb r5, [r0, #0xa]
	movs r4, #0
	cmp r4, r5
	bhs _081268D2
_081268A8:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _081268E4 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _081268A8
_081268D2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081268DC: .4byte gUnk_08359DD8
_081268E0: .4byte gUnk_08359E30
_081268E4: .4byte 0x0600C000

	thumb_func_start sub_081268E8
sub_081268E8: @ 0x081268E8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812692C @ =gUnk_08359DD8
	ldr r6, _08126930 @ =gUnk_08359E38
	ldrb r5, [r0, #0xb]
	movs r4, #0
	cmp r4, r5
	bhs _08126922
_081268F8:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126934 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _081268F8
_08126922:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812692C: .4byte gUnk_08359DD8
_08126930: .4byte gUnk_08359E38
_08126934: .4byte 0x0600C000

	thumb_func_start sub_08126938
sub_08126938: @ 0x08126938
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0812697C @ =gUnk_08359DD8
	ldr r6, _08126980 @ =gUnk_08359E40
	ldrb r5, [r0, #0xc]
	movs r4, #0
	cmp r4, r5
	bhs _08126972
_08126948:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126984 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126948
_08126972:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812697C: .4byte gUnk_08359DD8
_08126980: .4byte gUnk_08359E40
_08126984: .4byte 0x0600C000

	thumb_func_start sub_08126988
sub_08126988: @ 0x08126988
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _081269CC @ =gUnk_08359DD8
	ldr r6, _081269D0 @ =gUnk_08359E50
	ldrb r5, [r0, #0xd]
	movs r4, #0
	cmp r4, r5
	bhs _081269C2
_08126998:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _081269D4 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126998
_081269C2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081269CC: .4byte gUnk_08359DD8
_081269D0: .4byte gUnk_08359E50
_081269D4: .4byte 0x0600C000

	thumb_func_start sub_081269D8
sub_081269D8: @ 0x081269D8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08126A1C @ =gUnk_08359DD8
	ldr r6, _08126A20 @ =gUnk_08359E60
	ldrb r5, [r0, #0xe]
	movs r4, #0
	cmp r4, r5
	bhs _08126A12
_081269E8:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126A24 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _081269E8
_08126A12:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08126A1C: .4byte gUnk_08359DD8
_08126A20: .4byte gUnk_08359E60
_08126A24: .4byte 0x0600C000

	thumb_func_start sub_08126A28
sub_08126A28: @ 0x08126A28
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08126A6C @ =gUnk_08359DD8
	ldr r6, _08126A70 @ =gUnk_08359E6C
	ldrb r5, [r0, #0xf]
	movs r4, #0
	cmp r4, r5
	bhs _08126A62
_08126A38:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, _08126A74 @ =0x0600C000
	adds r1, r1, r2
	ldrh r2, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08126A38
_08126A62:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08126A6C: .4byte gUnk_08359DD8
_08126A70: .4byte gUnk_08359E6C
_08126A74: .4byte 0x0600C000

	thumb_func_start sub_08126A78
sub_08126A78: @ 0x08126A78
	push {lr}
	sub sp, #4
	ldr r1, _08126AA0 @ =gUnk_08359C28
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r2, sp
	movs r0, #5
	strh r0, [r2]
	lsls r1, r1, #1
	ldr r0, _08126AA4 @ =0x0600C000
	adds r1, r1, r0
	mov r0, sp
	ldr r2, _08126AA8 @ =0x01000001
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08126AA0: .4byte gUnk_08359C28
_08126AA4: .4byte 0x0600C000
_08126AA8: .4byte 0x01000001

	thumb_func_start sub_08126AAC
sub_08126AAC: @ 0x08126AAC
	push {lr}
	sub sp, #4
	ldr r1, _08126AD4 @ =gUnk_08359C28
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r2, sp
	movs r0, #6
	strh r0, [r2]
	lsls r1, r1, #1
	ldr r0, _08126AD8 @ =0x0600C000
	adds r1, r1, r0
	mov r0, sp
	ldr r2, _08126ADC @ =0x01000001
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08126AD4: .4byte gUnk_08359C28
_08126AD8: .4byte 0x0600C000
_08126ADC: .4byte 0x01000001

	thumb_func_start sub_08126AE0
sub_08126AE0: @ 0x08126AE0
	push {r4, lr}
	ldr r0, _08126AFC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08126B00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08126B08
	.align 2, 0
_08126AFC: .4byte gCurTask
_08126B00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08126B08:
	ldr r1, _08126B48 @ =0x00000211
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0x12
	ble _08126B3A
	ldr r2, _08126B4C @ =gUnk_0203ACC0
	ldr r0, _08126B50 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08126B54 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08039670
_08126B3A:
	adds r0, r4, #0
	bl sub_0812595C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08126B48: .4byte 0x00000211
_08126B4C: .4byte gUnk_0203ACC0
_08126B50: .4byte gUnk_0203AD3C
_08126B54: .4byte gCurTask

	thumb_func_start sub_08126B58
sub_08126B58: @ 0x08126B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r6, r2, #0
	lsls r0, r6, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _08126C2C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r6, r0
	bne _08126B80
	movs r5, #8
_08126B80:
	lsls r4, r6, #8
	ldr r2, _08126C30 @ =0x06013800
	adds r0, r4, r2
	str r0, [r3]
	adds r0, r5, #1
	lsls r0, r0, #6
	movs r1, #0
	mov sl, r1
	strh r0, [r3, #0x14]
	ldr r2, _08126C34 @ =gUnk_08350AAC
	ldr r1, _08126C38 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _08126C3C @ =0x00000103
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	mov r2, sl
	strh r2, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r6, [r3, #0x1f]
	strh r2, [r3, #0x10]
	strh r2, [r3, #0x12]
	movs r1, #0x82
	lsls r1, r1, #0xb
	mov r8, r1
	str r1, [r3, #8]
	adds r0, r3, #0
	bl sub_08155128
	ldr r2, _08126C40 @ =0x06013880
	adds r4, r4, r2
	str r4, [r7]
	lsls r0, r5, #6
	strh r0, [r7, #0x14]
	ldr r1, _08126C44 @ =gUnk_08350B30
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	mov r0, sl
	strh r0, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	adds r0, r6, #4
	strb r0, [r7, #0x1f]
	mov r2, sl
	strh r2, [r7, #0x10]
	strh r2, [r7, #0x12]
	mov r0, r8
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08126C2C: .4byte gUnk_0203AD3C
_08126C30: .4byte 0x06013800
_08126C34: .4byte gUnk_08350AAC
_08126C38: .4byte gKirbys
_08126C3C: .4byte 0x00000103
_08126C40: .4byte 0x06013880
_08126C44: .4byte gUnk_08350B30

	thumb_func_start sub_08126C48
sub_08126C48: @ 0x08126C48
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x50
	ldr r0, _08126CE0 @ =gLanguage
	ldrh r2, [r0]
	ldr r0, _08126CE4 @ =0x06012000
	mov sb, r0
	str r0, [sp]
	mov r0, sp
	movs r3, #0
	movs r5, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	mov r8, r1
	mov r4, r8
	strh r4, [r0, #0x14]
	mov r1, sp
	ldr r0, _08126CE8 @ =gUnk_08363748
	lsls r4, r2, #3
	subs r4, r4, r2
	lsls r4, r4, #3
	adds r4, r4, r0
	ldrh r0, [r4, #0x34]
	strh r0, [r1, #0xc]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r5, [r0, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	ldrh r1, [r4]
	ldrb r2, [r4, #2]
	movs r3, #8
	add r0, sp, #0x28
	mov r4, sb
	str r4, [sp, #0x28]
	mov r4, r8
	strh r4, [r0, #0x14]
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	strh r5, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xc
	str r1, [r0, #8]
	bl sub_08155128
	add sp, #0x50
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08126CE0: .4byte gLanguage
_08126CE4: .4byte 0x06012000
_08126CE8: .4byte gUnk_08363748

	thumb_func_start sub_08126CEC
sub_08126CEC: @ 0x08126CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r2, #0
	ldr r0, _08126D4C @ =gUnk_0203AD44
	mov sb, r0
	ldrb r0, [r0]
	cmp r2, r0
	bhs _08126DCA
	movs r1, #0xda
	lsls r1, r1, #3
	adds r1, r1, r6
	mov sl, r1
	movs r7, #0x34
	mov r8, r7
	movs r0, #0xa4
	lsls r0, r0, #1
	mov ip, r0
_08126D18:
	ldr r1, _08126D50 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r1
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r1, _08126D54 @ =gUnk_08D6CD0C
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r0, [r0]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08126D5C
	movs r3, #0
	lsls r4, r2, #2
	adds r7, r2, #1
	str r7, [sp]
	b _08126D7A
	.align 2, 0
_08126D4C: .4byte gUnk_0203AD44
_08126D50: .4byte gCurLevelInfo
_08126D54: .4byte gUnk_08D6CD0C
_08126D58:
	adds r3, r0, #0
	b _08126D7A
_08126D5C:
	movs r1, #0
	lsls r4, r2, #2
	adds r0, r2, #1
	str r0, [sp]
	movs r5, #0x83
	lsls r5, r5, #1
	ldr r0, _08126DB0 @ =gUnk_08361220
_08126D6A:
	ldrh r7, [r0]
	cmp r3, r7
	beq _08126D58
	adds r0, #8
	adds r1, #1
	cmp r1, r5
	bls _08126D6A
	movs r3, #0
_08126D7A:
	mov r1, sl
	adds r0, r1, r4
	str r3, [r0]
	cmp r3, #0
	beq _08126DB4
	mov r7, r8
	muls r7, r2, r7
	adds r2, r7, #0
	adds r0, r6, r2
	ldrb r1, [r3, #2]
	add r0, ip
	strb r1, [r0]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, r0
	adds r1, r1, r2
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	str r0, [r1]
	movs r7, #0xa8
	lsls r7, r7, #1
	adds r1, r6, r7
	adds r1, r1, r2
	ldrb r0, [r3, #5]
	lsls r0, r0, #3
	str r0, [r1]
	b _08126DC0
	.align 2, 0
_08126DB0: .4byte gUnk_08361220
_08126DB4:
	mov r0, r8
	muls r0, r2, r0
	adds r0, r6, r0
	add r0, ip
	movs r1, #0xff
	strb r1, [r0]
_08126DC0:
	ldr r2, [sp]
	mov r0, sb
	ldrb r0, [r0]
	cmp r2, r0
	blo _08126D18
_08126DCA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08126DDC
sub_08126DDC: @ 0x08126DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r6, r7, r0
	movs r1, #0
	mov r8, r1
	ldr r0, _08126E40 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08126EE0
	movs r2, #1
	mov sl, r2
	mov sb, r1
_08126E00:
	movs r0, #0x34
	mov r1, r8
	muls r1, r0, r1
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r3, r7, r0
	adds r2, #0xd0
	adds r0, r1, r2
	adds r5, r7, r0
	adds r1, r3, #0
	adds r1, #0x28
	ldrb r0, [r6, #6]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08126ECE
	mov r1, r8
	lsls r0, r1, #2
	movs r2, #0xda
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08126E48
	cmp r0, #0
	blt _08126E48
	cmp r0, #2
	bgt _08126E48
	ldr r1, _08126E44 @ =gUnk_08363A98
	b _08126E4A
	.align 2, 0
_08126E40: .4byte gUnk_0203AD44
_08126E44: .4byte gUnk_08363A98
_08126E48:
	ldr r1, _08126EF0 @ =gUnk_08363A90
_08126E4A:
	mov r2, sb
	adds r0, r2, r1
	ldrb r0, [r0]
	add r1, sl
	ldrb r4, [r1]
	ldr r1, [r3, #0x2c]
	adds r1, r1, r0
	ldr r0, [r6, #8]
	subs r1, r1, r0
	ldrh r0, [r6, #4]
	adds r2, r1, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	adds r2, #0x78
	strh r2, [r3, #0x10]
	ldr r1, [r3, #0x30]
	adds r1, r1, r4
	ldr r0, [r6, #0xc]
	subs r1, r1, r0
	ldrh r0, [r6, #4]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r3, #0x12]
	strh r2, [r5, #0x10]
	ldrh r0, [r3, #0x12]
	strh r0, [r5, #0x12]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	movs r1, #0x12
	ldrsh r2, [r5, r1]
	adds r0, #0x1d
	movs r1, #0x90
	lsls r1, r1, #1
	movs r4, #0
	cmp r0, r1
	bhi _08126E9E
	adds r0, r2, #0
	adds r0, #0xf
	cmp r0, #0xbe
	bhi _08126E9E
	movs r4, #1
_08126E9E:
	cmp r4, #0
	beq _08126ECE
	adds r0, r3, #0
	bl sub_0815604C
	ldr r1, _08126EF4 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	ldr r1, _08126EF8 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08126EFC @ =gUnk_08350B30
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08126ECE
	adds r0, r5, #0
	bl sub_0815604C
_08126ECE:
	movs r0, #2
	add sl, r0
	add sb, r0
	movs r1, #1
	add r8, r1
	ldr r0, _08126F00 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r8, r0
	blo _08126E00
_08126EE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08126EF0: .4byte gUnk_08363A90
_08126EF4: .4byte gKirbys
_08126EF8: .4byte 0x00000103
_08126EFC: .4byte gUnk_08350B30
_08126F00: .4byte gUnk_0203AD44

	thumb_func_start sub_08126F04
sub_08126F04: @ 0x08126F04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	movs r4, #0xb0
	lsls r4, r4, #2
	ldr r0, [sp, #4]
	adds r1, r0, r4
	ldr r2, _08126FF0 @ =0x05000068
	mov r0, sp
	bl CpuSet
	movs r6, #0
	ldr r1, _08126FF4 @ =gUnk_08361A6E
	ldr r3, [sp, #4]
	ldr r5, _08126FF8 @ =0x000006E6
	adds r2, r3, r5
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08126FE0
	mov r8, r2
	mov sb, r6
	ldr r7, _08126FFC @ =gLanguage
	mov sl, r7
_08126F42:
	ldr r1, _08127000 @ =gUnk_08361A58
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r6
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08127004 @ =gUnk_08361A7C
	adds r4, r4, r0
	movs r0, #0x34
	muls r0, r6, r0
	ldr r5, [sp, #4]
	adds r3, r0, r5
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r3, r3, r7
	ldr r1, _08127008 @ =0x06012000
	str r1, [r3]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r3, #0x14]
	ldrb r1, [r4, #3]
	lsls r1, r1, #2
	mov r5, sl
	ldrh r2, [r5]
	movs r5, #0x2c
	muls r2, r5, r2
	adds r1, r1, r2
	ldr r7, _0812700C @ =gUnk_08363898
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r3, #0xc]
	ldrb r1, [r4, #3]
	lsls r1, r1, #2
	mov r7, sl
	ldrh r2, [r7]
	muls r2, r5, r2
	adds r1, r1, r2
	ldr r2, _0812700C @ =gUnk_08363898
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r3, #0x1a]
	mov r5, sb
	strh r5, [r3, #0x16]
	movs r1, #0xff
	strb r1, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r1, #8
	strb r1, [r3, #0x1f]
	strh r5, [r3, #0x10]
	strh r5, [r3, #0x12]
	movs r1, #0xc1
	lsls r1, r1, #0xc
	str r1, [r3, #8]
	ldr r1, [r4, #4]
	str r1, [r3, #0x2c]
	ldr r1, [r4, #8]
	str r1, [r3, #0x30]
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r0, r7
	ldr r1, [sp, #4]
	adds r0, r1, r0
	bl sub_08155128
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08126FF4 @ =gUnk_08361A6E
	mov r2, r8
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _08126F42
_08126FE0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08126FF0: .4byte 0x05000068
_08126FF4: .4byte gUnk_08361A6E
_08126FF8: .4byte 0x000006E6
_08126FFC: .4byte gLanguage
_08127000: .4byte gUnk_08361A58
_08127004: .4byte gUnk_08361A7C
_08127008: .4byte 0x06012000
_0812700C: .4byte gUnk_08363898

	thumb_func_start sub_08127010
sub_08127010: @ 0x08127010
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, _081270B0 @ =0x000006E6
	adds r0, r6, r1
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _081270A6
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r5, r6, r0
	movs r7, #0
	ldr r1, _081270B4 @ =gUnk_08361A6E
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r7, r0
	bhs _081270A6
	mov r8, r1
_08127042:
	movs r0, #0x34
	muls r0, r7, r0
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r6, r0
	ldr r1, [r2, #0x2c]
	ldr r0, [r5, #8]
	subs r1, r1, r0
	ldrh r0, [r5, #4]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r2, #0x10]
	ldr r1, [r2, #0x30]
	ldr r0, [r5, #0xc]
	subs r1, r1, r0
	ldrh r0, [r5, #4]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r2, #0x12]
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	movs r1, #0x12
	ldrsh r3, [r2, r1]
	adds r0, #0x1d
	movs r1, #0x90
	lsls r1, r1, #1
	movs r4, #0
	cmp r0, r1
	bhi _0812708C
	adds r0, r3, #0
	adds r0, #0xf
	cmp r0, #0xbe
	bhi _0812708C
	movs r4, #1
_0812708C:
	cmp r4, #0
	beq _08127096
	adds r0, r2, #0
	bl sub_081564D8
_08127096:
	adds r7, #1
	ldr r1, _081270B0 @ =0x000006E6
	adds r0, r6, r1
	ldrb r0, [r0]
	add r0, r8
	ldrb r0, [r0]
	cmp r7, r0
	blo _08127042
_081270A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081270B0: .4byte 0x000006E6
_081270B4: .4byte gUnk_08361A6E

	thumb_func_start sub_081270B8
sub_081270B8: @ 0x081270B8
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	cmp r0, #0
	bgt _081270C2
	b _081271EC
_081270C2:
	cmp r0, #9
	ble _081270C8
	b _081271EC
_081270C8:
	ldr r1, _081271F4 @ =gUnk_08D61248
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _081271F8 @ =0x0600A800
	bl LZ77UnCompVram
	ldr r0, _081271FC @ =gUnk_08361E14
	ldr r1, _08127200 @ =0x0600B800
	bl LZ77UnCompVram
	cmp r4, #2
	beq _08127120
	ldr r5, _08127204 @ =gUnk_08D61220
	ldrh r3, [r5, #0xa]
	adds r6, r5, #0
	ldrh r0, [r6, #0xe]
	cmp r3, r0
	bhi _08127120
	adds r4, r6, #0
_081270F2:
	ldrh r2, [r4, #8]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r6, _08127200 @ =0x0600B800
	adds r0, r0, r6
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r7, [r4, #0xc]
	cmp r2, r7
	bhi _08127118
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_0812710C:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r4, #0xc]
	cmp r2, r7
	bls _0812710C
_08127118:
	adds r3, r0, #0
	ldrh r0, [r5, #0xe]
	cmp r3, r0
	bls _081270F2
_08127120:
	ldr r0, _08127208 @ =gUnk_0203AD50
	ldr r1, _0812720C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldr r7, _08127210 @ =gUnk_0203ACC0
	ldrb r1, [r1]
	cmp r0, r1
	beq _0812716A
	ldr r5, _08127204 @ =gUnk_08D61220
	ldrh r3, [r5, #0x12]
	adds r6, r5, #0
	ldrh r0, [r6, #0x16]
	cmp r3, r0
	bhi _0812716A
	adds r4, r6, #0
_0812713C:
	ldrh r2, [r4, #0x10]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r6, _08127200 @ =0x0600B800
	adds r0, r0, r6
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #0x14]
	cmp r2, r3
	bhi _08127162
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_08127156:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r6, [r4, #0x14]
	cmp r2, r6
	bls _08127156
_08127162:
	adds r3, r0, #0
	ldrh r0, [r5, #0x16]
	cmp r3, r0
	bls _0812713C
_0812716A:
	ldrh r1, [r7, #0xe]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _081271EC
	ldr r5, _08127204 @ =gUnk_08D61220
	ldrh r3, [r5, #0x1a]
	adds r6, r5, #0
	ldrh r7, [r6, #0x1e]
	cmp r3, r7
	bhi _081271B2
	adds r4, r6, #0
_08127184:
	ldrh r2, [r4, #0x18]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r7, _08127200 @ =0x0600B800
	adds r0, r0, r7
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #0x1c]
	cmp r2, r3
	bhi _081271AA
	movs r7, #0xe1
	lsls r7, r7, #7
	adds r3, r7, #0
_0812719E:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r4, #0x1c]
	cmp r2, r7
	bls _0812719E
_081271AA:
	adds r3, r0, #0
	ldrh r0, [r5, #0x1e]
	cmp r3, r0
	bls _08127184
_081271B2:
	adds r5, r6, #0
	ldrh r3, [r5, #0x22]
	ldrh r6, [r5, #0x26]
	cmp r3, r6
	bhi _081271EC
	adds r4, r5, #0
_081271BE:
	ldrh r2, [r4, #0x20]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r7, _08127200 @ =0x0600B800
	adds r0, r0, r7
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #0x24]
	cmp r2, r3
	bhi _081271E4
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_081271D8:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r4, #0x24]
	cmp r2, r7
	bls _081271D8
_081271E4:
	adds r3, r0, #0
	ldrh r0, [r5, #0x26]
	cmp r3, r0
	bls _081271BE
_081271EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081271F4: .4byte gUnk_08D61248
_081271F8: .4byte 0x0600A800
_081271FC: .4byte gUnk_08361E14
_08127200: .4byte 0x0600B800
_08127204: .4byte gUnk_08D61220
_08127208: .4byte gUnk_0203AD50
_0812720C: .4byte gUnk_0203AD3C
_08127210: .4byte gUnk_0203ACC0

	thumb_func_start sub_08127214
sub_08127214: @ 0x08127214
	push {r4, r5, r6, lr}
	ldr r2, _0812724C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08127250 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _08127254 @ =0x00001708
	strh r0, [r1, #2]
	ldr r0, _08127258 @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r3, _0812725C @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08127264
	ldr r0, _08127260 @ =gUnk_08361DF4
	movs r1, #0x70
	movs r2, #0x10
	bl sub_08158334
	b _0812727A
	.align 2, 0
_0812724C: .4byte gDispCnt
_08127250: .4byte gBgCntRegs
_08127254: .4byte 0x00001708
_08127258: .4byte gBgScrollRegs
_0812725C: .4byte gUnk_03002440
_08127260: .4byte gUnk_08361DF4
_08127264:
	ldr r1, _081272D8 @ =0x040000D4
	ldr r0, _081272DC @ =gUnk_08361DF4
	str r0, [r1]
	ldr r0, _081272E0 @ =gUnk_03003880
	str r0, [r1, #4]
	ldr r0, _081272E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812727A:
	ldr r0, _081272E8 @ =gUnk_08362104
	ldr r1, _081272EC @ =0x06009000
	bl LZ77UnCompVram
	ldr r0, _081272F0 @ =gUnk_08361FA8
	ldr r1, _081272F4 @ =0x0600B800
	bl LZ77UnCompVram
	ldr r0, _081272F8 @ =gUnk_0203AD50
	ldr r1, _081272FC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _081272D0
	ldr r5, _08127300 @ =gUnk_08D61220
	ldrh r3, [r5, #2]
	ldrh r6, [r5, #6]
	cmp r3, r6
	bhi _081272D0
	adds r4, r5, #0
_081272A2:
	ldrh r2, [r4]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r6, _081272F4 @ =0x0600B800
	adds r0, r0, r6
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #4]
	cmp r2, r3
	bhi _081272C8
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_081272BC:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r6, [r4, #4]
	cmp r2, r6
	bls _081272BC
_081272C8:
	adds r3, r0, #0
	ldrh r0, [r5, #6]
	cmp r3, r0
	bls _081272A2
_081272D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081272D8: .4byte 0x040000D4
_081272DC: .4byte gUnk_08361DF4
_081272E0: .4byte gUnk_03003880
_081272E4: .4byte 0x80000010
_081272E8: .4byte gUnk_08362104
_081272EC: .4byte 0x06009000
_081272F0: .4byte gUnk_08361FA8
_081272F4: .4byte 0x0600B800
_081272F8: .4byte gUnk_0203AD50
_081272FC: .4byte gUnk_0203AD3C
_08127300: .4byte gUnk_08D61220

	thumb_func_start sub_08127304
sub_08127304: @ 0x08127304
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r7, #0
	cmp r7, r5
	bhs _081273B8
	ldr r0, _08127344 @ =0x0600C000
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0xff
	lsls r0, r0, #8
	mov ip, r0
	lsls r6, r2, #7
_0812732C:
	mov r0, r8
	adds r2, r6, r0
	ldrh r3, [r2]
	ldr r1, [r2]
	cmp r5, #3
	beq _081273B0
	cmp r5, #3
	bgt _08127348
	cmp r5, #2
	beq _0812734E
	b _081273B0
	.align 2, 0
_08127344: .4byte 0x0600C000
_08127348:
	cmp r5, #4
	beq _0812735C
	b _081273B0
_0812734E:
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r1, r0
	adds r4, #2
	strh r1, [r2]
	b _081273B0
_0812735C:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08127386
	ldrb r0, [r4]
	lsls r0, r0, #8
	lsrs r1, r1, #0x18
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r4, #2]
	lsls r1, r1, #8
	ldrb r0, [r4, #1]
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r2]
	lsls r1, r1, #8
	ldrb r0, [r4, #3]
	orrs r0, r1
	b _081273AC
_08127386:
	ldrb r1, [r4]
	lsls r1, r1, #8
	mov r0, ip
	ands r3, r0
	lsrs r0, r3, #8
	orrs r1, r0
	strh r1, [r2]
	adds r2, #2
	ldrb r1, [r4, #2]
	lsls r1, r1, #8
	ldrb r0, [r4, #1]
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r3, [r2]
	mov r0, ip
	ands r3, r0
	ldrb r0, [r4, #3]
	orrs r0, r3
_081273AC:
	strh r0, [r2]
	adds r4, #4
_081273B0:
	adds r6, #0x80
	adds r7, #1
	cmp r7, r5
	blo _0812732C
_081273B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081273C4
sub_081273C4: @ 0x081273C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08127454 @ =0x000006E6
	adds r0, r4, r1
	ldrb r0, [r0]
	mov r8, r0
	ldr r1, _08127458 @ =gUnk_083611D0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	mov r0, r8
	bl sub_08019EEC
	str r0, [sp]
	movs r2, #0
	mov sb, r2
	ldr r0, _0812745C @ =gUnk_083611E6
	add r0, r8
	ldrb r0, [r0]
	cmp sb, r0
	blo _081273FA
	b _08127512
_081273FA:
	ldr r0, _08127460 @ =gUnk_08361220
	adds r1, r4, #0
	adds r1, #0x48
	add r1, r8
	mov sl, r1
	lsls r1, r5, #3
	adds r5, r1, r0
_08127408:
	ldrh r6, [r5]
	movs r7, #0
	adds r0, r6, #0
	bl sub_08002A5C
	cmp r0, #0
	beq _08127430
	movs r7, #1
	adds r0, r6, #0
	bl sub_08002AAC
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08002AD0
	lsls r4, r4, #0x18
	lsls r0, r0, #0x18
	cmp r4, r0
	bne _08127430
	movs r7, #2
_08127430:
	ldr r2, _08127464 @ =gUnk_08D61AE4
	mov r3, r8
	lsls r1, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r6
	bne _0812746C
	mov r3, sl
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	beq _0812746C
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #5]
	ldr r0, _08127468 @ =gUnk_08363708
	b _081274E2
	.align 2, 0
_08127454: .4byte 0x000006E6
_08127458: .4byte gUnk_083611D0
_0812745C: .4byte gUnk_083611E6
_08127460: .4byte gUnk_08361220
_08127464: .4byte gUnk_08D61AE4
_08127468: .4byte gUnk_08363708
_0812746C:
	mov r3, r8
	adds r0, r1, r3
	lsls r1, r0, #1
	adds r0, r2, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r6
	bne _081274A0
	mov r3, sl
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _081274A0
	adds r0, r2, #4
	adds r0, r1, r0
	ldrb r0, [r0]
	bl sub_08019DA8
	cmp r0, #0
	bne _081274A0
	lsls r0, r7, #4
	ldr r1, _0812749C @ =gUnk_08363718
	b _081274DC
	.align 2, 0
_0812749C: .4byte gUnk_08363718
_081274A0:
	ldr r0, [sp]
	cmp r0, #0
	bne _081274AA
	cmp r7, #0
	beq _08127500
_081274AA:
	ldrb r0, [r5, #3]
	cmp r0, #1
	beq _081274D8
	cmp r0, #1
	bgt _081274BA
	cmp r0, #0
	beq _081274C0
	b _08127500
_081274BA:
	cmp r0, #2
	beq _081274F0
	b _08127500
_081274C0:
	lsls r0, r7, #2
	ldr r1, _081274D4 @ =gUnk_0836369C
	adds r0, r0, r1
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #5]
	movs r3, #2
	bl sub_08127304
	b _08127500
	.align 2, 0
_081274D4: .4byte gUnk_0836369C
_081274D8:
	lsls r0, r7, #4
	ldr r1, _081274EC @ =gUnk_083636A8
_081274DC:
	adds r0, r0, r1
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #5]
_081274E2:
	movs r3, #4
	bl sub_08127304
	b _08127500
	.align 2, 0
_081274EC: .4byte gUnk_083636A8
_081274F0:
	lsls r0, r7, #4
	ldr r1, _08127524 @ =gUnk_083636D8
	adds r0, r0, r1
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #5]
	movs r3, #4
	bl sub_08127304
_08127500:
	adds r5, #8
	movs r1, #1
	add sb, r1
	ldr r0, _08127528 @ =gUnk_083611E6
	add r0, r8
	ldrb r0, [r0]
	cmp sb, r0
	bhs _08127512
	b _08127408
_08127512:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08127524: .4byte gUnk_083636D8
_08127528: .4byte gUnk_083611E6

	thumb_func_start sub_0812752C
sub_0812752C: @ 0x0812752C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _081275A0 @ =0x000006E6
	adds r0, r4, r1
	ldrb r2, [r0]
	movs r3, #0
	movs r0, #0
	strh r0, [r4, #0xa]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	adds r1, r2, #0
	adds r1, #0xb7
	strh r1, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x22]
	strh r0, [r4, #0x24]
	movs r0, #0x20
	strh r0, [r4, #0x26]
	movs r0, #0x16
	strh r0, [r4, #0x28]
	ldr r0, _081275A4 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r3, [r0]
	ldr r1, _081275A8 @ =0x06004000
	str r1, [r4, #4]
	movs r0, #0x18
	strh r0, [r4, #0x2e]
	ldr r0, _081275AC @ =0x0600B000
	str r0, [r4, #0xc]
	ldr r0, _081275B0 @ =gUnk_08D611C8
	lsls r5, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	bl LZ77UnCompVram
	ldr r2, _081275B4 @ =gUnk_03002440
	ldr r3, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _081275BC
	ldr r0, _081275B8 @ =gUnk_08D611F4
	adds r0, r5, r0
	ldr r0, [r0]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #0x80
	movs r2, #0x80
	bl sub_08158334
	b _081275DC
	.align 2, 0
_081275A0: .4byte 0x000006E6
_081275A4: .4byte 0x00007FFF
_081275A8: .4byte 0x06004000
_081275AC: .4byte 0x0600B000
_081275B0: .4byte gUnk_08D611C8
_081275B4: .4byte gUnk_03002440
_081275B8: .4byte gUnk_08D611F4
_081275BC:
	ldr r1, _081275E8 @ =0x040000D4
	ldr r0, _081275EC @ =gUnk_08D611F4
	adds r0, r5, r0
	ldr r0, [r0]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	str r0, [r1]
	ldr r0, _081275F0 @ =gUnk_030038A0
	str r0, [r1, #4]
	ldr r0, _081275F4 @ =0x80000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r2]
_081275DC:
	adds r0, r4, #0
	bl sub_08153060
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081275E8: .4byte 0x040000D4
_081275EC: .4byte gUnk_08D611F4
_081275F0: .4byte gUnk_030038A0
_081275F4: .4byte 0x80000080

	thumb_func_start sub_081275F8
sub_081275F8: @ 0x081275F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08127620 @ =0x000006E6
	adds r6, r5, r0
	ldrb r4, [r6]
	adds r0, r5, #0
	adds r0, #0x48
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08127614
	b _08127744
_08127614:
	cmp r0, #1
	ble _08127624
	cmp r0, #2
	beq _08127660
	b _08127744
	.align 2, 0
_08127620: .4byte 0x000006E6
_08127624:
	movs r1, #0xdd
	lsls r1, r1, #3
	adds r3, r5, r1
	ldr r2, _08127654 @ =gUnk_083611F1
	lsls r0, r4, #2
	adds r1, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	str r0, [r3]
	ldr r3, _08127658 @ =0x000006EC
	adds r1, r5, r3
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	str r0, [r1]
	ldr r4, _0812765C @ =0x000006E4
	adds r1, r5, r4
	movs r0, #0x61
	strh r0, [r1]
	b _08127744
	.align 2, 0
_08127654: .4byte gUnk_083611F1
_08127658: .4byte 0x000006EC
_0812765C: .4byte 0x000006E4
_08127660:
	movs r1, #1
	rsbs r1, r1, #0
	ldr r0, _081276D4 @ =gUnk_0203AD50
	ldrb r2, [r0]
	movs r6, #0x34
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r5, r0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r3, r4, #0
	cmp r0, r3
	beq _08127694
	ldr r0, _081276D8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r5, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r3
	bne _08127696
_08127694:
	adds r1, r2, #0
_08127696:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0812770C
	lsls r1, r1, #2
	movs r2, #0xda
	lsls r2, r2, #3
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _081276E0
	cmp r0, #0
	blt _081276E0
	cmp r0, #2
	bgt _081276E0
	movs r3, #0xdd
	lsls r3, r3, #3
	adds r1, r5, r3
	ldrb r0, [r2, #4]
	lsls r0, r0, #3
	adds r0, #0x10
	str r0, [r1]
	ldr r4, _081276DC @ =0x000006EC
	adds r1, r5, r4
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r0, #0x10
	b _08127736
	.align 2, 0
_081276D4: .4byte gUnk_0203AD50
_081276D8: .4byte gUnk_0203AD3C
_081276DC: .4byte 0x000006EC
_081276E0:
	movs r0, #0xdd
	lsls r0, r0, #3
	adds r2, r5, r0
	movs r3, #0xda
	lsls r3, r3, #3
	adds r0, r5, r3
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #3
	adds r0, #8
	str r0, [r2]
	ldr r4, _08127708 @ =0x000006EC
	adds r2, r5, r4
	ldrb r0, [r1, #5]
	lsls r0, r0, #3
	adds r0, #8
	str r0, [r2]
	b _08127738
	.align 2, 0
_08127708: .4byte 0x000006EC
_0812770C:
	movs r0, #0xdd
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r2, _0812774C @ =gUnk_083611F1
	ldr r1, _08127750 @ =0x000006E6
	adds r3, r5, r1
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	str r0, [r4]
	ldr r4, _08127754 @ =0x000006EC
	adds r1, r5, r4
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
_08127736:
	str r0, [r1]
_08127738:
	ldr r1, _08127758 @ =0x000006F2
	adds r0, r5, r1
	ldrh r1, [r0]
	ldr r2, _0812775C @ =0x000006E4
	adds r0, r5, r2
	strh r1, [r0]
_08127744:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812774C: .4byte gUnk_083611F1
_08127750: .4byte 0x000006E6
_08127754: .4byte 0x000006EC
_08127758: .4byte 0x000006F2
_0812775C: .4byte 0x000006E4

	thumb_func_start sub_08127760
sub_08127760: @ 0x08127760
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08127790 @ =0x000006E6
	adds r0, r4, r1
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _081277A0
	ldr r1, _08127794 @ =gUnk_0835EECC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08127798 @ =gUnk_0835EEF8
	adds r0, r0, r1
	ldr r1, _0812779C @ =0x0600C000
	bl RLUnCompVram
	b _081277AE
	.align 2, 0
_08127790: .4byte 0x000006E6
_08127794: .4byte gUnk_0835EECC
_08127798: .4byte gUnk_0835EEF8
_0812779C: .4byte 0x0600C000
_081277A0:
	ldr r0, _081277D8 @ =gUnk_0835EECC
	ldr r0, [r0]
	ldr r1, _081277DC @ =gUnk_0835EEF8
	adds r0, r0, r1
	ldr r1, _081277E0 @ =0x0600C000
	bl RLUnCompVram
_081277AE:
	ldr r5, _081277E4 @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _081277F0
	ldr r1, _081277E8 @ =0x000006E6
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _081277EC @ =gUnk_08D61280
	adds r0, r0, r1
	movs r1, #0x40
	movs r2, #5
	bl sub_08158334
	b _08127814
	.align 2, 0
_081277D8: .4byte gUnk_0835EECC
_081277DC: .4byte gUnk_0835EEF8
_081277E0: .4byte 0x0600C000
_081277E4: .4byte gUnk_03002440
_081277E8: .4byte 0x000006E6
_081277EC: .4byte gUnk_08D61280
_081277F0:
	ldr r2, _08127820 @ =0x040000D4
	ldr r1, _08127824 @ =0x000006E6
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08127828 @ =gUnk_08D61280
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0812782C @ =gUnk_03003820
	str r0, [r2, #4]
	ldr r0, _08127830 @ =0x80000005
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_08127814:
	adds r0, r4, #0
	bl sub_081273C4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08127820: .4byte 0x040000D4
_08127824: .4byte 0x000006E6
_08127828: .4byte gUnk_08D61280
_0812782C: .4byte gUnk_03003820
_08127830: .4byte 0x80000005

	thumb_func_start sub_08127834
sub_08127834: @ 0x08127834
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #2]
	ldrh r0, [r3, #0xc]
	muls r1, r0, r1
	ldr r0, [r3, #8]
	adds r4, r0, r1
	ldrh r0, [r3, #0xe]
	adds r0, #1
	movs r1, #0
	strh r0, [r3, #0xe]
	movs r2, #0xe
	ldrsh r0, [r3, r2]
	ldrh r4, [r4]
	cmp r0, r4
	ble _081278C6
	strh r1, [r3, #0xe]
	ldrh r0, [r3, #0xc]
	adds r0, #1
	strh r0, [r3, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r3, #4]
	cmp r0, r2
	blo _08127868
	strh r1, [r3, #0xc]
_08127868:
	ldrh r2, [r3, #2]
	ldrh r0, [r3, #0xc]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r3, #8]
	adds r4, r0, r1
	adds r4, #2
	ldr r6, _0812789C @ =gUnk_03002440
	ldr r5, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r5
	cmp r0, #0
	beq _081278A0
	ldrh r1, [r3]
	lsrs r1, r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	subs r2, #2
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08158334
	b _081278C6
	.align 2, 0
_0812789C: .4byte gUnk_03002440
_081278A0:
	ldr r2, _081278CC @ =0x040000D4
	str r4, [r2]
	ldrh r0, [r3]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ldr r1, _081278D0 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r3, #2]
	subs r0, #2
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r5, r0
	str r5, [r6]
_081278C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081278CC: .4byte 0x040000D4
_081278D0: .4byte gBgPalette
