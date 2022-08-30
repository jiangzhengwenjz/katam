	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
    
	thumb_func_start CreateStarStoneBlock
CreateStarStoneBlock: @ 0x0811E960
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0811E994 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811E998 @ =sub_0811F034
	str r1, [sp]
	movs r1, #0xe4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811E99C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811E9A4
	.align 2, 0
_0811E994: .4byte ObjectMain
_0811E998: .4byte sub_0811F034
_0811E99C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811E9A4:
	adds r7, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r7, #8]
	ldr r1, _0811E9F8 @ =0x82C08000
	orrs r0, r1
	str r0, [r7, #8]
	ldr r2, [r7, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r2, r1
	ldr r0, [r7, #0x5c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	str r2, [r7, #0x68]
	ldr r0, [r7, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	ands r1, r0
	cmp r1, #0
	beq _0811E9FC
	adds r1, r7, #0
	adds r1, #0xe1
	movs r0, #3
	strb r0, [r1]
	subs r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	b _0811EA0A
	.align 2, 0
_0811E9F8: .4byte 0x82C08000
_0811E9FC:
	adds r2, r7, #0
	adds r2, #0xe1
	movs r0, #2
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x83
	strb r1, [r0]
_0811EA0A:
	movs r5, #7
	rsbs r5, r5, #0
	movs r6, #8
	rsbs r6, r6, #0
	movs r4, #8
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #7
	bl sub_0803E308
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #7
	bl sub_0803E2B0
	adds r0, r7, #0
	bl ObjectInitSprite
	ldr r2, _0811EA5C @ =gUnk_08351648
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0811EA5C: .4byte gUnk_08351648

	thumb_func_start sub_0811EA60
sub_0811EA60: @ 0x0811EA60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _0811EB80 @ =gKirbys
	mov r8, r0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r7, sb
	muls r7, r0, r7
	mov r1, r8
	adds r3, r7, r1
	adds r0, r3, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0811EA90
	b _0811EC72
_0811EA90:
	mov r0, r8
	adds r0, #0x40
	adds r0, r0, r7
	mov ip, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp]
	mov r2, r8
	adds r2, #0x44
	adds r2, r7, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #4]
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0xc]
	add r4, sp, #0x10
	ldr r0, [r5, #0x40]
	asrs r6, r0, #8
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	subs r0, #4
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	adds r0, #4
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	str r1, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	ldrb r1, [r0]
	mov r3, sb
	lsls r2, r3, #1
	movs r3, #3
	adds r0, r3, #0
	lsls r0, r2
	ands r1, r0
	asrs r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r1, #0
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0811EBD4
	mov r0, r8
	adds r0, #0x74
	adds r0, r7, r0
	ldr r0, [r0]
	cmp r0, r5
	bne _0811EB5E
	b _0811EC72
_0811EB5E:
	mov r3, ip
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r0, r6
	ble _0811EB84
	adds r2, r5, #0
	adds r2, #0xe0
	ldrb r3, [r2]
	subs r0, r3, #1
	strb r0, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811EC36
	subs r0, r3, #2
	strb r0, [r2]
	b _0811EC36
	.align 2, 0
_0811EB80: .4byte gKirbys
_0811EB84:
	adds r1, r5, #0
	adds r1, #0xe0
	ldrb r0, [r1]
	adds r3, r0, #1
	strb r3, [r1]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0811EB9A
	adds r0, r3, #1
	strb r0, [r1]
_0811EB9A:
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bgt _0811EBAC
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _0811EBB2
	cmp r2, r1
	blt _0811EC72
_0811EBAC:
	ldr r0, [r4, #8]
	cmp r0, r2
	blt _0811EC72
_0811EBB2:
	ldr r2, [sp, #4]
	ldr r1, [r4, #4]
	cmp r2, r1
	bgt _0811EBC4
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0811EBCA
	cmp r2, r1
	blt _0811EC72
_0811EBC4:
	ldr r0, [r4, #0xc]
	cmp r0, r2
	blt _0811EC72
_0811EBCA:
	adds r2, r5, #0
	adds r2, #0xe3
	ldrb r1, [r2]
	movs r0, #0x20
	b _0811EC6E
_0811EBD4:
	adds r0, r5, #0
	bl sub_08070504
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811EC72
	mov r0, r8
	adds r0, #0x74
	adds r0, r7, r0
	ldr r0, [r0]
	cmp r0, r5
	beq _0811EC72
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811EC36
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bgt _0811EC0E
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _0811EC14
	cmp r2, r1
	blt _0811EC72
_0811EC0E:
	ldr r0, [r4, #8]
	cmp r0, r2
	blt _0811EC72
_0811EC14:
	ldr r2, [sp, #4]
	ldr r1, [r4, #4]
	cmp r2, r1
	bgt _0811EC26
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0811EC2C
	cmp r2, r1
	blt _0811EC72
_0811EC26:
	ldr r0, [r4, #0xc]
	cmp r0, r2
	blt _0811EC72
_0811EC2C:
	adds r2, r5, #0
	adds r2, #0xe3
	ldrb r1, [r2]
	movs r0, #0x20
	b _0811EC6E
_0811EC36:
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bgt _0811EC48
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _0811EC4E
	cmp r2, r1
	blt _0811EC72
_0811EC48:
	ldr r0, [r4, #8]
	cmp r0, r2
	blt _0811EC72
_0811EC4E:
	ldr r2, [sp, #4]
	ldr r1, [r4, #4]
	cmp r2, r1
	bgt _0811EC60
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0811EC66
	cmp r2, r1
	blt _0811EC72
_0811EC60:
	ldr r0, [r4, #0xc]
	cmp r0, r2
	blt _0811EC72
_0811EC66:
	adds r2, r5, #0
	adds r2, #0xe3
	ldrb r1, [r2]
	movs r0, #0x10
_0811EC6E:
	orrs r0, r1
	strb r0, [r2]
_0811EC72:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811EC80
sub_0811EC80: @ 0x0811EC80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r6
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811ECB4
	ldr r2, _0811ECAC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811ECB0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811ECB6
	.align 2, 0
_0811ECAC: .4byte gCurLevelInfo
_0811ECB0: .4byte 0x0000065E
_0811ECB4:
	movs r0, #0xff
_0811ECB6:
	cmp r0, #0xff
	beq _0811ECDE
	lsls r3, r0, #3
	ldr r1, _0811ED70 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811ED74 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811ECDE:
	mov r5, sb
	adds r5, #0xe0
	movs r2, #0
	mov r8, r2
	mov r4, r8
	strb r4, [r5]
	mov r4, sb
	adds r4, #0xe3
	ldrb r1, [r4]
	movs r0, #0xcf
	ands r0, r1
	strb r0, [r4]
	mov r0, sb
	movs r1, #0
	bl sub_0811EA60
	mov r0, sb
	movs r1, #1
	bl sub_0811EA60
	mov r0, sb
	movs r1, #2
	bl sub_0811EA60
	mov r0, sb
	movs r1, #3
	bl sub_0811EA60
	adds r2, r6, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r3, r5, #0
	adds r7, r4, #0
	cmp r0, #0
	beq _0811ED30
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
_0811ED30:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811ED42
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
_0811ED42:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0811ED4C
	rsbs r0, r0, #0
_0811ED4C:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	bge _0811ED78
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811ED88
	b _0811ED84
	.align 2, 0
_0811ED70: .4byte gUnk_02022F40
_0811ED74: .4byte gUnk_02022EC0
_0811ED78:
	ldr r1, _0811EE14 @ =0xFFFFFE00
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811ED88
_0811ED84:
	mov r2, r8
	strh r2, [r4]
_0811ED88:
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0
	beq _0811ED92
	b _0811EF1C
_0811ED92:
	adds r0, r6, #0
	bl sub_08070504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0811EDA0
	b _0811EEE6
_0811EDA0:
	ldrb r0, [r7]
	movs r2, #0xf7
	ands r2, r0
	strb r2, [r7]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0811EDB8
	movs r1, #8
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r7]
_0811EDB8:
	ldrb r1, [r7]
	movs r0, #4
	adds r2, r1, #0
	orrs r2, r0
	movs r0, #0
	orrs r2, r0
	strb r2, [r7]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811EE5E
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0811EDE0
	b _0811EFEA
_0811EDE0:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0811EDEA
	b _0811EFEA
_0811EDEA:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EE18
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r0, #0
	ldrh r1, [r4]
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0811EE14 @ =0xFFFFFE00
	cmp r1, r0
	blt _0811EE36
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0811EE38
	b _0811EE36
	.align 2, 0
_0811EE14: .4byte 0xFFFFFE00
_0811EE18:
	ldr r0, _0811EE4C @ =0xFFFFFE00
	adds r2, r0, #0
	ldrh r1, [r4]
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0811EE36
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0811EE38
_0811EE36:
	strh r0, [r4]
_0811EE38:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EE50
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xc
	b _0811EE56
	.align 2, 0
_0811EE4C: .4byte 0xFFFFFE00
_0811EE50:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #4
_0811EE56:
	movs r3, #1
	bl sub_08089864
	b _0811EFEA
_0811EE5E:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0811EE68
	b _0811EFEA
_0811EE68:
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0811EE72
	b _0811EFEA
_0811EE72:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EEA0
	ldr r2, _0811EE9C @ =0xFFFFFE00
	adds r1, r2, #0
	ldrh r2, [r4]
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	blt _0811EEBE
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0811EEC0
	b _0811EEBE
	.align 2, 0
_0811EE9C: .4byte 0xFFFFFE00
_0811EEA0:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	ldrh r2, [r4]
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bgt _0811EEBE
	ldr r1, _0811EED4 @ =0xFFFFFE00
	cmp r0, r1
	bge _0811EEC0
_0811EEBE:
	strh r1, [r4]
_0811EEC0:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EED8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xc
	b _0811EEDE
	.align 2, 0
_0811EED4: .4byte 0xFFFFFE00
_0811EED8:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #4
_0811EEDE:
	movs r3, #0
	bl sub_08089864
	b _0811EFEA
_0811EEE6:
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0811EF00
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811EF0E
	b _0811EF0C
_0811EF00:
	ldr r2, _0811EF18 @ =0xFFFFFE00
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811EF0E
_0811EF0C:
	strh r5, [r4]
_0811EF0E:
	ldrb r1, [r7]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r7]
	b _0811EFEA
	.align 2, 0
_0811EF18: .4byte 0xFFFFFE00
_0811EF1C:
	mov r0, sb
	adds r0, #0xe1
	ldrb r0, [r0]
	cmp r5, r0
	blt _0811EFEA
	ldrb r1, [r7]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0811EF88
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0811EF62
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0811EFEA
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0811EFEA
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811EFB0
	ldrh r0, [r4]
	adds r0, #0x40
_0811EF56:
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	bgt _0811EFC4
	b _0811EFE0
_0811EF62:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811EFEA
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0811EFEA
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EF82
	ldrh r0, [r4]
	adds r0, #0x40
	b _0811EFB4
_0811EF82:
	ldrh r0, [r4]
	subs r0, #0x40
	b _0811EF56
_0811EF88:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0811EFA6
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EFA0
	ldrh r0, [r4]
	adds r0, #0x40
	b _0811EFB4
_0811EFA0:
	ldrh r0, [r4]
	subs r0, #0x40
	b _0811EF56
_0811EFA6:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EFCA
_0811EFB0:
	ldrh r0, [r4]
	subs r0, #0x40
_0811EFB4:
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0x41
	cmp r0, r1
	blt _0811EFE8
	cmp r0, #0x40
	ble _0811EFEA
_0811EFC4:
	movs r0, #0x40
	strh r0, [r4]
	b _0811EFEA
_0811EFCA:
	adds r1, r4, #0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _0811EFE0
	movs r0, #0x40
	strh r0, [r1]
	b _0811EFEA
_0811EFE0:
	movs r1, #0x40
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0811EFEA
_0811EFE8:
	strh r1, [r4]
_0811EFEA:
	ldr r2, [r6, #8]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0811F028
	mov r4, sb
	adds r4, #0xe2
	ldrb r0, [r4]
	cmp r0, #0
	beq _0811F024
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0811F028
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r6, #8]
	ldrb r1, [r7]
	movs r0, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	b _0811F028
_0811F024:
	movs r0, #1
	strb r0, [r4]
_0811F028:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811F034
sub_0811F034: @ 0x0811F034
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F054
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811F05C
_0811F054:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811F05C:
	adds r1, r0, #0
	adds r1, #0xe3
	ldrb r5, [r1]
	subs r1, #0x8d
	ldrb r2, [r1]
	adds r7, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r4, [r0, #2]
	ldrb r6, [r0, #3]
	mov r8, r6
	cmp r2, #0xff
	beq _0811F088
	ldr r1, _0811F0AC @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r1
	ldr r1, _0811F0B0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sb, r0
_0811F088:
	adds r0, r3, #0
	bl ObjectDestroy
	cmp r4, #0
	bne _0811F096
	cmp r7, #0xff
	beq _0811F0C0
_0811F096:
	movs r0, #0x40
	ands r5, r0
	cmp r5, #0
	beq _0811F0B4
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, sb
	movs r3, #1
	bl sub_08001678
	b _0811F0C0
	.align 2, 0
_0811F0AC: .4byte gCurLevelInfo
_0811F0B0: .4byte 0x0000065E
_0811F0B4:
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	movs r3, #0
	bl sub_08001678
_0811F0C0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811F0CC
sub_0811F0CC: @ 0x0811F0CC
	adds r2, r0, #0
	movs r0, #0
	movs r1, #0
	strh r1, [r2, #4]
	adds r1, r2, #0
	adds r1, #0xe2
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, _0811F0E4 @ =sub_0811F0E8
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_0811F0E4: .4byte sub_0811F0E8

	thumb_func_start sub_0811F0E8
sub_0811F0E8: @ 0x0811F0E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0811EC80
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	ldr r3, _0811F124 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	subs r0, #8
	cmp r2, r0
	blt _0811F118
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0811F118:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811F124: .4byte gCurLevelInfo

	thumb_func_start CreateUnknown7A
CreateUnknown7A: @ 0x0811F128
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0811F15C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811F160 @ =sub_0811F824
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F164
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0811F16C
	.align 2, 0
_0811F15C: .4byte ObjectMain
_0811F160: .4byte sub_0811F824
_0811F164:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0811F16C:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	ldr r1, _0811F204 @ =gUnk_02008740
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	add r1, sp, #4
	adds r2, r5, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r0, [r0, #0x1a]
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #2]
	adds r3, r1, #0
	ldr r0, [r2]
	ldrh r0, [r0, #0x1e]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #4]
	adds r0, r3, #0
	ldr r1, [r2]
	ldrh r4, [r0, #2]
	ldrh r0, [r1, #0x20]
	adds r4, r4, r0
	strh r4, [r3, #6]
	adds r0, r3, #0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r2, [r0, #2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	movs r3, #4
	ldrsb r3, [r0, r3]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	adds r0, r5, #0
	bl sub_0803E308
	ldr r2, _0811F208 @ =gUnk_08351648
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
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0811F204: .4byte gUnk_02008740
_0811F208: .4byte gUnk_08351648

	thumb_func_start sub_0811F20C
sub_0811F20C: @ 0x0811F20C
	push {r4, r5, lr}
	mov ip, r0
	movs r4, #0
	strh r4, [r0, #4]
	mov r3, ip
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	mov r2, ip
	adds r2, #0xb8
	strh r0, [r2]
	ldr r0, [r3]
	ldrh r0, [r0, #8]
	mov r5, ip
	adds r5, #0xba
	strh r0, [r5]
	ldrh r1, [r2]
	mov r0, ip
	adds r0, #0xbc
	strh r1, [r0]
	ldrh r0, [r5]
	mov r1, ip
	adds r1, #0xbe
	strh r0, [r1]
	ldrh r1, [r2]
	mov r0, ip
	adds r0, #0xc0
	strh r1, [r0]
	ldrh r0, [r5]
	mov r1, ip
	adds r1, #0xc2
	strh r0, [r1]
	mov r0, ip
	adds r0, #0xc4
	strh r4, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #0x14]
	adds r1, #4
	strh r0, [r1]
	ldr r0, _0811F268 @ =sub_0811F918
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811F268: .4byte sub_0811F918

	thumb_func_start sub_0811F26C
sub_0811F26C: @ 0x0811F26C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	ldr r3, _0811F304 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811F308 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0811F2AE
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _0811F2AE
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0811F348
_0811F2AE:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r6, [r3]
	mov r8, r6
	adds r5, r2, #0
	ldrb r7, [r2]
	cmp r6, r7
	bne _0811F2D6
	ldrb r0, [r3, #1]
	ldrb r1, [r2, #1]
	cmp r0, r1
	bne _0811F2D6
	ldrb r0, [r3, #2]
	ldrb r1, [r2, #2]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r7, r1, #0x1f
	cmp r7, #0
	beq _0811F310
_0811F2D6:
	movs r1, #0
	mov r2, r8
	strb r2, [r5]
	ldrb r0, [r3, #1]
	strb r0, [r5, #1]
	ldrb r0, [r3, #2]
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	adds r1, r4, #0
	adds r1, #0xc6
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0xc4
	ldrh r1, [r2]
	ldr r0, _0811F30C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	b _0811F402
	.align 2, 0
_0811F304: .4byte gCurLevelInfo
_0811F308: .4byte 0x0000065E
_0811F30C: .4byte 0x0000FDFF
_0811F310:
	adds r5, r4, #0
	adds r5, #0xc4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811F402
	strb r6, [r2]
	ldrb r0, [r3, #1]
	strb r0, [r2, #1]
	ldrb r0, [r3, #2]
	strb r0, [r2, #2]
	strb r7, [r2, #3]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0xc6
	strh r1, [r0]
	ldrh r1, [r5]
	ldr r0, _0811F344 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r5]
	b _0811F402
	.align 2, 0
_0811F344: .4byte 0x0000FDFF
_0811F348:
	adds r2, r4, #0
	adds r2, #0xc4
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0811F402
	ldr r0, [r5]
	ldrh r5, [r0, #8]
	mov sb, r5
	adds r1, r4, #0
	adds r1, #0xb8
	subs r2, #0xa
	ldrh r5, [r2]
	movs r7, #6
	ldrsh r3, [r0, r7]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r7, #0
	mov ip, r7
	mov r8, r1
	cmp r3, r0
	bne _0811F382
	cmp sb, r5
	bne _0811F382
	movs r0, #1
	mov ip, r0
_0811F382:
	mov r1, ip
	cmp r1, #0
	beq _0811F3A4
	ldrh r1, [r6]
	ldr r0, _0811F3A0 @ =0x0000FDFF
	ands r0, r1
	movs r1, #0
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0xb4
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	b _0811F402
	.align 2, 0
_0811F3A0: .4byte 0x0000FDFF
_0811F3A4:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F402
	adds r3, r4, #0
	adds r3, #0xc6
	ldrh r1, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	blt _0811F3C6
	subs r0, r1, #1
	strh r0, [r3]
	b _0811F402
_0811F3C6:
	mov r7, r8
	ldrh r1, [r7]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r1, [r0]
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0xbe
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xc0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xc2
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #0x14]
	strh r0, [r3]
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6]
_0811F402:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811F410
sub_0811F410: @ 0x0811F410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	mov r1, ip
	adds r1, #0xb0
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov r2, ip
	adds r2, #0xc0
	strh r0, [r2]
	ldr r0, [r1]
	ldrh r3, [r0, #8]
	mov r4, ip
	adds r4, #0xc2
	strh r3, [r4]
	mov r0, ip
	adds r0, #0xc4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0811F4A0
	mov r0, ip
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #1
	beq _0811F478
	cmp r1, #1
	bgt _0811F45E
	cmp r1, #0
	beq _0811F468
	b _0811F4A0
_0811F45E:
	cmp r1, #2
	beq _0811F484
	cmp r1, #3
	beq _0811F494
	b _0811F4A0
_0811F468:
	mov r0, ip
	adds r0, #0xb6
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	b _0811F4A0
_0811F478:
	mov r0, ip
	adds r0, #0xb6
	ldrb r0, [r0]
	lsls r0, r0, #4
	subs r0, r3, r0
	b _0811F49E
_0811F484:
	mov r0, ip
	adds r0, #0xb6
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	b _0811F4A0
_0811F494:
	mov r0, ip
	adds r0, #0xb6
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r3, r0
_0811F49E:
	strh r0, [r4]
_0811F4A0:
	mov r2, ip
	adds r2, #0xc4
	ldrh r0, [r2]
	ldr r5, _0811F4D4 @ =0x0000FFE0
	ands r5, r0
	movs r7, #0
	strh r5, [r2]
	mov r0, ip
	adds r0, #0xc0
	ldr r4, [r0]
	mov r1, ip
	adds r1, #0xb8
	ldr r3, [r1]
	mov sl, r0
	adds r6, r2, #0
	mov sb, r1
	cmp r4, r3
	bne _0811F4D8
	movs r1, #0x10
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r6]
	movs r2, #0xba
	add r2, ip
	mov r8, r2
	b _0811F538
	.align 2, 0
_0811F4D4: .4byte 0x0000FFE0
_0811F4D8:
	mov r3, sl
	movs r0, #0
	ldrsh r4, [r3, r0]
	mov r1, sb
	movs r2, #0
	ldrsh r3, [r1, r2]
	cmp r4, r3
	beq _0811F512
	movs r0, #0xc2
	add r0, ip
	mov r8, r0
	mov r0, ip
	adds r0, #0xba
	mov r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	str r1, [sp]
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r0
	ldr r0, [sp]
	cmp r0, r1
	bne _0811F538
	cmp r3, r4
	bge _0811F50E
	movs r1, #4
	b _0811F532
_0811F50E:
	movs r1, #1
	b _0811F532
_0811F512:
	mov r1, ip
	adds r1, #0xc2
	mov r0, ip
	adds r0, #0xba
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r8, r0
	cmp r2, r1
	beq _0811F538
	cmp r1, r2
	bge _0811F530
	movs r1, #8
	b _0811F532
_0811F530:
	movs r1, #2
_0811F532:
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r6]
_0811F538:
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #2
	beq _0811F5BE
	cmp r1, #2
	bgt _0811F556
	cmp r1, #1
	beq _0811F560
	b _0811F674
_0811F556:
	cmp r1, #4
	beq _0811F5EE
	cmp r1, #8
	beq _0811F64C
	b _0811F674
_0811F560:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0811F590
	mov r1, ip
	adds r1, #0x50
	adds r2, #0xb5
	ldrh r0, [r1]
	ldrb r3, [r2]
	adds r0, r0, r3
	strh r0, [r1]
	movs r4, #0
	ldrsh r3, [r1, r4]
	ldrb r0, [r2]
	rsbs r2, r0, #0
	cmp r3, r2
	bge _0811F588
	strh r2, [r1]
	b _0811F5B2
_0811F588:
	cmp r3, r0
	ble _0811F5B2
	strh r0, [r1]
	b _0811F5B2
_0811F590:
	mov r2, ip
	adds r2, #0x50
	mov r3, ip
	adds r3, #0xb5
	ldrb r1, [r3]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldrb r0, [r3]
	cmp r1, r0
	bgt _0811F5B0
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0811F5B2
_0811F5B0:
	strh r0, [r2]
_0811F5B2:
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	mov r2, sb
	strh r0, [r2]
	b _0811F674
_0811F5BE:
	mov r3, ip
	adds r3, #0xb5
	ldrb r0, [r3]
	cmp r0, #0
	beq _0811F5E2
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	ldrb r4, [r3]
	adds r0, r0, r4
	strh r0, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	ldrb r2, [r3]
	cmp r0, r2
	ble _0811F66A
	strh r2, [r1]
	b _0811F66A
_0811F5E2:
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	ldrb r1, [r3]
	adds r0, r0, r1
	b _0811F65A
_0811F5EE:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811F620
	adds r2, #0x50
	mov r4, ip
	adds r4, #0xb5
	ldrb r1, [r4]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r7, #0
	ldrsh r3, [r2, r7]
	ldrb r0, [r4]
	rsbs r1, r0, #0
	cmp r3, r1
	bge _0811F618
	strh r1, [r2]
	b _0811F642
_0811F618:
	cmp r3, r0
	ble _0811F642
	strh r0, [r2]
	b _0811F642
_0811F620:
	mov r1, ip
	adds r1, #0x50
	mov r3, ip
	adds r3, #0xb5
	ldrh r0, [r1]
	ldrb r2, [r3]
	adds r0, r0, r2
	strh r0, [r1]
	movs r4, #0
	ldrsh r2, [r1, r4]
	ldrb r0, [r3]
	cmp r2, r0
	bgt _0811F640
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0811F642
_0811F640:
	strh r0, [r1]
_0811F642:
	mov r7, ip
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	mov r1, sb
	b _0811F672
_0811F64C:
	mov r3, ip
	adds r3, #0xb5
	ldrb r4, [r3]
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, r0, r4
_0811F65A:
	strh r0, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldrb r0, [r3]
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0811F66A
	strh r0, [r2]
_0811F66A:
	mov r7, ip
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	mov r1, r8
_0811F672:
	strh r0, [r1]
_0811F674:
	ldrh r0, [r6]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #2
	beq _0811F6E4
	cmp r1, #2
	bgt _0811F688
	cmp r1, #1
	beq _0811F692
	b _0811F7B2
_0811F688:
	cmp r1, #4
	beq _0811F718
	cmp r1, #8
	beq _0811F768
	b _0811F7B2
_0811F692:
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sb
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r1, r0
	bge _0811F6A4
	b _0811F7BA
_0811F6A4:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811F6C4
	ldr r4, _0811F6C0 @ =0x00007FFF
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F6D4
	b _0811F6D0
	.align 2, 0
_0811F6C0: .4byte 0x00007FFF
_0811F6C4:
	ldr r7, _0811F6E0 @ =0xFFFF8001
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811F6D4
_0811F6D0:
	movs r0, #0
	strh r0, [r1]
_0811F6D4:
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	b _0811F7B2
	.align 2, 0
_0811F6E0: .4byte 0xFFFF8001
_0811F6E4:
	mov r0, ip
	adds r0, #0xc2
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r4, r8
	movs r7, #0
	ldrsh r1, [r4, r7]
	adds r3, r0, #0
	cmp r2, r1
	blt _0811F7BA
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0811F79C
	ldr r7, _0811F714 @ =0x00007FFF
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F7AC
	b _0811F7A8
	.align 2, 0
_0811F714: .4byte 0x00007FFF
_0811F718:
	mov r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bgt _0811F7BA
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _0811F748
	ldr r3, _0811F744 @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F758
	b _0811F754
	.align 2, 0
_0811F744: .4byte 0x00007FFF
_0811F748:
	ldr r4, _0811F764 @ =0xFFFF8001
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811F758
_0811F754:
	movs r0, #0
	strh r0, [r1]
_0811F758:
	mov r7, sl
	ldrh r0, [r7]
	mov r1, sb
	strh r0, [r1]
	b _0811F7B2
	.align 2, 0
_0811F764: .4byte 0xFFFF8001
_0811F768:
	mov r0, ip
	adds r0, #0xc2
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r4, r8
	movs r7, #0
	ldrsh r1, [r4, r7]
	adds r3, r0, #0
	cmp r2, r1
	bgt _0811F7BA
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0811F79C
	ldr r7, _0811F798 @ =0x00007FFF
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F7AC
	b _0811F7A8
	.align 2, 0
_0811F798: .4byte 0x00007FFF
_0811F79C:
	ldr r4, _0811F818 @ =0xFFFF8001
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811F7AC
_0811F7A8:
	movs r0, #0
	strh r0, [r1]
_0811F7AC:
	ldrh r0, [r3]
	mov r7, r8
	strh r0, [r7]
_0811F7B2:
	ldrh r1, [r6]
	ldr r0, _0811F81C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r6]
_0811F7BA:
	ldr r3, _0811F820 @ =gCurLevelInfo
	movs r0, #0x56
	add r0, ip
	mov sl, r0
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
	muls r2, r5, r2
	adds r0, r3, #0
	adds r0, #0x2c
	adds r2, r2, r0
	mov r4, ip
	adds r4, #0xb0
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	mov r6, sb
	movs r7, #0
	ldrsh r1, [r6, r7]
	subs r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	str r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	adds r2, r0, #0
	muls r2, r5, r2
	adds r3, #0x30
	adds r2, r2, r3
	ldr r0, [r4]
	movs r3, #8
	ldrsh r0, [r0, r3]
	mov r4, r8
	movs r6, #0
	ldrsh r1, [r4, r6]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811F818: .4byte 0xFFFF8001
_0811F81C: .4byte 0x0000FEFF
_0811F820: .4byte gCurLevelInfo

	thumb_func_start sub_0811F824
sub_0811F824: @ 0x0811F824
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F83E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811F846
_0811F83E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811F846:
	adds r4, r0, #0
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _0811F860
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0811F860
	adds r0, r2, #0
	bl VramFree
_0811F860:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0811F86E
	bl EwramFree
_0811F86E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r2, [r0]
	adds r6, r0, #0
	adds r5, r4, #0
	adds r5, #0x56
	cmp r2, #0
	beq _0811F8F6
	ldrh r1, [r2, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	cmp r1, r0
	beq _0811F8BC
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0811F894
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0811F90C
_0811F894:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	ldr r4, _0811F8B4 @ =gCurLevelInfo
	ldrb r3, [r5]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r2, r3, r2
	adds r2, r2, r4
	ldr r3, _0811F8B8 @ =0x0000065E
	adds r2, r2, r3
	ldrb r2, [r2]
	movs r3, #1
	bl sub_08001678
	b _0811F8F6
	.align 2, 0
_0811F8B4: .4byte gCurLevelInfo
_0811F8B8: .4byte 0x0000065E
_0811F8BC:
	ldr r1, _0811F8D0 @ =gUnk_020229E0
	movs r3, #0
	cmp r1, r2
	bne _0811F8D8
	ldr r2, _0811F8D4 @ =gUnk_020229D4
	movs r1, #2
	rsbs r1, r1, #0
	ldr r0, [r2]
	ands r0, r1
	b _0811F8F4
	.align 2, 0
_0811F8D0: .4byte gUnk_020229E0
_0811F8D4: .4byte gUnk_020229D4
_0811F8D8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, #0x24
	cmp r3, #0x1f
	bhi _0811F8F6
	ldr r0, [r6]
	cmp r1, r0
	bne _0811F8D8
	ldr r2, _0811F914 @ =gUnk_020229D4
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
_0811F8F4:
	str r0, [r2]
_0811F8F6:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0811F90C
	adds r4, r0, #0
	adds r1, r5, #0
	bl sub_08002984
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080028CC
_0811F90C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0811F914: .4byte gUnk_020229D4

	thumb_func_start sub_0811F918
sub_0811F918: @ 0x0811F918
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0811F26C
	adds r0, r4, #0
	bl sub_0811F410
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811F94C
	ldr r2, _0811F944 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811F948 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811F94E
	.align 2, 0
_0811F944: .4byte gCurLevelInfo
_0811F948: .4byte 0x0000065E
_0811F94C:
	movs r0, #0xff
_0811F94E:
	cmp r0, #0xff
	beq _0811F976
	lsls r3, r0, #3
	ldr r1, _0811F984 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811F988 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811F976:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811F984: .4byte gUnk_02022F40
_0811F988: .4byte gUnk_02022EC0
