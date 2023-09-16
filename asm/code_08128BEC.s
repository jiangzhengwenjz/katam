	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08136D5C
sub_08136D5C: @ 0x08136D5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08136DCC @ =gRngVal
	ldr r0, [r5]
	ldr r1, _08136DD0 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08136DD4 @ =0x3C6EF35F
	adds r0, r0, r4
	lsrs r2, r0, #0x10
	movs r3, #0xf
	ands r2, r3
	muls r1, r0, r1
	adds r1, r1, r4
	str r1, [r5]
	ands r1, r3
	ldr r3, _08136DD8 @ =gUnk_0837F408
	ldr r4, _08136DDC @ =0x0000041A
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	cmp r2, r1
	bhs _08136DEC
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _08136DE0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	subs r4, #0x3b
	adds r1, r6, r4
	movs r0, #5
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r4, _08136DE4 @ =gUnk_0837F228
	ldr r3, _08136DE8 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x16]
	b _08136E24
	.align 2, 0
_08136DCC: .4byte gRngVal
_08136DD0: .4byte 0x00196225
_08136DD4: .4byte 0x3C6EF35F
_08136DD8: .4byte gUnk_0837F408
_08136DDC: .4byte 0x0000041A
_08136DE0: .4byte 0x0000FFFE
_08136DE4: .4byte gUnk_0837F228
_08136DE8: .4byte gLanguage
_08136DEC:
	movs r4, #0x83
	lsls r4, r4, #3
	adds r2, r6, r4
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08136E30 @ =0x000003DF
	adds r1, r6, r0
	movs r0, #7
	strb r0, [r1]
	subs r4, #0x58
	adds r2, r6, r4
	ldr r4, _08136E34 @ =gUnk_0837F228
	ldr r3, _08136E38 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #2]
_08136E24:
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08136E30: .4byte 0x000003DF
_08136E34: .4byte gUnk_0837F228
_08136E38: .4byte gLanguage

	thumb_func_start sub_08136E3C
sub_08136E3C: @ 0x08136E3C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08136E5C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08136E60
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08136E68
	.align 2, 0
_08136E5C: .4byte gCurTask
_08136E60:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08136E68:
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _08136E82
	cmp r0, #0x37
	bne _08136EBC
	ldr r0, [r6]
	bl sub_08137E24
	b _08136EBC
