	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080AD1D8
sub_080AD1D8: @ 0x080AD1D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	ldr r1, _080AD218 @ =gUnk_082D88B8
	adds r0, r4, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD242
	cmp r1, r0
	bhi _080AD226
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _080AD242
	cmp r1, r0
	bhi _080AD21C
	cmp r1, #0
	bne _080AD216
	b _080AD308
_080AD216:
	b _080AD378
	.align 2, 0
_080AD218: .4byte gUnk_082D88B8
_080AD21C:
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD242
	b _080AD378
_080AD226:
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _080AD288
	cmp r1, r0
	bhi _080AD238
	movs r0, #0x80
	lsls r0, r0, #0x17
	b _080AD23C
_080AD238:
	movs r0, #0xc0
	lsls r0, r0, #0x17
_080AD23C:
	cmp r1, r0
	beq _080AD288
	b _080AD378
_080AD242:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD25E
	adds r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD26C
	b _080AD268
_080AD25E:
	subs r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD26C
_080AD268:
	movs r0, #0
	strh r0, [r2]
_080AD26C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080AD276
	b _080AD378
_080AD276:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080AD284 @ =sub_080AD3D0
	str r0, [r4, #0x78]
	b _080AD378
	.align 2, 0
_080AD284: .4byte sub_080AD3D0
_080AD288:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD2C4
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080AD2B0 @ =0xFFFFFE30
	adds r2, r0, #0
	cmp r3, r1
	bge _080AD2B8
	ldr r0, _080AD2B4 @ =0x0000FE30
	strh r0, [r2]
	b _080AD2E8
	.align 2, 0
_080AD2B0: .4byte 0xFFFFFE30
_080AD2B4: .4byte 0x0000FE30
_080AD2B8:
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r3, r0
	ble _080AD2E8
	strh r0, [r2]
	b _080AD2E8
_080AD2C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080AD2E0
	strh r3, [r2]
	b _080AD2E8
_080AD2E0:
	ldr r1, _080AD304 @ =0xFFFFFE30
	cmp r0, r1
	bge _080AD2E8
	strh r1, [r2]
_080AD2E8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080AD378
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD378
	b _080AD316
	.align 2, 0
_080AD304: .4byte 0xFFFFFE30
_080AD308:
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD31E
_080AD316:
	adds r0, r4, #0
	bl sub_080ACF68
	b _080AD3CA
_080AD31E:
	movs r5, #0x20
	ands r5, r2
	cmp r5, #0
	bne _080AD378
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD342
	adds r0, r3, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD34E
	b _080AD34C
_080AD342:
	subs r0, r3, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD34E
_080AD34C:
	strh r5, [r2]
_080AD34E:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD358
	rsbs r0, r0, #0
_080AD358:
	cmp r0, #0x7f
	bgt _080AD378
	ldr r2, _080AD374 @ =sub_080ACEC0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080AD3CA
	.align 2, 0
_080AD374: .4byte sub_080ACEC0
_080AD378:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AD3C4
	ldr r3, [r4, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD3C4
	ands r3, r5
	subs r2, #0x12
	cmp r3, #0
	beq _080AD3B8
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD3B0
	movs r0, #0
	strh r0, [r2]
_080AD3B0:
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	bne _080AD3C4
_080AD3B8:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080AD3C4
	movs r0, #0
	strh r0, [r2]
_080AD3C4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080AD3CA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD3D0
sub_080AD3D0: @ 0x080AD3D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080AD410 @ =gUnk_082D88B8
	adds r0, r4, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD43A
	cmp r1, r0
	bhi _080AD41E
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _080AD43A
	cmp r1, r0
	bhi _080AD414
	cmp r1, #0
	bne _080AD40E
	b _080AD500
_080AD40E:
	b _080AD57C
	.align 2, 0
_080AD410: .4byte gUnk_082D88B8
_080AD414:
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD43A
	b _080AD57C
_080AD41E:
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _080AD4B8
	cmp r1, r0
	bhi _080AD430
	movs r0, #0x80
	lsls r0, r0, #0x17
	b _080AD434
_080AD430:
	movs r0, #0xc0
	lsls r0, r0, #0x17
_080AD434:
	cmp r1, r0
	beq _080AD4B8
	b _080AD57C
_080AD43A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD474
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080AD460 @ =0xFFFFFE30
	adds r2, r0, #0
	cmp r3, r1
	bge _080AD468
	ldr r0, _080AD464 @ =0x0000FE30
	strh r0, [r2]
	b _080AD498
	.align 2, 0
_080AD460: .4byte 0xFFFFFE30
_080AD464: .4byte 0x0000FE30
_080AD468:
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r3, r0
	ble _080AD498
	strh r0, [r2]
	b _080AD498
_080AD474:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080AD490
	strh r3, [r2]
	b _080AD498
_080AD490:
	ldr r1, _080AD4B4 @ =0xFFFFFE30
	cmp r0, r1
	bge _080AD498
	strh r1, [r2]
_080AD498:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080AD57C
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD57C
	b _080AD51A
	.align 2, 0
_080AD4B4: .4byte 0xFFFFFE30
_080AD4B8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD4D4
	adds r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD4E2
	b _080AD4DE
_080AD4D4:
	subs r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD4E2
_080AD4DE:
	movs r0, #0
	strh r0, [r2]
_080AD4E2:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _080AD57C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _080AD4FC @ =sub_080AD1D8
	str r0, [r4, #0x78]
	b _080AD57C
	.align 2, 0
_080AD4FC: .4byte sub_080AD1D8
_080AD500:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080AD522
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD522
_080AD51A:
	adds r0, r4, #0
	bl sub_080ACF68
	b _080AD5CE
_080AD522:
	ldr r3, [r4, #8]
	movs r0, #0x20
	ands r3, r0
	cmp r3, #0
	bne _080AD57C
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r5, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD548
	adds r0, r5, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD554
	b _080AD552
_080AD548:
	subs r0, r5, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD554
_080AD552:
	strh r3, [r2]
_080AD554:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD55E
	rsbs r0, r0, #0
_080AD55E:
	cmp r0, #0x7f
	bgt _080AD57C
	ldr r2, _080AD578 @ =sub_080ACEC0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080AD5CE
	.align 2, 0
_080AD578: .4byte sub_080ACEC0
_080AD57C:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AD5C8
	ldr r3, [r4, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD5C8
	ands r3, r5
	subs r2, #0x12
	cmp r3, #0
	beq _080AD5BC
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD5B4
	movs r0, #0
	strh r0, [r2]
_080AD5B4:
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	bne _080AD5C8
_080AD5BC:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080AD5C8
	movs r0, #0
	strh r0, [r2]
_080AD5C8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080AD5CE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD5D4
sub_080AD5D4: @ 0x080AD5D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD5F0 @ =sub_080ACEC0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD5F0: .4byte sub_080ACEC0

	thumb_func_start sub_080AD5F4
sub_080AD5F4: @ 0x080AD5F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD618 @ =sub_080AD18C
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD618: .4byte sub_080AD18C

	thumb_func_start sub_080AD61C
sub_080AD61C: @ 0x080AD61C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD63C @ =sub_080AD3D0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD644
	adds r1, r4, #0
	adds r1, #0x50
	ldr r2, _080AD640 @ =0xFFFFFEE0
	b _080AD64C
	.align 2, 0
_080AD63C: .4byte sub_080AD3D0
_080AD640: .4byte 0xFFFFFEE0
_080AD644:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x90
	lsls r2, r2, #1
_080AD64C:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD66C
	ldr r0, _080AD668 @ =sub_080AD3D0
	b _080AD66E
	.align 2, 0
_080AD668: .4byte sub_080AD3D0
_080AD66C:
	ldr r0, _080AD678 @ =sub_080AD1D8
_080AD66E:
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD678: .4byte sub_080AD1D8
