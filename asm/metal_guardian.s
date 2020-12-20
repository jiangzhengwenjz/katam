	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateMetalGuardian
CreateMetalGuardian: @ 0x080BD53C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080BD570 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BD574 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BD578
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BD580
	.align 2, 0
_080BD570: .4byte ObjectMain
_080BD574: .4byte ObjectDestroy
_080BD578:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BD580:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BD5A0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BD5A8
_080BD5A0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BD5A8:
	str r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080BD600
	adds r0, r4, #0
	bl sub_080BE25C
	b _080BD61A
_080BD600:
	ldr r2, _080BD630 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_080BD61A:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BD630: .4byte gUnk_08351648

	thumb_func_start sub_080BD634
sub_080BD634: @ 0x080BD634
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0x83
	adds r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #2
	beq _080BD64C
	b _080BD834
_080BD64C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080BD744 @ =gUnk_08354A74
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r7, [r3]
	adds r1, r7, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r6, r2, #0
	movs r1, #0x9e
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080BD68C
	ldrb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r0, #0
	bne _080BD774
	movs r0, #0xff
	strb r0, [r3]
_080BD68C:
	mov r7, sb
	ldrb r0, [r7]
	adds r5, r4, #0
	adds r5, #0x50
	movs r1, #0x52
	adds r1, r1, r4
	mov ip, r1
	cmp r0, #0
	bne _080BD774
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
	bne _080BD6B8
	subs r0, r1, #1
	strb r0, [r3]
_080BD6B8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r2, sb
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BD6DE
	mov r7, r8
	strb r1, [r7]
_080BD6DE:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BD748
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BD716
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD716
	rsbs r0, r2, #0
	strh r0, [r5]
_080BD716:
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r7, #2
	ldrsh r0, [r0, r7]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BD774
	strh r2, [r7]
	b _080BD774
	.align 2, 0
_080BD744: .4byte gUnk_08354A74
_080BD748:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD792
	rsbs r0, r2, #0
	strh r0, [r5]
_080BD774:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD792
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BD7A4
_080BD792:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BD7A4:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080BD7D0
	b _080BD976
_080BD7D0:
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080BD820 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BD824 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080BD828 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080BD82C @ =0x00005554
	cmp r2, r0
	bls _080BD7FA
	ldr r0, _080BD830 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080BD7F4
	movs r1, #1
_080BD7F4:
	cmp r1, #0
	beq _080BD7FA
	b _080BD976
_080BD7FA:
	adds r1, r4, #0
	adds r1, #0x83
	movs r2, #0
	movs r0, #3
	strb r0, [r1]
	ldrh r1, [r5]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	mov r0, ip
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	strh r2, [r5]
	mov r1, ip
	strh r2, [r1]
	b _080BD976
	.align 2, 0
