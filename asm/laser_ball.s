	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateLaserBall
CreateLaserBall: @ 0x080B224C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B2280 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B2284 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B2288
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B2290
	.align 2, 0
_080B2280: .4byte ObjectMain
_080B2284: .4byte ObjectDestroy
_080B2288:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B2290:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #5
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #0xa
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
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B22F0
	ldr r1, _080B22EC @ =gUnk_08353F98
	adds r0, r4, #0
	bl sub_08088398
	b _080B22F8
	.align 2, 0
_080B22EC: .4byte gUnk_08353F98
_080B22F0:
	ldr r1, _080B2328 @ =gUnk_08353F88
	adds r0, r4, #0
	bl sub_08085CE8
_080B22F8:
	ldr r2, _080B232C @ =gUnk_08351648
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
_080B2328: .4byte gUnk_08353F88
_080B232C: .4byte gUnk_08351648

	thumb_func_start sub_080B2330
sub_080B2330: @ 0x080B2330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #1
	bne _080B2364
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B2364
	movs r0, #0
	strb r0, [r2]
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B2362
	movs r2, #1
_080B2362:
	strb r2, [r1]
_080B2364:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	mov sb, r1
	cmp r2, r0
	bgt _080B2376
	b _080B2528
_080B2376:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	bne _080B238E
	adds r0, r4, #0
	adds r0, #0x83
	strb r3, [r0]
