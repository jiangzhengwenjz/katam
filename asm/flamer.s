	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateFlamer
CreateFlamer: @ 0x080B74DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B7510 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B7514 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B7518
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B7520
	.align 2, 0
_080B7510: .4byte ObjectMain
_080B7514: .4byte ObjectDestroy
_080B7518:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B7520:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080B7546
	ldr r0, [r4, #0xc]
	orrs r0, r1
	str r0, [r4, #0xc]
_080B7546:
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B7580
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B7588
_080B7580:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B7588:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r0, [r4, #0x68]
	ldr r1, _080B75BC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080B75AC
	cmp r0, #1
	ble _080B75AC
	cmp r0, #2
	beq _080B75C0
_080B75AC:
	adds r0, r4, #0
	bl sub_0809D8C8
	adds r0, r4, #0
	bl sub_080B9048
	b _080B75C6
	.align 2, 0
_080B75BC: .4byte 0xFFFFFEFF
_080B75C0:
	adds r0, r4, #0
	bl sub_080BA5A4
_080B75C6:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B75D0
sub_080B75D0: @ 0x080B75D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r1, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _080B75EE
	bl _080B7E5C
_080B75EE:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0x40
	beq _080B75F8
	b _080B7848
_080B75F8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7604
	b _080B7728
_080B7604:
	ldr r0, _080B7720 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7724 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B7682
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7682
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7682
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7682
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B7682:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7696
	bl _080B7E5C
_080B7696:
	ldr r0, _080B7720 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7724 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B7718
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7718
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7718
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7718
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B7718:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7720: .4byte gUnk_082D88B8
_080B7724: .4byte gCurLevelInfo
_080B7728:
	ldr r0, _080B7840 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7844 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B77A6
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B77A6
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B77A6
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B77A6
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B77A6:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B77B8
	b _080B7E5C
_080B77B8:
	ldr r0, _080B7840 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7844 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B783A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B783A
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B783A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B783A
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B783A:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7840: .4byte gUnk_082D88B8
_080B7844: .4byte gCurLevelInfo
_080B7848:
	cmp r0, #0
	beq _080B784E
	b _080B7A9C
_080B784E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B785A
	b _080B797C
_080B785A:
	ldr r0, _080B7974 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7978 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B78D8
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B78D8
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B78D8
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B78D8
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B78D8:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B78EA
	b _080B7E5C
_080B78EA:
	ldr r0, _080B7974 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7978 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B796C
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B796C
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B796C
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B796C
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B796C:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7974: .4byte gUnk_082D88B8
_080B7978: .4byte gCurLevelInfo
_080B797C:
	ldr r0, _080B7A94 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7A98 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B79FA
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B79FA
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B79FA
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B79FA
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B79FA:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7A0C
	b _080B7E5C
_080B7A0C:
	ldr r0, _080B7A94 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7A98 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B7A8E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7A8E
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7A8E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7A8E
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B7A8E:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7A94: .4byte gUnk_082D88B8
_080B7A98: .4byte gCurLevelInfo
_080B7A9C:
	cmp r0, #0x80
	beq _080B7AA2
	b _080B7C84
_080B7AA2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7B98
	ldr r0, _080B7B90 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3c
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7B94 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7B2E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7B2E
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7B2E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7B2E
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7B2E:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7B40
	b _080B7E5C
_080B7B40:
	ldr r0, _080B7B90 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7B94 @ =gCurLevelInfo
	mov ip, r0
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	ble _080B7B74
	b _080B7E54
_080B7B74:
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bge _080B7B84
	b _080B7E54
_080B7B84:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	b _080B7E1C
	.align 2, 0
_080B7B90: .4byte gUnk_082D88B8
_080B7B94: .4byte gCurLevelInfo
_080B7B98:
	ldr r0, _080B7C7C @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3e
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7C80 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7C1A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7C1A
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7C1A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7C1A
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7C1A:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7C2C
	b _080B7E5C
_080B7C2C:
	ldr r0, _080B7C7C @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7C80 @ =gCurLevelInfo
	mov ip, r0
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	ble _080B7C60
	b _080B7E54
_080B7C60:
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bge _080B7C70
	b _080B7E54
_080B7C70:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	b _080B7E1C
	.align 2, 0
_080B7C7C: .4byte gUnk_082D88B8
_080B7C80: .4byte gCurLevelInfo
_080B7C84:
	cmp r0, #0xc0
	beq _080B7C8A
	b _080B7E5C
_080B7C8A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7D40
	ldr r0, _080B7D38 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3e
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7D3C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7D16
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7D16
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7D16
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7D16
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7D16:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7D28
	b _080B7E5C
_080B7D28:
	ldr r0, _080B7D38 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #4
	b _080B7DE0
	.align 2, 0
_080B7D38: .4byte gUnk_082D88B8
_080B7D3C: .4byte gCurLevelInfo
_080B7D40:
	ldr r0, _080B7E6C @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3c
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7E70 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7DC2
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7DC2
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7DC2
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7DC2
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7DC2:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7E5C
	ldr r0, _080B7E6C @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, #4
_080B7DE0:
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7E70 @ =gCurLevelInfo
	mov ip, r0
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B7E54
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7E54
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
_080B7E1C:
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7E54
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7E54
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B7E54:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
_080B7E5A:
	ldr r1, [r0]
_080B7E5C:
	adds r0, r1, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B7E6C: .4byte gUnk_082D88B8
_080B7E70: .4byte gCurLevelInfo

	thumb_func_start sub_080B7E74
sub_080B7E74: @ 0x080B7E74
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r1, #0
	adds r0, #0x85
	ldrb r3, [r0]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	bne _080B7E88
	b _080B818C
_080B7E88:
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0x40
	beq _080B7E92
	b _080B7FA4
_080B7E92:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7F20
	ldr r6, _080B7F18 @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B7F1C @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B7F12
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B7F12
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7F12
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7F12
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B7F12:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B7F18: .4byte gUnk_082D88B8
_080B7F1C: .4byte gCurLevelInfo
_080B7F20:
	ldr r6, _080B7F9C @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B7FA0 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B7F96
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B7F96
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7F96
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7F96
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B7F96:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B7F9C: .4byte gUnk_082D88B8
_080B7FA0: .4byte gCurLevelInfo
_080B7FA4:
	cmp r0, #0
	beq _080B7FAA
	b _080B80BC
_080B7FAA:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8038
	ldr r6, _080B8030 @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B8034 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B802A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B802A
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B802A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B802A
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B802A:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B8030: .4byte gUnk_082D88B8
_080B8034: .4byte gCurLevelInfo
_080B8038:
	ldr r6, _080B80B4 @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B80B8 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B80AE
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B80AE
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B80AE
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B80AE
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B80AE:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B80B4: .4byte gUnk_082D88B8
_080B80B8: .4byte gCurLevelInfo
_080B80BC:
	cmp r0, #0x80
	bne _080B810C
	ldr r7, _080B8104 @ =gUnk_082D88B8
	movs r6, #0
	ldr r0, [r2, #0x40]
	asrs r4, r0, #0xc
	ldr r0, _080B8108 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	bgt _080B8186
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	blt _080B8186
	adds r0, r2, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	b _080B8150
	.align 2, 0
_080B8104: .4byte gUnk_082D88B8
_080B8108: .4byte gCurLevelInfo
_080B810C:
	cmp r0, #0xc0
	bne _080B818C
	ldr r7, _080B8194 @ =gUnk_082D88B8
	movs r6, #0
	ldr r0, [r2, #0x40]
	asrs r4, r0, #0xc
	ldr r0, _080B8198 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	bgt _080B8186
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	blt _080B8186
	adds r0, r2, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
_080B8150:
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8186
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8186
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B8186:
	lsls r0, r6, #2
	adds r0, r7, r0
_080B818A:
	ldr r1, [r0]
_080B818C:
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B8194: .4byte gUnk_082D88B8
_080B8198: .4byte gCurLevelInfo

	thumb_func_start sub_080B819C
sub_080B819C: @ 0x080B819C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	movs r2, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080B81BA
	b _080B8940
_080B81BA:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	beq _080B81C4
	b _080B837E
_080B81C4:
	ldr r0, [r4, #0x40]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x44]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	lsls r1, r5, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B836C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r2, r0
	bgt _080B8260
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8260
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8260
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8260
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_080B8260:
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	ldr r1, _080B8370 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8276
	b _080B8940
_080B8276:
	adds r0, r1, #0
	mov sb, r0
	movs r7, #0
	lsls r1, r5, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B836C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r2, r0
	bgt _080B82DE
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B82DE
	mov r1, sl
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B82DE
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B82DE
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B82DE:
	lsls r0, r7, #2
	add r0, sb
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8374
	ldr r0, _080B8370 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	asrs r2, r6, #0x10
	ldr r3, _080B836C @ =gCurLevelInfo
	mov r0, r8
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8354
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8354
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x10
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8354
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8354
	lsrs r1, r6, #0x10
	lsrs r2, r5, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8354:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8368
	b _080B8940
_080B8368:
	ldr r1, [sp, #4]
	b _080B8376
	.align 2, 0
_080B836C: .4byte gCurLevelInfo
_080B8370: .4byte gUnk_082D88B8
_080B8374:
	mov r1, sl
_080B8376:
	lsls r0, r1, #0x10
	asrs r0, r0, #4
	str r0, [r4, #0x44]
	b _080B8940
_080B837E:
	cmp r0, #0
	beq _080B8384
	b _080B8544
_080B8384:
	ldr r0, [r4, #0x40]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x44]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r1, r5, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B852C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r2, r0
	bgt _080B8420
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8420
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8420
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8420
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
_080B8420:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	ldr r1, _080B8530 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8436
	b _080B8940
_080B8436:
	adds r0, r1, #0
	mov sb, r0
	movs r7, #0
	lsls r1, r5, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B852C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r2, r0
	bgt _080B849E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B849E
	mov r1, sl
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B849E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B849E
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B849E:
	lsls r0, r7, #2
	add r0, sb
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8534
	ldr r0, _080B8530 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	asrs r2, r6, #0x10
	ldr r3, _080B852C @ =gCurLevelInfo
	mov r0, r8
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8514
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8514
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x10
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8514
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8514
	lsrs r1, r6, #0x10
	lsrs r2, r5, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8514:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8528
	b _080B8940
_080B8528:
	ldr r1, [sp, #4]
	b _080B8536
	.align 2, 0
_080B852C: .4byte gCurLevelInfo
_080B8530: .4byte gUnk_082D88B8
_080B8534:
	mov r1, sl
_080B8536:
	lsls r0, r1, #0x10
	asrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080B8940
_080B8544:
	cmp r0, #0x80
	beq _080B854A
	b _080B873E
_080B854A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B855A
	adds r0, r4, #0
	adds r0, #0x3c
	b _080B855E
_080B855A:
	adds r0, r4, #0
	adds r0, #0x3e
_080B855E:
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldr r0, [r4, #0x44]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	lsls r5, r5, #0x10
	mov sb, r5
	asrs r5, r5, #0x10
	ldr r1, _080B871C @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r5, r0
	bgt _080B85F6
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B85F6
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B85F6
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B85F6
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
_080B85F6:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #2
	ldr r1, _080B8720 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B860C
	b _080B8940
_080B860C:
	movs r0, #0
	mov sb, r0
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B871C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r5, r1, #0
	cmp r2, r0
	bgt _080B8674
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8674
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8674
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8674
	lsrs r1, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8674:
	mov r1, sb
	lsls r0, r1, #2
	ldr r1, _080B8720 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8728
	adds r0, r1, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B871C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r5, r1, #0
	cmp r2, r0
	bgt _080B86F4
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B86F4
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B86F4
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B86F4
	lsrs r1, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B86F4:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8708
	b _080B8940
_080B8708:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8724
	asrs r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
	.align 2, 0
_080B871C: .4byte gCurLevelInfo
_080B8720: .4byte gUnk_082D88B8
_080B8724:
	asrs r0, r5, #4
	b _080B893E
_080B8728:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B873A
	asrs r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
_080B873A:
	asrs r0, r5, #4
	b _080B893E
_080B873E:
	cmp r0, #0xc0
	beq _080B8744
	b _080B8940
_080B8744:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8754
	adds r0, r4, #0
	adds r0, #0x3e
	b _080B8758
_080B8754:
	adds r0, r4, #0
	adds r0, #0x3c
_080B8758:
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldr r0, [r4, #0x44]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r2, r5, #0x10
	asrs r5, r2, #0x10
	ldr r1, _080B8914 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r2, #0
	mov r8, r1
	cmp r5, r0
	bgt _080B87F0
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B87F0
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B87F0
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B87F0
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
_080B87F0:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8806
	b _080B8940
_080B8806:
	movs r0, #0
	str r0, [sp, #0x18]
	mov r1, sl
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B8914 @ =gCurLevelInfo
	mov ip, r0
	mov r1, r8
	ldrb r5, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8870
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8870
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8870
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8870
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
_080B8870:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8924
	movs r0, #0
	mov sl, r0
	ldr r1, [sp]
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r5, r1, #0x10
	ldr r0, _080B8914 @ =gCurLevelInfo
	mov ip, r0
	mov r1, r8
	ldrb r1, [r1]
	mov r8, r1
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B88F0
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B88F0
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B88F0
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B88F0
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080B88F0:
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8940
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8920
	asrs r0, r6, #4
	ldr r1, _080B891C @ =0xFFFFF000
	b _080B893C
	.align 2, 0
_080B8914: .4byte gCurLevelInfo
_080B8918: .4byte gUnk_082D88B8
_080B891C: .4byte 0xFFFFF000
_080B8920:
	asrs r0, r6, #4
	b _080B893E
_080B8924:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8936
	asrs r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
_080B8936:
	asrs r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #6
_080B893C:
	adds r0, r0, r1
_080B893E:
	str r0, [r4, #0x40]
_080B8940:
	adds r0, r2, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8954
sub_080B8954: @ 0x080B8954
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B897C @ =sub_080B89DC
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #1
	beq _080B8994
	cmp r2, #1
	bgt _080B8980
	cmp r2, #0
	beq _080B8986
	b _080B89AE
	.align 2, 0
_080B897C: .4byte sub_080B89DC
_080B8980:
	cmp r2, #2
	beq _080B899E
	b _080B89AE
_080B8986:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0xcd
	strh r1, [r0]
	adds r0, #0x33
	b _080B89AC
_080B8994:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080B89A6
_080B899E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
_080B89A6:
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
_080B89AC:
	strb r2, [r0]
_080B89AE:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B89C2
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B89C2:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B89DC
sub_080B89DC: @ 0x080B89DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080B8A38 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080B8A3C
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080B8A3C
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080B8A3C
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080B8A3C
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r1, #0x20
	orrs r1, r2
	b _080B8A46
	.align 2, 0
_080B8A38: .4byte gCurLevelInfo
_080B8A3C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r1, #0xdf
	ands r1, r2
_080B8A46:
	strb r1, [r0]
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_080B75D0
	adds r1, r0, #0
	cmp r1, #0
	bne _080B8A58
	b _080B9040
_080B8A58:
	movs r2, #1
	ands r1, r2
	cmp r1, #0
	beq _080B8B24
	ldrb r1, [r7]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	bne _080B8A90
	movs r0, #0x3f
	ands r0, r1
	movs r3, #0x40
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	bne _080B8ABC
	ldr r0, [r4, #0x40]
	ldr r1, _080B8A8C @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080B8AC6
	.align 2, 0
_080B8A8C: .4byte 0xFFFFF000
_080B8A90:
	cmp r0, #0
	bne _080B8AD0
	movs r0, #0x3f
	ands r0, r1
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080B8ABC
	ldr r0, [r4, #0x40]
	ldr r1, _080B8AB8 @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080B8AC6
	.align 2, 0
_080B8AB8: .4byte 0xFFFFF000
_080B8ABC:
	ldr r0, [r4, #0x40]
	ldr r1, _080B8ACC @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xd0
	lsls r1, r1, #4
_080B8AC6:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _080B8B08
	.align 2, 0
_080B8ACC: .4byte 0xFFFFF000
_080B8AD0:
	cmp r0, #0x80
	bne _080B8AF0
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #0x44]
	ldr r1, _080B8AEC @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #4
	b _080B8B04
	.align 2, 0
_080B8AEC: .4byte 0xFFFFF000
_080B8AF0:
	cmp r0, #0xc0
	bne _080B8B08
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7]
	ldr r0, [r4, #0x44]
	ldr r1, _080B8B20 @ =0xFFFFF000
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
_080B8B04:
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080B8B08:
	adds r0, r4, #0
	bl sub_080B75D0
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8B24
	adds r0, r4, #0
	bl sub_080B9048
	b _080B9040
	.align 2, 0
_080B8B20: .4byte 0xFFFFF000
_080B8B24:
	adds r0, r4, #0
	bl sub_080B7E74
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080B819C
	adds r5, r0, #0
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r5, r1
	cmp r6, #0
	bne _080B8B40
	b _080B9040
_080B8B40:
	ldr r0, _080B8B94 @ =0xF0000001
	ands r0, r6
	cmp r0, #0
	beq _080B8B4A
	b _080B8C80
_080B8B4A:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B8B54
	b _080B8C80
_080B8B54:
	ldrb r1, [r7]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	bne _080B8BC4
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8B9C
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080B8B98 @ =0xFFFFF000
	ands r0, r1
	movs r3, #0x98
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8B94: .4byte 0xF0000001
_080B8B98: .4byte 0xFFFFF000
_080B8B9C:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080B8BBC @ =0xFFFFF000
	ands r1, r0
	ldr r0, _080B8BC0 @ =0xFFFFFD00
	adds r1, r1, r0
	str r1, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8BBC: .4byte 0xFFFFF000
_080B8BC0: .4byte 0xFFFFFD00
_080B8BC4:
	cmp r0, #0
	bne _080B8C2C
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8C08
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080B8C00 @ =0xFFFFF000
	ands r1, r0
	ldr r3, _080B8C04 @ =0xFFFFFD00
	adds r1, r1, r3
	str r1, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8C00: .4byte 0xFFFFF000
_080B8C04: .4byte 0xFFFFFD00
_080B8C08:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080B8C28 @ =0xFFFFF000
	ands r0, r1
	movs r1, #0x98
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8C28: .4byte 0xFFFFF000
_080B8C2C:
	cmp r0, #0x80
	bne _080B8C58
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	ldr r1, _080B8C54 @ =0xFFFFF000
	ands r0, r1
	movs r2, #0x98
	lsls r2, r2, #5
	adds r0, r0, r2
	b _080B8C7E
	.align 2, 0
_080B8C54: .4byte 0xFFFFF000
_080B8C58:
	cmp r0, #0xc0
	bne _080B8C80
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	ldr r1, _080B8CA0 @ =0xFFFFF000
	ands r0, r1
	ldr r3, _080B8CA4 @ =0xFFFFFD00
	adds r0, r0, r3
_080B8C7E:
	str r0, [r4, #0x44]
_080B8C80:
	ldrb r0, [r7]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x40
	bne _080B8D1E
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8CA8
	cmp r1, #2
	beq _080B8CAE
	movs r3, #0xcd
	b _080B8CB2
	.align 2, 0
_080B8CA0: .4byte 0xFFFFF000
_080B8CA4: .4byte 0xFFFFFD00
_080B8CA8:
	movs r3, #0xa0
	lsls r3, r3, #1
	b _080B8CB2
_080B8CAE:
	movs r3, #0xc0
	lsls r3, r3, #2
_080B8CB2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r3, [r1]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	cmp r5, #0
	bne _080B8CC6
	b _080B8FA6
_080B8CC6:
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r5, r0
	bne _080B8CD0
	b _080B8E90
_080B8CD0:
	cmp r5, r0
	bhi _080B8CE6
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r5, r0
	beq _080B8D02
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r5, r0
	beq _080B8D02
	b _080B8EA6
_080B8CE6:
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8D02
	cmp r5, r0
	bhi _080B8CF8
	movs r0, #0x80
	lsls r0, r0, #0x17
	b _080B8E64
_080B8CF8:
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8D02
	b _080B8EA6
_080B8D02:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8D10
	cmp r0, #2
	beq _080B8D18
	movs r0, #0xbc
	b _080B8EA4
_080B8D10:
	ldr r0, _080B8D14 @ =0x00000127
	b _080B8EA4
	.align 2, 0
_080B8D14: .4byte 0x00000127
_080B8D18:
	movs r0, #0xb1
	lsls r0, r0, #2
	b _080B8EA4
_080B8D1E:
	cmp r1, #0
	bne _080B8DD0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8D36
	cmp r1, #2
	beq _080B8D3C
	movs r0, #0xcd
	b _080B8D40
_080B8D36:
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080B8D40
_080B8D3C:
	movs r0, #0xc0
	lsls r0, r0, #2
_080B8D40:
	rsbs r0, r0, #0
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r1, r2, #0
	cmp r5, #0
	bne _080B8D58
	b _080B8FA6
_080B8D58:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8DB2
	cmp r5, r0
	bhi _080B8D76
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8D96
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8D96
	b _080B8EA6
_080B8D76:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8D96
	cmp r5, r0
	bhi _080B8D8C
	movs r0, #0xa0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8DB2
	b _080B8EA6
_080B8D8C:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8D96
	b _080B8EA6
_080B8D96:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8DA4
	cmp r0, #2
	beq _080B8DAC
	movs r0, #0xbc
	b _080B8DC6
_080B8DA4:
	ldr r0, _080B8DA8 @ =0x00000127
	b _080B8DC6
	.align 2, 0
_080B8DA8: .4byte 0x00000127
_080B8DAC:
	movs r0, #0xb1
	lsls r0, r0, #2
	b _080B8DC6
_080B8DB2:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8DC0
	cmp r0, #2
	beq _080B8DC4
	movs r0, #0x90
	b _080B8DC6
_080B8DC0:
	movs r0, #0xe2
	b _080B8DC6
_080B8DC4:
	ldr r0, _080B8DCC @ =0x0000021F
_080B8DC6:
	rsbs r0, r0, #0
	b _080B8EA4
	.align 2, 0
_080B8DCC: .4byte 0x0000021F
_080B8DD0:
	cmp r1, #0x80
	bne _080B8EC0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x37
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8DEE
	cmp r1, #2
	beq _080B8DF4
	movs r1, #0xcd
	b _080B8DF8
_080B8DEE:
	movs r1, #0xa0
	lsls r1, r1, #1
	b _080B8DF8
_080B8DF4:
	movs r1, #0xc0
	lsls r1, r1, #2
_080B8DF8:
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r1, r0, #0
	cmp r5, #0
	bne _080B8E06
	b _080B8FA6
_080B8E06:
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8E78
	cmp r5, r0
	bhi _080B8E3A
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r5, r0
	beq _080B8E90
	cmp r5, r0
	bhi _080B8E2C
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r5, r0
	beq _080B8E78
	movs r0, #0x80
	lsls r0, r0, #0x16
	b _080B8E6E
_080B8E2C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8E90
	movs r0, #0xa0
	lsls r0, r0, #0x17
	b _080B8E6E
_080B8E3A:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8E90
	cmp r5, r0
	bhi _080B8E54
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8E78
	movs r0, #0x80
	lsls r0, r0, #0x18
	b _080B8E6E
_080B8E54:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8E78
	cmp r5, r0
	bhi _080B8E6A
	movs r0, #0xa0
	lsls r0, r0, #0x18
_080B8E64:
	cmp r5, r0
	beq _080B8E90
	b _080B8EA6
_080B8E6A:
	movs r0, #0xc0
	lsls r0, r0, #0x18
_080B8E6E:
	cmp r5, r0
	beq _080B8E78
	b _080B8EA6
_080B8E74:
	movs r0, #0x74
	b _080B8EA4
_080B8E78:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8E74
	cmp r0, #2
	beq _080B8E86
	movs r0, #0x4a
	b _080B8EA4
_080B8E86:
	ldr r0, _080B8E8C @ =0x00000117
	b _080B8EA4
	.align 2, 0
_080B8E8C: .4byte 0x00000117
_080B8E90:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8E9E
	cmp r0, #2
	beq _080B8EA2
	movs r0, #0x90
	b _080B8EA4
_080B8E9E:
	movs r0, #0xe2
	b _080B8EA4
_080B8EA2:
	ldr r0, _080B8EB8 @ =0x0000021F
_080B8EA4:
	strh r0, [r1]
_080B8EA6:
	ldr r0, _080B8EBC @ =gUnk_083547AC
	lsrs r1, r5, #0x1a
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080B8FA6
	.align 2, 0
_080B8EB8: .4byte 0x0000021F
_080B8EBC: .4byte gUnk_083547AC
_080B8EC0:
	cmp r1, #0xc0
	bne _080B8FA6
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x37
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8EDE
	cmp r1, #2
	beq _080B8EE4
	movs r1, #0xcd
	b _080B8EE8
_080B8EDE:
	movs r1, #0xa0
	lsls r1, r1, #1
	b _080B8EE8
_080B8EE4:
	movs r1, #0xc0
	lsls r1, r1, #2
_080B8EE8:
	rsbs r1, r1, #0
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r1, r0, #0
	cmp r5, #0
	beq _080B8FA6
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8F68
	cmp r5, r0
	bhi _080B8F2A
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r5, r0
	beq _080B8F80
	cmp r5, r0
	bhi _080B8F1C
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r5, r0
	beq _080B8F68
	movs r0, #0x80
	lsls r0, r0, #0x16
	b _080B8F5E
_080B8F1C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8F80
	movs r0, #0xa0
	lsls r0, r0, #0x17
	b _080B8F5E
_080B8F2A:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8F80
	cmp r5, r0
	bhi _080B8F44
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8F68
	movs r0, #0x80
	lsls r0, r0, #0x18
	b _080B8F5E
_080B8F44:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8F68
	cmp r5, r0
	bhi _080B8F5A
	movs r0, #0xa0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8F80
	b _080B8F98
_080B8F5A:
	movs r0, #0xc0
	lsls r0, r0, #0x18
_080B8F5E:
	cmp r5, r0
	beq _080B8F68
	b _080B8F98
_080B8F64:
	movs r0, #0x74
	b _080B8F94
_080B8F68:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8F64
	cmp r0, #2
	beq _080B8F76
	movs r0, #0x4a
	b _080B8F94
_080B8F76:
	ldr r0, _080B8F7C @ =0x00000117
	b _080B8F94
	.align 2, 0
_080B8F7C: .4byte 0x00000117
_080B8F80:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8F8E
	cmp r0, #2
	beq _080B8F92
	movs r0, #0x90
	b _080B8F94
_080B8F8E:
	movs r0, #0xe2
	b _080B8F94
_080B8F92:
	ldr r0, _080B8FF4 @ =0x0000021F
_080B8F94:
	rsbs r0, r0, #0
	strh r0, [r1]
_080B8F98:
	ldr r0, _080B8FF8 @ =gUnk_083547AC
	lsrs r1, r5, #0x1a
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080B8FA6:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8FBA
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B8FBA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B9040
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #0x14
	bls _080B9040
	adds r1, #0xe
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080B9000
	ldr r0, _080B8FFC @ =0x00003FFF
	cmp r2, r0
	ble _080B9008
	b _080B9034
	.align 2, 0
_080B8FF4: .4byte 0x0000021F
_080B8FF8: .4byte gUnk_083547AC
_080B8FFC: .4byte 0x00003FFF
_080B9000:
	subs r1, r0, r3
	ldr r0, _080B901C @ =0x00003FFF
	cmp r1, r0
	bgt _080B9034
_080B9008:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B9020
	ldr r0, _080B901C @ =0x00003FFF
	cmp r2, r0
	ble _080B9028
	b _080B9034
	.align 2, 0
_080B901C: .4byte 0x00003FFF
_080B9020:
	subs r1, r1, r0
	ldr r0, _080B9030 @ =0x00003FFF
	cmp r1, r0
	bgt _080B9034
_080B9028:
	adds r0, r4, #0
	bl sub_080BA39C
	b _080B9040
	.align 2, 0
_080B9030: .4byte 0x00003FFF
_080B9034:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	movs r0, #0
	strb r0, [r6]
_080B9040:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9048
sub_080B9048: @ 0x080B9048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r2, _080B9130 @ =sub_080BA36C
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080B9134 @ =0xFFFFFEBF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r3, _080B9138 @ =gCurLevelInfo
	adds r0, #4
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r7, [r0]
	cmp r1, r7
	ble _080B909A
	b _080B936E
_080B909A:
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	bge _080B90A8
	b _080B936E
_080B90A8:
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r0, [r0]
	mov ip, r0
	cmp r5, ip
	ble _080B90BA
	b _080B936E
_080B90BA:
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	bge _080B90C8
	b _080B936E
_080B90C8:
	ldr r0, _080B913C @ =gUnk_082D88B8
	mov sl, r0
	movs r0, #0
	mov r8, r0
	asrs r1, r1, #0xc
	asrs r0, r7, #0xc
	cmp r1, r0
	bgt _080B9110
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080B9110
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r0, r5, r0
	asrs r2, r0, #0xc
	mov r5, ip
	asrs r0, r5, #0xc
	cmp r2, r0
	bgt _080B9110
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080B9110
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B9110:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, _080B9140 @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B9144
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	b _080B92A0
	.align 2, 0
_080B9130: .4byte sub_080BA36C
_080B9134: .4byte 0xFFFFFEBF
_080B9138: .4byte gCurLevelInfo
_080B913C: .4byte gUnk_082D88B8
_080B9140: .4byte 0xFFFFDEFC
_080B9144:
	ldr r3, _080B91DC @ =gUnk_082D88B8
	mov sl, r3
	movs r5, #0
	mov r8, r5
	ldr r0, [r4, #0x40]
	asrs r6, r0, #0xc
	ldr r5, _080B91E0 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov sb, r1
	cmp r6, r0
	bgt _080B91BE
	adds r0, r5, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r6, r0
	blt _080B91BE
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	adds r0, r5, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B91BE
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B91BE
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B91BE:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, _080B91E4 @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B91E8
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2]
	b _080B92A4
	.align 2, 0
_080B91DC: .4byte gUnk_082D88B8
_080B91E0: .4byte gCurLevelInfo
_080B91E4: .4byte 0xFFFFDEFC
_080B91E8:
	ldr r7, _080B9284 @ =gUnk_082D88B8
	movs r6, #0
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r3, _080B9288 @ =gCurLevelInfo
	mov ip, r3
	mov r0, sb
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B925A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B925A
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B925A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B925A
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B925A:
	lsls r0, r6, #2
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, _080B928C @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B92AC
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9290
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r0, r3, #0
	b _080B92A0
	.align 2, 0
_080B9284: .4byte gUnk_082D88B8
_080B9288: .4byte gCurLevelInfo
_080B928C: .4byte 0xFFFFDEFC
_080B9290:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r5, #0x40
	rsbs r5, r5, #0
	adds r0, r5, #0
_080B92A0:
	orrs r1, r0
	strb r1, [r2]
_080B92A4:
	adds r0, r4, #0
	bl sub_080B8954
	b _080B936E
_080B92AC:
	ldr r7, _080B9348 @ =gUnk_082D88B8
	movs r6, #0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B934C @ =gCurLevelInfo
	mov ip, r0
	mov r3, sb
	ldrb r5, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B931E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B931E
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B931E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B931E
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B931E:
	lsls r0, r6, #2
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, _080B9350 @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B936E
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9354
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r5, #0x40
	rsbs r5, r5, #0
	adds r0, r5, #0
	b _080B9364
	.align 2, 0
_080B9348: .4byte gUnk_082D88B8
_080B934C: .4byte gCurLevelInfo
_080B9350: .4byte 0xFFFFDEFC
_080B9354:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r0, r3, #0
_080B9364:
	orrs r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_080B8954
_080B936E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B937C
sub_080B937C: @ 0x080B937C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	mov r2, ip
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #5
	bne _080B9396
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r5, ip
	str r0, [r5, #8]
_080B9396:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	mov r3, ip
	adds r3, #0x9f
	ldr r6, _080B9450 @ =gUnk_083546A4
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r1, #0
	bne _080B9480
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B93CA
	subs r0, r1, #1
	strb r0, [r3]
_080B93CA:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B93EC
	strb r1, [r2]
_080B93EC:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B9454
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080B9426
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9426
	rsbs r0, r2, #0
	strh r0, [r4]
_080B9426:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r5, ip
	adds r5, #0x52
	cmp r1, r0
	beq _080B9480
	strh r2, [r5]
	b _080B9480
	.align 2, 0
_080B9450: .4byte gUnk_083546A4
_080B9454:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B94A0
	rsbs r0, r2, #0
	strh r0, [r4]
_080B9480:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B94A0
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080B94B2
_080B94A0:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080B94B2:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r0, [r7]
	subs r2, r0, #1
	strb r2, [r7]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B94EC
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080B94EC
	mov r0, ip
	bl sub_080BA3EC
_080B94EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B94F4
sub_080B94F4: @ 0x080B94F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r2, r7, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r3, [r7, #0x40]
	ldr r0, [r0, #0x40]
	movs r4, #0xc0
	lsls r4, r4, #8
	cmp r3, r0
	ble _080B951A
	movs r4, #0x80
	lsls r4, r4, #7
_080B951A:
	ldrh r0, [r7, #4]
	subs r1, r0, #1
	strh r1, [r7, #4]
	lsls r0, r0, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r0, #0
	bgt _080B9592
	ldr r1, [r2]
	asrs r0, r4, #0x10
	ldr r4, [r1, #0x40]
	adds r4, r4, r0
	subs r4, r4, r3
	asrs r4, r4, #8
	ldr r5, [r7, #0x44]
	ldr r0, [r1, #0x44]
	subs r5, r5, r0
	asrs r5, r5, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r4, r4, #4
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B958A
	cmp r0, #2
	beq _080B958E
	movs r0, #0xc
	b _080B9590
_080B958A:
	movs r0, #9
	b _080B9590
_080B958E:
	movs r0, #6
_080B9590:
	strh r0, [r7, #4]
_080B9592:
	adds r2, r7, #0
	adds r2, #0xac
	ldr r0, [r2]
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r0, [r0, #0x40]
	adds r0, r0, r1
	ldr r1, [r7, #0x40]
	subs r3, r0, r1
	cmp r3, #0
	blt _080B95B4
	ldr r0, _080B95B0 @ =0x000009FF
	cmp r3, r0
	ble _080B95BC
	b _080B95E2
	.align 2, 0
_080B95B0: .4byte 0x000009FF
_080B95B4:
	subs r1, r1, r0
	ldr r0, _080B95D0 @ =0x000009FF
	cmp r1, r0
	bgt _080B95E2
_080B95BC:
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	ldr r1, [r7, #0x44]
	subs r3, r0, r1
	cmp r3, #0
	blt _080B95D4
	ldr r0, _080B95D0 @ =0x000009FF
	cmp r3, r0
	ble _080B95DC
	b _080B95E2
	.align 2, 0
_080B95D0: .4byte 0x000009FF
_080B95D4:
	subs r1, r1, r0
	ldr r0, _080B95EC @ =0x000009FF
	cmp r1, r0
	bgt _080B95E2
_080B95DC:
	adds r0, r7, #0
	bl sub_080BA400
_080B95E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B95EC: .4byte 0x000009FF

	thumb_func_start sub_080B95F0
sub_080B95F0: @ 0x080B95F0
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080B96B4 @ =gUnk_08354710
	cmp r0, #0
	bne _080B96EC
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080B9620
	subs r0, r2, #1
	strb r0, [r4]
_080B9620:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B9646
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B9646:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B96B8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B9684
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9684
	rsbs r0, r3, #0
	strh r0, [r2]
_080B9684:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B96EC
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080B96EC
	.align 2, 0
_080B96B4: .4byte gUnk_08354710
_080B96B8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B9716
	rsbs r0, r5, #0
	strh r0, [r2]
_080B96EC:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080B9716
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080B9728
_080B9716:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080B9728:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B9766
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080B9766
	mov r0, ip
	bl sub_080BA450
_080B9766:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B976C
sub_080B976C: @ 0x080B976C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	movs r1, #4
	ldrsh r6, [r4, r1]
	cmp r6, #0
	beq _080B97AC
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _080B9808
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B97A4
	adds r0, r4, #0
	bl sub_080BA4D0
	b _080B9808
_080B97A4:
	adds r0, r4, #0
	bl sub_080BA498
	b _080B9808
_080B97AC:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r2, r0, #1
	strb r2, [r5]
	movs r1, #0xff
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B97DA
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x1a
	adds r0, r4, #0
	bl sub_080B9DF0
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B97DA
	strb r6, [r5]
_080B97DA:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B97F4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080B9808
	b _080B9802
_080B97F4:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080B9808
_080B9802:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B9808:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9810
sub_080B9810: @ 0x080B9810
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080B98D4 @ =gUnk_08354734
	cmp r0, #0
	bne _080B990C
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080B9840
	subs r0, r2, #1
	strb r0, [r4]
_080B9840:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B9866
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B9866:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B98D8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B98A4
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B98A4
	rsbs r0, r3, #0
	strh r0, [r2]
_080B98A4:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B990C
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080B990C
	.align 2, 0
_080B98D4: .4byte gUnk_08354734
_080B98D8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B9936
	rsbs r0, r5, #0
	strh r0, [r2]
_080B990C:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080B9936
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080B9948
_080B9936:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080B9948:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B9986
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080B9986
	mov r0, ip
	bl sub_080BA4F0
_080B9986:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B998C
sub_080B998C: @ 0x080B998C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080B9A58 @ =gUnk_0835477C
	cmp r0, #0
	bne _080B9A90
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080B99C4
	subs r0, r2, #1
	strb r0, [r4]
_080B99C4:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B99EA
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B99EA:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B9A5C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B9A28
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9A28
	rsbs r0, r3, #0
	strh r0, [r2]
_080B9A28:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B9A90
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080B9A90
	.align 2, 0
_080B9A58: .4byte gUnk_0835477C
_080B9A5C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B9ABA
	rsbs r0, r5, #0
	strh r0, [r2]
_080B9A90:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080B9ABA
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080B9ACC
_080B9ABA:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080B9ACC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9AF0
sub_080B9AF0: @ 0x080B9AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #1
	mov sb, r0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r2, r7, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r3, [r7, #0x40]
	ldr r0, [r0, #0x40]
	movs r4, #0xf0
	lsls r4, r4, #8
	cmp r3, r0
	ble _080B9B20
	movs r4, #0x80
	lsls r4, r4, #5
_080B9B20:
	ldrh r0, [r7, #4]
	subs r1, r0, #1
	strh r1, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B9B96
	ldr r1, [r2]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r4, [r1, #0x40]
	adds r4, r4, r0
	subs r4, r4, r3
	asrs r4, r4, #8
	ldr r5, [r7, #0x44]
	ldr r0, [r1, #0x44]
	subs r5, r5, r0
	asrs r5, r5, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r4, r4, #4
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B9B8E
	cmp r0, #2
	beq _080B9B92
	movs r0, #0xc
	b _080B9B94
_080B9B8E:
	movs r0, #9
	b _080B9B94
_080B9B92:
	movs r0, #6
_080B9B94:
	strh r0, [r7, #4]
_080B9B96:
	adds r2, r7, #0
	adds r2, #0x3e
	movs r1, #0
	ldrsb r1, [r2, r1]
	mov ip, r1
	lsls r0, r1, #8
	ldr r6, [r7, #0x40]
	adds r5, r6, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	str r2, [sp, #4]
	mov sl, r1
	cmp r5, r0
	bgt _080B9C20
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9C20
	adds r0, r7, #0
	adds r0, #0x3d
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r0, r5, #8
	ldr r2, [r7, #0x44]
	adds r1, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080B9C20
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080B9C20
	asrs r1, r6, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r5
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9C20:
	adds r1, r7, #0
	adds r1, #0x3c
	movs r2, #0
	ldrsb r2, [r1, r2]
	mov ip, r2
	lsls r0, r2, #8
	ldr r6, [r7, #0x40]
	adds r2, r6, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	mov r0, sl
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	str r1, [sp]
	cmp r2, r0
	bgt _080B9CA6
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080B9CA6
	adds r0, r7, #0
	adds r0, #0x3d
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r0, r5, #8
	ldr r2, [r7, #0x44]
	adds r1, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080B9CA6
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080B9CA6
	asrs r1, r6, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r5
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9CA6:
	ldr r2, [sp, #4]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov ip, r2
	lsls r0, r2, #8
	ldr r1, [r7, #0x40]
	adds r5, r1, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	mov r0, sl
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B9D2A
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9D2A
	adds r0, r7, #0
	adds r0, #0x3f
	movs r6, #0
	ldrsb r6, [r0, r6]
	lsls r0, r6, #8
	ldr r2, [r7, #0x44]
	adds r5, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B9D2A
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9D2A
	asrs r1, r1, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r6
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9D2A:
	ldr r2, [sp]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov ip, r2
	lsls r0, r2, #8
	ldr r1, [r7, #0x40]
	adds r2, r1, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	mov r0, sl
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _080B9DAE
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080B9DAE
	adds r0, r7, #0
	adds r0, #0x3f
	movs r6, #0
	ldrsb r6, [r0, r6]
	lsls r0, r6, #8
	ldr r2, [r7, #0x44]
	adds r5, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B9DAE
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9DAE
	asrs r1, r1, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r6
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9DAE:
	mov r2, sb
	cmp r2, #1
	bne _080B9DD6
	adds r2, r7, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #0
	beq _080B9DD0
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_080B9DD0:
	adds r0, r7, #0
	bl sub_080BA54C
_080B9DD6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B9DE8: .4byte gCurLevelInfo
_080B9DEC: .4byte gUnk_082D88B8

	thumb_func_start sub_080B9DF0
sub_080B9DF0: @ 0x080B9DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080B9E2C @ =sub_080BA004
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B9E30 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B9E34
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B9E3C
	.align 2, 0
_080B9E2C: .4byte sub_080BA004
_080B9E30: .4byte sub_0803DCCC
_080B9E34:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B9E3C:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r1, #3
	strb r1, [r5]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	str r7, [r5, #0x44]
	adds r3, r7, #0
	adds r3, #0x60
	ldrh r0, [r3]
	adds r6, r5, #0
	adds r6, #0x42
	movs r2, #0
	mov sl, r2
	strh r0, [r6]
	ldr r0, _080B9F10 @ =gUnk_083547E0
	ands r1, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, _080B9F14 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	adds r2, r7, #0
	adds r2, #0x56
	movs r0, #1
	ldrb r4, [r2]
	lsls r0, r4
	movs r4, #0x10
	mov sb, r4
	orrs r0, r4
	ands r1, r0
	str r3, [sp, #0xc]
	str r2, [sp, #8]
	cmp r1, #0
	beq _080B9E9E
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080B9E9E:
	ldrh r0, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r4, _080B9F18 @ =0x0000031E
	mov r8, r4
	movs r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #6
	mov r3, r8
	bl sub_080709F8
	adds r4, r5, #0
	adds r4, #0x2b
	mov r0, sl
	strb r0, [r4]
	ldr r0, [r7, #0xc]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080B9F2E
	ldr r2, _080B9F1C @ =gKirbys
	ldr r0, _080B9F20 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080B9F28
	ldr r0, _080B9F24 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B9F6C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080B9F6A
	.align 2, 0
_080B9F10: .4byte gUnk_083547E0
_080B9F14: .4byte gUnk_03000510
_080B9F18: .4byte 0x0000031E
_080B9F1C: .4byte gKirbys
_080B9F20: .4byte gUnk_0203AD3C
_080B9F24: .4byte gUnk_08351648
_080B9F28:
	mov r3, sl
	strb r3, [r4]
	b _080B9F6C
_080B9F2E:
	ldr r2, _080B9F60 @ =gKirbys
	ldr r0, _080B9F64 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080B9F68
	mov r0, r8
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B9F6C
	mov r0, r8
	movs r1, #0
	bl sub_0803DFAC
	b _080B9F6A
	.align 2, 0
_080B9F60: .4byte gKirbys
_080B9F64: .4byte gUnk_0203AD3C
_080B9F68:
	mov r0, sl
_080B9F6A:
	strb r0, [r4]
_080B9F6C:
	ldr r1, _080B9FE4 @ =gKirbys
	ldr r0, _080B9FE8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B9FD0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080B9F94
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	cmp r0, r2
	bne _080B9FD0
_080B9F94:
	ldr r1, _080B9FEC @ =gUnk_08D60FA4
	ldr r4, _080B9FF0 @ =gSongTable
	ldr r2, _080B9FF4 @ =0x000009DC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B9FB8
	ldr r1, _080B9FF8 @ =0x000009D8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B9FD0
_080B9FB8:
	cmp r3, #0
	beq _080B9FCA
	ldr r0, _080B9FFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B9FD0
_080B9FCA:
	ldr r0, _080BA000 @ =0x0000013B
	bl m4aSongNumStart
_080B9FD0:
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B9FE4: .4byte gKirbys
_080B9FE8: .4byte gUnk_0203AD3C
_080B9FEC: .4byte gUnk_08D60FA4
_080B9FF0: .4byte gSongTable
_080B9FF4: .4byte 0x000009DC
_080B9FF8: .4byte 0x000009D8
_080B9FFC: .4byte gUnk_0203AD10
_080BA000: .4byte 0x0000013B

	thumb_func_start sub_080BA004
sub_080BA004: @ 0x080BA004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080BA024 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BA028
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BA030
	.align 2, 0
_080BA024: .4byte gCurTask
_080BA028:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BA030:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080BA048
	ldr r0, [r2]
	bl TaskDestroy
	b _080BA32C
_080BA048:
	ldr r2, _080BA0B0 @ =gKirbys
	ldr r0, _080BA0B4 @ =gUnk_0203AD3C
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
	bne _080BA0F8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080BA0C0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BA11E
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BA0B8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BA0BC @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080BA11E
	.align 2, 0
_080BA0B0: .4byte gKirbys
_080BA0B4: .4byte gUnk_0203AD3C
_080BA0B8: .4byte 0xFFF7FFFF
_080BA0BC: .4byte 0x0400000A
_080BA0C0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BA11E
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BA0F0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BA0F4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BA11E
	.align 2, 0
_080BA0F0: .4byte 0xFFF7FFFF
_080BA0F4: .4byte 0x0400000A
_080BA0F8:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080BA114
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080BA114
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080BA114:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080BA11E:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080BA172
	ldr r2, _080BA15C @ =gKirbys
	ldr r0, _080BA160 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080BA168
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BA1CA
	ldr r0, _080BA164 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080BA19C
	.align 2, 0
_080BA15C: .4byte gKirbys
_080BA160: .4byte gUnk_0203AD3C
_080BA164: .4byte gUnk_08351648
_080BA168:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	b _080BA1CA
_080BA172:
	ldr r2, _080BA1B8 @ =gKirbys
	ldr r0, _080BA1BC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _080BA1C4
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BA1CA
	ldr r6, _080BA1C0 @ =0x0000031E
_080BA19C:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BA1CA
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BA1CA
	.align 2, 0
_080BA1B8: .4byte gKirbys
_080BA1BC: .4byte gUnk_0203AD3C
_080BA1C0: .4byte 0x0000031E
_080BA1C4:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r3, [r0]
_080BA1CA:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080BA21C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BA1E8
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080BA1E8
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080BA1E8:
	cmp r3, #0
	beq _080BA21C
	ldr r0, _080BA218 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BA288
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BA288
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080BA32C
	.align 2, 0
_080BA218: .4byte gUnk_03000510
_080BA21C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080BA280 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080BA25A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BA25A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BA25A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BA25A
	movs r3, #4
_080BA25A:
	ldr r0, _080BA284 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BA288
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BA288
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080BA32C
	.align 2, 0
_080BA280: .4byte gKirbys
_080BA284: .4byte gUnk_03000510
_080BA288:
	ldr r0, _080BA2F0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BA2C8
	ldr r6, _080BA2F4 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080BA2F8 @ =gUnk_02026D50
_080BA296:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080BA2C0
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BA2DA
_080BA2C0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080BA296
_080BA2C8:
	movs r0, #1
	cmp r0, #0
	beq _080BA2DA
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080BA2DA:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BA2FC
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080BA32C
	.align 2, 0
_080BA2F0: .4byte gUnk_0203AD44
_080BA2F4: .4byte gCurLevelInfo
_080BA2F8: .4byte gUnk_02026D50
_080BA2FC:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BA326
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0x34]
	adds r1, r1, r0
	movs r7, #0x3e
	ldrsh r0, [r5, r7]
	ldr r2, [r5, #0x38]
	subs r2, r2, r0
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	adds r1, r1, r0
	str r1, [r5, #0x34]
	movs r6, #0x3e
	ldrsh r0, [r5, r6]
	subs r2, r2, r0
	str r2, [r5, #0x38]
_080BA326:
	adds r0, r5, #0
	bl sub_0806FAC8
_080BA32C:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080BA334
sub_080BA334: @ 0x080BA334
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x68]
	ldr r1, _080BA35C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x68]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080BA354
	cmp r0, #1
	ble _080BA354
	cmp r0, #2
	beq _080BA360
_080BA354:
	adds r0, r2, #0
	bl sub_080BA4F0
	b _080BA366
	.align 2, 0
_080BA35C: .4byte 0xFFFFFEFF
_080BA360:
	adds r0, r2, #0
	bl sub_080BA5A4
_080BA366:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA36C
sub_080BA36C: @ 0x080BA36C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BA398
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r0, [r3]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r3]
	adds r0, r2, #0
	bl sub_080B8954
_080BA398:
	pop {r0}
	bx r0

	thumb_func_start sub_080BA39C
sub_080BA39C: @ 0x080BA39C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA3D8 @ =sub_080B937C
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA3DC
	orrs r2, r3
	b _080BA3E2
	.align 2, 0
_080BA3D8: .4byte sub_080B937C
_080BA3DC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BA3E2:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA3EC
sub_080BA3EC: @ 0x080BA3EC
	push {lr}
	ldr r2, _080BA3FC @ =sub_080B94F4
	movs r1, #6
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BA3FC: .4byte sub_080B94F4

	thumb_func_start sub_080BA400
sub_080BA400: @ 0x080BA400
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA43C @ =sub_080B95F0
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA440
	orrs r2, r3
	b _080BA446
	.align 2, 0
_080BA43C: .4byte sub_080B95F0
_080BA440:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BA446:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA450
sub_080BA450: @ 0x080BA450
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA494 @ =sub_080B976C
	movs r1, #8
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #8]
	adds r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BA48E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080BA48E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA494: .4byte sub_080B976C

	thumb_func_start sub_080BA498
sub_080BA498: @ 0x080BA498
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA4C8 @ =sub_080B9810
	movs r1, #9
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x68]
	ldr r1, _080BA4CC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA4C8: .4byte sub_080B9810
_080BA4CC: .4byte 0xFFFFFEFF

	thumb_func_start sub_080BA4D0
sub_080BA4D0: @ 0x080BA4D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA4EC @ =sub_080B998C
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA4EC: .4byte sub_080B998C

	thumb_func_start sub_080BA4F0
sub_080BA4F0: @ 0x080BA4F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA528 @ =sub_080B9AF0
	movs r1, #6
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA52C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BA534
	.align 2, 0
_080BA528: .4byte sub_080B9AF0
_080BA52C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BA534:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BA54C
sub_080BA54C: @ 0x080BA54C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA578 @ =sub_080BA58C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA57C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BA584
	.align 2, 0
_080BA578: .4byte sub_080BA58C
_080BA57C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BA584:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BA58C
sub_080BA58C: @ 0x080BA58C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BA5A0
	adds r0, r2, #0
	bl sub_080B9048
_080BA5A0:
	pop {r0}
	bx r0

	thumb_func_start sub_080BA5A4
sub_080BA5A4: @ 0x080BA5A4
	push {lr}
	ldr r2, _080BA5B4 @ =sub_080BA5B8
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BA5B4: .4byte sub_080BA5B8

	thumb_func_start sub_080BA5B8
sub_080BA5B8: @ 0x080BA5B8
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_125
nullsub_125: @ 0x080BA5C4
	bx lr
	.align 2, 0

	thumb_func_start sub_080BA5C8
sub_080BA5C8: @ 0x080BA5C8
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA5DC
	cmp r1, #0xc0
	bne _080BA608
_080BA5DC:
	mov r0, ip
	adds r0, #0x3e
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BA604 @ =0xFFFFF0FF
	ands r4, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r4, r1
	ands r3, r1
	subs r0, r0, r3
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA62E
	.align 2, 0
_080BA604: .4byte 0xFFFFF0FF
_080BA608:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA634 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r3, r1
	ands r4, r1
	subs r0, r0, r4
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BA62E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA634: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA638
sub_080BA638: @ 0x080BA638
	push {lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA64C
	cmp r1, #0xc0
	bne _080BA678
_080BA64C:
	mov r0, ip
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r3, r0, r1
	ldr r2, [r2, #0x44]
	ldr r0, _080BA674 @ =0xFFFFF0FF
	ands r3, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r2, r0
	adds r0, r3, r2
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA69C
	.align 2, 0
_080BA674: .4byte 0xFFFFF0FF
_080BA678:
	mov r2, ip
	ldr r3, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	adds r2, r0, r1
	ldr r0, _080BA6A0 @ =0xFFFFF0FF
	ands r2, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r3, r0
	adds r0, r2, r3
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
_080BA69C:
	pop {r0}
	bx r0
	.align 2, 0
_080BA6A0: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA6A4
sub_080BA6A4: @ 0x080BA6A4
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA6B8
	cmp r1, #0xc0
	bne _080BA6E4
_080BA6B8:
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BA6E0 @ =0xFFFFF0FF
	ands r4, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r4, r1
	ands r3, r1
	subs r0, r0, r3
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA70A
	.align 2, 0
_080BA6E0: .4byte 0xFFFFF0FF
_080BA6E4:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA710 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r3, r1
	ands r4, r1
	subs r0, r0, r4
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BA70A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA710: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA714
sub_080BA714: @ 0x080BA714
	push {lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA728
	cmp r1, #0xc0
	bne _080BA754
_080BA728:
	mov r0, ip
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r3, r0, r1
	ldr r2, [r2, #0x44]
	ldr r0, _080BA750 @ =0xFFFFF0FF
	ands r3, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r2, r0
	adds r0, r3, r2
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA778
	.align 2, 0
_080BA750: .4byte 0xFFFFF0FF
_080BA754:
	mov r2, ip
	ldr r3, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	adds r2, r0, r1
	ldr r0, _080BA77C @ =0xFFFFF0FF
	ands r2, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r3, r0
	adds r0, r2, r3
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
_080BA778:
	pop {r0}
	bx r0
	.align 2, 0
_080BA77C: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA780
sub_080BA780: @ 0x080BA780
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA794
	cmp r1, #0xc0
	bne _080BA7CC
_080BA794:
	mov r0, ip
	adds r0, #0x3e
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BA7C0 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BA7C4 @ =0x00000FFF
	adds r1, r4, r0
	ands r3, r0
	ldr r4, _080BA7C8 @ =0xFFFFF800
	adds r0, r3, r4
	lsls r0, r0, #1
	subs r1, r1, r0
	subs r1, r1, r2
	mov r0, ip
	str r1, [r0, #0x40]
	b _080BA7F6
	.align 2, 0
_080BA7C0: .4byte 0xFFFFF000
_080BA7C4: .4byte 0x00000FFF
_080BA7C8: .4byte 0xFFFFF800
_080BA7CC:
	mov r1, ip
	ldr r4, [r1, #0x40]
	mov r0, ip
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA7FC @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	subs r0, r1, r0
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r4, ip
	str r0, [r4, #0x44]
_080BA7F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA7FC: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA800
sub_080BA800: @ 0x080BA800
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA814
	cmp r1, #0xc0
	bne _080BA844
_080BA814:
	mov r0, ip
	adds r0, #0x3e
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r5, [r1, #0x44]
	ldr r0, _080BA83C @ =0xFFFFF000
	ands r4, r0
	ldr r1, _080BA840 @ =0x00000FFF
	adds r0, r4, r1
	ands r5, r1
	lsls r1, r5, #1
	subs r0, r0, r1
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA870
	.align 2, 0
_080BA83C: .4byte 0xFFFFF000
_080BA840: .4byte 0x00000FFF
_080BA844:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r5, r0, r2
	ldr r0, _080BA878 @ =0xFFFFF0FF
	ands r5, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r4, r3
	asrs r1, r4, #1
	ldr r0, _080BA87C @ =0x000007FF
	subs r0, r0, r1
	ands r0, r3
	adds r0, r5, r0
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BA870:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BA878: .4byte 0xFFFFF0FF
_080BA87C: .4byte 0x000007FF

	thumb_func_start sub_080BA880
sub_080BA880: @ 0x080BA880
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA894
	cmp r1, #0xc0
	bne _080BA8CC
_080BA894:
	mov r0, ip
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r5, r0, r1
	ldr r4, [r2, #0x44]
	ldr r0, _080BA8C0 @ =0xFFFFF000
	ands r5, r0
	ldr r0, _080BA8C4 @ =0x00000FFF
	ands r4, r0
	ldr r2, _080BA8C8 @ =0xFFFFF800
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r5, r0
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA8FC
	.align 2, 0
_080BA8C0: .4byte 0xFFFFF000
_080BA8C4: .4byte 0x00000FFF
_080BA8C8: .4byte 0xFFFFF800
_080BA8CC:
	mov r2, ip
	ldr r5, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r4, r0, r2
	ldr r0, _080BA904 @ =0xFFFFF0FF
	ands r4, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r5, r3
	asrs r0, r5, #1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	ands r0, r3
	adds r0, r4, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BA8FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BA904: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA908
sub_080BA908: @ 0x080BA908
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA91C
	cmp r1, #0xc0
	bne _080BA948
_080BA91C:
	mov r0, ip
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r4, r0, r1
	ldr r3, [r2, #0x44]
	ldr r0, _080BA940 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BA944 @ =0x00000FFF
	ands r3, r0
	lsls r0, r3, #1
	adds r0, r4, r0
	subs r0, r0, r1
	str r0, [r2, #0x40]
	b _080BA970
	.align 2, 0
_080BA940: .4byte 0xFFFFF000
_080BA944: .4byte 0x00000FFF
_080BA948:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA978 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BA970:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA978: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA97C
sub_080BA97C: @ 0x080BA97C
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA990
	cmp r1, #0xc0
	bne _080BA9BC
_080BA990:
	mov r0, ip
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r4, r0, r1
	ldr r3, [r2, #0x44]
	ldr r0, _080BA9B4 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BA9B8 @ =0x00000FFF
	ands r3, r0
	lsls r0, r3, #1
	adds r0, r4, r0
	subs r0, r0, r1
	str r0, [r2, #0x40]
	b _080BA9E4
	.align 2, 0
_080BA9B4: .4byte 0xFFFFF000
_080BA9B8: .4byte 0x00000FFF
_080BA9BC:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA9EC @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BA9E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA9EC: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA9F0
sub_080BA9F0: @ 0x080BA9F0
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BAA04
	cmp r1, #0xc0
	bne _080BAA3C
_080BAA04:
	mov r0, ip
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r5, r0, r1
	ldr r4, [r2, #0x44]
	ldr r0, _080BAA30 @ =0xFFFFF000
	ands r5, r0
	ldr r0, _080BAA34 @ =0x00000FFF
	ands r4, r0
	ldr r2, _080BAA38 @ =0xFFFFF800
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r5, r0
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BAA6C
	.align 2, 0
_080BAA30: .4byte 0xFFFFF000
_080BAA34: .4byte 0x00000FFF
_080BAA38: .4byte 0xFFFFF800
_080BAA3C:
	mov r2, ip
	ldr r5, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r4, r0, r2
	ldr r0, _080BAA74 @ =0xFFFFF0FF
	ands r4, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r5, r3
	asrs r0, r5, #1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	ands r0, r3
	adds r0, r4, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BAA6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BAA74: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BAA78
sub_080BAA78: @ 0x080BAA78
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BAA8C
	cmp r1, #0xc0
	bne _080BAABC
_080BAA8C:
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r5, [r1, #0x44]
	ldr r0, _080BAAB4 @ =0xFFFFF000
	ands r4, r0
	ldr r1, _080BAAB8 @ =0x00000FFF
	adds r0, r4, r1
	ands r5, r1
	lsls r1, r5, #1
	subs r0, r0, r1
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BAAE8
	.align 2, 0
_080BAAB4: .4byte 0xFFFFF000
_080BAAB8: .4byte 0x00000FFF
_080BAABC:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r5, r0, r2
	ldr r0, _080BAAF0 @ =0xFFFFF0FF
	ands r5, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r4, r3
	asrs r1, r4, #1
	ldr r0, _080BAAF4 @ =0x000007FF
	subs r0, r0, r1
	ands r0, r3
	adds r0, r5, r0
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BAAE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BAAF0: .4byte 0xFFFFF0FF
_080BAAF4: .4byte 0x000007FF

	thumb_func_start sub_080BAAF8
sub_080BAAF8: @ 0x080BAAF8
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BAB0C
	cmp r1, #0xc0
	bne _080BAB44
_080BAB0C:
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BAB38 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BAB3C @ =0x00000FFF
	adds r1, r4, r0
	ands r3, r0
	ldr r4, _080BAB40 @ =0xFFFFF800
	adds r0, r3, r4
	lsls r0, r0, #1
	subs r1, r1, r0
	subs r1, r1, r2
	mov r0, ip
	str r1, [r0, #0x40]
	b _080BAB6E
	.align 2, 0
_080BAB38: .4byte 0xFFFFF000
_080BAB3C: .4byte 0x00000FFF
_080BAB40: .4byte 0xFFFFF800
_080BAB44:
	mov r1, ip
	ldr r4, [r1, #0x40]
	mov r0, ip
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BAB74 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	subs r0, r1, r0
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r4, ip
	str r0, [r4, #0x44]
_080BAB6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BAB74: .4byte 0xFFFFF0FF