_080BD820: .4byte gRngVal
_080BD824: .4byte 0x00196225
_080BD828: .4byte 0x3C6EF35F
_080BD82C: .4byte 0x00005554
_080BD830: .4byte 0x0000AAA9
_080BD834:
	cmp r0, #3
	bne _080BD920
	ldr r0, [r4, #8]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080BD84A
	b _080BD976
_080BD84A:
	mov r7, r8
	strb r2, [r7]
	ldr r2, _080BD870 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BD874 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BD878 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD87C
	adds r0, r4, #0
	bl sub_080BDE7C
	b _080BD976
	.align 2, 0
_080BD870: .4byte gRngVal
_080BD874: .4byte 0x00196225
_080BD878: .4byte 0x3C6EF35F
_080BD87C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080BDA70
	adds r0, r4, #0
	movs r1, #1
	bl sub_080BDA70
	adds r0, r4, #0
	movs r1, #2
	bl sub_080BDA70
	ldr r1, _080BD900 @ =gKirbys
	ldr r0, _080BD904 @ =gUnk_0203AD3C
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
	bne _080BD976
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BD8C0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BD976
_080BD8C0:
	ldr r1, _080BD908 @ =gUnk_08D60FA4
	ldr r4, _080BD90C @ =gSongTable
	ldr r2, _080BD910 @ =0x00000ABC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BD8E4
	ldr r7, _080BD914 @ =0x00000AB8
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BD976
_080BD8E4:
	cmp r3, #0
	beq _080BD8F6
	ldr r0, _080BD918 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BD976
_080BD8F6:
	ldr r0, _080BD91C @ =0x00000157
	bl m4aSongNumStart
	b _080BD976
	.align 2, 0
_080BD900: .4byte gKirbys
_080BD904: .4byte gUnk_0203AD3C
_080BD908: .4byte gUnk_08D60FA4
_080BD90C: .4byte gSongTable
_080BD910: .4byte 0x00000ABC
_080BD914: .4byte 0x00000AB8
_080BD918: .4byte gUnk_0203AD10
_080BD91C: .4byte 0x00000157
_080BD920:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bhi _080BD956
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD948
	ldr r1, _080BD944 @ =gUnk_08354BA0
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x54
	strb r0, [r1]
	b _080BD956
	.align 2, 0
_080BD944: .4byte gUnk_08354BA0
_080BD948:
	ldr r1, _080BD984 @ =gUnk_08354BA0
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080BD956:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD976
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	adds r0, #0x1d
	ldrh r1, [r0]
	subs r0, #0x50
	strh r1, [r0]
	adds r0, #0x52
	ldrh r1, [r0]
	subs r0, #0x50
	strh r1, [r0]
_080BD976:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD984: .4byte gUnk_08354BA0

	thumb_func_start sub_080BD988
sub_080BD988: @ 0x080BD988
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080BD9AA
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080BD9AA:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BD9C8
	ldr r0, _080BD9C4 @ =0x00003FFF
	cmp r2, r0
	ble _080BD9D0
	b _080BD9F6
	.align 2, 0
_080BD9C4: .4byte 0x00003FFF
_080BD9C8:
	subs r1, r0, r3
	ldr r0, _080BD9E4 @ =0x00003FFF
	cmp r1, r0
	bgt _080BD9F6
_080BD9D0:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD9E8
	ldr r0, _080BD9E4 @ =0x00003FFF
	cmp r2, r0
	ble _080BD9F0
	b _080BD9F6
	.align 2, 0
_080BD9E4: .4byte 0x00003FFF
_080BD9E8:
	subs r1, r1, r0
	ldr r0, _080BD9FC @ =0x00003FFF
	cmp r1, r0
	bgt _080BD9F6
_080BD9F0:
	adds r0, r4, #0
	bl sub_080BE284
_080BD9F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BD9FC: .4byte 0x00003FFF

	thumb_func_start sub_080BDA00
sub_080BDA00: @ 0x080BDA00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080BDA1C
	strh r2, [r1]
_080BDA1C:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #2
	beq _080BDA32
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BDA32
	strb r1, [r2]
_080BDA32:
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080BDA66
	ldr r2, _080BDA6C @ =sub_080BD634
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x5a
	strh r0, [r4, #4]
_080BDA66:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BDA6C: .4byte sub_080BD634

	thumb_func_start sub_080BDA70
sub_080BDA70: @ 0x080BDA70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _080BDAB0 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080BDAB4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BDAB8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BDAC0
	.align 2, 0
_080BDAB0: .4byte sub_08070580
_080BDAB4: .4byte sub_0803DCCC
_080BDAB8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BDAC0:
	adds r5, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
	str r7, [r5, #0x70]
	movs r4, #0
	mov r1, ip
	strh r1, [r5, #4]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r2, _080BDBC8 @ =gUnk_03000510
	mov sb, r2
	ldrb r1, [r2, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r2, [r3]
	lsls r0, r2
	movs r2, #0x10
	mov r8, r2
	orrs r0, r2
	ands r1, r0
	cmp r1, #0
	beq _080BDB1A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080BDB1A:
	ldr r0, _080BDBCC @ =sub_080BDD1C
	str r0, [r5, #0x78]
	ldr r1, _080BDBD0 @ =sub_080BE2C4
	str r1, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	mov r1, ip
	str r1, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strh r1, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x63
	strb r6, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, _080BDBD4 @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	mov r0, sb
	ldrb r1, [r0, #4]
	adds r0, r6, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, r8
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _080BDB7E
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r5, #8]
_080BDB7E:
	mov r0, sl
	cmp r0, #1
	beq _080BDBDC
	cmp r0, #2
	beq _080BDC38
	adds r4, r5, #0
	adds r4, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x52
	mov r1, ip
	strh r1, [r0]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080BDBD8 @ =0x00000311
	movs r0, #8
	b _080BDC72
	.align 2, 0
_080BDBC8: .4byte gUnk_03000510
_080BDBCC: .4byte sub_080BDD1C
_080BDBD0: .4byte sub_080BE2C4
_080BDBD4: .4byte 0x20000043
_080BDBD8: .4byte 0x00000311
_080BDBDC:
	adds r4, r5, #0
	adds r4, #0x50
	ldr r0, _080BDC30 @ =0x000005A2
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080BDC34 @ =0x00000311
	movs r0, #9
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_080708DC
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x18]
	b _080BDC80
	.align 2, 0
_080BDC30: .4byte 0x000005A2
_080BDC34: .4byte 0x00000311
_080BDC38:
	adds r4, r5, #0
	adds r4, #0x50
	ldr r0, _080BDCA0 @ =0x000005A2
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x52
	ldr r0, _080BDCA4 @ =0x0000FA5E
	strh r0, [r1]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080BDCA8 @ =0x00000311
	movs r0, #9
_080BDC72:
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_080708DC
_080BDC80:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BDCB0
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x40]
	ldr r2, _080BDCAC @ =0xFFFFF800
	adds r0, r0, r2
	b _080BDCB8
	.align 2, 0
_080BDCA0: .4byte 0x000005A2
_080BDCA4: .4byte 0x0000FA5E
_080BDCA8: .4byte 0x00000311
_080BDCAC: .4byte 0xFFFFF800
_080BDCB0:
	ldr r0, [r5, #0x40]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
_080BDCB8:
	str r0, [r5, #0x40]
	adds r4, r5, #0
	adds r4, #0x2f
	movs r3, #0
	strb r3, [r4]
	ldr r2, _080BDCFC @ =gKirbys
	ldr r0, _080BDD00 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BDD08
	ldr r5, _080BDD04 @ =0x00000311
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BDD0A
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BDD0A
	.align 2, 0
_080BDCFC: .4byte gKirbys
_080BDD00: .4byte gUnk_0203AD3C
_080BDD04: .4byte 0x00000311
_080BDD08:
	strb r3, [r4]
_080BDD0A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BDD1C
sub_080BDD1C: @ 0x080BDD1C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r2, _080BDD8C @ =gKirbys
	ldr r0, _080BDD90 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BDDD4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080BDD9C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BDDF8
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BDD94 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BDD98 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080BDDF8
	.align 2, 0
_080BDD8C: .4byte gKirbys
_080BDD90: .4byte gUnk_0203AD3C
_080BDD94: .4byte 0xFFF7FFFF
_080BDD98: .4byte 0x0400000A
_080BDD9C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BDDF8
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BDDCC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BDDD0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BDDF8
	.align 2, 0
_080BDDCC: .4byte 0xFFF7FFFF
_080BDDD0: .4byte 0x0400000A
_080BDDD4:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080BDDEE
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080BDDEE
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080BDDEE:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080BDDF8:
	ldr r2, _080BDE3C @ =gKirbys
	ldr r0, _080BDE40 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BDE48
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BDE50
	ldr r6, _080BDE44 @ =0x00000311
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BDE50
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BDE50
	.align 2, 0
_080BDE3C: .4byte gKirbys
_080BDE40: .4byte gUnk_0203AD3C
_080BDE44: .4byte 0x00000311
_080BDE48:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080BDE50:
	adds r0, r5, #0
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BDE70
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BDE70
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #1
	b _080BDE72
_080BDE70:
	movs r0, #0
_080BDE72:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BDE7C
sub_080BDE7C: @ 0x080BDE7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080BDEB4 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080BDEB8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BDEBC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BDEC4
	.align 2, 0
_080BDEB4: .4byte sub_08070580
_080BDEB8: .4byte sub_0803DCCC
_080BDEBC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BDEC4:
	adds r4, r0, #0
	bl sub_0803E380
	movs r2, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r2, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r1, _080BDF9C @ =gUnk_03000510
	mov r8, r1
	ldrb r1, [r1, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r7, #0x10
	mov ip, r7
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _080BDF1C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080BDF1C:
	ldr r0, _080BDFA0 @ =sub_080BE0E8
	str r0, [r4, #0x78]
	ldr r1, _080BDFA4 @ =sub_080BE2A8
	str r1, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strh r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x63
	strb r6, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, _080BDFA8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	mov r7, r8
	ldrb r1, [r7, #4]
	adds r0, r6, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, ip
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _080BDF80
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r4, #8]
_080BDF80:
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _080BDFB0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r7, _080BDFAC @ =0xFFFFF800
	adds r0, r0, r7
	b _080BDFC8
	.align 2, 0
_080BDF9C: .4byte gUnk_03000510
_080BDFA0: .4byte sub_080BE0E8
_080BDFA4: .4byte sub_080BE2A8
_080BDFA8: .4byte 0x20000043
_080BDFAC: .4byte 0xFFFFF800
_080BDFB0:
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080BDFC8:
	str r0, [r4, #0x40]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r7, _080BE048 @ =0x00000311
	movs r0, #7
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	adds r3, r7, #0
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080BE04C @ =gKirbys
	ldr r0, _080BE050 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r2, [r6]
	cmp r0, r2
	bne _080BE054
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BE056
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080BE056
	.align 2, 0
_080BE048: .4byte 0x00000311
_080BE04C: .4byte gKirbys
_080BE050: .4byte gUnk_0203AD3C
_080BE054:
	strb r3, [r5]
_080BE056:
	ldr r1, _080BE0C8 @ =gKirbys
	ldr r0, _080BE0CC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080BE0BA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE07E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BE0BA
_080BE07E:
	ldr r1, _080BE0D0 @ =gUnk_08D60FA4
	ldr r4, _080BE0D4 @ =gSongTable
	ldr r3, _080BE0D8 @ =0x000009CC
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BE0A2
	ldr r7, _080BE0DC @ =0x000009C8
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BE0BA
_080BE0A2:
	cmp r3, #0
	beq _080BE0B4
	ldr r0, _080BE0E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE0BA
_080BE0B4:
	ldr r0, _080BE0E4 @ =0x00000139
	bl m4aSongNumStart
_080BE0BA:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BE0C8: .4byte gKirbys
_080BE0CC: .4byte gUnk_0203AD3C
_080BE0D0: .4byte gUnk_08D60FA4
_080BE0D4: .4byte gSongTable
_080BE0D8: .4byte 0x000009CC
_080BE0DC: .4byte 0x000009C8
_080BE0E0: .4byte gUnk_0203AD10
_080BE0E4: .4byte 0x00000139

	thumb_func_start sub_080BE0E8
sub_080BE0E8: @ 0x080BE0E8
	push {r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r3, [r5, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r5, #8]
	ldr r2, _080BE15C @ =gKirbys
	ldr r0, _080BE160 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BE1A4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080BE16C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BE1C4
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BE164 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BE168 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080BE1C4
	.align 2, 0
_080BE15C: .4byte gKirbys
_080BE160: .4byte gUnk_0203AD3C
_080BE164: .4byte 0xFFF7FFFF
_080BE168: .4byte 0x0400000A
_080BE16C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BE1C4
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BE19C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BE1A0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BE1C4
	.align 2, 0
_080BE19C: .4byte 0xFFF7FFFF
_080BE1A0: .4byte 0x0400000A
_080BE1A4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080BE1BA
	movs r4, #0x80
	lsls r4, r4, #7
	ands r4, r3
	cmp r4, #0
	bne _080BE1BA
	bl sub_08157190
	str r4, [r5, #0x10]
_080BE1BA:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080BE1C4:
	ldr r2, _080BE208 @ =gKirbys
	ldr r0, _080BE20C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BE214
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE21C
	ldr r5, _080BE210 @ =0x00000311
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BE21C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BE21C
	.align 2, 0
_080BE208: .4byte gKirbys
_080BE20C: .4byte gUnk_0203AD3C
_080BE210: .4byte 0x00000311
_080BE214:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080BE21C:
	movs r0, #0
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BE228
sub_080BE228: @ 0x080BE228
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE258 @ =sub_080BD634
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x5a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE258: .4byte sub_080BD634

	thumb_func_start sub_080BE25C
sub_080BE25C: @ 0x080BE25C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE280 @ =sub_080BD988
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE280: .4byte sub_080BD988

	thumb_func_start sub_080BE284
sub_080BE284: @ 0x080BE284
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE2A4 @ =sub_080BDA00
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE2A4: .4byte sub_080BDA00

	thumb_func_start sub_080BE2A8
sub_080BE2A8: @ 0x080BE2A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08073D2C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BE2C4
sub_080BE2C4: @ 0x080BE2C4
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x2a
	movs r2, #0
	movs r0, #0xa
	strb r0, [r1]
	adds r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #8]
	ldr r1, _080BE2F0 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080BE2F4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080BE2F0: .4byte 0xFFFFFDFF
_080BE2F4: .4byte 0xFFFFFEFF
