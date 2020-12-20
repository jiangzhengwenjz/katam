	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBoxBoxer
CreateBoxBoxer: @ 0x080C71DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C7210 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C7214 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C7218
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C7220
	.align 2, 0
_080C7210: .4byte ObjectMain
_080C7214: .4byte ObjectDestroy
_080C7218:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C7220:
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
	ble _080C7240
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7248
_080C7240:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7248:
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6, #8]
	movs r5, #0xa
	rsbs r5, r5, #0
	movs r4, #0xe
	rsbs r4, r4, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xe
	bl sub_0803E308
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080C9008
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C72CC
sub_080C72CC: @ 0x080C72CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r6, #8]
	movs r1, #4
	orrs r2, r1
	str r2, [r6, #8]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C72FA
	movs r0, #1
	orrs r2, r0
	b _080C7300
_080C72FA:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C7300:
	str r2, [r6, #8]
	adds r0, r6, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r3, #0xc]
	movs r2, #0x80
	lsls r2, r2, #8
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _080C7318
	b _080C74D8
_080C7318:
	subs r0, #0x4c
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sl, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080C732A
	b _080C74D8
_080C732A:
	ldr r1, [r6, #0x40]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	ble _080C733A
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7342
_080C733A:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7342:
	str r0, [r6, #8]
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov sb, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov ip, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C737C
	b _080C74D8
_080C737C:
	ldr r4, _080C74E8 @ =gCurLevelInfo
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
	movs r2, #0
	mov r8, r2
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
	adds r0, r6, #0
	adds r0, #0x85
	mov r3, r8
	strb r3, [r0]
	ldr r0, [r6, #8]
	ldr r1, _080C74EC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080C89E0
	adds r0, r6, #0
	bl sub_080C75D0
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080C7414
	mov r1, r8
	strb r1, [r0, #9]
_080C7414:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r2, _080C74F0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080C74D8
	ldr r0, _080C74F4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080C74D8
	mov r4, sb
	ldr r0, [r4]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C74D8
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080C7496
	movs r4, #1
_080C745E:
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
	bls _080C745E
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080C7496:
	ldr r1, _080C74F4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080C74F8 @ =gKirbys
	ldr r0, _080C74FC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C74D8
	ldr r0, _080C7500 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C74D8
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080C74D8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C74E8: .4byte gCurLevelInfo
_080C74EC: .4byte 0xFFFFFDFF
_080C74F0: .4byte 0x0000065E
_080C74F4: .4byte gUnk_08352D80
_080C74F8: .4byte gKirbys
_080C74FC: .4byte gUnk_0203AD3C
_080C7500: .4byte gUnk_0203AD20

	thumb_func_start sub_080C7504
sub_080C7504: @ 0x080C7504
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #1
	bls _080C7538
	ldr r2, _080C752C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7530 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7534 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C75B2
	b _080C75BA
	.align 2, 0
_080C752C: .4byte gRngVal
_080C7530: .4byte 0x00196225
_080C7534: .4byte 0x3C6EF35F
_080C7538:
	adds r0, #1
	strb r0, [r1]
	ldr r3, _080C755C @ =gRngVal
	ldr r0, [r3]
	ldr r2, _080C7560 @ =0x00196225
	muls r0, r2, r0
	ldr r5, _080C7564 @ =0x3C6EF35F
	adds r1, r0, r5
	str r1, [r3]
	lsrs r0, r1, #0x10
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	bne _080C7568
	adds r0, r4, #0
	bl sub_080C7CD8
	b _080C75C8
	.align 2, 0
_080C755C: .4byte gRngVal
_080C7560: .4byte 0x00196225
_080C7564: .4byte 0x3C6EF35F
_080C7568:
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r7, _080C7594 @ =0x3C6EF35F
	adds r1, r0, r7
	str r1, [r3]
	lsrs r0, r1, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080C75A0
	adds r0, r1, #0
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7598
	adds r0, r4, #0
	bl sub_080C76EC
	b _080C75C8
	.align 2, 0
_080C7594: .4byte 0x3C6EF35F
_080C7598:
	adds r0, r4, #0
	bl sub_080C91B8
	b _080C75C8
_080C75A0:
	adds r0, r1, #0
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C75BA
_080C75B2:
	adds r0, r4, #0
	bl sub_080C902C
	b _080C75C0
_080C75BA:
	adds r0, r4, #0
	bl sub_080C90DC
_080C75C0:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_080C75C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C75D0
sub_080C75D0: @ 0x080C75D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C75F4 @ =sub_080C769C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C75F8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7600
	.align 2, 0
_080C75F4: .4byte sub_080C769C
_080C75F8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7600:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7650
	ldr r2, _080C7630 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7634 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7638 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	beq _080C7648
	cmp r1, #2
	bhi _080C763C
	cmp r1, #1
	beq _080C7644
	b _080C7640
	.align 2, 0
_080C7630: .4byte gRngVal
_080C7634: .4byte 0x00196225
_080C7638: .4byte 0x3C6EF35F
_080C763C:
	cmp r1, #3
	beq _080C764C
_080C7640:
	movs r0, #0xf
	b _080C7692
_080C7644:
	movs r0, #0x28
	b _080C7692
_080C7648:
	movs r0, #0x41
	b _080C7692
_080C764C:
	movs r0, #0x5a
	b _080C7692
_080C7650:
	ldr r2, _080C7674 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7678 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C767C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	beq _080C768C
	cmp r1, #2
	bhi _080C7680
	cmp r1, #1
	beq _080C7688
	b _080C7684
	.align 2, 0
_080C7674: .4byte gRngVal
_080C7678: .4byte 0x00196225
_080C767C: .4byte 0x3C6EF35F
_080C7680:
	cmp r1, #3
	beq _080C7690
_080C7684:
	movs r0, #0x28
	b _080C7692
_080C7688:
	movs r0, #0x41
	b _080C7692
_080C768C:
	movs r0, #0x5a
	b _080C7692
_080C7690:
	movs r0, #0x78
_080C7692:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C769C
sub_080C769C: @ 0x080C769C
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C76C4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C76D4
	b _080C76D0
_080C76C4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C76D4
_080C76D0:
	movs r0, #0
	strh r0, [r1]
_080C76D4:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C76E6
	adds r0, r3, #0
	bl sub_080C7504
_080C76E6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C76EC
sub_080C76EC: @ 0x080C76EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C7714 @ =sub_080C776C
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7718
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7720
	.align 2, 0
_080C7714: .4byte sub_080C776C
_080C7718:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7720:
	str r0, [r4, #8]
	ldr r2, _080C7744 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7748 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C774C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	beq _080C775C
	cmp r1, #2
	bhi _080C7750
	cmp r1, #1
	beq _080C7758
	b _080C7754
	.align 2, 0
_080C7744: .4byte gRngVal
_080C7748: .4byte 0x00196225
_080C774C: .4byte 0x3C6EF35F
_080C7750:
	cmp r1, #3
	beq _080C7760
_080C7754:
	movs r0, #0x18
	b _080C7762
_080C7758:
	movs r0, #0x20
	b _080C7762
_080C775C:
	movs r0, #0x30
	b _080C7762
_080C7760:
	movs r0, #0x40
_080C7762:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C776C
sub_080C776C: @ 0x080C776C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7808
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
	ldr r6, _080C77C0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080C77C4
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
	b _080C7888
	.align 2, 0
_080C77C0: .4byte 0xFFFFF800
_080C77C4:
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
	bgt _080C788C
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
	ldr r3, _080C7804 @ =0xFFFFF800
	adds r0, r0, r3
	b _080C7888
	.align 2, 0
_080C7804: .4byte 0xFFFFF800
_080C7808:
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
	bgt _080C784C
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
	ldr r3, _080C7848 @ =0xFFFFF800
	adds r0, r0, r3
	b _080C7888
	.align 2, 0
_080C7848: .4byte 0xFFFFF800
_080C784C:
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
	ldr r3, _080C78C0 @ =0xFFFFF800
	adds r0, r0, r3
	cmp r1, r0
	blt _080C788C
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
_080C7888:
	subs r1, r1, r0
	str r1, [r2, #0x40]
_080C788C:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C78F4
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C78D4
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x18
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r1, _080C78C4 @ =0xFFFFFE00
	adds r3, r0, #0
	cmp r4, r1
	bge _080C78C8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r3]
	b _080C7948
	.align 2, 0
_080C78C0: .4byte 0xFFFFF800
_080C78C4: .4byte 0xFFFFFE00
_080C78C8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	ble _080C7948
	strh r0, [r3]
	b _080C7948
_080C78D4:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #2
	adds r3, r1, #0
	cmp r0, r4
	bgt _080C793C
	ldr r1, _080C78F0 @ =0xFFFFFE00
	b _080C7942
	.align 2, 0
_080C78F0: .4byte 0xFFFFFE00
_080C78F4:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7924
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080C7920 @ =0xFFFFFE60
	adds r3, r1, #0
	cmp r0, r4
	blt _080C793C
	movs r1, #0xd0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080C7948
	b _080C7946
	.align 2, 0
_080C7920: .4byte 0xFFFFFE60
_080C7924:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xd0
	lsls r4, r4, #1
	adds r3, r1, #0
	cmp r0, r4
	ble _080C7940
_080C793C:
	strh r4, [r3]
	b _080C7948
_080C7940:
	ldr r1, _080C795C @ =0xFFFFFE60
_080C7942:
	cmp r0, r1
	bge _080C7948
_080C7946:
	strh r1, [r3]
_080C7948:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C7960
	adds r0, r2, #0
	bl sub_080C75D0
	b _080C7978
	.align 2, 0
_080C795C: .4byte 0xFFFFFE60
_080C7960:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7978
	movs r0, #0
	strh r0, [r3]
	adds r0, r2, #0
	bl sub_080C75D0
_080C7978:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7980
sub_080C7980: @ 0x080C7980
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7A14
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
	ldr r6, _080C79CC @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080C79D0
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
	movs r3, #0x80
	lsls r3, r3, #4
	b _080C7A50
	.align 2, 0
_080C79CC: .4byte 0xFFFFF800
_080C79D0:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	bgt _080C7A9C
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080C7A10 @ =0xFFFFF800
	adds r0, r0, r2
	b _080C7A98
	.align 2, 0
_080C7A10: .4byte 0xFFFFF800
_080C7A14:
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
	bgt _080C7A60
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
	ldr r3, _080C7A5C @ =0xFFFFF800
_080C7A50:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r5, r2, #0
	b _080C7A9C
	.align 2, 0
_080C7A5C: .4byte 0xFFFFF800
_080C7A60:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r5, _080C7AD8 @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080C7A9C
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080C7A98:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080C7A9C:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080C7AB6
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080C7AB6:
	ldr r0, [r4, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #3
	bne _080C7ADC
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x40
	bgt _080C7AEC
	strb r6, [r3]
	b _080C7AEC
	.align 2, 0
_080C7AD8: .4byte 0xFFFFF800
_080C7ADC:
	movs r6, #0
	ldrsh r1, [r2, r6]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080C7AEC
	movs r0, #5
	strb r0, [r3]
_080C7AEC:
	ldrb r0, [r3]
	cmp r0, #5
	bne _080C7B02
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C7B02
	adds r0, r4, #0
	bl sub_080C7B1C
_080C7B02:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7B14
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080C7B14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7B1C
sub_080C7B1C: @ 0x080C7B1C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080C7BF4 @ =sub_080C7C18
	movs r1, #6
	bl ObjectSetFunc
	ldr r1, _080C7BF8 @ =gKirbys
	ldr r0, _080C7BFC @ =gUnk_0203AD3C
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
	bne _080C7B90
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C7B54
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C7B90
_080C7B54:
	ldr r1, _080C7C00 @ =gUnk_08D60FA4
	ldr r4, _080C7C04 @ =gSongTable
	ldr r2, _080C7C08 @ =0x00000CAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C7B78
	ldr r1, _080C7C0C @ =0x00000CA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C7B90
_080C7B78:
	cmp r3, #0
	beq _080C7B8A
	ldr r0, _080C7C10 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7B90
_080C7B8A:
	ldr r0, _080C7C14 @ =0x00000195
	bl m4aSongNumStart
_080C7B90:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r5, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	ands r3, r4
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	adds r0, r5, #0
	movs r1, #0x22
	movs r2, #0x10
	bl sub_080A8C28
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #0x22
	movs r2, #0x10
	bl sub_080A8C28
	ldr r0, [r5, #8]
	eors r0, r4
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C7BF4: .4byte sub_080C7C18
_080C7BF8: .4byte gKirbys
_080C7BFC: .4byte gUnk_0203AD3C
_080C7C00: .4byte gUnk_08D60FA4
_080C7C04: .4byte gSongTable
_080C7C08: .4byte 0x00000CAC
_080C7C0C: .4byte 0x00000CA8
_080C7C10: .4byte gUnk_0203AD10
_080C7C14: .4byte 0x00000195

	thumb_func_start sub_080C7C18
sub_080C7C18: @ 0x080C7C18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C7CD0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C7C58 @ =gRngVal
	cmp r0, #0
	beq _080C7C64
	ldr r1, [r3]
	ldr r0, _080C7C5C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7C60 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C7C4C
	movs r2, #1
_080C7C4C:
	cmp r2, #0
	beq _080C7C64
	adds r0, r4, #0
	bl sub_080C7504
	b _080C7CD0
	.align 2, 0
_080C7C58: .4byte gRngVal
_080C7C5C: .4byte 0x00196225
_080C7C60: .4byte 0x3C6EF35F
_080C7C64:
	ldr r1, [r3]
	ldr r0, _080C7C8C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7C90 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C7C7E
	movs r2, #1
_080C7C7E:
	cmp r2, #0
	beq _080C7C94
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C7CD0
	.align 2, 0
_080C7C8C: .4byte 0x00196225
_080C7C90: .4byte 0x3C6EF35F
_080C7C94:
	ldr r2, _080C7CBC @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7CC0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7CC8
	.align 2, 0
_080C7CBC: .4byte sub_080C776C
_080C7CC0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7CC8:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C7CD0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7CD8
sub_080C7CD8: @ 0x080C7CD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C7D00 @ =sub_080C7D80
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7D04
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7D0C
	.align 2, 0
_080C7D00: .4byte sub_080C7D80
_080C7D04:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7D0C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7D4C
	ldr r2, _080C7D40 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7D44 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7D48 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7D64
	movs r0, #2
	b _080C7D76
	.align 2, 0
_080C7D40: .4byte gRngVal
_080C7D44: .4byte 0x00196225
_080C7D48: .4byte 0x3C6EF35F
_080C7D4C:
	ldr r2, _080C7D68 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7D6C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7D70 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7D74
_080C7D64:
	strh r1, [r4, #4]
	b _080C7D78
	.align 2, 0
_080C7D68: .4byte gRngVal
_080C7D6C: .4byte 0x00196225
_080C7D70: .4byte 0x3C6EF35F
_080C7D74:
	movs r0, #3
_080C7D76:
	strh r0, [r4, #4]
_080C7D78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7D80
sub_080C7D80: @ 0x080C7D80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x3b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080C7D9E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080C7D9E:
	ldr r0, [r5, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #3
	bne _080C7DCC
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080C7DBE
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2]
_080C7DBE:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x40
	ble _080C7DC8
	b _080C7F5E
_080C7DC8:
	strb r3, [r6]
	b _080C7F5E
_080C7DCC:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080C7DDC
	movs r0, #5
	strb r0, [r6]
_080C7DDC:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080C7DEC
	b _080C7F5E
_080C7DEC:
	ldr r1, _080C7EC0 @ =gKirbys
	ldr r0, _080C7EC4 @ =gUnk_0203AD3C
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
	bne _080C7E54
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C7E18
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C7E54
_080C7E18:
	ldr r1, _080C7EC8 @ =gUnk_08D60FA4
	ldr r4, _080C7ECC @ =gSongTable
	ldr r2, _080C7ED0 @ =0x00000CAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C7E3C
	ldr r1, _080C7ED4 @ =0x00000CA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C7E54
_080C7E3C:
	cmp r3, #0
	beq _080C7E4E
	ldr r0, _080C7ED8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7E54
_080C7E4E:
	ldr r0, _080C7EDC @ =0x00000195
	bl m4aSongNumStart
_080C7E54:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r5, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	ands r3, r4
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C7F5A
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C7EE0 @ =gRngVal
	cmp r0, #0
	beq _080C7EEC
	ldr r1, [r3]
	ldr r0, _080C7EE4 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080C7EE8 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C7EB2
	movs r2, #1
_080C7EB2:
	cmp r2, #0
	beq _080C7EEC
	adds r0, r5, #0
	bl sub_080C7504
	b _080C7F5E
	.align 2, 0
_080C7EC0: .4byte gKirbys
_080C7EC4: .4byte gUnk_0203AD3C
_080C7EC8: .4byte gUnk_08D60FA4
_080C7ECC: .4byte gSongTable
_080C7ED0: .4byte 0x00000CAC
_080C7ED4: .4byte 0x00000CA8
_080C7ED8: .4byte gUnk_0203AD10
_080C7EDC: .4byte 0x00000195
_080C7EE0: .4byte gRngVal
_080C7EE4: .4byte 0x00196225
_080C7EE8: .4byte 0x3C6EF35F
_080C7EEC:
	ldr r1, [r3]
	ldr r0, _080C7F14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7F18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C7F06
	movs r2, #1
_080C7F06:
	cmp r2, #0
	beq _080C7F1C
	adds r0, r5, #0
	bl sub_080C75D0
	b _080C7F5E
	.align 2, 0
_080C7F14: .4byte 0x00196225
_080C7F18: .4byte 0x3C6EF35F
_080C7F1C:
	ldr r2, _080C7F44 @ =sub_080C776C
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7F48
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7F50
	.align 2, 0
_080C7F44: .4byte sub_080C776C
_080C7F48:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7F50:
	str r0, [r5, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #4]
	b _080C7F5E
_080C7F5A:
	movs r0, #3
	strb r0, [r6]
_080C7F5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C7F64
sub_080C7F64: @ 0x080C7F64
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7FF8
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
	ldr r6, _080C7FB0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080C7FB4
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
	movs r3, #0x80
	lsls r3, r3, #4
	b _080C8034
	.align 2, 0
_080C7FB0: .4byte 0xFFFFF800
_080C7FB4:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	bgt _080C8080
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080C7FF4 @ =0xFFFFF800
	adds r0, r0, r2
	b _080C807C
	.align 2, 0
_080C7FF4: .4byte 0xFFFFF800
_080C7FF8:
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
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _080C8044
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
	ldr r3, _080C8040 @ =0xFFFFF800
_080C8034:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r6, r2, #0
	b _080C8080
	.align 2, 0
_080C8040: .4byte 0xFFFFF800
_080C8044:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r6, _080C80B8 @ =0xFFFFF800
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	blt _080C8080
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r7
_080C807C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080C8080:
	ldrb r0, [r4, #1]
	cmp r0, #9
	bls _080C8088
	b _080C81E0
_080C8088:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C80F0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C80D0
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x80
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _080C80BC @ =0xFFFFFBE0
	adds r5, r0, #0
	cmp r2, r1
	bge _080C80C4
	ldr r0, _080C80C0 @ =0x0000FBE0
	strh r0, [r5]
	b _080C8144
	.align 2, 0
_080C80B8: .4byte 0xFFFFF800
_080C80BC: .4byte 0xFFFFFBE0
_080C80C0: .4byte 0x0000FBE0
_080C80C4:
	movs r0, #0x84
	lsls r0, r0, #3
	cmp r2, r0
	ble _080C8144
	strh r0, [r5]
	b _080C8144
_080C80D0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x84
	lsls r2, r2, #3
	adds r5, r1, #0
	cmp r0, r2
	bgt _080C8138
	ldr r1, _080C80EC @ =0xFFFFFBE0
	b _080C813E
	.align 2, 0
_080C80EC: .4byte 0xFFFFFBE0
_080C80F0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C8120
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C811C @ =0xFFFFFD60
	adds r5, r1, #0
	cmp r0, r2
	blt _080C8138
	movs r1, #0xa8
	lsls r1, r1, #2
	cmp r0, r1
	ble _080C8144
	b _080C8142
	.align 2, 0
_080C811C: .4byte 0xFFFFFD60
_080C8120:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080C813C
_080C8138:
	strh r2, [r5]
	b _080C8144
_080C813C:
	ldr r1, _080C81BC @ =0xFFFFFD60
_080C813E:
	cmp r0, r1
	bge _080C8144
_080C8142:
	strh r1, [r5]
_080C8144:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080C820E
	adds r0, r4, #0
	bl sub_080C8DB0
	ldr r1, _080C81C0 @ =gKirbys
	ldr r0, _080C81C4 @ =gUnk_0203AD3C
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
	bne _080C820E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C817C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C820E
_080C817C:
	ldr r1, _080C81C8 @ =gUnk_08D60FA4
	ldr r7, _080C81CC @ =gSongTable
	ldr r2, _080C81D0 @ =0x00000C8C
	adds r0, r7, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C81A0
	ldr r1, _080C81D4 @ =0x00000C88
	adds r0, r7, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C820E
_080C81A0:
	cmp r3, #0
	beq _080C81B2
	ldr r0, _080C81D8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C820E
_080C81B2:
	ldr r0, _080C81DC @ =0x00000191
	bl m4aSongNumStart
	b _080C820E
	.align 2, 0
_080C81BC: .4byte 0xFFFFFD60
_080C81C0: .4byte gKirbys
_080C81C4: .4byte gUnk_0203AD3C
_080C81C8: .4byte gUnk_08D60FA4
_080C81CC: .4byte gSongTable
_080C81D0: .4byte 0x00000C8C
_080C81D4: .4byte 0x00000C88
_080C81D8: .4byte gUnk_0203AD10
_080C81DC: .4byte 0x00000191
_080C81E0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080C81FE
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C820E
	b _080C820A
_080C81FE:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C820E
_080C820A:
	movs r0, #0
	strh r0, [r5]
_080C820E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C821E
	adds r0, r4, #0
	bl sub_080C9210
_080C821E:
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C822C
	movs r0, #0
	strh r0, [r5]
_080C822C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8234
sub_080C8234: @ 0x080C8234
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C8254
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C8264
	b _080C8260
_080C8254:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C8264
_080C8260:
	movs r0, #0
	strh r0, [r1]
_080C8264:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8318
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C82A0 @ =gRngVal
	cmp r0, #0
	beq _080C82AC
	ldr r1, [r3]
	ldr r0, _080C82A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C82A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8294
	movs r2, #1
_080C8294:
	cmp r2, #0
	beq _080C82AC
	adds r0, r4, #0
	bl sub_080C7504
	b _080C8318
	.align 2, 0
_080C82A0: .4byte gRngVal
_080C82A4: .4byte 0x00196225
_080C82A8: .4byte 0x3C6EF35F
_080C82AC:
	ldr r1, [r3]
	ldr r0, _080C82D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C82D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C82C6
	movs r2, #1
_080C82C6:
	cmp r2, #0
	beq _080C82DC
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C8318
	.align 2, 0
_080C82D4: .4byte 0x00196225
_080C82D8: .4byte 0x3C6EF35F
_080C82DC:
	ldr r2, _080C8304 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C8308
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C8310
	.align 2, 0
_080C8304: .4byte sub_080C776C
_080C8308:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8310:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C8318:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8320
sub_080C8320: @ 0x080C8320
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C833E
	adds r0, r4, #0
	bl sub_080C9178
_080C833E:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080C83B0
	ldr r1, _080C83B8 @ =gKirbys
	ldr r0, _080C83BC @ =gUnk_0203AD3C
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
	bne _080C83B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C8370
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C83B0
_080C8370:
	ldr r1, _080C83C0 @ =gUnk_08D60FA4
	ldr r4, _080C83C4 @ =gSongTable
	ldr r2, _080C83C8 @ =0x00000B94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8396
	movs r1, #0xb9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C83B0
_080C8396:
	cmp r3, #0
	beq _080C83A8
	ldr r0, _080C83CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C83B0
_080C83A8:
	movs r0, #0xb9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C83B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C83B8: .4byte gKirbys
_080C83BC: .4byte gUnk_0203AD3C
_080C83C0: .4byte gUnk_08D60FA4
_080C83C4: .4byte gSongTable
_080C83C8: .4byte 0x00000B94
_080C83CC: .4byte gUnk_0203AD10

	thumb_func_start sub_080C83D0
sub_080C83D0: @ 0x080C83D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080C8450
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080C8C30
	ldr r1, _080C8468 @ =gKirbys
	ldr r0, _080C846C @ =gUnk_0203AD3C
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
	bne _080C8450
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C8414
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C8450
_080C8414:
	ldr r1, _080C8470 @ =gUnk_08D60FA4
	ldr r5, _080C8474 @ =gSongTable
	ldr r2, _080C8478 @ =0x00000B9C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8438
	ldr r1, _080C847C @ =0x00000B98
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C8450
_080C8438:
	cmp r3, #0
	beq _080C844A
	ldr r0, _080C8480 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C8450
_080C844A:
	ldr r0, _080C8484 @ =0x00000173
	bl m4aSongNumStart
_080C8450:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8460
	adds r0, r4, #0
	bl sub_080C9198
_080C8460:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C8468: .4byte gKirbys
_080C846C: .4byte gUnk_0203AD3C
_080C8470: .4byte gUnk_08D60FA4
_080C8474: .4byte gSongTable
_080C8478: .4byte 0x00000B9C
_080C847C: .4byte 0x00000B98
_080C8480: .4byte gUnk_0203AD10
_080C8484: .4byte 0x00000173

	thumb_func_start sub_080C8488
sub_080C8488: @ 0x080C8488
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8540
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C84C8 @ =gRngVal
	cmp r0, #0
	beq _080C84D4
	ldr r1, [r3]
	ldr r0, _080C84CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C84D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C84BC
	movs r2, #1
_080C84BC:
	cmp r2, #0
	beq _080C84D4
	adds r0, r4, #0
	bl sub_080C7504
	b _080C8540
	.align 2, 0
_080C84C8: .4byte gRngVal
_080C84CC: .4byte 0x00196225
_080C84D0: .4byte 0x3C6EF35F
_080C84D4:
	ldr r1, [r3]
	ldr r0, _080C84FC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8500 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C84EE
	movs r2, #1
_080C84EE:
	cmp r2, #0
	beq _080C8504
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C8540
	.align 2, 0
_080C84FC: .4byte 0x00196225
_080C8500: .4byte 0x3C6EF35F
_080C8504:
	ldr r2, _080C852C @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C8530
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C8538
	.align 2, 0
_080C852C: .4byte sub_080C776C
_080C8530:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8538:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C8540:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8548
sub_080C8548: @ 0x080C8548
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080C8596
	ldrb r0, [r6]
	cmp r0, #0
	bne _080C8596
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080C8596
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080C8596
	cmp r0, #0x7a
	bhi _080C8596
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080C8596
	ldr r4, [r6, #8]
	ldr r0, _080C859C @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080C85A0
_080C8596:
	movs r0, #0
	b _080C864C
	.align 2, 0
_080C859C: .4byte 0x03800B00
_080C85A0:
	ldr r2, _080C8658 @ =sub_080C8678
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080C865C @ =gUnk_083557E0
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	subs r1, #0x3e
	ands r0, r1
	str r0, [r5, #0xc]
	str r6, [r5, #0x6c]
	movs r0, #5
	strh r0, [r5, #4]
	ldr r1, _080C8660 @ =gKirbys
	ldr r0, _080C8664 @ =gUnk_0203AD3C
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
	bne _080C864A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C860C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C864A
_080C860C:
	ldr r1, _080C8668 @ =gUnk_08D60FA4
	ldr r4, _080C866C @ =gSongTable
	ldr r2, _080C8670 @ =0x00000C94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8632
	movs r1, #0xc9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C864A
_080C8632:
	cmp r3, #0
	beq _080C8642
	ldr r0, _080C8674 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080C864A
_080C8642:
	movs r0, #0xc9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C864A:
	movs r0, #1
_080C864C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C8658: .4byte sub_080C8678
_080C865C: .4byte gUnk_083557E0
_080C8660: .4byte gKirbys
_080C8664: .4byte gUnk_0203AD3C
_080C8668: .4byte gUnk_08D60FA4
_080C866C: .4byte gSongTable
_080C8670: .4byte 0x00000C94
_080C8674: .4byte gUnk_0203AD10

	thumb_func_start sub_080C8678
sub_080C8678: @ 0x080C8678
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r7, [r0]
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C869A
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080C9250
	b _080C8856
_080C869A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xb
	bne _080C8714
	ldrb r0, [r4, #1]
	cmp r0, #0xd
	bne _080C8714
	ldr r1, _080C87A8 @ =gKirbys
	ldr r0, _080C87AC @ =gUnk_0203AD3C
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
	bne _080C8714
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C86D8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C8714
_080C86D8:
	ldr r1, _080C87B0 @ =gUnk_08D60FA4
	ldr r5, _080C87B4 @ =gSongTable
	ldr r2, _080C87B8 @ =0x00000C9C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C86FC
	ldr r1, _080C87BC @ =0x00000C98
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C8714
_080C86FC:
	cmp r3, #0
	beq _080C870E
	ldr r0, _080C87C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C8714
_080C870E:
	ldr r0, _080C87C4 @ =0x00000193
	bl m4aSongNumStart
_080C8714:
	ldrb r0, [r6]
	cmp r0, #0xd
	bne _080C878C
	ldrb r0, [r4, #1]
	cmp r0, #6
	bne _080C878C
	ldr r1, _080C87A8 @ =gKirbys
	ldr r0, _080C87AC @ =gUnk_0203AD3C
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
	bne _080C878C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C874C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C878C
_080C874C:
	ldr r1, _080C87B0 @ =gUnk_08D60FA4
	ldr r5, _080C87B4 @ =gSongTable
	ldr r2, _080C87C8 @ =0x00000CA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8772
	movs r1, #0xca
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C878C
_080C8772:
	cmp r3, #0
	beq _080C8784
	ldr r0, _080C87C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C878C
_080C8784:
	movs r0, #0xca
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C878C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8856
	adds r1, r6, #0
	ldrb r0, [r1]
	cmp r0, #0xb
	beq _080C8800
	cmp r0, #0xb
	bgt _080C87CC
	cmp r0, #0xa
	beq _080C87D6
	b _080C8856
	.align 2, 0
_080C87A8: .4byte gKirbys
_080C87AC: .4byte gUnk_0203AD3C
_080C87B0: .4byte gUnk_08D60FA4
_080C87B4: .4byte gSongTable
_080C87B8: .4byte 0x00000C9C
_080C87BC: .4byte 0x00000C98
_080C87C0: .4byte gUnk_0203AD10
_080C87C4: .4byte 0x00000193
_080C87C8: .4byte 0x00000CA4
_080C87CC:
	cmp r0, #0xc
	beq _080C8824
	cmp r0, #0xd
	beq _080C8850
	b _080C8856
_080C87D6:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C8856
	movs r0, #0xb
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _080C87FC @ =gUnk_083557F0
	str r0, [r1]
	b _080C8856
	.align 2, 0
_080C87FC: .4byte gUnk_083557F0
_080C8800:
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _080C8820 @ =gUnk_08355860
	str r0, [r1]
	b _080C8856
	.align 2, 0
_080C8820: .4byte gUnk_08355860
_080C8824:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C8856
	movs r0, #0xd
	strb r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _080C884C @ =gUnk_083558B8
	str r0, [r1]
	b _080C8856
	.align 2, 0
_080C884C: .4byte gUnk_083558B8
_080C8850:
	adds r0, r4, #0
	bl sub_080C9230
_080C8856:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C885C
sub_080C885C: @ 0x080C885C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8914
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C889C @ =gRngVal
	cmp r0, #0
	beq _080C88A8
	ldr r1, [r3]
	ldr r0, _080C88A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C88A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8890
	movs r2, #1
_080C8890:
	cmp r2, #0
	beq _080C88A8
	adds r0, r4, #0
	bl sub_080C7504
	b _080C8914
	.align 2, 0
_080C889C: .4byte gRngVal
_080C88A0: .4byte 0x00196225
_080C88A4: .4byte 0x3C6EF35F
_080C88A8:
	ldr r1, [r3]
	ldr r0, _080C88D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C88D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C88C2
	movs r2, #1
_080C88C2:
	cmp r2, #0
	beq _080C88D8
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C8914
	.align 2, 0
_080C88D0: .4byte 0x00196225
_080C88D4: .4byte 0x3C6EF35F
_080C88D8:
	ldr r2, _080C8900 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C8904
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C890C
	.align 2, 0
_080C8900: .4byte sub_080C776C
_080C8904:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C890C:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C8914:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C891C
sub_080C891C: @ 0x080C891C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C89D8
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C8960 @ =gRngVal
	cmp r0, #0
	beq _080C896C
	ldr r1, [r3]
	ldr r0, _080C8964 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8968 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8952
	movs r2, #1
_080C8952:
	cmp r2, #0
	beq _080C896C
	adds r0, r4, #0
	bl sub_080C7504
	b _080C89D8
	.align 2, 0
_080C8960: .4byte gRngVal
_080C8964: .4byte 0x00196225
_080C8968: .4byte 0x3C6EF35F
_080C896C:
	ldr r1, [r3]
	ldr r0, _080C8994 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8998 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C8986
	movs r2, #1
_080C8986:
	cmp r2, #0
	beq _080C899C
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C89D8
	.align 2, 0
_080C8994: .4byte 0x00196225
_080C8998: .4byte 0x3C6EF35F
_080C899C:
	ldr r2, _080C89C4 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C89C8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C89D0
	.align 2, 0
_080C89C4: .4byte sub_080C776C
_080C89C8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C89D0:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C89D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C89E0
sub_080C89E0: @ 0x080C89E0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C8A10 @ =sub_080C8AB8
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
	beq _080C8A14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8A1C
	.align 2, 0
_080C8A10: .4byte sub_080C8AB8
_080C8A14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8A1C:
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
	ldr r0, _080C8AB0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8A6C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C8A6C:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080C8AB4 @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8A90
	orrs r2, r3
_080C8A90:
	str r2, [r4, #8]
	movs r1, #0xd
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C8AB0: .4byte gUnk_03000510
_080C8AB4: .4byte 0x12010400

	thumb_func_start sub_080C8AB8
sub_080C8AB8: @ 0x080C8AB8
	push {r4, lr}
	ldr r2, _080C8AD4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8AD8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8AE0
	.align 2, 0
_080C8AD4: .4byte gCurTask
_080C8AD8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8AE0:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080C8AFC
	ldr r0, [r2]
	bl TaskDestroy
	b _080C8C2A
_080C8AFC:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8B0C
	orrs r1, r3
	str r1, [r4, #8]
	b _080C8C2A
_080C8B0C:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080C8B4C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8B50
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080C8B50
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080C8C2A
	.align 2, 0
_080C8B4C: .4byte gUnk_03000510
_080C8B50:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C8B62
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080C8B6A
_080C8B62:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8B6A:
	str r0, [r4, #8]
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080C8C18
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080C8B9C
	ldr r0, _080C8B98 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080C8C2A
	.align 2, 0
_080C8B98: .4byte 0xFFFBFFFF
_080C8B9C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C8C2A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080C8C2A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080C8BD4
	ldr r2, _080C8BCC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C8BD0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C8BD6
	.align 2, 0
_080C8BCC: .4byte gCurLevelInfo
_080C8BD0: .4byte 0x0000065E
_080C8BD4:
	movs r1, #0xff
_080C8BD6:
	cmp r1, #0xff
	beq _080C8C2A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C8C10 @ =gUnk_02022EB0
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
	ldr r2, _080C8C14 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _080C8C2A
	.align 2, 0
_080C8C10: .4byte gUnk_02022EB0
_080C8C14: .4byte gUnk_02022F50
_080C8C18:
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
_080C8C2A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C8C30
sub_080C8C30: @ 0x080C8C30
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
	beq _080C8C54
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080C8C5A
_080C8C54:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080C8C5A:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080C8C78 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C8C7C @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080C8C94
	.align 2, 0
_080C8C78: .4byte gUnk_020229D4
_080C8C7C: .4byte gUnk_020229E0
_080C8C80:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C8C9C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C8C94:
	cmp r0, #0
	bne _080C8C80
	orrs r2, r3
	str r2, [r1]
_080C8C9C:
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
	movs r0, #0xb4
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

	thumb_func_start CreateBoxBoxerEnergyBall
CreateBoxBoxerEnergyBall: @ 0x080C8D00
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C8D34 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C8D38 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8D3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C8D44
	.align 2, 0
_080C8D34: .4byte ObjectMain
_080C8D38: .4byte ObjectDestroy
_080C8D3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C8D44:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080C8DAC @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xa
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080C8FA4
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C8DAC: .4byte sub_0809F840

	thumb_func_start sub_080C8DB0
sub_080C8DB0: @ 0x080C8DB0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C8DE0 @ =sub_080C8EA4
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
	beq _080C8DE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8DEC
	.align 2, 0
_080C8DE0: .4byte sub_080C8EA4
_080C8DE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8DEC:
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
	ldr r0, _080C8E74 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8E3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C8E3C:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080C8E78 @ =0x12000400
	str r0, [r4, #8]
	ldr r0, _080C8E7C @ =0x20000043
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8E80
	ldr r0, [r4, #8]
	orrs r0, r3
	b _080C8E88
	.align 2, 0
_080C8E74: .4byte gUnk_03000510
_080C8E78: .4byte 0x12000400
_080C8E7C: .4byte 0x20000043
_080C8E80:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8E88:
	str r0, [r4, #8]
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x30
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C8EA4
sub_080C8EA4: @ 0x080C8EA4
	push {r4, r5, r6, lr}
	ldr r0, _080C8EC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8EC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8ECC
	.align 2, 0
_080C8EC0: .4byte gCurTask
_080C8EC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8ECC:
	adds r4, r0, #0
	ldr r2, [r4, #0x70]
	adds r5, r4, #0
	adds r5, #0x60
	ldrh r3, [r5]
	ldr r6, _080C8F28 @ =0x0000FFFF
	cmp r3, r6
	beq _080C8EEE
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080C8EEE
	adds r0, r6, #0
	orrs r0, r3
	strh r0, [r5]
_080C8EEE:
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C8F96
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080C8F2C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080C8F96
	.align 2, 0
_080C8F28: .4byte 0x0000FFFF
_080C8F2C:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080C8F96
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080C8F5C
	ldr r2, _080C8F54 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C8F58 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C8F5E
	.align 2, 0
_080C8F54: .4byte gCurLevelInfo
_080C8F58: .4byte 0x0000065E
_080C8F5C:
	movs r1, #0xff
_080C8F5E:
	cmp r1, #0xff
	beq _080C8F96
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C8F9C @ =gUnk_02022EB0
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
	ldr r2, _080C8FA0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C8F96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C8F9C: .4byte gUnk_02022EB0
_080C8FA0: .4byte gUnk_02022F50

	thumb_func_start sub_080C8FA4
sub_080C8FA4: @ 0x080C8FA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C8FD4 @ =sub_080C9274
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C8FC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080C8FC4:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C8FD8
	cmp r0, #1
	beq _080C8FE2
	b _080C8FEC
	.align 2, 0
_080C8FD4: .4byte sub_080C9274
_080C8FD8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080C8FEA
_080C8FE2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
_080C8FEA:
	strh r0, [r1]
_080C8FEC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9000
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C9000:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9008
sub_080C9008: @ 0x080C9008
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9028 @ =sub_080C72CC
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
_080C9028: .4byte sub_080C72CC

	thumb_func_start sub_080C902C
sub_080C902C: @ 0x080C902C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9064 @ =sub_080C9084
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9068
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9070
	.align 2, 0
_080C9064: .4byte sub_080C9084
_080C9068:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9070:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9084
sub_080C9084: @ 0x080C9084
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9098
	adds r0, r2, #0
	bl sub_080C909C
_080C9098:
	pop {r0}
	bx r0

	thumb_func_start sub_080C909C
sub_080C909C: @ 0x080C909C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C90D8 @ =sub_080C7980
	movs r1, #3
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C90D2
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C90D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C90D8: .4byte sub_080C7980

	thumb_func_start sub_080C90DC
sub_080C90DC: @ 0x080C90DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9114 @ =sub_080C9134
	movs r1, #0xf
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9118
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9120
	.align 2, 0
_080C9114: .4byte sub_080C9134
_080C9118:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9120:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9134
sub_080C9134: @ 0x080C9134
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9148
	adds r0, r2, #0
	bl sub_080C914C
_080C9148:
	pop {r0}
	bx r0

	thumb_func_start sub_080C914C
sub_080C914C: @ 0x080C914C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9168 @ =sub_080C8320
	movs r1, #0x10
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C916C
	movs r0, #0x10
	b _080C916E
	.align 2, 0
_080C9168: .4byte sub_080C8320
_080C916C:
	movs r0, #0x2d
_080C916E:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9178
sub_080C9178: @ 0x080C9178
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9194 @ =sub_080C83D0
	movs r1, #0x11
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9194: .4byte sub_080C83D0

	thumb_func_start sub_080C9198
sub_080C9198: @ 0x080C9198
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C91B4 @ =sub_080C8488
	movs r1, #0x12
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C91B4: .4byte sub_080C8488

	thumb_func_start sub_080C91B8
sub_080C91B8: @ 0x080C91B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C91F0 @ =sub_080C9280
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C91F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C91FC
	.align 2, 0
_080C91F0: .4byte sub_080C9280
_080C91F4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C91FC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9210
sub_080C9210: @ 0x080C9210
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C922C @ =sub_080C8234
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C922C: .4byte sub_080C8234

	thumb_func_start sub_080C9230
sub_080C9230: @ 0x080C9230
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C924C @ =sub_080C885C
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C924C: .4byte sub_080C885C

	thumb_func_start sub_080C9250
sub_080C9250: @ 0x080C9250
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9270 @ =sub_080C891C
	movs r1, #0x13
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x10
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9270: .4byte sub_080C891C

	thumb_func_start sub_080C9274
sub_080C9274: @ 0x080C9274
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C9280
sub_080C9280: @ 0x080C9280
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9294
	adds r0, r2, #0
	bl sub_080C9298
_080C9294:
	pop {r0}
	bx r0

	thumb_func_start sub_080C9298
sub_080C9298: @ 0x080C9298
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C92B4 @ =sub_080C7F64
	movs r1, #8
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C92B4: .4byte sub_080C7F64
