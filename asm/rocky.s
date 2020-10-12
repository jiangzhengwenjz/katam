	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateRocky
CreateRocky: @ 0x080BE2F8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080BE32C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BE330 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BE334
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BE33C
	.align 2, 0
_080BE32C: .4byte ObjectMain
_080BE330: .4byte ObjectDestroy
_080BE334:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BE33C:
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
	ble _080BE35C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BE364
_080BE35C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BE364:
	str r0, [r4, #8]
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
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	beq _080BE3A6
	cmp r0, #1
	ble _080BE39E
	cmp r0, #2
	beq _080BE3AE
_080BE39E:
	adds r0, r4, #0
	bl sub_080BE8C8
	b _080BE3B4
_080BE3A6:
	adds r0, r4, #0
	bl sub_080BE9A8
	b _080BE3B4
_080BE3AE:
	adds r0, r4, #0
	bl sub_080BE9D8
_080BE3B4:
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

	thumb_func_start sub_080BE3C8
sub_080BE3C8: @ 0x080BE3C8
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080BE3E8
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BE3F8
	b _080BE3F4
_080BE3E8:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BE3F8
_080BE3F4:
	movs r0, #0
	strh r0, [r1]
_080BE3F8:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE404
sub_080BE404: @ 0x080BE404
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BE420
	adds r0, r4, #0
	bl sub_080BE8F0
	b _080BE4B4
_080BE420:
	ldrb r1, [r4, #1]
	movs r0, #0x1f
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, #0x1f
	bne _080BE436
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080BE436:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080BE44A
	adds r0, r4, #0
	bl sub_080BE978
_080BE44A:
	ldr r0, [r5]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	adds r3, r0, #0
	cmp r1, #0
	blt _080BE464
	ldr r0, _080BE460 @ =0x000031FF
	cmp r1, r0
	ble _080BE46C
	b _080BE4B4
	.align 2, 0
_080BE460: .4byte 0x000031FF
_080BE464:
	subs r1, r3, r2
	ldr r0, _080BE480 @ =0x000031FF
	cmp r1, r0
	bgt _080BE4B4
_080BE46C:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BE488
	ldr r0, _080BE484 @ =0x00000FFF
	cmp r2, r0
	ble _080BE490
	b _080BE4B4
	.align 2, 0
_080BE480: .4byte 0x000031FF
_080BE484: .4byte 0x00000FFF
_080BE488:
	subs r1, r1, r0
	ldr r0, _080BE4A4 @ =0x00000FFF
	cmp r1, r0
	bgt _080BE4B4
_080BE490:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	cmp r3, r0
	ble _080BE4A8
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _080BE4B2
	.align 2, 0
_080BE4A4: .4byte 0x00000FFF
_080BE4A8:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_080BE4B2:
	strb r0, [r2]
_080BE4B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BE4BC
sub_080BE4BC: @ 0x080BE4BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BE4F0
	ldr r1, _080BE4EC @ =gUnk_08354BA8
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r5, r1, #0
	b _080BE506
	.align 2, 0
_080BE4EC: .4byte gUnk_08354BA8
_080BE4F0:
	ldr r1, _080BE580 @ =gUnk_08354BA8
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r5, r0, #0
_080BE506:
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080BE51C
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
_080BE51C:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080BE52A
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080BE52A:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BE53A
	adds r0, r4, #0
	bl sub_080BE978
_080BE53A:
	ldrh r1, [r4, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080BE55C
	ldr r2, _080BE584 @ =sub_080BE404
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #0
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080BE55C:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0
	beq _080BE5E8
	adds r1, #0x27
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BE58C
	ldr r0, _080BE588 @ =0x000031FF
	cmp r2, r0
	ble _080BE594
	b _080BE670
	.align 2, 0
_080BE580: .4byte gUnk_08354BA8
_080BE584: .4byte sub_080BE404
_080BE588: .4byte 0x000031FF
_080BE58C:
	subs r1, r0, r3
	ldr r0, _080BE5A8 @ =0x000031FF
	cmp r1, r0
	bgt _080BE670
_080BE594:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BE5B0
	ldr r0, _080BE5AC @ =0x00000FFF
	cmp r2, r0
	ble _080BE5B8
	b _080BE670
	.align 2, 0
_080BE5A8: .4byte 0x000031FF
_080BE5AC: .4byte 0x00000FFF
_080BE5B0:
	subs r1, r1, r0
	ldr r0, _080BE5D8 @ =0x00000FFF
	cmp r1, r0
	bgt _080BE670
_080BE5B8:
	ldr r2, _080BE5DC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BE5E0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BE5E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080BE658
	ldrh r0, [r4, #4]
	strb r0, [r6]
	b _080BE670
	.align 2, 0
_080BE5D8: .4byte 0x00000FFF
_080BE5DC: .4byte gRngVal
_080BE5E0: .4byte 0x00196225
_080BE5E4: .4byte 0x3C6EF35F
_080BE5E8:
	movs r2, #4
	ldrsh r0, [r4, r2]
	ldrb r1, [r1]
	subs r0, r0, r1
	cmp r0, #0x3c
	ble _080BE670
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BE614
	ldr r0, _080BE610 @ =0x000031FF
	cmp r2, r0
	ble _080BE61C
	b _080BE670
	.align 2, 0
_080BE610: .4byte 0x000031FF
_080BE614:
	subs r1, r0, r3
	ldr r0, _080BE630 @ =0x000031FF
	cmp r1, r0
	bgt _080BE670
_080BE61C:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BE638
	ldr r0, _080BE634 @ =0x00000FFF
	cmp r2, r0
	ble _080BE640
	b _080BE670
	.align 2, 0
_080BE630: .4byte 0x000031FF
_080BE634: .4byte 0x00000FFF
_080BE638:
	subs r1, r1, r0
	ldr r0, _080BE660 @ =0x00000FFF
	cmp r1, r0
	bgt _080BE670
_080BE640:
	ldr r2, _080BE664 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BE668 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BE66C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080BE670
_080BE658:
	adds r0, r4, #0
	bl sub_080BE67C
	b _080BE676
	.align 2, 0
_080BE660: .4byte 0x00000FFF
_080BE664: .4byte gRngVal
_080BE668: .4byte 0x00196225
_080BE66C: .4byte 0x3C6EF35F
_080BE670:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080BE676:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE67C
sub_080BE67C: @ 0x080BE67C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE728 @ =sub_080BE74C
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xba
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE6B8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080BE6B8:
	ldr r1, _080BE72C @ =gUnk_02020EE0
	ldr r0, _080BE730 @ =gUnk_0203AD3C
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
	bne _080BE720
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE6E4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BE720
_080BE6E4:
	ldr r1, _080BE734 @ =gUnk_08D60FA4
	ldr r4, _080BE738 @ =gSongTable
	ldr r2, _080BE73C @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BE708
	ldr r1, _080BE740 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BE720
_080BE708:
	cmp r3, #0
	beq _080BE71A
	ldr r0, _080BE744 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE720
_080BE71A:
	ldr r0, _080BE748 @ =0x00000145
	bl m4aSongNumStart
_080BE720:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE728: .4byte sub_080BE74C
_080BE72C: .4byte gUnk_02020EE0
_080BE730: .4byte gUnk_0203AD3C
_080BE734: .4byte gUnk_08D60FA4
_080BE738: .4byte gSongTable
_080BE73C: .4byte 0x00000A2C
_080BE740: .4byte 0x00000A28
_080BE744: .4byte gUnk_0203AD10
_080BE748: .4byte 0x00000145

	thumb_func_start sub_080BE74C
sub_080BE74C: @ 0x080BE74C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x17
	bhi _080BE778
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080BE770 @ =0xF0010000
	cmp r0, r1
	bge _080BE78E
	ldr r0, _080BE774 @ =0x0000F001
	strh r0, [r2]
	b _080BE78E
	.align 2, 0
_080BE770: .4byte 0xF0010000
_080BE774: .4byte 0x0000F001
_080BE778:
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080BE78E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080BE7A6
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BE7AC
_080BE7A6:
	adds r0, r4, #0
	bl sub_080BE928
_080BE7AC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE7B8
sub_080BE7B8: @ 0x080BE7B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BE86E
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r1, #0x48
	strh r0, [r1]
	ldr r1, _080BE87C @ =gUnk_02020EE0
	ldr r0, _080BE880 @ =gUnk_0203AD3C
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
	bne _080BE852
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE812
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BE852
_080BE812:
	ldr r1, _080BE884 @ =gUnk_08D60FA4
	ldr r5, _080BE888 @ =gSongTable
	ldr r2, _080BE88C @ =0x000009F4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BE838
	movs r1, #0x9f
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BE852
_080BE838:
	cmp r3, #0
	beq _080BE84A
	ldr r0, _080BE890 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE852
_080BE84A:
	movs r0, #0x9f
	lsls r0, r0, #1
	bl m4aSongNumStart
_080BE852:
	ldr r2, _080BE894 @ =sub_080BE404
	adds r0, r4, #0
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
_080BE86E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BE87C: .4byte gUnk_02020EE0
_080BE880: .4byte gUnk_0203AD3C
_080BE884: .4byte gUnk_08D60FA4
_080BE888: .4byte gSongTable
_080BE88C: .4byte 0x000009F4
_080BE890: .4byte gUnk_0203AD10
_080BE894: .4byte sub_080BE404

	thumb_func_start sub_080BE898
sub_080BE898: @ 0x080BE898
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080BE8B6
	cmp r0, #1
	ble _080BE8AE
	cmp r0, #2
	beq _080BE8BE
_080BE8AE:
	adds r0, r1, #0
	bl sub_080BE8C8
	b _080BE8C4
_080BE8B6:
	adds r0, r1, #0
	bl sub_080BE9A8
	b _080BE8C4
_080BE8BE:
	adds r0, r1, #0
	bl sub_080BE9D8
_080BE8C4:
	pop {r0}
	bx r0

	thumb_func_start sub_080BE8C8
sub_080BE8C8: @ 0x080BE8C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE8EC @ =sub_080BE404
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
_080BE8EC: .4byte sub_080BE404

	thumb_func_start sub_080BE8F0
sub_080BE8F0: @ 0x080BE8F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE914 @ =sub_080BE4BC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080BE918
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080BE920
	.align 2, 0
_080BE914: .4byte sub_080BE4BC
_080BE918:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BE920:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE928
sub_080BE928: @ 0x080BE928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE94C @ =sub_080BE95C
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BE950
	movs r0, #8
	b _080BE952
	.align 2, 0
_080BE94C: .4byte sub_080BE95C
_080BE950:
	movs r0, #0x10
_080BE952:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BE95C
sub_080BE95C: @ 0x080BE95C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BE972
	adds r0, r1, #0
	bl sub_080BE978
_080BE972:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BE978
sub_080BE978: @ 0x080BE978
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE9A4 @ =sub_080BE7B8
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE9A4: .4byte sub_080BE7B8

	thumb_func_start sub_080BE9A8
sub_080BE9A8: @ 0x080BE9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE9C8 @ =sub_080BE9CC
	movs r1, #1
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
_080BE9C8: .4byte sub_080BE9CC

	thumb_func_start sub_080BE9CC
sub_080BE9CC: @ 0x080BE9CC
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080BE9D8
sub_080BE9D8: @ 0x080BE9D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE9F8 @ =sub_080BE9FC
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
_080BE9F8: .4byte sub_080BE9FC

	thumb_func_start sub_080BE9FC
sub_080BE9FC: @ 0x080BE9FC
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
