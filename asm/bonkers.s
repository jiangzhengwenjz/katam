	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBonkers
CreateBonkers: @ 0x080CF5A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CF5D8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CF5DC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CF5E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CF5E8
	.align 2, 0
_080CF5D8: .4byte ObjectMain
_080CF5DC: .4byte ObjectDestroy
_080CF5E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CF5E8:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r5, #0xc]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CF622
	orrs r2, r3
	b _080CF628
_080CF622:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080CF628:
	str r2, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r5, #0x5c]
	subs r1, #0xaa
	movs r2, #0x16
	rsbs r2, r2, #0
	movs r4, #0xa
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x18
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080CF688 @ =sub_0809EF88
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	bl sub_080D1488
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CF688: .4byte sub_0809EF88

	thumb_func_start sub_080CF68C
sub_080CF68C: @ 0x080CF68C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r3, [r0]
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080CF6B4
	b _080CF86A
_080CF6B4:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080CF6C8
	b _080CF86A
_080CF6C8:
	ldr r1, [r6, #0x40]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	ble _080CF6D8
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080CF6E0
_080CF6D8:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CF6E0:
	str r0, [r6, #8]
	adds r7, r6, #0
	adds r7, #0xac
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov r8, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov sl, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CF71E
	b _080CF86A
_080CF71E:
	ldr r4, _080CF87C @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080CF880 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080CF898
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080CF7A6
	movs r0, #0
	strb r0, [r1, #9]
_080CF7A6:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r4, _080CF884 @ =0x0000065E
	adds r0, r0, r4
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080CF86A
	ldr r0, _080CF888 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080CF86A
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CF86A
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080CF828
	movs r4, #1
_080CF7F0:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080CF7F0
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080CF828:
	ldr r1, _080CF888 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080CF88C @ =gKirbys
	ldr r0, _080CF890 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080CF86A
	ldr r0, _080CF894 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080CF86A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080CF86A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CF87C: .4byte gCurLevelInfo
_080CF880: .4byte 0xFFFFFDFF
_080CF884: .4byte 0x0000065E
_080CF888: .4byte gUnk_08352D80
_080CF88C: .4byte gKirbys
_080CF890: .4byte gUnk_0203AD3C
_080CF894: .4byte gUnk_0203AD20

	thumb_func_start sub_080CF898
sub_080CF898: @ 0x080CF898
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF8E8 @ =sub_080D14AC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x1e
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080CF8EC @ =gUnk_08351530
	ldr r0, _080CF8F0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CF8D8
	movs r0, #0xf
	strh r0, [r4, #4]
_080CF8D8:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF8E8: .4byte sub_080D14AC
_080CF8EC: .4byte gUnk_08351530
_080CF8F0: .4byte gUnk_0203AD30

	thumb_func_start sub_080CF8F4
sub_080CF8F4: @ 0x080CF8F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF914 @ =sub_080CF960
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF91C
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CF918 @ =0x0000FF40
	b _080CF922
	.align 2, 0
_080CF914: .4byte sub_080CF960
_080CF918: .4byte 0x0000FF40
_080CF91C:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CF950 @ =0x0000FF80
_080CF922:
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080CF934
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080CF934:
	ldr r2, _080CF954 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CF958 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CF95C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF950: .4byte 0x0000FF80
_080CF954: .4byte gRngVal
_080CF958: .4byte 0x00196225
_080CF95C: .4byte 0x3C6EF35F

	thumb_func_start sub_080CF960
sub_080CF960: @ 0x080CF960
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF9FC
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CF9B4 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CF9B8
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CFA7C
	.align 2, 0
_080CF9B4: .4byte 0xFFFFF800
_080CF9B8:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CFA80
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CF9F8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CFA7C
	.align 2, 0
_080CF9F8: .4byte 0xFFFFF800
_080CF9FC:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CFA40
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CFA3C @ =0xFFFFF800
	adds r0, r0, r2
	b _080CFA7C
	.align 2, 0
_080CFA3C: .4byte 0xFFFFF800
_080CFA40:
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CFAA8 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CFA80
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CFA7C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CFA80:
	ldrb r1, [r4, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080CFAB6
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CFAAC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CFAB4
	.align 2, 0
_080CFAA8: .4byte 0xFFFFF800
_080CFAAC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CFAB4:
	str r0, [r4, #8]
_080CFAB6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CFAD6
	ldrh r1, [r4, #4]
	movs r6, #4
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _080CFAD2
	adds r0, r4, #0
	bl sub_080D14C8
	b _080CFAEC
_080CFAD2:
	subs r0, r1, #1
	strh r0, [r4, #4]
_080CFAD6:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CFAEC
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CFAEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CFAF4
sub_080CFAF4: @ 0x080CFAF4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFB90
	adds r5, r2, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x40]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080CFB48 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CFB4C
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _080CFC10
	.align 2, 0
_080CFB48: .4byte 0xFFFFF800
_080CFB4C:
	adds r5, r2, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	cmp r1, r0
	bgt _080CFC14
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r6, #0
	ldrsh r1, [r4, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CFB8C @ =0xFFFFF800
	adds r0, r0, r3
	b _080CFC10
	.align 2, 0
_080CFB8C: .4byte 0xFFFFF800
_080CFB90:
	adds r5, r2, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x40]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CFBD4
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CFBD0 @ =0xFFFFF800
	adds r0, r0, r3
	b _080CFC10
	.align 2, 0
_080CFBD0: .4byte 0xFFFFF800
_080CFBD4:
	movs r0, #0x3e
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #8
	ldr r3, _080CFC34 @ =0xFFFFF800
	adds r0, r0, r3
	cmp r1, r0
	blt _080CFC14
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CFC10:
	subs r1, r1, r0
	str r1, [r2, #0x40]
_080CFC14:
	ldrb r0, [r2, #1]
	cmp r0, #0xc
	bls _080CFC22
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CFC22:
	ldr r3, [r2, #8]
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	beq _080CFC38
	adds r0, r2, #0
	bl sub_080CFC50
	b _080CFC4A
	.align 2, 0
_080CFC34: .4byte 0xFFFFF800
_080CFC38:
	adds r1, r2, #0
	adds r1, #0x62
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080CFC4A
	adds r0, r2, #0
	adds r0, #0x50
	strh r3, [r0]
_080CFC4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CFC50
sub_080CFC50: @ 0x080CFC50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080CFC84 @ =sub_080CFF00
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CFC88
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080CFC90
	.align 2, 0
_080CFC84: .4byte sub_080CFF00
_080CFC88:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CFC90:
	str r0, [r5, #8]
	ldr r2, _080CFCE8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CFCEC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CFCF0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080CFCF4 @ =0x00005554
	cmp r2, r0
	bls _080CFD2E
	ldr r0, _080CFCF8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080CFCB2
	movs r1, #1
_080CFCB2:
	cmp r1, #0
	beq _080CFD2E
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFCFC
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
	adds r1, r5, #0
	adds r1, #0xa0
	strh r0, [r1]
	movs r2, #0x80
	adds r2, r2, r5
	mov sl, r2
	movs r3, #0x50
	adds r3, r3, r5
	mov r8, r3
	adds r4, r5, #0
	adds r4, #0x60
	str r4, [sp]
	b _080CFDDA
	.align 2, 0
_080CFCE8: .4byte gRngVal
_080CFCEC: .4byte 0x00196225
_080CFCF0: .4byte 0x3C6EF35F
_080CFCF4: .4byte 0x00005554
_080CFCF8: .4byte 0x0000AAA9
_080CFCFC:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	adds r1, r5, #0
	adds r1, #0xa0
	strh r0, [r1]
	movs r0, #0x80
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0x50
	adds r1, r1, r5
	mov r8, r1
	adds r2, r5, #0
	adds r2, #0x60
	str r2, [sp]
	b _080CFDDA
_080CFD22:
	ldrh r0, [r6]
	adds r0, #0x30
	b _080CFDD8
_080CFD28:
	adds r0, r3, #0
	adds r0, #0x20
	b _080CFDD8
_080CFD2E:
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	adds r0, r5, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r7, r0, #0
	movs r3, #0xa8
	adds r3, r3, r5
	mov sb, r3
	movs r4, #0x80
	adds r4, r4, r5
	mov sl, r4
	movs r0, #0x50
	adds r0, r0, r5
	mov r8, r0
	adds r1, r5, #0
	adds r1, #0x60
	str r1, [sp]
	b _080CFD94
_080CFD54:
	ldr r4, _080CFD90 @ =gUnk_082D88B8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #0x44]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CFD94
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CFD22
	ldrh r0, [r6]
	subs r0, #0x30
	b _080CFDD8
	.align 2, 0
_080CFD90: .4byte gUnk_082D88B8
_080CFD94:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFDA4
	ldrh r0, [r7]
	subs r0, #0x10
	b _080CFDA8
_080CFDA4:
	ldrh r0, [r7]
	adds r0, #0x10
_080CFDA8:
	strh r0, [r7]
	adds r6, r7, #0
	ldrh r3, [r6]
	lsls r1, r3, #0x10
	asrs r2, r1, #0x10
	mov r4, sb
	movs r0, #0
	ldrsh r4, [r4, r0]
	mov ip, r4
	cmp r2, ip
	bge _080CFDCA
	adds r0, r5, #0
	adds r0, #0xa4
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r2, r0
	bgt _080CFD54
_080CFDCA:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CFD28
	adds r0, r3, #0
	subs r0, #0x20
_080CFDD8:
	strh r0, [r6]
_080CFDDA:
	ldr r1, _080CFE1C @ =gUnk_08351530
	ldr r0, _080CFE20 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CFE3A
	ldr r2, _080CFE24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CFE28 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080CFE2C @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFE30
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	b _080CFE56
	.align 2, 0
_080CFE1C: .4byte gUnk_08351530
_080CFE20: .4byte gUnk_0203AD30
_080CFE24: .4byte gRngVal
_080CFE28: .4byte 0x00196225
_080CFE2C: .4byte 0x3C6EF35F
_080CFE30:
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2]
	b _080CFE56
_080CFE3A:
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CFE4E
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, r8
	strh r0, [r3]
	b _080CFE56
_080CFE4E:
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r4, r8
	strh r0, [r4]
_080CFE56:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFE68
	mov r1, r8
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080CFE68:
	ldr r1, _080CFEE0 @ =gKirbys
	ldr r0, _080CFEE4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080CFECE
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CFE92
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CFECE
_080CFE92:
	ldr r1, _080CFEE8 @ =gUnk_08D60FA4
	ldr r4, _080CFEEC @ =gSongTable
	ldr r2, _080CFEF0 @ =0x00000B1C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CFEB6
	ldr r1, _080CFEF4 @ =0x00000B18
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CFECE
_080CFEB6:
	cmp r3, #0
	beq _080CFEC8
	ldr r0, _080CFEF8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CFECE
_080CFEC8:
	ldr r0, _080CFEFC @ =0x00000163
	bl m4aSongNumStart
_080CFECE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CFEE0: .4byte gKirbys
_080CFEE4: .4byte gUnk_0203AD3C
_080CFEE8: .4byte gUnk_08D60FA4
_080CFEEC: .4byte gSongTable
_080CFEF0: .4byte 0x00000B1C
_080CFEF4: .4byte 0x00000B18
_080CFEF8: .4byte gUnk_0203AD10
_080CFEFC: .4byte 0x00000163

	thumb_func_start sub_080CFF00
sub_080CFF00: @ 0x080CFF00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFF98
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CFF50 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CFF54
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080D0018
	.align 2, 0
_080CFF50: .4byte 0xFFFFF800
_080CFF54:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080D001C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CFF94 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0018
	.align 2, 0
_080CFF94: .4byte 0xFFFFF800
_080CFF98:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CFFDC
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CFFD8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0018
	.align 2, 0
_080CFFD8: .4byte 0xFFFFF800
_080CFFDC:
	movs r5, #0x3e
	adds r5, r5, r4
	mov ip, r5
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r5, _080D0044 @ =0xFFFFF800
	adds r0, r0, r5
	cmp r1, r0
	blt _080D001C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D0018:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080D001C:
	ldr r3, [r4, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r4, #8]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080D0060
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0048
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
	b _080D0060
	.align 2, 0
_080D0044: .4byte 0xFFFFF800
_080D0048:
	ldrh r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	strh r0, [r4, #4]
	cmp r0, #0
	beq _080D0060
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
_080D0060:
	adds r0, r4, #0
	adds r0, #0xa0
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r2, r0, #8
	ldr r1, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x50
	cmp r1, r2
	blt _080D0080
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bgt _080D0088
	cmp r1, r2
	bgt _080D0090
_080D0080:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080D0090
_080D0088:
	adds r0, r4, #0
	bl sub_080D1558
	b _080D00A4
_080D0090:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D00A4
	adds r0, r4, #0
	bl sub_080D00AC
_080D00A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D00AC
sub_080D00AC: @ 0x080D00AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080D0164 @ =sub_080D0180
	movs r1, #5
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D00DC
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D00DC:
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080D0168 @ =gKirbys
	ldr r0, _080D016C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0150
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D0110
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0150
_080D0110:
	ldr r1, _080D0170 @ =gUnk_08D60FA4
	ldr r5, _080D0174 @ =gSongTable
	ldr r2, _080D0178 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0136
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0150
_080D0136:
	cmp r3, #0
	beq _080D0148
	ldr r0, _080D017C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0150
_080D0148:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0150:
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D0164: .4byte sub_080D0180
_080D0168: .4byte gKirbys
_080D016C: .4byte gUnk_0203AD3C
_080D0170: .4byte gUnk_08D60FA4
_080D0174: .4byte gSongTable
_080D0178: .4byte 0x00000B24
_080D017C: .4byte gUnk_0203AD10

	thumb_func_start sub_080D0180
sub_080D0180: @ 0x080D0180
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #5
	bne _080D0264
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0244 @ =0xFA800000
	cmp r0, r1
	bge _080D01A2
	ldr r0, _080D0248 @ =0x0000FA80
	strh r0, [r2]
_080D01A2:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D01B2
	b _080D02D8
_080D01B2:
	ldr r1, _080D024C @ =gKirbys
	ldr r0, _080D0250 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D021E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D01DE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D021E
_080D01DE:
	ldr r1, _080D0254 @ =gUnk_08D60FA4
	ldr r5, _080D0258 @ =gSongTable
	ldr r2, _080D025C @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0204
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D021E
_080D0204:
	cmp r3, #0
	beq _080D0216
	ldr r0, _080D0260 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D021E
_080D0216:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D021E:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D02D8
	.align 2, 0
_080D0244: .4byte 0xFA800000
_080D0248: .4byte 0x0000FA80
_080D024C: .4byte gKirbys
_080D0250: .4byte gUnk_0203AD3C
_080D0254: .4byte gUnk_08D60FA4
_080D0258: .4byte gSongTable
_080D025C: .4byte 0x00000B24
_080D0260: .4byte gUnk_0203AD10
_080D0264:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bhi _080D0284
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080D028C
_080D0284:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
_080D028C:
	strh r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0x27
	bls _080D02D4
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080D02C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D02C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D02C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D02CC
	adds r0, r4, #0
	bl sub_080D14F8
	b _080D02D8
	.align 2, 0
_080D02C0: .4byte gRngVal
_080D02C4: .4byte 0x00196225
_080D02C8: .4byte 0x3C6EF35F
_080D02CC:
	adds r0, r4, #0
	bl sub_080D0598
	b _080D02D8
_080D02D4:
	adds r0, #1
	strb r0, [r2]
_080D02D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D02E0
sub_080D02E0: @ 0x080D02E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0378
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080D0330 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D0334
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080D03F4
	.align 2, 0
_080D0330: .4byte 0xFFFFF800
_080D0334:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080D03F8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D0374 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D03F4
	.align 2, 0
_080D0374: .4byte 0xFFFFF800
_080D0378:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080D03BC
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D03B8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D03F4
	.align 2, 0
_080D03B8: .4byte 0xFFFFF800
_080D03BC:
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080D0444 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080D03F8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D03F4:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080D03F8:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x58
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080D0448 @ =0xFA800000
	adds r3, r0, #0
	cmp r1, r2
	bge _080D0410
	ldr r0, _080D044C @ =0x0000FA80
	strh r0, [r3]
_080D0410:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	adds r7, r6, #0
	cmp r0, #8
	bne _080D047C
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #7
	bhi _080D0432
	b _080D057C
_080D0432:
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0450
	subs r1, #0x4e
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080D0458
	.align 2, 0
_080D0444: .4byte 0xFFFFF800
_080D0448: .4byte 0xFA800000
_080D044C: .4byte 0x0000FA80
_080D0450:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080D0458:
	strh r0, [r1]
	adds r2, r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0472
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D0472:
	movs r0, #9
	strb r0, [r7]
	movs r0, #0
	strb r0, [r4]
	b _080D057C
_080D047C:
	cmp r0, #9
	bne _080D0550
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D057C
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_08089864
	movs r0, #0xa
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080D0538 @ =gKirbys
	ldr r0, _080D053C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D052A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D04EA
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D052A
_080D04EA:
	ldr r1, _080D0540 @ =gUnk_08D60FA4
	ldr r4, _080D0544 @ =gSongTable
	ldr r2, _080D0548 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0510
	movs r6, #0xb2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D052A
_080D0510:
	cmp r3, #0
	beq _080D0522
	ldr r0, _080D054C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D052A
_080D0522:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D052A:
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080D057C
	.align 2, 0
_080D0538: .4byte gKirbys
_080D053C: .4byte gUnk_0203AD3C
_080D0540: .4byte gUnk_08D60FA4
_080D0544: .4byte gSongTable
_080D0548: .4byte 0x00000B24
_080D054C: .4byte gUnk_0203AD10
_080D0550:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080D057C
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0574
	adds r0, r5, #0
	bl sub_080CF8F4
	b _080D0592
_080D0574:
	adds r0, r5, #0
	bl sub_080D0D34
	b _080D0592
_080D057C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0592
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D0592:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D0598
sub_080D0598: @ 0x080D0598
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x9f
	ldrb r5, [r0]
	ldr r2, _080D05C8 @ =sub_080D062C
	adds r0, r4, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D05CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D05D4
	.align 2, 0
_080D05C8: .4byte sub_080D062C
_080D05CC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D05D4:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080D0600 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D0604 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D0608 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D060C
	strh r1, [r4, #4]
	b _080D0610
	.align 2, 0
_080D0600: .4byte gRngVal
_080D0604: .4byte 0x00196225
_080D0608: .4byte 0x3C6EF35F
_080D060C:
	movs r0, #3
	strh r0, [r4, #4]
_080D0610:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D062C
sub_080D062C: @ 0x080D062C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x58
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0678 @ =0xFA800000
	cmp r0, r1
	bge _080D0646
	ldr r0, _080D067C @ =0x0000FA80
	strh r0, [r2]
_080D0646:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #8
	bne _080D0680
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080D0666
	b _080D0786
_080D0666:
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r2]
	movs r0, #9
	strb r0, [r6]
	movs r0, #0
	strb r0, [r1]
	b _080D0786
	.align 2, 0
_080D0678: .4byte 0xFA800000
_080D067C: .4byte 0x0000FA80
_080D0680:
	cmp r1, #9
	bne _080D0752
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D0786
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_08089864
	ldr r1, _080D0734 @ =gKirbys
	ldr r0, _080D0738 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0722
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D06E2
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0722
_080D06E2:
	ldr r1, _080D073C @ =gUnk_08D60FA4
	ldr r4, _080D0740 @ =gSongTable
	ldr r2, _080D0744 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0708
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0722
_080D0708:
	cmp r3, #0
	beq _080D071A
	ldr r0, _080D0748 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0722
_080D071A:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0722:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D074C
	movs r0, #0xa
	strb r0, [r6]
	b _080D0786
	.align 2, 0
_080D0734: .4byte gKirbys
_080D0738: .4byte gUnk_0203AD3C
_080D073C: .4byte gUnk_08D60FA4
_080D0740: .4byte gSongTable
_080D0744: .4byte 0x00000B24
_080D0748: .4byte gUnk_0203AD10
_080D074C:
	movs r0, #8
	strb r0, [r6]
	b _080D0786
_080D0752:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080D0786
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0780
	adds r0, r5, #0
	bl sub_080CF8F4
	b _080D0786
_080D0780:
	adds r0, r5, #0
	bl sub_080D0D34
_080D0786:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D078C
sub_080D078C: @ 0x080D078C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #0x12
	bne _080D0814
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #8
	bl sub_080A8C28
	ldr r1, _080D0874 @ =gKirbys
	ldr r0, _080D0878 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0814
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D07D4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0814
_080D07D4:
	ldr r1, _080D087C @ =gUnk_08D60FA4
	ldr r4, _080D0880 @ =gSongTable
	ldr r2, _080D0884 @ =0x00000B64
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D07FA
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0814
_080D07FA:
	cmp r3, #0
	beq _080D080C
	ldr r0, _080D0888 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0814
_080D080C:
	movs r0, #0xb6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0814:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D08D0
	ldr r3, _080D088C @ =gRngVal
	ldr r0, [r3]
	ldr r4, _080D0890 @ =0x00196225
	muls r0, r4, r0
	ldr r1, _080D0894 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D08CA
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r2, _080D0894 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080D08C2
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r6, [r4]
	ldr r2, _080D0898 @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D089C
	ldr r0, [r5, #8]
	orrs r0, r7
	b _080D08A4
	.align 2, 0
_080D0874: .4byte gKirbys
_080D0878: .4byte gUnk_0203AD3C
_080D087C: .4byte gUnk_08D60FA4
_080D0880: .4byte gSongTable
_080D0884: .4byte 0x00000B64
_080D0888: .4byte gUnk_0203AD10
_080D088C: .4byte gRngVal
_080D0890: .4byte 0x00196225
_080D0894: .4byte 0x3C6EF35F
_080D0898: .4byte sub_080D02E0
_080D089C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D08A4:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strb r6, [r4]
	ldr r0, [r5, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D08D0
_080D08C2:
	adds r0, r5, #0
	bl sub_080D0598
	b _080D08D0
_080D08CA:
	adds r0, r5, #0
	bl sub_080D15F8
_080D08D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D08D8
sub_080D08D8: @ 0x080D08D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #0x12
	bne _080D097C
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #8
	bl sub_080A8C28
	ldr r1, _080D0964 @ =gKirbys
	ldr r0, _080D0968 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D09F8
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D0920
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D09F8
_080D0920:
	ldr r1, _080D096C @ =gUnk_08D60FA4
	ldr r4, _080D0970 @ =gSongTable
	ldr r2, _080D0974 @ =0x00000B64
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0946
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D09F8
_080D0946:
	cmp r3, #0
	beq _080D0958
	ldr r0, _080D0978 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D09F8
_080D0958:
	movs r0, #0xb6
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080D09F8
	.align 2, 0
_080D0964: .4byte gKirbys
_080D0968: .4byte gUnk_0203AD3C
_080D096C: .4byte gUnk_08D60FA4
_080D0970: .4byte gSongTable
_080D0974: .4byte 0x00000B64
_080D0978: .4byte gUnk_0203AD10
_080D097C:
	cmp r0, #0x26
	beq _080D0984
	cmp r0, #0x3a
	bne _080D09F8
_080D0984:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	ldr r1, _080D0A44 @ =gKirbys
	ldr r0, _080D0A48 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D09F8
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D09B8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D09F8
_080D09B8:
	ldr r1, _080D0A4C @ =gUnk_08D60FA4
	ldr r4, _080D0A50 @ =gSongTable
	ldr r2, _080D0A54 @ =0x00000B64
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D09DE
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D09F8
_080D09DE:
	cmp r3, #0
	beq _080D09F0
	ldr r0, _080D0A58 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D09F8
_080D09F0:
	movs r0, #0xb6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D09F8:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D0A98
	ldr r2, _080D0A5C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D0A60 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D0A64 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080D0A92
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r6, [r4]
	ldr r2, _080D0A68 @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D0A6C
	ldr r0, [r5, #8]
	orrs r0, r7
	b _080D0A74
	.align 2, 0
_080D0A44: .4byte gKirbys
_080D0A48: .4byte gUnk_0203AD3C
_080D0A4C: .4byte gUnk_08D60FA4
_080D0A50: .4byte gSongTable
_080D0A54: .4byte 0x00000B64
_080D0A58: .4byte gUnk_0203AD10
_080D0A5C: .4byte gRngVal
_080D0A60: .4byte 0x00196225
_080D0A64: .4byte 0x3C6EF35F
_080D0A68: .4byte sub_080D02E0
_080D0A6C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D0A74:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strb r6, [r4]
	ldr r0, [r5, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D0A98
_080D0A92:
	adds r0, r5, #0
	bl sub_080D0598
_080D0A98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D0AA0
sub_080D0AA0: @ 0x080D0AA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0B78 @ =0xFA800000
	cmp r0, r1
	bge _080D0ABA
	ldr r0, _080D0B7C @ =0x0000FA80
	strh r0, [r2]
_080D0ABA:
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _080D0AC6
	movs r0, #0x94
	lsls r0, r0, #3
	strh r0, [r2]
_080D0AC6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x83
	cmp r0, #0
	beq _080D0AD8
	movs r0, #0xd
	strb r0, [r6]
_080D0AD8:
	ldrb r0, [r6]
	cmp r0, #0xd
	bne _080D0B72
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D0B72
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #8
	bl sub_080A8C28
	ldr r1, _080D0B80 @ =gKirbys
	ldr r0, _080D0B84 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0B6A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D0B2A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0B6A
_080D0B2A:
	ldr r1, _080D0B88 @ =gUnk_08D60FA4
	ldr r5, _080D0B8C @ =gSongTable
	ldr r2, _080D0B90 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0B50
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0B6A
_080D0B50:
	cmp r3, #0
	beq _080D0B62
	ldr r0, _080D0B94 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0B6A
_080D0B62:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0B6A:
	movs r0, #0xe
	strb r0, [r6]
	ldr r0, _080D0B98 @ =sub_080D0B9C
	str r0, [r4, #0x78]
_080D0B72:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D0B78: .4byte 0xFA800000
_080D0B7C: .4byte 0x0000FA80
_080D0B80: .4byte gKirbys
_080D0B84: .4byte gUnk_0203AD3C
_080D0B88: .4byte gUnk_08D60FA4
_080D0B8C: .4byte gSongTable
_080D0B90: .4byte 0x00000B24
_080D0B94: .4byte gUnk_0203AD10
_080D0B98: .4byte sub_080D0B9C

	thumb_func_start sub_080D0B9C
sub_080D0B9C: @ 0x080D0B9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0BE0 @ =0xFA800000
	cmp r0, r1
	bge _080D0BB6
	ldr r0, _080D0BE4 @ =0x0000FA80
	strh r0, [r2]
_080D0BB6:
	adds r3, r5, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0xe
	bne _080D0BE8
	ldrb r0, [r5, #1]
	cmp r0, #8
	bne _080D0BCC
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
_080D0BCC:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080D0BD8
	b _080D0D2C
_080D0BD8:
	movs r0, #0xf
	strb r0, [r3]
	b _080D0D2C
	.align 2, 0
_080D0BE0: .4byte 0xFA800000
_080D0BE4: .4byte 0x0000FA80
_080D0BE8:
	cmp r0, #0xf
	bne _080D0C90
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D0BFC
	b _080D0D2C
_080D0BFC:
	movs r0, #0x10
	strb r0, [r3]
	ldr r1, _080D0C70 @ =gKirbys
	ldr r0, _080D0C74 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080D0C1E
	b _080D0D2C
_080D0C1E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D0C30
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080D0C30
	b _080D0D2C
_080D0C30:
	ldr r1, _080D0C78 @ =gUnk_08D60FA4
	ldr r4, _080D0C7C @ =gSongTable
	ldr r2, _080D0C80 @ =0x00000B2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0C54
	ldr r1, _080D0C84 @ =0x00000B28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0D2C
_080D0C54:
	cmp r3, #0
	beq _080D0C66
	ldr r0, _080D0C88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0D2C
_080D0C66:
	ldr r0, _080D0C8C @ =0x00000165
	bl m4aSongNumStart
	b _080D0D2C
	.align 2, 0
_080D0C70: .4byte gKirbys
_080D0C74: .4byte gUnk_0203AD3C
_080D0C78: .4byte gUnk_08D60FA4
_080D0C7C: .4byte gSongTable
_080D0C80: .4byte 0x00000B2C
_080D0C84: .4byte 0x00000B28
_080D0C88: .4byte gUnk_0203AD10
_080D0C8C: .4byte 0x00000165
_080D0C90:
	cmp r0, #0x10
	bne _080D0D2C
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080D0D2C
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _080D0CF0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D0CF4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D0CF8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080D0D26
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r6, [r4]
	ldr r2, _080D0CFC @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D0D00
	ldr r0, [r5, #8]
	orrs r0, r7
	b _080D0D08
	.align 2, 0
_080D0CF0: .4byte gRngVal
_080D0CF4: .4byte 0x00196225
_080D0CF8: .4byte 0x3C6EF35F
_080D0CFC: .4byte sub_080D02E0
_080D0D00:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D0D08:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strb r6, [r4]
	ldr r0, [r5, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D0D2C
_080D0D26:
	adds r0, r5, #0
	bl sub_080D0598
_080D0D2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D0D34
sub_080D0D34: @ 0x080D0D34
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D0D58 @ =sub_080D0DC0
	movs r1, #0x12
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D0D5C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D0D64
	.align 2, 0
_080D0D58: .4byte sub_080D0DC0
_080D0D5C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D0D64:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D0D7C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x13
	strb r0, [r1]
	b _080D0D9E
_080D0D7C:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080D0DBC @ =0x0000FE80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0D9E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D0D9E:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D0DBC: .4byte 0x0000FE80

	thumb_func_start sub_080D0DC0
sub_080D0DC0: @ 0x080D0DC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0E5C
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080D0E14 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D0E18
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080D0ED8
	.align 2, 0
_080D0E14: .4byte 0xFFFFF800
_080D0E18:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080D0EDC
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D0E58 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0ED8
	.align 2, 0
_080D0E58: .4byte 0xFFFFF800
_080D0E5C:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080D0EA0
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D0E9C @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0ED8
	.align 2, 0
_080D0E9C: .4byte 0xFFFFF800
_080D0EA0:
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080D0FB4 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080D0EDC
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D0ED8:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080D0EDC:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x38
	movs r3, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080D0FB8 @ =0xFA800000
	adds r6, r0, #0
	cmp r1, r2
	bge _080D0EF6
	ldr r0, _080D0FBC @ =0x0000FA80
	strh r0, [r6]
_080D0EF6:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x12
	bne _080D0FE0
	subs r0, #0x21
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D0F10
	b _080D107A
_080D0F10:
	adds r0, r5, #0
	adds r0, #0x50
	strh r3, [r0]
	strh r3, [r6]
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_08089864
	ldr r1, _080D0FC0 @ =gKirbys
	ldr r0, _080D0FC4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0FA4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D0F68
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0FA4
_080D0F68:
	ldr r1, _080D0FC8 @ =gUnk_08D60FA4
	ldr r4, _080D0FCC @ =gSongTable
	ldr r2, _080D0FD0 @ =0x00000B2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0F8C
	ldr r6, _080D0FD4 @ =0x00000B28
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0FA4
_080D0F8C:
	cmp r3, #0
	beq _080D0F9E
	ldr r0, _080D0FD8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0FA4
_080D0F9E:
	ldr r0, _080D0FDC @ =0x00000165
	bl m4aSongNumStart
_080D0FA4:
	movs r0, #0x13
	strb r0, [r7]
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080D107A
	.align 2, 0
_080D0FB4: .4byte 0xFFFFF800
_080D0FB8: .4byte 0xFA800000
_080D0FBC: .4byte 0x0000FA80
_080D0FC0: .4byte gKirbys
_080D0FC4: .4byte gUnk_0203AD3C
_080D0FC8: .4byte gUnk_08D60FA4
_080D0FCC: .4byte gSongTable
_080D0FD0: .4byte 0x00000B2C
_080D0FD4: .4byte 0x00000B28
_080D0FD8: .4byte gUnk_0203AD10
_080D0FDC: .4byte 0x00000165
_080D0FE0:
	ldrb r0, [r5, #1]
	cmp r0, #0x44
	bne _080D0FEC
	adds r0, r5, #0
	bl sub_080D109C
_080D0FEC:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D107A
	ldr r2, _080D103C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1040 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D1044 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	mov r8, r2
	ands r0, r2
	cmp r0, #0
	beq _080D1072
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r7, [r4]
	ldr r2, _080D1048 @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D104C
	ldr r0, [r5, #8]
	mov r1, r8
	orrs r0, r1
	b _080D1054
	.align 2, 0
_080D103C: .4byte gRngVal
_080D1040: .4byte 0x00196225
_080D1044: .4byte 0x3C6EF35F
_080D1048: .4byte sub_080D02E0
_080D104C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D1054:
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r0, [r6]
	strb r7, [r4]
	ldr r0, [r5, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D1090
_080D1072:
	adds r0, r5, #0
	bl sub_080D0598
	b _080D1090
_080D107A:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080D1090
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D1090:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D109C
sub_080D109C: @ 0x080D109C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D10BA
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x18
	b _080D10C2
_080D10BA:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x18
_080D10C2:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov sb, r0
	ldr r2, _080D1104 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1108 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D110C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080D1110 @ =0x00005554
	cmp r2, r0
	bls _080D118E
	ldr r0, _080D1114 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080D10E8
	movs r1, #1
_080D10E8:
	cmp r1, #0
	beq _080D118E
	movs r4, #0
	ldr r1, _080D1118 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D111C @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D1134
	.align 2, 0
_080D1104: .4byte gRngVal
_080D1108: .4byte 0x00196225
_080D110C: .4byte 0x3C6EF35F
_080D1110: .4byte 0x00005554
_080D1114: .4byte 0x0000AAA9
_080D1118: .4byte gUnk_020229D4
_080D111C: .4byte gUnk_020229E0
_080D1120:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D113C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D1134:
	cmp r0, #0
	bne _080D1120
	orrs r2, r3
	str r2, [r1]
_080D113C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sb
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa8
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	movs r0, #0x15
	strb r0, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	b _080D121C
_080D118E:
	movs r4, #0
	ldr r1, _080D11A8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D11AC @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D11C4
	.align 2, 0
_080D11A8: .4byte gUnk_020229D4
_080D11AC: .4byte gUnk_020229E0
_080D11B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D11CC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D11C4:
	cmp r0, #0
	bne _080D11B0
	orrs r2, r3
	str r2, [r1]
_080D11CC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sb
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa9
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	movs r0, #0x15
	strb r0, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_080D121C:
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBonkersNut
CreateBonkersNut: @ 0x080D122C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D1260 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D1264 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D1268
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D1270
	.align 2, 0
_080D1260: .4byte ObjectMain
_080D1264: .4byte ObjectDestroy
_080D1268:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D1270:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #7
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r5, #8
	rsbs r5, r5, #0
	movs r6, #6
	str r6, [sp]
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D12E8
	ldr r0, [r4, #0x5c]
	ands r0, r5
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x5c]
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xa
	bl sub_0803E308
_080D12E8:
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D1378 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080D1394
	ldr r1, _080D137C @ =gKirbys
	ldr r0, _080D1380 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D136C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D132C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D136C
_080D132C:
	ldr r1, _080D1384 @ =gUnk_08D60FA4
	ldr r5, _080D1388 @ =gSongTable
	ldr r2, _080D138C @ =0x00000B44
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D1352
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D136C
_080D1352:
	cmp r3, #0
	beq _080D1364
	ldr r0, _080D1390 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D136C
_080D1364:
	movs r0, #0xb4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D136C:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D1378: .4byte sub_0809F840
_080D137C: .4byte gKirbys
_080D1380: .4byte gUnk_0203AD3C
_080D1384: .4byte gUnk_08D60FA4
_080D1388: .4byte gSongTable
_080D138C: .4byte 0x00000B44
_080D1390: .4byte gUnk_0203AD10

	thumb_func_start sub_080D1394
sub_080D1394: @ 0x080D1394
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D13B0
	ldr r2, _080D13AC @ =sub_080D140C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	b _080D13BA
	.align 2, 0
_080D13AC: .4byte sub_080D140C
_080D13B0:
	ldr r2, _080D1408 @ =sub_080D140C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
_080D13BA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D13CE
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D13CE:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	adds r0, #0x60
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D13F2
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r2]
_080D13F2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1402
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D1402:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D1408: .4byte sub_080D140C

	thumb_func_start sub_080D140C
sub_080D140C: @ 0x080D140C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080D1462
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080D1470
	movs r3, #1
	strh r3, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D1454
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r2]
_080D1454:
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _080D1462
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D1462:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1480
_080D1470:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080D1480:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D1488
sub_080D1488: @ 0x080D1488
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D14A8 @ =sub_080CF68C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D14A8: .4byte sub_080CF68C

	thumb_func_start sub_080D14AC
sub_080D14AC: @ 0x080D14AC
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D14C2
	adds r0, r1, #0
	bl sub_080CF8F4
_080D14C2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D14C8
sub_080D14C8: @ 0x080D14C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D14F0 @ =sub_080CFAF4
	movs r1, #7
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080D14F4 @ =0x0000FF80
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D14EA
	movs r0, #0x80
	strh r0, [r2]
_080D14EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D14F0: .4byte sub_080CFAF4
_080D14F4: .4byte 0x0000FF80

	thumb_func_start sub_080D14F8
sub_080D14F8: @ 0x080D14F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x9f
	ldrb r5, [r0]
	ldr r2, _080D1528 @ =sub_080D02E0
	adds r0, r4, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D152C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D1534
	.align 2, 0
_080D1528: .4byte sub_080D02E0
_080D152C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D1534:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4d
	strb r5, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1558
sub_080D1558: @ 0x080D1558
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xac
	str r1, [r0]
	subs r0, #0x27
	ldrb r0, [r0]
	cmp r0, #2
	bne _080D1578
	adds r0, r4, #0
	bl sub_080D15F8
	b _080D1596
_080D1578:
	ldr r0, [r4, #0x44]
	ldr r2, _080D158C @ =0xFFFFE800
	adds r0, r0, r2
	ldr r1, [r1, #0x44]
	cmp r0, r1
	ble _080D1590
	adds r0, r4, #0
	bl sub_080D163C
	b _080D1596
	.align 2, 0
_080D158C: .4byte 0xFFFFE800
_080D1590:
	adds r0, r4, #0
	bl sub_080D15B4
_080D1596:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080D15AC
	movs r0, #0
	strb r0, [r1]
_080D15AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D15B4
sub_080D15B4: @ 0x080D15B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D15D8 @ =sub_080D078C
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D15DC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D15E4
	.align 2, 0
_080D15D8: .4byte sub_080D078C
_080D15DC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D15E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D15F8
sub_080D15F8: @ 0x080D15F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D161C @ =sub_080D08D8
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D1620
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D1628
	.align 2, 0
_080D161C: .4byte sub_080D08D8
_080D1620:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D1628:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D163C
sub_080D163C: @ 0x080D163C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D1660 @ =sub_080D0AA0
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D1664
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D166C
	.align 2, 0
_080D1660: .4byte sub_080D0AA0
_080D1664:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D166C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