_08136E82:
	ldr r3, [r6]
	ldr r4, _08136EC4 @ =gUnk_0837EFC8
	ldr r2, _08136EC8 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x10]
	movs r5, #0
	strh r0, [r3, #0xc]
	ldr r3, [r6]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x12]
	strb r0, [r3, #0x1a]
	ldr r1, [r6]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #0x1f]
	strb r5, [r6, #4]
	ldr r1, [r7]
	ldr r0, _08136ECC @ =sub_08136ED0
	str r0, [r1, #8]
_08136EBC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136EC4: .4byte gUnk_0837EFC8
_08136EC8: .4byte gLanguage
_08136ECC: .4byte sub_08136ED0

	thumb_func_start sub_08136ED0
sub_08136ED0: @ 0x08136ED0
	push {r4, r5, lr}
	ldr r2, _08136EF0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08136EF4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136EFC
	.align 2, 0
_08136EF0: .4byte gCurTask
_08136EF4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136EFC:
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0x15
	bhi _08136F1C
	ldr r2, [r4]
	ldr r1, _08136F18 @ =gUnk_0837F210
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	b _08136F2E
	.align 2, 0
_08136F18: .4byte gUnk_0837F210
_08136F1C:
	ldr r1, [r4]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x40
	orrs r0, r2
	strh r0, [r1]
	ldr r0, [r5]
	bl TaskDestroy
_08136F2E:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08136F3C
sub_08136F3C: @ 0x08136F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r0, _08136F80 @ =sub_08137190
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136F84
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136F8C
	.align 2, 0
_08136F80: .4byte sub_08137190
_08136F84:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136F8C:
	adds r5, r0, #0
	str r4, [r5, #0x54]
	adds r0, r4, #0
	adds r0, #0xdf
	ldrb r7, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08136FA2
	adds r0, r7, #5
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08136FA2:
	ldr r2, _081370A4 @ =gUnk_0837EFC8
	ldr r1, _081370A8 @ =gLanguage
	mov r8, r1
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	movs r6, #0
	strh r0, [r4, #0xc]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #6]
	strb r0, [r4, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	str r4, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	str r2, [sp, #0x10]
	movs r1, #2
	strh r1, [r2]
	ldr r2, _081370AC @ =gUnk_0837F318
	mov r4, sb
	lsls r3, r4, #1
	lsls r4, r4, #3
	mov ip, r4
	add ip, r2
	mov r0, ip
	ldr r0, [r0]
	str r0, [r5, #0x48]
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x4c]
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	str r3, [sp, #0xc]
	cmp r4, #0
	beq _081370BC
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081370B0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081370B4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r3, _081370B8 @ =gUnk_0837F228
	lsls r2, r7, #2
	mov r4, r8
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	ldrb r0, [r5, #0x1f]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x23
	movs r0, #7
	strb r0, [r4]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	adds r3, r4, #0
	b _0813713C
	.align 2, 0
_081370A4: .4byte gUnk_0837EFC8
_081370A8: .4byte gLanguage
_081370AC: .4byte gUnk_0837F318
_081370B0: .4byte 0x05000011
_081370B4: .4byte 0x06010000
_081370B8: .4byte gUnk_0837F228
_081370BC:
	str r4, [sp, #4]
	adds r1, r5, #4
	ldr r2, _0813717C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137180 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r3, _08137184 @ =gUnk_0837F228
	lsls r2, r7, #2
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	ldrb r0, [r5, #0x1f]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x23
	movs r0, #7
	strb r0, [r3]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_0813713C:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _08137146
	movs r0, #5
	strb r0, [r3]
_08137146:
	ldr r0, [r5, #0xc]
	ldr r1, _08137188 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r1, _0813718C @ =gUnk_0837F338
	mov r4, sb
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x36]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813717C: .4byte 0x05000011
_08137180: .4byte 0x06010000
_08137184: .4byte gUnk_0837F228
_08137188: .4byte 0xFFFFCFFF
_0813718C: .4byte gUnk_0837F338

	thumb_func_start sub_08137190
sub_08137190: @ 0x08137190
	push {r4, lr}
	ldr r0, _081371AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081371B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081371B8
	.align 2, 0
_081371AC: .4byte gCurTask
_081371B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081371B8:
	ldr r0, [r4, #0x48]
	adds r0, #7
	cmp r0, #0xe
	bhi _081371C6
	movs r0, #0
	str r0, [r4, #0x48]
	strh r0, [r4, #0x34]
_081371C6:
	ldr r0, [r4, #0x4c]
	cmp r0, #8
	bgt _081371D2
	movs r0, #0
	str r0, [r4, #0x4c]
	strh r0, [r4, #0x36]
_081371D2:
	adds r0, r4, #0
	bl sub_0812A2C0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _081371F8
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _081371F8
	ldr r1, [r4, #0x54]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08137200 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081371F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137200: .4byte gCurTask

	thumb_func_start sub_08137204
sub_08137204: @ 0x08137204
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r1, sp
	adds r0, #0xee
	ldrb r0, [r0]
	strb r0, [r1]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r2, #0xec
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r2, #0xec
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #3]
	movs r0, #0
	mov r8, r0
	mov r2, sp
_08137238:
	movs r1, #0
	mov ip, r1
	ldrb r4, [r2]
	ldrb r3, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _08137250
	ldrb r0, [r2, #2]
	cmp r3, r0
	bgt _08137256
	b _0813725A
_08137250:
	ldrb r0, [r2, #3]
	cmp r3, r0
	ble _0813725A
_08137256:
	ldrb r0, [r2, #1]
	b _08137264
_0813725A:
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _0813726A
	ldrb r0, [r2, #2]
_08137264:
	cmp r4, r0
	bgt _08137270
	b _08137274
_0813726A:
	ldrb r0, [r2, #3]
	cmp r4, r0
	ble _08137274
_08137270:
	ldrb r0, [r2]
	b _0813729E
_08137274:
	ldrb r3, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _08137286
	ldrb r0, [r2, #2]
	cmp r3, r0
	bgt _0813728C
	b _08137290
_08137286:
	ldrb r0, [r2, #3]
	cmp r3, r0
	ble _08137290
_0813728C:
	ldrb r0, [r2, #1]
	b _0813729E
_08137290:
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _0813729C
	ldrb r0, [r2, #2]
	b _0813729E
_0813729C:
	ldrb r0, [r2, #3]
_0813729E:
	adds r5, r0, #0
	movs r3, #0
	mov sb, r3
	movs r0, #0x81
	lsls r0, r0, #3
	adds r4, r6, r0
	movs r7, #0xec
_081372AC:
	adds r0, r3, #0
	muls r0, r7, r0
	adds r0, r6, r0
	adds r1, r0, #0
	adds r1, #0xee
	ldrb r1, [r1]
	cmp r5, r1
	bne _081372DC
	adds r0, #0xf8
	mov r1, r8
	strb r1, [r0]
	mov r0, r8
	add r0, ip
	adds r0, r4, r0
	strb r3, [r0]
	mov r1, sp
	adds r0, r1, r3
	mov r1, sb
	strb r1, [r0]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_081372DC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _081372AC
	mov r0, r8
	add r0, ip
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08137238
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08137304
sub_08137304: @ 0x08137304
	push {r4, r5, r6, lr}
	ldr r2, _08137324 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08137328
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08137330
	.align 2, 0
_08137324: .4byte gCurTask
_08137328:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08137330:
	ldr r4, _0813739C @ =gBgScrollRegs
	ldr r2, _081373A0 @ =gUnk_0837F488
	ldrb r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r1, _081373A4 @ =gUnk_0837F497
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #2]
	adds r0, r0, r6
	strh r0, [r4, #2]
	ldrb r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #6]
	adds r0, r0, r6
	strh r0, [r4, #6]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08137394
	movs r0, #8
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [r5]
	bl TaskDestroy
_08137394:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813739C: .4byte gBgScrollRegs
_081373A0: .4byte gUnk_0837F488
_081373A4: .4byte gUnk_0837F497

	thumb_func_start sub_081373A8
sub_081373A8: @ 0x081373A8
	push {r4, r5, lr}
	ldr r2, _081373C8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _081373CC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081373D4
	.align 2, 0
_081373C8: .4byte gCurTask
_081373CC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081373D4:
	ldr r3, _08137414 @ =gBgScrollRegs
	ldr r1, _08137418 @ =gUnk_0837F4A6
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r4, #0
	strh r0, [r3, #8]
	ldr r1, _0813741C @ =gUnk_0837F4B5
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0xa]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813740C
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	ldr r0, [r5]
	bl TaskDestroy
_0813740C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137414: .4byte gBgScrollRegs
_08137418: .4byte gUnk_0837F4A6
_0813741C: .4byte gUnk_0837F4B5

	thumb_func_start sub_08137420
sub_08137420: @ 0x08137420
	push {r4, lr}
	ldr r0, _0813743C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137440
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137448
	.align 2, 0
_0813743C: .4byte gCurTask
_08137440:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137448:
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_081386A8
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137470
	ldr r0, _08137468 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0813746C @ =sub_08135B38
	b _08137476
	.align 2, 0
_08137468: .4byte gCurTask
_0813746C: .4byte sub_08135B38
_08137470:
	ldr r0, _08137490 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137494 @ =sub_081361B4
_08137476:
	str r0, [r1, #8]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137490: .4byte gCurTask
_08137494: .4byte sub_081361B4

	thumb_func_start sub_08137498
sub_08137498: @ 0x08137498
	push {r4, lr}
	ldr r2, _081374B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081374B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081374C0
	.align 2, 0
_081374B4: .4byte gCurTask
_081374B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081374C0:
	ldr r0, [r2]
	ldr r1, _081374E4 @ =sub_081366B8
	str r1, [r0, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081374E4: .4byte sub_081366B8

	thumb_func_start sub_081374E8
sub_081374E8: @ 0x081374E8
	push {r4, r5, lr}
	ldr r0, _08137504 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137508
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137510
	.align 2, 0
_08137504: .4byte gCurTask
_08137508:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137510:
	bl sub_0812A304
	adds r5, r0, #0
	cmp r5, #0
	bne _0813752E
	bl m4aMPlayAllStop
	ldr r0, _08137544 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137548 @ =sub_08134E54
	str r0, [r1, #8]
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
_0813752E:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137544: .4byte gCurTask
_08137548: .4byte sub_08134E54

	thumb_func_start sub_0813754C
sub_0813754C: @ 0x0813754C
	push {r4, lr}
	ldr r2, _0813756C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08137570
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137578
	.align 2, 0
_0813756C: .4byte gCurTask
_08137570:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137578:
	ldr r1, _081375B0 @ =0x0000041E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _081375AA
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _081375B4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _081375A4
	bl sub_08031CC8
	bl sub_081589E8
_081375A4:
	movs r0, #0
	bl sub_08138D64
_081375AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081375B0: .4byte 0x0000041E
_081375B4: .4byte gUnk_0203AD10

	thumb_func_start nullsub_128
nullsub_128: @ 0x081375B8
	bx lr
	.align 2, 0

	thumb_func_start sub_081375BC
sub_081375BC: @ 0x081375BC
	push {r4, r5, lr}
	ldr r4, _081375FC @ =gRngVal
	ldr r2, [r4]
	ldr r1, _08137600 @ =0x00196225
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _08137604 @ =0x3C6EF35F
	adds r3, r3, r1
	str r3, [r4]
	ldr r4, _08137608 @ =gUnk_0837F388
	movs r2, #0xf
	ands r2, r3
	lsls r2, r2, #1
	ldr r5, _0813760C @ =0x0000041C
	adds r1, r0, r5
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r2, r2, r1
	adds r2, r2, r4
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsrs r3, r3, #2
	movs r1, #0xf
	ands r3, r1
	adds r2, r2, r3
	subs r5, #0xc
	adds r0, r0, r5
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081375FC: .4byte gRngVal
_08137600: .4byte 0x00196225
_08137604: .4byte 0x3C6EF35F
_08137608: .4byte gUnk_0837F388
_0813760C: .4byte 0x0000041C

	thumb_func_start sub_08137610
sub_08137610: @ 0x08137610
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137652
	ldr r2, _08137658 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0813765C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08137660 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	ldr r2, _08137664 @ =gUnk_0837F348
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xe4
	strh r0, [r1]
_08137652:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137658: .4byte gRngVal
_0813765C: .4byte 0x00196225
_08137660: .4byte 0x3C6EF35F
_08137664: .4byte gUnk_0837F348

	thumb_func_start sub_08137668
sub_08137668: @ 0x08137668
	push {lr}
	sub sp, #4
	ldr r0, _08137698 @ =sub_081376E4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813769C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _081376A4
	.align 2, 0
_08137698: .4byte sub_081376E4
_0813769C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_081376A4:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _081376D0 @ =gUnk_03000530
	str r1, [r0]
	ldr r3, _081376D4 @ =gUnk_03002470
	ldr r2, _081376D8 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _081376DC @ =sub_081378BC
	str r1, [r0]
	ldr r2, _081376E0 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_081376D0: .4byte gUnk_03000530
_081376D4: .4byte gUnk_03002470
_081376D8: .4byte gUnk_03006070
_081376DC: .4byte sub_081378BC
_081376E0: .4byte gMainFlags

	thumb_func_start sub_081376E4
sub_081376E4: @ 0x081376E4
	push {r4, lr}
	ldr r2, _08137704 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08137708
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137710
	.align 2, 0
_08137704: .4byte gCurTask
_08137708:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137710:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0813772E
	ldr r2, _08137734 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08137738 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
_0813772E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137734: .4byte gDispCnt
_08137738: .4byte 0x0000FBFF

	thumb_func_start sub_0813773C
sub_0813773C: @ 0x0813773C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0813776C @ =sub_08136E3C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137770
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137778
	.align 2, 0
_0813776C: .4byte sub_08136E3C
_08137770:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137778:
	str r4, [r1]
	movs r0, #0
	strb r0, [r1, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08137788
sub_08137788: @ 0x08137788
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_0813778E:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x10
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_081288DC
	adds r5, r4, #0
	adds r5, #0xd0
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081377B2
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_081288DC
_081377B2:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _081377C4
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_081288DC
_081377C4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813778E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081377D4
sub_081377D4: @ 0x081377D4
	push {lr}
	sub sp, #4
	ldr r0, _08137804 @ =sub_0813781C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137808
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137810
	.align 2, 0
_08137804: .4byte sub_0813781C
_08137808:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137810:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813781C
sub_0813781C: @ 0x0813781C
	push {r4, lr}
	ldr r0, _08137838 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813783C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137844
	.align 2, 0
_08137838: .4byte gCurTask
_0813783C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137844:
	ldrb r0, [r4]
	cmp r0, #0x3c
	bls _0813785E
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x8f
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _0813786C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137870 @ =sub_08137304
	str r0, [r1, #8]
_0813785E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813786C: .4byte gCurTask
_08137870: .4byte sub_08137304

	thumb_func_start sub_08137874
sub_08137874: @ 0x08137874
	push {lr}
	sub sp, #4
	ldr r0, _081378A4 @ =sub_081373A8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081378A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _081378B0
	.align 2, 0
_081378A4: .4byte sub_081373A8
_081378A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_081378B0:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081378BC
sub_081378BC: @ 0x081378BC
	push {lr}
	ldr r0, _081378CC @ =gUnk_083850A4
	ldr r1, _081378D0 @ =0x0600F000
	bl RLUnCompVram
	pop {r0}
	bx r0
	.align 2, 0
_081378CC: .4byte gUnk_083850A4
_081378D0: .4byte 0x0600F000

	thumb_func_start sub_081378D4
sub_081378D4: @ 0x081378D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137908 @ =sub_08137A80
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813790C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137914
	.align 2, 0
_08137908: .4byte sub_08137A80
_0813790C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137914:
	adds r5, r0, #0
	adds r0, #0x54
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08137930 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137964
	lsls r0, r0, #2
	ldr r1, _08137934 @ =_08137938
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137930: .4byte gLanguage
_08137934: .4byte _08137938
_08137938: @ jump table
	.4byte _08137950 @ case 0
	.4byte _08137950 @ case 1
	.4byte _08137950 @ case 2
	.4byte _08137950 @ case 3
	.4byte _08137950 @ case 4
	.4byte _08137950 @ case 5
_08137950:
	ldr r0, _081379F8 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _081379FC @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08137964:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137A08
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A00 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A04 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137A60
	.align 2, 0
_081379F8: .4byte 0xFFFF0000
_081379FC: .4byte 0xFF00FFFF
_08137A00: .4byte 0x05000011
_08137A04: .4byte 0x06010000
_08137A08:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A78 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A7C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137A60:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137A78: .4byte 0x05000011
_08137A7C: .4byte 0x06010000

	thumb_func_start sub_08137A80
sub_08137A80: @ 0x08137A80
	push {r4, lr}
	ldr r0, _08137A9C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137AA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137AA8
	.align 2, 0
_08137A9C: .4byte gCurTask
_08137AA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137AA8:
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08137AC8
	movs r0, #0
	strh r0, [r2]
	subs r0, #0xb8
	str r0, [r4, #0x4c]
_08137AC8:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137AEE
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08137AE6
	subs r0, #1
	strh r0, [r1]
	b _08137AEE
_08137AE6:
	ldr r0, _08137AF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08137AEE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137AF4: .4byte gCurTask

	thumb_func_start sub_08137AF8
sub_08137AF8: @ 0x08137AF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137B2C @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137B30
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137B38
	.align 2, 0
_08137B2C: .4byte sub_08128980
_08137B30:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137B38:
	adds r5, r0, #0
	ldr r0, _08137B4C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137B80
	lsls r0, r0, #2
	ldr r1, _08137B50 @ =_08137B54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137B4C: .4byte gLanguage
_08137B50: .4byte _08137B54
_08137B54: @ jump table
	.4byte _08137B6C @ case 0
	.4byte _08137B6C @ case 1
	.4byte _08137B6C @ case 2
	.4byte _08137B6C @ case 3
	.4byte _08137B6C @ case 4
	.4byte _08137B6C @ case 5
_08137B6C:
	ldr r0, _08137C14 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08137C18 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_08137B80:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137C24
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C20 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137C7C
	.align 2, 0
_08137C14: .4byte 0xFFFF0000
_08137C18: .4byte 0xFF00FFFF
_08137C1C: .4byte 0x05000011
_08137C20: .4byte 0x06010000
_08137C24:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C90 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C94 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137C7C:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137C90: .4byte 0x05000011
_08137C94: .4byte 0x06010000

	thumb_func_start sub_08137C98
sub_08137C98: @ 0x08137C98
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08137CC8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137CCC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137CD4
	.align 2, 0
_08137CC8: .4byte sub_08128980
_08137CCC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137CD4:
	adds r4, r0, #0
	ldr r0, _08137CE8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137D16
	lsls r0, r0, #2
	ldr r1, _08137CEC @ =_08137CF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137CE8: .4byte gLanguage
_08137CEC: .4byte _08137CF0
_08137CF0: @ jump table
	.4byte _08137D08 @ case 0
	.4byte _08137D08 @ case 1
	.4byte _08137D08 @ case 2
	.4byte _08137D08 @ case 3
	.4byte _08137D08 @ case 4
	.4byte _08137D08 @ case 5
_08137D08:
	ldr r0, _08137DAC @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r5, r0
	ldr r0, _08137DB0 @ =0xFF00FFFF
	ands r5, r0
_08137D16:
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	movs r0, #0xf0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137DBC
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137DB4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137DB8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08137E14
	.align 2, 0
_08137DAC: .4byte 0xFFFF0000
_08137DB0: .4byte 0xFF00FFFF
_08137DB4: .4byte 0x05000011
_08137DB8: .4byte 0x06010000
_08137DBC:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137E1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137E20 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_08137E14:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137E1C: .4byte 0x05000011
_08137E20: .4byte 0x06010000

	thumb_func_start sub_08137E24
sub_08137E24: @ 0x08137E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137E58 @ =sub_08137FC8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137E5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137E64
	.align 2, 0
_08137E58: .4byte sub_08137FC8
_08137E5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137E64:
	adds r5, r0, #0
	mov r0, r8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _08137E88 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137EB4
	lsls r0, r0, #2
	ldr r1, _08137E8C @ =_08137E90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137E88: .4byte gLanguage
_08137E8C: .4byte _08137E90
_08137E90: @ jump table
	.4byte _08137EA8 @ case 0
	.4byte _08137EA8 @ case 1
	.4byte _08137EA8 @ case 2
	.4byte _08137EA8 @ case 3
	.4byte _08137EA8 @ case 4
	.4byte _08137EA8 @ case 5
_08137EA8:
	ldr r0, _08137F44 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _08137F48 @ =0x0000036A
	orrs r4, r0
	ldr r0, _08137F4C @ =0xFF00FFFF
	ands r4, r0
_08137EB4:
	mov r1, r8
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137F58
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137F50 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137F54 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137FAE
	.align 2, 0
_08137F44: .4byte 0xFFFF0000
_08137F48: .4byte 0x0000036A
_08137F4C: .4byte 0xFF00FFFF
_08137F50: .4byte 0x05000011
_08137F54: .4byte 0x06010000
_08137F58:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137FC0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137FC4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137FAE:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137FC0: .4byte 0x05000011
_08137FC4: .4byte 0x06010000

	thumb_func_start sub_08137FC8
sub_08137FC8: @ 0x08137FC8
	push {r4, r5, lr}
	ldr r0, _08137FE4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137FE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137FF0
	.align 2, 0
_08137FE4: .4byte gCurTask
_08137FE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137FF0:
	adds r5, r4, #0
	adds r0, r4, #0
	bl sub_0812A2C0
	movs r0, #0x59
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	bne _0813802C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r3, [r2]
	b _081380B4
_0813802C:
	cmp r3, #1
	bne _0813809C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08138068 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081380B4
	lsls r0, r0, #2
	ldr r1, _0813806C @ =_08138070
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138068: .4byte gLanguage
_0813806C: .4byte _08138070
_08138070: @ jump table
	.4byte _08138088 @ case 0
	.4byte _08138088 @ case 1
	.4byte _08138088 @ case 2
	.4byte _08138088 @ case 3
	.4byte _08138088 @ case 4
	.4byte _08138088 @ case 5
_08138088:
	ldr r0, _08138098 @ =0x0000036A
	strh r0, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #0x1e]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	b _081380B4
	.align 2, 0
_08138098: .4byte 0x0000036A
_0813809C:
	cmp r3, #2
	bne _081380B4
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081380B4
	ldr r0, _081380BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081380B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081380BC: .4byte gCurTask

	thumb_func_start sub_081380C0
sub_081380C0: @ 0x081380C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	mov sl, r2
	ldr r0, _08138100 @ =sub_0813870C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138104
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813810E
	.align 2, 0
_08138100: .4byte sub_0813870C
_08138104:
	mov r2, r8
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813810E:
	adds r5, r0, #0
	ldr r0, _08138124 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08138150
	lsls r0, r0, #2
	ldr r1, _08138128 @ =_0813812C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138124: .4byte gLanguage
_08138128: .4byte _0813812C
_0813812C: @ jump table
	.4byte _08138144 @ case 0
	.4byte _08138144 @ case 1
	.4byte _08138144 @ case 2
	.4byte _08138144 @ case 3
	.4byte _08138144 @ case 4
	.4byte _08138144 @ case 5
_08138144:
	ldr r0, _081381E0 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081381E4 @ =0x00000369
	orrs r4, r0
	ldr r0, _081381E8 @ =0xFF00FFFF
	ands r4, r0
_08138150:
	mov r0, sb
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r5, #0x48]
	mov r2, sl
	str r2, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081381F4
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081381EC @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081381F0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0813824A
	.align 2, 0
_081381E0: .4byte 0xFFFF0000
_081381E4: .4byte 0x00000369
_081381E8: .4byte 0xFF00FFFF
_081381EC: .4byte 0x05000011
_081381F0: .4byte 0x06010000
_081381F4:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138290 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138294 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_0813824A:
	mov r4, sb
	ldr r0, [r4, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0xc]
	ldr r1, _08138298 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x18]
	ldr r2, _0813829C @ =0x0000F83F
	ands r2, r0
	movs r3, #0
	strh r2, [r5, #0x18]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x54
	strb r3, [r0]
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08138290: .4byte 0x05000011
_08138294: .4byte 0x06010000
_08138298: .4byte 0xFFFFCFFF
_0813829C: .4byte 0x0000F83F

	thumb_func_start sub_081382A0
sub_081382A0: @ 0x081382A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _081382D8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081382DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081382E4
	.align 2, 0
_081382D8: .4byte sub_08128980
_081382DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081382E4:
	adds r5, r0, #0
	ldr r0, _081382F8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813832A
	lsls r0, r0, #2
	ldr r1, _081382FC @ =_08138300
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081382F8: .4byte gLanguage
_081382FC: .4byte _08138300
_08138300: @ jump table
	.4byte _08138318 @ case 0
	.4byte _08138318 @ case 1
	.4byte _08138318 @ case 2
	.4byte _08138318 @ case 3
	.4byte _08138318 @ case 4
	.4byte _08138318 @ case 5
_08138318:
	ldr r0, _081383B8 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081383BC @ =0x0000036A
	orrs r4, r0
	ldr r0, _081383C0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	orrs r4, r0
_0813832A:
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	str r6, [r5, #0x48]
	mov r1, r8
	str r1, [r5, #0x4c]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081383CC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081383C4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081383C8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08138422
	.align 2, 0
_081383B8: .4byte 0xFFFF0000
_081383BC: .4byte 0x0000036A
_081383C0: .4byte 0xFF00FFFF
_081383C4: .4byte 0x05000011
_081383C8: .4byte 0x06010000
_081383CC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138430 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138434 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08138422:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138430: .4byte 0x05000011
_08138434: .4byte 0x06010000

	thumb_func_start sub_08138438
sub_08138438: @ 0x08138438
	push {r4, r5, lr}
	ldr r0, _08138454 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138458
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138460
	.align 2, 0
_08138454: .4byte gCurTask
_08138458:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138460:
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0813850C
	ldr r2, _081384A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081384A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081384A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _081384AC @ =gUnk_083852D0
	adds r1, r0, r2
	ldrb r5, [r1]
	strb r5, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	lsrs r0, r3, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384B0
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	adds r0, r5, r0
	b _081384B8
	.align 2, 0
_081384A0: .4byte gRngVal
_081384A4: .4byte 0x00196225
_081384A8: .4byte 0x3C6EF35F
_081384AC: .4byte gUnk_083852D0
_081384B0:
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	subs r0, r5, r0
_081384B8:
	strb r0, [r4]
	lsrs r0, r3, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384D2
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	b _081384DE
_081384D2:
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	subs r1, r1, r0
	strb r1, [r4, #1]
_081384DE:
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_081382A0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0813850C
	ldr r0, _08138508 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08138512
	.align 2, 0
_08138508: .4byte gCurTask
_0813850C:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_08138512:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08138518
sub_08138518: @ 0x08138518
	push {r4, lr}
	sub sp, #4
	ldr r2, _08138538 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813853C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138544
	.align 2, 0
_08138538: .4byte gCurTask
_0813853C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138544:
	adds r4, r0, #0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08138558
	ldr r0, [r2]
	bl TaskDestroy
	b _081385C6
_08138558:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081385C6
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081385C6
	ldr r0, _08138598 @ =sub_08138438
	str r1, [sp]
	movs r1, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813859C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _081385A2
	.align 2, 0
_08138598: .4byte sub_08138438
_0813859C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_081385A2:
	adds r2, r0, r1
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	ldr r2, _081385D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081385D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081385D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_081385C6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081385D0: .4byte gRngVal
_081385D4: .4byte 0x00196225
_081385D8: .4byte 0x3C6EF35F

	thumb_func_start sub_081385DC
sub_081385DC: @ 0x081385DC
	push {lr}
	sub sp, #4
	ldr r0, _0813860C @ =sub_08138438
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138610
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08138618
	.align 2, 0
_0813860C: .4byte sub_08138438
_08138610:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08138618:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813862C
sub_0813862C: @ 0x0813862C
	push {lr}
	sub sp, #4
	ldr r0, _0813865C @ =sub_08138518
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138660
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138668
	.align 2, 0
_0813865C: .4byte sub_08138518
_08138660:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138668:
	movs r0, #2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08138678
sub_08138678: @ 0x08138678
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138692
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0813869A
_08138692:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0813869A:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081386A8
sub_081386A8: @ 0x081386A8
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386C2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386CA
_081386C2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386CA:
	ldrh r1, [r2]
	ldr r0, _081386D8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_081386D8: .4byte 0x0000FFFD

	thumb_func_start sub_081386DC
sub_081386DC: @ 0x081386DC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386F6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386FE
_081386F6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386FE:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813870C
sub_0813870C: @ 0x0813870C
	push {lr}
	ldr r0, _08138728 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813872C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138734
	.align 2, 0
_08138728: .4byte gCurTask
_0813872C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138734:
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _0813874A
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0813874A:
	adds r0, r1, #0
	bl sub_0812A2C0
	pop {r0}
	bx r0

	thumb_func_start nullsub_129
nullsub_129: @ 0x08138754
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08138758
	bx lr
	.align 2, 0

	thumb_func_start nullsub_131
nullsub_131: @ 0x0813875C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_132
nullsub_132: @ 0x08138760
	bx lr
	.align 2, 0

	thumb_func_start sub_08138764
sub_08138764: @ 0x08138764
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r1, #0
	cmp r1, r4
	bhs _081387A4
	movs r7, #0xf
_08138776:
	adds r2, r5, r1
	subs r0, r4, r1
	subs r0, #1
	lsls r0, r0, #2
	adds r3, r7, #0
	lsls r3, r0
	ands r3, r6
	asrs r3, r0
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x39
	bls _0813879A
	adds r0, r3, #0
	adds r0, #0x37
	strb r0, [r2]
_0813879A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r4
	blo _08138776
_081387A4:
	adds r1, r5, r1
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
