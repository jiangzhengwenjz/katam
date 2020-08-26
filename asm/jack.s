	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateJack
CreateJack: @ 0x080A821C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A8250 @ =ObjectMain
	ldr r2, _080A8254 @ =0x00000FFF
	ldr r1, _080A8258 @ =sub_080A8BC0
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A825C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A8264
	.align 2, 0
_080A8250: .4byte ObjectMain
_080A8254: .4byte 0x00000FFF
_080A8258: .4byte sub_080A8BC0
_080A825C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A8264:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A8284
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080A828C
_080A8284:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A828C:
	str r0, [r6, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #9
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803E308
	ldr r0, [r6, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r6, #0x40]
	str r0, [r6, #0x48]
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xe8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _080A832C @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, #0x12
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	beq _080A8322
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080A8330 @ =gCurLevelInfo
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080A8334 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r1, #1
	str r1, [r0]
_080A8322:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A832C: .4byte gUnk_08351648
_080A8330: .4byte gCurLevelInfo
_080A8334: .4byte 0x0000065E

	thumb_func_start sub_080A8338
sub_080A8338: @ 0x080A8338
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _080A836C @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080A8370 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _080A8374
	adds r0, r4, #0
	bl sub_080A8B68
	b _080A844E
	.align 2, 0
_080A836C: .4byte gCurLevelInfo
_080A8370: .4byte 0x0000065E
_080A8374:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r1, [r4, #1]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080A844E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	ble _080A83A4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A83AC
_080A83A4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A83AC:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080A8408
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A83D4
	ldr r0, _080A83D0 @ =0x00003FFF
	cmp r2, r0
	bgt _080A83FC
	b _080A83DC
	.align 2, 0
_080A83D0: .4byte 0x00003FFF
_080A83D4:
	subs r1, r1, r0
	ldr r0, _080A83F0 @ =0x00003FFF
	cmp r1, r0
	bgt _080A83FC
_080A83DC:
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A83F4
	ldr r0, _080A83F0 @ =0x00003FFF
	cmp r2, r0
	bgt _080A83FC
	b _080A844E
	.align 2, 0
_080A83F0: .4byte 0x00003FFF
_080A83F4:
	subs r1, r1, r0
	ldr r0, _080A8404 @ =0x00003FFF
	cmp r1, r0
	ble _080A844E
_080A83FC:
	adds r0, r4, #0
	bl sub_080A8938
	b _080A844E
	.align 2, 0
_080A8404: .4byte 0x00003FFF
_080A8408:
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A8420
	ldr r0, _080A841C @ =0x00001FFF
	cmp r2, r0
	ble _080A8428
	b _080A844E
	.align 2, 0
_080A841C: .4byte 0x00001FFF
_080A8420:
	subs r1, r1, r0
	ldr r0, _080A843C @ =0x00001FFF
	cmp r1, r0
	bgt _080A844E
_080A8428:
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A8440
	ldr r0, _080A843C @ =0x00001FFF
	cmp r2, r0
	ble _080A8448
	b _080A844E
	.align 2, 0
_080A843C: .4byte 0x00001FFF
_080A8440:
	subs r1, r1, r0
	ldr r0, _080A8454 @ =0x00001FFF
	cmp r1, r0
	bgt _080A844E
_080A8448:
	adds r0, r4, #0
	bl sub_080A8938
_080A844E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8454: .4byte 0x00001FFF

	thumb_func_start sub_080A8458
sub_080A8458: @ 0x080A8458
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	ldr r3, _080A8490 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080A8494 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _080A8498
	adds r0, r4, #0
	bl sub_080A8B68
	b _080A85A2
	.align 2, 0
_080A8490: .4byte gCurLevelInfo
_080A8494: .4byte 0x0000065E
_080A8498:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r1, [r4, #1]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080A8554
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080A8500
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080A84D0
	ldr r0, _080A84CC @ =0x00002FFF
	cmp r2, r0
	ble _080A84D8
	b _080A8554
	.align 2, 0
_080A84CC: .4byte 0x00002FFF
_080A84D0:
	subs r1, r0, r3
	ldr r0, _080A84EC @ =0x00002FFF
	cmp r1, r0
	bgt _080A8554
_080A84D8:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A84F0
	ldr r0, _080A84EC @ =0x00002FFF
	cmp r2, r0
	ble _080A8548
	b _080A8554
	.align 2, 0
_080A84EC: .4byte 0x00002FFF
_080A84F0:
	subs r1, r1, r0
	ldr r0, _080A84FC @ =0x00002FFF
	cmp r1, r0
	bgt _080A8554
	b _080A8548
	.align 2, 0
_080A84FC: .4byte 0x00002FFF
_080A8500:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080A8520
	ldr r0, _080A851C @ =0x00002FFF
	cmp r2, r0
	bgt _080A8548
	b _080A8528
	.align 2, 0
_080A851C: .4byte 0x00002FFF
_080A8520:
	subs r1, r0, r3
	ldr r0, _080A853C @ =0x00002FFF
	cmp r1, r0
	bgt _080A8548
_080A8528:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A8540
	ldr r0, _080A853C @ =0x00002FFF
	cmp r2, r0
	bgt _080A8548
	b _080A8554
	.align 2, 0
_080A853C: .4byte 0x00002FFF
_080A8540:
	subs r1, r1, r0
	ldr r0, _080A8550 @ =0x00002FFF
	cmp r1, r0
	ble _080A8554
_080A8548:
	adds r0, r4, #0
	bl sub_080A89E8
	b _080A85A2
	.align 2, 0
_080A8550: .4byte 0x00002FFF
_080A8554:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A85A2
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A857A
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A8582
_080A857A:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A8582:
	str r0, [r4, #8]
	ldr r2, _080A85A8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A85AC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A85B0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080A85A2
	adds r0, r4, #0
	bl sub_080A8ABC
_080A85A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A85A8: .4byte gRngVal
_080A85AC: .4byte 0x00196225
_080A85B0: .4byte 0x3C6EF35F

	thumb_func_start sub_080A85B4
sub_080A85B4: @ 0x080A85B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _080A85C8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A85CC @ =gUnk_020229E0
	b _080A85E4
	.align 2, 0
_080A85C8: .4byte gUnk_020229D4
_080A85CC: .4byte gUnk_020229E0
_080A85D0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A85EC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A85E4:
	cmp r0, #0
	bne _080A85D0
	orrs r2, r3
	str r2, [r1]
_080A85EC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd9
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	strb r0, [r1, #0x10]
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
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r3, r0, #0
	str r5, [r3, #0x70]
	adds r1, r3, #0
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080A8658
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
_080A8658:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080A8670
	adds r2, r1, #0
	adds r2, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
	b _080A867C
_080A8670:
	adds r2, r3, #0
	adds r2, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r3, #0
_080A867C:
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A8694
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080A8694:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A869C
sub_080A869C: @ 0x080A869C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A86D0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A86D4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A86D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080A86E0
	.align 2, 0
_080A86D0: .4byte ObjectMain
_080A86D4: .4byte ObjectDestroy
_080A86D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080A86E0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x63
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x40
	orrs r2, r0
	ldr r0, [r5, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, _080A877C @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _080A8780 @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r2, #2
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080A8784 @ =gUnk_08351648
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
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A877C: .4byte 0x20000043
_080A8780: .4byte sub_0809F840
_080A8784: .4byte gUnk_08351648

	thumb_func_start sub_080A8788
sub_080A8788: @ 0x080A8788
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A8810 @ =sub_080A8834
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080A8814 @ =gUnk_02020EE0
	ldr r0, _080A8818 @ =gUnk_0203AD3C
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
	bne _080A8808
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A87CC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A8808
_080A87CC:
	ldr r1, _080A881C @ =gUnk_08D60FA4
	ldr r4, _080A8820 @ =gSongTable
	ldr r2, _080A8824 @ =0x00000AEC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A87F0
	ldr r1, _080A8828 @ =0x00000AE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A8808
_080A87F0:
	cmp r3, #0
	beq _080A8802
	ldr r0, _080A882C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A8808
_080A8802:
	ldr r0, _080A8830 @ =0x0000015D
	bl m4aSongNumStart
_080A8808:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8810: .4byte sub_080A8834
_080A8814: .4byte gUnk_02020EE0
_080A8818: .4byte gUnk_0203AD3C
_080A881C: .4byte gUnk_08D60FA4
_080A8820: .4byte gSongTable
_080A8824: .4byte 0x00000AEC
_080A8828: .4byte 0x00000AE8
_080A882C: .4byte gUnk_0203AD10
_080A8830: .4byte 0x0000015D

	thumb_func_start sub_080A8834
sub_080A8834: @ 0x080A8834
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	ldr r1, _080A88B4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080A88B8 @ =gCurLevelInfo
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
	bgt _080A888C
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080A888C
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080A888C
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080A888C
	adds r0, r4, #0
	bl sub_0806FC70
_080A888C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r3, [r0]
	cmp r3, #0
	beq _080A88BC
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080A88FC
	.align 2, 0
_080A88B4: .4byte 0xFFFFFEFF
_080A88B8: .4byte gCurLevelInfo
_080A88BC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A88EC @ =0xFFFFFD80
	cmp r0, r2
	bge _080A88D2
	strh r2, [r1]
_080A88D2:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080A88F0
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A88FC
	b _080A88FA
	.align 2, 0
_080A88EC: .4byte 0xFFFFFD80
_080A88F0:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A88FC
_080A88FA:
	strh r3, [r1]
_080A88FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A8904
sub_080A8904: @ 0x080A8904
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A8934 @ =sub_080A8338
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8934: .4byte sub_080A8338

	thumb_func_start sub_080A8938
sub_080A8938: @ 0x080A8938
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A8960 @ =sub_080A8964
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8960: .4byte sub_080A8964

	thumb_func_start sub_080A8964
sub_080A8964: @ 0x080A8964
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _080A8998 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080A899C @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _080A89A0
	adds r0, r4, #0
	bl sub_080A8B68
	b _080A89B0
	.align 2, 0
_080A8998: .4byte gCurLevelInfo
_080A899C: .4byte 0x0000065E
_080A89A0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A89B0
	adds r0, r4, #0
	bl sub_080A89B8
_080A89B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A89B8
sub_080A89B8: @ 0x080A89B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A89E0 @ =sub_080A8458
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080A89E4 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A89E0: .4byte sub_080A8458
_080A89E4: .4byte 0xFFFFFDFF

	thumb_func_start sub_080A89E8
sub_080A89E8: @ 0x080A89E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A8A2C @ =sub_080A8A3C
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080A8A30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A8A34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A8A38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	subs r1, #4
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8A2C: .4byte sub_080A8A3C
_080A8A30: .4byte gRngVal
_080A8A34: .4byte 0x00196225
_080A8A38: .4byte 0x3C6EF35F

	thumb_func_start sub_080A8A3C
sub_080A8A3C: @ 0x080A8A3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _080A8A7C @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080A8A80 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r5, [r0]
	cmp r5, #0
	beq _080A8A84
	adds r0, r4, #0
	bl sub_080A8B68
	b _080A8AB2
	.align 2, 0
_080A8A7C: .4byte gCurLevelInfo
_080A8A80: .4byte 0x0000065E
_080A8A84:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A8AB2
	ldr r2, _080A8AB8 @ =sub_080A8338
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A8AB2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8AB8: .4byte sub_080A8338

	thumb_func_start sub_080A8ABC
sub_080A8ABC: @ 0x080A8ABC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A8AE4 @ =sub_080A8AE8
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8AE4: .4byte sub_080A8AE8

	thumb_func_start sub_080A8AE8
sub_080A8AE8: @ 0x080A8AE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _080A8B1C @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080A8B20 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r5, [r0]
	cmp r5, #0
	beq _080A8B24
	adds r0, r4, #0
	bl sub_080A8B68
	b _080A8B5E
	.align 2, 0
_080A8B1C: .4byte gCurLevelInfo
_080A8B20: .4byte 0x0000065E
_080A8B24:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bne _080A8B30
	adds r0, r4, #0
	bl sub_080A85B4
_080A8B30:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A8B5E
	ldr r2, _080A8B64 @ =sub_080A8338
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A8B5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8B64: .4byte sub_080A8338

	thumb_func_start sub_080A8B68
sub_080A8B68: @ 0x080A8B68
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A8BA8 @ =sub_080A8BB4
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	ldr r1, _080A8BAC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, _080A8BB0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8BA8: .4byte sub_080A8BB4
_080A8BAC: .4byte 0xFFFFF7FF
_080A8BB0: .4byte 0xFFFFFEFF

	thumb_func_start sub_080A8BB4
sub_080A8BB4: @ 0x080A8BB4
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A8BC0
sub_080A8BC0: @ 0x080A8BC0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A8BDA
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080A8BE2
_080A8BDA:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080A8BE2:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	beq _080A8C12
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080A8C20 @ =gCurLevelInfo
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080A8C24 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
_080A8C12:
	adds r0, r4, #0
	bl ObjectDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8C20: .4byte gCurLevelInfo
_080A8C24: .4byte 0x0000065E
