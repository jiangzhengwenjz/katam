	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080F1FD8
sub_080F1FD8: @ 0x080F1FD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	str r5, [sp]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r4, #0
	ldr r1, _080F201C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080F2020 @ =gUnk_020229E0
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	ldr r6, [sp]
	adds r6, #0xb8
	b _080F2038
	.align 2, 0
_080F201C: .4byte gUnk_020229D4
_080F2020: .4byte gUnk_020229E0
_080F2024:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080F2040
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080F2038:
	cmp r0, #0
	bne _080F2024
	orrs r2, r3
	str r2, [r1]
_080F2040:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, ip
	strh r0, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xbd
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sl
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
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	str r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateTitanArm2
CreateTitanArm2: @ 0x080F20A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F20D8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F20DC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F20E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080F20E8
	.align 2, 0
_080F20D8: .4byte ObjectMain
_080F20DC: .4byte ObjectDestroy
_080F20E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080F20E8:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r1, [r5, #8]
	movs r0, #0x40
	orrs r1, r0
	movs r0, #1
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	ldr r0, [r5, #0x5c]
	ldr r2, _080F2168 @ =0x001080A0
	orrs r0, r2
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080F216C @ =sub_080F5744
	str r0, [r5, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080F2170
	movs r0, #0xb4
	strh r0, [r5, #4]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F2168: .4byte 0x001080A0
_080F216C: .4byte sub_080F5744

	thumb_func_start sub_080F2170
sub_080F2170: @ 0x080F2170
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F2190
	cmp r0, #0xc
	bne _080F2192
_080F2190:
	movs r7, #0xc
_080F2192:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #1
	bne _080F21BE
	movs r0, #0xb
	strb r0, [r6]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #0xb
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xf
	bl sub_080F3974
	movs r4, #1
_080F21BE:
	ldr r2, _080F21EC @ =sub_080F2268
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	cmp r4, #0
	beq _080F21D0
	movs r0, #0xb
	strb r0, [r6]
_080F21D0:
	cmp r7, #0
	beq _080F21D6
	strb r7, [r6]
_080F21D6:
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x70]
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F21F0
	movs r0, #8
	b _080F225E
	.align 2, 0
_080F21EC: .4byte sub_080F2268
_080F21F0:
	ldr r2, _080F2214 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F2218 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F221C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080F2260
	lsls r0, r1, #2
	ldr r1, _080F2220 @ =_080F2224
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F2214: .4byte gRngVal
_080F2218: .4byte 0x00196225
_080F221C: .4byte 0x3C6EF35F
_080F2220: .4byte _080F2224
_080F2224: @ jump table
	.4byte _080F2244 @ case 0
	.4byte _080F2248 @ case 1
	.4byte _080F225C @ case 2
	.4byte _080F224C @ case 3
	.4byte _080F2250 @ case 4
	.4byte _080F2254 @ case 5
	.4byte _080F2258 @ case 6
	.4byte _080F225C @ case 7
_080F2244:
	movs r0, #0x78
	b _080F225E
_080F2248:
	movs r0, #0x5a
	b _080F225E
_080F224C:
	movs r0, #0x14
	b _080F225E
_080F2250:
	movs r0, #0x2d
	b _080F225E
_080F2254:
	movs r0, #0x5a
	b _080F225E
_080F2258:
	movs r0, #0x2d
	b _080F225E
_080F225C:
	movs r0, #0x3c
_080F225E:
	strh r0, [r5, #4]
_080F2260:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F2268
sub_080F2268: @ 0x080F2268
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sb, r0
	movs r2, #0xec
	movs r1, #8
	mov ip, r1
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r4, r5, #0
	adds r4, #0xa0
	strh r0, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r3, r5, #0
	adds r3, #0xa2
	strh r0, [r3]
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0xc
	bne _080F2318
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r2, r2, #0x18
	asrs r0, r2, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r4, r1, r0
	mov sl, r2
	cmp r4, #0
	blt _080F22C8
	cmp r4, #5
	ble _080F22D6
	adds r7, r3, #0
	mov r8, r6
	mov r1, ip
	lsls r6, r1, #0x18
	b _080F2372
_080F22C8:
	subs r0, r0, r1
	adds r7, r3, #0
	mov r8, r6
	mov r3, ip
	lsls r6, r3, #0x18
	cmp r0, #5
	bgt _080F2372
_080F22D6:
	adds r3, r5, #0
	adds r3, #0xa2
	movs r4, #0
	ldrsh r1, [r3, r4]
	mov r0, ip
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r4, r1, r0
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r4, #0
	blt _080F2300
	cmp r4, #5
	ble _080F230C
	movs r1, #0x83
	adds r1, r1, r5
	mov r8, r1
	b _080F2372
_080F2300:
	subs r0, r0, r1
	movs r3, #0x83
	adds r3, r3, r5
	mov r8, r3
	cmp r0, #5
	bgt _080F2372
_080F230C:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
	mov r8, r1
	b _080F2372
_080F2318:
	cmp r0, #0xa
	bne _080F2356
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r3, #0
	mov r8, r6
	lsls r2, r2, #0x18
	mov sl, r2
	mov r4, ip
	lsls r6, r4, #0x18
	cmp r0, #1
	bne _080F2372
	movs r0, #0xb
	mov r1, r8
	strb r0, [r1]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #0xb
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xf
	bl sub_080F3974
	b _080F2372
_080F2356:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r3, #0
	mov r8, r6
	lsls r2, r2, #0x18
	mov sl, r2
	mov r3, ip
	lsls r6, r3, #0x18
	cmp r0, #3
	bne _080F2372
	movs r0, #0xa
	mov r4, r8
	strb r0, [r4]
_080F2372:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	beq _080F2388
	cmp r0, #0xc
	beq _080F2388
	b _080F24E0
_080F2388:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080F23C4 @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080F23C8
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F2412
	strh r2, [r1]
	b _080F2412
	.align 2, 0
_080F23C4: .4byte 0xFFFFFC00
_080F23C8:
	cmp r4, r0
	bge _080F23E8
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F23E4 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F2412
	strh r2, [r1]
	b _080F2412
	.align 2, 0
_080F23E4: .4byte 0xFFFFFE40
_080F23E8:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F2404
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F2412
	b _080F2410
_080F2404:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F2412
_080F2410:
	strh r3, [r1]
_080F2412:
	ldr r4, [r5, #0x40]
	ldr r2, _080F2454 @ =0xFFFFFC00
	ands r4, r2
	adds r0, r5, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, sl
	asrs r1, r3, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	bge _080F245C
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F248C
	ldr r2, _080F2458 @ =0xFFFFFDC0
	b _080F25FC
	.align 2, 0
_080F2454: .4byte 0xFFFFFC00
_080F2458: .4byte 0xFFFFFDC0
_080F245C:
	cmp r4, r0
	ble _080F24B4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F2494
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F2490 @ =0xFFFFFDC0
	cmp r0, r2
	blt _080F248C
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F248C
	b _080F262E
_080F248C:
	strh r2, [r1]
	b _080F262E
	.align 2, 0
_080F2490: .4byte 0xFFFFFDC0
_080F2494:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F248C
	ldr r2, _080F24B0 @ =0xFFFFFDC0
	b _080F25FC
	.align 2, 0
_080F24B0: .4byte 0xFFFFFDC0
_080F24B4:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F24D4
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080F24D2
	b _080F262E
_080F24D2:
	b _080F262A
_080F24D4:
	ldr r4, _080F24DC @ =0xFFFFFE80
	adds r0, r2, r4
	b _080F2622
	.align 2, 0
_080F24DC: .4byte 0xFFFFFE80
_080F24E0:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080F251C @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080F2520
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F256C
	strh r2, [r1]
	b _080F256C
	.align 2, 0
_080F251C: .4byte 0xFFFFFC00
_080F2520:
	cmp r4, r0
	bge _080F2540
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F253C @ =0xFFFFFEB0
	cmp r0, r2
	bge _080F256C
	strh r2, [r1]
	b _080F256C
	.align 2, 0
_080F253C: .4byte 0xFFFFFEB0
_080F2540:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F255E
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F256C
	b _080F256A
_080F255E:
	ldr r4, _080F25A8 @ =0xFFFFFF00
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F256C
_080F256A:
	strh r3, [r1]
_080F256C:
	ldr r4, [r5, #0x40]
	ldr r2, _080F25AC @ =0xFFFFFC00
	ands r4, r2
	adds r0, r5, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, sl
	asrs r1, r3, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	bge _080F25B0
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F25F8
	movs r0, #0xe0
	b _080F262C
	.align 2, 0
_080F25A8: .4byte 0xFFFFFF00
_080F25AC: .4byte 0xFFFFFC00
_080F25B0:
	cmp r4, r0
	ble _080F2602
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F25E2
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F25DA
	b _080F248C
_080F25DA:
	cmp r0, #0xe0
	ble _080F262E
	movs r0, #0xe0
	b _080F262C
_080F25E2:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F25F8
	movs r0, #0xe0
	b _080F262C
_080F25F8:
	movs r2, #0xe0
	rsbs r2, r2, #0
_080F25FC:
	cmp r0, r2
	bge _080F262E
	b _080F248C
_080F2602:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F261E
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F262E
	b _080F262A
_080F261E:
	adds r0, r2, #0
	subs r0, #0x40
_080F2622:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F262E
_080F262A:
	movs r0, #0
_080F262C:
	strh r0, [r1]
_080F262E:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	mov r1, sb
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F264C
	adds r0, r5, #0
	bl sub_080F26AC
	b _080F269E
_080F264C:
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0x12
	bne _080F2682
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F269E
	movs r0, #0xa
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	adds r1, r0, #0
	cmp r2, #2
	beq _080F2678
	cmp r2, #0xc
	bne _080F267C
_080F2678:
	movs r0, #0xc
	strb r0, [r4]
_080F267C:
	movs r0, #0
	strb r0, [r1]
	b _080F269E
_080F2682:
	cmp r0, #0xc
	beq _080F269E
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F269E
	movs r0, #0xa
	mov r3, r8
	strb r0, [r3]
	adds r0, r5, #0
	bl sub_080EFC18
_080F269E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F26AC
sub_080F26AC: @ 0x080F26AC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F26CA
	cmp r0, #0xc
	bne _080F26CC
_080F26CA:
	movs r7, #2
_080F26CC:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0xb
	bne _080F26F8
	movs r0, #1
	strb r0, [r6]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #9
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xd
	bl sub_080F3974
	movs r4, #1
_080F26F8:
	ldr r2, _080F2724 @ =sub_080F27A0
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	cmp r4, #0
	beq _080F270A
	movs r0, #1
	strb r0, [r6]
_080F270A:
	cmp r7, #0
	beq _080F2710
	strb r7, [r6]
_080F2710:
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x70]
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F2728
	movs r0, #8
	b _080F2796
	.align 2, 0
_080F2724: .4byte sub_080F27A0
_080F2728:
	ldr r2, _080F274C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F2750 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F2754 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080F2798
	lsls r0, r1, #2
	ldr r1, _080F2758 @ =_080F275C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F274C: .4byte gRngVal
_080F2750: .4byte 0x00196225
_080F2754: .4byte 0x3C6EF35F
_080F2758: .4byte _080F275C
_080F275C: @ jump table
	.4byte _080F277C @ case 0
	.4byte _080F2780 @ case 1
	.4byte _080F2794 @ case 2
	.4byte _080F2784 @ case 3
	.4byte _080F2788 @ case 4
	.4byte _080F278C @ case 5
	.4byte _080F2790 @ case 6
	.4byte _080F2794 @ case 7
_080F277C:
	movs r0, #0x78
	b _080F2796
_080F2780:
	movs r0, #0x5a
	b _080F2796
_080F2784:
	movs r0, #0x14
	b _080F2796
_080F2788:
	movs r0, #0x2d
	b _080F2796
_080F278C:
	movs r0, #0x5a
	b _080F2796
_080F2790:
	movs r0, #0x2d
	b _080F2796
_080F2794:
	movs r0, #0x3c
_080F2796:
	strh r0, [r5, #4]
_080F2798:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F27A0
sub_080F27A0: @ 0x080F27A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sb, r0
	movs r2, #0xe8
	movs r1, #0xa
	mov ip, r1
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r3, r5, #0
	adds r3, #0xa0
	strh r0, [r3]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r4, r5, #0
	adds r4, #0xa2
	strh r0, [r4]
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #2
	bne _080F284C
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r2, r2, #0x18
	asrs r0, r2, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r3, r1, r0
	mov sl, r2
	cmp r3, #0
	blt _080F2800
	cmp r3, #5
	ble _080F280E
	adds r7, r4, #0
	mov r8, r6
	mov r1, ip
	lsls r6, r1, #0x18
	b _080F28A4
_080F2800:
	subs r0, r0, r1
	adds r7, r4, #0
	mov r8, r6
	mov r2, ip
	lsls r6, r2, #0x18
	cmp r0, #5
	bgt _080F28A4
_080F280E:
	adds r0, r5, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r4, ip
	adds r3, r4, r1
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	subs r2, r3, r1
	adds r7, r0, #0
	lsls r6, r4, #0x18
	cmp r2, #0
	blt _080F2834
	cmp r2, #5
	ble _080F2840
	movs r0, #0x83
	adds r0, r0, r5
	mov r8, r0
	b _080F28A4
_080F2834:
	subs r0, r1, r3
	movs r1, #0x83
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #5
	bgt _080F28A4
_080F2840:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	mov r8, r1
	b _080F28A4
_080F284C:
	cmp r0, #0
	bne _080F2888
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r4, #0
	mov r8, r6
	lsls r2, r2, #0x18
	mov sl, r2
	mov r2, ip
	lsls r6, r2, #0x18
	cmp r0, #1
	bne _080F28A4
	mov r3, r8
	strb r0, [r3]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #9
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xd
	bl sub_080F3974
	b _080F28A4
_080F2888:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r4, #0
	mov r8, r6
	lsls r2, r2, #0x18
	mov sl, r2
	mov r4, ip
	lsls r6, r4, #0x18
	cmp r0, #3
	bne _080F28A4
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_080F28A4:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #2
	beq _080F28BA
	cmp r0, #0xc
	beq _080F28BA
	b _080F2A14
_080F28BA:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	ldr r3, [r5, #0x44]
	ldr r2, _080F28F8 @ =0xFFFFFC00
	ands r3, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080F28FC
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F2946
	strh r2, [r1]
	b _080F2946
	.align 2, 0
_080F28F8: .4byte 0xFFFFFC00
_080F28FC:
	cmp r3, r0
	bge _080F291C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F2918 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F2946
	strh r2, [r1]
	b _080F2946
	.align 2, 0
_080F2918: .4byte 0xFFFFFE40
_080F291C:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F2938
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F2946
	b _080F2944
_080F2938:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F2946
_080F2944:
	strh r4, [r1]
_080F2946:
	ldr r3, [r5, #0x40]
	ldr r2, _080F2988 @ =0xFFFFFC00
	ands r3, r2
	adds r0, r5, #0
	adds r0, #0xa0
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sl
	asrs r1, r4, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	bge _080F2990
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F29C0
	ldr r2, _080F298C @ =0xFFFFFDC0
	b _080F2B30
	.align 2, 0
_080F2988: .4byte 0xFFFFFC00
_080F298C: .4byte 0xFFFFFDC0
_080F2990:
	cmp r3, r0
	ble _080F29E8
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F29C8
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F29C4 @ =0xFFFFFDC0
	cmp r0, r2
	blt _080F29C0
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F29C0
	b _080F2B62
_080F29C0:
	strh r2, [r1]
	b _080F2B62
	.align 2, 0
_080F29C4: .4byte 0xFFFFFDC0
_080F29C8:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F29C0
	ldr r2, _080F29E4 @ =0xFFFFFDC0
	b _080F2B30
	.align 2, 0
_080F29E4: .4byte 0xFFFFFDC0
_080F29E8:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F2A08
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080F2A06
	b _080F2B62
_080F2A06:
	b _080F2B5E
_080F2A08:
	ldr r3, _080F2A10 @ =0xFFFFFE80
	adds r0, r2, r3
	b _080F2B56
	.align 2, 0
_080F2A10: .4byte 0xFFFFFE80
_080F2A14:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	ldr r3, [r5, #0x44]
	ldr r2, _080F2A50 @ =0xFFFFFC00
	ands r3, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080F2A54
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F2AA0
	strh r2, [r1]
	b _080F2AA0
	.align 2, 0
_080F2A50: .4byte 0xFFFFFC00
_080F2A54:
	cmp r3, r0
	bge _080F2A74
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F2A70 @ =0xFFFFFEB0
	cmp r0, r2
	bge _080F2AA0
	strh r2, [r1]
	b _080F2AA0
	.align 2, 0
_080F2A70: .4byte 0xFFFFFEB0
_080F2A74:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F2A92
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F2AA0
	b _080F2A9E
_080F2A92:
	ldr r3, _080F2ADC @ =0xFFFFFF00
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F2AA0
_080F2A9E:
	strh r4, [r1]
_080F2AA0:
	ldr r3, [r5, #0x40]
	ldr r2, _080F2AE0 @ =0xFFFFFC00
	ands r3, r2
	adds r0, r5, #0
	adds r0, #0xa0
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sl
	asrs r1, r4, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	bge _080F2AE4
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F2B2C
	movs r0, #0xe0
	b _080F2B60
	.align 2, 0
_080F2ADC: .4byte 0xFFFFFF00
_080F2AE0: .4byte 0xFFFFFC00
_080F2AE4:
	cmp r3, r0
	ble _080F2B36
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F2B16
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F2B0E
	b _080F29C0
_080F2B0E:
	cmp r0, #0xe0
	ble _080F2B62
	movs r0, #0xe0
	b _080F2B60
_080F2B16:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F2B2C
	movs r0, #0xe0
	b _080F2B60
_080F2B2C:
	movs r2, #0xe0
	rsbs r2, r2, #0
_080F2B30:
	cmp r0, r2
	bge _080F2B62
	b _080F29C0
_080F2B36:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F2B52
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F2B62
	b _080F2B5E
_080F2B52:
	adds r0, r2, #0
	subs r0, #0x40
_080F2B56:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F2B62
_080F2B5E:
	movs r0, #0
_080F2B60:
	strh r0, [r1]
_080F2B62:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	mov r4, sb
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080F2B7C
	adds r0, r5, #0
	bl sub_080F2170
	b _080F2BCE
_080F2B7C:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #8
	bne _080F2BB2
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080F2BCE
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	adds r1, r0, #0
	cmp r2, #2
	beq _080F2BA8
	cmp r2, #0xc
	bne _080F2BAC
_080F2BA8:
	movs r0, #2
	strb r0, [r3]
_080F2BAC:
	movs r0, #0
	strb r0, [r1]
	b _080F2BCE
_080F2BB2:
	cmp r0, #2
	beq _080F2BCE
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F2BCE
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080EFC18
_080F2BCE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F2BDC
sub_080F2BDC: @ 0x080F2BDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	str r5, [sp]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r4, #0
	ldr r1, _080F2C20 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080F2C24 @ =gUnk_020229E0
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	ldr r6, [sp]
	adds r6, #0xc0
	b _080F2C3C
	.align 2, 0
_080F2C20: .4byte gUnk_020229D4
_080F2C24: .4byte gUnk_020229E0
_080F2C28:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080F2C44
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080F2C3C:
	cmp r0, #0
	bne _080F2C28
	orrs r2, r3
	str r2, [r1]
_080F2C44:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, ip
	strh r0, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xbf
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sl
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
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	str r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateTitanArm4
CreateTitanArm4: @ 0x080F2CA8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F2CDC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F2CE0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F2CE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080F2CEC
	.align 2, 0
_080F2CDC: .4byte ObjectMain
_080F2CE0: .4byte ObjectDestroy
_080F2CE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080F2CEC:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r1, [r5, #8]
	movs r0, #0x40
	orrs r1, r0
	movs r0, #1
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	ldr r0, [r5, #0x5c]
	ldr r2, _080F2D6C @ =0x001080A0
	orrs r0, r2
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080F2D70 @ =sub_080F5744
	str r0, [r5, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080F2D74
	movs r0, #0xb4
	strh r0, [r5, #4]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F2D6C: .4byte 0x001080A0
_080F2D70: .4byte sub_080F5744

	thumb_func_start sub_080F2D74
sub_080F2D74: @ 0x080F2D74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F2D94
	cmp r0, #0xc
	bne _080F2D96
_080F2D94:
	movs r7, #0xc
_080F2D96:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #1
	bne _080F2DC2
	movs r0, #0xb
	strb r0, [r6]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #9
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xd
	bl sub_080F3974
	movs r4, #1
_080F2DC2:
	ldr r2, _080F2DF0 @ =sub_080F2E6C
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	cmp r4, #0
	beq _080F2DD4
	movs r0, #0xb
	strb r0, [r6]
_080F2DD4:
	cmp r7, #0
	beq _080F2DDA
	strb r7, [r6]
_080F2DDA:
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x70]
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F2DF4
	movs r0, #8
	b _080F2E62
	.align 2, 0
_080F2DF0: .4byte sub_080F2E6C
_080F2DF4:
	ldr r2, _080F2E18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F2E1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F2E20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080F2E64
	lsls r0, r1, #2
	ldr r1, _080F2E24 @ =_080F2E28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F2E18: .4byte gRngVal
_080F2E1C: .4byte 0x00196225
_080F2E20: .4byte 0x3C6EF35F
_080F2E24: .4byte _080F2E28
_080F2E28: @ jump table
	.4byte _080F2E48 @ case 0
	.4byte _080F2E4C @ case 1
	.4byte _080F2E60 @ case 2
	.4byte _080F2E50 @ case 3
	.4byte _080F2E54 @ case 4
	.4byte _080F2E58 @ case 5
	.4byte _080F2E5C @ case 6
	.4byte _080F2E60 @ case 7
_080F2E48:
	movs r0, #0x78
	b _080F2E62
_080F2E4C:
	movs r0, #0x5a
	b _080F2E62
_080F2E50:
	movs r0, #0x14
	b _080F2E62
_080F2E54:
	movs r0, #0x2d
	b _080F2E62
_080F2E58:
	movs r0, #0x5a
	b _080F2E62
_080F2E5C:
	movs r0, #0x2d
	b _080F2E62
_080F2E60:
	movs r0, #0x3c
_080F2E62:
	strh r0, [r5, #4]
_080F2E64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F2E6C
sub_080F2E6C: @ 0x080F2E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sl, r0
	movs r6, #0xa
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xa0
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r4, r5, #0
	adds r4, #0xa2
	strh r0, [r4]
	subs r1, #0x29
	ldrb r0, [r1]
	cmp r0, #0xc
	bne _080F2F0E
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r3, r0, #0
	adds r3, #0x18
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r2, r3, r0
	cmp r2, #0
	blt _080F2EC2
	cmp r2, #5
	ble _080F2ED0
	adds r7, r4, #0
	mov sb, r1
	lsls r6, r6, #0x18
	mov r8, r6
	b _080F2F5C
_080F2EC2:
	subs r0, r0, r3
	adds r7, r4, #0
	mov sb, r1
	lsls r1, r6, #0x18
	mov r8, r1
	cmp r0, #5
	bgt _080F2F5C
_080F2ED0:
	adds r0, r5, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r6, r1
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	subs r2, r3, r1
	adds r7, r0, #0
	lsls r6, r6, #0x18
	mov r8, r6
	cmp r2, #0
	blt _080F2EF6
	cmp r2, #5
	ble _080F2F02
	movs r3, #0x83
	adds r3, r3, r5
	mov sb, r3
	b _080F2F5C
_080F2EF6:
	subs r0, r1, r3
	movs r6, #0x83
	adds r6, r6, r5
	mov sb, r6
	cmp r0, #5
	bgt _080F2F5C
_080F2F02:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
	mov sb, r1
	b _080F2F5C
_080F2F0E:
	cmp r0, #0xa
	bne _080F2F46
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r4, #0
	mov sb, r1
	lsls r6, r6, #0x18
	mov r8, r6
	cmp r0, #1
	bne _080F2F5C
	movs r0, #0xb
	strb r0, [r1]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #9
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xd
	bl sub_080F3974
	b _080F2F5C
_080F2F46:
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r4, #0
	mov sb, r1
	lsls r1, r6, #0x18
	mov r8, r1
	cmp r0, #3
	bne _080F2F5C
	mov r2, sb
	strb r6, [r2]
_080F2F5C:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #2
	beq _080F2F72
	cmp r0, #0xc
	beq _080F2F72
	b _080F30C8
_080F2F72:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	ldr r3, [r5, #0x44]
	ldr r2, _080F2FB0 @ =0xFFFFFC00
	ands r3, r2
	movs r6, #0
	ldrsh r0, [r7, r6]
	mov r6, r8
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080F2FB4
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F2FFE
	strh r2, [r1]
	b _080F2FFE
	.align 2, 0
_080F2FB0: .4byte 0xFFFFFC00
_080F2FB4:
	cmp r3, r0
	bge _080F2FD4
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F2FD0 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F2FFE
	strh r2, [r1]
	b _080F2FFE
	.align 2, 0
_080F2FD0: .4byte 0xFFFFFE40
_080F2FD4:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F2FF0
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F2FFE
	b _080F2FFC
_080F2FF0:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F2FFE
_080F2FFC:
	strh r4, [r1]
_080F2FFE:
	ldr r3, [r5, #0x40]
	ldr r1, _080F303C @ =0xFFFFFC00
	ands r3, r1
	adds r0, r5, #0
	adds r0, #0xa0
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0x18
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	bge _080F3044
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F3074
	ldr r2, _080F3040 @ =0xFFFFFDC0
	b _080F31E4
	.align 2, 0
_080F303C: .4byte 0xFFFFFC00
_080F3040: .4byte 0xFFFFFDC0
_080F3044:
	cmp r3, r0
	ble _080F309C
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F307C
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F3078 @ =0xFFFFFDC0
	cmp r0, r2
	blt _080F3074
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F3074
	b _080F3216
_080F3074:
	strh r2, [r1]
	b _080F3216
	.align 2, 0
_080F3078: .4byte 0xFFFFFDC0
_080F307C:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F3074
	ldr r2, _080F3098 @ =0xFFFFFDC0
	b _080F31E4
	.align 2, 0
_080F3098: .4byte 0xFFFFFDC0
_080F309C:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F30BC
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r2, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080F30BA
	b _080F3216
_080F30BA:
	b _080F3212
_080F30BC:
	ldr r3, _080F30C4 @ =0xFFFFFE80
	adds r0, r2, r3
	b _080F320A
	.align 2, 0
_080F30C4: .4byte 0xFFFFFE80
_080F30C8:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	ldr r3, [r5, #0x44]
	ldr r2, _080F3108 @ =0xFFFFFC00
	ands r3, r2
	movs r6, #0
	ldrsh r0, [r7, r6]
	mov r6, r8
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080F310C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F3158
	strh r2, [r1]
	b _080F3158
	.align 2, 0
_080F3108: .4byte 0xFFFFFC00
_080F310C:
	cmp r3, r0
	bge _080F312C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F3128 @ =0xFFFFFEB0
	cmp r0, r2
	bge _080F3158
	strh r2, [r1]
	b _080F3158
	.align 2, 0
_080F3128: .4byte 0xFFFFFEB0
_080F312C:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F314A
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r2, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F3158
	b _080F3156
_080F314A:
	ldr r3, _080F3190 @ =0xFFFFFF00
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F3158
_080F3156:
	strh r4, [r1]
_080F3158:
	ldr r3, [r5, #0x40]
	ldr r1, _080F3194 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r5, #0
	adds r0, #0xa0
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0x18
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	bge _080F3198
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F31E0
	movs r0, #0xe0
	b _080F3214
	.align 2, 0
_080F3190: .4byte 0xFFFFFF00
_080F3194: .4byte 0xFFFFFC00
_080F3198:
	cmp r3, r0
	ble _080F31EA
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F31CA
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F31C2
	b _080F3074
_080F31C2:
	cmp r0, #0xe0
	ble _080F3216
	movs r0, #0xe0
	b _080F3214
_080F31CA:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F31E0
	movs r0, #0xe0
	b _080F3214
_080F31E0:
	movs r2, #0xe0
	rsbs r2, r2, #0
_080F31E4:
	cmp r0, r2
	bge _080F3216
	b _080F3074
_080F31EA:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F3206
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F3216
	b _080F3212
_080F3206:
	adds r0, r2, #0
	subs r0, #0x40
_080F320A:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F3216
_080F3212:
	movs r0, #0
_080F3214:
	strh r0, [r1]
_080F3216:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	mov r6, sl
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F3234
	adds r0, r5, #0
	bl sub_080F3294
	b _080F3286
_080F3234:
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0x12
	bne _080F326A
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F3286
	movs r0, #0xa
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	adds r1, r0, #0
	cmp r2, #2
	beq _080F3260
	cmp r2, #0xc
	bne _080F3264
_080F3260:
	movs r0, #0xc
	strb r0, [r3]
_080F3264:
	movs r0, #0
	strb r0, [r1]
	b _080F3286
_080F326A:
	cmp r0, #0xc
	beq _080F3286
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F3286
	movs r0, #0xa
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080EFC18
_080F3286:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F3294
sub_080F3294: @ 0x080F3294
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F32B2
	cmp r0, #0xc
	bne _080F32B4
_080F32B2:
	movs r7, #2
_080F32B4:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0xb
	bne _080F32E0
	movs r0, #1
	strb r0, [r6]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #0xb
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xf
	bl sub_080F3974
	movs r4, #1
_080F32E0:
	ldr r2, _080F330C @ =sub_080F3388
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	cmp r4, #0
	beq _080F32F2
	movs r0, #1
	strb r0, [r6]
_080F32F2:
	cmp r7, #0
	beq _080F32F8
	strb r7, [r6]
_080F32F8:
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x70]
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F3310
	movs r0, #8
	b _080F337E
	.align 2, 0
_080F330C: .4byte sub_080F3388
_080F3310:
	ldr r2, _080F3334 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F3338 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F333C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080F3380
	lsls r0, r1, #2
	ldr r1, _080F3340 @ =_080F3344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F3334: .4byte gRngVal
_080F3338: .4byte 0x00196225
_080F333C: .4byte 0x3C6EF35F
_080F3340: .4byte _080F3344
_080F3344: @ jump table
	.4byte _080F3364 @ case 0
	.4byte _080F3368 @ case 1
	.4byte _080F337C @ case 2
	.4byte _080F336C @ case 3
	.4byte _080F3370 @ case 4
	.4byte _080F3374 @ case 5
	.4byte _080F3378 @ case 6
	.4byte _080F337C @ case 7
_080F3364:
	movs r0, #0x78
	b _080F337E
_080F3368:
	movs r0, #0x5a
	b _080F337E
_080F336C:
	movs r0, #0x14
	b _080F337E
_080F3370:
	movs r0, #0x2d
	b _080F337E
_080F3374:
	movs r0, #0x5a
	b _080F337E
_080F3378:
	movs r0, #0x2d
	b _080F337E
_080F337C:
	movs r0, #0x3c
_080F337E:
	strh r0, [r5, #4]
_080F3380:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F3388
sub_080F3388: @ 0x080F3388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sb, r0
	movs r1, #0x14
	mov sl, r1
	movs r2, #8
	mov ip, r2
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r4, r5, #0
	adds r4, #0xa0
	strh r0, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r3, r5, #0
	adds r3, #0xa2
	strh r0, [r3]
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #2
	bne _080F3436
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x14
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r4, r1, r0
	cmp r4, #0
	blt _080F33E6
	cmp r4, #5
	ble _080F33F4
	adds r6, r3, #0
	mov r8, r2
	mov r2, ip
	lsls r7, r2, #0x18
	b _080F3482
_080F33E6:
	subs r0, r0, r1
	adds r6, r3, #0
	mov r8, r2
	mov r3, ip
	lsls r7, r3, #0x18
	cmp r0, #5
	bgt _080F3482
_080F33F4:
	adds r3, r5, #0
	adds r3, #0xa2
	movs r4, #0
	ldrsh r1, [r3, r4]
	mov r0, ip
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r4, r1, r0
	adds r6, r3, #0
	adds r7, r2, #0
	cmp r4, #0
	blt _080F341E
	cmp r4, #5
	ble _080F342A
	movs r1, #0x83
	adds r1, r1, r5
	mov r8, r1
	b _080F3482
_080F341E:
	subs r0, r0, r1
	movs r2, #0x83
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #5
	bgt _080F3482
_080F342A:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	mov r8, r1
	b _080F3482
_080F3436:
	cmp r0, #0
	bne _080F346C
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r6, r3, #0
	mov r8, r2
	mov r3, ip
	lsls r7, r3, #0x18
	cmp r0, #1
	bne _080F3482
	strb r0, [r2]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #0xb
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xf
	bl sub_080F3974
	b _080F3482
_080F346C:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r6, r3, #0
	mov r8, r2
	mov r4, ip
	lsls r7, r4, #0x18
	cmp r0, #3
	bne _080F3482
	movs r0, #0
	strb r0, [r2]
_080F3482:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	beq _080F3498
	cmp r0, #0xc
	beq _080F3498
	b _080F35EC
_080F3498:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080F34D4 @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r6, r1]
	asrs r1, r7, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080F34D8
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F3522
	strh r2, [r1]
	b _080F3522
	.align 2, 0
_080F34D4: .4byte 0xFFFFFC00
_080F34D8:
	cmp r4, r0
	bge _080F34F8
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F34F4 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F3522
	strh r2, [r1]
	b _080F3522
	.align 2, 0
_080F34F4: .4byte 0xFFFFFE40
_080F34F8:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F3514
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F3522
	b _080F3520
_080F3514:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F3522
_080F3520:
	strh r3, [r1]
_080F3522:
	ldr r4, [r5, #0x40]
	ldr r1, _080F3560 @ =0xFFFFFC00
	ands r4, r1
	adds r0, r5, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r0, sl
	lsls r0, r0, #8
	ands r0, r1
	cmp r4, r0
	bge _080F3568
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F3598
	ldr r2, _080F3564 @ =0xFFFFFDC0
	b _080F3704
	.align 2, 0
_080F3560: .4byte 0xFFFFFC00
_080F3564: .4byte 0xFFFFFDC0
_080F3568:
	cmp r4, r0
	ble _080F35C0
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F35A0
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F359C @ =0xFFFFFDC0
	cmp r0, r2
	blt _080F3598
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F3598
	b _080F3736
_080F3598:
	strh r2, [r1]
	b _080F3736
	.align 2, 0
_080F359C: .4byte 0xFFFFFDC0
_080F35A0:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F3598
	ldr r2, _080F35BC @ =0xFFFFFDC0
	b _080F3704
	.align 2, 0
_080F35BC: .4byte 0xFFFFFDC0
_080F35C0:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F35E0
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080F35DE
	b _080F3736
_080F35DE:
	b _080F3732
_080F35E0:
	ldr r3, _080F35E8 @ =0xFFFFFE80
	adds r0, r2, r3
	b _080F372A
	.align 2, 0
_080F35E8: .4byte 0xFFFFFE80
_080F35EC:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080F3628 @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r6, r1]
	asrs r1, r7, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080F362C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F3678
	strh r2, [r1]
	b _080F3678
	.align 2, 0
_080F3628: .4byte 0xFFFFFC00
_080F362C:
	cmp r4, r0
	bge _080F364C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F3648 @ =0xFFFFFEB0
	cmp r0, r2
	bge _080F3678
	strh r2, [r1]
	b _080F3678
	.align 2, 0
_080F3648: .4byte 0xFFFFFEB0
_080F364C:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F366A
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F3678
	b _080F3676
_080F366A:
	ldr r4, _080F36B0 @ =0xFFFFFF00
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F3678
_080F3676:
	strh r3, [r1]
_080F3678:
	ldr r4, [r5, #0x40]
	ldr r1, _080F36B4 @ =0xFFFFFC00
	ands r4, r1
	adds r0, r5, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r0, sl
	lsls r0, r0, #8
	ands r0, r1
	cmp r4, r0
	bge _080F36B8
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F3700
	movs r0, #0xe0
	b _080F3734
	.align 2, 0
_080F36B0: .4byte 0xFFFFFF00
_080F36B4: .4byte 0xFFFFFC00
_080F36B8:
	cmp r4, r0
	ble _080F370A
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F36EA
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F36E2
	b _080F3598
_080F36E2:
	cmp r0, #0xe0
	ble _080F3736
	movs r0, #0xe0
	b _080F3734
_080F36EA:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F3700
	movs r0, #0xe0
	b _080F3734
_080F3700:
	movs r2, #0xe0
	rsbs r2, r2, #0
_080F3704:
	cmp r0, r2
	bge _080F3736
	b _080F3598
_080F370A:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F3726
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F3736
	b _080F3732
_080F3726:
	adds r0, r2, #0
	subs r0, #0x40
_080F372A:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F3736
_080F3732:
	movs r0, #0
_080F3734:
	strh r0, [r1]
_080F3736:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	mov r4, sb
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080F3750
	adds r0, r5, #0
	bl sub_080F2D74
	b _080F37A2
_080F3750:
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #8
	bne _080F3786
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080F37A2
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	adds r1, r0, #0
	cmp r2, #2
	beq _080F377C
	cmp r2, #0xc
	bne _080F3780
_080F377C:
	movs r0, #2
	strb r0, [r4]
_080F3780:
	movs r0, #0
	strb r0, [r1]
	b _080F37A2
_080F3786:
	cmp r0, #2
	beq _080F37A2
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F37A2
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080EFC18
_080F37A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F37B0
sub_080F37B0: @ 0x080F37B0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080F37E0 @ =sub_080F388C
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F37E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F37EC
	.align 2, 0
_080F37E0: .4byte sub_080F388C
_080F37E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F37EC:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080F3864 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080F383C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080F383C:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080F3868 @ =0x10000400
	str r2, [r4, #8]
	ldr r0, _080F386C @ =0x20000103
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080F3870
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080F3872
	.align 2, 0
_080F3864: .4byte gUnk_03000510
_080F3868: .4byte 0x10000400
_080F386C: .4byte 0x20000103
_080F3870:
	str r2, [r4, #8]
_080F3872:
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0xc
	movs r3, #6
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080F388C
sub_080F388C: @ 0x080F388C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080F38A8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F38AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F38B4
	.align 2, 0
_080F38A8: .4byte gCurTask
_080F38AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F38B4:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r0, [r5, #8]
	movs r7, #0x80
	lsls r7, r7, #5
	ands r0, r7
	cmp r0, #0
	beq _080F38CA
	ldr r0, [r4, #8]
	orrs r0, r7
	str r0, [r4, #8]
_080F38CA:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F3966
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F38FC
	ldr r0, [r4, #8]
	orrs r0, r7
	str r0, [r4, #8]
	b _080F3966
_080F38FC:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080F3966
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080F392C
	ldr r2, _080F3924 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080F3928 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080F392E
	.align 2, 0
_080F3924: .4byte gCurLevelInfo
_080F3928: .4byte 0x0000065E
_080F392C:
	movs r1, #0xff
_080F392E:
	cmp r1, #0xff
	beq _080F3966
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080F396C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080F3970 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080F3966:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F396C: .4byte gUnk_02022EB0
_080F3970: .4byte gUnk_02022F50

	thumb_func_start sub_080F3974
sub_080F3974: @ 0x080F3974
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _080F39B4 @ =sub_080F3A98
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080F39B8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F39BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F39C4
	.align 2, 0
_080F39B4: .4byte sub_080F3A98
_080F39B8: .4byte sub_0803DCCC
_080F39BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F39C4:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F39F4
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_080F39F4:
	ldrh r0, [r6, #0x24]
	movs r1, #0xf8
	lsls r1, r1, #3
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r0, _080F3A74 @ =0xFFFF0000
	adds r1, r1, r0
	lsrs r2, r1, #0x10
	adds r0, r5, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080F3A14
	cmp r5, #0x27
	bls _080F3A1A
_080F3A14:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080F3A1A:
	adds r1, r4, #0
	adds r1, #0xc
	str r5, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_080709F8
	movs r3, #0
	strh r7, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x2b
	strb r3, [r5]
	ldr r2, _080F3A78 @ =gKirbys
	ldr r0, _080F3A7C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F3A80
	movs r7, #0xcf
	lsls r7, r7, #2
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080F3A82
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080F3A82
	.align 2, 0
_080F3A74: .4byte 0xFFFF0000
_080F3A78: .4byte gKirbys
_080F3A7C: .4byte gUnk_0203AD3C
_080F3A80:
	strb r3, [r5]
_080F3A82:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	strh r0, [r4, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F3A98
sub_080F3A98: @ 0x080F3A98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080F3ABC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F3AC0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F3AC8
	.align 2, 0
_080F3ABC: .4byte gCurTask
_080F3AC0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F3AC8:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r4, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _080F3AE4
	ldr r0, [r2]
	bl TaskDestroy
	b _080F3D1A
_080F3AE4:
	mov r6, r8
	ldr r3, [r6, #8]
	ands r3, r1
	cmp r3, #0
	beq _080F3AF6
	adds r0, r1, #0
	orrs r0, r4
	strh r0, [r5, #6]
	b _080F3D1A
_080F3AF6:
	ldr r2, _080F3B40 @ =gKirbys
	ldr r0, _080F3B44 @ =gUnk_0203AD3C
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
	bne _080F3B48
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F3B4E
	movs r6, #0xcf
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080F3B4E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080F3B4E
	.align 2, 0
_080F3B40: .4byte gKirbys
_080F3B44: .4byte gUnk_0203AD3C
_080F3B48:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r3, [r0]
_080F3B4E:
	ldr r2, _080F3BB4 @ =gKirbys
	ldr r0, _080F3BB8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r7]
	cmp r0, r6
	bne _080F3BFC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080F3BC4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080F3C24
	movs r1, #8
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080F3BBC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080F3BC0 @ =0x0400000A
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
	b _080F3C24
	.align 2, 0
_080F3BB4: .4byte gKirbys
_080F3BB8: .4byte gUnk_0203AD3C
_080F3BBC: .4byte 0xFFF7FFFF
_080F3BC0: .4byte 0x0400000A
_080F3BC4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080F3C24
	movs r6, #8
	ldrsh r0, [r5, r6]
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080F3BF4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080F3BF8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080F3C24
	.align 2, 0
_080F3BF4: .4byte 0xFFF7FFFF
_080F3BF8: .4byte 0x0400000A
_080F3BFC:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _080F3C1A
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080F3C1A
	adds r0, r2, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080F3C1A:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080F3C24:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080F3C78
	ldrb r0, [r3]
	cmp r0, #0
	beq _080F3C42
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080F3C42
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080F3C42:
	cmp r3, #0
	beq _080F3C78
	ldr r0, _080F3C74 @ =gUnk_03000510
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
	beq _080F3CE4
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080F3CE4
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080F3D1A
	.align 2, 0
_080F3C74: .4byte gUnk_03000510
_080F3C78:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080F3CDC @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080F3CB6
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080F3CB6
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080F3CB6
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080F3CB6
	movs r3, #4
_080F3CB6:
	ldr r0, _080F3CE0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080F3CE4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080F3CE4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080F3D1A
	.align 2, 0
_080F3CDC: .4byte gKirbys
_080F3CE0: .4byte gUnk_03000510
_080F3CE4:
	ldrh r1, [r5, #6]
	movs r0, #4
	movs r3, #0
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r5, #6]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x38]
	movs r6, #4
	ldrsh r1, [r5, r6]
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r1, r0
	beq _080F3D14
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r5, #6]
	b _080F3D1A
_080F3D14:
	adds r0, r5, #0
	bl sub_0806FAC8
_080F3D1A:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F3D28
sub_080F3D28: @ 0x080F3D28
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _080F3D5C @ =sub_080F3E40
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080F3D60 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F3D64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F3D6C
	.align 2, 0
_080F3D5C: .4byte sub_080F3E40
_080F3D60: .4byte sub_0803DCCC
_080F3D64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F3D6C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F3D9C
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_080F3D9C:
	cmp r6, #0
	beq _080F3DC4
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x3c]
	adds r0, #0x80
	strh r0, [r4, #0x3e]
	adds r1, r4, #0
	adds r1, #0xc
	movs r3, #0xcf
	lsls r3, r3, #2
	movs r0, #0x22
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #9
	bl sub_080709F8
	b _080F3DE8
_080F3DC4:
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x3e]
	adds r1, r4, #0
	adds r1, #0xc
	movs r3, #0xcf
	lsls r3, r3, #2
	movs r0, #0x23
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080709F8
_080F3DE8:
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080F3E2C @ =gKirbys
	ldr r0, _080F3E30 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F3E34
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080F3E36
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080F3E36
	.align 2, 0
_080F3E2C: .4byte gKirbys
_080F3E30: .4byte gUnk_0203AD3C
_080F3E34:
	strb r3, [r5]
_080F3E36:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F3E40
sub_080F3E40: @ 0x080F3E40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080F3E64 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F3E68
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F3E70
	.align 2, 0
_080F3E64: .4byte gCurTask
_080F3E68:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F3E70:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r4, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _080F3E8C
	ldr r0, [r2]
	bl TaskDestroy
	b _080F4184
_080F3E8C:
	mov r2, r8
	ldr r3, [r2, #8]
	ands r3, r1
	cmp r3, #0
	beq _080F3E9E
	adds r0, r1, #0
	orrs r0, r4
	strh r0, [r5, #6]
	b _080F4184
_080F3E9E:
	ldr r2, _080F3EE8 @ =gKirbys
	ldr r0, _080F3EEC @ =gUnk_0203AD3C
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
	bne _080F3EF0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F3EF6
	movs r6, #0xcf
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080F3EF6
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080F3EF6
	.align 2, 0
_080F3EE8: .4byte gKirbys
_080F3EEC: .4byte gUnk_0203AD3C
_080F3EF0:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r3, [r0]
_080F3EF6:
	ldr r2, _080F3F5C @ =gKirbys
	ldr r0, _080F3F60 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080F3FA4
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080F3F6C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080F3FCC
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080F3F64 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080F3F68 @ =0x0400000A
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
	b _080F3FCC
	.align 2, 0
_080F3F5C: .4byte gKirbys
_080F3F60: .4byte gUnk_0203AD3C
_080F3F64: .4byte 0xFFF7FFFF
_080F3F68: .4byte 0x0400000A
_080F3F6C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080F3FCC
	movs r0, #9
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080F3F9C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080F3FA0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080F3FCC
	.align 2, 0
_080F3F9C: .4byte 0xFFF7FFFF
_080F3FA0: .4byte 0x0400000A
_080F3FA4:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _080F3FC2
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080F3FC2
	adds r0, r2, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080F3FC2:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080F3FCC:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080F4020
	ldrb r0, [r3]
	cmp r0, #0
	beq _080F3FEA
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080F3FEA
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080F3FEA:
	cmp r3, #0
	beq _080F4020
	ldr r0, _080F401C @ =gUnk_03000510
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
	beq _080F408C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080F408C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080F4184
	.align 2, 0
_080F401C: .4byte gUnk_03000510
_080F4020:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080F4084 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080F405E
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080F405E
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080F405E
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080F405E
	movs r3, #4
_080F405E:
	ldr r0, _080F4088 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080F408C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080F408C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080F4184
	.align 2, 0
_080F4084: .4byte gKirbys
_080F4088: .4byte gUnk_03000510
_080F408C:
	movs r0, #4
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bne _080F417E
	ldr r0, [r5, #0x34]
	ldr r1, _080F412C @ =0xFFFFEFFF
	adds r0, r0, r1
	ldr r1, _080F4130 @ =0x0000DAFE
	cmp r0, r1
	bls _080F40A2
	strh r2, [r5, #0x3c]
_080F40A2:
	ldr r1, [r5, #0x38]
	ldr r0, _080F4134 @ =0x00008BFF
	cmp r1, r0
	ble _080F4150
	strh r2, [r5, #0x3c]
	strh r2, [r5, #0x3e]
	movs r0, #1
	mov r1, r8
	bl sub_0806FE64
	ldr r1, _080F4138 @ =gKirbys
	ldr r0, _080F413C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F4124
	mov r6, r8
	ldrb r0, [r6]
	cmp r0, #0
	bne _080F40E4
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F4124
_080F40E4:
	ldr r1, _080F4140 @ =gUnk_08D60FA4
	ldr r4, _080F4144 @ =gSongTable
	ldr r2, _080F4148 @ =0x00000C74
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F410A
	movs r6, #0xc7
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F4124
_080F410A:
	cmp r3, #0
	beq _080F411C
	ldr r0, _080F414C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F4124
_080F411C:
	movs r0, #0xc7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F4124:
	movs r0, #1
	strh r0, [r5, #4]
	b _080F415E
	.align 2, 0
_080F412C: .4byte 0xFFFFEFFF
_080F4130: .4byte 0x0000DAFE
_080F4134: .4byte 0x00008BFF
_080F4138: .4byte gKirbys
_080F413C: .4byte gUnk_0203AD3C
_080F4140: .4byte gUnk_08D60FA4
_080F4144: .4byte gSongTable
_080F4148: .4byte 0x00000C74
_080F414C: .4byte gUnk_0203AD10
_080F4150:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r5, #6]
	ldrh r0, [r5, #0x3e]
	subs r0, #0x15
	strh r0, [r5, #0x3e]
_080F415E:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F417E
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080F417E:
	adds r0, r5, #0
	bl sub_0806FAC8
_080F4184:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F4190
sub_080F4190: @ 0x080F4190
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r7, #0
	ldr r0, _080F42A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r7, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080F41B6
	b _080F446A
_080F41B6:
	adds r1, r7, #0
	adds r1, #0x98
	ldr r0, [r1]
	cmp r0, #0
	beq _080F429C
	adds r4, r7, #0
	adds r4, #0xb4
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F41F6
	cmp r0, #0xc
	beq _080F41F6
	ldr r2, [r3, #0x78]
	ldr r0, _080F42AC @ =sub_080EF2A0
	cmp r2, r0
	beq _080F41E2
	ldr r0, _080F42B0 @ =sub_080EF6E4
	cmp r2, r0
	bne _080F41F6
_080F41E2:
	ldrh r1, [r1]
	adds r0, r3, #0
	adds r0, #0x98
	strh r1, [r0]
	ldr r0, [r4]
	adds r1, r7, #0
	adds r1, #0x9a
	ldrh r1, [r1]
	adds r0, #0x9a
	strh r1, [r0]
_080F41F6:
	adds r3, r7, #0
	adds r3, #0xb8
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F4230
	cmp r0, #0xc
	beq _080F4230
	ldr r1, [r2, #0x78]
	ldr r0, _080F42B4 @ =sub_080F2268
	cmp r1, r0
	beq _080F4218
	ldr r0, _080F42B8 @ =sub_080F26AC
	cmp r1, r0
	bne _080F4230
_080F4218:
	adds r0, r6, #0
	adds r0, #0x98
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x98
	strh r1, [r0]
	ldr r0, [r3]
	adds r1, r6, #0
	adds r1, #0x9a
	ldrh r1, [r1]
	adds r0, #0x9a
	strh r1, [r0]
_080F4230:
	adds r4, r7, #0
	adds r4, #0xbc
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F4266
	cmp r0, #0xc
	beq _080F4266
	ldr r1, [r3, #0x78]
	ldr r0, _080F42BC @ =sub_080F1690
	cmp r1, r0
	beq _080F4252
	ldr r0, _080F42C0 @ =sub_080F1ABC
	cmp r1, r0
	bne _080F4266
_080F4252:
	adds r2, r6, #0
	adds r2, #0x98
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x98
	strh r1, [r0]
	ldr r0, [r4]
	ldrh r1, [r2]
	adds r0, #0x98
	strh r1, [r0]
_080F4266:
	adds r4, r7, #0
	adds r4, #0xc0
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F429C
	cmp r0, #0xc
	beq _080F429C
	ldr r1, [r3, #0x78]
	ldr r0, _080F42C4 @ =sub_080F2E6C
	cmp r1, r0
	beq _080F4288
	ldr r0, _080F42C8 @ =sub_080F3294
	cmp r1, r0
	bne _080F429C
_080F4288:
	adds r2, r6, #0
	adds r2, #0x98
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x98
	strh r1, [r0]
	ldr r0, [r4]
	ldrh r1, [r2]
	adds r0, #0x98
	strh r1, [r0]
_080F429C:
	ldr r1, [r6, #0x40]
	ldr r0, _080F42CC @ =0x000023FF
	cmp r1, r0
	bgt _080F42D0
	adds r0, #1
	b _080F42D8
	.align 2, 0
_080F42A8: .4byte gUnk_03000510
_080F42AC: .4byte sub_080EF2A0
_080F42B0: .4byte sub_080EF6E4
_080F42B4: .4byte sub_080F2268
_080F42B8: .4byte sub_080F26AC
_080F42BC: .4byte sub_080F1690
_080F42C0: .4byte sub_080F1ABC
_080F42C4: .4byte sub_080F2E6C
_080F42C8: .4byte sub_080F3294
_080F42CC: .4byte 0x000023FF
_080F42D0:
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	ble _080F42DA
_080F42D8:
	str r0, [r6, #0x40]
_080F42DA:
	ldr r0, [r6, #0x44]
	cmp r0, #0
	bge _080F42E6
	movs r0, #0
	str r0, [r6, #0x44]
	b _080F42F0
_080F42E6:
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _080F42F0
	str r1, [r6, #0x44]
_080F42F0:
	ldr r1, [r6, #0x78]
	ldr r0, _080F4374 @ =sub_080EE358
	cmp r1, r0
	bne _080F42FA
	b _080F446A
_080F42FA:
	ldr r0, _080F4378 @ =sub_080EE588
	cmp r1, r0
	bne _080F4302
	b _080F446A
_080F4302:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	beq _080F430E
	b _080F4422
_080F430E:
	ldr r2, _080F437C @ =sub_080EEA2C
	cmp r1, r2
	bne _080F4316
	b _080F446A
_080F4316:
	movs r0, #0x9f
	adds r0, r0, r6
	mov sb, r0
	ldrb r5, [r0]
	movs r1, #0x9e
	adds r1, r1, r6
	mov r8, r1
	ldrb r4, [r1]
	adds r0, r6, #0
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r6, #0
	movs r1, #0x3c
	movs r2, #0xcf
	lsls r2, r2, #2
	movs r3, #0x11
	bl sub_080F3974
	movs r0, #0x10
	strh r0, [r6, #4]
	mov r0, sb
	strb r5, [r0]
	mov r1, r8
	strb r4, [r1]
	movs r0, #3
	adds r1, r6, #0
	bl sub_0806FE64
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r3, [r0]
	ldr r1, [r3, #0x78]
	ldr r0, _080F4380 @ =sub_080EFE9C
	cmp r1, r0
	beq _080F4390
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bhi _080F4384
	movs r0, #8
	b _080F4386
	.align 2, 0
_080F4374: .4byte sub_080EE358
_080F4378: .4byte sub_080EE588
_080F437C: .4byte sub_080EEA2C
_080F4380: .4byte sub_080EFE9C
_080F4384:
	movs r0, #0x12
_080F4386:
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x9f
	movs r0, #0xe
	strb r0, [r1]
_080F4390:
	adds r0, r7, #0
	adds r0, #0xb8
	ldr r3, [r0]
	ldr r0, [r3, #0x78]
	ldr r4, _080F43B4 @ =sub_080EFE9C
	cmp r0, r4
	beq _080F43C4
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bhi _080F43B8
	movs r0, #8
	b _080F43BA
	.align 2, 0
_080F43B4: .4byte sub_080EFE9C
_080F43B8:
	movs r0, #0x12
_080F43BA:
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x9f
	movs r0, #0xe
	strb r0, [r1]
_080F43C4:
	adds r0, r7, #0
	adds r0, #0xbc
	ldr r3, [r0]
	ldr r0, [r3, #0x78]
	cmp r0, r4
	beq _080F43F2
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bhi _080F43E6
	movs r0, #8
	b _080F43E8
_080F43E6:
	movs r0, #0x12
_080F43E8:
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x9f
	movs r0, #0xe
	strb r0, [r1]
_080F43F2:
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r3, [r0]
	ldr r0, [r3, #0x78]
	cmp r0, r4
	beq _080F446A
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bhi _080F4414
	movs r0, #8
	b _080F4416
_080F4414:
	movs r0, #0x12
_080F4416:
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x9f
	movs r0, #0xe
	strb r0, [r1]
	b _080F446A
_080F4422:
	ldr r0, [r6, #0x40]
	ldr r1, _080F4478 @ =0xFFFFDBFF
	adds r0, r0, r1
	ldr r1, _080F447C @ =0x0000BBFE
	cmp r0, r1
	bls _080F446A
	ldr r0, [r6, #0x44]
	ldr r1, _080F4480 @ =0xFFFFD800
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, r1
	bhi _080F446A
	adds r0, r6, #0
	bl sub_080EE264
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl sub_080F1134
	adds r0, r7, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl sub_080F1134
	adds r0, r7, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl sub_080F1134
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r0, [r0]
	bl sub_080F1134
_080F446A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4478: .4byte 0xFFFFDBFF
_080F447C: .4byte 0x0000BBFE
_080F4480: .4byte 0xFFFFD800

	thumb_func_start sub_080F4484
sub_080F4484: @ 0x080F4484
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r3, #0x40]
	asrs r7, r0, #8
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080F44C0 @ =gUnk_020229D4
	movs r5, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	ldr r6, _080F44C4 @ =gUnk_020229E0
	adds r3, #0x56
	mov r8, r3
	cmp r0, #0
	bne _080F44C8
	orrs r2, r5
	b _080F44E2
	.align 2, 0
_080F44C0: .4byte gUnk_020229D4
_080F44C4: .4byte gUnk_020229E0
_080F44C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080F44E4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _080F44C8
	orrs r2, r3
_080F44E2:
	str r2, [r1]
_080F44E4:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r7, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x4c
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateTitanHead
CreateTitanHead: @ 0x080F453C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F4570 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F4574 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F4578
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F4580
	.align 2, 0
_080F4570: .4byte ObjectMain
_080F4574: .4byte ObjectDestroy
_080F4578:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F4580:
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
	movs r0, #0x40
	orrs r2, r0
	subs r0, #0x61
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F45C2
	orrs r2, r3
	b _080F45C8
_080F45C2:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080F45C8:
	str r2, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080F4628 @ =0x001080A0
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r4, #0xa
	rsbs r4, r4, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080F462C
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F4628: .4byte 0x001080A0

	thumb_func_start sub_080F462C
sub_080F462C: @ 0x080F462C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F46B8 @ =sub_080F5778
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r1, _080F46BC @ =gKirbys
	ldr r0, _080F46C0 @ =gUnk_0203AD3C
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
	bne _080F46B2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F4676
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F46B2
_080F4676:
	ldr r1, _080F46C4 @ =gUnk_08D60FA4
	ldr r4, _080F46C8 @ =gSongTable
	ldr r2, _080F46CC @ =0x00000C6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F469A
	ldr r1, _080F46D0 @ =0x00000C68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F46B2
_080F469A:
	cmp r3, #0
	beq _080F46AC
	ldr r0, _080F46D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F46B2
_080F46AC:
	ldr r0, _080F46D8 @ =0x0000018D
	bl m4aSongNumStart
_080F46B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F46B8: .4byte sub_080F5778
_080F46BC: .4byte gKirbys
_080F46C0: .4byte gUnk_0203AD3C
_080F46C4: .4byte gUnk_08D60FA4
_080F46C8: .4byte gSongTable
_080F46CC: .4byte 0x00000C6C
_080F46D0: .4byte 0x00000C68
_080F46D4: .4byte gUnk_0203AD10
_080F46D8: .4byte 0x0000018D

	thumb_func_start sub_080F46DC
sub_080F46DC: @ 0x080F46DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _080F4708 @ =sub_080F4818
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F470C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F4714
	.align 2, 0
_080F4708: .4byte sub_080F4818
_080F470C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F4714:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	movs r5, #0
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080F472A
	strb r5, [r0, #9]
_080F472A:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r6, [r0]
	adds r3, r6, #0
	subs r3, #0x38
	ldr r2, _080F4800 @ =gCurLevelInfo
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080F4804 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080F47F8
	ldr r0, _080F4808 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080F47F8
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F47F8
	adds r0, r6, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r3, #0
	adds r7, r4, #0
	adds r7, #0x60
	cmp r0, #0xf
	bls _080F47B8
	movs r4, #1
_080F4780:
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
	bls _080F4780
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080F47B8:
	ldr r1, _080F4808 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080F480C @ =gKirbys
	ldr r0, _080F4810 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080F47F8
	ldr r0, _080F4814 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080F47F8
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080F47F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4800: .4byte gCurLevelInfo
_080F4804: .4byte 0x0000065E
_080F4808: .4byte gUnk_08352D80
_080F480C: .4byte gKirbys
_080F4810: .4byte gUnk_0203AD3C
_080F4814: .4byte gUnk_0203AD20

	thumb_func_start sub_080F4818
sub_080F4818: @ 0x080F4818
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x40
	strh r0, [r3]
	lsls r0, r0, #0x10
	ldr r1, _080F485C @ =0xFE400000
	cmp r0, r1
	bge _080F483A
	ldr r0, _080F4860 @ =0x0000FE40
	strh r0, [r3]
_080F483A:
	ldr r1, [r2, #0x44]
	movs r0, #0xb0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080F4856
	ldr r0, [r2, #8]
	ldr r1, _080F4864 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080F4868 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_080F486C
_080F4856:
	pop {r0}
	bx r0
	.align 2, 0
_080F485C: .4byte 0xFE400000
_080F4860: .4byte 0x0000FE40
_080F4864: .4byte 0xFFFFFDFF
_080F4868: .4byte 0xFFFFFEFF

	thumb_func_start sub_080F486C
sub_080F486C: @ 0x080F486C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x9f
	ldrb r0, [r7]
	mov r8, r0
	adds r6, r4, #0
	adds r6, #0x9e
	ldrb r5, [r6]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080F4896
	adds r0, r4, #0
	bl sub_080F521C
	b _080F491A
_080F4896:
	ldr r2, _080F48EC @ =sub_080F4924
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r3, #0x40
	orrs r0, r3
	ldr r1, _080F48F0 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	mov r0, r8
	strb r0, [r7]
	strb r5, [r6]
	cmp r5, #0
	bne _080F48C4
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_080F48C4:
	ldr r2, _080F48F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F48F8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F48FC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080F4906
	cmp r1, #1
	blo _080F4900
	cmp r1, #2
	beq _080F490C
	movs r0, #0x58
	strh r0, [r4, #4]
	b _080F490E
	.align 2, 0
_080F48EC: .4byte sub_080F4924
_080F48F0: .4byte 0xFFFFFDFF
_080F48F4: .4byte gRngVal
_080F48F8: .4byte 0x00196225
_080F48FC: .4byte 0x3C6EF35F
_080F4900:
	movs r0, #0x20
	strh r0, [r4, #4]
	b _080F490E
_080F4906:
	movs r0, #0x30
	strh r0, [r4, #4]
	b _080F490E
_080F490C:
	strh r3, [r4, #4]
_080F490E:
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080F491A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F4924
sub_080F4924: @ 0x080F4924
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080F4990
	cmp r0, #1
	bgt _080F4944
	cmp r0, #0
	beq _080F494A
	b _080F4A1C
_080F4944:
	cmp r0, #3
	beq _080F49D0
	b _080F4A1C
_080F494A:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080F4972
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F496A
	b _080F4A70
_080F496A:
	cmp r0, #0xc0
	bgt _080F4970
	b _080F4A72
_080F4970:
	b _080F4984
_080F4972:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080F498A
_080F4984:
	movs r0, #0xc0
	strh r0, [r1]
	b _080F4A72
_080F498A:
	movs r2, #0xc0
	rsbs r2, r2, #0
	b _080F4A6C
_080F4990:
	ands r1, r0
	cmp r1, #0
	beq _080F49B2
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080F4A70
	cmp r0, #0xe0
	ble _080F4A72
	b _080F49C4
_080F49B2:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F49CA
_080F49C4:
	movs r0, #0xe0
	strh r0, [r1]
	b _080F4A72
_080F49CA:
	movs r2, #0xe0
	rsbs r2, r2, #0
	b _080F4A6C
_080F49D0:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080F49FC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F49F8 @ =0xFFFFFEE0
	cmp r0, r2
	blt _080F4A70
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4A72
	b _080F4A70
	.align 2, 0
_080F49F8: .4byte 0xFFFFFEE0
_080F49FC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4A70
	ldr r2, _080F4A18 @ =0xFFFFFEE0
	b _080F4A6C
	.align 2, 0
_080F4A18: .4byte 0xFFFFFEE0
_080F4A1C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F4A54
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F4A44 @ =0xFFFFFF00
	cmp r2, r0
	bge _080F4A48
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080F4A72
	.align 2, 0
_080F4A44: .4byte 0xFFFFFF00
_080F4A48:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080F4A72
	strh r0, [r1]
	b _080F4A72
_080F4A54:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4A70
	ldr r2, _080F4AB8 @ =0xFFFFFF00
_080F4A6C:
	cmp r0, r2
	bge _080F4A72
_080F4A70:
	strh r2, [r1]
_080F4A72:
	ldr r2, [r4, #0x40]
	ldr r0, _080F4ABC @ =0x00003BFF
	cmp r2, r0
	bgt _080F4A84
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080F4A84:
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r2, r0
	ble _080F4A94
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080F4A94:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080F4AC4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F4AC0 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F4ADC
	b _080F4ADA
	.align 2, 0
_080F4AB8: .4byte 0xFFFFFF00
_080F4ABC: .4byte 0x00003BFF
_080F4AC0: .4byte 0xFFFFFE40
_080F4AC4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x15
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4ADC
_080F4ADA:
	strh r2, [r1]
_080F4ADC:
	ldr r1, [r4, #0x44]
	ldr r0, _080F4B3C @ =0x00003BFF
	cmp r1, r0
	bgt _080F4AFE
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r1, [r2]
	cmp r1, #1
	bne _080F4AFE
	movs r0, #0
	strb r1, [r7]
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080F4AFE:
	ldr r1, [r4, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080F4B0A
	b _080F4C66
_080F4B0A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080F4B18
	b _080F4C66
_080F4B18:
	adds r0, #4
	ldrb r5, [r0]
	cmp r5, #0
	beq _080F4B4C
	ldr r2, _080F4B40 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F4B44 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F4B48 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x9f
	strb r0, [r1]
	b _080F4BBE
	.align 2, 0
_080F4B3C: .4byte 0x00003BFF
_080F4B40: .4byte gRngVal
_080F4B44: .4byte 0x00196225
_080F4B48: .4byte 0x3C6EF35F
_080F4B4C:
	ldr r1, _080F4B7C @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080F4B80 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080F4B84 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r3, r0, #0x10
	ldr r0, _080F4B88 @ =0x00005554
	adds r2, r1, #0
	cmp r3, r0
	bls _080F4B90
	ldr r0, _080F4B8C @ =0x0000AAA9
	movs r1, #2
	cmp r3, r0
	bhi _080F4B6E
	movs r1, #1
_080F4B6E:
	cmp r1, #0
	beq _080F4B90
	adds r0, r4, #0
	adds r0, #0x9f
	strb r5, [r0]
	b _080F4BBE
	.align 2, 0
_080F4B7C: .4byte gRngVal
_080F4B80: .4byte 0x00196225
_080F4B84: .4byte 0x3C6EF35F
_080F4B88: .4byte 0x00005554
_080F4B8C: .4byte 0x0000AAA9
_080F4B90:
	ldr r1, [r2]
	ldr r0, _080F4BB0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F4BB4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F4BB8
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	b _080F4BBE
	.align 2, 0
_080F4BB0: .4byte 0x00196225
_080F4BB4: .4byte 0x3C6EF35F
_080F4BB8:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
_080F4BBE:
	ldr r1, [r2]
	ldr r0, _080F4C80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F4C84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080F4C88 @ =0x00005554
	cmp r2, r0
	bls _080F4BE0
	ldr r0, _080F4C8C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080F4BDC
	movs r1, #1
_080F4BDC:
	cmp r1, #0
	bne _080F4BE8
_080F4BE0:
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080F4BE8:
	movs r0, #0
	strb r0, [r7]
	movs r0, #1
	strb r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080F4C90 @ =gKirbys
	ldr r0, _080F4C94 @ =gUnk_0203AD3C
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
	bne _080F4C66
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F4C26
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F4C66
_080F4C26:
	ldr r1, _080F4C98 @ =gUnk_08D60FA4
	ldr r5, _080F4C9C @ =gSongTable
	ldr r2, _080F4CA0 @ =0x00000C64
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F4C4C
	movs r1, #0xc6
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F4C66
_080F4C4C:
	cmp r3, #0
	beq _080F4C5E
	ldr r0, _080F4CA4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F4C66
_080F4C5E:
	movs r0, #0xc6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F4C66:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F4C78
	adds r0, r4, #0
	bl sub_080F4CA8
_080F4C78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4C80: .4byte 0x00196225
_080F4C84: .4byte 0x3C6EF35F
_080F4C88: .4byte 0x00005554
_080F4C8C: .4byte 0x0000AAA9
_080F4C90: .4byte gKirbys
_080F4C94: .4byte gUnk_0203AD3C
_080F4C98: .4byte gUnk_08D60FA4
_080F4C9C: .4byte gSongTable
_080F4CA0: .4byte 0x00000C64
_080F4CA4: .4byte gUnk_0203AD10

	thumb_func_start sub_080F4CA8
sub_080F4CA8: @ 0x080F4CA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x9f
	ldrb r0, [r7]
	mov r8, r0
	adds r6, r4, #0
	adds r6, #0x9e
	ldrb r0, [r6]
	adds r5, r0, #0
	cmp r5, #0
	bne _080F4CCC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_080F4CCC:
	ldr r2, _080F4D20 @ =sub_080F4DC4
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _080F4D24 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r1, r8
	strb r1, [r7]
	strb r5, [r6]
	movs r0, #0x14
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r5, #1
	ands r0, r5
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F4D28
	ldr r0, [r4, #8]
	orrs r0, r5
	b _080F4D30
	.align 2, 0
_080F4D20: .4byte sub_080F4DC4
_080F4D24: .4byte 0xFFFFFDFF
_080F4D28:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F4D30:
	str r0, [r4, #8]
	ldr r1, _080F4DA4 @ =gKirbys
	ldr r0, _080F4DA8 @ =gUnk_0203AD3C
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
	bne _080F4D9A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F4D5E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F4D9A
_080F4D5E:
	ldr r1, _080F4DAC @ =gUnk_08D60FA4
	ldr r4, _080F4DB0 @ =gSongTable
	ldr r2, _080F4DB4 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F4D82
	ldr r1, _080F4DB8 @ =0x00000B38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F4D9A
_080F4D82:
	cmp r3, #0
	beq _080F4D94
	ldr r0, _080F4DBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F4D9A
_080F4D94:
	ldr r0, _080F4DC0 @ =0x00000167
	bl m4aSongNumStart
_080F4D9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4DA4: .4byte gKirbys
_080F4DA8: .4byte gUnk_0203AD3C
_080F4DAC: .4byte gUnk_08D60FA4
_080F4DB0: .4byte gSongTable
_080F4DB4: .4byte 0x00000B3C
_080F4DB8: .4byte 0x00000B38
_080F4DBC: .4byte gUnk_0203AD10
_080F4DC0: .4byte 0x00000167

	thumb_func_start sub_080F4DC4
sub_080F4DC4: @ 0x080F4DC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r2, #1
	adds r3, r1, #0
	ands r3, r2
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r1, [r1]
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080F4E40
	cmp r0, #1
	bgt _080F4DF6
	cmp r0, #0
	beq _080F4DFC
	b _080F4EC8
_080F4DF6:
	cmp r0, #3
	beq _080F4E80
	b _080F4EC8
_080F4DFC:
	ands r1, r2
	cmp r1, #0
	beq _080F4E22
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F4E1A
	b _080F4F1C
_080F4E1A:
	cmp r0, #0xc0
	bgt _080F4E20
	b _080F4F1E
_080F4E20:
	b _080F4E34
_080F4E22:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080F4E3A
_080F4E34:
	movs r0, #0xc0
	strh r0, [r1]
	b _080F4F1E
_080F4E3A:
	movs r2, #0xc0
	rsbs r2, r2, #0
	b _080F4F18
_080F4E40:
	ands r1, r2
	cmp r1, #0
	beq _080F4E62
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080F4F1C
	cmp r0, #0xe0
	ble _080F4F1E
	b _080F4E74
_080F4E62:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F4E7A
_080F4E74:
	movs r0, #0xe0
	strh r0, [r1]
	b _080F4F1E
_080F4E7A:
	movs r2, #0xe0
	rsbs r2, r2, #0
	b _080F4F18
_080F4E80:
	ands r1, r2
	cmp r1, #0
	beq _080F4EA8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F4EA4 @ =0xFFFFFEE0
	cmp r0, r2
	blt _080F4F1C
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4F1E
	b _080F4F1C
	.align 2, 0
_080F4EA4: .4byte 0xFFFFFEE0
_080F4EA8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4F1C
	ldr r2, _080F4EC4 @ =0xFFFFFEE0
	b _080F4F18
	.align 2, 0
_080F4EC4: .4byte 0xFFFFFEE0
_080F4EC8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F4F00
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F4EF0 @ =0xFFFFFF00
	cmp r2, r0
	bge _080F4EF4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080F4F1E
	.align 2, 0
_080F4EF0: .4byte 0xFFFFFF00
_080F4EF4:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080F4F1E
	strh r0, [r1]
	b _080F4F1E
_080F4F00:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4F1C
	ldr r2, _080F4F78 @ =0xFFFFFF00
_080F4F18:
	cmp r0, r2
	bge _080F4F1E
_080F4F1C:
	strh r2, [r1]
_080F4F1E:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	ldr r0, _080F4F7C @ =0x00003BFF
	cmp r1, r0
	bgt _080F4F3E
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
_080F4F3E:
	ldr r1, [r4, #0x40]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _080F4F54
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
_080F4F54:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080F4F84
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F4F80 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F4F9C
	b _080F4F9A
	.align 2, 0
_080F4F78: .4byte 0xFFFFFF00
_080F4F7C: .4byte 0x00003BFF
_080F4F80: .4byte 0xFFFFFE40
_080F4F84:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x15
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4F9C
_080F4F9A:
	strh r2, [r1]
_080F4F9C:
	ldr r1, [r4, #0x44]
	ldr r0, _080F5008 @ =0x00003BFF
	cmp r1, r0
	bgt _080F4FAE
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F4FAE
	movs r0, #1
	strb r0, [r5]
_080F4FAE:
	ldr r1, [r4, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080F4FBA
	b _080F50C4
_080F4FBA:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F4FC2
	b _080F50C4
_080F4FC2:
	ldr r1, _080F500C @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080F5010 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080F5014 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _080F5018 @ =0x00005554
	adds r3, r1, #0
	cmp r2, r0
	bls _080F4FE8
	ldr r0, _080F501C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080F4FE4
	movs r1, #1
_080F4FE4:
	cmp r1, #0
	bne _080F4FFE
_080F4FE8:
	ldr r1, [r3]
	ldr r0, _080F5010 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F5014 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F5020
_080F4FFE:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	b _080F5026
	.align 2, 0
_080F5008: .4byte 0x00003BFF
_080F500C: .4byte gRngVal
_080F5010: .4byte 0x00196225
_080F5014: .4byte 0x3C6EF35F
_080F5018: .4byte 0x00005554
_080F501C: .4byte 0x0000AAA9
_080F5020:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
_080F5026:
	ldr r1, [r3]
	ldr r0, _080F50DC @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080F50E0 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r2, r0, #0x10
	ldr r0, _080F50E4 @ =0x00005554
	cmp r2, r0
	bls _080F5048
	ldr r0, _080F50E8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080F5044
	movs r1, #1
_080F5044:
	cmp r1, #0
	bne _080F5054
_080F5048:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_080F5054:
	movs r0, #0
	strb r0, [r5]
	ldr r1, _080F50EC @ =gKirbys
	ldr r0, _080F50F0 @ =gUnk_0203AD3C
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
	bne _080F50C4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F5084
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F50C4
_080F5084:
	ldr r1, _080F50F4 @ =gUnk_08D60FA4
	ldr r5, _080F50F8 @ =gSongTable
	ldr r2, _080F50FC @ =0x00000C64
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F50AA
	movs r1, #0xc6
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F50C4
_080F50AA:
	cmp r3, #0
	beq _080F50BC
	ldr r0, _080F5100 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F50C4
_080F50BC:
	movs r0, #0xc6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F50C4:
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	adds r6, r5, #0
	cmp r0, #3
	beq _080F51B0
	cmp r0, #3
	bgt _080F5104
	cmp r0, #2
	beq _080F510C
	b _080F5214
	.align 2, 0
_080F50DC: .4byte 0x00196225
_080F50E0: .4byte 0x3C6EF35F
_080F50E4: .4byte 0x00005554
_080F50E8: .4byte 0x0000AAA9
_080F50EC: .4byte gKirbys
_080F50F0: .4byte gUnk_0203AD3C
_080F50F4: .4byte gUnk_08D60FA4
_080F50F8: .4byte gSongTable
_080F50FC: .4byte 0x00000C64
_080F5100: .4byte gUnk_0203AD10
_080F5104:
	cmp r0, #4
	bne _080F510A
	b _080F5204
_080F510A:
	b _080F5214
_080F510C:
	ldrb r0, [r4, #1]
	cmp r0, #0x20
	bne _080F517E
	ldr r1, _080F5198 @ =gKirbys
	ldr r0, _080F519C @ =gUnk_0203AD3C
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
	bne _080F517E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F513E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F517E
_080F513E:
	ldr r1, _080F51A0 @ =gUnk_08D60FA4
	ldr r5, _080F51A4 @ =gSongTable
	ldr r2, _080F51A8 @ =0x00000B44
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F5164
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F517E
_080F5164:
	cmp r3, #0
	beq _080F5176
	ldr r0, _080F51AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F517E
_080F5176:
	movs r0, #0xb4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F517E:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F5214
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #3
	strb r0, [r6]
	b _080F5214
	.align 2, 0
_080F5198: .4byte gKirbys
_080F519C: .4byte gUnk_0203AD3C
_080F51A0: .4byte gUnk_08D60FA4
_080F51A4: .4byte gSongTable
_080F51A8: .4byte 0x00000B44
_080F51AC: .4byte gUnk_0203AD10
_080F51B0:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0xa
	bne _080F51C6
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080F53A0
_080F51C6:
	ldrh r0, [r4, #4]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _080F51E4
	ldr r1, _080F5200 @ =gUnk_08357038
	movs r2, #4
	ldrsh r0, [r4, r2]
	subs r0, #0xa
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080F51E4:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F5214
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #4
	strb r0, [r5]
	b _080F5214
	.align 2, 0
_080F5200: .4byte gUnk_08357038
_080F5204:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080F5214
	adds r0, r4, #0
	bl sub_080F486C
_080F5214:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F521C
sub_080F521C: @ 0x080F521C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F527C @ =sub_080F5284
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xa0
	ble _080F523E
	movs r0, #0xa0
	strh r0, [r1]
_080F523E:
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #0xa0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F524C
	strh r2, [r1]
_080F524C:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	adds r1, #0xe0
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _080F5280 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	movs r0, #0xc
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F527C: .4byte sub_080F5284
_080F5280: .4byte 0xFFFFF7FF

	thumb_func_start sub_080F5284
sub_080F5284: @ 0x080F5284
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrh r0, [r6, #4]
	adds r2, r0, #1
	strh r2, [r6, #4]
	movs r1, #7
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080F5316
	ldr r7, _080F5368 @ =gRngVal
	ldr r0, [r7]
	ldr r1, _080F536C @ =0x00196225
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080F5370 @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F52CA
	adds r0, r2, #1
	strh r0, [r6, #4]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080F5316
_080F52CA:
	ldr r2, _080F5374 @ =0x00000292
	ldr r0, [r7]
	mov r3, sb
	muls r3, r0, r3
	add r3, r8
	str r3, [r7]
	lsrs r3, r3, #0x10
	movs r0, #3
	ands r3, r0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808AE30
	ldr r1, [r7]
	mov r3, sb
	muls r3, r1, r3
	add r3, r8
	str r3, [r7]
	lsrs r2, r3, #0x10
	movs r5, #0x1f
	ands r2, r5
	movs r4, #0x10
	subs r2, r4, r2
	lsls r2, r2, #8
	ldr r1, [r0, #0x34]
	adds r1, r1, r2
	str r1, [r0, #0x34]
	mov r1, sb
	muls r1, r3, r1
	add r1, r8
	str r1, [r7]
	lsrs r1, r1, #0x10
	ands r1, r5
	subs r4, r4, r1
	lsls r4, r4, #8
	ldr r1, [r0, #0x38]
	adds r1, r1, r4
	str r1, [r0, #0x38]
_080F5316:
	adds r1, r6, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	adds r3, r6, #0
	adds r3, #0x9f
	cmp r0, #0
	bne _080F5334
	movs r0, #0x10
	strb r0, [r3]
_080F5334:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080F5378
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x31
	ldrh r0, [r1]
	adds r0, #0x25
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F5360
	strh r2, [r1]
_080F5360:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	b _080F5380
	.align 2, 0
_080F5368: .4byte gRngVal
_080F536C: .4byte 0x00196225
_080F5370: .4byte 0x3C6EF35F
_080F5374: .4byte 0x00000292
_080F5378:
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
_080F5380:
	ldr r1, [r6, #0x44]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _080F5394
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
_080F5394:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F53A0
sub_080F53A0: @ 0x080F53A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F53C4
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x10
	b _080F53CA
_080F53C4:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x10
_080F53CA:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #6
	mov ip, r0
	movs r4, #0
	ldr r1, _080F53EC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080F53F0 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080F5408
	.align 2, 0
_080F53EC: .4byte gUnk_020229D4
_080F53F0: .4byte gUnk_020229E0
_080F53F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080F5410
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080F5408:
	cmp r0, #0
	bne _080F53F4
	orrs r2, r3
	str r2, [r1]
_080F5410:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xc0
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateTitanHeadMissile
CreateTitanHeadMissile: @ 0x080F5474
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F54A8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F54AC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F54B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F54B8
	.align 2, 0
_080F54A8: .4byte ObjectMain
_080F54AC: .4byte ObjectDestroy
_080F54B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F54B8:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080F5584 @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080F55A8
	ldr r1, _080F5588 @ =gKirbys
	ldr r0, _080F558C @ =gUnk_0203AD3C
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
	bne _080F557A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F553E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F557A
_080F553E:
	ldr r1, _080F5590 @ =gUnk_08D60FA4
	ldr r4, _080F5594 @ =gSongTable
	ldr r2, _080F5598 @ =0x00000C6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F5562
	ldr r1, _080F559C @ =0x00000C68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F557A
_080F5562:
	cmp r3, #0
	beq _080F5574
	ldr r0, _080F55A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F557A
_080F5574:
	ldr r0, _080F55A4 @ =0x0000018D
	bl m4aSongNumStart
_080F557A:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F5584: .4byte sub_0809F840
_080F5588: .4byte gKirbys
_080F558C: .4byte gUnk_0203AD3C
_080F5590: .4byte gUnk_08D60FA4
_080F5594: .4byte gSongTable
_080F5598: .4byte 0x00000C6C
_080F559C: .4byte 0x00000C68
_080F55A0: .4byte gUnk_0203AD10
_080F55A4: .4byte 0x0000018D

	thumb_func_start sub_080F55A8
sub_080F55A8: @ 0x080F55A8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080F55DC @ =sub_080F57B4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F55CA
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080F55CA:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F55E0
	cmp r0, #1
	beq _080F55EA
	b _080F55F4
	.align 2, 0
_080F55DC: .4byte sub_080F57B4
_080F55E0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #1
	b _080F55F2
_080F55EA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
_080F55F2:
	strh r0, [r1]
_080F55F4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F5608
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080F5608:
	ldr r2, _080F5634 @ =0x000002A1
	ldr r0, _080F5638 @ =sub_08072B98
	str r0, [sp]
	ldr r0, _080F563C @ =sub_08084AA0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_080706A0
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F5634: .4byte 0x000002A1
_080F5638: .4byte sub_08072B98
_080F563C: .4byte sub_08084AA0

	thumb_func_start sub_080F5640
sub_080F5640: @ 0x080F5640
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F5668 @ =sub_080EDAD0
	movs r1, #0
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
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F5668: .4byte sub_080EDAD0

	thumb_func_start sub_080F566C
sub_080F566C: @ 0x080F566C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x9f
	ldrb r5, [r6]
	ldr r2, _080F569C @ =sub_080EE76C
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	ldr r1, _080F56A0 @ =0xFFFF7FFF
	ands r0, r1
	ldr r1, _080F56A4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	strb r5, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F569C: .4byte sub_080EE76C
_080F56A0: .4byte 0xFFFF7FFF
_080F56A4: .4byte 0xFEFFFFFF

	thumb_func_start sub_080F56A8
sub_080F56A8: @ 0x080F56A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F56E4 @ =sub_080F56E8
	movs r1, #8
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F56E4: .4byte sub_080F56E8

	thumb_func_start sub_080F56E8
sub_080F56E8: @ 0x080F56E8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _080F572C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080F573E
	adds r5, r3, #0
	adds r5, #0x60
	adds r4, r0, #0
	ldr r6, _080F5730 @ =gKirbys
_080F56FE:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r5]
	cmp r0, r7
	bne _080F5734
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080F573E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	b _080F573E
	.align 2, 0
_080F572C: .4byte gUnk_0203AD44
_080F5730: .4byte gKirbys
_080F5734:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r4
	blo _080F56FE
_080F573E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F5744
sub_080F5744: @ 0x080F5744
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x70]
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	ands r0, r3
	cmp r0, #0
	beq _080F5774
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _080F5774
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r2, #8]
	orrs r0, r3
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080F5774:
	pop {r0}
	bx r0

	thumb_func_start sub_080F5778
sub_080F5778: @ 0x080F5778
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #0x44]
	ldr r3, _080F57B0 @ =0xFFFFF000
	cmp r0, r3
	bgt _080F57AA
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080F57AA
	str r3, [r2, #0x44]
	adds r0, r2, #0
	bl sub_080F46DC
_080F57AA:
	pop {r0}
	bx r0
	.align 2, 0
_080F57B0: .4byte 0xFFFFF000

	thumb_func_start sub_080F57B4
sub_080F57B4: @ 0x080F57B4
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F57D8
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080F57D8:
	pop {r0}
	bx r0
