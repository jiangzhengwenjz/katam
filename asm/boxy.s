	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBoxy
CreateBoxy: @ 0x080D5624
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D5658 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D565C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D5660
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D5668
	.align 2, 0
_080D5658: .4byte ObjectMain
_080D565C: .4byte ObjectDestroy
_080D5660:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D5668:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	ldr r0, [r4, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0xc]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	subs r1, #8
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D56BE
	orrs r2, r3
	b _080D56C4
_080D56BE:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080D56C4:
	str r2, [r4, #8]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x12
	rsbs r2, r2, #0
	movs r0, #9
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080D5718 @ =sub_080D7958
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080D77B8
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D5718: .4byte sub_080D7958

	thumb_func_start sub_080D571C
sub_080D571C: @ 0x080D571C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r4, [r0]
	ldr r3, [r6, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r6, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D574C
	b _080D5904
_080D574C:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r4, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sl, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080D5760
	b _080D5904
_080D5760:
	ldr r1, [r6, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080D576E
	movs r0, #1
	orrs r3, r0
	b _080D5774
_080D576E:
	movs r0, #2
	rsbs r0, r0, #0
	ands r3, r0
_080D5774:
	str r3, [r6, #8]
	adds r7, r6, #0
	adds r7, #0xac
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
	bne _080D57B2
	b _080D5904
_080D57B2:
	ldr r4, _080D5914 @ =gCurLevelInfo
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
	ldr r0, [r6, #8]
	ldr r1, _080D5918 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x85
	mov r3, r8
	strb r3, [r0]
	adds r0, r6, #0
	bl sub_080D777C
	adds r0, r6, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080D5840
	mov r1, r8
	strb r1, [r0, #9]
_080D5840:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r2, _080D591C @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080D5904
	ldr r0, _080D5920 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080D5904
	mov r4, sb
	ldr r0, [r4]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D5904
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080D58C2
	movs r4, #1
_080D588A:
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
	bls _080D588A
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080D58C2:
	ldr r1, _080D5920 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080D5924 @ =gUnk_02020EE0
	ldr r0, _080D5928 @ =gUnk_0203AD3C
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
	bne _080D5904
	ldr r0, _080D592C @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080D5904
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080D5904:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D5914: .4byte gCurLevelInfo
_080D5918: .4byte 0xFFFFFDFF
_080D591C: .4byte 0x0000065E
_080D5920: .4byte gUnk_08352D80
_080D5924: .4byte gUnk_02020EE0
_080D5928: .4byte gUnk_0203AD3C
_080D592C: .4byte gUnk_0203AD20

	thumb_func_start sub_080D5930
sub_080D5930: @ 0x080D5930
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D5942
	movs r7, #0x60
	movs r3, #2
	b _080D5974
_080D5942:
	adds r2, r5, #0
	adds r2, #0x80
	ldr r1, _080D5968 @ =gUnk_08351530
	ldr r0, _080D596C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x28
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D5970
	movs r7, #0x48
	movs r3, #2
	b _080D5974
	.align 2, 0
_080D5968: .4byte gUnk_08351530
_080D596C: .4byte gUnk_0203AD30
_080D5970:
	movs r7, #0x48
	movs r3, #4
_080D5974:
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #5
	bls _080D5990
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_080D6B9C
	b _080D5AA8
_080D5990:
	adds r0, r2, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	ldr r6, _080D59D4 @ =gRngVal
	cmp r0, r3
	bge _080D5A4C
	ldr r1, [r6]
	ldr r0, _080D59D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D59DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D5A4C
	adds r0, r2, #0
	adds r0, #0x11
	strb r0, [r4]
	lsls r3, r7, #8
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	ldr r0, [r5, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080D59E0
	cmp r1, r3
	blt _080D59E6
	b _080D5A08
	.align 2, 0
_080D59D4: .4byte gRngVal
_080D59D8: .4byte 0x00196225
_080D59DC: .4byte 0x3C6EF35F
_080D59E0:
	subs r0, r0, r2
	cmp r0, r3
	bge _080D5A08
_080D59E6:
	ldr r1, [r6]
	ldr r0, _080D5A00 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D5A04 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D5AA8
	b _080D5A32
	.align 2, 0
_080D5A00: .4byte 0x00196225
_080D5A04: .4byte 0x3C6EF35F
_080D5A08:
	ldr r0, [r6]
	ldr r3, _080D5A3C @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080D5A40 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D5AA8
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r3, _080D5A40 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D5A44
_080D5A32:
	adds r0, r5, #0
	bl sub_080D5B2C
	b _080D5AA8
	.align 2, 0
_080D5A3C: .4byte 0x00196225
_080D5A40: .4byte 0x3C6EF35F
_080D5A44:
	adds r0, r5, #0
	bl sub_080D5D54
	b _080D5AA8
_080D5A4C:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4]
	ldr r0, [r6]
	ldr r3, _080D5A74 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080D5A78 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D5A7C
	adds r0, r5, #0
	bl sub_080D6988
	b _080D5AA2
	.align 2, 0
_080D5A74: .4byte 0x00196225
_080D5A78: .4byte 0x3C6EF35F
_080D5A7C:
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r3, _080D5A98 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5A9C
	adds r0, r5, #0
	bl sub_080D655C
	b _080D5AA2
	.align 2, 0
_080D5A98: .4byte 0x3C6EF35F
_080D5A9C:
	adds r0, r5, #0
	bl sub_080D7824
_080D5AA2:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080D5AA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D5AB0
sub_080D5AB0: @ 0x080D5AB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x52
	ldrh r0, [r6]
	subs r0, #0x6a
	movs r2, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080D5AD0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6]
_080D5AD0:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080D5B20
	adds r7, r4, #0
	adds r7, #0x50
	strh r2, [r7]
	strh r2, [r6]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080D5B20
	ldr r2, _080D5B28 @ =sub_080D5AB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r5, [r7]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
_080D5B20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D5B28: .4byte sub_080D5AB0

	thumb_func_start sub_080D5B2C
sub_080D5B2C: @ 0x080D5B2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5B54 @ =sub_080D5BB0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D5B58
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D5B60
	.align 2, 0
_080D5B54: .4byte sub_080D5BB0
_080D5B58:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D5B60:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D5B76
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080D5B7E
_080D5B76:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080D5B7E:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5B9C
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D5B9C:
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

	thumb_func_start sub_080D5BB0
sub_080D5BB0: @ 0x080D5BB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5C48
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
	ldr r6, _080D5C00 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D5C04
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
	adds r0, r0, r3
	b _080D5CC4
	.align 2, 0
_080D5C00: .4byte 0xFFFFF800
_080D5C04:
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
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _080D5CC8
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
	ldr r3, _080D5C44 @ =0xFFFFF800
	adds r0, r0, r3
	b _080D5CC4
	.align 2, 0
_080D5C44: .4byte 0xFFFFF800
_080D5C48:
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
	bgt _080D5C8C
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
	ldr r3, _080D5C88 @ =0xFFFFF800
	adds r0, r0, r3
	b _080D5CC4
	.align 2, 0
_080D5C88: .4byte 0xFFFFF800
_080D5C8C:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080D5D34 @ =0xFFFFF800
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	blt _080D5CC8
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D5CC4:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080D5CC8:
	adds r6, r4, #0
	adds r6, #0x52
	ldrh r0, [r6]
	subs r0, #0x6a
	movs r3, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080D5CE4
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6]
_080D5CE4:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _080D5D3C
	adds r7, r4, #0
	adds r7, #0x50
	strh r3, [r7]
	strh r3, [r6]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080D5D3C
	ldr r2, _080D5D38 @ =sub_080D5AB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r5, [r7]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
	b _080D5D4E
	.align 2, 0
_080D5D34: .4byte 0xFFFFF800
_080D5D38: .4byte sub_080D5AB0
_080D5D3C:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5D4E
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D5D4E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5D54
sub_080D5D54: @ 0x080D5D54
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5D7C @ =sub_080D5DD8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D5D80
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D5D88
	.align 2, 0
_080D5D7C: .4byte sub_080D5DD8
_080D5D80:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D5D88:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D5D9E
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xfe
	lsls r0, r0, #8
	b _080D5DA6
_080D5D9E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080D5DA6:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5DC4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D5DC4:
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

	thumb_func_start sub_080D5DD8
sub_080D5DD8: @ 0x080D5DD8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5E70
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
	ldr r6, _080D5E28 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D5E2C
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
	adds r0, r0, r3
	b _080D5EEC
	.align 2, 0
_080D5E28: .4byte 0xFFFFF800
_080D5E2C:
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
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _080D5EF0
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
	ldr r3, _080D5E6C @ =0xFFFFF800
	adds r0, r0, r3
	b _080D5EEC
	.align 2, 0
_080D5E6C: .4byte 0xFFFFF800
_080D5E70:
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
	bgt _080D5EB4
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
	ldr r3, _080D5EB0 @ =0xFFFFF800
	adds r0, r0, r3
	b _080D5EEC
	.align 2, 0
_080D5EB0: .4byte 0xFFFFF800
_080D5EB4:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080D5F5C @ =0xFFFFF800
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	blt _080D5EF0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D5EEC:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080D5EF0:
	adds r6, r4, #0
	adds r6, #0x52
	ldrh r0, [r6]
	subs r0, #0x6a
	movs r3, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080D5F0C
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6]
_080D5F0C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _080D5F64
	adds r7, r4, #0
	adds r7, #0x50
	strh r3, [r7]
	strh r3, [r6]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080D5F64
	ldr r2, _080D5F60 @ =sub_080D5AB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r5, [r7]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
	b _080D5F76
	.align 2, 0
_080D5F5C: .4byte 0xFFFFF800
_080D5F60: .4byte sub_080D5AB0
_080D5F64:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D5F76
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D5F76:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5F7C
sub_080D5F7C: @ 0x080D5F7C
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
	bge _080D5F9A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080D5F9A:
	ldr r0, [r5, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #2
	bne _080D5FC6
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080D5FBA
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r2]
_080D5FBA:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D60B0
	movs r0, #3
	b _080D60AE
_080D5FC6:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080D5FD4
	strb r3, [r6]
_080D5FD4:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080D60B0
	ldr r1, _080D608C @ =gUnk_02020EE0
	ldr r0, _080D6090 @ =gUnk_0203AD3C
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
	bne _080D604A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D600E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D604A
_080D600E:
	ldr r1, _080D6094 @ =gUnk_08D60FA4
	ldr r4, _080D6098 @ =gSongTable
	ldr r2, _080D609C @ =0x00000CBC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D6032
	ldr r1, _080D60A0 @ =0x00000CB8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D604A
_080D6032:
	cmp r3, #0
	beq _080D6044
	ldr r0, _080D60A4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D604A
_080D6044:
	ldr r0, _080D60A8 @ =0x00000197
	bl m4aSongNumStart
_080D604A:
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
	bne _080D60AC
	adds r0, r5, #0
	bl sub_080D787C
	b _080D60B0
	.align 2, 0
_080D608C: .4byte gUnk_02020EE0
_080D6090: .4byte gUnk_0203AD3C
_080D6094: .4byte gUnk_08D60FA4
_080D6098: .4byte gSongTable
_080D609C: .4byte 0x00000CBC
_080D60A0: .4byte 0x00000CB8
_080D60A4: .4byte gUnk_0203AD10
_080D60A8: .4byte 0x00000197
_080D60AC:
	movs r0, #2
_080D60AE:
	strb r0, [r6]
_080D60B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D60B8
sub_080D60B8: @ 0x080D60B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D60DC @ =sub_080D6194
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D60E0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0]
	movs r1, #0x19
	b _080D60EC
	.align 2, 0
_080D60DC: .4byte sub_080D6194
_080D60E0:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xd8
	lsls r1, r1, #2
	strh r1, [r0]
	movs r1, #0x28
_080D60EC:
	strh r1, [r4, #4]
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D6100
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D6100:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080D617C @ =gUnk_02020EE0
	ldr r0, _080D6180 @ =gUnk_0203AD3C
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
	bne _080D6176
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D6136
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D6176
_080D6136:
	ldr r1, _080D6184 @ =gUnk_08D60FA4
	ldr r4, _080D6188 @ =gSongTable
	ldr r2, _080D618C @ =0x00000CB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D615C
	movs r1, #0xcb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D6176
_080D615C:
	cmp r3, #0
	beq _080D616E
	ldr r0, _080D6190 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6176
_080D616E:
	movs r0, #0xcb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D6176:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D617C: .4byte gUnk_02020EE0
_080D6180: .4byte gUnk_0203AD3C
_080D6184: .4byte gUnk_08D60FA4
_080D6188: .4byte gSongTable
_080D618C: .4byte 0x00000CB4
_080D6190: .4byte gUnk_0203AD10

	thumb_func_start sub_080D6194
sub_080D6194: @ 0x080D6194
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D622C
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
	ldr r6, _080D61E4 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D61E8
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
	b _080D62A8
	.align 2, 0
_080D61E4: .4byte 0xFFFFF800
_080D61E8:
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
	bgt _080D62AC
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
	ldr r2, _080D6228 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D62A8
	.align 2, 0
_080D6228: .4byte 0xFFFFF800
_080D622C:
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
	bgt _080D6270
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
	ldr r2, _080D626C @ =0xFFFFF800
	adds r0, r0, r2
	b _080D62A8
	.align 2, 0
_080D626C: .4byte 0xFFFFF800
_080D6270:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080D62F4 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080D62AC
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D62A8:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080D62AC:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080D62FC
	ldr r2, _080D62F8 @ =sub_080D5AB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
	b _080D6310
	.align 2, 0
_080D62F4: .4byte 0xFFFFF800
_080D62F8: .4byte sub_080D5AB0
_080D62FC:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D6310
	adds r0, r4, #0
	bl sub_080D6318
_080D6310:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D6318
sub_080D6318: @ 0x080D6318
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D63B8 @ =sub_080D63D4
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #5
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080D63BC @ =gUnk_02020EE0
	ldr r0, _080D63C0 @ =gUnk_0203AD3C
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
	bne _080D63B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D6370
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D63B0
_080D6370:
	ldr r1, _080D63C4 @ =gUnk_08D60FA4
	ldr r4, _080D63C8 @ =gSongTable
	ldr r2, _080D63CC @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D6396
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D63B0
_080D6396:
	cmp r3, #0
	beq _080D63A8
	ldr r0, _080D63D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D63B0
_080D63A8:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D63B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D63B8: .4byte sub_080D63D4
_080D63BC: .4byte gUnk_02020EE0
_080D63C0: .4byte gUnk_0203AD3C
_080D63C4: .4byte gUnk_08D60FA4
_080D63C8: .4byte gSongTable
_080D63CC: .4byte 0x00000B24
_080D63D0: .4byte gUnk_0203AD10

	thumb_func_start sub_080D63D4
sub_080D63D4: @ 0x080D63D4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x52
	ldrh r0, [r5]
	subs r0, #0x10
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080D63F4
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5]
_080D63F4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #8
	bne _080D6430
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080D640E
	b _080D6552
_080D640E:
	movs r0, #9
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D642E
	b _080D6552
_080D642E:
	b _080D64E8
_080D6430:
	cmp r1, #9
	bne _080D650C
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D6444
	b _080D6552
_080D6444:
	ldr r1, _080D64F0 @ =gUnk_02020EE0
	ldr r0, _080D64F4 @ =gUnk_0203AD3C
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
	bne _080D64B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D6470
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D64B0
_080D6470:
	ldr r1, _080D64F8 @ =gUnk_08D60FA4
	ldr r5, _080D64FC @ =gSongTable
	ldr r2, _080D6500 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D6496
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D64B0
_080D6496:
	cmp r3, #0
	beq _080D64A8
	ldr r0, _080D6504 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D64B0
_080D64A8:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D64B0:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	movs r1, #0xc
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08089864
	movs r0, #0xa
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080D6508 @ =0x0000FE80
	strh r0, [r2]
	ldr r1, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #4
	strh r0, [r4, #4]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080D6552
_080D64E8:
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _080D6552
	.align 2, 0
_080D64F0: .4byte gUnk_02020EE0
_080D64F4: .4byte gUnk_0203AD3C
_080D64F8: .4byte gUnk_08D60FA4
_080D64FC: .4byte gSongTable
_080D6500: .4byte 0x00000B24
_080D6504: .4byte gUnk_0203AD10
_080D6508: .4byte 0x0000FE80
_080D650C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D651E
	adds r0, r4, #0
	adds r0, #0x50
	strh r6, [r0]
_080D651E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D6552
	ldr r2, _080D6558 @ =sub_080D5AB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r6, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
_080D6552:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D6558: .4byte sub_080D5AB0

	thumb_func_start sub_080D655C
sub_080D655C: @ 0x080D655C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r2, _080D6588 @ =sub_080D6648
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
	ble _080D658C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D6594
	.align 2, 0
_080D6588: .4byte sub_080D6648
_080D658C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D6594:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	ldr r5, [r1, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r5, r1
	adds r7, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	blt _080D65B4
	movs r0, #0xc0
	lsls r0, r0, #6
	cmp r2, r0
	bgt _080D65BE
	b _080D65E8
_080D65B4:
	subs r1, r3, r5
	movs r0, #0xc0
	lsls r0, r0, #6
	cmp r1, r0
	ble _080D65E8
_080D65BE:
	adds r0, r6, #3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [r7]
	ldr r0, [r0, #0x40]
	subs r1, r0, r3
	cmp r1, #0
	blt _080D65D8
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080D65E2
	b _080D65E8
_080D65D8:
	subs r1, r3, r0
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080D65E8
_080D65E2:
	adds r0, r6, #3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080D65E8:
	ldr r2, _080D661C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D6620 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D6624 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080D6628 @ =gUnk_08356214
	adds r0, r6, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9f
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #1
	beq _080D662C
	cmp r0, #2
	beq _080D6630
	movs r0, #0x17
	b _080D6632
	.align 2, 0
_080D661C: .4byte gRngVal
_080D6620: .4byte 0x00196225
_080D6624: .4byte 0x3C6EF35F
_080D6628: .4byte gUnk_08356214
_080D662C:
	movs r0, #0x1b
	b _080D6632
_080D6630:
	movs r0, #0x21
_080D6632:
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D6648
sub_080D6648: @ 0x080D6648
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D665E
	adds r0, r4, #0
	bl sub_080D66AC
_080D665E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #7
	bgt _080D668C
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _080D6688 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x55
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080D66A2
	.align 2, 0
_080D6688: .4byte gUnk_0203AD40
_080D668C:
	cmp r0, #0xf
	bgt _080D66A2
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _080D66A8 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
_080D66A2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D66A8: .4byte gUnk_0203AD40

	thumb_func_start sub_080D66AC
sub_080D66AC: @ 0x080D66AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x9f
	ldrb r5, [r0]
	ldr r2, _080D66D0 @ =sub_080D6718
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	cmp r5, #1
	beq _080D66D4
	cmp r5, #2
	beq _080D66EA
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xe0
	lsls r1, r1, #1
	b _080D66DC
	.align 2, 0
_080D66D0: .4byte sub_080D6718
_080D66D4:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x90
	lsls r1, r1, #2
_080D66DC:
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	adds r1, #0x60
	strh r1, [r2]
	adds r2, r0, #0
	b _080D66FC
_080D66EA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x52
	strh r0, [r2]
	adds r2, r1, #0
_080D66FC:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D6712
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D6712:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D6718
sub_080D6718: @ 0x080D6718
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D67AC
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
	ldr r6, _080D6764 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D6768
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
	b _080D67E8
	.align 2, 0
_080D6764: .4byte 0xFFFFF800
_080D6768:
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
	bgt _080D6834
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
	ldr r2, _080D67A8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D6830
	.align 2, 0
_080D67A8: .4byte 0xFFFFF800
_080D67AC:
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
	bgt _080D67F8
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
	ldr r3, _080D67F4 @ =0xFFFFF800
_080D67E8:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r5, r2, #0
	b _080D6834
	.align 2, 0
_080D67F4: .4byte 0xFFFFF800
_080D67F8:
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
	ldr r5, _080D6870 @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080D6834
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
_080D6830:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080D6834:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080D684E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080D684E:
	ldr r0, [r4, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bne _080D6874
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x40
	bgt _080D6882
	movs r0, #3
	strb r0, [r3]
	b _080D6882
	.align 2, 0
_080D6870: .4byte 0xFFFFF800
_080D6874:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080D6882
	strb r6, [r3]
_080D6882:
	ldrb r1, [r3]
	cmp r1, #4
	bne _080D6896
	ldrb r0, [r5]
	ands r1, r0
	cmp r1, #0
	beq _080D6896
	adds r0, r4, #0
	bl sub_080D68B0
_080D6896:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D68A8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D68A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D68B0
sub_080D68B0: @ 0x080D68B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080D6964 @ =sub_080D77DC
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _080D6968 @ =gUnk_02020EE0
	ldr r0, _080D696C @ =gUnk_0203AD3C
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
	bne _080D6930
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D68F4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D6930
_080D68F4:
	ldr r1, _080D6970 @ =gUnk_08D60FA4
	ldr r4, _080D6974 @ =gSongTable
	ldr r2, _080D6978 @ =0x00000CBC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D6918
	ldr r1, _080D697C @ =0x00000CB8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D6930
_080D6918:
	cmp r3, #0
	beq _080D692A
	ldr r0, _080D6980 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6930
_080D692A:
	ldr r0, _080D6984 @ =0x00000197
	bl m4aSongNumStart
_080D6930:
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
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D6964: .4byte sub_080D77DC
_080D6968: .4byte gUnk_02020EE0
_080D696C: .4byte gUnk_0203AD3C
_080D6970: .4byte gUnk_08D60FA4
_080D6974: .4byte gSongTable
_080D6978: .4byte 0x00000CBC
_080D697C: .4byte 0x00000CB8
_080D6980: .4byte gUnk_0203AD10
_080D6984: .4byte 0x00000197

	thumb_func_start sub_080D6988
sub_080D6988: @ 0x080D6988
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D69B0 @ =sub_080D6A30
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D69B4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D69BC
	.align 2, 0
_080D69B0: .4byte sub_080D6A30
_080D69B4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D69BC:
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
	beq _080D69FC
	ldr r2, _080D69F0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D69F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D69F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6A14
	movs r0, #2
	b _080D6A26
	.align 2, 0
_080D69F0: .4byte gRngVal
_080D69F4: .4byte 0x00196225
_080D69F8: .4byte 0x3C6EF35F
_080D69FC:
	ldr r2, _080D6A18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D6A1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D6A20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D6A24
_080D6A14:
	strh r1, [r4, #4]
	b _080D6A28
	.align 2, 0
_080D6A18: .4byte gRngVal
_080D6A1C: .4byte 0x00196225
_080D6A20: .4byte 0x3C6EF35F
_080D6A24:
	movs r0, #3
_080D6A26:
	strh r0, [r4, #4]
_080D6A28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D6A30
sub_080D6A30: @ 0x080D6A30
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
	bge _080D6A4E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080D6A4E:
	ldr r0, [r5, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #2
	bne _080D6A7C
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080D6A6E
	movs r0, #0x84
	lsls r0, r0, #3
	strh r0, [r2]
_080D6A6E:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _080D6A78
	b _080D6B94
_080D6A78:
	movs r0, #3
	b _080D6B92
_080D6A7C:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080D6A8A
	strb r3, [r6]
_080D6A8A:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080D6B94
	ldr r1, _080D6B6C @ =gUnk_02020EE0
	ldr r0, _080D6B70 @ =gUnk_0203AD3C
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
	bne _080D6B00
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D6AC4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D6B00
_080D6AC4:
	ldr r1, _080D6B74 @ =gUnk_08D60FA4
	ldr r4, _080D6B78 @ =gSongTable
	ldr r2, _080D6B7C @ =0x00000CBC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D6AE8
	ldr r1, _080D6B80 @ =0x00000CB8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D6B00
_080D6AE8:
	cmp r3, #0
	beq _080D6AFA
	ldr r0, _080D6B84 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6B00
_080D6AFA:
	ldr r0, _080D6B88 @ =0x00000197
	bl m4aSongNumStart
_080D6B00:
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
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080D6B90
	ldr r2, _080D6B8C @ =sub_080D5AB0
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_080D5930
	b _080D6B94
	.align 2, 0
_080D6B6C: .4byte gUnk_02020EE0
_080D6B70: .4byte gUnk_0203AD3C
_080D6B74: .4byte gUnk_08D60FA4
_080D6B78: .4byte gSongTable
_080D6B7C: .4byte 0x00000CBC
_080D6B80: .4byte 0x00000CB8
_080D6B84: .4byte gUnk_0203AD10
_080D6B88: .4byte 0x00000197
_080D6B8C: .4byte sub_080D5AB0
_080D6B90:
	movs r0, #2
_080D6B92:
	strb r0, [r6]
_080D6B94:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D6B9C
sub_080D6B9C: @ 0x080D6B9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D6BC4 @ =sub_080D6C0C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D6BC8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D6BD0
	.align 2, 0
_080D6BC4: .4byte sub_080D6C0C
_080D6BC8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D6BD0:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D6BF6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D6BF6:
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

	thumb_func_start sub_080D6C0C
sub_080D6C0C: @ 0x080D6C0C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D6CA4
	adds r5, r3, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080D6C5C @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D6C60
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	b _080D6D24
	.align 2, 0
_080D6C5C: .4byte 0xFFFFF800
_080D6C60:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r2, r3, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _080D6D28
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r4, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _080D6CA0 @ =0xFFFFF800
	adds r0, r0, r4
	b _080D6D24
	.align 2, 0
_080D6CA0: .4byte 0xFFFFF800
_080D6CA4:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080D6CE8
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _080D6CE4 @ =0xFFFFF800
	adds r0, r0, r4
	b _080D6D24
	.align 2, 0
_080D6CE4: .4byte 0xFFFFF800
_080D6CE8:
	movs r0, #0x3e
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	ldr r2, _080D6D74 @ =0xFFFFF800
	adds r0, r0, r2
	adds r2, r3, #0
	adds r2, #0x62
	cmp r1, r0
	blt _080D6D28
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	mov r4, ip
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D6D24:
	subs r1, r1, r0
	str r1, [r3, #0x40]
_080D6D28:
	movs r6, #0x52
	adds r6, r6, r3
	mov ip, r6
	ldrh r0, [r6]
	subs r0, #0x6a
	movs r4, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080D6D46
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6]
_080D6D46:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrb r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _080D6D78
	adds r0, r3, #0
	adds r0, #0x50
	strh r4, [r0]
	mov r0, ip
	strh r4, [r0]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D6D78
	adds r0, r3, #0
	bl sub_080D78F0
	b _080D6D8A
	.align 2, 0
_080D6D74: .4byte 0xFFFFF800
_080D6D78:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D6D8A
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D6D8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D6D90
sub_080D6D90: @ 0x080D6D90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #9
	bne _080D6DD4
	ldr r2, _080D6DB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D6DB8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D6DBC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080D6DC0 @ =0x00005554
	cmp r2, r0
	bhi _080D6DC4
	movs r1, #0
	b _080D6DCE
	.align 2, 0
_080D6DB4: .4byte gRngVal
_080D6DB8: .4byte 0x00196225
_080D6DBC: .4byte 0x3C6EF35F
_080D6DC0: .4byte 0x00005554
_080D6DC4:
	ldr r0, _080D6E14 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080D6DCE
	movs r1, #1
_080D6DCE:
	adds r0, r4, #0
	bl sub_080D6E1C
_080D6DD4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D6E0C
	ldr r2, _080D6E18 @ =sub_080D5AB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
_080D6E0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D6E14: .4byte 0x0000AAA9
_080D6E18: .4byte sub_080D5AB0

	thumb_func_start sub_080D6E1C
sub_080D6E1C: @ 0x080D6E1C
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
	beq _080D6E40
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #8
	b _080D6E46
_080D6E40:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #8
_080D6E46:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #4
	mov ip, r0
	movs r4, #0
	ldr r1, _080D6E68 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D6E6C @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D6E84
	.align 2, 0
_080D6E68: .4byte gUnk_020229D4
_080D6E6C: .4byte gUnk_020229E0
_080D6E70:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D6E8C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D6E84:
	cmp r0, #0
	bne _080D6E70
	orrs r2, r3
	str r2, [r1]
_080D6E8C:
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
	movs r0, #0xb0
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

	thumb_func_start CreateBoxyBox
CreateBoxyBox: @ 0x080D6EF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D6F24 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D6F28 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D6F2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D6F34
	.align 2, 0
_080D6F24: .4byte ObjectMain
_080D6F28: .4byte ObjectDestroy
_080D6F2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D6F34:
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
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D7004 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	adds r0, r4, #0
	bl sub_080D7020
	ldr r1, _080D7008 @ =gUnk_02020EE0
	ldr r0, _080D700C @ =gUnk_0203AD3C
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
	bne _080D6FF8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D6FB8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D6FF8
_080D6FB8:
	ldr r1, _080D7010 @ =gUnk_08D60FA4
	ldr r5, _080D7014 @ =gSongTable
	ldr r2, _080D7018 @ =0x00000BA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D6FDE
	movs r1, #0xba
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D6FF8
_080D6FDE:
	cmp r3, #0
	beq _080D6FF0
	ldr r0, _080D701C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6FF8
_080D6FF0:
	movs r0, #0xba
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D6FF8:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D7004: .4byte sub_0809F840
_080D7008: .4byte gUnk_02020EE0
_080D700C: .4byte gUnk_0203AD3C
_080D7010: .4byte gUnk_08D60FA4
_080D7014: .4byte gSongTable
_080D7018: .4byte 0x00000BA4
_080D701C: .4byte gUnk_0203AD10

	thumb_func_start sub_080D7020
sub_080D7020: @ 0x080D7020
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D7054 @ =sub_080D712C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D7040
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D7040:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080D7072
	cmp r0, #1
	bgt _080D7058
	cmp r0, #0
	beq _080D705E
	b _080D709A
	.align 2, 0
_080D7054: .4byte sub_080D712C
_080D7058:
	cmp r0, #2
	beq _080D7086
	b _080D709A
_080D705E:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x88
	lsls r0, r0, #2
	b _080D7098
_080D7072:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x88
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xe0
	lsls r0, r0, #1
	b _080D7098
_080D7086:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
_080D7098:
	strh r0, [r1]
_080D709A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D70AE
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080D70AE:
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldr r0, _080D7128 @ =gCurLevelInfo
	mov ip, r0
	adds r3, r4, #0
	adds r3, #0xac
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xaa
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D7128: .4byte gCurLevelInfo

	thumb_func_start sub_080D712C
sub_080D712C: @ 0x080D712C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D71C0
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
	ldr r6, _080D7178 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D717C
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
	b _080D71FC
	.align 2, 0
_080D7178: .4byte 0xFFFFF800
_080D717C:
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
	bgt _080D7248
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
	ldr r2, _080D71BC @ =0xFFFFF800
	adds r0, r0, r2
	b _080D7244
	.align 2, 0
_080D71BC: .4byte 0xFFFFF800
_080D71C0:
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
	bgt _080D720C
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
	ldr r3, _080D7208 @ =0xFFFFF800
_080D71FC:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r5, r2, #0
	b _080D7248
	.align 2, 0
_080D7208: .4byte 0xFFFFF800
_080D720C:
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
	ldr r5, _080D7288 @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080D7248
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
_080D7244:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080D7248:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5]
	ands r1, r0
	cmp r1, #0
	beq _080D72E8
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	cmp r0, #0
	bne _080D728C
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	strh r0, [r1]
	movs r1, #1
	strb r1, [r3]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D72BC
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _080D72BC
	.align 2, 0
_080D7288: .4byte 0xFFFFF800
_080D728C:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080D72B4
	ldr r0, _080D72B0 @ =0x00002FFF
	cmp r2, r0
	ble _080D72C8
	b _080D72BC
	.align 2, 0
_080D72B0: .4byte 0x00002FFF
_080D72B4:
	subs r1, r1, r0
	ldr r0, _080D72D0 @ =0x00002FFF
	cmp r1, r0
	ble _080D72C8
_080D72BC:
	ldrh r0, [r4, #4]
	subs r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080D72D4
_080D72C8:
	adds r0, r4, #0
	bl sub_080D730C
	b _080D7304
	.align 2, 0
_080D72D0: .4byte 0x00002FFF
_080D72D4:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080D72E8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080D72E8:
	ldrb r1, [r5]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080D7304
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
_080D7304:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D730C
sub_080D730C: @ 0x080D730C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D73A4 @ =sub_080D73C8
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r2, #0xab
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _080D73A8 @ =gUnk_02020EE0
	ldr r0, _080D73AC @ =gUnk_0203AD3C
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
	bne _080D739C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D7360
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D739C
_080D7360:
	ldr r1, _080D73B0 @ =gUnk_08D60FA4
	ldr r4, _080D73B4 @ =gSongTable
	ldr r2, _080D73B8 @ =0x00000BAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D7384
	ldr r1, _080D73BC @ =0x00000BA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D739C
_080D7384:
	cmp r3, #0
	beq _080D7396
	ldr r0, _080D73C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D739C
_080D7396:
	ldr r0, _080D73C4 @ =0x00000175
	bl m4aSongNumStart
_080D739C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D73A4: .4byte sub_080D73C8
_080D73A8: .4byte gUnk_02020EE0
_080D73AC: .4byte gUnk_0203AD3C
_080D73B0: .4byte gUnk_08D60FA4
_080D73B4: .4byte gSongTable
_080D73B8: .4byte 0x00000BAC
_080D73BC: .4byte 0x00000BA8
_080D73C0: .4byte gUnk_0203AD10
_080D73C4: .4byte 0x00000175

	thumb_func_start sub_080D73C8
sub_080D73C8: @ 0x080D73C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x34
	beq _080D73DC
	b _080D775A
_080D73DC:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	ldr r1, _080D7400 @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080D7404 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080D7408 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _080D740C @ =0x00005554
	adds r6, r1, #0
	cmp r2, r0
	bhi _080D7410
	movs r3, #0
	b _080D741A
	.align 2, 0
_080D7400: .4byte gRngVal
_080D7404: .4byte 0x00196225
_080D7408: .4byte 0x3C6EF35F
_080D740C: .4byte 0x00005554
_080D7410:
	ldr r0, _080D742C @ =0x0000AAA9
	movs r3, #2
	cmp r2, r0
	bhi _080D741A
	movs r3, #1
_080D741A:
	cmp r3, #1
	bne _080D7420
	b _080D75E4
_080D7420:
	cmp r3, #1
	bgt _080D7430
	cmp r3, #0
	beq _080D7438
	b _080D775A
	.align 2, 0
_080D742C: .4byte 0x0000AAA9
_080D7430:
	cmp r3, #2
	bne _080D7436
	b _080D76CA
_080D7436:
	b _080D775A
_080D7438:
	adds r0, r4, #0
	adds r0, #0xb8
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bls _080D7458
	ldr r1, [r6]
	ldr r0, _080D7450 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080D7454 @ =0x3C6EF35F
	adds r0, r0, r7
	b _080D7462
	.align 2, 0
_080D7450: .4byte 0x00196225
_080D7454: .4byte 0x3C6EF35F
_080D7458:
	ldr r1, [r6]
	ldr r0, _080D7498 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D749C @ =0x3C6EF35F
	adds r0, r0, r1
_080D7462:
	str r0, [r6]
	ldr r1, [r6]
	ldr r0, _080D7498 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080D749C @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080D7554
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r4, #0
	ldr r1, _080D74A0 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D74A4 @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D74BC
	.align 2, 0
_080D7498: .4byte 0x00196225
_080D749C: .4byte 0x3C6EF35F
_080D74A0: .4byte gUnk_020229D4
_080D74A4: .4byte gUnk_020229E0
_080D74A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D74C4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D74BC:
	cmp r0, #0
	bne _080D74A8
	orrs r2, r3
	str r2, [r1]
_080D74C4:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x5e
	strb r0, [r1, #0xc]
	adds r7, r1, #0
	ldr r1, [r6]
	ldr r0, _080D7548 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D754C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r2, r0, #0x10
	movs r3, #0
	ldr r0, _080D7550 @ =0x00003333
	cmp r2, r0
	blt _080D7524
_080D7508:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bhi _080D7524
	adds r1, r3, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	cmp r2, r0
	bge _080D7508
_080D7524:
	movs r2, #0
	strb r3, [r7, #0xe]
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	strb r2, [r1, #0xf]
	movs r0, #2
	strb r0, [r1, #0x10]
	movs r0, #0
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r0, [r1, #0x11]
	b _080D75D2
	.align 2, 0
_080D7548: .4byte 0x00196225
_080D754C: .4byte 0x3C6EF35F
_080D7550: .4byte 0x00003333
_080D7554:
	movs r4, #0
	ldr r1, _080D756C @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D7570 @ =gUnk_020229E0
	mov r8, r6
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D7588
	.align 2, 0
_080D756C: .4byte gUnk_020229D4
_080D7570: .4byte gUnk_020229E0
_080D7574:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D7590
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D7588:
	cmp r0, #0
	bne _080D7574
	orrs r2, r3
	str r2, [r1]
_080D7590:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
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
	movs r0, #0x62
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	movs r0, #2
	strb r0, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
_080D75D2:
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	b _080D775A
_080D75E4:
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r0, [r2]
	cmp r0, #0
	bne _080D7690
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080D7690
	adds r6, r2, #0
	movs r4, #0
	ldr r1, _080D7618 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D761C @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D7634
	.align 2, 0
_080D7618: .4byte gUnk_020229D4
_080D761C: .4byte gUnk_020229E0
_080D7620:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D763C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D7634:
	cmp r0, #0
	bne _080D7620
	orrs r2, r3
	str r2, [r1]
_080D763C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x27
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	str r0, [r6]
	b _080D775A
_080D7690:
	movs r4, #0
	ldr r1, _080D76A8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D76AC @ =gUnk_020229E0
	mov r8, r6
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D76C4
	.align 2, 0
_080D76A8: .4byte gUnk_020229D4
_080D76AC: .4byte gUnk_020229E0
_080D76B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D7708
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D76C4:
	cmp r0, #0
	bne _080D76B0
	b _080D7704
_080D76CA:
	movs r4, #0
	ldr r1, _080D76E4 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D76E8 @ =gUnk_020229E0
	mov r8, r6
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D7700
	.align 2, 0
_080D76E4: .4byte gUnk_020229D4
_080D76E8: .4byte gUnk_020229E0
_080D76EC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D7708
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D7700:
	cmp r0, #0
	bne _080D76EC
_080D7704:
	orrs r2, r3
	str r2, [r1]
_080D7708:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
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
	movs r0, #0xad
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
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
	str r5, [r0, #0x70]
_080D775A:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D7770
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_080D7770:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D777C
sub_080D777C: @ 0x080D777C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D77B4 @ =sub_080D5AB0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D77B4: .4byte sub_080D5AB0

	thumb_func_start sub_080D77B8
sub_080D77B8: @ 0x080D77B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D77D8 @ =sub_080D571C
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
_080D77D8: .4byte sub_080D571C

	thumb_func_start sub_080D77DC
sub_080D77DC: @ 0x080D77DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D7818
	ldr r2, _080D7820 @ =sub_080D5AB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080D5930
_080D7818:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D7820: .4byte sub_080D5AB0

	thumb_func_start sub_080D7824
sub_080D7824: @ 0x080D7824
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D784C @ =sub_080D5F7C
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D7850
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D7858
	.align 2, 0
_080D784C: .4byte sub_080D5F7C
_080D7850:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D7858:
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
	beq _080D7872
	movs r0, #1
	b _080D7874
_080D7872:
	movs r0, #2
_080D7874:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D787C
sub_080D787C: @ 0x080D787C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D78A4 @ =sub_080D78D0
	movs r1, #6
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D78A8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D78B0
	.align 2, 0
_080D78A4: .4byte sub_080D78D0
_080D78A8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D78B0:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080D78CC @ =gUnk_083561CC
	adds r0, r4, #0
	bl sub_08088398
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D78CC: .4byte gUnk_083561CC

	thumb_func_start sub_080D78D0
sub_080D78D0: @ 0x080D78D0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D78EA
	adds r0, r2, #0
	bl sub_080D60B8
_080D78EA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D78F0
sub_080D78F0: @ 0x080D78F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D7910 @ =sub_080D7914
	movs r1, #0xb
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
_080D7910: .4byte sub_080D7914

	thumb_func_start sub_080D7914
sub_080D7914: @ 0x080D7914
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D7928
	adds r0, r2, #0
	bl sub_080D792C
_080D7928:
	pop {r0}
	bx r0

	thumb_func_start sub_080D792C
sub_080D792C: @ 0x080D792C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D7954 @ =sub_080D6D90
	movs r1, #0xc
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
_080D7954: .4byte sub_080D6D90

	thumb_func_start sub_080D7958
sub_080D7958: @ 0x080D7958
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldr r0, [r1]
	cmp r0, #0
	beq _080D7984
	ldr r0, [r2, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	ands r0, r2
	cmp r0, #0
	beq _080D7976
	movs r0, #0
	str r0, [r1]
_080D7976:
	ldr r0, [r1]
	ldr r0, [r0, #8]
	ands r0, r2
	cmp r0, #0
	beq _080D7984
	movs r0, #0
	str r0, [r1]
_080D7984:
	pop {r0}
	bx r0
