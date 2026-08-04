	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	bl sub_0811942C
	cmp r0, #0
	bne _081194F4
	b _081197C0
_081194F4:
	mov r0, r8
	bl sub_08039490
	adds r4, r0, #0
	mov r1, sp
	mov r0, r8
	ldr r2, [r0, #0x40]
	asrs r2, r2, #8
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sp
	mov r0, r8
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #2]
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	strh r0, [r3, #4]
	mov r2, sp
	mov r0, r8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r2, #6]
	ldr r0, [r4]
	cmp r0, #0
	beq _081195FE
	mov r6, sp
_0811954A:
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x82
	ldrb r1, [r1]
	cmp r1, #0x79
	beq _0811955A
	cmp r1, #0x7d
	bne _081195F6
_0811955A:
	add r3, sp, #8
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r2, r1
	strh r2, [r3]
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #4]
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #6]
	movs r1, #0
	ldrsh r5, [r6, r1]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r7, r3, #0
	cmp r5, r2
	bgt _081195BE
	movs r3, #4
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bge _081195CA
	cmp r5, r2
	blt _081195F6
_081195BE:
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	blt _081195F6
_081195CA:
	ldrh r0, [r6, #2]
	ldrh r1, [r7, #2]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r5, r2
	bgt _081195EA
	movs r3, #6
	ldrsh r1, [r6, r3]
	movs r3, #2
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bge _0811963C
	cmp r5, r2
	blt _081195F6
_081195EA:
	movs r0, #6
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _0811963C
_081195F6:
	adds r4, #4
	ldr r0, [r4]
	cmp r0, #0
	bne _0811954A
_081195FE:
	mov r0, r8
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08119610
	b _08119770
_08119610:
	mov r0, r8
	adds r0, #0xb6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08119640
	mov r3, r8
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08119630
	b _0811977E
_08119630:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _0811963C
	b _08119770
_0811963C:
	movs r0, #1
	b _081197C2
_08119640:
	movs r4, #0
	mov sb, r4
	ldr r0, _0811973C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	blo _0811964E
	b _08119770
_0811964E:
	ldr r1, _08119740 @ =gKirbys
	mov sl, r1
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	mov r6, sp
_0811965C:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r5, sb
	muls r5, r0, r5
	adds r2, r5, #0
	add r2, sl
	mov ip, r2
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r3, [sp, #0x10]
	cmp r0, r3
	bne _0811975C
	add r4, sp, #8
	mov r2, sl
	adds r2, #0x40
	adds r2, r5, r2
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x38
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r3, r3, r1
	strh r3, [r4]
	ldr r0, _08119744 @ =gKirbys+0x44
	adds r5, r5, r0
	ldr r1, [r5]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #4]
	ldr r1, [r5]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #6]
	movs r1, #0
	ldrsh r2, [r6, r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r7, r4, #0
	cmp r2, r3
	bgt _081196E6
	movs r4, #4
	ldrsh r1, [r6, r4]
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r1, r0
	bge _081196F2
	cmp r2, r3
	blt _0811974C
_081196E6:
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	blt _0811974C
_081196F2:
	adds r3, r7, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r3, #2]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r5, r2
	bgt _08119714
	movs r4, #6
	ldrsh r1, [r6, r4]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _08119720
	cmp r5, r2
	blt _0811974C
_08119714:
	movs r0, #6
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r1, r0
	blt _0811974C
_08119720:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r4, _08119748 @ =gKirbys+0xC
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811975C
	b _0811963C
	.align 2, 0
_0811973C: .4byte gUnk_0203AD44
_08119740: .4byte gKirbys
_08119744: .4byte gKirbys+0x44
_08119748: .4byte gKirbys+0xC
_0811974C:
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0811975C
	b _0811963C
_0811975C:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r2, _081197B8 @ =gUnk_0203AD44
	ldrb r2, [r2]
	cmp sb, r2
	bhs _08119770
	b _0811965C
_08119770:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081197C0
_0811977E:
	mov r0, r8
	adds r0, #0xb8
	ldrh r0, [r0]
	cmp r0, #0
	bne _0811978A
	b _0811963C
_0811978A:
	mov r4, r8
	ldr r2, [r4, #0x6c]
	adds r0, r2, #0
	adds r0, #0x56
	ldr r1, _081197BC @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _081197C0
	mov r0, r8
	adds r0, #0xb6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _081197AE
	b _0811963C
_081197AE:
	adds r0, r2, #0
	bl BonusCreateTomato
	b _0811963C
	.align 2, 0
_081197B8: .4byte gUnk_0203AD44
_081197BC: .4byte gUnk_0203AD30
_081197C0:
	movs r0, #0
_081197C2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	.syntax divided
