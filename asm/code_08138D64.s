	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0813E680
sub_0813E680: @ 0x0813E680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r1, _0813E764 @ =0x000009D8
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0813E768 @ =0x000009CC
	add r1, r8
	ldr r0, _0813E76C @ =sub_0813E788
	str r0, [r1]
	mov r0, r8
	bl sub_0813AE30
	movs r0, #0xea
	lsls r0, r0, #2
	add r0, r8
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	add r0, r8
	bl sub_0815604C
	movs r0, #0x88
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r5, #0
	ldr r0, _0813E770 @ =0x00196225
	mov sl, r0
	ldr r1, _0813E774 @ =0x3C6EF35F
	mov sb, r1
_0813E6C8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov ip, r0
	mov r3, r8
	add r3, ip
	ldr r2, _0813E778 @ =gRngVal
	ldr r0, [r2]
	mov r2, sl
	muls r2, r0, r2
	add r2, sb
	movs r0, #0x7f
	ands r0, r2
	adds r0, #0x4b
	movs r4, #0x81
	lsls r4, r4, #3
	adds r1, r3, r4
	strh r0, [r1]
	mov r1, sl
	muls r1, r2, r1
	add r1, sb
	movs r0, #0x1f
	ands r0, r1
	adds r0, #0x1b
	ldr r2, _0813E77C @ =0x0000040A
	adds r3, r3, r2
	strh r0, [r3]
	mov r0, sl
	muls r0, r1, r0
	add r0, sb
	ldr r4, _0813E778 @ =gRngVal
	str r0, [r4]
	movs r6, #0xf
	ands r6, r0
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r6
	bhs _0813E72C
	movs r5, #0xfe
	lsls r5, r5, #2
	add r5, ip
_0813E71A:
	mov r1, r8
	adds r0, r1, r5
	bl sub_08155128
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _0813E71A
_0813E72C:
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813E6C8
	ldr r1, _0813E780 @ =0x00000473
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	ldr r2, _0813E778 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0813E770 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _0813E774 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r0, #5
	ldr r1, _0813E784 @ =0x00000474
	add r1, r8
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813E764: .4byte 0x000009D8
_0813E768: .4byte 0x000009CC
_0813E76C: .4byte sub_0813E788
_0813E770: .4byte 0x00196225
_0813E774: .4byte 0x3C6EF35F
_0813E778: .4byte gRngVal
_0813E77C: .4byte 0x0000040A
_0813E780: .4byte 0x00000473
_0813E784: .4byte 0x00000474

	thumb_func_start sub_0813E788
sub_0813E788: @ 0x0813E788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	mov sl, r0
	ldr r2, _0813EA18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0813EA1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0813EA20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, _0813EA24 @ =0x000009D8
	adds r4, r7, r2
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0813E7CE
	ldr r3, _0813EA28 @ =0x000009CC
	adds r1, r7, r3
	ldr r0, _0813EA2C @ =sub_0813EAC0
	str r0, [r1]