_080B238E:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0x1f
	bls _080B23CA
	adds r0, r4, #0
	bl sub_0803D368
	mov r2, sb
	str r0, [r2]
	mov r3, r8
	strb r3, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080B23CA:
	ldr r2, [r4, #0x44]
	ldr r1, _080B23F4 @ =0xFFFFFC00
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080B23F8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2446
	movs r0, #0xff
	b _080B2444
	.align 2, 0
_080B23F4: .4byte 0xFFFFFC00
_080B23F8:
	cmp r2, r0
	bge _080B2416
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B2446
	strh r2, [r1]
	b _080B2446
_080B2416:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080B2436
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B2446
	mov r5, r8
	strh r5, [r1]
	b _080B2446
_080B2436:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B2446
	mov r0, r8
_080B2444:
	strh r0, [r1]
_080B2446:
	ldr r2, [r4, #0x40]
	ldr r1, _080B247C @ =0xFFFFFC00
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080B2480
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B24C6
	movs r0, #0xff
	b _080B24FC
	.align 2, 0
_080B247C: .4byte 0xFFFFFC00
_080B2480:
	cmp r2, r0
	ble _080B24D2
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B24B0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080B24CE
	cmp r0, #0xff
	ble _080B24FE
	movs r0, #0xff
	b _080B24FC
_080B24B0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B24C6
	movs r0, #0xff
	b _080B24FC
_080B24C6:
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B24FE
_080B24CE:
	strh r2, [r1]
	b _080B24FE
_080B24D2:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080B24EE
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B24FE
	b _080B24FA
_080B24EE:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B24FE
_080B24FA:
	movs r0, #0
_080B24FC:
	strh r0, [r1]
_080B24FE:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r2, sl
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	ldr r2, _080B2524 @ =0xFFFFFC00
	ands r1, r2
	mov r5, sb
	ldr r3, [r5]
	ldr r0, [r3, #0x40]
	movs r5, #0x80
	lsls r5, r5, #7
	b _080B26CE
	.align 2, 0
_080B2524: .4byte 0xFFFFFC00
_080B2528:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _080B2540
	adds r0, r4, #0
	adds r0, #0x83
	strb r3, [r0]
_080B2540:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0x1f
	bls _080B257C
	adds r0, r4, #0
	bl sub_0803D368
	mov r2, sb
	str r0, [r2]
	mov r3, r8
	strb r3, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080B257C:
	ldr r2, [r4, #0x44]
	ldr r1, _080B25A4 @ =0xFFFFFC00
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080B25A8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B25F6
	movs r0, #0xff
	b _080B25F4
	.align 2, 0
_080B25A4: .4byte 0xFFFFFC00
_080B25A8:
	cmp r2, r0
	bge _080B25C6
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B25F6
	strh r2, [r1]
	b _080B25F6
_080B25C6:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080B25E6
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B25F6
	mov r5, r8
	strh r5, [r1]
	b _080B25F6
_080B25E6:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B25F6
	mov r0, r8
_080B25F4:
	strh r0, [r1]
_080B25F6:
	ldr r2, [r4, #0x40]
	ldr r1, _080B262C @ =0xFFFFFC00
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r7, r3]
	subs r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080B2630
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2676
	movs r0, #0xff
	b _080B26AC
	.align 2, 0
_080B262C: .4byte 0xFFFFFC00
_080B2630:
	cmp r2, r0
	ble _080B2682
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B2660
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080B267E
	cmp r0, #0xff
	ble _080B26AE
	movs r0, #0xff
	b _080B26AC
_080B2660:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2676
	movs r0, #0xff
	b _080B26AC
_080B2676:
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B26AE
_080B267E:
	strh r2, [r1]
	b _080B26AE
_080B2682:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080B269E
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B26AE
	b _080B26AA
_080B269E:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B26AE
_080B26AA:
	movs r0, #0
_080B26AC:
	strh r0, [r1]
_080B26AE:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r2, sl
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	ldr r2, _080B26EC @ =0xFFFFFC00
	ands r1, r2
	mov r5, sb
	ldr r3, [r5]
	ldr r0, [r3, #0x40]
	ldr r5, _080B26F0 @ =0xFFFFC000
_080B26CE:
	adds r0, r0, r5
	ands r0, r2
	cmp r1, r0
	bne _080B26F4
	ldr r1, [r4, #0x44]
	ands r1, r2
	ldr r0, [r3, #0x44]
	ands r0, r2
	cmp r1, r0
	bne _080B26F4
	adds r0, r4, #0
	bl sub_080B2C48
	b _080B2700
	.align 2, 0
_080B26EC: .4byte 0xFFFFFC00
_080B26F0: .4byte 0xFFFFC000
_080B26F4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080B2700
	adds r0, r4, #0
	bl sub_080B2C48
_080B2700:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2710
sub_080B2710: @ 0x080B2710
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080B274A
	adds r5, r4, #0
	adds r5, #0x85
	ldrb r0, [r5]
	cmp r0, #0
	bne _080B2738
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
_080B2738:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _080B274A
	adds r0, r4, #0
	bl sub_080B2780
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_080B274A:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B277A
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bne _080B276A
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
_080B276A:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B277A
	adds r0, r4, #0
	bl sub_080B2CAC
_080B277A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2780
sub_080B2780: @ 0x080B2780
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080B27B8 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B27BC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B27C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B27C8
	.align 2, 0
_080B27B8: .4byte sub_08070580
_080B27BC: .4byte sub_0803DCCC
_080B27C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B27C8:
	adds r4, r0, #0
	bl sub_0803E380
	movs r2, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r2, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r1, _080B2898 @ =gUnk_03000510
	mov ip, r1
	ldrb r1, [r1, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r7, #0x10
	mov r8, r7
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _080B2820
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B2820:
	ldr r0, _080B289C @ =sub_080B2A30
	str r0, [r4, #0x78]
	ldr r1, _080B28A0 @ =sub_080B2D74
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
	subs r0, #0x27
	strb r5, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, _080B28A4 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	mov r7, ip
	ldrb r1, [r7, #4]
	adds r0, r5, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, r8
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _080B2878
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r4, #8]
_080B2878:
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _080B28A8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	subs r0, #0x10
	b _080B28B6
	.align 2, 0
_080B2898: .4byte gUnk_03000510
_080B289C: .4byte sub_080B2A30
_080B28A0: .4byte sub_080B2D74
_080B28A4: .4byte 0x20000043
_080B28A8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	adds r0, #0x10
_080B28B6:
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
	ldr r7, _080B2948 @ =0x00000321
	mov r8, r7
	movs r0, #6
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	mov r3, r8
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	movs r0, #0
	mov ip, r0
	mov r1, ip
	strb r1, [r5]
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B295E
	ldr r2, _080B294C @ =gUnk_02020EE0
	ldr r0, _080B2950 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _080B2958
	ldr r0, _080B2954 @ =gUnk_08351648
	movs r3, #0x97
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r6, [r0]
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B29A2
	adds r0, r6, #0
	b _080B298E
	.align 2, 0
_080B2948: .4byte 0x00000321
_080B294C: .4byte gUnk_02020EE0
_080B2950: .4byte gUnk_0203AD3C
_080B2954: .4byte gUnk_08351648
_080B2958:
	mov r0, ip
	strb r0, [r5]
	b _080B29A2
_080B295E:
	ldr r2, _080B2998 @ =gUnk_02020EE0
	ldr r0, _080B299C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B29A0
	mov r0, r8
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B29A2
	mov r0, r8
_080B298E:
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080B29A2
	.align 2, 0
_080B2998: .4byte gUnk_02020EE0
_080B299C: .4byte gUnk_0203AD3C
_080B29A0:
	strb r3, [r5]
_080B29A2:
	ldr r1, _080B2A18 @ =gUnk_02020EE0
	ldr r0, _080B2A1C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080B2A0A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B29CA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B2A0A
_080B29CA:
	ldr r1, _080B2A20 @ =gUnk_08D60FA4
	ldr r4, _080B2A24 @ =gSongTable
	ldr r2, _080B2A28 @ =0x000009E4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B29F0
	movs r7, #0x9e
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B2A0A
_080B29F0:
	cmp r3, #0
	beq _080B2A02
	ldr r0, _080B2A2C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B2A0A
_080B2A02:
	movs r0, #0x9e
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B2A0A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2A18: .4byte gUnk_02020EE0
_080B2A1C: .4byte gUnk_0203AD3C
_080B2A20: .4byte gUnk_08D60FA4
_080B2A24: .4byte gSongTable
_080B2A28: .4byte 0x000009E4
_080B2A2C: .4byte gUnk_0203AD10

	thumb_func_start sub_080B2A30
sub_080B2A30: @ 0x080B2A30
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r2, _080B2AA0 @ =gUnk_02020EE0
	ldr r0, _080B2AA4 @ =gUnk_0203AD3C
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
	bne _080B2AE8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080B2AB0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B2B0C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #4
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B2AA8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B2AAC @ =0x0400000A
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
	b _080B2B0C
	.align 2, 0
_080B2AA0: .4byte gUnk_02020EE0
_080B2AA4: .4byte gUnk_0203AD3C
_080B2AA8: .4byte 0xFFF7FFFF
_080B2AAC: .4byte 0x0400000A
_080B2AB0:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B2B0C
	movs r0, #4
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B2AE0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B2AE4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B2B0C
	.align 2, 0
_080B2AE0: .4byte 0xFFF7FFFF
_080B2AE4: .4byte 0x0400000A
_080B2AE8:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080B2B02
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080B2B02
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080B2B02:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080B2B0C:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B2B5E
	ldr r2, _080B2B48 @ =gUnk_02020EE0
	ldr r0, _080B2B4C @ =gUnk_0203AD3C
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
	bne _080B2B54
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B2BB6
	ldr r0, _080B2B50 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r6, [r0]
	b _080B2B86
	.align 2, 0
_080B2B48: .4byte gUnk_02020EE0
_080B2B4C: .4byte gUnk_0203AD3C
_080B2B50: .4byte gUnk_08351648
_080B2B54:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080B2BB6
_080B2B5E:
	ldr r2, _080B2BA4 @ =gUnk_02020EE0
	ldr r0, _080B2BA8 @ =gUnk_0203AD3C
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
	bne _080B2BB0
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B2BB6
	ldr r6, _080B2BAC @ =0x00000321
_080B2B86:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B2BB6
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B2BB6
	.align 2, 0
_080B2BA4: .4byte gUnk_02020EE0
_080B2BA8: .4byte gUnk_0203AD3C
_080B2BAC: .4byte 0x00000321
_080B2BB0:
	adds r0, r5, #0
	adds r0, #0x2f
	strb r3, [r0]
_080B2BB6:
	adds r0, r5, #0
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B2BD6
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B2BD6
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #1
	b _080B2BD8
_080B2BD6:
	movs r0, #0
_080B2BD8:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B2BE0
sub_080B2BE0: @ 0x080B2BE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B2C08
	adds r0, r4, #0
	bl sub_080B2D08
	b _080B2C42
_080B2C08:
	ldr r2, _080B2C28 @ =sub_080B2330
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2C2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B2C34
	.align 2, 0
_080B2C28: .4byte sub_080B2330
_080B2C2C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B2C34:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
_080B2C42:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2C48
sub_080B2C48: @ 0x080B2C48
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2C7C @ =sub_080B2710
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080B2C80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B2C84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B2C88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080B2C8C @ =0x00005554
	cmp r2, r0
	bhi _080B2C90
	movs r1, #0
	b _080B2C9A
	.align 2, 0
_080B2C7C: .4byte sub_080B2710
_080B2C80: .4byte gRngVal
_080B2C84: .4byte 0x00196225
_080B2C88: .4byte 0x3C6EF35F
_080B2C8C: .4byte 0x00005554
_080B2C90:
	ldr r0, _080B2CA8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080B2C9A
	movs r1, #1
_080B2C9A:
	adds r1, #1
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2CA8: .4byte 0x0000AAA9

	thumb_func_start sub_080B2CAC
sub_080B2CAC: @ 0x080B2CAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2CCC @ =sub_080B2CD0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r4, #0x52
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2CCC: .4byte sub_080B2CD0

	thumb_func_start sub_080B2CD0
sub_080B2CD0: @ 0x080B2CD0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2CE8
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0x48
	b _080B2CEE
_080B2CE8:
	adds r1, r2, #0
	adds r1, #0x50
	ldr r0, _080B2D04 @ =0x0000FFB8
_080B2CEE:
	strh r0, [r1]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_080B2D04: .4byte 0x0000FFB8

	thumb_func_start sub_080B2D08
sub_080B2D08: @ 0x080B2D08
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2D2C @ =sub_080B2D68
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2D30
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B2D38
	.align 2, 0
_080B2D2C: .4byte sub_080B2D68
_080B2D30:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B2D38:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2D68
sub_080B2D68: @ 0x080B2D68
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B2D74
sub_080B2D74: @ 0x080B2D74
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x2a
	movs r2, #0
	movs r0, #7
	strb r0, [r1]
	adds r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #8]
	ldr r1, _080B2D9C @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080B2DA0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080B2D9C: .4byte 0xFFFFFDFF
_080B2DA0: .4byte 0xFFFFFEFF
