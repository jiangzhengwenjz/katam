	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0814EBE4
sub_0814EBE4: @ 0x0814EBE4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0814EC5C @ =gDispCnt
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0814EC60 @ =gBgCntRegs
	ldr r0, _0814EC64 @ =0x00001F02
	strh r0, [r1]
	subs r0, #0xfb
	strh r0, [r1, #2]
	subs r0, #0xff
	strh r0, [r1, #4]
	subs r0, #0xff
	strh r0, [r1, #6]
	movs r2, #0
	ldr r5, _0814EC68 @ =gBldRegs
	ldr r0, _0814EC6C @ =sub_0814EF9C
	mov ip, r0
	ldr r7, _0814EC70 @ =nullsub_139
	ldr r4, _0814EC74 @ =gBgScrollRegs
	adds r6, r4, #2
	movs r3, #0
_0814EC14:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r6
	strh r3, [r0]
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0814EC14
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r4, #0x10
	strh r4, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r7, [sp]
	mov r0, ip
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _0814EC78
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814EC80
	.align 2, 0
_0814EC5C: .4byte gDispCnt
_0814EC60: .4byte gBgCntRegs
_0814EC64: .4byte 0x00001F02
_0814EC68: .4byte gBldRegs
_0814EC6C: .4byte sub_0814EF9C
_0814EC70: .4byte nullsub_139
_0814EC74: .4byte gBgScrollRegs
_0814EC78:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814EC80:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814EC9C @ =0x01000006
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814ECA0 @ =sub_0814ECA4
	str r0, [r4, #4]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814EC9C: .4byte 0x01000006
_0814ECA0: .4byte sub_0814ECA4

	thumb_func_start sub_0814ECA4
sub_0814ECA4: @ 0x0814ECA4
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	bl sub_08141E30
	ldr r0, _0814ECD0 @ =gUnk_0203AD3C
	ldr r1, _0814ECD4 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814ED68
	ldr r2, _0814ECD8 @ =gUnk_0203ACB0
	ldr r0, _0814ECDC @ =gUnk_0203AD48
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bhi _0814ECE0
	ldrh r0, [r3]
	lsls r0, r0, #1
	b _0814ECE2
	.align 2, 0
_0814ECD0: .4byte gUnk_0203AD3C
_0814ECD4: .4byte gUnk_0203AD24
_0814ECD8: .4byte gUnk_0203ACB0
_0814ECDC: .4byte gUnk_0203AD48
_0814ECE0:
	movs r0, #0
_0814ECE2:
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x64
	bne _0814ED68
	ldr r2, _0814ED30 @ =gUnk_0203AD2C
	ldrh r1, [r2]
	ldr r0, _0814ED34 @ =0x0000270F
	cmp r1, r0
	bhi _0814ED68
	ldr r1, _0814ED38 @ =0x00002710
	adds r0, r1, #0
	strh r0, [r2]
	ldr r0, _0814ED3C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0814ED60
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0814ED50
	ldr r0, _0814ED40 @ =gUnk_0203AD3C
	ldr r1, _0814ED44 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814ED48
	ldrh r0, [r3]
	movs r1, #0
	cmp r0, #2
	bhi _0814ED26
	adds r1, r0, #0
_0814ED26:
	movs r0, #1
	bl sub_0800ACD4
	b _0814ED60
	.align 2, 0
_0814ED30: .4byte gUnk_0203AD2C
_0814ED34: .4byte 0x0000270F
_0814ED38: .4byte 0x00002710
_0814ED3C: .4byte gUnk_0203AD10
_0814ED40: .4byte gUnk_0203AD3C
_0814ED44: .4byte gUnk_0203AD24
_0814ED48:
	movs r0, #8
	bl sub_08031CE4
	b _0814ED60
_0814ED50:
	ldrh r0, [r3]
	movs r1, #0
	cmp r0, #2
	bhi _0814ED5A
	adds r1, r0, #0
_0814ED5A:
	movs r0, #1
	bl sub_0800ACD4
_0814ED60:
	ldr r0, _0814ED64 @ =sub_0814ED78
	b _0814ED6A
	.align 2, 0
_0814ED64: .4byte sub_0814ED78
_0814ED68:
	ldr r0, _0814ED74 @ =sub_0814F20C
_0814ED6A:
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814ED74: .4byte sub_0814F20C

	thumb_func_start sub_0814ED78
sub_0814ED78: @ 0x0814ED78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r4, #0
_0814ED82:
	adds r0, r4, #0
	bl sub_0814EFD8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0814ED82
	movs r4, #0
_0814ED94:
	adds r0, r4, #0
	bl sub_0814F000
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814ED94
	ldr r4, _0814EEBC @ =gUnk_08387FF0
	ldr r5, _0814EEC0 @ =gLanguage
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0814F034
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r1, r4, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0814F034
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814EEC8 @ =gBgCntRegs
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
	bhs _0814EE2A
_0814EE0E:
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
	blo _0814EE0E
_0814EE2A:
	ldr r1, _0814EEBC @ =gUnk_08387FF0
	ldr r0, _0814EEC0 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814EEC8 @ =gBgCntRegs
	ldrh r2, [r1, #6]
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
	ldr r2, _0814EECC @ =0x06002000
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814EE8C
_0814EE70:
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
	blo _0814EE70
_0814EE8C:
	ldr r1, _0814EEBC @ =gUnk_08387FF0
	ldr r0, _0814EEC0 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _0814EED0 @ =gMainFlags
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814EED4
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x20
	bl LoadBgPaletteWithTransformation
	b _0814EEF2
	.align 2, 0
_0814EEBC: .4byte gUnk_08387FF0
_0814EEC0: .4byte gLanguage
_0814EEC4: .4byte gUnk_082D7850
_0814EEC8: .4byte gBgCntRegs
_0814EECC: .4byte 0x06002000
_0814EED0: .4byte gMainFlags
_0814EED4:
	ldr r2, _0814EF08 @ =0x040000D4
	ldr r1, _0814EF0C @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814EF10 @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _0814EF14 @ =0x80000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_0814EEF2:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #8]
	ldr r0, _0814EF18 @ =sub_0814F0B8
	str r0, [r1, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814EF08: .4byte 0x040000D4
_0814EF0C: .4byte gUnk_082D7850
_0814EF10: .4byte gBgPalette
_0814EF14: .4byte 0x80000020
_0814EF18: .4byte sub_0814F0B8

	thumb_func_start sub_0814EF1C
sub_0814EF1C: @ 0x0814EF1C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0814EF60
	ldr r5, _0814EF80 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _0814EF84 @ =0x00196225
	muls r0, r4, r0
	ldr r2, _0814EF88 @ =0x3C6EF35F
	adds r0, r0, r2
	movs r3, #7
	adds r1, r0, #0
	ands r1, r3
	subs r1, #3
	muls r0, r4, r0
	adds r0, r0, r2
	str r0, [r5]
	ands r0, r3
	subs r0, #3
	ldr r2, _0814EF8C @ =gBgScrollRegs
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r2, #0xc]
	strh r1, [r2, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xc
	strh r0, [r2, #0xe]
	strh r0, [r2, #0xa]
_0814EF60:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r0, #0x2c
	ble _0814EF78
	ldr r1, _0814EF8C @ =gBgScrollRegs
	ldr r0, _0814EF90 @ =0x0000FFF4
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xa]
	movs r0, #0
	strh r0, [r6, #8]
	ldr r0, _0814EF94 @ =sub_0814F164
	str r0, [r6, #4]
_0814EF78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814EF80: .4byte gRngVal
_0814EF84: .4byte 0x00196225
_0814EF88: .4byte 0x3C6EF35F
_0814EF8C: .4byte gBgScrollRegs
_0814EF90: .4byte 0x0000FFF4
_0814EF94: .4byte sub_0814F164

	thumb_func_start nullsub_139
nullsub_139: @ 0x0814EF98
	bx lr
	.align 2, 0

	thumb_func_start sub_0814EF9C
sub_0814EF9C: @ 0x0814EF9C
	push {lr}
	ldr r0, _0814EFB8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EFBC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0814EFC4
	.align 2, 0
_0814EFB8: .4byte gCurTask
_0814EFBC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0814EFC4:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814EFD8
sub_0814EFD8: @ 0x0814EFD8
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
	ldr r2, _0814EFFC @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814EFFC: .4byte 0x01002000

	thumb_func_start sub_0814F000
sub_0814F000: @ 0x0814F000
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _0814F02C @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814F030 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814F02C: .4byte 0x000001FF
_0814F030: .4byte 0x01000400

	thumb_func_start sub_0814F034
sub_0814F034: @ 0x0814F034
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	ldr r4, _0814F0B0 @ =gUnk_082D7850
	lsrs r1, r1, #0xe
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r5, [r1, #8]
	ldr r4, [r1, #0x18]
	mov r8, r4
	ldrh r6, [r1, #2]
	ldr r1, _0814F0B4 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x12
	movs r4, #3
	ands r1, r4
	lsrs r0, r0, #0x18
	movs r4, #0x1f
	ands r0, r4
	lsls r0, r0, #0xb
	lsrs r2, r2, #0x13
	lsls r2, r2, #6
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	adds r7, r0, r2
	lsls r1, r1, #0xe
	lsrs r3, r3, #0xb
	adds r3, r3, r4
	adds r1, r1, r3
	adds r0, r5, #0
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0814F0A6
_0814F08A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0814F08A
_0814F0A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F0B0: .4byte gUnk_082D7850
_0814F0B4: .4byte gBgCntRegs

	thumb_func_start sub_0814F0B8
sub_0814F0B8: @ 0x0814F0B8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #8]
	adds r4, #1
	movs r7, #0
	strh r4, [r5, #8]
	ldr r6, _0814F0F8 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0x14
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x13
	ble _0814F0F2
	movs r0, #0x22
	bl m4aSongNumStart
	strh r7, [r6, #4]
	strh r7, [r6, #2]
	strh r7, [r6]
	strh r7, [r5, #8]
	ldr r0, _0814F0FC @ =sub_0814F100
	str r0, [r5, #4]
_0814F0F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F0F8: .4byte gBldRegs
_0814F0FC: .4byte sub_0814F100

	thumb_func_start sub_0814F100
sub_0814F100: @ 0x0814F100
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _0814F11A
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, _0814F120 @ =sub_0814F124
	str r0, [r1, #4]
_0814F11A:
	pop {r0}
	bx r0
	.align 2, 0
_0814F120: .4byte sub_0814F124

	thumb_func_start sub_0814F124
sub_0814F124: @ 0x0814F124
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0814F154 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0814F158 @ =gBgScrollRegs
	movs r4, #0
	ldr r0, _0814F15C @ =0x0000FFF4
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xa]
	movs r0, #0xc8
	bl m4aSongNumStart
	strh r4, [r5, #8]
	ldr r0, _0814F160 @ =sub_0814EF1C
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814F154: .4byte gDispCnt
_0814F158: .4byte gBgScrollRegs
_0814F15C: .4byte 0x0000FFF4
_0814F160: .4byte sub_0814EF1C

	thumb_func_start sub_0814F164
sub_0814F164: @ 0x0814F164
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	ble _0814F186
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814F18C @ =sub_0814F190
	str r0, [r4, #4]
_0814F186:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814F18C: .4byte sub_0814F190

	thumb_func_start sub_0814F190
sub_0814F190: @ 0x0814F190
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814F1CC @ =gPressedKeys
	ldrh r0, [r0]
	movs r1, #0xb
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	ldrh r0, [r2, #8]
	adds r0, #1
	movs r3, #0
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _0814F1C6
	cmp r1, #0
	beq _0814F1C6
	ldr r0, _0814F1D0 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r2, #8]
	ldr r0, _0814F1D4 @ =sub_0814F1D8
	str r0, [r2, #4]
_0814F1C6:
	pop {r0}
	bx r0
	.align 2, 0
_0814F1CC: .4byte gPressedKeys
_0814F1D0: .4byte gBldRegs
_0814F1D4: .4byte sub_0814F1D8

	thumb_func_start sub_0814F1D8
sub_0814F1D8: @ 0x0814F1D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #8]
	adds r4, #1
	strh r4, [r6, #8]
	ldr r5, _0814F204 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0x28
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x27
	ble _0814F1FE
	ldr r0, _0814F208 @ =sub_0814F20C
	str r0, [r6, #4]
_0814F1FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814F204: .4byte gBldRegs
_0814F208: .4byte sub_0814F20C

	thumb_func_start sub_0814F20C
sub_0814F20C: @ 0x0814F20C
	push {r4, r5, lr}
	sub sp, #4
	bl m4aMPlayAllStop
	mov r0, sp
	ldr r1, _0814F258 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0814F25C @ =gBgPalette
	ldr r5, _0814F260 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0814F264 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0814F268 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0814F26C @ =gUnk_0203AD10
	movs r0, #0
	str r0, [r1]
	ldr r0, _0814F270 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814F258: .4byte 0x00007FFF
_0814F25C: .4byte gBgPalette
_0814F260: .4byte 0x01000100
_0814F264: .4byte gObjPalette
_0814F268: .4byte gMainFlags
_0814F26C: .4byte gUnk_0203AD10
_0814F270: .4byte gCurTask

	thumb_func_start sub_0814F274
sub_0814F274: @ 0x0814F274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [r4, #8]
	movs r0, #1
	str r0, [sp]
	ldrh r0, [r4, #6]
	ldr r1, _0814F2D0 @ =0x0000FFDD
	ands r1, r0
	strh r1, [r4, #6]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0814F29A
	b _0814F398
_0814F29A:
	ldrb r3, [r6]
	ldrh r0, [r4, #4]
	cmp r0, r3
	blo _0814F2AE
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0814F2AE
	movs r0, #0
	strh r0, [r4, #4]
_0814F2AE:
	ldr r2, [r6, #4]
	ldrh r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r5, [r0]
	cmp r1, r3
	bne _0814F2D8
	ldrh r0, [r4, #6]
	movs r1, #0x20
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0814F2D4
	movs r0, #0
	b _0814F3AC
	.align 2, 0
_0814F2D0: .4byte 0x0000FFDD
_0814F2D4:
	movs r0, #0
	str r0, [sp]
_0814F2D8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r5]
	lsls r0, r0, #8
	strh r0, [r4, #2]
	ldr r1, [r6]
	lsrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r8, r7
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	mov r6, ip
	adds r5, #2
	ldrh r1, [r4, #6]
	movs r2, #1
	mov sl, r2
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0814F350
	ldr r6, _0814F324 @ =gMainFlags
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0814F328
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, ip
	bl LoadObjPaletteWithTransformation
	b _0814F390
	.align 2, 0
_0814F324: .4byte gMainFlags
_0814F328:
	ldr r2, _0814F348 @ =0x040000D4
	str r5, [r2]
	lsls r0, r7, #1
	ldr r1, _0814F34C @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r1, ip
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r6]
	b _0814F390
	.align 2, 0
_0814F348: .4byte 0x040000D4
_0814F34C: .4byte gObjPalette
_0814F350:
	ldr r2, _0814F36C @ =gMainFlags
	mov sb, r2
	ldr r3, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814F370
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, ip
	bl LoadBgPaletteWithTransformation
	b _0814F390
	.align 2, 0
_0814F36C: .4byte gMainFlags
_0814F370:
	ldr r2, _0814F3BC @ =0x040000D4
	str r5, [r2]
	mov r1, r8
	lsls r0, r1, #1
	ldr r1, _0814F3C0 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r6, r0
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	mov r2, sl
	orrs r3, r2
	mov r0, sb
	str r3, [r0]
_0814F390:
	ldrh r1, [r4, #6]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #6]
_0814F398:
	ldrh r1, [r4, #6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0814F3AA
	ldrh r0, [r4, #2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r4, #2]
_0814F3AA:
	ldr r0, [sp]
_0814F3AC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814F3BC: .4byte 0x040000D4
_0814F3C0: .4byte gBgPalette

	thumb_func_start sub_0814F3C4
sub_0814F3C4: @ 0x0814F3C4
	movs r3, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	str r1, [r0, #8]
	bx lr
	.align 2, 0