_0813E7CE:
	adds r0, r7, #7
	add r0, sl
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, sl
	lsls r5, r5, #4
	str r5, [sp, #0x14]
	mov r1, sl
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	cmp r0, #0
	ble _0813E8B8
	ldr r1, _0813EA30 @ =gUnk_08386659
	mov r0, sp
	movs r2, #3
	bl memcpy
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sp
	adds r1, r3, r0
	mov r4, sb
	ldrb r0, [r4]
	ldrb r1, [r1]
	subs r0, r0, r1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0813E81A
	movs r0, #0
	strb r0, [r4]
_0813E81A:
	mov r5, sb
	movs r4, #0
	ldrsb r4, [r5, r4]
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, [sp, #0x14]
	mov r1, sl
	subs r4, r0, r1
	lsls r4, r4, #3
	movs r2, #0x92
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r4, r7, r4
	adds r1, r4, #0
	adds r1, #0x28
	ldr r3, _0813EA34 @ =gUnk_083864B4
	mov r8, r3
	lsls r5, r5, #3
	add r5, r8
	ldrh r0, [r5]
	strh r0, [r1, #0xc]
	ldrh r0, [r5, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl sub_08155128
	adds r1, r4, #0
	adds r1, #0x50
	lsls r6, r6, #3
	add r6, r8
	ldrh r0, [r6]
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl sub_08155128
	mov r4, sb
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #1
	cmp r1, #9
	bgt _0813E894
	movs r0, #0
_0813E894:
	cmp r0, #0
	beq _0813E8B8
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_0813AF5C
	ldr r0, [sp, #0x10]
	add r0, sl
	lsls r0, r0, #3
	adds r0, #0xac
	adds r1, r7, r0
	ldrh r0, [r4]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl sub_08155128
_0813E8B8:
	ldr r5, [sp, #0xc]
	lsls r2, r5, #0x18
	asrs r6, r2, #0x18
	adds r1, r6, #0
	adds r1, #0x5c
	ldr r3, _0813EA38 @ =0x000003BA
	adds r0, r7, r3
	strh r1, [r0]
	subs r1, #6
	ldr r4, _0813EA3C @ =0x000003E2
	adds r0, r7, r4
	strh r1, [r0]
	ldr r1, [sp, #0x10]
	add r1, sl
	lsls r1, r1, #3
	adds r1, r7, r1
	adds r0, r6, #0
	adds r0, #0x1b
	adds r3, r1, #0
	adds r3, #0x46
	strh r0, [r3]
	ldr r5, [sp, #0x14]
	mov r3, sl
	subs r0, r5, r3
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r6, #0
	adds r0, #0x23
	movs r5, #0xc3
	lsls r5, r5, #1
	adds r3, r4, r5
	strh r0, [r3]
	subs r5, #0x28
	adds r3, r4, r5
	strh r0, [r3]
	subs r5, #0x28
	adds r3, r4, r5
	strh r0, [r3]
	adds r0, #4
	adds r1, #0xbe
	strh r0, [r1]
	movs r5, #0
	adds r4, r2, #0
	ldr r0, _0813EA40 @ =gUnk_08386504
	mov sb, r0
	ldr r1, _0813EA44 @ =gBgScrollRegs
	mov ip, r1
	ldr r2, _0813EA48 @ =gUnk_08D62511
	mov r8, r2
	adds r2, r6, #0
	ldr r3, _0813EA4C @ =0x0000040A
_0813E91E:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r7, r1
	lsls r0, r5, #1
	add r0, r8
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, r1, r3
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813E91E
	asrs r0, r4, #0x18
	mov r3, sb
	ldrh r1, [r3]
	adds r1, r1, r0
	ldr r4, _0813EA50 @ =0x0000029E
	adds r2, r7, r4
	strh r1, [r2]
	mov r5, ip
	strh r0, [r5, #0xa]
	movs r5, #0
	ldr r0, _0813EA18 @ =gRngVal
	mov sb, r0
	ldr r1, _0813EA1C @ =0x00196225
	mov r8, r1
	ldr r6, _0813EA20 @ =0x3C6EF35F
_0813E95A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r0, r4, r2
	adds r0, r7, r0
	bl sub_08155128
	cmp r0, #0
	bne _0813E9A8
	adds r3, r7, r4
	mov r4, sb
	ldr r0, [r4]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r6
	movs r0, #0x7f
	ands r0, r2
	adds r0, #0x4b
	movs r4, #0x81
	lsls r4, r4, #3
	adds r1, r3, r4
	strh r0, [r1]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1b
	ldr r2, _0813EA4C @ =0x0000040A
	adds r1, r3, r2
	strh r0, [r1]
	adds r4, #0xb
	adds r3, r3, r4
	movs r0, #0xff
	strb r0, [r3]
_0813E9A8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813E95A
	ldr r5, _0813EA54 @ =0x00000473
	adds r2, r7, r5
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r1, _0813EA58 @ =0x00000474
	adds r4, r7, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r4]
	cmp r0, r3
	blo _0813E9F4
	movs r3, #0
	subs r5, #2
	adds r1, r7, r5
	ldrb r0, [r1]
	cmp r0, #0
	bne _0813E9D8
	movs r3, #1
_0813E9D8:
	strb r3, [r1]
	movs r0, #0
	strb r0, [r2]
	ldr r2, _0813EA18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0813EA1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0813EA20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r0, #5
	strb r0, [r4]
_0813E9F4:
	ldr r2, _0813EA5C @ =0x00000471
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0813EA60
	ldr r0, [sp, #0x10]
	add r0, sl
	lsls r0, r0, #3
	adds r1, r7, r0
	adds r1, #0x53
	movs r2, #3
	strb r2, [r1]
	adds r0, #0x34
	adds r0, r7, r0
	bl sub_08155128
	b _0813EA76
	.align 2, 0
_0813EA18: .4byte gRngVal
_0813EA1C: .4byte 0x00196225
_0813EA20: .4byte 0x3C6EF35F
_0813EA24: .4byte 0x000009D8
_0813EA28: .4byte 0x000009CC
_0813EA2C: .4byte sub_0813EAC0
_0813EA30: .4byte gUnk_08386659
_0813EA34: .4byte gUnk_083864B4
_0813EA38: .4byte 0x000003BA
_0813EA3C: .4byte 0x000003E2
_0813EA40: .4byte gUnk_08386504
_0813EA44: .4byte gBgScrollRegs
_0813EA48: .4byte gUnk_08D62511
_0813EA4C: .4byte 0x0000040A
_0813EA50: .4byte 0x0000029E
_0813EA54: .4byte 0x00000473
_0813EA58: .4byte 0x00000474
_0813EA5C: .4byte 0x00000471
_0813EA60:
	ldr r0, [sp, #0x10]
	add r0, sl
	lsls r0, r0, #3
	adds r1, r7, r0
	adds r1, #0x53
	movs r2, #2
	strb r2, [r1]
	adds r0, #0x34
	adds r0, r7, r0
	bl sub_08155128
_0813EA76:
	adds r0, r7, #0
	bl sub_0813AE30
	movs r3, #0xea
	lsls r3, r3, #2
	adds r0, r7, r3
	bl sub_0815604C
	movs r4, #0xf4
	lsls r4, r4, #2
	adds r0, r7, r4
	bl sub_0815604C
	movs r5, #0
_0813EA92:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r7, r0
	bl sub_0815604C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813EA92
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813EAC0
sub_0813EAC0: @ 0x0813EAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	mov sl, r0
	ldr r1, _0813EBB8 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r6, _0813EBBC @ =0x000009CC
	adds r1, r4, r6
	ldr r0, _0813EBC0 @ =sub_08142984
	str r0, [r1]
	mov r0, sl
	lsls r0, r0, #4
	mov r1, sl
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r8, r0
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, r8
	adds r7, r4, r0
	ldr r0, _0813EBC4 @ =gUnk_083864B4
	ldrh r6, [r0]
	strh r6, [r7, #0xc]
	ldrh r5, [r0, #2]
	strb r5, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	mov sb, r7
	adds r7, #0x28
	strh r6, [r7, #0xc]
	strb r5, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	mov r7, sb
	adds r7, #0x50
	strh r6, [r7, #0xc]
	strb r5, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, _0813EBC8 @ =gUnk_08386504
	ldrh r1, [r0]
	ldr r2, _0813EBCC @ =0x0000029E
	adds r0, r4, r2
	strh r1, [r0]
	movs r6, #0
	strh r6, [r4, #0x1e]
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	lsls r0, r0, #3
	adds r5, r4, r0
	adds r2, r5, #0
	adds r2, #0x46
	movs r1, #0x1b
	strh r1, [r2]
	mov r2, r8
	adds r3, r4, r2
	movs r6, #0xc3
	lsls r6, r6, #1
	adds r2, r3, r6
	movs r1, #0x23
	strh r1, [r2]
	subs r6, #0x28
	adds r2, r3, r6
	strh r1, [r2]
	subs r6, #0x28
	adds r2, r3, r6
	strh r1, [r2]
	adds r2, r5, #0
	adds r2, #0xbe
	movs r1, #0x27
	strh r1, [r2]
	ldr r1, _0813EBD0 @ =0x000003BA
	adds r2, r4, r1
	movs r1, #0x5c
	strh r1, [r2]
	ldr r6, _0813EBD4 @ =0x000003E2
	adds r2, r4, r6
	movs r1, #0x56
	strh r1, [r2]
	ldr r1, _0813EBD8 @ =gBgScrollRegs
	movs r2, #0
	strh r2, [r1, #0xa]
	strh r2, [r1, #6]
	movs r2, #0x18
	strh r2, [r1, #2]
	adds r2, r5, #0
	adds r2, #0x53
	movs r1, #2
	strb r1, [r2]
	adds r0, #0x34
	adds r0, r4, r0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0813AE30
	subs r6, #0x3a
	adds r0, r4, r6
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0815604C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EBB8: .4byte 0x000009D8
_0813EBBC: .4byte 0x000009CC
_0813EBC0: .4byte sub_08142984
_0813EBC4: .4byte gUnk_083864B4
_0813EBC8: .4byte gUnk_08386504
_0813EBCC: .4byte 0x0000029E
_0813EBD0: .4byte 0x000003BA
_0813EBD4: .4byte 0x000003E2
_0813EBD8: .4byte gBgScrollRegs

	thumb_func_start sub_0813EBDC
sub_0813EBDC: @ 0x0813EBDC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r5, [r6, #0xa]
	ldr r0, _0813ECA0 @ =0x000009D8
	adds r7, r6, r0
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r6, r4
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r0, #0xd0
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x20
	adds r2, r4, #0
	adds r2, #0x44
	strh r1, [r2]
	adds r0, #0x73
	adds r4, #0xbc
	strh r0, [r4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r3, r6, r0
	ldrh r0, [r2]
	adds r0, #0xa8
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb0
	adds r4, #0x28
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb8
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	movs r4, #0
	ldrsh r1, [r7, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x10
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r4, #0
	ldrsh r1, [r7, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	strh r0, [r6, #0x1c]
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _0813EC8E
	ldr r4, _0813ECA4 @ =gBgScrollRegs
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x18
	strh r0, [r4, #2]
_0813EC8E:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #4
	ble _0813ECB0
	ldr r2, _0813ECA8 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _0813ECAC @ =sub_08142A9C
	str r0, [r1]
	b _0813ECB6
	.align 2, 0
_0813ECA0: .4byte 0x000009D8
_0813ECA4: .4byte gBgScrollRegs
_0813ECA8: .4byte 0x000009CC
_0813ECAC: .4byte sub_08142A9C
_0813ECB0:
	adds r0, r6, #0
	bl sub_0813AE30
_0813ECB6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0813ECBC
sub_0813ECBC: @ 0x0813ECBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #1]
	movs r5, #0
	strb r0, [r7]
	ldrb r0, [r7, #2]
	strb r0, [r7, #1]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, _0813ED08 @ =0x000007D1
	adds r0, r7, r2
	strb r5, [r0]
	adds r1, #4
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, _0813ED0C @ =0x00000BEC
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r0, #0
	beq _0813ECF4
	bl sub_0802FBE0
	str r5, [r4]
_0813ECF4:
	ldrb r0, [r7, #1]
	cmp r0, #5
	bne _0813ED14
	ldr r1, _0813ED10 @ =0x000009CA
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019F28
	b _0813ED18
	.align 2, 0
_0813ED08: .4byte 0x000007D1
_0813ED0C: .4byte 0x00000BEC
_0813ED10: .4byte 0x000009CA
_0813ED14:
	bl sub_08032B0C
_0813ED18:
	ldr r2, _0813EE08 @ =0x00000BE8
	adds r1, r7, r2
	str r0, [r1]
	ldr r2, _0813EE0C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0813EE10 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0813EE14 @ =gUnk_08385C14
	ldr r0, _0813EE18 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x1a
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813EE1C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r5, [r1, #2]
	ldr r1, _0813EE20 @ =0x0600FB40
	mov sb, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	adds r6, r7, #0
	adds r6, #0xc
	cmp r4, r5
	bhs _0813ED78
_0813ED5C:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	add r1, sb
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813ED5C
_0813ED78:
	ldr r0, _0813EE24 @ =gBgScrollRegs
	movs r5, #0
	movs r3, #0
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r1, _0813EE28 @ =0x040000D4
	ldr r2, _0813EE2C @ =0x000009DA
	adds r0, r7, r2
	str r0, [r1]
	ldr r0, _0813EE30 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0813EE34 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0813EE38 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	ldr r4, _0813EE3C @ =gUnk_08385CD4
	ldr r2, _0813EE18 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x18]
	strh r0, [r6, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x1a]
	strb r0, [r6, #0x1a]
	strh r3, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	strh r3, [r6, #0x10]
	strh r3, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, _0813EE40 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _0813EE44 @ =sub_08142AD4
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EE08: .4byte 0x00000BE8
_0813EE0C: .4byte gDispCnt
_0813EE10: .4byte 0x0000FDFF
_0813EE14: .4byte gUnk_08385C14
_0813EE18: .4byte gLanguage
_0813EE1C: .4byte gUnk_082D7850
_0813EE20: .4byte 0x0600FB40
_0813EE24: .4byte gBgScrollRegs
_0813EE28: .4byte 0x040000D4
_0813EE2C: .4byte 0x000009DA
_0813EE30: .4byte gBgPalette
_0813EE34: .4byte 0x80000090
_0813EE38: .4byte gMainFlags
_0813EE3C: .4byte gUnk_08385CD4
_0813EE40: .4byte 0x000009CC
_0813EE44: .4byte sub_08142AD4

	thumb_func_start sub_0813EE48
sub_0813EE48: @ 0x0813EE48
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0813EEBC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0813EEC0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813EEC4 @ =sub_0813EED0
	str r0, [r1]
	ldr r1, _0813EEC8 @ =gObjPalette
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r5, [r0]
	movs r2, #3
	adds r6, r1, #0
	ldr r7, _0813EECC @ =gMainFlags
	adds r3, r6, #0
_0813EE6C:
	adds r1, r2, #0
	adds r1, #0x35
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r0, r2, #0
	adds r0, #0x34
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0813EE6C
	adds r0, r6, #0
	adds r0, #0x6a
	strh r5, [r0]
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EEBC: .4byte 0x000009D8
_0813EEC0: .4byte 0x000009CC
_0813EEC4: .4byte sub_0813EED0
_0813EEC8: .4byte gObjPalette
_0813EECC: .4byte gMainFlags

	thumb_func_start sub_0813EED0
sub_0813EED0: @ 0x0813EED0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0813EF60 @ =0x000009D8
	adds r7, r6, r0
	ldrh r4, [r7]
	adds r4, #1
	strh r4, [r7]
	ldr r5, _0813EF64 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0813EF02
	ldr r2, _0813EF68 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _0813EF6C @ =sub_0813EF78
	str r0, [r1]
_0813EF02:
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0x11
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x12
	ldr r2, _0813EF70 @ =0x0000057A
	adds r1, r6, r2
	strh r0, [r1]
	ldr r0, _0813EF74 @ =0x000007D2
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813EF32
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813EF32:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r6, r2
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EF60: .4byte 0x000009D8
_0813EF64: .4byte gBldRegs
_0813EF68: .4byte 0x000009CC
_0813EF6C: .4byte sub_0813EF78
_0813EF70: .4byte 0x0000057A
_0813EF74: .4byte 0x000007D2

	thumb_func_start sub_0813EF78
sub_0813EF78: @ 0x0813EF78
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813EFDC @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _0813EFE0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813EFE4 @ =sub_0813EFF0
	str r0, [r1]
	ldr r0, _0813EFE8 @ =0x0000057A
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0813EFEC @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813EFB0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813EFB0:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813EFDC: .4byte gBldRegs
_0813EFE0: .4byte 0x000009CC
_0813EFE4: .4byte sub_0813EFF0
_0813EFE8: .4byte 0x0000057A
_0813EFEC: .4byte 0x000007D2

	thumb_func_start sub_0813EFF0
sub_0813EFF0: @ 0x0813EFF0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _0813F078 @ =0x000009D8
	adds r0, r4, r1
	movs r5, #0
	movs r6, #0
	strh r6, [r0]
	ldr r1, _0813F07C @ =0x000007D3
	adds r0, r4, r1
	strb r5, [r0]
	ldr r0, _0813F080 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F084 @ =sub_0813F098
	str r0, [r1]
	ldr r1, _0813F088 @ =0x000007D4
	adds r0, r4, r1
	strb r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r5, [r0]
	subs r1, #1
	adds r0, r4, r1
	strb r5, [r0]
	ldr r0, _0813F08C @ =0x0000057A
	adds r1, r4, r0
	movs r0, #0x11
	strh r0, [r1]
	ldr r0, _0813F090 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F03E
	strb r5, [r1]
	bl sub_081434AC
_0813F03E:
	ldr r1, _0813F094 @ =0x000007DE
	adds r0, r4, r1
	strb r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r6, [r0]
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813F078: .4byte 0x000009D8
_0813F07C: .4byte 0x000007D3
_0813F080: .4byte 0x000009CC
_0813F084: .4byte sub_0813F098
_0813F088: .4byte 0x000007D4
_0813F08C: .4byte 0x0000057A
_0813F090: .4byte 0x000007D2
_0813F094: .4byte 0x000007DE

	thumb_func_start sub_0813F098
sub_0813F098: @ 0x0813F098
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x3c
	bl sub_0813B548
	cmp r0, #0
	beq _0813F0D4
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r1, [r0]
	cmp r1, #1
	bls _0813F0D4
	ldr r2, _0813F0C8 @ =0x000007D1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r1, r0
	bls _0813F0D4
	ldr r0, _0813F0CC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F0D0 @ =sub_0813F1D4
	str r0, [r1]
	b _0813F0DA
	.align 2, 0
_0813F0C8: .4byte 0x000007D1
_0813F0CC: .4byte 0x000009CC
_0813F0D0: .4byte sub_0813F1D4
_0813F0D4:
	adds r0, r4, #0
	bl sub_0813B61C
_0813F0DA:
	ldr r1, _0813F100 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F114
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F104 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F108 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F10C
	movs r0, #2
	b _0813F112
	.align 2, 0
_0813F100: .4byte 0x00000BE8
_0813F104: .4byte 0x000009CC
_0813F108: .4byte sub_0813FF6C
_0813F10C:
	cmp r0, #5
	bne _0813F114
	movs r0, #7
_0813F112:
	strb r0, [r4, #2]
_0813F114:
	ldr r1, _0813F138 @ =0x000007D3
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0813F140
	ldr r2, _0813F13C @ =0x000009D8
	adds r0, r4, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x12
	b _0813F154
	.align 2, 0
_0813F138: .4byte 0x000007D3
_0813F13C: .4byte 0x000009D8
_0813F140:
	ldr r1, _0813F1C4 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x22
_0813F154:
	ldr r2, _0813F1C8 @ =0x0000057A
	adds r1, r4, r2
	strh r0, [r1]
	ldr r0, _0813F1C4 @ =0x000009D8
	adds r3, r4, r0
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0813F17E
	ldr r1, _0813F1CC @ =0x000007D3
	adds r2, r4, r1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	strh r1, [r3]
_0813F17E:
	ldr r2, _0813F1D0 @ =0x000007D2
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F198
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F198:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r4, r2
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F1C4: .4byte 0x000009D8
_0813F1C8: .4byte 0x0000057A
_0813F1CC: .4byte 0x000007D3
_0813F1D0: .4byte 0x000007D2

	thumb_func_start sub_0813F1D4
sub_0813F1D4: @ 0x0813F1D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813F230 @ =0x000007D4
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	movs r0, #0xb4
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0x7a
	strh r0, [r1]
	ldr r0, _0813F234 @ =0x000005A2
	adds r1, r4, r0
	movs r0, #0x30
	strh r0, [r1]
	ldr r1, _0813F238 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _0813F23C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F240 @ =sub_0813F294
	str r0, [r1]
	ldr r1, _0813F244 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F254
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F23C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F248 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F24C
	movs r0, #2
	b _0813F252
	.align 2, 0
_0813F230: .4byte 0x000007D4
_0813F234: .4byte 0x000005A2
_0813F238: .4byte 0x000009D8
_0813F23C: .4byte 0x000009CC
_0813F240: .4byte sub_0813F294
_0813F244: .4byte 0x00000BE8
_0813F248: .4byte sub_0813FF6C
_0813F24C:
	cmp r0, #5
	bne _0813F254
	movs r0, #7
_0813F252:
	strb r0, [r4, #2]
_0813F254:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F290 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F278
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F278:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F290: .4byte 0x000007D2

	thumb_func_start sub_0813F294
sub_0813F294: @ 0x0813F294
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F2E0 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813F2FC
	movs r1, #0xfb
	lsls r1, r1, #3
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0813F2E4 @ =0x000007DB
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0813F2E8 @ =0x000007DE
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _0813F2F4
	ldr r2, _0813F2EC @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F2F0 @ =sub_0813F61C
	b _0813F2FA
	.align 2, 0
_0813F2E0: .4byte 0x000009D8
_0813F2E4: .4byte 0x000007DB
_0813F2E8: .4byte 0x000007DE
_0813F2EC: .4byte 0x000009CC
_0813F2F0: .4byte sub_0813F61C
_0813F2F4:
	ldr r0, _0813F320 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F324 @ =sub_0813F380
_0813F2FA:
	str r0, [r1]
_0813F2FC:
	ldr r1, _0813F328 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F338
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F320 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F32C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F330
	movs r0, #2
	b _0813F336
	.align 2, 0
_0813F320: .4byte 0x000009CC
_0813F324: .4byte sub_0813F380
_0813F328: .4byte 0x00000BE8
_0813F32C: .4byte sub_0813FF6C
_0813F330:
	cmp r0, #5
	bne _0813F338
	movs r0, #7
_0813F336:
	strb r0, [r4, #2]
_0813F338:
	ldr r1, _0813F378 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F37C @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F362
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F362:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F378: .4byte 0x000009D8
_0813F37C: .4byte 0x000007D2

	thumb_func_start sub_0813F380
sub_0813F380: @ 0x0813F380
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0813B6B0
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0813B548
	cmp r0, #0
	beq _0813F3E0
	movs r0, #0xfa
	lsls r0, r0, #3
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #2
	beq _0813F3E0
	ldr r1, _0813F3B8 @ =0x00000BE8
	adds r5, r4, r1
	cmp r0, #0
	blt _0813F44E
	cmp r0, #1
	bgt _0813F3C4
	ldr r0, _0813F3BC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F3C0 @ =sub_0813F4D8
	str r0, [r1]
	b _0813F44E
	.align 2, 0
_0813F3B8: .4byte 0x00000BE8
_0813F3BC: .4byte 0x000009CC
_0813F3C0: .4byte sub_0813F4D8
_0813F3C4:
	cmp r0, #4
	bgt _0813F44E
	cmp r0, #3
	blt _0813F44E
	ldr r0, _0813F3D8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F3DC @ =sub_0813F61C
	str r0, [r1]
	b _0813F44E
	.align 2, 0
_0813F3D8: .4byte 0x000009CC
_0813F3DC: .4byte sub_0813F61C
_0813F3E0:
	ldrb r0, [r4, #1]
	movs r2, #0
	adds r1, r0, #0
	ldr r0, _0813F40C @ =0x00000BE8
	adds r5, r4, r0
	cmp r1, #4
	bne _0813F3F8
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #2
	bne _0813F3F8
	movs r2, #1
_0813F3F8:
	cmp r2, #0
	beq _0813F418
	ldr r1, _0813F410 @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F414 @ =sub_08140198
	str r1, [r0]
	movs r0, #6
	strb r0, [r4, #2]
	b _0813F44E
	.align 2, 0
_0813F40C: .4byte 0x00000BE8
_0813F410: .4byte 0x000009CC
_0813F414: .4byte sub_08140198
_0813F418:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #5
	bne _0813F42C
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _0813F42C
	movs r1, #1
_0813F42C:
	cmp r1, #0
	beq _0813F448
	ldr r1, _0813F440 @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F444 @ =sub_08140198
	str r1, [r0]
	movs r0, #9
	strb r0, [r4, #2]
	b _0813F44E
	.align 2, 0
_0813F440: .4byte 0x000009CC
_0813F444: .4byte sub_08140198
_0813F448:
	adds r0, r4, #0
	bl sub_0813B61C
_0813F44E:
	ldr r1, [r5]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F480
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F470 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F474 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F478
	movs r0, #2
	b _0813F47E
	.align 2, 0
_0813F470: .4byte 0x000009CC
_0813F474: .4byte sub_0813FF6C
_0813F478:
	cmp r0, #5
	bne _0813F480
	movs r0, #7
_0813F47E:
	strb r0, [r4, #2]
_0813F480:
	ldr r0, _0813F4D0 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F49A
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F49A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	ldr r1, _0813F4D4 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813F4C8
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0813F4C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813F4D0: .4byte 0x000007D2
_0813F4D4: .4byte 0x000007D1

	thumb_func_start sub_0813F4D8
sub_0813F4D8: @ 0x0813F4D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F510 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0813F514 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F518 @ =sub_0813F56C
	str r0, [r1]
	ldr r1, _0813F51C @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F52C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F514 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F520 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F524
	movs r0, #2
	b _0813F52A
	.align 2, 0
_0813F510: .4byte 0x000009D8
_0813F514: .4byte 0x000009CC
_0813F518: .4byte sub_0813F56C
_0813F51C: .4byte 0x00000BE8
_0813F520: .4byte sub_0813FF6C
_0813F524:
	cmp r0, #5
	bne _0813F52C
	movs r0, #7
_0813F52A:
	strb r0, [r4, #2]
_0813F52C:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F568 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F550
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F550:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F568: .4byte 0x000007D2

	thumb_func_start sub_0813F56C
sub_0813F56C: @ 0x0813F56C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F5B0 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813F58A
	ldr r0, _0813F5B4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F5B8 @ =sub_0813EE48
	str r0, [r1]
_0813F58A:
	ldr r1, _0813F5BC @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F5CC
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F5B4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F5C0 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F5C4
	movs r0, #2
	b _0813F5CA
	.align 2, 0
_0813F5B0: .4byte 0x000009D8
_0813F5B4: .4byte 0x000009CC
_0813F5B8: .4byte sub_0813EE48
_0813F5BC: .4byte 0x00000BE8
_0813F5C0: .4byte sub_0813FF6C
_0813F5C4:
	cmp r0, #5
	bne _0813F5CC
	movs r0, #7
_0813F5CA:
	strb r0, [r4, #2]
_0813F5CC:
	ldr r1, _0813F614 @ =0x000009D8
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F618 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F5FC
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F5FC:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F614: .4byte 0x000009D8
_0813F618: .4byte 0x000007D2

	thumb_func_start sub_0813F61C
sub_0813F61C: @ 0x0813F61C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813F668 @ =0x000007D4
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0813F66C @ =0x000007D6
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0813F670 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r2, _0813F674 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F678 @ =sub_0813F6CC
	str r0, [r1]
	ldr r1, _0813F67C @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F68C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F674 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F680 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F684
	movs r0, #2
	b _0813F68A
	.align 2, 0
_0813F668: .4byte 0x000007D4
_0813F66C: .4byte 0x000007D6
_0813F670: .4byte 0x000009D8
_0813F674: .4byte 0x000009CC
_0813F678: .4byte sub_0813F6CC
_0813F67C: .4byte 0x00000BE8
_0813F680: .4byte sub_0813FF6C
_0813F684:
	cmp r0, #5
	bne _0813F68C
	movs r0, #7
_0813F68A:
	strb r0, [r4, #2]
_0813F68C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F6C8 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F6B0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F6B0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F6C8: .4byte 0x000007D2

	thumb_func_start sub_0813F6CC
sub_0813F6CC: @ 0x0813F6CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F718 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813F738
	ldr r1, _0813F71C @ =0x000007D9
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0813F720 @ =0x000007DC
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0813F724 @ =0x000007DE
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0813F730
	ldr r2, _0813F728 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F72C @ =sub_0813FB18
	b _0813F736
	.align 2, 0
_0813F718: .4byte 0x000009D8
_0813F71C: .4byte 0x000007D9
_0813F720: .4byte 0x000007DC
_0813F724: .4byte 0x000007DE
_0813F728: .4byte 0x000009CC
_0813F72C: .4byte sub_0813FB18
_0813F730:
	ldr r0, _0813F75C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F760 @ =sub_0813F7BC
_0813F736:
	str r0, [r1]
_0813F738:
	ldr r1, _0813F764 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F774
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F75C @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F768 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F76C
	movs r0, #2
	b _0813F772
	.align 2, 0
_0813F75C: .4byte 0x000009CC
_0813F760: .4byte sub_0813F7BC
_0813F764: .4byte 0x00000BE8
_0813F768: .4byte sub_0813FF6C
_0813F76C:
	cmp r0, #5
	bne _0813F774
	movs r0, #7
_0813F772:
	strb r0, [r4, #2]
_0813F774:
	ldr r1, _0813F7B4 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F7B8 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F79E
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F79E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F7B4: .4byte 0x000009D8
_0813F7B8: .4byte 0x000007D2

	thumb_func_start sub_0813F7BC
sub_0813F7BC: @ 0x0813F7BC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0813B6B0
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0813B548
	cmp r0, #0
	beq _0813F81C
	movs r0, #0xfa
	lsls r0, r0, #3
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #3
	beq _0813F81C
	ldr r1, _0813F7F0 @ =0x00000BE8
	adds r5, r4, r1
	cmp r0, #0
	blt _0813F88A
	cmp r0, #2
	ble _0813F7F4
	cmp r0, #4
	beq _0813F808
	b _0813F88A
	.align 2, 0
_0813F7F0: .4byte 0x00000BE8
_0813F7F4:
	ldr r0, _0813F800 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F804 @ =sub_0813F914
	str r0, [r1]
	b _0813F88A
	.align 2, 0
_0813F800: .4byte 0x000009CC
_0813F804: .4byte sub_0813F914
_0813F808:
	ldr r0, _0813F814 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F818 @ =sub_0813FB18
	str r0, [r1]
	b _0813F88A
	.align 2, 0
_0813F814: .4byte 0x000009CC
_0813F818: .4byte sub_0813FB18
_0813F81C:
	ldrb r0, [r4, #1]
	movs r2, #0
	adds r1, r0, #0
	ldr r0, _0813F848 @ =0x00000BE8
	adds r5, r4, r0
	cmp r1, #4
	bne _0813F834
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #2
	bne _0813F834
	movs r2, #1
_0813F834:
	cmp r2, #0
	beq _0813F854
	ldr r1, _0813F84C @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F850 @ =sub_08140198
	str r1, [r0]
	movs r0, #6
	strb r0, [r4, #2]
	b _0813F88A
	.align 2, 0
_0813F848: .4byte 0x00000BE8
_0813F84C: .4byte 0x000009CC
_0813F850: .4byte sub_08140198
_0813F854:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #5
	bne _0813F868
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _0813F868
	movs r1, #1
_0813F868:
	cmp r1, #0
	beq _0813F884
	ldr r1, _0813F87C @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F880 @ =sub_08140198
	str r1, [r0]
	movs r0, #9
	strb r0, [r4, #2]
	b _0813F88A
	.align 2, 0
_0813F87C: .4byte 0x000009CC
_0813F880: .4byte sub_08140198
_0813F884:
	adds r0, r4, #0
	bl sub_0813B61C
_0813F88A:
	ldr r1, [r5]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F8BC
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F8AC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F8B0 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F8B4
	movs r0, #2
	b _0813F8BA
	.align 2, 0
_0813F8AC: .4byte 0x000009CC
_0813F8B0: .4byte sub_0813FF6C
_0813F8B4:
	cmp r0, #5
	bne _0813F8BC
	movs r0, #7
_0813F8BA:
	strb r0, [r4, #2]
_0813F8BC:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F90C @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F8E0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F8E0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _0813F910 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813F904
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0813F904:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813F90C: .4byte 0x000007D2
_0813F910: .4byte 0x000007D1

	thumb_func_start sub_0813F914
sub_0813F914: @ 0x0813F914
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F94C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0813F950 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F954 @ =sub_0813F9A8
	str r0, [r1]
	ldr r1, _0813F958 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F968
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F950 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F95C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F960
	movs r0, #2
	b _0813F966
	.align 2, 0
_0813F94C: .4byte 0x000009D8
_0813F950: .4byte 0x000009CC
_0813F954: .4byte sub_0813F9A8
_0813F958: .4byte 0x00000BE8
_0813F95C: .4byte sub_0813FF6C
_0813F960:
	cmp r0, #5
	bne _0813F968
	movs r0, #7
_0813F966:
	strb r0, [r4, #2]
_0813F968:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F9A4 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F98C
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F98C:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F9A4: .4byte 0x000007D2

	thumb_func_start sub_0813F9A8
sub_0813F9A8: @ 0x0813F9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F9E4 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813FA8C
	ldr r1, _0813F9E8 @ =0x00000BE8
	adds r0, r4, r1
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	ldr r2, _0813F9EC @ =0x000007D1
	adds r0, r4, r2
	strb r1, [r0]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0813FA8C
	lsls r0, r0, #2
	ldr r1, _0813F9F0 @ =_0813F9F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813F9E4: .4byte 0x000009D8
_0813F9E8: .4byte 0x00000BE8
_0813F9EC: .4byte 0x000007D1
_0813F9F0: .4byte _0813F9F4
_0813F9F4: @ jump table
	.4byte _0813FA08 @ case 0
	.4byte _0813FA08 @ case 1
	.4byte _0813FA18 @ case 2
	.4byte _0813FA50 @ case 3
	.4byte _0813FA84 @ case 4
_0813FA08:
	ldr r2, _0813FA10 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FA14 @ =sub_0813F4D8
	b _0813FA8A
	.align 2, 0
_0813FA10: .4byte 0x000009CC
_0813FA14: .4byte sub_0813F4D8
_0813FA18:
	ldr r1, _0813FA34 @ =0x000007D1
	adds r0, r4, r1
	movs r2, #0xfa
	lsls r2, r2, #3
	adds r1, r4, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0813FA40
	ldr r0, _0813FA38 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FA3C @ =sub_0813F4D8
	b _0813FA8A
	.align 2, 0
_0813FA34: .4byte 0x000007D1
_0813FA38: .4byte 0x000009CC
_0813FA3C: .4byte sub_0813F4D8
_0813FA40:
	ldr r2, _0813FA48 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FA4C @ =sub_0813F380
	b _0813FA8A
	.align 2, 0
_0813FA48: .4byte 0x000009CC
_0813FA4C: .4byte sub_0813F380
_0813FA50:
	ldr r1, _0813FA6C @ =0x000007D1
	adds r0, r4, r1
	movs r2, #0xfa
	lsls r2, r2, #3
	adds r1, r4, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0813FA78
	ldr r0, _0813FA70 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FA74 @ =sub_0813F4D8
	b _0813FA8A
	.align 2, 0
_0813FA6C: .4byte 0x000007D1
_0813FA70: .4byte 0x000009CC
_0813FA74: .4byte sub_0813F4D8
_0813FA78:
	ldr r2, _0813FA80 @ =0x000009CC
	adds r1, r4, r2
	b _0813FA88
	.align 2, 0
_0813FA80: .4byte 0x000009CC
_0813FA84:
	ldr r0, _0813FAB0 @ =0x000009CC
	adds r1, r4, r0
_0813FA88:
	ldr r0, _0813FAB4 @ =sub_0813F61C
_0813FA8A:
	str r0, [r1]
_0813FA8C:
	ldr r1, _0813FAB8 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FAC8
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FAB0 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FABC @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FAC0
	movs r0, #2
	b _0813FAC6
	.align 2, 0
_0813FAB0: .4byte 0x000009CC
_0813FAB4: .4byte sub_0813F61C
_0813FAB8: .4byte 0x00000BE8
_0813FABC: .4byte sub_0813FF6C
_0813FAC0:
	cmp r0, #5
	bne _0813FAC8
	movs r0, #7
_0813FAC6:
	strb r0, [r4, #2]
_0813FAC8:
	ldr r1, _0813FB10 @ =0x000009D8
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B8B0
	ldr r2, _0813FB14 @ =0x000007D2
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FAF8
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FAF8:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FB10: .4byte 0x000009D8
_0813FB14: .4byte 0x000007D2

	thumb_func_start sub_0813FB18
sub_0813FB18: @ 0x0813FB18
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813FB64 @ =0x000007D4
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0813FB68 @ =0x000007D6
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0813FB6C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r2, _0813FB70 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FB74 @ =sub_0813FBC8
	str r0, [r1]
	ldr r1, _0813FB78 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FB88
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FB70 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FB7C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FB80
	movs r0, #2
	b _0813FB86
	.align 2, 0
_0813FB64: .4byte 0x000007D4
_0813FB68: .4byte 0x000007D6
_0813FB6C: .4byte 0x000009D8
_0813FB70: .4byte 0x000009CC
_0813FB74: .4byte sub_0813FBC8
_0813FB78: .4byte 0x00000BE8
_0813FB7C: .4byte sub_0813FF6C
_0813FB80:
	cmp r0, #5
	bne _0813FB88
	movs r0, #7
_0813FB86:
	strb r0, [r4, #2]
_0813FB88:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FBC4 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FBAC
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FBAC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FBC4: .4byte 0x000007D2

	thumb_func_start sub_0813FBC8
sub_0813FBC8: @ 0x0813FBC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813FC2C @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813FC06
	ldr r1, _0813FC30 @ =0x000007DA
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0813FC34 @ =0x000007DD
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0813FC38 @ =0x000007DE
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0813FC3C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FC40 @ =sub_0813FC9C
	str r0, [r1]
_0813FC06:
	ldr r1, _0813FC44 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FC54
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FC3C @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FC48 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FC4C
	movs r0, #2
	b _0813FC52
	.align 2, 0
_0813FC2C: .4byte 0x000009D8
_0813FC30: .4byte 0x000007DA
_0813FC34: .4byte 0x000007DD
_0813FC38: .4byte 0x000007DE
_0813FC3C: .4byte 0x000009CC
_0813FC40: .4byte sub_0813FC9C
_0813FC44: .4byte 0x00000BE8
_0813FC48: .4byte sub_0813FF6C
_0813FC4C:
	cmp r0, #5
	bne _0813FC54
	movs r0, #7
_0813FC52:
	strb r0, [r4, #2]
_0813FC54:
	ldr r1, _0813FC94 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FC98 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FC7E
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FC7E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FC94: .4byte 0x000009D8
_0813FC98: .4byte 0x000007D2

	thumb_func_start sub_0813FC9C
sub_0813FC9C: @ 0x0813FC9C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0813B6B0
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0813B548
	cmp r0, #0
	beq _0813FCCC
	ldr r0, _0813FCC0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FCC4 @ =sub_0813FDC4
	str r0, [r1]
	ldr r1, _0813FCC8 @ =0x00000BE8
	adds r5, r4, r1
	b _0813FD3A
	.align 2, 0
_0813FCC0: .4byte 0x000009CC
_0813FCC4: .4byte sub_0813FDC4
_0813FCC8: .4byte 0x00000BE8
_0813FCCC:
	ldrb r0, [r4, #1]
	movs r2, #0
	adds r1, r0, #0
	ldr r0, _0813FCF8 @ =0x00000BE8
	adds r5, r4, r0
	cmp r1, #4
	bne _0813FCE4
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #2
	bne _0813FCE4
	movs r2, #1
_0813FCE4:
	cmp r2, #0
	beq _0813FD04
	ldr r1, _0813FCFC @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813FD00 @ =sub_08140198
	str r1, [r0]
	movs r0, #6
	strb r0, [r4, #2]
	b _0813FD3A
	.align 2, 0
_0813FCF8: .4byte 0x00000BE8
_0813FCFC: .4byte 0x000009CC
_0813FD00: .4byte sub_08140198
_0813FD04:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #5
	bne _0813FD18
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _0813FD18
	movs r1, #1
_0813FD18:
	cmp r1, #0
	beq _0813FD34
	ldr r1, _0813FD2C @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813FD30 @ =sub_08140198
	str r1, [r0]
	movs r0, #9
	strb r0, [r4, #2]
	b _0813FD3A
	.align 2, 0
_0813FD2C: .4byte 0x000009CC
_0813FD30: .4byte sub_08140198
_0813FD34:
	adds r0, r4, #0
	bl sub_0813B61C
_0813FD3A:
	ldr r1, [r5]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FD6C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813FD5C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FD60 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FD64
	movs r0, #2
	b _0813FD6A
	.align 2, 0
_0813FD5C: .4byte 0x000009CC
_0813FD60: .4byte sub_0813FF6C
_0813FD64:
	cmp r0, #5
	bne _0813FD6C
	movs r0, #7
_0813FD6A:
	strb r0, [r4, #2]
_0813FD6C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FDBC @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FD90
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FD90:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _0813FDC0 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813FDB4
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0813FDB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813FDBC: .4byte 0x000007D2
_0813FDC0: .4byte 0x000007D1

	thumb_func_start sub_0813FDC4
sub_0813FDC4: @ 0x0813FDC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813FDFC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0813FE00 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FE04 @ =sub_0813FE58
	str r0, [r1]
	ldr r1, _0813FE08 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FE18
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813FE00 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FE0C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FE10
	movs r0, #2
	b _0813FE16
	.align 2, 0
_0813FDFC: .4byte 0x000009D8
_0813FE00: .4byte 0x000009CC
_0813FE04: .4byte sub_0813FE58
_0813FE08: .4byte 0x00000BE8
_0813FE0C: .4byte sub_0813FF6C
_0813FE10:
	cmp r0, #5
	bne _0813FE18
	movs r0, #7
_0813FE16:
	strb r0, [r4, #2]
_0813FE18:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FE54 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FE3C
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FE3C:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FE54: .4byte 0x000007D2

	thumb_func_start sub_0813FE58
sub_0813FE58: @ 0x0813FE58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813FE90 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813FEE0
	ldr r1, _0813FE94 @ =0x00000BE8
	adds r0, r4, r1
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	ldr r2, _0813FE98 @ =0x000007D1
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0813FEB0
	cmp r0, #3
	ble _0813FE9C
	cmp r0, #4
	beq _0813FED8
	b _0813FEE0
	.align 2, 0
_0813FE90: .4byte 0x000009D8
_0813FE94: .4byte 0x00000BE8
_0813FE98: .4byte 0x000007D1
_0813FE9C:
	cmp r0, #0
	blt _0813FEE0
	ldr r0, _0813FEA8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FEAC @ =sub_0813F914
	b _0813FEDE
	.align 2, 0
_0813FEA8: .4byte 0x000009CC
_0813FEAC: .4byte sub_0813F914
_0813FEB0:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo _0813FEC8
	ldr r2, _0813FEC0 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FEC4 @ =sub_0813F914
	b _0813FEDE
	.align 2, 0
_0813FEC0: .4byte 0x000009CC
_0813FEC4: .4byte sub_0813F914
_0813FEC8:
	ldr r0, _0813FED0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FED4 @ =sub_0813F7BC
	b _0813FEDE
	.align 2, 0
_0813FED0: .4byte 0x000009CC
_0813FED4: .4byte sub_0813F7BC
_0813FED8:
	ldr r2, _0813FF04 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FF08 @ =sub_0813FB18
_0813FEDE:
	str r0, [r1]
_0813FEE0:
	ldr r1, _0813FF0C @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FF1C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FF04 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FF10 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FF14
	movs r0, #2
	b _0813FF1A
	.align 2, 0
_0813FF04: .4byte 0x000009CC
_0813FF08: .4byte sub_0813FB18
_0813FF0C: .4byte 0x00000BE8
_0813FF10: .4byte sub_0813FF6C
_0813FF14:
	cmp r0, #5
	bne _0813FF1C
	movs r0, #7
_0813FF1A:
	strb r0, [r4, #2]
_0813FF1C:
	ldr r1, _0813FF64 @ =0x000009D8
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813BA90
	ldr r2, _0813FF68 @ =0x000007D2
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FF4C
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FF4C:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FF64: .4byte 0x000009D8
_0813FF68: .4byte 0x000007D2

	thumb_func_start sub_0813FF6C
sub_0813FF6C: @ 0x0813FF6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r6, _08140014 @ =gUnk_082D7850
	ldr r4, _08140018 @ =gUnk_08385C14
	ldr r5, _0814001C @ =gLanguage
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r4, #0x1e
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08140020 @ =0x05000120
	movs r2, #0x10
	bl CpuSet
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	movs r2, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r2, r3
	ldr r3, _08140024 @ =0x0600F800
	adds r7, r2, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813FFE0
_0813FFC4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813FFC4
_0813FFE0:
	ldr r5, _08140028 @ =gMainFlags
	ldr r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r4
	cmp r0, #0
	beq _0814002C
	ldr r2, _08140014 @ =gUnk_082D7850
	ldr r1, _08140018 @ =gUnk_08385C14
	ldr r0, _0814001C @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x1e
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl LoadBgPaletteWithTransformation
	b _08140058
	.align 2, 0
_08140014: .4byte gUnk_082D7850
_08140018: .4byte gUnk_08385C14
_0814001C: .4byte gLanguage
_08140020: .4byte 0x05000120
_08140024: .4byte 0x0600F800
_08140028: .4byte gMainFlags
_0814002C:
	ldr r2, _08140090 @ =0x040000D4
	ldr r3, _08140094 @ =gUnk_082D7850
	ldr r1, _08140098 @ =gUnk_08385C14
	ldr r0, _0814009C @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x1e
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _081400A0 @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _081400A4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r4, r0
	str r4, [r5]
_08140058:
	ldr r1, _08140090 @ =0x040000D4
	ldr r0, _081400A8 @ =0x000009DA
	add r0, r8
	str r0, [r1]
	ldr r0, _081400A0 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _081400AC @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _081400B0 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _081400B4 @ =0x000009CC
	add r1, r8
	ldr r0, _081400B8 @ =sub_08142B0C
	str r0, [r1]
	mov r0, r8
	adds r0, #0xc
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140090: .4byte 0x040000D4
_08140094: .4byte gUnk_082D7850
_08140098: .4byte gUnk_08385C14
_0814009C: .4byte gLanguage
_081400A0: .4byte gBgPalette
_081400A4: .4byte 0x80000100
_081400A8: .4byte 0x000009DA
_081400AC: .4byte 0x80000090
_081400B0: .4byte gMainFlags
_081400B4: .4byte 0x000009CC
_081400B8: .4byte sub_08142B0C

	thumb_func_start sub_081400BC
sub_081400BC: @ 0x081400BC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0814010C @ =0x01002000
	bl CpuSet
	mov r1, sp
	ldr r2, _08140110 @ =0x000001FF
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	ldr r1, _08140114 @ =0x0600F800
	ldr r2, _08140118 @ =0x01000400
	bl CpuSet
	ldr r3, _0814011C @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08140124
	ldr r0, _08140120 @ =gUnk_082D7850
	movs r5, #0xe3
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl LoadBgPaletteWithTransformation
	b _08140144
	.align 2, 0
_0814010C: .4byte 0x01002000
_08140110: .4byte 0x000001FF
_08140114: .4byte 0x0600F800
_08140118: .4byte 0x01000400
_0814011C: .4byte gMainFlags
_08140120: .4byte gUnk_082D7850
_08140124:
	ldr r1, _08140160 @ =0x040000D4
	ldr r0, _08140164 @ =gUnk_082D7850
	movs r5, #0xe3
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r0, _08140168 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0814016C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08140144:
	ldr r1, _08140170 @ =gBgScrollRegs
	movs r0, #0x18
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_0813AB40
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0814017C
	ldr r0, _08140174 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140178 @ =sub_0813CDE4
	b _08140186
	.align 2, 0
_08140160: .4byte 0x040000D4
_08140164: .4byte gUnk_082D7850
_08140168: .4byte gBgPalette
_0814016C: .4byte 0x80000100
_08140170: .4byte gBgScrollRegs
_08140174: .4byte 0x000009CC
_08140178: .4byte sub_0813CDE4
_0814017C:
	cmp r0, #5
	bne _08140188
	ldr r2, _08140190 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _08140194 @ =sub_08140E40
_08140186:
	str r0, [r1]
_08140188:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08140190: .4byte 0x000009CC
_08140194: .4byte sub_08140E40

	thumb_func_start sub_08140198
sub_08140198: @ 0x08140198
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _081401E8 @ =gBldRegs
	movs r2, #0
	movs r0, #0x97
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _081401EC @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _081401F0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081401F4 @ =sub_08140284
	str r0, [r1]
	ldr r0, _081401F8 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _081401D0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_081401D0:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08140254
	lsls r0, r0, #2
	ldr r1, _081401FC @ =_08140200
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081401E8: .4byte gBldRegs
_081401EC: .4byte 0x000009D8
_081401F0: .4byte 0x000009CC
_081401F4: .4byte sub_08140284
_081401F8: .4byte 0x000007D2
_081401FC: .4byte _08140200
_08140200: @ jump table
	.4byte _08140214 @ case 0
	.4byte _08140214 @ case 1
	.4byte _0814022E @ case 2
	.4byte _08140242 @ case 3
	.4byte _0814024C @ case 4
_08140214:
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	b _0814023A
_0814022E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B7E0
	movs r1, #0xb2
	lsls r1, r1, #3
_0814023A:
	adds r0, r4, r1
	bl sub_0815604C
	b _08140254
_08140242:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B9C0
	b _08140254
_0814024C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813BBA0
_08140254:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _08140280 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814027A
	subs r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _0814027A
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0814027A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08140280: .4byte 0x000007D1

	thumb_func_start sub_08140284
sub_08140284: @ 0x08140284
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _081402E4 @ =0x000009D8
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r5, _081402E8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	blt _081402B2
	ldr r0, _081402EC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _081402F0 @ =sub_08142BCC
	str r0, [r1]
_081402B2:
	ldr r0, _081402F4 @ =0x000007D2
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _081402CC
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_081402CC:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08140350
	lsls r0, r0, #2
	ldr r1, _081402F8 @ =_081402FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081402E4: .4byte 0x000009D8
_081402E8: .4byte gBldRegs
_081402EC: .4byte 0x000009CC
_081402F0: .4byte sub_08142BCC
_081402F4: .4byte 0x000007D2
_081402F8: .4byte _081402FC
_081402FC: @ jump table
	.4byte _08140310 @ case 0
	.4byte _08140310 @ case 1
	.4byte _0814032A @ case 2
	.4byte _0814033E @ case 3
	.4byte _08140348 @ case 4
_08140310:
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	b _08140336
_0814032A:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0813B7E0
	movs r1, #0xb2
	lsls r1, r1, #3
_08140336:
	adds r0, r6, r1
	bl sub_0815604C
	b _08140350
_0814033E:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0813B9C0
	b _08140350
_08140348:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0813BBA0
_08140350:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _0814037C @ =0x000007D1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08140376
	subs r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _08140376
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
_08140376:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814037C: .4byte 0x000007D1

	thumb_func_start sub_08140380
sub_08140380: @ 0x08140380
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _081403D0 @ =0x00000BE8
	adds r0, r4, r1
	ldr r7, [r0]
	adds r0, r4, #0
	bl sub_0813AB40
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _081403D4 @ =0x01002000
	bl CpuSet
	mov r1, sp
	ldr r2, _081403D8 @ =0x000001FF
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	ldr r1, _081403DC @ =0x0600F800
	ldr r2, _081403E0 @ =0x01000400
	bl CpuSet
	ldr r1, _081403E4 @ =gBgScrollRegs
	movs r6, #0
	movs r0, #0x18
	strh r0, [r1, #2]
	ldrb r0, [r4, #2]
	cmp r0, #6
	beq _08140418
	cmp r0, #6
	bgt _081403E8
	cmp r0, #2
	beq _081403F2
	b _08140488
	.align 2, 0
_081403D0: .4byte 0x00000BE8
_081403D4: .4byte 0x01002000
_081403D8: .4byte 0x000001FF
_081403DC: .4byte 0x0600F800
_081403E0: .4byte 0x01000400
_081403E4: .4byte gBgScrollRegs
_081403E8:
	cmp r0, #7
	beq _08140404
	cmp r0, #9
	beq _0814042C
	b _08140488
_081403F2:
	ldr r0, _081403FC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140400 @ =sub_0813CDE4
	str r0, [r1]
	b _08140488
	.align 2, 0
_081403FC: .4byte 0x000009CC
_08140400: .4byte sub_0813CDE4
_08140404:
	ldr r2, _08140410 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _08140414 @ =sub_08140E40
	str r0, [r1]
	b _08140488
	.align 2, 0
_08140410: .4byte 0x000009CC
_08140414: .4byte sub_08140E40
_08140418:
	ldr r0, _08140424 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140428 @ =sub_08142C24
	str r0, [r1]
	b _08140488
	.align 2, 0
_08140424: .4byte 0x000009CC
_08140428: .4byte sub_08142C24
_0814042C:
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08140448
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08140448:
	ldr r0, _08140490 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	add r0, sp, #4
	ldr r1, _08140494 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08140498 @ =gBgPalette
	ldr r5, _0814049C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	ldr r1, _081404A0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _081404A4 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	adds r0, r7, #0
	bl sub_08032BD4
	ldr r0, _081404A8 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
_08140488:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140490: .4byte gCurTask
_08140494: .4byte 0x00007FFF
_08140498: .4byte gBgPalette
_0814049C: .4byte 0x01000100
_081404A0: .4byte gObjPalette
_081404A4: .4byte gMainFlags
_081404A8: .4byte gBldRegs

	thumb_func_start sub_081404AC
sub_081404AC: @ 0x081404AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #1]
	movs r1, #0
	strb r0, [r6]
	movs r0, #6
	strb r0, [r6, #1]
	ldr r2, _0814064C @ =0x000009C8
	adds r0, r6, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldr r0, _08140650 @ =0x00000BE8
	adds r5, r6, r0
	ldr r0, [r5]
	ldrb r0, [r0, #0x11]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r4, r6, r1
	strb r0, [r4]
	ldr r0, [r5]
	ldrb r1, [r0, #0x10]
	ldr r2, _08140654 @ =0x000007D1
	adds r0, r6, r2
	strb r1, [r0]
	bl sub_0802E57C
	ldr r2, _08140658 @ =0x00000BEC
	adds r1, r6, r2
	str r0, [r1]
	movs r3, #0
	ldrb r0, [r4]
	cmp r3, r0
	bhs _08140516
	ldr r1, _0814065C @ =0x000009C4
	adds r7, r6, r1
_081404FC:
	adds r2, r7, r3
	ldr r0, [r5]
	lsls r1, r3, #1
	adds r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r2, [r4]
	cmp r3, r2
	blo _081404FC
_08140516:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r3, [r0]
	ldr r5, _08140660 @ =gDispCnt
	ldr r2, _08140664 @ =gUnk_08385C14
	mov sb, r2
	ldr r0, _08140668 @ =gLanguage
	mov r8, r0
	ldr r1, _0814066C @ =gUnk_082D7850
	mov ip, r1
	adds r7, r6, #0
	adds r7, #0xc
	cmp r3, #3
	bhi _0814054C
	ldr r0, _0814065C @ =0x000009C4
	adds r2, r6, r0
	movs r4, #0xff
_0814053A:
	adds r0, r2, r3
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0814053A
_0814054C:
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #5
	mov r1, sb
	adds r1, #0x1c
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r5, [r1, #2]
	ldr r1, _08140670 @ =0x0600FD40
	mov sb, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _081405A2
_08140586:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	add r1, sb
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08140586
_081405A2:
	ldr r1, _08140674 @ =0x040000D4
	ldr r2, _08140678 @ =0x000009DA
	adds r0, r6, r2
	str r0, [r1]
	ldr r0, _0814067C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08140680 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08140684 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r5, #0
	movs r3, #0
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r4, _08140688 @ =gUnk_08385CD4
	ldr r2, _08140668 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	strh r0, [r7, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x2a]
	strb r0, [r7, #0x1a]
	strh r3, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r4, #0x10
	strb r4, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	strh r3, [r7, #0x10]
	strh r3, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0x48
	strh r0, [r1]
	ldr r1, _0814068C @ =0x0000029E
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, _08140690 @ =0x000002A7
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08155128
	adds r0, r6, #0
	bl sub_0813A464
	ldr r2, _08140694 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _08140698 @ =sub_08142C9C
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814064C: .4byte 0x000009C8
_08140650: .4byte 0x00000BE8
_08140654: .4byte 0x000007D1
_08140658: .4byte 0x00000BEC
_0814065C: .4byte 0x000009C4
_08140660: .4byte gDispCnt
_08140664: .4byte gUnk_08385C14
_08140668: .4byte gLanguage
_0814066C: .4byte gUnk_082D7850
_08140670: .4byte 0x0600FD40
_08140674: .4byte 0x040000D4
_08140678: .4byte 0x000009DA
_0814067C: .4byte gBgPalette
_08140680: .4byte 0x80000090
_08140684: .4byte gMainFlags
_08140688: .4byte gUnk_08385CD4
_0814068C: .4byte 0x0000029E
_08140690: .4byte 0x000002A7
_08140694: .4byte 0x000009CC
_08140698: .4byte sub_08142C9C

	thumb_func_start sub_0814069C
sub_0814069C: @ 0x0814069C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08140794 @ =0x000009D8
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, _08140798 @ =gBldRegs
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
	movs r5, #0
	ldr r7, _0814079C @ =gBgScrollRegs
_081406C2:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r3, _08140794 @ =0x000009D8
	adds r0, r6, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r1, r0, #0
	adds r0, #0xf0
	movs r3, #0xbb
	lsls r3, r3, #2
	adds r4, r4, r3
	strh r0, [r4]
	lsls r2, r5, #4
	subs r2, r2, r5
	lsls r2, r2, #3
	adds r2, r6, r2
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, _081407A0 @ =0x000007F4
	adds r0, r2, r3
	strh r1, [r0]
	ldrh r0, [r4]
	adds r0, #0x78
	adds r3, #0x28
	adds r1, r2, r3
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #0x80
	ldr r1, _081407A4 @ =0x00000844
	adds r2, r2, r1
	strh r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _081406C2
	ldr r2, _08140794 @ =0x000009D8
	adds r4, r6, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0x68
	muls r0, r1, r0
	movs r1, #0xf
	bl __divsi3
	subs r0, #0x20
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #0xf
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r6, #0x1c]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xf
	bl __divsi3
	strh r0, [r7, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xe
	ble _08140772
	ldr r2, _081407A8 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _081407AC @ =sub_08142CBC
	str r0, [r1]
_08140772:
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r0, r6, r3
	bl sub_08155128
	cmp r0, #0
	bne _08140788
	ldr r0, _081407B0 @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_08140788:
	adds r0, r6, #0
	bl sub_0813AEC8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140794: .4byte 0x000009D8
_08140798: .4byte gBldRegs
_0814079C: .4byte gBgScrollRegs
_081407A0: .4byte 0x000007F4
_081407A4: .4byte 0x00000844
_081407A8: .4byte 0x000009CC
_081407AC: .4byte sub_08142CBC
_081407B0: .4byte 0x000002A7

	thumb_func_start sub_081407B4
sub_081407B4: @ 0x081407B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08140844 @ =0x000009C8
	adds r5, r4, r0
	ldrb r0, [r5]
	ldr r1, _08140848 @ =0x000009C9
	adds r6, r4, r1
	strb r0, [r6]
	ldr r2, _0814084C @ =0x00000BE8
	adds r1, r4, r2
	ldr r0, [r1]
	ldrb r0, [r0, #0x12]
	strb r0, [r5]
	ldr r0, [r1]
	ldrh r0, [r0, #0xe]
	cmp r0, #4
	bne _081407E4
	ldr r0, _08140850 @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _08140854 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140858 @ =sub_08142D04
	str r0, [r1]
_081407E4:
	ldrb r0, [r5]
	ldrb r6, [r6]
	cmp r0, r6
	beq _08140814
	ldr r0, _0814085C @ =0x0000021D
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_0813B3C8
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x10
	ldr r2, _08140860 @ =0x0000029E
	adds r1, r4, r2
	strh r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
_08140814:
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_08155128
	cmp r0, #0
	bne _0814082A
	ldr r0, _08140864 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_0814082A:
	adds r0, r4, #0
	bl sub_0813AEC8
	ldr r1, _08140868 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08140844: .4byte 0x000009C8
_08140848: .4byte 0x000009C9
_0814084C: .4byte 0x00000BE8
_08140850: .4byte 0x0000021E
_08140854: .4byte 0x000009CC
_08140858: .4byte sub_08142D04
_0814085C: .4byte 0x0000021D
_08140860: .4byte 0x0000029E
_08140864: .4byte 0x000002A7
_08140868: .4byte 0x00000BDC

	thumb_func_start sub_0814086C
sub_0814086C: @ 0x0814086C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08140954 @ =0x000009D8
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, _08140958 @ =gBldRegs
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r4, #4]
	movs r6, #0
	ldr r7, _0814095C @ =gBgScrollRegs
_0814088E:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, r5, r4
	ldr r3, _08140954 @ =0x000009D8
	adds r0, r5, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x98
	muls r0, r1, r0
	movs r1, #0xf
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x58
	movs r3, #0xbb
	lsls r3, r3, #2
	adds r4, r4, r3
	strh r1, [r4]
	lsls r2, r6, #4
	subs r2, r2, r6
	lsls r2, r2, #3
	adds r2, r5, r2
	adds r0, #0xc8
	ldr r3, _08140960 @ =0x000007F4
	adds r1, r2, r3
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #0x78
	adds r3, #0x28
	adds r1, r2, r3
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #0x80
	ldr r1, _08140964 @ =0x00000844
	adds r2, r2, r1
	strh r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0814088E
	ldr r2, _08140954 @ =0x000009D8
	adds r4, r5, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x48
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #0x1c]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x18
	strh r0, [r7, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xe
	ble _08140974
	ldr r2, _08140968 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0814096C @ =sub_08142D68
	str r0, [r1]
	ldr r3, _08140970 @ =0x00000BDC
	adds r0, r5, r3
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	b _0814099C
	.align 2, 0
_08140954: .4byte 0x000009D8
_08140958: .4byte gBldRegs
_0814095C: .4byte gBgScrollRegs
_08140960: .4byte 0x000007F4
_08140964: .4byte 0x00000844
_08140968: .4byte 0x000009CC
_0814096C: .4byte sub_08142D68
_08140970: .4byte 0x00000BDC
_08140974:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0814098A
	ldr r2, _081409A4 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0814098A:
	adds r0, r5, #0
	bl sub_0813AEC8
	ldr r3, _081409A8 @ =0x00000BDC
	adds r0, r5, r3
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0814099C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081409A4: .4byte 0x000002A7
_081409A8: .4byte 0x00000BDC

	thumb_func_start sub_081409AC
sub_081409AC: @ 0x081409AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, _08140A08 @ =0x000009D8
	adds r5, r7, r0
	ldrh r4, [r5]
	adds r4, #1
	movs r1, #0
	mov r8, r1
	strh r4, [r5]
	ldr r6, _08140A0C @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _081409FC
	mov r0, r8
	strh r0, [r6]
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	ldr r1, _08140A10 @ =0x00000BEC
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_0802FBF4
	mov r0, r8
	strh r0, [r5]
	ldr r0, _08140A14 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _08140A18 @ =sub_08142E0C
	str r0, [r1]
_081409FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140A08: .4byte 0x000009D8
_08140A0C: .4byte gBldRegs
_08140A10: .4byte 0x00000BEC
_08140A14: .4byte 0x000009CC
_08140A18: .4byte sub_08142E0C

	thumb_func_start sub_08140A1C
sub_08140A1C: @ 0x08140A1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #1]
	movs r4, #0
	strb r0, [r7]
	movs r0, #7
	strb r0, [r7, #1]
	ldr r1, _08140B1C @ =0x000009CB
	adds r0, r7, r1
	strb r4, [r0]
	ldr r2, _08140B20 @ =0x000009CA
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0xd
	adds r0, r7, r1
	movs r6, #0
	strh r4, [r0]
	adds r0, r7, #0
	bl sub_0813A6D0
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	ldr r3, _08140B24 @ =gUnk_08385CD4
	ldr r5, _08140B28 @ =gLanguage
	ldrh r2, [r5]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #0xc]
	ldrh r2, [r5]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #0x12]
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	ldr r1, _08140B2C @ =0x0000FF64
	strh r1, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	ldr r1, _08140B30 @ =gUnk_08385C14
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r1, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08140B34 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r2, _08140B38 @ =0x0600FD40
	mov r8, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	cmp r4, r5
	bhs _08140ADC
_08140AC0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08140AC0
_08140ADC:
	adds r0, r7, #4
	ldrb r1, [r7, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x10
	cmp r0, #0
	bne _08140AEC
	movs r1, #0x20
_08140AEC:
	ldr r2, _08140B3C @ =0x0000029E
	adds r0, r7, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08155128
	ldr r2, _08140B40 @ =0x000009CC
	adds r1, r7, r2
	ldr r0, _08140B44 @ =sub_08142FD0
	str r0, [r1]
	ldr r1, _08140B48 @ =0x00000BDC
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140B1C: .4byte 0x000009CB
_08140B20: .4byte 0x000009CA
_08140B24: .4byte gUnk_08385CD4
_08140B28: .4byte gLanguage
_08140B2C: .4byte 0x0000FF64
_08140B30: .4byte gUnk_08385C14
_08140B34: .4byte gUnk_082D7850
_08140B38: .4byte 0x0600FD40
_08140B3C: .4byte 0x0000029E
_08140B40: .4byte 0x000009CC
_08140B44: .4byte sub_08142FD0
_08140B48: .4byte 0x00000BDC

	thumb_func_start sub_08140B4C
sub_08140B4C: @ 0x08140B4C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08140BD4 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _08140B7C
	ldr r0, _08140BD8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08140BDC @ =sub_08143040
	str r0, [r1]
_08140B7C:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08140B94
	ldr r0, _08140BE0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08140B94:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08140BA4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08140BA4
	ldr r1, _08140BE4 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08140BD4: .4byte 0x000009D8
_08140BD8: .4byte 0x000009CC
_08140BDC: .4byte sub_08143040
_08140BE0: .4byte 0x000002A7
_08140BE4: .4byte 0x00000BDC

	thumb_func_start sub_08140BE8
sub_08140BE8: @ 0x08140BE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, r5, #4
	ldrb r1, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #4
	cmp r0, #0
	bne _08140C02
	movs r1, #3
_08140C02:
	adds r7, r1, #0
	ldr r2, _08140CC0 @ =0x000009D8
	adds r1, r5, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xc
	adds r1, r1, r5
	mov sb, r1
	cmp r6, r7
	bhs _08140C58
_08140C22:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, r5, r4
	ldr r2, _08140CC0 @ =0x000009D8
	adds r0, r5, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0xf0
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _08140C22
_08140C58:
	ldr r2, _08140CC0 @ =0x000009D8
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	ble _08140C6C
	subs r2, #0xc
	adds r1, r5, r2
	ldr r0, _08140CC4 @ =sub_081430C0
	str r0, [r1]
_08140C6C:
	mov r0, r8
	bl sub_08155128
	cmp r0, #0
	bne _08140C7E
	ldr r0, _08140CC8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08140C7E:
	mov r0, sb
	bl sub_0815604C
	mov r0, r8
	bl sub_0815604C
	movs r4, #0
_08140C8C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08140C8C
	ldr r2, _08140CCC @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140CC0: .4byte 0x000009D8
_08140CC4: .4byte sub_081430C0
_08140CC8: .4byte 0x000002A7
_08140CCC: .4byte 0x00000BDC

	thumb_func_start sub_08140CD0
sub_08140CD0: @ 0x08140CD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r0, r6, #4
	ldrb r1, [r6, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #4
	cmp r7, #0
	bne _08140CEE
	movs r0, #3
_08140CEE:
	mov sb, r0
	ldr r2, _08140D28 @ =0x000009D8
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	adds r1, r6, #0
	adds r1, #0xc
	str r1, [sp]
	cmp r5, sb
	bhs _08140D7E
_08140D0E:
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #3
	adds r0, r0, r6
	mov r8, r0
	cmp r7, #0
	bne _08140D2C
	lsls r0, r1, #2
	adds r0, r0, r5
	adds r2, r0, #0
	adds r2, #0x2b
	b _08140D34
	.align 2, 0
_08140D28: .4byte 0x000009D8
_08140D2C:
	lsls r0, r1, #2
	adds r0, r0, r5
	adds r2, r0, #0
	adds r2, #0x1b
_08140D34:
	ldr r1, _08140D48 @ =0x000009D8
	adds r0, r6, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	cmp r7, #0
	bne _08140D4C
	lsls r0, r5, #3
	adds r4, r0, #0
	adds r4, #0x2b
	b _08140D52
	.align 2, 0
_08140D48: .4byte 0x000009D8
_08140D4C:
	lsls r0, r5, #3
	adds r4, r0, #0
	adds r4, #0x1b
_08140D52:
	adds r1, r0, #0
	cmp r7, #0
	bne _08140D5E
	adds r0, r2, #0
	subs r0, #0x2b
	b _08140D62
_08140D5E:
	adds r0, r2, #0
	subs r0, #0x1b
_08140D62:
	subs r0, r0, r1
	muls r0, r3, r0
	movs r1, #5
	bl __divsi3
	adds r1, r4, r0
	ldr r0, _08140E24 @ =0x000002EE
	add r0, r8
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, sb
	blo _08140D0E
_08140D7E:
	ldr r2, _08140E28 @ =0x000009D8
	adds r4, r6, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	subs r0, #0x20
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #5
	bl __divsi3
	ldr r1, _08140E2C @ =gBgScrollRegs
	strh r0, [r1, #2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #4
	ble _08140DCA
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08140E30 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _08140E34 @ =sub_08141300
	str r0, [r1]
_08140DCA:
	mov r0, sl
	bl sub_08155128
	cmp r0, #0
	bne _08140DDC
	ldr r0, _08140E38 @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_08140DDC:
	ldr r0, [sp]
	bl sub_0815604C
	mov r0, sl
	bl sub_0815604C
	movs r4, #0
_08140DEA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08140DEA
	ldr r2, _08140E3C @ =0x00000BDC
	adds r0, r6, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140E24: .4byte 0x000002EE
_08140E28: .4byte 0x000009D8
_08140E2C: .4byte gBgScrollRegs
_08140E30: .4byte 0x000009CC
_08140E34: .4byte sub_08141300
_08140E38: .4byte 0x000002A7
_08140E3C: .4byte 0x00000BDC

	thumb_func_start sub_08140E40
sub_08140E40: @ 0x08140E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r0, r7, #4
	ldrb r1, [r7, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #4
	mov r2, sb
	cmp r2, #0
	bne _08140E62
	movs r0, #3
_08140E62:
	str r0, [sp]
	ldrb r0, [r7, #1]
	strb r0, [r7]
	movs r0, #7
	strb r0, [r7, #1]
	ldr r2, _08140F70 @ =gUnk_08385C14
	ldr r3, _08140F74 @ =0x000009CA
	adds r0, r7, r3
	ldrb r1, [r0]
	adds r1, #7
	lsls r1, r1, #1
	ldr r0, _08140F78 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _08140F7C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08140F80 @ =0x0600FD40
	mov sl, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	ldr r2, _08140F84 @ =0x000009DA
	adds r2, r2, r7
	mov r8, r2
	adds r3, r7, #0
	adds r3, #0xc
	str r3, [sp, #4]
	cmp r4, r5
	bhs _08140ECC
_08140EB0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, sl
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08140EB0
_08140ECC:
	ldr r1, _08140F88 @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, _08140F8C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08140F90 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08140F94 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08140F98 @ =gBgScrollRegs
	movs r5, #0
	movs r4, #0
	movs r0, #0x18
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0813A6D0
	ldr r6, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	ldr r3, _08140F9C @ =gUnk_08385CD4
	ldr r2, _08140F78 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #0x10]
	strh r0, [r6, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #0x12]
	strb r0, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	ldr r0, _08140FA0 @ =0x0000FF64
	strh r0, [r6, #0x10]
	strh r4, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	strh r4, [r7, #0x1c]
	ldr r1, [sp]
	cmp r4, r1
	bhs _08140FBE
_08140F4C:
	lsls r0, r4, #2
	adds r3, r0, r4
	lsls r1, r3, #3
	adds r1, r7, r1
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0x20
	strh r0, [r2]
	mov r2, sb
	cmp r2, #0
	bne _08140FA4
	lsls r0, r3, #2
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x2b
	b _08140FAC
	.align 2, 0
_08140F70: .4byte gUnk_08385C14
_08140F74: .4byte 0x000009CA
_08140F78: .4byte gLanguage
_08140F7C: .4byte gUnk_082D7850
_08140F80: .4byte 0x0600FD40
_08140F84: .4byte 0x000009DA
_08140F88: .4byte 0x040000D4
_08140F8C: .4byte gBgPalette
_08140F90: .4byte 0x80000090
_08140F94: .4byte gMainFlags
_08140F98: .4byte gBgScrollRegs
_08140F9C: .4byte gUnk_08385CD4
_08140FA0: .4byte 0x0000FF64
_08140FA4:
	lsls r0, r3, #2
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x1b
_08140FAC:
	ldr r3, _08140FE4 @ =0x000002EE
	adds r0, r1, r3
	strh r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp]
	cmp r4, r0
	blo _08140F4C
_08140FBE:
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0x10
	strh r0, [r1]
	mov r3, sb
	cmp r3, #0
	bne _08140FEC
	ldr r1, _08140FE8 @ =0x000009CA
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x20
	b _08140FFE
	.align 2, 0
_08140FE4: .4byte 0x000002EE
_08140FE8: .4byte 0x000009CA
_08140FEC:
	ldr r2, _08141040 @ =0x000009CA
	adds r0, r7, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
_08140FFE:
	ldr r3, _08141044 @ =0x0000029E
	adds r0, r7, r3
	strh r1, [r0]
	ldrb r0, [r7]
	cmp r0, #5
	beq _0814100C
	b _08141164
_0814100C:
	bl sub_0802E57C
	ldr r2, _08141048 @ =0x00000BEC
	adds r1, r7, r2
	str r0, [r1]
	ldr r2, _0814104C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sb
	cmp r0, #0
	bne _08141050
	ldr r1, _08141040 @ =0x000009CA
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x35
	b _08141062
	.align 2, 0
_08141040: .4byte 0x000009CA
_08141044: .4byte 0x0000029E
_08141048: .4byte 0x00000BEC
_0814104C: .4byte gDispCnt
_08141050:
	ldr r2, _081410D8 @ =0x000009CA
	adds r0, r7, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x25
_08141062:
	ldr r3, _081410DC @ =0x0000038E
	adds r0, r7, r3
	strh r1, [r0]
	ldr r0, _081410E0 @ =0x000003A6
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _081410E4 @ =0x0000039B
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1]
	subs r3, #0x12
	adds r0, r7, r3
	bl sub_08155128
	ldr r1, _081410D8 @ =0x000009CA
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _081410F8
	ldr r1, _081410E8 @ =gUnk_08385C14
	ldr r0, _081410EC @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _081410F0 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r2, _081410F4 @ =0x0600FD40
	mov r8, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08141142
_081410B8:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _081410B8
	b _08141142
	.align 2, 0
_081410D8: .4byte 0x000009CA
_081410DC: .4byte 0x0000038E
_081410E0: .4byte 0x000003A6
_081410E4: .4byte 0x0000039B
_081410E8: .4byte gUnk_08385C14
_081410EC: .4byte gLanguage
_081410F0: .4byte gUnk_082D7850
_081410F4: .4byte 0x0600FD40
_081410F8:
	ldr r1, _08141184 @ =gUnk_08385C14
	ldr r0, _08141188 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814118C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r3, _08141190 @ =0x0600FD40
	mov r8, r3
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08141142
_08141126:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08141126
_08141142:
	ldr r1, _08141194 @ =0x000009CA
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r6, r7, r0
	movs r1, #0
	movs r0, #4
	strb r0, [r6, #0x1f]
	str r1, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
_08141164:
	ldr r3, _08141198 @ =0x000009D8
	adds r1, r7, r3
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0814119C @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _081411A0 @ =sub_081411A4
	str r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141184: .4byte gUnk_08385C14
_08141188: .4byte gLanguage
_0814118C: .4byte gUnk_082D7850
_08141190: .4byte 0x0600FD40
_08141194: .4byte 0x000009CA
_08141198: .4byte 0x000009D8
_0814119C: .4byte 0x000009CC
_081411A0: .4byte sub_081411A4

	thumb_func_start sub_081411A4
sub_081411A4: @ 0x081411A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _081411F4 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _081411F8 @ =gBldRegs
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
	ble _081411D6
	ldr r0, _081411FC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141200 @ =sub_08141258
	str r0, [r1]
_081411D6:
	ldr r0, _08141204 @ =gBgScrollRegs
	movs r1, #0x18
	strh r1, [r0, #2]
	ldrb r0, [r6]
	cmp r0, #5
	bne _08141208
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r6, r0
	b _08141220
	.align 2, 0
_081411F4: .4byte 0x000009D8
_081411F8: .4byte gBldRegs
_081411FC: .4byte 0x000009CC
_08141200: .4byte sub_08141258
_08141204: .4byte gBgScrollRegs
_08141208:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r6, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141220
	ldr r0, _08141254 @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_08141220:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141230:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141230
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08141254: .4byte 0x000002A7

	thumb_func_start sub_08141258
sub_08141258: @ 0x08141258
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814127C @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	movs r2, #0xbf
	lsls r2, r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #5
	bne _08141288
	ldr r0, _08141280 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08141284 @ =sub_081416DC
	b _0814128E
	.align 2, 0
_0814127C: .4byte gBldRegs
_08141280: .4byte 0x000009CC
_08141284: .4byte sub_081416DC
_08141288:
	ldr r2, _081412A8 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _081412AC @ =sub_08141300
_0814128E:
	str r0, [r1]
	ldrb r0, [r5]
	cmp r0, #5
	bne _081412B0
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r4, r5, r2
	b _081412C8
	.align 2, 0
_081412A8: .4byte 0x000009CC
_081412AC: .4byte sub_08141300
_081412B0:
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081412C8
	ldr r2, _081412FC @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_081412C8:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081412D8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081412D8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081412FC: .4byte 0x000002A7

	thumb_func_start sub_08141300
sub_08141300: @ 0x08141300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r5, #4
	ldrb r1, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp]
	movs r0, #4
	ldr r2, [sp]
	cmp r2, #0
	bne _08141322
	movs r0, #3
_08141322:
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0813B4F0
	ldr r1, _0814134C @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _08141350 @ =0x000009CB
	adds r0, r5, r2
	strb r1, [r0]
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _081413EC
	lsls r0, r0, #2
	ldr r1, _08141354 @ =_08141358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0814134C: .4byte 0x000009CA
_08141350: .4byte 0x000009CB
_08141354: .4byte _08141358
_08141358: @ jump table
	.4byte _081413EC @ case 0
	.4byte _0814136C @ case 1
	.4byte _08141388 @ case 2
	.4byte _081413A8 @ case 3
	.4byte _081413C8 @ case 4
_0814136C:
	ldr r0, _0814137C @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _08141380 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08141384 @ =sub_0814155C
	str r0, [r1]
	b _081413EC
	.align 2, 0
_0814137C: .4byte 0x0000021E
_08141380: .4byte 0x000009CC
_08141384: .4byte sub_0814155C
_08141388:
	ldr r0, _0814139C @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r5, #2]
	ldr r2, _081413A0 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _081413A4 @ =sub_08143140
	str r0, [r1]
	b _081413EC
	.align 2, 0
_0814139C: .4byte 0x0000021F
_081413A0: .4byte 0x000009CC
_081413A4: .4byte sub_08143140
_081413A8:
	ldr r0, _081413BC @ =0x0000021D
	bl m4aSongNumStart
	ldr r0, _081413C0 @ =0x000009CA
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _081413C4
	subs r0, r4, #1
	b _081413EA
	.align 2, 0
_081413BC: .4byte 0x0000021D
_081413C0: .4byte 0x000009CA
_081413C4:
	subs r0, #1
	b _081413EA
_081413C8:
	ldr r0, _081413E0 @ =0x0000021D
	bl m4aSongNumStart
	ldr r2, _081413E4 @ =0x000009CA
	adds r1, r5, r2
	ldrb r2, [r1]
	subs r0, r4, #1
	cmp r2, r0
	bne _081413E8
	movs r0, #0
	b _081413EA
	.align 2, 0
_081413E0: .4byte 0x0000021D
_081413E4: .4byte 0x000009CA
_081413E8:
	adds r0, r2, #1
_081413EA:
	strb r0, [r1]
_081413EC:
	ldr r0, _081414B8 @ =0x000009CA
	adds r3, r5, r0
	ldr r2, _081414BC @ =0x000009CB
	adds r1, r5, r2
	ldrb r0, [r3]
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r2, r5, r2
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r2, #0xc
	str r2, [sp, #8]
	ldrb r1, [r1]
	cmp r0, r1
	beq _081414F2
	ldr r2, _081414C0 @ =gUnk_08385C14
	ldrb r1, [r3]
	adds r1, #7
	lsls r1, r1, #1
	ldr r0, _081414C4 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _081414C8 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r6, [r1, #2]
	ldr r1, _081414CC @ =0x0600FD40
	mov sl, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	ldr r2, _081414B8 @ =0x000009CA
	adds r7, r5, r2
	ldr r0, _081414BC @ =0x000009CB
	adds r0, r0, r5
	mov sb, r0
	cmp r4, r6
	bhs _08141466
_0814144A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	add r1, sl
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0814144A
_08141466:
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	mov r2, sb
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, r0
	movs r0, #3
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	ldr r2, [sp]
	cmp r2, #0
	bne _081414D0
	ldr r1, _081414B8 @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x20
	b _081414E2
	.align 2, 0
_081414B8: .4byte 0x000009CA
_081414BC: .4byte 0x000009CB
_081414C0: .4byte gUnk_08385C14
_081414C4: .4byte gLanguage
_081414C8: .4byte gUnk_082D7850
_081414CC: .4byte 0x0600FD40
_081414D0:
	ldr r2, _0814154C @ =0x000009CA
	adds r0, r5, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
_081414E2:
	ldr r2, _08141550 @ =0x0000029E
	adds r0, r5, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
_081414F2:
	ldr r0, [sp, #4]
	bl sub_08155128
	cmp r0, #0
	bne _08141504
	ldr r2, _08141554 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_08141504:
	ldr r0, [sp, #8]
	bl sub_0815604C
	ldr r0, [sp, #4]
	bl sub_0815604C
	movs r4, #0
_08141512:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141512
	ldr r2, _08141558 @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814154C: .4byte 0x000009CA
_08141550: .4byte 0x0000029E
_08141554: .4byte 0x000002A7
_08141558: .4byte 0x00000BDC

	thumb_func_start sub_0814155C
sub_0814155C: @ 0x0814155C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r5, #4
	ldrb r1, [r5, #0xa]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _08141594 @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	cmp r2, #0
	bne _0814159C
	ldr r1, _08141598 @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x35
	b _081415AE
	.align 2, 0
_08141594: .4byte 0x00000BE5
_08141598: .4byte 0x000009CA
_0814159C:
	ldr r2, _081416B0 @ =0x000009CA
	adds r0, r5, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x25
_081415AE:
	ldr r1, _081416B4 @ =0x0000038E
	adds r0, r5, r1
	movs r1, #0
	strh r2, [r0]
	ldr r2, _081416B8 @ =0x000003A6
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _081416BC @ =0x0000039B
	adds r1, r5, r0
	movs r0, #5
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r2, _081416C0 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r1, _081416C4 @ =gUnk_08385C14
	ldr r0, _081416C8 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x16
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _081416CC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r2, _081416D0 @ =0x0600FD40
	mov r8, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r0, r0, r5
	mov sb, r0
	movs r1, #0xc
	adds r1, r1, r5
	mov sl, r1
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r2, r5, r2
	str r2, [sp]
	cmp r4, r6
	bhs _08141640
_08141624:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08141624
_08141640:
	ldr r1, _081416B0 @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	movs r4, #0
	movs r1, #4
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl sub_08155128
	mov r0, sb
	strh r4, [r0]
	ldr r2, _081416D4 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _081416D8 @ =sub_081416DC
	str r0, [r1]
	mov r0, sl
	bl sub_0815604C
	ldr r0, [sp]
	bl sub_0815604C
_08141678:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141678
	movs r2, #0xdf
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_0815604C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081416B0: .4byte 0x000009CA
_081416B4: .4byte 0x0000038E
_081416B8: .4byte 0x000003A6
_081416BC: .4byte 0x0000039B
_081416C0: .4byte 0x000002A7
_081416C4: .4byte gUnk_08385C14
_081416C8: .4byte gLanguage
_081416CC: .4byte gUnk_082D7850
_081416D0: .4byte 0x0600FD40
_081416D4: .4byte 0x000009CC
_081416D8: .4byte sub_081416DC

	thumb_func_start sub_081416DC
sub_081416DC: @ 0x081416DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl sub_0813B4F0
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _081416F6
	b _0814190E
_081416F6:
	lsls r0, r0, #2
	ldr r1, _08141700 @ =_08141704
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08141700: .4byte _08141704
_08141704: @ jump table
	.4byte _0814190E @ case 0
	.4byte _08141718 @ case 1
	.4byte _08141770 @ case 2
	.4byte _08141798 @ case 3
	.4byte _08141828 @ case 4
_08141718:
	ldr r0, _08141740 @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _08141744 @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08141748 @ =0x000003A6
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08141754
	ldr r1, _0814174C @ =0x000009CC
	adds r0, r5, r1
	ldr r1, _08141750 @ =sub_081431F0
	str r1, [r0]
	movs r0, #8
	strb r0, [r5, #2]
	b _0814190E
	.align 2, 0
_08141740: .4byte 0x0000021E
_08141744: .4byte 0x00000BE5
_08141748: .4byte 0x000003A6
_0814174C: .4byte 0x000009CC
_08141750: .4byte sub_081431F0
_08141754:
	cmp r0, #1
	beq _0814175A
	b _0814190E
_0814175A:
	ldr r1, _08141768 @ =0x000009CC
	adds r0, r5, r1
	ldr r1, _0814176C @ =sub_081431F0
	str r1, [r0]
	movs r0, #5
	strb r0, [r5, #2]
	b _0814190E
	.align 2, 0
_08141768: .4byte 0x000009CC
_0814176C: .4byte sub_081431F0
_08141770:
	ldr r0, _08141788 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _0814178C @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08141790 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08141794 @ =sub_08141964
	str r0, [r1]
	b _0814190E
	.align 2, 0
_08141788: .4byte 0x0000021F
_0814178C: .4byte 0x00000BE5
_08141790: .4byte 0x000009CC
_08141794: .4byte sub_08141964
_08141798:
	ldr r1, _0814180C @ =0x000003A6
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _081417A8
	ldr r0, _08141810 @ =0x0000021D
	bl m4aSongNumStart
_081417A8:
	movs r0, #0
	strb r0, [r4]
	ldr r0, _08141814 @ =0x0000039B
	adds r1, r5, r0
	movs r0, #5
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r1, _08141818 @ =gUnk_08385C14
	ldr r0, _0814181C @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x16
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08141820 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _08141824 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	blo _081417EE
	b _0814190E
_081417EE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _081417EE
	b _0814190E
	.align 2, 0
_0814180C: .4byte 0x000003A6
_08141810: .4byte 0x0000021D
_08141814: .4byte 0x0000039B
_08141818: .4byte gUnk_08385C14
_0814181C: .4byte gLanguage
_08141820: .4byte gUnk_082D7850
_08141824: .4byte 0x0600FD40
_08141828:
	ldr r0, _081418A4 @ =0x000003A6
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #1
	beq _08141838
	ldr r0, _081418A8 @ =0x0000021D
	bl m4aSongNumStart
_08141838:
	movs r0, #1
	strb r0, [r4]
	ldr r0, _081418AC @ =0x0000039B
	adds r1, r5, r0
	movs r0, #6
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r1, _081418B0 @ =0x000009CA
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _081418C4
	ldr r1, _081418B4 @ =gUnk_08385C14
	ldr r0, _081418B8 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _081418BC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _081418C0 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0814190E
_08141886:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08141886
	b _0814190E
	.align 2, 0
_081418A4: .4byte 0x000003A6
_081418A8: .4byte 0x0000021D
_081418AC: .4byte 0x0000039B
_081418B0: .4byte 0x000009CA
_081418B4: .4byte gUnk_08385C14
_081418B8: .4byte gLanguage
_081418BC: .4byte gUnk_082D7850
_081418C0: .4byte 0x0600FD40
_081418C4:
	ldr r1, _08141954 @ =gUnk_08385C14
	ldr r0, _08141958 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814195C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _08141960 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0814190E
_081418F2:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _081418F2
_0814190E:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08141922:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141922
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141954: .4byte gUnk_08385C14
_08141958: .4byte gLanguage
_0814195C: .4byte gUnk_082D7850
_08141960: .4byte 0x0600FD40

	thumb_func_start sub_08141964
sub_08141964: @ 0x08141964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08141A20 @ =0x000009CA
	adds r4, r6, r0
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #0x1f]
	str r2, [r0, #8]
	bl sub_08155128
	ldr r2, _08141A24 @ =gUnk_08385C14
	ldrb r1, [r4]
	adds r1, #7
	lsls r1, r1, #1
	ldr r0, _08141A28 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _08141A2C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08141A30 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _081419DC
_081419C0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _081419C0
_081419DC:
	ldr r0, _08141A34 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141A38 @ =sub_08141300
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_081419F8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081419F8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141A20: .4byte 0x000009CA
_08141A24: .4byte gUnk_08385C14
_08141A28: .4byte gLanguage
_08141A2C: .4byte gUnk_082D7850
_08141A30: .4byte 0x0600FD40
_08141A34: .4byte 0x000009CC
_08141A38: .4byte sub_08141300

	thumb_func_start sub_08141A3C
sub_08141A3C: @ 0x08141A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, r6, #4
	ldrb r1, [r6, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #4
	cmp r0, #0
	bne _08141A58
	movs r1, #3
_08141A58:
	adds r7, r1, #0
	ldr r2, _08141B60 @ =0x000009D8
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
	ldr r0, _08141B64 @ =gBgScrollRegs
	mov sl, r0
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r1, r1, r6
	mov r8, r1
	movs r2, #0xc
	adds r2, r2, r6
	mov sb, r2
	cmp r5, r7
	bhs _08141AAA
_08141A7C:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r1, _08141B60 @ =0x000009D8
	adds r0, r6, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xd0
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r0, #0x20
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08141A7C
_08141AAA:
	ldr r2, _08141B60 @ =0x000009D8
	adds r4, r6, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x10
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	strh r0, [r6, #0x1c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x18
	mov r1, sl
	strh r0, [r1, #2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #4
	ble _08141B0A
	ldr r0, _08141B68 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141B6C @ =sub_081431C0
	str r0, [r1]
_08141B0A:
	mov r0, r8
	bl sub_08155128
	cmp r0, #0
	bne _08141B1C
	ldr r2, _08141B70 @ =0x000002A7
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
_08141B1C:
	mov r0, sb
	bl sub_0815604C
	mov r0, r8
	bl sub_0815604C
	movs r4, #0
_08141B2A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141B2A
	ldr r2, _08141B74 @ =0x00000BDC
	adds r0, r6, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141B60: .4byte 0x000009D8
_08141B64: .4byte gBgScrollRegs
_08141B68: .4byte 0x000009CC
_08141B6C: .4byte sub_081431C0
_08141B70: .4byte 0x000002A7
_08141B74: .4byte 0x00000BDC

	thumb_func_start sub_08141B78
sub_08141B78: @ 0x08141B78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08141BE8 @ =0x000009D8
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r5, _08141BEC @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	blt _08141BA6
	ldr r0, _08141BF0 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141BF4 @ =sub_08143260
	str r0, [r1]
_08141BA6:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_08141BBA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141BBA
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08141BE8: .4byte 0x000009D8
_08141BEC: .4byte gBldRegs
_08141BF0: .4byte 0x000009CC
_08141BF4: .4byte sub_08143260

	thumb_func_start sub_08141BF8
sub_08141BF8: @ 0x08141BF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _08141C5C @ =0x000009CA
	adds r0, r7, r1
	ldrb r6, [r0]
	mov r8, r6
	adds r0, r7, #0
	bl sub_0813AD2C
	ldrb r0, [r7, #2]
	cmp r0, #5
	beq _08141CC0
	cmp r0, #8
	bne _08141CC8
	mov r0, sp
	ldr r1, _08141C60 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08141C64 @ =gBgPalette
	ldr r5, _08141C68 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08141C6C @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08141C70 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08141C74 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	cmp r6, #1
	beq _08141C8C
	cmp r6, #1
	bgt _08141C78
	cmp r6, #0
	beq _08141C84
	b _08141CC8
	.align 2, 0
_08141C5C: .4byte 0x000009CA
_08141C60: .4byte 0x00007FFF
_08141C64: .4byte gBgPalette
_08141C68: .4byte 0x01000100
_08141C6C: .4byte gObjPalette
_08141C70: .4byte gMainFlags
_08141C74: .4byte gCurTask
_08141C78:
	mov r0, r8
	cmp r0, #2
	beq _08141C94
	cmp r0, #3
	beq _08141C9C
	b _08141CC8
_08141C84:
	movs r0, #0
	bl sub_0801A744
	b _08141CC8
_08141C8C:
	movs r0, #1
	bl sub_0801A744
	b _08141CC8
_08141C94:
	movs r0, #2
	bl sub_0801A744
	b _08141CC8
_08141C9C:
	ldrb r1, [r7, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08141CB8
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r7, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08141CB8:
	movs r0, #3
	bl sub_0801A744
	b _08141CC8
_08141CC0:
	ldr r0, _08141CD4 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _08141CD8 @ =sub_0813ECBC
	str r0, [r1]
_08141CC8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141CD4: .4byte 0x000009CC
_08141CD8: .4byte sub_0813ECBC

	thumb_func_start sub_08141CDC
sub_08141CDC: @ 0x08141CDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	subs r0, #1
	cmp r0, #6
	bls _08141CEA
	b _08141E24
_08141CEA:
	lsls r0, r0, #2
	ldr r1, _08141CF4 @ =_08141CF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08141CF4: .4byte _08141CF8
_08141CF8: @ jump table
	.4byte _08141D14 @ case 0
	.4byte _08141D38 @ case 1
	.4byte _08141DA4 @ case 2
	.4byte _08141E24 @ case 3
	.4byte _08141E24 @ case 4
	.4byte _08141E24 @ case 5
	.4byte _08141DC0 @ case 6
_08141D14:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _08141D2A
	ldr r0, _08141D34 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141D2A:
	adds r0, r5, #0
	bl sub_0813AD9C
	b _08141E24
	.align 2, 0
_08141D34: .4byte 0x000002A7
_08141D38:
	ldr r1, _08141D54 @ =0x00000BE5
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08141D58
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	b _08141D70
	.align 2, 0
_08141D54: .4byte 0x00000BE5
_08141D58:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141D70
	ldr r0, _08141DA0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141D70:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141D80:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141D80
	b _08141E24
	.align 2, 0
_08141DA0: .4byte 0x000002A7
_08141DA4:
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0813AE30
	b _08141E24
_08141DC0:
	ldr r1, _08141DDC @ =0x00000BE5
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08141DE0
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	b _08141DF8
	.align 2, 0
_08141DDC: .4byte 0x00000BE5
_08141DE0:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141DF8
	ldr r0, _08141E2C @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141DF8:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141E08:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141E08
_08141E24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08141E2C: .4byte 0x000002A7

	thumb_func_start sub_08141E30
sub_08141E30: @ 0x08141E30
	push {lr}
	ldr r0, _08141E40 @ =gUnk_0203AD48
	ldrh r0, [r0]
	cmp r0, #2
	bhi _08141E44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08141E46
	.align 2, 0
_08141E40: .4byte gUnk_0203AD48
_08141E44:
	movs r0, #0
_08141E46:
	bl sub_0813914C
	adds r3, r0, #0
	ldr r1, _08141E5C @ =gUnk_0203ACB0
	ldr r2, _08141E60 @ =gUnk_0203AD48
	ldrh r0, [r2]
	cmp r0, #2
	bhi _08141E64
	lsls r0, r0, #1
	b _08141E66
	.align 2, 0
_08141E5C: .4byte gUnk_0203ACB0
_08141E60: .4byte gUnk_0203AD48
_08141E64:
	movs r0, #0
_08141E66:
	adds r1, r1, r0
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08141E74
sub_08141E74: @ 0x08141E74
	push {lr}
	ldr r0, _08141E90 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08141E94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08141E9C
	.align 2, 0
_08141E90: .4byte gCurTask
_08141E94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08141E9C:
	ldr r0, _08141EB8 @ =0x000009D4
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08141EBC @ =0x000009CC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08141EB8: .4byte 0x000009D4
_08141EBC: .4byte 0x000009CC

	thumb_func_start sub_08141EC0
sub_08141EC0: @ 0x08141EC0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08141EC6:
	adds r0, r4, #0
	bl sub_0814343C
	adds r0, r4, #0
	bl sub_08143464
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08141EC6
	ldr r3, _08141F04 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08141F0C
	ldr r0, _08141F08 @ =gUnk_082D7850
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl LoadBgPaletteWithTransformation
	b _08141F2C
	.align 2, 0
_08141F04: .4byte gMainFlags
_08141F08: .4byte gUnk_082D7850
_08141F0C:
	ldr r1, _08141F54 @ =0x040000D4
	ldr r0, _08141F58 @ =gUnk_082D7850
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r0, _08141F5C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08141F60 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08141F2C:
	ldr r0, _08141F58 @ =gUnk_082D7850
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldr r2, _08141F64 @ =0x000009DA
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r4, _08141F68 @ =0x000009CC
	adds r1, r5, r4
	ldr r0, _08141F6C @ =sub_08141F70
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08141F54: .4byte 0x040000D4
_08141F58: .4byte gUnk_082D7850
_08141F5C: .4byte gBgPalette
_08141F60: .4byte 0x80000100
_08141F64: .4byte 0x000009DA
_08141F68: .4byte 0x000009CC
_08141F6C: .4byte sub_08141F70

	thumb_func_start sub_08141F70
sub_08141F70: @ 0x08141F70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08141F94 @ =gUnk_082D7850
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, _08141F98 @ =0x06008000
	bl LZ77UnCompVram
	ldr r0, _08141F9C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08141FA0 @ =sub_0813C1C4
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08141F94: .4byte gUnk_082D7850
_08141F98: .4byte 0x06008000
_08141F9C: .4byte 0x000009CC
_08141FA0: .4byte sub_0813C1C4

	thumb_func_start sub_08141FA4
sub_08141FA4: @ 0x08141FA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_081392A0
	ldr r0, _08141FBC @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08141FC0 @ =sub_0813C388
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08141FBC: .4byte 0x000009CC
_08141FC0: .4byte sub_0813C388

	thumb_func_start sub_08141FC4
sub_08141FC4: @ 0x08141FC4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08141FE8
	ldr r0, _08142008 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08141FE8:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _0814200C @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _08142010 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142014 @ =sub_0813CA24
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142008: .4byte 0x000002A7
_0814200C: .4byte 0x00000BDC
_08142010: .4byte 0x000009CC
_08142014: .4byte sub_0813CA24

	thumb_func_start sub_08142018
sub_08142018: @ 0x08142018
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142064 @ =gUnk_0203ADE0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08142068 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814206C @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _08142070 @ =sub_0813CB78
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _0814204C
	ldr r2, _08142074 @ =0x000002A7
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
_0814204C:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _08142078 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142064: .4byte gUnk_0203ADE0
_08142068: .4byte 0x000009D8
_0814206C: .4byte 0x000009CC
_08142070: .4byte sub_0813CB78
_08142074: .4byte 0x000002A7
_08142078: .4byte 0x00000BDC

	thumb_func_start sub_0814207C
sub_0814207C: @ 0x0814207C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _081420D0 @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _081420D4 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r0, _081420D8 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _081420B0
	ldr r0, _081420DC @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_081420B0:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _081420E0 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _081420E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081420E8 @ =sub_0813CCA8
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081420D0: .4byte gUnk_030016A0
_081420D4: .4byte 0x000009D8
_081420D8: .4byte gBldRegs
_081420DC: .4byte 0x000002A7
_081420E0: .4byte 0x00000BDC
_081420E4: .4byte 0x000009CC
_081420E8: .4byte sub_0813CCA8

	thumb_func_start sub_081420EC
sub_081420EC: @ 0x081420EC
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _0814210C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142110 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142114 @ =sub_08142118
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814210C: .4byte 0x000009D8
_08142110: .4byte 0x000009CC
_08142114: .4byte sub_08142118

	thumb_func_start sub_08142118
sub_08142118: @ 0x08142118
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814213C @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142136
	ldr r0, _08142140 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142144 @ =sub_08142148
	str r0, [r1]
_08142136:
	pop {r0}
	bx r0
	.align 2, 0
_0814213C: .4byte 0x000009D8
_08142140: .4byte 0x000009CC
_08142144: .4byte sub_08142148

	thumb_func_start sub_08142148
sub_08142148: @ 0x08142148
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814216C @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814215E
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_0814215E:
	ldr r0, _08142170 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142174 @ =sub_08142178
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814216C: .4byte 0x00000BEC
_08142170: .4byte 0x000009CC
_08142174: .4byte sub_08142178

	thumb_func_start sub_08142178
sub_08142178: @ 0x08142178
	ldr r1, _08142184 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142188 @ =sub_0814218C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142184: .4byte 0x000009CC
_08142188: .4byte sub_0814218C

	thumb_func_start sub_0814218C
sub_0814218C: @ 0x0814218C
	ldr r1, _08142198 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814219C @ =sub_081421A0
	str r1, [r0]
	bx lr
	.align 2, 0
_08142198: .4byte 0x000009CC
_0814219C: .4byte sub_081421A0

	thumb_func_start sub_081421A0
sub_081421A0: @ 0x081421A0
	push {lr}
	ldr r0, _081421B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_081421B4: .4byte gCurTask

	thumb_func_start sub_081421B8
sub_081421B8: @ 0x081421B8
	push {lr}
	adds r2, r0, #0
	ldr r0, _081421E8 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081421D6
	ldr r0, _081421EC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081421F0 @ =sub_081421F8
	str r0, [r1]
_081421D6:
	ldr r1, _081421F4 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_081421E8: .4byte 0x000009D8
_081421EC: .4byte 0x000009CC
_081421F0: .4byte sub_081421F8
_081421F4: .4byte 0x00000BDC

	thumb_func_start sub_081421F8
sub_081421F8: @ 0x081421F8
	push {lr}
	ldr r1, _08142218 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0814221C @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08142220 @ =sub_0813D0DC
	str r1, [r2]
	ldr r2, _08142224 @ =0x00000BDC
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08142218: .4byte 0x000009D8
_0814221C: .4byte 0x000009CC
_08142220: .4byte sub_0813D0DC
_08142224: .4byte 0x00000BDC

	thumb_func_start sub_08142228
sub_08142228: @ 0x08142228
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142294 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142298 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814229C @ =sub_0813D178
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08142254
	ldr r0, _081422A0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08142254:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08142264:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142264
	ldr r1, _081422A4 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142294: .4byte 0x000009D8
_08142298: .4byte 0x000009CC
_0814229C: .4byte sub_0813D178
_081422A0: .4byte 0x000002A7
_081422A4: .4byte 0x00000BDC

	thumb_func_start sub_081422A8
sub_081422A8: @ 0x081422A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142314 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142318 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814231C @ =sub_0813D234
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081422D4
	ldr r0, _08142320 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081422D4:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081422E4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081422E4
	ldr r1, _08142324 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142314: .4byte 0x000009D8
_08142318: .4byte 0x000009CC
_0814231C: .4byte sub_0813D234
_08142320: .4byte 0x000002A7
_08142324: .4byte 0x00000BDC

	thumb_func_start sub_08142328
sub_08142328: @ 0x08142328
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08142380 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _08142384 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142388 @ =sub_0813DB74
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08142352:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142352
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142380: .4byte gBldRegs
_08142384: .4byte 0x000009CC
_08142388: .4byte sub_0813DB74

	thumb_func_start sub_0814238C
sub_0814238C: @ 0x0814238C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _081423E0 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _081423E4 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _081423E8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081423EC @ =sub_0813DE7C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_081423BE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081423BE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081423E0: .4byte gBldRegs
_081423E4: .4byte 0x000009D8
_081423E8: .4byte 0x000009CC
_081423EC: .4byte sub_0813DE7C

	thumb_func_start sub_081423F0
sub_081423F0: @ 0x081423F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08142448 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814244C @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08142412
	bl VramFree
	movs r0, #0
	str r0, [r5]
_08142412:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08142420
	bl VramFree
	movs r0, #0
	str r0, [r4, #0xc]
_08142420:
	adds r0, r4, #0
	bl sub_0813A9DC
	ldr r1, _08142450 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802E6C4
	ldr r0, _08142454 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142458 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0814245C @ =sub_08142460
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142448: .4byte gDispCnt
_0814244C: .4byte 0x0000FCFF
_08142450: .4byte 0x00000BEC
_08142454: .4byte 0x000009D8
_08142458: .4byte 0x000009CC
_0814245C: .4byte sub_08142460

	thumb_func_start sub_08142460
sub_08142460: @ 0x08142460
	push {lr}
	adds r1, r0, #0
	ldr r0, _08142488 @ =0x000009D8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142482
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0814248C @ =0x000009CC
	adds r1, r1, r0
	ldr r0, _08142490 @ =sub_0813DEF0
	str r0, [r1]
_08142482:
	pop {r0}
	bx r0
	.align 2, 0
_08142488: .4byte 0x000009D8
_0814248C: .4byte 0x000009CC
_08142490: .4byte sub_0813DEF0

	thumb_func_start sub_08142494
sub_08142494: @ 0x08142494
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _081424B8 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802FBF4
	ldr r0, _081424BC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _081424C0 @ =0x000009CC
	adds r4, r4, r1
	ldr r0, _081424C4 @ =sub_081424C8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081424B8: .4byte 0x00000BEC
_081424BC: .4byte 0x000009D8
_081424C0: .4byte 0x000009CC
_081424C4: .4byte sub_081424C8

	thumb_func_start sub_081424C8
sub_081424C8: @ 0x081424C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142504 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081424EE
	ldr r0, _08142508 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081424FE
_081424EE:
	ldr r0, _0814250C @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _08142510 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142514 @ =sub_08142518
	str r0, [r1]
_081424FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142504: .4byte 0x00000BEC
_08142508: .4byte gPressedKeys
_0814250C: .4byte gUnk_030016A0
_08142510: .4byte 0x000009CC
_08142514: .4byte sub_08142518

	thumb_func_start sub_08142518
sub_08142518: @ 0x08142518
	ldr r2, _08142534 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	ldr r2, _08142538 @ =0x000009D8
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _0814253C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142540 @ =sub_08142544
	str r1, [r0]
	bx lr
	.align 2, 0
_08142534: .4byte gBldRegs
_08142538: .4byte 0x000009D8
_0814253C: .4byte 0x000009CC
_08142540: .4byte sub_08142544

	thumb_func_start sub_08142544
sub_08142544: @ 0x08142544
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08142580 @ =0x000009D8
	adds r6, r7, r0
	ldrh r4, [r6]
	adds r4, #1
	strh r4, [r6]
	ldr r5, _08142584 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0814257A
	bl m4aMPlayAllStop
	movs r0, #0
	strh r0, [r6]
	ldr r0, _08142588 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _0814258C @ =sub_08142590
	str r0, [r1]
_0814257A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08142580: .4byte 0x000009D8
_08142584: .4byte gBldRegs
_08142588: .4byte 0x000009CC
_0814258C: .4byte sub_08142590

	thumb_func_start sub_08142590
sub_08142590: @ 0x08142590
	push {lr}
	adds r2, r0, #0
	ldr r0, _081425B4 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081425AE
	ldr r0, _081425B8 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081425BC @ =sub_081425C0
	str r0, [r1]
_081425AE:
	pop {r0}
	bx r0
	.align 2, 0
_081425B4: .4byte 0x000009D8
_081425B8: .4byte 0x000009CC
_081425BC: .4byte sub_081425C0

	thumb_func_start sub_081425C0
sub_081425C0: @ 0x081425C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081425E4 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081425D6
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_081425D6:
	ldr r0, _081425E8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081425EC @ =sub_081425F0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081425E4: .4byte 0x00000BEC
_081425E8: .4byte 0x000009CC
_081425EC: .4byte sub_081425F0

	thumb_func_start sub_081425F0
sub_081425F0: @ 0x081425F0
	ldr r1, _081425FC @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142600 @ =sub_08142604
	str r1, [r0]
	bx lr
	.align 2, 0
_081425FC: .4byte 0x000009CC
_08142600: .4byte sub_08142604

	thumb_func_start sub_08142604
sub_08142604: @ 0x08142604
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _0814261C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142620 @ =sub_08142624
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814261C: .4byte 0x000009CC
_08142620: .4byte sub_08142624

	thumb_func_start sub_08142624
sub_08142624: @ 0x08142624
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08142690 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08142650
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08142650:
	mov r0, sp
	ldr r1, _08142694 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142698 @ =gBgPalette
	ldr r5, _0814269C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _081426A0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _081426A4 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _081426A8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08123FD4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142690: .4byte gBldRegs
_08142694: .4byte 0x00007FFF
_08142698: .4byte gBgPalette
_0814269C: .4byte 0x01000100
_081426A0: .4byte gObjPalette
_081426A4: .4byte gMainFlags
_081426A8: .4byte gCurTask

	thumb_func_start sub_081426AC
sub_081426AC: @ 0x081426AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0814270C @ =gBldRegs
	movs r2, #0
	movs r0, #0x97
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142710 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08142714 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142718 @ =sub_0813DF4C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_081426DE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081426DE
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814270C: .4byte gBldRegs
_08142710: .4byte 0x000009D8
_08142714: .4byte 0x000009CC
_08142718: .4byte sub_0813DF4C

	thumb_func_start sub_0814271C
sub_0814271C: @ 0x0814271C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813A9DC
	ldr r0, _08142734 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142738 @ =sub_0813ECBC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142734: .4byte 0x000009CC
_08142738: .4byte sub_0813ECBC

	thumb_func_start sub_0814273C
sub_0814273C: @ 0x0814273C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081427A8 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081427AC @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081427B0 @ =sub_0813DFCC
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08142768
	ldr r0, _081427B4 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08142768:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08142778:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142778
	ldr r1, _081427B8 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081427A8: .4byte 0x000009D8
_081427AC: .4byte 0x000009CC
_081427B0: .4byte sub_0813DFCC
_081427B4: .4byte 0x000002A7
_081427B8: .4byte 0x00000BDC

	thumb_func_start sub_081427BC
sub_081427BC: @ 0x081427BC
	push {lr}
	adds r2, r0, #0
	ldr r1, _081427DC @ =0x000009D8
	adds r0, r2, r1
	movs r1, #0
	strh r1, [r0]
	ldrb r0, [r2, #2]
	cmp r0, #7
	bne _081427E4
	ldr r3, _081427E0 @ =0x000009CC
	adds r0, r2, r3
	adds r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0]
	b _081427EC
	.align 2, 0
_081427DC: .4byte 0x000009D8
_081427E0: .4byte 0x000009CC
_081427E4:
	ldr r0, _081427FC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142800 @ =sub_08142808
	str r0, [r1]
_081427EC:
	ldr r1, _08142804 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_081427FC: .4byte 0x000009CC
_08142800: .4byte sub_08142808
_08142804: .4byte 0x00000BDC

	thumb_func_start sub_08142808
sub_08142808: @ 0x08142808
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814283C @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _0814282C
	ldr r1, _08142840 @ =0x000009CC
	adds r0, r2, r1
	movs r3, #0x9d
	lsls r3, r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0]
_0814282C:
	ldr r1, _08142844 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814283C: .4byte 0x000009D8
_08142840: .4byte 0x000009CC
_08142844: .4byte 0x00000BDC

	thumb_func_start sub_08142848
sub_08142848: @ 0x08142848
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814286C @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814285E
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_0814285E:
	ldr r0, _08142870 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142874 @ =sub_08142878
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814286C: .4byte 0x00000BEC
_08142870: .4byte 0x000009CC
_08142874: .4byte sub_08142878

	thumb_func_start sub_08142878
sub_08142878: @ 0x08142878
	ldr r1, _08142884 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142888 @ =sub_0814288C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142884: .4byte 0x000009CC
_08142888: .4byte sub_0814288C

	thumb_func_start sub_0814288C
sub_0814288C: @ 0x0814288C
	ldr r1, _08142898 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814289C @ =sub_081428A0
	str r1, [r0]
	bx lr
	.align 2, 0
_08142898: .4byte 0x000009CC
_0814289C: .4byte sub_081428A0

	thumb_func_start sub_081428A0
sub_081428A0: @ 0x081428A0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081428C6
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_081428C6:
	mov r0, sp
	ldr r1, _08142904 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142908 @ =gBgPalette
	ldr r5, _0814290C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142910 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142914 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142918 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_081434F8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142904: .4byte 0x00007FFF
_08142908: .4byte gBgPalette
_0814290C: .4byte 0x01000100
_08142910: .4byte gObjPalette
_08142914: .4byte gMainFlags
_08142918: .4byte gCurTask

	thumb_func_start sub_0814291C
sub_0814291C: @ 0x0814291C
	ldr r1, _08142930 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142934 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142938 @ =sub_0814293C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142930: .4byte 0x000009D8
_08142934: .4byte 0x000009CC
_08142938: .4byte sub_0814293C

	thumb_func_start sub_0814293C
sub_0814293C: @ 0x0814293C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142978 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0814296C
	ldr r0, _0814297C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142980 @ =sub_0813E2CC
	str r0, [r1]
_0814296C:
	adds r0, r5, #0
	bl sub_0813AE30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142978: .4byte 0x000009D8
_0814297C: .4byte 0x000009CC
_08142980: .4byte sub_0813E2CC

	thumb_func_start sub_08142984
sub_08142984: @ 0x08142984
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r1, _081429DC @ =gUnk_0203ACB0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldr r1, _081429E0 @ =0x0000FFFF
	strh r1, [r0]
	adds r0, r4, #7
	adds r0, r0, r2
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r4, #4
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
	ldr r0, _081429E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081429E8 @ =sub_081429EC
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081429DC: .4byte gUnk_0203ACB0
_081429E0: .4byte 0x0000FFFF
_081429E4: .4byte 0x000009CC
_081429E8: .4byte sub_081429EC

	thumb_func_start sub_081429EC
sub_081429EC: @ 0x081429EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A40 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	bgt _08142A0E
	ldr r0, _08142A44 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142A20
_08142A0E:
	ldr r0, _08142A48 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142A4C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A50 @ =sub_08142A54
	str r0, [r1]
	movs r0, #1
	strb r0, [r4, #2]
_08142A20:
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A40: .4byte 0x000009D8
_08142A44: .4byte gPressedKeys
_08142A48: .4byte 0x0000021F
_08142A4C: .4byte 0x000009CC
_08142A50: .4byte sub_08142A54

	thumb_func_start sub_08142A54
sub_08142A54: @ 0x08142A54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A8C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142A90 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A94 @ =sub_0813EBDC
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142A7E
	ldr r0, _08142A98 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142A7E:
	adds r0, r4, #0
	bl sub_0813AD9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A8C: .4byte 0x000009D8
_08142A90: .4byte 0x000009CC
_08142A94: .4byte sub_0813EBDC
_08142A98: .4byte 0x000002A7

	thumb_func_start sub_08142A9C
sub_08142A9C: @ 0x08142A9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AA4C
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08142ABC
	ldr r0, _08142AB4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AB8 @ =sub_0813C414
	b _08142AC2
	.align 2, 0
_08142AB4: .4byte 0x000009CC
_08142AB8: .4byte sub_0813C414
_08142ABC:
	ldr r0, _08142ACC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AD0 @ =sub_0813CDE4
_08142AC2:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142ACC: .4byte 0x000009CC
_08142AD0: .4byte sub_0813CDE4

	thumb_func_start sub_08142AD4
sub_08142AD4: @ 0x08142AD4
	ldr r1, _08142AE0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142AE4 @ =sub_08142AE8
	str r1, [r0]
	bx lr
	.align 2, 0
_08142AE0: .4byte 0x000009CC
_08142AE4: .4byte sub_08142AE8

	thumb_func_start sub_08142AE8
sub_08142AE8: @ 0x08142AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08139F58
	adds r0, r4, #0
	bl sub_0813A110
	ldr r0, _08142B04 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142B08 @ =sub_0813EE48
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B04: .4byte 0x000009CC
_08142B08: .4byte sub_0813EE48

	thumb_func_start sub_08142B0C
sub_08142B0C: @ 0x08142B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142B38 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142B2A
	ldr r0, _08142B3C @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142B40 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142B44 @ =sub_08142B48
	str r0, [r1]
_08142B2A:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B38: .4byte gPressedKeys
_08142B3C: .4byte 0x0000021F
_08142B40: .4byte 0x000009CC
_08142B44: .4byte sub_08142B48

	thumb_func_start sub_08142B48
sub_08142B48: @ 0x08142B48
	push {lr}
	ldr r2, _08142B70 @ =gBldRegs
	movs r3, #0
	movs r1, #0x97
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	ldr r2, _08142B74 @ =0x000009D8
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _08142B78 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08142B7C @ =sub_08142B80
	str r1, [r2]
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_08142B70: .4byte gBldRegs
_08142B74: .4byte 0x000009D8
_08142B78: .4byte 0x000009CC
_08142B7C: .4byte sub_08142B80

	thumb_func_start sub_08142B80
sub_08142B80: @ 0x08142B80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142BBC @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142BC0 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142BAE
	ldr r0, _08142BC4 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142BC8 @ =sub_081400BC
	str r0, [r1]
_08142BAE:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142BBC: .4byte 0x000009D8
_08142BC0: .4byte gBldRegs
_08142BC4: .4byte 0x000009CC
_08142BC8: .4byte sub_081400BC

	thumb_func_start sub_08142BCC
sub_08142BCC: @ 0x08142BCC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142BF0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142BE2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142BE2:
	ldr r0, _08142BF4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142BF8 @ =sub_08142BFC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142BF0: .4byte 0x00000BEC
_08142BF4: .4byte 0x000009CC
_08142BF8: .4byte sub_08142BFC

	thumb_func_start sub_08142BFC
sub_08142BFC: @ 0x08142BFC
	ldr r1, _08142C08 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C0C @ =sub_08142C10
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C08: .4byte 0x000009CC
_08142C0C: .4byte sub_08142C10

	thumb_func_start sub_08142C10
sub_08142C10: @ 0x08142C10
	ldr r1, _08142C1C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C20 @ =sub_08140380
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C1C: .4byte 0x000009CC
_08142C20: .4byte sub_08140380

	thumb_func_start sub_08142C24
sub_08142C24: @ 0x08142C24
	ldr r1, _08142C38 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142C3C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C40 @ =sub_08142C44
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C38: .4byte 0x000009D8
_08142C3C: .4byte 0x000009CC
_08142C40: .4byte sub_08142C44

	thumb_func_start sub_08142C44
sub_08142C44: @ 0x08142C44
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142C78 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08142C92
	ldr r1, _08142C7C @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08142C88
	ldr r0, _08142C80 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142C84 @ =sub_081404AC
	str r0, [r1]
	b _08142C92
	.align 2, 0
_08142C78: .4byte 0x000009D8
_08142C7C: .4byte 0x00000BE8
_08142C80: .4byte 0x000009CC
_08142C84: .4byte sub_081404AC
_08142C88:
	ldr r1, _08142C98 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
_08142C92:
	pop {r0}
	bx r0
	.align 2, 0
_08142C98: .4byte gUnk_02038580

	thumb_func_start sub_08142C9C
sub_08142C9C: @ 0x08142C9C
	ldr r1, _08142CB0 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142CB4 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142CB8 @ =sub_0814069C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142CB0: .4byte 0x000009D8
_08142CB4: .4byte 0x000009CC
_08142CB8: .4byte sub_0814069C

	thumb_func_start sub_08142CBC
sub_08142CBC: @ 0x08142CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142CF4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _08142CF8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142CFC @ =sub_081407B4
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142CE8
	ldr r0, _08142D00 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142CE8:
	adds r0, r4, #0
	bl sub_0813AEC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142CF4: .4byte gBldRegs
_08142CF8: .4byte 0x000009CC
_08142CFC: .4byte sub_081407B4
_08142D00: .4byte 0x000002A7

	thumb_func_start sub_08142D04
sub_08142D04: @ 0x08142D04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142D50 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142D54 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142D58 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142D5C @ =sub_0814086C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142D38
	ldr r0, _08142D60 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142D38:
	adds r0, r4, #0
	bl sub_0813AEC8
	ldr r1, _08142D64 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142D50: .4byte gBldRegs
_08142D54: .4byte 0x000009D8
_08142D58: .4byte 0x000009CC
_08142D5C: .4byte sub_0814086C
_08142D60: .4byte 0x000002A7
_08142D64: .4byte 0x00000BDC

	thumb_func_start sub_08142D68
sub_08142D68: @ 0x08142D68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08142DC0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08142DC4 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08142D8A
	bl VramFree
	movs r0, #0
	str r0, [r5]
_08142D8A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08142D98
	bl VramFree
	movs r0, #0
	str r0, [r4, #0xc]
_08142D98:
	adds r0, r4, #0
	bl sub_0813ACA0
	ldr r1, _08142DC8 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802E6C4
	ldr r0, _08142DCC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142DD0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142DD4 @ =sub_08142DD8
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142DC0: .4byte gDispCnt
_08142DC4: .4byte 0x0000FCFF
_08142DC8: .4byte 0x00000BEC
_08142DCC: .4byte 0x000009D8
_08142DD0: .4byte 0x000009CC
_08142DD4: .4byte sub_08142DD8

	thumb_func_start sub_08142DD8
sub_08142DD8: @ 0x08142DD8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08142E00 @ =0x000009D8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142DFA
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08142E04 @ =0x000009CC
	adds r1, r1, r0
	ldr r0, _08142E08 @ =sub_081409AC
	str r0, [r1]
_08142DFA:
	pop {r0}
	bx r0
	.align 2, 0
_08142E00: .4byte 0x000009D8
_08142E04: .4byte 0x000009CC
_08142E08: .4byte sub_081409AC

	thumb_func_start sub_08142E0C
sub_08142E0C: @ 0x08142E0C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08142E40 @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _08142E3A
	adds r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08142E3A
	ldr r0, _08142E44 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142E48 @ =sub_08142E4C
	str r0, [r1]
_08142E3A:
	pop {r0}
	bx r0
	.align 2, 0
_08142E40: .4byte 0x00000BE8
_08142E44: .4byte 0x000009CC
_08142E48: .4byte sub_08142E4C

	thumb_func_start sub_08142E4C
sub_08142E4C: @ 0x08142E4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142E78 @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _08142E7C @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142E80 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142E84 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142E88 @ =sub_08142E8C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142E78: .4byte gUnk_030016A0
_08142E7C: .4byte gBldRegs
_08142E80: .4byte 0x000009D8
_08142E84: .4byte 0x000009CC
_08142E88: .4byte sub_08142E8C

	thumb_func_start sub_08142E8C
sub_08142E8C: @ 0x08142E8C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142EC4 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142EC8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142EBE
	bl m4aMPlayAllStop
	ldr r0, _08142ECC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142ED0 @ =sub_08142ED4
	str r0, [r1]
_08142EBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142EC4: .4byte 0x000009D8
_08142EC8: .4byte gBldRegs
_08142ECC: .4byte 0x000009CC
_08142ED0: .4byte sub_08142ED4

	thumb_func_start sub_08142ED4
sub_08142ED4: @ 0x08142ED4
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142EF8 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142EF2
	ldr r0, _08142EFC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142F00 @ =sub_08142F04
	str r0, [r1]
_08142EF2:
	pop {r0}
	bx r0
	.align 2, 0
_08142EF8: .4byte 0x000009D8
_08142EFC: .4byte 0x000009CC
_08142F00: .4byte sub_08142F04

	thumb_func_start sub_08142F04
sub_08142F04: @ 0x08142F04
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142F28 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142F1A
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142F1A:
	ldr r0, _08142F2C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142F30 @ =sub_08142F34
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142F28: .4byte 0x00000BEC
_08142F2C: .4byte 0x000009CC
_08142F30: .4byte sub_08142F34

	thumb_func_start sub_08142F34
sub_08142F34: @ 0x08142F34
	ldr r1, _08142F40 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F44 @ =sub_08142F48
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F40: .4byte 0x000009CC
_08142F44: .4byte sub_08142F48

	thumb_func_start sub_08142F48
sub_08142F48: @ 0x08142F48
	ldr r1, _08142F54 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F58 @ =sub_08142F5C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F54: .4byte 0x000009CC
_08142F58: .4byte sub_08142F5C

	thumb_func_start sub_08142F5C
sub_08142F5C: @ 0x08142F5C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08142FB0 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _08142FB4 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142FB8 @ =gBgPalette
	ldr r5, _08142FBC @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142FC0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142FC4 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142FC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08142FCC @ =0x00000BE8
	adds r6, r6, r0
	ldr r0, [r6]
	bl sub_08032BD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142FB0: .4byte gBldRegs
_08142FB4: .4byte 0x00007FFF
_08142FB8: .4byte gBgPalette
_08142FBC: .4byte 0x01000100
_08142FC0: .4byte gObjPalette
_08142FC4: .4byte gMainFlags
_08142FC8: .4byte gCurTask
_08142FCC: .4byte 0x00000BE8

	thumb_func_start sub_08142FD0
sub_08142FD0: @ 0x08142FD0
	push {lr}
	adds r2, r0, #0
	ldr r0, _08143000 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142FEE
	ldr r0, _08143004 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08143008 @ =sub_08143010
	str r0, [r1]
_08142FEE:
	ldr r1, _0814300C @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143000: .4byte 0x000009D8
_08143004: .4byte 0x000009CC
_08143008: .4byte sub_08143010
_0814300C: .4byte 0x00000BDC

	thumb_func_start sub_08143010
sub_08143010: @ 0x08143010
	push {lr}
	ldr r1, _08143030 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08143034 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08143038 @ =sub_08140B4C
	str r1, [r2]
	ldr r2, _0814303C @ =0x00000BDC
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143030: .4byte 0x000009D8
_08143034: .4byte 0x000009CC
_08143038: .4byte sub_08140B4C
_0814303C: .4byte 0x00000BDC

	thumb_func_start sub_08143040
sub_08143040: @ 0x08143040
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081430AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081430B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081430B4 @ =sub_08140BE8
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814306C
	ldr r0, _081430B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814306C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814307C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814307C
	ldr r1, _081430BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081430AC: .4byte 0x000009D8
_081430B0: .4byte 0x000009CC
_081430B4: .4byte sub_08140BE8
_081430B8: .4byte 0x000002A7
_081430BC: .4byte 0x00000BDC

	thumb_func_start sub_081430C0
sub_081430C0: @ 0x081430C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814312C @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143130 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08143134 @ =sub_08140CD0
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081430EC
	ldr r0, _08143138 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081430EC:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081430FC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081430FC
	ldr r1, _0814313C @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814312C: .4byte 0x000009D8
_08143130: .4byte 0x000009CC
_08143134: .4byte sub_08140CD0
_08143138: .4byte 0x000002A7
_0814313C: .4byte 0x00000BDC

	thumb_func_start sub_08143140
sub_08143140: @ 0x08143140
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081431AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081431B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081431B4 @ =sub_08141A3C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814316C
	ldr r0, _081431B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814316C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814317C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814317C
	ldr r1, _081431BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081431AC: .4byte 0x000009D8
_081431B0: .4byte 0x000009CC
_081431B4: .4byte sub_08141A3C
_081431B8: .4byte 0x000002A7
_081431BC: .4byte 0x00000BDC

	thumb_func_start sub_081431C0
sub_081431C0: @ 0x081431C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AD2C
	ldr r0, _081431E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081431E8 @ =sub_0813CDE4
	str r0, [r1]
	ldr r1, _081431EC @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081431E4: .4byte 0x000009CC
_081431E8: .4byte sub_0813CDE4
_081431EC: .4byte 0x00000BDC

	thumb_func_start sub_081431F0
sub_081431F0: @ 0x081431F0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08143250 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08143254 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08143258 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814325C @ =sub_08141B78
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08143222:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08143222
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143250: .4byte gBldRegs
_08143254: .4byte 0x000009D8
_08143258: .4byte 0x000009CC
_0814325C: .4byte sub_08141B78

	thumb_func_start sub_08143260
sub_08143260: @ 0x08143260
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08143284 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08143276
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08143276:
	ldr r0, _08143288 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814328C @ =sub_08143290
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143284: .4byte 0x00000BEC
_08143288: .4byte 0x000009CC
_0814328C: .4byte sub_08143290

	thumb_func_start sub_08143290
sub_08143290: @ 0x08143290
	ldr r1, _0814329C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432A0 @ =sub_081432A4
	str r1, [r0]
	bx lr
	.align 2, 0
_0814329C: .4byte 0x000009CC
_081432A0: .4byte sub_081432A4

	thumb_func_start sub_081432A4
sub_081432A4: @ 0x081432A4
	ldr r1, _081432B0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432B4 @ =sub_08141BF8
	str r1, [r0]
	bx lr
	.align 2, 0
_081432B0: .4byte 0x000009CC
_081432B4: .4byte sub_08141BF8

	thumb_func_start sub_081432B8
sub_081432B8: @ 0x081432B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	movs r5, #0
	strb r0, [r4]
	ldr r1, _081432FC @ =0x000009D8
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08143300 @ =gUnk_030016A0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _08143304 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	adds r0, r4, #0
	bl sub_08141CDC
	ldr r1, _08143308 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0814330C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143310 @ =sub_08143314
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081432FC: .4byte 0x000009D8
_08143300: .4byte gUnk_030016A0
_08143304: .4byte gBldRegs
_08143308: .4byte 0x00000BDC
_0814330C: .4byte 0x000009CC
_08143310: .4byte sub_08143314

	thumb_func_start sub_08143314
sub_08143314: @ 0x08143314
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0814335C @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08143360 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x1e
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _08143342
	ldr r0, _08143364 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08143368 @ =sub_08143370
	str r0, [r1]
_08143342:
	adds r0, r6, #0
	bl sub_08141CDC
	ldr r1, _0814336C @ =0x00000BDC
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814335C: .4byte 0x000009D8
_08143360: .4byte gBldRegs
_08143364: .4byte 0x000009CC
_08143368: .4byte sub_08143370
_0814336C: .4byte 0x00000BDC

	thumb_func_start sub_08143370
sub_08143370: @ 0x08143370
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _08143390 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143394 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143398 @ =sub_0814339C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08143390: .4byte 0x000009D8
_08143394: .4byte 0x000009CC
_08143398: .4byte sub_0814339C

	thumb_func_start sub_0814339C
sub_0814339C: @ 0x0814339C
	push {lr}
	adds r2, r0, #0
	ldr r0, _081433C0 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081433BA
	ldr r0, _081433C4 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081433C8 @ =sub_081433CC
	str r0, [r1]
_081433BA:
	pop {r0}
	bx r0
	.align 2, 0
_081433C0: .4byte 0x000009D8
_081433C4: .4byte 0x000009CC
_081433C8: .4byte sub_081433CC

	thumb_func_start sub_081433CC
sub_081433CC: @ 0x081433CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081433F0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081433E2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_081433E2:
	ldr r0, _081433F4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081433F8 @ =sub_081433FC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081433F0: .4byte 0x00000BEC
_081433F4: .4byte 0x000009CC
_081433F8: .4byte sub_081433FC

	thumb_func_start sub_081433FC
sub_081433FC: @ 0x081433FC
	ldr r1, _08143408 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814340C @ =sub_08143410
	str r1, [r0]
	bx lr
	.align 2, 0
_08143408: .4byte 0x000009CC
_0814340C: .4byte sub_08143410

	thumb_func_start sub_08143410
sub_08143410: @ 0x08143410
	ldr r1, _0814341C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08143420 @ =sub_08143424
	str r1, [r0]
	bx lr
	.align 2, 0
_0814341C: .4byte 0x000009CC
_08143420: .4byte sub_08143424

	thumb_func_start sub_08143424
sub_08143424: @ 0x08143424
	push {lr}
	ldr r0, _08143438 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_08143438: .4byte gCurTask

	thumb_func_start sub_0814343C
sub_0814343C: @ 0x0814343C
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
	ldr r2, _08143460 @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143460: .4byte 0x01002000

	thumb_func_start sub_08143464
sub_08143464: @ 0x08143464
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08143490 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08143494 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143490: .4byte 0x000001FF
_08143494: .4byte 0x01000400

	thumb_func_start sub_08143498
sub_08143498: @ 0x08143498
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _081434A6
	movs r0, #1
	b _081434A8
_081434A6:
	movs r0, #0
_081434A8:
	pop {r1}
	bx r1

	thumb_func_start sub_081434AC
sub_081434AC: @ 0x081434AC
	push {r4, r5, r6, lr}
	ldr r1, _081434F0 @ =gObjPalette
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r4, [r0]
	movs r2, #3
	adds r5, r1, #0
	ldr r6, _081434F4 @ =gMainFlags
	adds r3, r5, #0
_081434BE:
	adds r1, r2, #0
	adds r1, #0x35
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r0, r2, #0
	adds r0, #0x34
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _081434BE
	adds r0, r5, #0
	adds r0, #0x6a
	strh r4, [r0]
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081434F0: .4byte gObjPalette
_081434F4: .4byte gMainFlags
