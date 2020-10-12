	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateSparky
CreateSparky: @ 0x080C40AC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C40E0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C40E4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C40E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C40F0
	.align 2, 0
_080C40E0: .4byte ObjectMain
_080C40E4: .4byte ObjectDestroy
_080C40E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C40F0:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x44]
	ldr r1, _080C4120 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4124
	movs r0, #1
	orrs r2, r0
	b _080C412A
	.align 2, 0
_080C4120: .4byte 0xFFFFFF00
_080C4124:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C412A:
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C4178
	ldr r1, _080C4174 @ =gUnk_08355584
	adds r0, r4, #0
	bl sub_08088398
	b _080C4180
	.align 2, 0
_080C4174: .4byte gUnk_08355584
_080C4178:
	ldr r1, _080C41B0 @ =gUnk_08355578
	adds r0, r4, #0
	bl sub_08085CE8
_080C4180:
	ldr r2, _080C41B4 @ =gUnk_08351648
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
_080C41B0: .4byte gUnk_08355578
_080C41B4: .4byte gUnk_08351648

	thumb_func_start sub_080C41B8
sub_080C41B8: @ 0x080C41B8
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080C4242
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C4242
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r3, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C41F0
	ldr r0, _080C41EC @ =0x00003FFF
	cmp r2, r0
	ble _080C41F8
	b _080C4228
	.align 2, 0
_080C41EC: .4byte 0x00003FFF
_080C41F0:
	subs r1, r1, r0
	ldr r0, _080C4218 @ =0x00003FFF
	cmp r1, r0
	bgt _080C4228
_080C41F8:
	ldr r2, _080C421C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C4220 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C4224 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C4228
	adds r0, r3, #0
	bl sub_080C4674
	b _080C4242
	.align 2, 0
_080C4218: .4byte 0x00003FFF
_080C421C: .4byte gRngVal
_080C4220: .4byte 0x00196225
_080C4224: .4byte 0x3C6EF35F
_080C4228:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C423C
	adds r0, r3, #0
	bl sub_080C4654
	b _080C4242
_080C423C:
	adds r0, r3, #0
	bl sub_080C45E0
_080C4242:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4248
sub_080C4248: @ 0x080C4248
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4280 @ =sub_080C4300
	movs r1, #4
	bl ObjectSetFunc
	ldr r2, _080C4284 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C4288 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C428C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #3
	bne _080C42A6
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4290
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080C4298
	.align 2, 0
_080C4280: .4byte sub_080C4300
_080C4284: .4byte gRngVal
_080C4288: .4byte 0x00196225
_080C428C: .4byte 0x3C6EF35F
_080C4290:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080C4298:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	b _080C42E8
_080C42A6:
	cmp r1, #2
	bne _080C42C0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	adds r2, r0, #0
	b _080C42EA
_080C42C0:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C42D4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080C42DC
_080C42D4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080C42DC:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
_080C42E8:
	strh r0, [r1]
_080C42EA:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C42FA
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C42FA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4300
sub_080C4300: @ 0x080C4300
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x40
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080C431E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080C431E:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C4332
	adds r0, r3, #0
	bl sub_080C4654
_080C4332:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4338
sub_080C4338: @ 0x080C4338
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #0xe]
	cmp r5, #0
	beq _080C43B0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080C441E
	ldr r2, _080C43AC @ =sub_080C41B8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4414
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C441C
	.align 2, 0
_080C43AC: .4byte sub_080C41B8
_080C43B0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	ble _080C441E
	ldr r2, _080C4410 @ =sub_080C41B8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4414
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C441C
	.align 2, 0
_080C4410: .4byte sub_080C41B8
_080C4414:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C441C:
	str r0, [r4, #8]
_080C441E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4428
sub_080C4428: @ 0x080C4428
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080C4444
	cmp r1, #3
	bne _080C445A
_080C4444:
	movs r1, #0x11
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x11
	bl sub_0803E2B0
	b _080C447E
_080C445A:
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
_080C447E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C44D8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080C44D8
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	ldr r2, _080C44D4 @ =sub_080C4338
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	b _080C454E
	.align 2, 0
_080C44D4: .4byte sub_080C4338
_080C44D8:
	ldrb r1, [r4, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080C454E
	ldr r1, _080C4558 @ =gUnk_02020EE0
	ldr r0, _080C455C @ =gUnk_0203AD3C
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
	bne _080C454E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C450E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C454E
_080C450E:
	ldr r1, _080C4560 @ =gUnk_08D60FA4
	ldr r4, _080C4564 @ =gSongTable
	ldr r2, _080C4568 @ =0x00000A04
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C4534
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C454E
_080C4534:
	cmp r3, #0
	beq _080C4546
	ldr r0, _080C456C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C454E
_080C4546:
	movs r0, #0xa0
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C454E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4558: .4byte gUnk_02020EE0
_080C455C: .4byte gUnk_0203AD3C
_080C4560: .4byte gUnk_08D60FA4
_080C4564: .4byte gSongTable
_080C4568: .4byte 0x00000A04
_080C456C: .4byte gUnk_0203AD10

	thumb_func_start sub_080C4570
sub_080C4570: @ 0x080C4570
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C45C8 @ =sub_080C41B8
	movs r1, #0
	bl ObjectSetFunc
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C45CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C45D4
	.align 2, 0
_080C45C8: .4byte sub_080C41B8
_080C45CC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C45D4:
	str r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C45E0
sub_080C45E0: @ 0x080C45E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4604 @ =sub_080C4618
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4608
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C4610
	.align 2, 0
_080C4604: .4byte sub_080C4618
_080C4608:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C4610:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4618
sub_080C4618: @ 0x080C4618
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C463C
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080C4650
	adds r0, r1, #0
	bl sub_080C4248
	b _080C4650
_080C463C:
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080C4650
	adds r0, r1, #0
	bl sub_080C4248
_080C4650:
	pop {r0}
	bx r0

	thumb_func_start sub_080C4654
sub_080C4654: @ 0x080C4654
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4670 @ =sub_080C4338
	movs r1, #0
	bl ObjectSetFunc
	adds r4, #0x50
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4670: .4byte sub_080C4338

	thumb_func_start sub_080C4674
sub_080C4674: @ 0x080C4674
	push {lr}
	ldr r2, _080C4684 @ =sub_080C4688
	movs r1, #5
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C4684: .4byte sub_080C4688

	thumb_func_start sub_080C4688
sub_080C4688: @ 0x080C4688
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C469C
	adds r0, r2, #0
	bl sub_080C46A0
_080C469C:
	pop {r0}
	bx r0

	thumb_func_start sub_080C46A0
sub_080C46A0: @ 0x080C46A0
	push {lr}
	ldr r2, _080C46B0 @ =sub_080C4428
	movs r1, #6
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C46B0: .4byte sub_080C4428
