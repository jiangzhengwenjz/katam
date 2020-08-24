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
	ldr r4, _080D5914 @ =gUnk_02023530
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
_080D5914: .4byte gUnk_02023530
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

	thumb_func_start sub_080D6EF0
sub_080D6EF0: @ 0x080D6EF0
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
	ldr r0, _080D7128 @ =gUnk_02023530
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
_080D7128: .4byte gUnk_02023530

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

	thumb_func_start CreateBombar
CreateBombar: @ 0x080D7988
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080D79BC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D79C0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D79C4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D79CC
	.align 2, 0
_080D79BC: .4byte ObjectMain
_080D79C0: .4byte ObjectDestroy
_080D79C4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D79CC:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	ldr r0, [r6, #0xc]
	movs r1, #4
	orrs r0, r1
	movs r3, #1
	orrs r0, r3
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x5c]
	subs r1, #0xc
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D7A1C
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080D7A1E
_080D7A1C:
	orrs r2, r3
_080D7A1E:
	str r2, [r6, #8]
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #0x14
	bl sub_0803E2B0
	movs r1, #8
	rsbs r1, r1, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #8
	movs r3, #8
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080D9F54
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080D7A6C
sub_080D7A6C: @ 0x080D7A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	mov sl, r1
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D7A9E
	b _080D7C2E
_080D7A9E:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080D7AB2
	b _080D7C2E
_080D7AB2:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r3, #0xb0
	adds r3, r3, r5
	mov r8, r3
	ldr r4, [r3]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D7AE2
	b _080D7C2E
_080D7AE2:
	ldr r4, _080D7C40 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080D7C44 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_080D9E94
	movs r0, #0x5a
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080D7B6A
	movs r0, #0
	strb r0, [r1, #9]
_080D7B6A:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080D7C48 @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080D7C2E
	ldr r0, _080D7C4C @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080D7C2E
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080D7C2E
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080D7BEC
	movs r4, #1
_080D7BB4:
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
	bls _080D7BB4
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080D7BEC:
	ldr r1, _080D7C4C @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080D7C50 @ =gUnk_02020EE0
	ldr r0, _080D7C54 @ =gUnk_0203AD3C
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
	bne _080D7C2E
	ldr r0, _080D7C58 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080D7C2E
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080D7C2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D7C40: .4byte gUnk_02023530
_080D7C44: .4byte 0xFFFFFDFF
_080D7C48: .4byte 0x0000065E
_080D7C4C: .4byte gUnk_08352D80
_080D7C50: .4byte gUnk_02020EE0
_080D7C54: .4byte gUnk_0203AD3C
_080D7C58: .4byte gUnk_0203AD20

	thumb_func_start sub_080D7C5C
sub_080D7C5C: @ 0x080D7C5C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #1
	bls _080D7C90
	ldr r2, _080D7C84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D7C88 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D7C8C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D7D08
	b _080D7D14
	.align 2, 0
_080D7C84: .4byte gRngVal
_080D7C88: .4byte 0x00196225
_080D7C8C: .4byte 0x3C6EF35F
_080D7C90:
	adds r0, #1
	strb r0, [r1]
	ldr r5, _080D7CC8 @ =gRngVal
	ldr r0, [r5]
	ldr r3, _080D7CCC @ =0x00196225
	muls r0, r3, r0
	ldr r6, _080D7CD0 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D7CF4
	adds r0, r2, #0
	muls r0, r3, r0
	adds r1, r0, r6
	str r1, [r5]
	lsrs r0, r1, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080D7CD4
	adds r0, r4, #0
	bl sub_080DA00C
	b _080D7D22
	.align 2, 0
_080D7CC8: .4byte gRngVal
_080D7CCC: .4byte 0x00196225
_080D7CD0: .4byte 0x3C6EF35F
_080D7CD4:
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080D7CEC
	adds r0, r4, #0
	bl sub_080D9F84
	b _080D7D22
_080D7CEC:
	adds r0, r4, #0
	bl sub_080D9FC8
	b _080D7D22
_080D7CF4:
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r2, _080D7D10 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D7D14
_080D7D08:
	adds r0, r4, #0
	bl sub_080DA070
	b _080D7D1A
	.align 2, 0
_080D7D10: .4byte 0x3C6EF35F
_080D7D14:
	adds r0, r4, #0
	bl sub_080D923C
_080D7D1A:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_080D7D22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D7D28
sub_080D7D28: @ 0x080D7D28
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D7D50
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7D60
	b _080D7D5C
_080D7D50:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7D60
_080D7D5C:
	movs r0, #0
	strh r0, [r1]
_080D7D60:
	adds r0, r2, #0
	adds r0, #0x52
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D7D7E
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7D8E
	b _080D7D8A
_080D7D7E:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7D8E
_080D7D8A:
	movs r0, #0
	strh r0, [r4]
_080D7D8E:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D7DA2
	adds r0, r2, #0
	bl sub_080D7C5C
	b _080D7DC0
_080D7DA2:
	ldr r3, _080D7DC8 @ =gUnk_08356380
	adds r2, #0x9e
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D7DC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D7DC8: .4byte gUnk_08356380

	thumb_func_start sub_080D7DCC
sub_080D7DCC: @ 0x080D7DCC
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r1, _080D7E18 @ =0xFFFFF800
	ands r3, r1
	mov r0, ip
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D7E1C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D7E6C
	strh r2, [r4]
	b _080D7E6C
	.align 2, 0
_080D7E18: .4byte 0xFFFFF800
_080D7E1C:
	cmp r3, r0
	bge _080D7E40
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D7E3C @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D7E6C
	strh r2, [r4]
	b _080D7E6C
	.align 2, 0
_080D7E3C: .4byte 0xFFFFFEC0
_080D7E40:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D7E5E
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7E6C
	b _080D7E6A
_080D7E5E:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7E6C
_080D7E6A:
	strh r5, [r4]
_080D7E6C:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D7E98 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D7E9C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D7ED4
	.align 2, 0
_080D7E98: .4byte 0xFFFFF800
_080D7E9C:
	cmp r3, r0
	ble _080D7EF8
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D7ED4
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D7ED0 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D7ECC
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D7F24
_080D7ECC:
	strh r2, [r1]
	b _080D7F24
	.align 2, 0
_080D7ED0: .4byte 0xFFFFFEC0
_080D7ED4:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D7ECC
	ldr r2, _080D7EF4 @ =0xFFFFFEC0
	cmp r0, r2
	bge _080D7F24
	b _080D7ECC
	.align 2, 0
_080D7EF4: .4byte 0xFFFFFEC0
_080D7EF8:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D7F14
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7F24
	b _080D7F20
_080D7F14:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7F24
_080D7F20:
	movs r0, #0
	strh r0, [r1]
_080D7F24:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D7F40
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D7F4A
_080D7F40:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D7F4A:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x1f
	ble _080D7F5A
	mov r1, ip
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_080D7F5A:
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080D7F6E
	mov r1, ip
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
_080D7F6E:
	ldrh r0, [r4]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _080D7F82
	mov r1, ip
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
_080D7F82:
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r5, ip
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D7F98
	cmp r2, #0xf
	ble _080D7F9E
	b _080D7FC6
_080D7F98:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D7FC6
_080D7F9E:
	mov r0, ip
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r3, ip
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D7FB8
	cmp r1, #0xf
	ble _080D7FBE
	b _080D7FC6
_080D7FB8:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D7FC6
_080D7FBE:
	mov r0, ip
	bl sub_080D7C5C
	b _080D7FE6
_080D7FC6:
	ldr r2, _080D7FEC @ =gUnk_08356380
	mov r5, ip
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080D7FE6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D7FEC: .4byte gUnk_08356380

	thumb_func_start sub_080D7FF0
sub_080D7FF0: @ 0x080D7FF0
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x87
	ldrb r5, [r0]
	cmp r5, #0
	bne _080D800A
	b _080D815C
_080D800A:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r2, _080D8048 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D804C
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D809C
	strh r2, [r4]
	b _080D809C
	.align 2, 0
_080D8048: .4byte 0xFFFFF800
_080D804C:
	cmp r3, r0
	bge _080D8070
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D806C @ =0xFFFFFE40
	adds r4, r1, #0
	cmp r0, r2
	bge _080D809C
	strh r2, [r4]
	b _080D809C
	.align 2, 0
_080D806C: .4byte 0xFFFFFE40
_080D8070:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D808E
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D809C
	b _080D809A
_080D808E:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D809C
_080D809A:
	strh r5, [r4]
_080D809C:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D80E0 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D80E8
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D80DC
	b _080D824C
_080D80DC:
	ldr r2, _080D80E4 @ =0xFFFFFE40
	b _080D826C
	.align 2, 0
_080D80E0: .4byte 0xFFFFF800
_080D80E4: .4byte 0xFFFFFE40
_080D80E8:
	cmp r3, r0
	ble _080D813C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D811C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8118 @ =0xFFFFFE40
	cmp r0, r2
	bge _080D8112
	b _080D824C
_080D8112:
	movs r2, #0xe0
	lsls r2, r2, #1
	b _080D8248
	.align 2, 0
_080D8118: .4byte 0xFFFFFE40
_080D811C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8134
	b _080D824C
_080D8134:
	ldr r2, _080D8138 @ =0xFFFFFE40
	b _080D826C
	.align 2, 0
_080D8138: .4byte 0xFFFFFE40
_080D813C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080D814C
	b _080D8294
_080D814C:
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D815A
	b _080D82A4
_080D815A:
	b _080D82A0
_080D815C:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r4, ip
	ldr r3, [r4, #0x44]
	ldr r2, _080D8198 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D819C
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D81EC
	strh r2, [r4]
	b _080D81EC
	.align 2, 0
_080D8198: .4byte 0xFFFFF800
_080D819C:
	cmp r3, r0
	bge _080D81C0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D81BC @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D81EC
	strh r2, [r4]
	b _080D81EC
	.align 2, 0
_080D81BC: .4byte 0xFFFFFEC0
_080D81C0:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D81DE
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D81EC
	b _080D81EA
_080D81DE:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D81EC
_080D81EA:
	strh r5, [r4]
_080D81EC:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D8218 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D821C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8254
	.align 2, 0
_080D8218: .4byte 0xFFFFF800
_080D821C:
	cmp r3, r0
	ble _080D8278
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8254
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8250 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D824C
	movs r2, #0xa0
	lsls r2, r2, #1
_080D8248:
	cmp r0, r2
	ble _080D82A4
_080D824C:
	strh r2, [r1]
	b _080D82A4
	.align 2, 0
_080D8250: .4byte 0xFFFFFEC0
_080D8254:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D824C
	ldr r2, _080D8274 @ =0xFFFFFEC0
_080D826C:
	cmp r0, r2
	bge _080D82A4
	b _080D824C
	.align 2, 0
_080D8274: .4byte 0xFFFFFEC0
_080D8278:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8294
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D82A4
	b _080D82A0
_080D8294:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D82A4
_080D82A0:
	movs r0, #0
	strh r0, [r1]
_080D82A4:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D82C0
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D82CA
_080D82C0:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D82CA:
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D82E0
	cmp r2, #9
	ble _080D82E6
	b _080D830A
_080D82E0:
	subs r0, r0, r1
	cmp r0, #9
	bgt _080D830A
_080D82E6:
	movs r3, #0
	ldrsh r1, [r6, r3]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D82FC
	cmp r2, #9
	ble _080D8302
	b _080D830A
_080D82FC:
	subs r0, r0, r1
	cmp r0, #9
	bgt _080D830A
_080D8302:
	mov r0, ip
	bl sub_080DA050
	b _080D832C
_080D830A:
	ldr r2, _080D8334 @ =gUnk_08356380
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	mov r3, ip
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_080D832C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D8334: .4byte gUnk_08356380

	thumb_func_start sub_080D8338
sub_080D8338: @ 0x080D8338
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bgt _080D834E
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080D834E:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r1, _080D838C @ =0xFFFFF800
	ands r3, r1
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080D8390
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D83E0
	strh r2, [r4]
	b _080D83E0
	.align 2, 0
_080D838C: .4byte 0xFFFFF800
_080D8390:
	cmp r3, r2
	bge _080D83B4
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D83B0 @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D83E0
	strh r2, [r4]
	b _080D83E0
	.align 2, 0
_080D83B0: .4byte 0xFFFFFEC0
_080D83B4:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D83D2
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D83E0
	b _080D83DE
_080D83D2:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D83E0
_080D83DE:
	strh r5, [r4]
_080D83E0:
	mov r0, ip
	ldr r3, [r0, #0x40]
	ldr r0, _080D8408 @ =0xFFFFF800
	ands r3, r0
	mov r1, ip
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080D840C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080D8448
	.align 2, 0
_080D8408: .4byte 0xFFFFF800
_080D840C:
	cmp r3, r2
	ble _080D846C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8448
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8444 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D843E
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8498
_080D843E:
	strh r2, [r1]
	b _080D8498
	.align 2, 0
_080D8444: .4byte 0xFFFFFEC0
_080D8448:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D843E
	ldr r2, _080D8468 @ =0xFFFFFEC0
	cmp r0, r2
	bge _080D8498
	b _080D843E
	.align 2, 0
_080D8468: .4byte 0xFFFFFEC0
_080D846C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8488
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8498
	b _080D8494
_080D8488:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8498
_080D8494:
	movs r0, #0
	strh r0, [r1]
_080D8498:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D84B4
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D84BE
_080D84B4:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D84BE:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D84E2
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080D84E2
	mov r0, ip
	bl sub_080D850C
	b _080D8502
_080D84E2:
	ldr r3, _080D8508 @ =gUnk_08356380
	mov r2, ip
	adds r2, #0x9f
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D8502:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D8508: .4byte gUnk_08356380

	thumb_func_start sub_080D850C
sub_080D850C: @ 0x080D850C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D85A0 @ =sub_080D85BC
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
	ldr r1, _080D85A4 @ =gUnk_02020EE0
	ldr r0, _080D85A8 @ =gUnk_0203AD3C
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
	bne _080D8598
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D8558
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D8598
_080D8558:
	ldr r1, _080D85AC @ =gUnk_08D60FA4
	ldr r4, _080D85B0 @ =gSongTable
	ldr r2, _080D85B4 @ =0x00000BD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D857E
	movs r1, #0xbd
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D8598
_080D857E:
	cmp r3, #0
	beq _080D8590
	ldr r0, _080D85B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D8598
_080D8590:
	movs r0, #0xbd
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D8598:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D85A0: .4byte sub_080D85BC
_080D85A4: .4byte gUnk_02020EE0
_080D85A8: .4byte gUnk_0203AD3C
_080D85AC: .4byte gUnk_08D60FA4
_080D85B0: .4byte gSongTable
_080D85B4: .4byte 0x00000BD4
_080D85B8: .4byte gUnk_0203AD10

	thumb_func_start sub_080D85BC
sub_080D85BC: @ 0x080D85BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D85DA
	b _080D8790
_080D85DA:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080D86AC @ =gUnk_083562D8
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080D86DC
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
	bne _080D8610
	subs r0, r1, #1
	strb r0, [r3]
_080D8610:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080D8636
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080D8636:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080D86B0
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
	mov ip, r0
	ldrh r2, [r1]
	mov sb, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r8, r0
	mov r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov ip, r0
	cmp r8, ip
	beq _080D867C
	mov r2, sb
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D867C
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r5]
_080D867C:
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, r0
	beq _080D86DC
	mov r0, r8
	strh r0, [r2]
	b _080D86DC
	.align 2, 0
_080D86AC: .4byte gUnk_083562D8
_080D86B0:
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
	beq _080D86FA
	rsbs r0, r2, #0
	strh r0, [r5]
_080D86DC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D86FA
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080D870C
_080D86FA:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080D870C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r7]
	subs r2, r0, #1
	strb r2, [r7]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080D8740
	b _080D8944
_080D8740:
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _080D8748
	b _080D8944
_080D8748:
	ldr r2, _080D8784 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D877E
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D8788 @ =gUnk_08351530
	ldr r0, _080D878C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	ble _080D877E
	b _080D8940
_080D877E:
	movs r0, #0x18
	b _080D8942
	.align 2, 0
_080D8784: .4byte sub_080D7D28
_080D8788: .4byte gUnk_08351530
_080D878C: .4byte gUnk_0203AD30
_080D8790:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	ldr r6, _080D8864 @ =gUnk_08356278
	cmp r1, #0
	bne _080D8894
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
	bne _080D87C6
	subs r0, r1, #1
	strb r0, [r3]
_080D87C6:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080D87EC
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080D87EC:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080D8868
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
	mov r8, r0
	ldrh r2, [r1]
	mov sb, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov ip, r0
	mov r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r8, r0
	cmp ip, r8
	beq _080D8832
	mov r2, sb
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D8832
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r5]
_080D8832:
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, r0
	beq _080D8894
	mov r0, r8
	strh r0, [r2]
	b _080D8894
	.align 2, 0
_080D8864: .4byte gUnk_08356278
_080D8868:
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
	beq _080D88B2
	rsbs r0, r2, #0
	strh r0, [r5]
_080D8894:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D88B2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080D88C4
_080D88B2:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080D88C4:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r7]
	subs r2, r0, #1
	strb r2, [r7]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080D8944
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080D8944
	ldr r2, _080D8934 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D8930
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D8938 @ =gUnk_08351530
	ldr r0, _080D893C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D8940
_080D8930:
	movs r0, #0x18
	b _080D8942
	.align 2, 0
_080D8934: .4byte sub_080D7D28
_080D8938: .4byte gUnk_08351530
_080D893C: .4byte gUnk_0203AD30
_080D8940:
	movs r0, #0x30
_080D8942:
	strh r0, [r4, #4]
_080D8944:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D8950
sub_080D8950: @ 0x080D8950
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x87
	ldrb r5, [r0]
	cmp r5, #0
	bne _080D896A
	b _080D8ABC
_080D896A:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r2, _080D89A8 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D89AC
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D89FC
	strh r2, [r4]
	b _080D89FC
	.align 2, 0
_080D89A8: .4byte 0xFFFFF800
_080D89AC:
	cmp r3, r0
	bge _080D89D0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D89CC @ =0xFFFFFE40
	adds r4, r1, #0
	cmp r0, r2
	bge _080D89FC
	strh r2, [r4]
	b _080D89FC
	.align 2, 0
_080D89CC: .4byte 0xFFFFFE40
_080D89D0:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D89EE
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D89FC
	b _080D89FA
_080D89EE:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D89FC
_080D89FA:
	strh r5, [r4]
_080D89FC:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D8A40 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D8A48
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8A3C
	b _080D8BAC
_080D8A3C:
	ldr r2, _080D8A44 @ =0xFFFFFE40
	b _080D8BCC
	.align 2, 0
_080D8A40: .4byte 0xFFFFF800
_080D8A44: .4byte 0xFFFFFE40
_080D8A48:
	cmp r3, r0
	ble _080D8A9C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8A7C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8A78 @ =0xFFFFFE40
	cmp r0, r2
	bge _080D8A72
	b _080D8BAC
_080D8A72:
	movs r2, #0xe0
	lsls r2, r2, #1
	b _080D8BA8
	.align 2, 0
_080D8A78: .4byte 0xFFFFFE40
_080D8A7C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8A94
	b _080D8BAC
_080D8A94:
	ldr r2, _080D8A98 @ =0xFFFFFE40
	b _080D8BCC
	.align 2, 0
_080D8A98: .4byte 0xFFFFFE40
_080D8A9C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080D8AAC
	b _080D8BF4
_080D8AAC:
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D8ABA
	b _080D8C04
_080D8ABA:
	b _080D8C00
_080D8ABC:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r4, ip
	ldr r3, [r4, #0x44]
	ldr r2, _080D8AF8 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D8AFC
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D8B4C
	strh r2, [r4]
	b _080D8B4C
	.align 2, 0
_080D8AF8: .4byte 0xFFFFF800
_080D8AFC:
	cmp r3, r0
	bge _080D8B20
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8B1C @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D8B4C
	strh r2, [r4]
	b _080D8B4C
	.align 2, 0
_080D8B1C: .4byte 0xFFFFFEC0
_080D8B20:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D8B3E
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8B4C
	b _080D8B4A
_080D8B3E:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8B4C
_080D8B4A:
	strh r5, [r4]
_080D8B4C:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D8B78 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D8B7C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8BB4
	.align 2, 0
_080D8B78: .4byte 0xFFFFF800
_080D8B7C:
	cmp r3, r0
	ble _080D8BD8
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8BB4
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8BB0 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D8BAC
	movs r2, #0xa0
	lsls r2, r2, #1
_080D8BA8:
	cmp r0, r2
	ble _080D8C04
_080D8BAC:
	strh r2, [r1]
	b _080D8C04
	.align 2, 0
_080D8BB0: .4byte 0xFFFFFEC0
_080D8BB4:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D8BAC
	ldr r2, _080D8BD4 @ =0xFFFFFEC0
_080D8BCC:
	cmp r0, r2
	bge _080D8C04
	b _080D8BAC
	.align 2, 0
_080D8BD4: .4byte 0xFFFFFEC0
_080D8BD8:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8BF4
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8C04
	b _080D8C00
_080D8BF4:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8C04
_080D8C00:
	movs r0, #0
	strh r0, [r1]
_080D8C04:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D8C20
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8C2A
_080D8C20:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D8C2A:
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D8C40
	cmp r2, #0xf
	ble _080D8C46
	b _080D8C6A
_080D8C40:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D8C6A
_080D8C46:
	movs r3, #0
	ldrsh r1, [r6, r3]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D8C5C
	cmp r2, #0xf
	ble _080D8C62
	b _080D8C6A
_080D8C5C:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D8C6A
_080D8C62:
	mov r0, ip
	bl sub_080DA09C
	b _080D8C8C
_080D8C6A:
	ldr r2, _080D8C94 @ =gUnk_08356380
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	mov r3, ip
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_080D8C8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D8C94: .4byte gUnk_08356380

	thumb_func_start sub_080D8C98
sub_080D8C98: @ 0x080D8C98
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bgt _080D8CAE
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080D8CAE:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r1, _080D8CEC @ =0xFFFFF800
	ands r3, r1
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080D8CF0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D8D40
	strh r2, [r4]
	b _080D8D40
	.align 2, 0
_080D8CEC: .4byte 0xFFFFF800
_080D8CF0:
	cmp r3, r2
	bge _080D8D14
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8D10 @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D8D40
	strh r2, [r4]
	b _080D8D40
	.align 2, 0
_080D8D10: .4byte 0xFFFFFEC0
_080D8D14:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D8D32
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8D40
	b _080D8D3E
_080D8D32:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8D40
_080D8D3E:
	strh r5, [r4]
_080D8D40:
	mov r0, ip
	ldr r3, [r0, #0x40]
	ldr r0, _080D8D68 @ =0xFFFFF800
	ands r3, r0
	mov r1, ip
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080D8D6C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080D8DA8
	.align 2, 0
_080D8D68: .4byte 0xFFFFF800
_080D8D6C:
	cmp r3, r2
	ble _080D8DCC
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8DA8
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8DA4 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D8D9E
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8DF8
_080D8D9E:
	strh r2, [r1]
	b _080D8DF8
	.align 2, 0
_080D8DA4: .4byte 0xFFFFFEC0
_080D8DA8:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D8D9E
	ldr r2, _080D8DC8 @ =0xFFFFFEC0
	cmp r0, r2
	bge _080D8DF8
	b _080D8D9E
	.align 2, 0
_080D8DC8: .4byte 0xFFFFFEC0
_080D8DCC:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8DE8
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8DF8
	b _080D8DF4
_080D8DE8:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8DF8
_080D8DF4:
	movs r0, #0
	strh r0, [r1]
_080D8DF8:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D8E14
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8E1E
_080D8E14:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D8E1E:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D8E42
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080D8E42
	mov r0, ip
	bl sub_080D8E6C
	b _080D8E62
_080D8E42:
	ldr r3, _080D8E68 @ =gUnk_08356380
	mov r2, ip
	adds r2, #0x9f
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D8E62:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D8E68: .4byte gUnk_08356380

	thumb_func_start sub_080D8E6C
sub_080D8E6C: @ 0x080D8E6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D8E8C @ =sub_080D8F34
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D8E90
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080D8E98
	.align 2, 0
_080D8E8C: .4byte sub_080D8F34
_080D8E90:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080D8E98:
	strh r0, [r1]
	adds r3, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080D8EE4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D8EE8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D8EEC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #1
	ands r2, r1
	movs r0, #0x9e
	adds r0, r0, r4
	mov ip, r0
	strb r2, [r0]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8EFC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D8EF0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	subs r0, #0x24
	b _080D8F16
	.align 2, 0
_080D8EE4: .4byte gRngVal
_080D8EE8: .4byte 0x00196225
_080D8EEC: .4byte 0x3C6EF35F
_080D8EF0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	subs r0, #0x30
	b _080D8F16
_080D8EFC:
	cmp r2, #0
	beq _080D8F0C
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, #0x24
	b _080D8F16
_080D8F0C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, #0x30
_080D8F16:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D8F34
sub_080D8F34: @ 0x080D8F34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D8FB8
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bls _080D8F5E
	adds r0, #0x19
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D8F6C
_080D8F5E:
	cmp r1, #3
	bls _080D8FB8
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D8FB8
_080D8F6C:
	movs r0, #0
	strb r0, [r2]
	ldr r2, _080D8FA8 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D8FA4
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D8FAC @ =gUnk_08351530
	ldr r0, _080D8FB0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D8FB4
_080D8FA4:
	movs r0, #0x18
	b _080D9230
	.align 2, 0
_080D8FA8: .4byte sub_080D7D28
_080D8FAC: .4byte gUnk_08351530
_080D8FB0: .4byte gUnk_0203AD30
_080D8FB4:
	movs r0, #0x30
	b _080D9230
_080D8FB8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D90B4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r7, r4, #0
	adds r7, #0x83
	adds r5, r1, #0
	cmp r2, r0
	ble _080D8FE6
	b _080D91A0
_080D8FE6:
	subs r1, #0x1b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080D95A4
	ldr r1, _080D906C @ =gUnk_02020EE0
	ldr r0, _080D9070 @ =gUnk_0203AD3C
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
	bne _080D905C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D9020
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D905C
_080D9020:
	ldr r1, _080D9074 @ =gUnk_08D60FA4
	ldr r6, _080D9078 @ =gSongTable
	ldr r2, _080D907C @ =0x00000CDC
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D9044
	ldr r1, _080D9080 @ =0x00000CD8
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D905C
_080D9044:
	cmp r3, #0
	beq _080D9056
	ldr r0, _080D9084 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D905C
_080D9056:
	ldr r0, _080D9088 @ =0x0000019B
	bl m4aSongNumStart
_080D905C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D908C
	ldrh r0, [r5]
	adds r0, #0x24
	b _080D9090
	.align 2, 0
_080D906C: .4byte gUnk_02020EE0
_080D9070: .4byte gUnk_0203AD3C
_080D9074: .4byte gUnk_08D60FA4
_080D9078: .4byte gSongTable
_080D907C: .4byte 0x00000CDC
_080D9080: .4byte 0x00000CD8
_080D9084: .4byte gUnk_0203AD10
_080D9088: .4byte 0x0000019B
_080D908C:
	ldrh r0, [r5]
	adds r0, #0x30
_080D9090:
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x83
	movs r0, #7
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	adds r7, r2, #0
	b _080D91A0
_080D90B4:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _080D91A0
	adds r0, #0x1d
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	adds r5, r0, #0
	cmp r2, r1
	blt _080D91A0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080D9160 @ =gUnk_02020EE0
	ldr r0, _080D9164 @ =gUnk_0203AD3C
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
	bne _080D914A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D910E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D914A
_080D910E:
	ldr r1, _080D9168 @ =gUnk_08D60FA4
	ldr r6, _080D916C @ =gSongTable
	ldr r2, _080D9170 @ =0x00000CDC
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D9132
	ldr r1, _080D9174 @ =0x00000CD8
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D914A
_080D9132:
	cmp r3, #0
	beq _080D9144
	ldr r0, _080D9178 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D914A
_080D9144:
	ldr r0, _080D917C @ =0x0000019B
	bl m4aSongNumStart
_080D914A:
	adds r0, r4, #0
	bl sub_080D95A4
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D9180
	ldrh r0, [r5]
	subs r0, #0x24
	b _080D9184
	.align 2, 0
_080D9160: .4byte gUnk_02020EE0
_080D9164: .4byte gUnk_0203AD3C
_080D9168: .4byte gUnk_08D60FA4
_080D916C: .4byte gSongTable
_080D9170: .4byte 0x00000CDC
_080D9174: .4byte 0x00000CD8
_080D9178: .4byte gUnk_0203AD10
_080D917C: .4byte 0x0000019B
_080D9180:
	ldrh r0, [r5]
	subs r0, #0x30
_080D9184:
	strh r0, [r5]
	movs r0, #7
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
_080D91A0:
	ldrb r0, [r7]
	cmp r0, #7
	bne _080D9210
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D91CE
	ldr r2, _080D91F0 @ =gUnk_083563A0
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
_080D91CE:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D9210
	movs r0, #0
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D91F4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080D91FC
	.align 2, 0
_080D91F0: .4byte gUnk_083563A0
_080D91F4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080D91FC:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D9210
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D9210:
	adds r3, r4, #0
	adds r3, #0x52
	ldr r2, _080D9238 @ =gUnk_08356380
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	ldrh r0, [r4, #4]
	adds r0, #1
_080D9230:
	strh r0, [r4, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D9238: .4byte gUnk_08356380

	thumb_func_start sub_080D923C
sub_080D923C: @ 0x080D923C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D92DC @ =sub_080D92F8
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xff
	lsls r3, r3, #8
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D926A
	rsbs r0, r3, #0
	strh r0, [r2]
_080D926A:
	ldr r1, _080D92E0 @ =gUnk_02020EE0
	ldr r0, _080D92E4 @ =gUnk_0203AD3C
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
	bne _080D92D6
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D9296
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D92D6
_080D9296:
	ldr r1, _080D92E8 @ =gUnk_08D60FA4
	ldr r4, _080D92EC @ =gSongTable
	ldr r2, _080D92F0 @ =0x00000BC4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D92BC
	movs r1, #0xbc
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D92D6
_080D92BC:
	cmp r3, #0
	beq _080D92CE
	ldr r0, _080D92F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D92D6
_080D92CE:
	movs r0, #0xbc
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D92D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D92DC: .4byte sub_080D92F8
_080D92E0: .4byte gUnk_02020EE0
_080D92E4: .4byte gUnk_0203AD3C
_080D92E8: .4byte gUnk_08D60FA4
_080D92EC: .4byte gSongTable
_080D92F0: .4byte 0x00000BC4
_080D92F4: .4byte gUnk_0203AD10

	thumb_func_start sub_080D92F8
sub_080D92F8: @ 0x080D92F8
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D9310
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D9316
_080D9310:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080D9316:
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D9334
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9344
	b _080D9340
_080D9334:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9344
_080D9340:
	movs r0, #0
	strh r0, [r1]
_080D9344:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D9360
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9370
	b _080D936C
_080D9360:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9370
_080D936C:
	movs r0, #0
	strh r0, [r1]
_080D9370:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D9380
	adds r0, r2, #0
	bl sub_080DA0BC
_080D9380:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9388
sub_080D9388: @ 0x080D9388
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D93A0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D93A6
_080D93A0:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D93A6:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D93C4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D93D4
	b _080D93D0
_080D93C4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D93D4
_080D93D0:
	movs r0, #0
	strh r0, [r1]
_080D93D4:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D93F2
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9402
	b _080D93FE
_080D93F2:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9402
_080D93FE:
	movs r0, #0
	strh r0, [r6]
_080D9402:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #6
	beq _080D9410
	b _080D9556
_080D9410:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _080D94B4
	ldr r2, _080D9438 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D943C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D9440 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D9444
	adds r0, r4, #0
	movs r1, #0
	bl sub_080D9764
	b _080D944C
	.align 2, 0
_080D9438: .4byte gRngVal
_080D943C: .4byte 0x00196225
_080D9440: .4byte 0x3C6EF35F
_080D9444:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080D9764
_080D944C:
	ldr r1, _080D9520 @ =gUnk_02020EE0
	ldr r0, _080D9524 @ =gUnk_0203AD3C
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
	bne _080D94B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D9478
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D94B4
_080D9478:
	ldr r1, _080D9528 @ =gUnk_08D60FA4
	ldr r5, _080D952C @ =gSongTable
	ldr r2, _080D9530 @ =0x00000BCC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D949C
	ldr r1, _080D9534 @ =0x00000BC8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D94B4
_080D949C:
	cmp r3, #0
	beq _080D94AE
	ldr r0, _080D9538 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D94B4
_080D94AE:
	ldr r0, _080D953C @ =0x00000179
	bl m4aSongNumStart
_080D94B4:
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D94DC
	ldr r2, _080D9540 @ =gUnk_083563A0
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
_080D94DC:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D955E
	ldr r2, _080D9544 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D951A
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D9548 @ =gUnk_08351530
	ldr r0, _080D954C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D9550
_080D951A:
	movs r0, #0x18
	strh r0, [r4, #4]
	b _080D9598
	.align 2, 0
_080D9520: .4byte gUnk_02020EE0
_080D9524: .4byte gUnk_0203AD3C
_080D9528: .4byte gUnk_08D60FA4
_080D952C: .4byte gSongTable
_080D9530: .4byte 0x00000BCC
_080D9534: .4byte 0x00000BC8
_080D9538: .4byte gUnk_0203AD10
_080D953C: .4byte 0x00000179
_080D9540: .4byte gUnk_083563A0
_080D9544: .4byte sub_080D7D28
_080D9548: .4byte gUnk_08351530
_080D954C: .4byte gUnk_0203AD30
_080D9550:
	movs r0, #0x30
	strh r0, [r4, #4]
	b _080D9598
_080D9556:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080D955E:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D9578
	movs r0, #6
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080D9578:
	ldr r3, _080D95A0 @ =gUnk_08356380
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D9598:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D95A0: .4byte gUnk_08356380

	thumb_func_start sub_080D95A4
sub_080D95A4: @ 0x080D95A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080D95D8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D95DC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D95F4
	.align 2, 0
_080D95D8: .4byte gUnk_020229D4
_080D95DC: .4byte gUnk_020229E0
_080D95E0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D95FC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D95F4:
	cmp r0, #0
	bne _080D95E0
	orrs r2, r3
	str r2, [r1]
_080D95FC:
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
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb2
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D965C
sub_080D965C: @ 0x080D965C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D9690 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D9694 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D9698
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D96A0
	.align 2, 0
_080D9690: .4byte ObjectMain
_080D9694: .4byte ObjectDestroy
_080D9698:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D96A0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D9704 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080D9EE8
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D9704: .4byte sub_0809F840

	thumb_func_start sub_080D9708
sub_080D9708: @ 0x080D9708
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
	beq _080D9730
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080D9730:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D974C
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D975C
	b _080D9758
_080D974C:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D975C
_080D9758:
	movs r0, #0
	strh r0, [r1]
_080D975C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9764
sub_080D9764: @ 0x080D9764
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
	beq _080D978A
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0xc
	b _080D9792
_080D978A:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0xc
_080D9792:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0xa
	mov sl, r0
	movs r4, #0
	ldr r1, _080D97B0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D97C8
	.align 2, 0
_080D97B0: .4byte gUnk_020229D4
_080D97B4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D97D0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D97C8:
	cmp r0, #0
	bne _080D97B4
	orrs r2, r3
	str r2, [r1]
_080D97D0:
	ldr r0, _080D9840 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sl
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb3
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sb
	strb r7, [r1, #0x10]
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
	adds r1, r0, #0
	str r5, [r1, #0x70]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r1, #0x24]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080D9844
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x10
	b _080D984C
	.align 2, 0
_080D9840: .4byte gUnk_020229E0
_080D9844:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x10
_080D984C:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0xa
	mov sl, r0
	movs r4, #0
	ldr r1, _080D9868 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D986C @ =gUnk_020229E0
	mov ip, r7
	b _080D9884
	.align 2, 0
_080D9868: .4byte gUnk_020229D4
_080D986C: .4byte gUnk_020229E0
_080D9870:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D988C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D9884:
	cmp r0, #0
	bne _080D9870
	orrs r2, r3
	str r2, [r1]
_080D988C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sl
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb3
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sb
	strb r7, [r1, #0x10]
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
	adds r1, r0, #0
	str r5, [r1, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D98F0
sub_080D98F0: @ 0x080D98F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D9924 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D9928 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D992C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D9934
	.align 2, 0
_080D9924: .4byte ObjectMain
_080D9928: .4byte ObjectDestroy
_080D992C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D9934:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
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
	ldr r0, _080D99A0 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080D99A4
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D99A0: .4byte sub_0809F840

	thumb_func_start sub_080D99A4
sub_080D99A4: @ 0x080D99A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D99FC @ =sub_080D9A04
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D99C4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D99C4:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080D9A00 @ =0x0000FE80
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D99E6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D99E6:
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D99FC: .4byte sub_080D9A04
_080D9A00: .4byte 0x0000FE80

	thumb_func_start sub_080D9A04
sub_080D9A04: @ 0x080D9A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080D9A16
	b _080D9B96
_080D9A16:
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	movs r7, #0
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r5
	mov r8, r1
	adds r6, r5, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080D9A54
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D9A54:
	ldr r2, [r5, #0x44]
	ldr r1, _080D9A84 @ =0xFFFFF700
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D9A88
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r1, #0
	cmp r0, r2
	ble _080D9AD8
	strh r2, [r6]
	b _080D9AD8
	.align 2, 0
_080D9A84: .4byte 0xFFFFF700
_080D9A88:
	cmp r2, r0
	bge _080D9AAC
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9AA8 @ =0xFFFFFE00
	adds r6, r1, #0
	cmp r0, r2
	bge _080D9AD8
	strh r2, [r6]
	b _080D9AD8
	.align 2, 0
_080D9AA8: .4byte 0xFFFFFE00
_080D9AAC:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D9ACA
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9AD8
	b _080D9AD6
_080D9ACA:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9AD8
_080D9AD6:
	strh r7, [r6]
_080D9AD8:
	ldr r2, [r5, #0x40]
	ldr r1, _080D9B14 @ =0xFFFFF700
	ands r2, r1
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D9B1C
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
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9B10
	b _080D9CE0
_080D9B10:
	ldr r1, _080D9B18 @ =0xFFFFFE00
	b _080D9CE6
	.align 2, 0
_080D9B14: .4byte 0xFFFFF700
_080D9B18: .4byte 0xFFFFFE00
_080D9B1C:
	cmp r2, r0
	ble _080D9B74
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D9B50
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9B4C @ =0xFFFFFE00
	adds r4, r1, #0
	cmp r0, r2
	bge _080D9B46
	b _080D9CE0
_080D9B46:
	movs r1, #0x80
	lsls r1, r1, #2
	b _080D9CBC
	.align 2, 0
_080D9B4C: .4byte 0xFFFFFE00
_080D9B50:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9B6A
	b _080D9CE0
_080D9B6A:
	ldr r1, _080D9B70 @ =0xFFFFFE00
	b _080D9CE6
	.align 2, 0
_080D9B70: .4byte 0xFFFFFE00
_080D9B74:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	blt _080D9B86
	b _080D9D12
_080D9B86:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D9B94
	b _080D9D22
_080D9B94:
	b _080D9D1E
_080D9B96:
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r5
	mov r8, r1
	adds r6, r5, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080D9BD2
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D9BD2:
	ldr r2, [r5, #0x44]
	ldr r1, _080D9C00 @ =0xFFFFF700
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D9C04
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r6, r1, #0
	cmp r0, r2
	ble _080D9C54
	strh r2, [r6]
	b _080D9C54
	.align 2, 0
_080D9C00: .4byte 0xFFFFF700
_080D9C04:
	cmp r2, r0
	bge _080D9C28
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9C24 @ =0xFFFFFE60
	adds r6, r1, #0
	cmp r0, r2
	bge _080D9C54
	strh r2, [r6]
	b _080D9C54
	.align 2, 0
_080D9C24: .4byte 0xFFFFFE60
_080D9C28:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D9C46
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9C54
	b _080D9C52
_080D9C46:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9C54
_080D9C52:
	strh r7, [r6]
_080D9C54:
	ldr r2, [r5, #0x40]
	ldr r1, _080D9C8C @ =0xFFFFF700
	ands r2, r1
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D9C90
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
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	bgt _080D9CE0
	b _080D9CE4
	.align 2, 0
_080D9C8C: .4byte 0xFFFFF700
_080D9C90:
	cmp r2, r0
	ble _080D9CF4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D9CC8
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9CC4 @ =0xFFFFFE60
	adds r4, r1, #0
	cmp r0, r2
	blt _080D9CE0
	movs r1, #0xd0
	lsls r1, r1, #1
_080D9CBC:
	cmp r0, r1
	ble _080D9D22
	strh r1, [r4]
	b _080D9D22
	.align 2, 0
_080D9CC4: .4byte 0xFFFFFE60
_080D9CC8:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9CE4
_080D9CE0:
	strh r2, [r4]
	b _080D9D22
_080D9CE4:
	ldr r1, _080D9CF0 @ =0xFFFFFE60
_080D9CE6:
	cmp r0, r1
	bge _080D9D22
	strh r1, [r4]
	b _080D9D22
	.align 2, 0
_080D9CF0: .4byte 0xFFFFFE60
_080D9CF4:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D9D12
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9D22
	b _080D9D1E
_080D9D12:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9D22
_080D9D1E:
	movs r0, #0
	strh r0, [r4]
_080D9D22:
	ldr r0, [r5, #8]
	movs r2, #1
	orrs r0, r2
	str r0, [r5, #8]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x80
	ble _080D9D5A
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0x80
	ble _080D9D42
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
	b _080D9DA4
_080D9D42:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D9D52
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
	b _080D9DA4
_080D9D52:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #4
	b _080D9DA4
_080D9D5A:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080D9D7E
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0x80
	ble _080D9D72
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #7
	b _080D9DA4
_080D9D72:
	cmp r0, r1
	bge _080D9D9E
	adds r0, r5, #0
	adds r0, #0x83
	strb r2, [r0]
	b _080D9DA6
_080D9D7E:
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0x10
	ble _080D9D8E
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #6
	b _080D9DA4
_080D9D8E:
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D9D9E
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #2
	b _080D9DA4
_080D9D9E:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
_080D9DA4:
	strb r0, [r1]
_080D9DA6:
	ldrh r1, [r5, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080D9DF0
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x34]
	subs r1, r1, r2
	str r1, [r0, #0x34]
	movs r3, #0
	ldrsh r2, [r6, r3]
	lsls r2, r2, #2
	ldr r1, [r0, #0x38]
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3c]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3e]
	movs r1, #0xe8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
_080D9DF0:
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080D9E24
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _080D9E04
	rsbs r1, r1, #0
_080D9E04:
	movs r4, #0
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _080D9E0E
	rsbs r0, r0, #0
_080D9E0E:
	adds r1, r1, r0
	ldr r0, _080D9E1C @ =0x0000017F
	cmp r1, r0
	ble _080D9E28
	ldr r0, _080D9E20 @ =sub_080D9E34
	str r0, [r5, #0x78]
	b _080D9E28
	.align 2, 0
_080D9E1C: .4byte 0x0000017F
_080D9E20: .4byte sub_080D9E34
_080D9E24:
	subs r0, r1, #1
	strh r0, [r5, #4]
_080D9E28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9E34
sub_080D9E34: @ 0x080D9E34
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080D9E8E
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r4, r5, #0
	adds r4, #0x50
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x34]
	subs r1, r1, r2
	str r1, [r0, #0x34]
	adds r3, r5, #0
	adds r3, #0x52
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x38]
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3c]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3e]
	movs r1, #0xe8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
_080D9E8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D9E94
sub_080D9E94: @ 0x080D9E94
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9ED0 @ =sub_080D7D28
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D9ECA
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D9ED4 @ =gUnk_08351530
	ldr r0, _080D9ED8 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D9EDC
_080D9ECA:
	movs r0, #0x18
	b _080D9EDE
	.align 2, 0
_080D9ED0: .4byte sub_080D7D28
_080D9ED4: .4byte gUnk_08351530
_080D9ED8: .4byte gUnk_0203AD30
_080D9EDC:
	movs r0, #0x30
_080D9EDE:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9EE8
sub_080D9EE8: @ 0x080D9EE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9F4C @ =sub_080D9708
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D9F08
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D9F08:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _080D9F50 @ =0xFFFFF000
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080D9F2C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_080D9F2C:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r1, [r1, #0x40]
	cmp r0, r1
	ble _080D9F46
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080D9F46:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D9F4C: .4byte sub_080D9708
_080D9F50: .4byte 0xFFFFF000

	thumb_func_start sub_080D9F54
sub_080D9F54: @ 0x080D9F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9F80 @ =sub_080D7A6C
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
	adds r1, #0xc0
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D9F80: .4byte sub_080D7A6C

	thumb_func_start sub_080D9F84
sub_080D9F84: @ 0x080D9F84
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9FA4 @ =sub_080D7DCC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080D9FA8
	ldrh r0, [r1, #6]
	subs r0, #8
	b _080D9FAC
	.align 2, 0
_080D9FA4: .4byte sub_080D7DCC
_080D9FA8:
	ldrh r0, [r1, #6]
	adds r0, #8
_080D9FAC:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D9FC8
sub_080D9FC8: @ 0x080D9FC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9FE8 @ =sub_080D7DCC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080D9FEC
	ldrh r0, [r1, #6]
	adds r0, #0x30
	b _080D9FF0
	.align 2, 0
_080D9FE8: .4byte sub_080D7DCC
_080D9FEC:
	ldrh r0, [r1, #6]
	subs r0, #0x30
_080D9FF0:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DA00C
sub_080DA00C: @ 0x080DA00C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA02C @ =sub_080D7FF0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080DA030
	ldrh r0, [r1, #6]
	adds r0, #0x18
	b _080DA034
	.align 2, 0
_080DA02C: .4byte sub_080D7FF0
_080DA030:
	ldrh r0, [r1, #6]
	subs r0, #0x18
_080DA034:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA050
sub_080DA050: @ 0x080DA050
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA06C @ =sub_080D8338
	movs r1, #4
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
_080DA06C: .4byte sub_080D8338

	thumb_func_start sub_080DA070
sub_080DA070: @ 0x080DA070
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA098 @ =sub_080D8950
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r4, #0xa2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DA098: .4byte sub_080D8950

	thumb_func_start sub_080DA09C
sub_080DA09C: @ 0x080DA09C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA0B8 @ =sub_080D8C98
	movs r1, #4
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
_080DA0B8: .4byte sub_080D8C98

	thumb_func_start sub_080DA0BC
sub_080DA0BC: @ 0x080DA0BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA0E0 @ =sub_080D9388
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DA0E4
	movs r0, #0xc
	b _080DA0E6
	.align 2, 0
_080DA0E0: .4byte sub_080D9388
_080DA0E4:
	movs r0, #0x1c
_080DA0E6:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA0F0
sub_080DA0F0: @ 0x080DA0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080DA124 @ =ObjectMain
	ldr r2, _080DA128 @ =0x00001001
	ldr r1, _080DA12C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA130
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA138
	.align 2, 0
_080DA124: .4byte ObjectMain
_080DA128: .4byte 0x00001001
_080DA12C: .4byte ObjectDestroy
_080DA130:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA138:
	adds r4, r0, #0
	adds r7, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x33
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0xbe
	movs r0, #0
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0xbd
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	orrs r0, r5
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #0x48
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080DA29C @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, _080DA2A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA1C2
	movs r0, #1
	bl sub_08019DA8
	cmp r0, #0
	beq _080DA1C8
_080DA1C2:
	adds r0, r4, #0
	adds r0, #0x87
	strb r5, [r0]
_080DA1C8:
	movs r0, #0xd4
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	movs r0, #0xec
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r0, #0x40
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x20
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
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
	ldr r0, _080DA2A4 @ =sub_080DB85C
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080DA68C
	adds r1, r7, #0
	adds r1, #0xb4
	str r0, [r1]
	ldr r2, _080DA2A8 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DA2AC @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080DA2B0 @ =gUnk_02020EE0
	ldr r0, _080DA2B4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DA28A
	ldr r0, _080DA2B8 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA28A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DA28A:
	adds r0, r4, #0
	bl sub_080DB640
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080DA29C: .4byte 0x001080A0
_080DA2A0: .4byte gUnk_0203AD10
_080DA2A4: .4byte sub_080DB85C
_080DA2A8: .4byte gUnk_02023530
_080DA2AC: .4byte 0x0000065E
_080DA2B0: .4byte gUnk_02020EE0
_080DA2B4: .4byte gUnk_0203AD3C
_080DA2B8: .4byte gUnk_0203AD20

	thumb_func_start sub_080DA2BC
sub_080DA2BC: @ 0x080DA2BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	mov sl, r1
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080DA2F0
	b _080DA480
_080DA2F0:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080DA304
	b _080DA480
_080DA304:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r3, #0xb0
	adds r3, r3, r5
	mov r8, r3
	ldr r4, [r3]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080DA334
	b _080DA480
_080DA334:
	ldr r4, _080DA490 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080DA4B0
	ldr r0, _080DA494 @ =sub_080DB664
	str r0, [r5, #0x78]
	ldr r0, [r5, #8]
	ldr r1, _080DA498 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080DA3BC
	movs r0, #0
	strb r0, [r1, #9]
_080DA3BC:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080DA49C @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080DA480
	ldr r0, _080DA4A0 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080DA480
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080DA480
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080DA43E
	movs r4, #1
_080DA406:
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
	bls _080DA406
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080DA43E:
	ldr r1, _080DA4A0 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080DA4A4 @ =gUnk_02020EE0
	ldr r0, _080DA4A8 @ =gUnk_0203AD3C
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
	bne _080DA480
	ldr r0, _080DA4AC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA480
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DA480:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA490: .4byte gUnk_02023530
_080DA494: .4byte sub_080DB664
_080DA498: .4byte 0xFFFFFDFF
_080DA49C: .4byte 0x0000065E
_080DA4A0: .4byte gUnk_08352D80
_080DA4A4: .4byte gUnk_02020EE0
_080DA4A8: .4byte gUnk_0203AD3C
_080DA4AC: .4byte gUnk_0203AD20

	thumb_func_start sub_080DA4B0
sub_080DA4B0: @ 0x080DA4B0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r0, #0
	movs r5, #0
	strh r5, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x9f
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x83
	strb r0, [r3]
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
	str r1, [r2, #8]
	adds r4, r2, #0
	adds r4, #0x80
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bgt _080DA4F8
	strh r5, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r2, #8]
	movs r0, #5
	strb r0, [r3]
	ldr r0, _080DA4F4 @ =sub_080DB694
	str r0, [r2, #0x78]
	b _080DA538
	.align 2, 0
_080DA4F4: .4byte sub_080DB694
_080DA4F8:
	ldr r0, _080DA528 @ =sub_080DA540
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DA522
	ldr r1, _080DA52C @ =gUnk_08351530
	ldr r0, _080DA530 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DA534
_080DA522:
	movs r0, #0x10
	b _080DA536
	.align 2, 0
_080DA528: .4byte sub_080DA540
_080DA52C: .4byte gUnk_08351530
_080DA530: .4byte gUnk_0203AD30
_080DA534:
	movs r0, #0x30
_080DA536:
	strh r0, [r2, #4]
_080DA538:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA540
sub_080DA540: @ 0x080DA540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r3, r5, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #4
	bne _080DA578
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2a
	bls _080DA580
	movs r0, #0
	strb r0, [r2]
	b _080DA580
_080DA578:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
_080DA580:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DA672
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x87
	ldrb r1, [r1]
	mov ip, r0
	cmp r1, #0
	bne _080DA5C2
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080DA5C8 @ =gUnk_08351530
	ldr r0, _080DA5CC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DA5D0
_080DA5C2:
	movs r0, #0x10
	b _080DA5D2
	.align 2, 0
_080DA5C8: .4byte gUnk_08351530
_080DA5CC: .4byte gUnk_0203AD30
_080DA5D0:
	movs r0, #0x30
_080DA5D2:
	strh r0, [r3, #4]
	ldr r6, _080DA650 @ =gRngVal
	ldr r0, [r6]
	ldr r7, _080DA654 @ =0x00196225
	mov sb, r7
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _080DA658 @ =0x3C6EF35F
	mov r8, r2
	adds r4, r0, r2
	str r4, [r6]
	lsrs r0, r4, #0x10
	movs r7, #1
	mov sl, r7
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080DA600
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #3
	bls _080DA672
_080DA600:
	movs r7, #0x80
	ldr r1, _080DA65C @ =gUnk_08351530
	ldr r0, _080DA660 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldrsh r1, [r7, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DA66C
	mov r0, sb
	muls r0, r4, r0
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	mov r4, sl
	ands r0, r4
	adds r1, r3, #0
	adds r1, #0x85
	cmp r0, #0
	bne _080DA638
	ldrb r0, [r1]
	cmp r0, #0
	bne _080DA66C
_080DA638:
	mov r7, sl
	strb r7, [r1]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _080DA664
	adds r0, r3, #0
	bl sub_080DB6BC
	b _080DA672
	.align 2, 0
_080DA650: .4byte gRngVal
_080DA654: .4byte 0x00196225
_080DA658: .4byte 0x3C6EF35F
_080DA65C: .4byte gUnk_08351530
_080DA660: .4byte gUnk_0203AD30
_080DA664:
	adds r0, r3, #0
	bl sub_080DB790
	b _080DA672
_080DA66C:
	adds r0, r3, #0
	bl sub_080DB790
_080DA672:
	adds r1, r5, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA68C
sub_080DA68C: @ 0x080DA68C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DA6C0 @ =sub_080DA768
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DA6C4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA6C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA6D0
	.align 2, 0
_080DA6C0: .4byte sub_080DA768
_080DA6C4: .4byte sub_0803DCCC
_080DA6C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA6D0:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080DA748 @ =0x00000303
	movs r0, #7
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080DA74C @ =gUnk_02020EE0
	ldr r0, _080DA750 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DA754
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DA758
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DA758
	.align 2, 0
_080DA748: .4byte 0x00000303
_080DA74C: .4byte gUnk_02020EE0
_080DA750: .4byte gUnk_0203AD3C
_080DA754:
	mov r1, r8
	strb r1, [r5]
_080DA758:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080DA768
sub_080DA768: @ 0x080DA768
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080DA790 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA794
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA79C
	.align 2, 0
_080DA790: .4byte gCurTask
_080DA794:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA79C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov sb, r0
	mov sl, sb
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DA7BA
	ldr r0, [r2]
	bl TaskDestroy
	b _080DAAD6
_080DA7BA:
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DA7CA
	adds r0, r1, #0
	orrs r0, r3
	b _080DAAD4
_080DA7CA:
	ldr r0, _080DA890 @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r4, #0x42
	adds r4, r4, r5
	mov r8, r4
	ldr r3, [r5, #0xc]
	adds r6, r5, #0
	adds r6, #0x2b
	cmp r0, #0
	beq _080DA81A
	ldr r7, _080DA894 @ =gUnk_02023530
	mov ip, r7
	ldrh r4, [r4]
_080DA7E4:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080DA812
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _080DA898 @ =gUnk_02026D50
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080DA82C
_080DA812:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080DA7E4
_080DA81A:
	movs r0, #1
	cmp r0, #0
	beq _080DA82C
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080DA82C:
	ldr r2, _080DA89C @ =gUnk_02020EE0
	ldr r0, _080DA8A0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080DA8E0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080DA8AC
	cmp r3, #0
	bne _080DA906
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x1e
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DA8A4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DA8A8 @ =0x0400000A
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
	b _080DA906
	.align 2, 0
_080DA890: .4byte gUnk_0203AD44
_080DA894: .4byte gUnk_02023530
_080DA898: .4byte gUnk_02026D50
_080DA89C: .4byte gUnk_02020EE0
_080DA8A0: .4byte gUnk_0203AD3C
_080DA8A4: .4byte 0xFFF7FFFF
_080DA8A8: .4byte 0x0400000A
_080DA8AC:
	cmp r3, #0
	bne _080DA906
	movs r0, #0x1e
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DA8D8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DA8DC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DA906
	.align 2, 0
_080DA8D8: .4byte 0xFFF7FFFF
_080DA8DC: .4byte 0x0400000A
_080DA8E0:
	cmp r3, #0
	beq _080DA8FC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DA8FC
	adds r0, r3, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DA8FC:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DA906:
	ldr r2, _080DA944 @ =gUnk_02020EE0
	ldr r0, _080DA948 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r7, r8
	ldrh r7, [r7]
	cmp r0, r7
	bne _080DA950
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DA954
	ldr r4, _080DA94C @ =0x00000303
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DA954
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DA952
	.align 2, 0
_080DA944: .4byte gUnk_02020EE0
_080DA948: .4byte gUnk_0203AD3C
_080DA94C: .4byte 0x00000303
_080DA950:
	movs r0, #0
_080DA952:
	strb r0, [r6]
_080DA954:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DA9A8
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DA972
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DA972
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DA972:
	cmp r3, #0
	beq _080DA9A8
	ldr r0, _080DA9A4 @ =gUnk_03000510
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
	beq _080DAA18
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DAA18
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DAAD6
	.align 2, 0
_080DA9A4: .4byte gUnk_03000510
_080DA9A8:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DAA10 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #4
_080DA9E8:
	ldr r0, _080DAA14 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DAA18
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DAA18
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DAAD6
	.align 2, 0
_080DAA10: .4byte gUnk_02020EE0
_080DAA14: .4byte gUnk_03000510
_080DAA18:
	mov r0, sb
	ldr r1, [r0, #0x78]
	ldr r0, _080DAA78 @ =sub_080DB7DC
	cmp r1, r0
	bne _080DAABE
	mov r1, sl
	adds r1, #0xbd
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	movs r3, #1
	strh r3, [r5, #8]
	mov r0, sb
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAA5C
	mov r2, sb
	adds r2, #0x80
	ldr r1, _080DAA7C @ =gUnk_08351530
	ldr r0, _080DAA80 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DAA90
_080DAA5C:
	ldr r2, _080DAA84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DAA88 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080DAA8C @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DAAAA
	b _080DAAA6
	.align 2, 0
_080DAA78: .4byte sub_080DB7DC
_080DAA7C: .4byte gUnk_08351530
_080DAA80: .4byte gUnk_0203AD30
_080DAA84: .4byte gRngVal
_080DAA88: .4byte 0x00196225
_080DAA8C: .4byte 0x3C6EF35F
_080DAA90:
	ldr r2, _080DAAE8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DAAEC @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080DAAF0 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080DAAAA
_080DAAA6:
	movs r0, #2
	strh r0, [r5, #8]
_080DAAAA:
	ldr r0, _080DAAF4 @ =0x00000303
	strh r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080DAAF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080DAAFC @ =sub_080DAB00
	str r0, [r1, #8]
_080DAABE:
	adds r0, r5, #0
	bl sub_0806FAC8
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080DAAD6
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
_080DAAD4:
	strh r0, [r5, #6]
_080DAAD6:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DAAE8: .4byte gRngVal
_080DAAEC: .4byte 0x00196225
_080DAAF0: .4byte 0x3C6EF35F
_080DAAF4: .4byte 0x00000303
_080DAAF8: .4byte gCurTask
_080DAAFC: .4byte sub_080DAB00

	thumb_func_start sub_080DAB00
sub_080DAB00: @ 0x080DAB00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _080DAB28 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DAB2C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DAB34
	.align 2, 0
_080DAB28: .4byte gCurTask
_080DAB2C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DAB34:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	mov sl, r6
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DAB50
	ldr r0, [r2]
	bl TaskDestroy
	b _080DAFCC
_080DAB50:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DAB60
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DAFCC
_080DAB60:
	ldr r0, _080DAC2C @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x42
	adds r1, r1, r5
	mov r8, r1
	ldr r3, [r5, #0xc]
	adds r7, r5, #0
	adds r7, #0x2b
	cmp r0, #0
	beq _080DABB6
	ldr r2, _080DAC30 @ =gUnk_02023530
	mov sb, r2
	ldrh r4, [r1]
	str r4, [sp, #0x28]
	ldr r1, _080DAC34 @ =gUnk_02026D50
	mov ip, r1
_080DAB80:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r4, sb
	adds r1, r0, r4
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r1, r4
	ldrh r0, [r0]
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bne _080DABAE
	ldr r4, _080DAC38 @ =0x0000065E
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080DABC8
_080DABAE:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080DAB80
_080DABB6:
	movs r0, #1
	cmp r0, #0
	beq _080DABC8
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080DABC8:
	ldr r2, _080DAC3C @ =gUnk_02020EE0
	ldr r0, _080DAC40 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080DAC80
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080DAC4C
	cmp r3, #0
	bne _080DACA6
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x1e
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DAC44 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DAC48 @ =0x0400000A
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
	b _080DACA6
	.align 2, 0
_080DAC2C: .4byte gUnk_0203AD44
_080DAC30: .4byte gUnk_02023530
_080DAC34: .4byte gUnk_02026D50
_080DAC38: .4byte 0x0000065E
_080DAC3C: .4byte gUnk_02020EE0
_080DAC40: .4byte gUnk_0203AD3C
_080DAC44: .4byte 0xFFF7FFFF
_080DAC48: .4byte 0x0400000A
_080DAC4C:
	cmp r3, #0
	bne _080DACA6
	movs r0, #0x1e
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DAC78 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DAC7C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DACA6
	.align 2, 0
_080DAC78: .4byte 0xFFF7FFFF
_080DAC7C: .4byte 0x0400000A
_080DAC80:
	cmp r3, #0
	beq _080DAC9C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DAC9C
	adds r0, r3, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DAC9C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DACA6:
	ldr r2, _080DACE4 @ =gUnk_02020EE0
	ldr r0, _080DACE8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DACF0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DACF4
	ldr r4, _080DACEC @ =0x00000303
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DACF4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DACF2
	.align 2, 0
_080DACE4: .4byte gUnk_02020EE0
_080DACE8: .4byte gUnk_0203AD3C
_080DACEC: .4byte 0x00000303
_080DACF0:
	movs r0, #0
_080DACF2:
	strb r0, [r7]
_080DACF4:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DAD48
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DAD12
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DAD12
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DAD12:
	cmp r3, #0
	beq _080DAD48
	ldr r0, _080DAD44 @ =gUnk_03000510
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
	beq _080DADB8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DADB8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DAFCC
	.align 2, 0
_080DAD44: .4byte gUnk_03000510
_080DAD48:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DADB0 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r7, r8
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DAD88
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #4
_080DAD88:
	ldr r0, _080DADB4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DADB8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DADB8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DAFCC
	.align 2, 0
_080DADB0: .4byte gUnk_02020EE0
_080DADB4: .4byte gUnk_03000510
_080DADB8:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x12
	beq _080DADC2
	b _080DAF3C
_080DADC2:
	mov r0, sl
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAEC4
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #1
	beq _080DADE0
	cmp r0, #2
	beq _080DADF4
_080DADE0:
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAE1E
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	b _080DAE38
_080DADF4:
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, _080DAE28 @ =gUnk_08351530
	ldr r0, _080DAE2C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DAE38
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAE30
_080DAE1E:
	adds r0, r6, #0
	movs r1, #1
	bl sub_080DB1B8
	b _080DAE38
	.align 2, 0
_080DAE28: .4byte gUnk_08351530
_080DAE2C: .4byte gUnk_0203AD30
_080DAE30:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
_080DAE38:
	ldr r1, _080DAEA4 @ =gUnk_02020EE0
	ldr r0, _080DAEA8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DAF34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DAE64
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DAF34
_080DAE64:
	ldr r1, _080DAEAC @ =gUnk_08D60FA4
	ldr r4, _080DAEB0 @ =gSongTable
	ldr r7, _080DAEB4 @ =0x00000C0C
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DAE88
	ldr r1, _080DAEB8 @ =0x00000C08
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DAF34
_080DAE88:
	cmp r3, #0
	beq _080DAE9A
	ldr r0, _080DAEBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DAF34
_080DAE9A:
	ldr r0, _080DAEC0 @ =0x00000181
	bl m4aSongNumStart
	b _080DAF34
	.align 2, 0
_080DAEA4: .4byte gUnk_02020EE0
_080DAEA8: .4byte gUnk_0203AD3C
_080DAEAC: .4byte gUnk_08D60FA4
_080DAEB0: .4byte gSongTable
_080DAEB4: .4byte 0x00000C0C
_080DAEB8: .4byte 0x00000C08
_080DAEBC: .4byte gUnk_0203AD10
_080DAEC0: .4byte 0x00000181
_080DAEC4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	ldr r1, _080DAFDC @ =gUnk_02020EE0
	ldr r0, _080DAFE0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DAF34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DAEF8
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DAF34
_080DAEF8:
	ldr r1, _080DAFE4 @ =gUnk_08D60FA4
	ldr r4, _080DAFE8 @ =gSongTable
	ldr r2, _080DAFEC @ =0x00000C0C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DAF1C
	ldr r7, _080DAFF0 @ =0x00000C08
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DAF34
_080DAF1C:
	cmp r3, #0
	beq _080DAF2E
	ldr r0, _080DAFF4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DAF34
_080DAF2E:
	ldr r0, _080DAFF8 @ =0x00000181
	bl m4aSongNumStart
_080DAF34:
	movs r0, #2
	adds r1, r6, #0
	bl sub_0806FE64
_080DAF3C:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DAF8C
	mov r0, sl
	adds r0, #0xbd
	ldrb r1, [r0]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _080DAF8C
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r0, #0x64
	ble _080DAF8C
	adds r0, r6, #0
	adds r0, #0x80
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble _080DAF6E
	adds r0, r6, #0
	bl sub_080DA4B0
_080DAF6E:
	mov r1, sl
	adds r1, #0xbc
	movs r0, #0
	strb r0, [r1]
	strh r0, [r5, #4]
	ldr r0, _080DAFFC @ =0x00000303
	strh r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #7
	strb r0, [r1]
	ldr r0, _080DB000 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080DB004 @ =sub_080DA768
	str r0, [r1, #8]
_080DAF8C:
	ldrb r0, [r5, #1]
	cmp r0, #0x20
	bne _080DAFC0
	mov r1, sl
	adds r1, #0xbd
	ldrb r2, [r1]
	movs r7, #8
	ldrsh r0, [r5, r7]
	cmp r2, r0
	bge _080DAFC0
	adds r0, r2, #1
	movs r2, #0
	strb r0, [r1]
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	strh r2, [r5, #4]
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	ldrh r1, [r5, #6]
	ldr r0, _080DB008 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_080DAFC0:
	adds r0, r5, #0
	bl sub_0806FAC8
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080DAFCC:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DAFDC: .4byte gUnk_02020EE0
_080DAFE0: .4byte gUnk_0203AD3C
_080DAFE4: .4byte gUnk_08D60FA4
_080DAFE8: .4byte gSongTable
_080DAFEC: .4byte 0x00000C0C
_080DAFF0: .4byte 0x00000C08
_080DAFF4: .4byte gUnk_0203AD10
_080DAFF8: .4byte 0x00000181
_080DAFFC: .4byte 0x00000303
_080DB000: .4byte gCurTask
_080DB004: .4byte sub_080DA768
_080DB008: .4byte 0x0000FFFD

	thumb_func_start sub_080DB00C
sub_080DB00C: @ 0x080DB00C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080DB040 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DB044 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DB048
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080DB050
	.align 2, 0
_080DB040: .4byte ObjectMain
_080DB044: .4byte ObjectDestroy
_080DB048:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080DB050:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0x9c
	bne _080DB096
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	ldr r1, _080DB0F0 @ =0x00108020
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
_080DB096:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080DB0F4 @ =gUnk_08351648
	ldrb r1, [r5]
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
	ldr r0, _080DB0F8 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080DB0F0: .4byte 0x00108020
_080DB0F4: .4byte gUnk_08351648
_080DB0F8: .4byte sub_0809F840

	thumb_func_start sub_080DB0FC
sub_080DB0FC: @ 0x080DB0FC
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
	bge _080DB122
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DB130
	b _080DB12C
_080DB122:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DB130
_080DB12C:
	movs r0, #0
	strh r0, [r1]
_080DB130:
	ldr r1, [r3, #0x44]
	movs r0, #0x94
	lsls r0, r0, #9
	cmp r1, r0
	ble _080DB1B2
	movs r0, #0x85
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080DB17E
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB1B2
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080DB1B2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #0
	movs r0, #2
	mov r2, ip
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080DB1B0
_080DB17E:
	cmp r0, #0
	bne _080DB1B2
	movs r2, #1
	mov r4, ip
	strb r2, [r4]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #0x26
	movs r0, #0x20
	strb r0, [r1]
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	beq _080DB1A8
	adds r1, #0x24
	movs r0, #0x80
	lsls r0, r0, #1
	b _080DB1B0
_080DB1A8:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080DB1B0:
	strh r0, [r1]
_080DB1B2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DB1B8
sub_080DB1B8: @ 0x080DB1B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0x9b
	str r0, [sp]
	cmp r1, #0
	beq _080DB1D4
	movs r1, #0x9c
	str r1, [sp]
_080DB1D4:
	ldr r0, [r6, #0x40]
	asrs r7, r0, #8
	ldr r0, [r6, #0x44]
	asrs r5, r0, #8
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB206
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, _080DB2B8 @ =gUnk_08351530
	ldr r0, _080DB2BC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DB2D4
_080DB206:
	ldr r2, _080DB2C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080DB2CC @ =0x00002AAA
	mov sl, r2
	adds r4, r6, #0
	adds r4, #0xbc
	subs r7, #0x32
	subs r5, #0x1c
	mov ip, r5
	ldr r2, _080DB2D0 @ =gUnk_020229D4
	mov r8, r2
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #4]
	subs r2, #0x5a
	str r2, [sp, #8]
	cmp r3, r0
	blt _080DB24C
	adds r5, r0, #0
_080DB23A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _080DB24C
	adds r0, r1, #1
	muls r0, r5, r0
	cmp r3, r0
	bge _080DB23A
_080DB24C:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB294
	ldr r5, _080DB2C0 @ =gRngVal
_080DB25C:
	ldr r1, [r5]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r5]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080DB2CC @ =0x00002AAA
	cmp r3, r0
	blt _080DB286
	adds r2, r0, #0
_080DB274:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _080DB286
	adds r0, r1, #1
	muls r0, r2, r0
	cmp r3, r0
	bge _080DB274
_080DB286:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DB25C
_080DB294:
	movs r0, #0x1a
	muls r0, r3, r0
	subs r7, r7, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r2, sl
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x18
	ands r0, r1
	mov r1, ip
	subs r5, r1, r0
	b _080DB384
	.align 2, 0
_080DB2B8: .4byte gUnk_08351530
_080DB2BC: .4byte gUnk_0203AD30
_080DB2C0: .4byte gRngVal
_080DB2C4: .4byte 0x00196225
_080DB2C8: .4byte 0x3C6EF35F
_080DB2CC: .4byte 0x00002AAA
_080DB2D0: .4byte gUnk_020229D4
_080DB2D4:
	ldr r2, _080DB3A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #7
	mov sl, r2
	adds r4, r6, #0
	adds r4, #0xbc
	subs r5, #0x1c
	mov ip, r5
	subs r7, #0x3a
	mov sb, r7
	ldr r2, _080DB3B0 @ =gUnk_020229D4
	mov r8, r2
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #4]
	subs r2, #0x5a
	str r2, [sp, #8]
	cmp r3, r0
	blt _080DB31C
_080DB30A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bhi _080DB31C
	adds r0, r1, #1
	lsls r0, r0, #0xe
	cmp r3, r0
	bge _080DB30A
_080DB31C:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB364
	ldr r2, _080DB3A4 @ =gRngVal
	movs r7, #1
	movs r5, #0x80
	lsls r5, r5, #7
_080DB332:
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	cmp r3, r5
	blt _080DB358
_080DB346:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bhi _080DB358
	adds r0, r1, #1
	lsls r0, r0, #0xe
	cmp r3, r0
	bge _080DB346
_080DB358:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	ands r0, r7
	cmp r0, #0
	bne _080DB332
_080DB364:
	movs r0, #0x2a
	muls r0, r3, r0
	mov r1, sb
	subs r7, r1, r0
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x18
	ands r0, r1
	mov r2, ip
	subs r5, r2, r0
_080DB384:
	movs r2, #1
	adds r0, r2, #0
	lsls r0, r3
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0
	mov r4, r8
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB3B4
	orrs r1, r2
	str r1, [r4]
	b _080DB3D4
	.align 2, 0
_080DB3A4: .4byte gRngVal
_080DB3A8: .4byte 0x00196225
_080DB3AC: .4byte 0x3C6EF35F
_080DB3B0: .4byte gUnk_020229D4
_080DB3B4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080DB3D4
	movs r2, #1
	lsls r2, r3
	mov r0, r8
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB3B4
	orrs r1, r2
	mov r2, r8
	str r1, [r2]
_080DB3D4:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _080DB438 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r7, [r1, #6]
	strh r5, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r4, sp
	ldrb r4, [r4]
	strb r4, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r4, [sp, #4]
	ldr r0, [r4]
	ldrb r0, [r0, #0x10]
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
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	bl CreateObject
	str r6, [r0, #0x70]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DB438: .4byte gUnk_020229E0

	thumb_func_start sub_080DB43C
sub_080DB43C: @ 0x080DB43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	str r4, [sp]
	ldr r3, _080DB4C0 @ =gRngVal
	ldr r0, [r3]
	ldr r7, _080DB4C4 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080DB4C8 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r0, #3
	ands r1, r0
	ldr r5, _080DB4CC @ =gUnk_020229D4
	cmp r1, #3
	bne _080DB47C
	mov ip, r3
	movs r3, #3
	adds r0, r2, #0
_080DB46C:
	muls r0, r7, r0
	adds r0, r0, r6
	lsrs r1, r0, #0x10
	ands r1, r3
	cmp r1, #3
	beq _080DB46C
	mov r2, ip
	str r0, [r2]
_080DB47C:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, #0x10
	mov r8, r0
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r0, #0x28
	mov ip, r0
	ldr r3, [sp]
	adds r3, #0xb8
	mov sl, r3
	movs r3, #0
	movs r6, #1
	ldr r2, [r5]
	adds r0, r2, #0
	ands r0, r6
	mov r7, sl
	str r7, [sp, #4]
	adds r7, r1, #0
	adds r7, #0x1f
	movs r1, #0xb0
	adds r1, r1, r4
	mov sb, r1
	adds r1, r4, #0
	adds r1, #0x56
	str r1, [sp, #0xc]
	adds r1, #0xa
	str r1, [sp, #8]
	cmp r0, #0
	bne _080DB4D0
	orrs r2, r6
	str r2, [r5]
	b _080DB4EC
	.align 2, 0
_080DB4C0: .4byte gRngVal
_080DB4C4: .4byte 0x00196225
_080DB4C8: .4byte 0x3C6EF35F
_080DB4CC: .4byte gUnk_020229D4
_080DB4D0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080DB4EC
	movs r2, #1
	lsls r2, r3
	ldr r1, [r5]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB4D0
	orrs r1, r2
	str r1, [r5]
_080DB4EC:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, _080DB5C4 @ =gUnk_020229E0
	adds r1, r1, r2
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r5, r8
	strh r5, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	strb r7, [r1, #0xc]
	movs r0, #0x80
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r5, sb
	ldr r0, [r5]
	ldrb r0, [r0, #0x10]
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
	ldr r7, [sp, #0xc]
	ldrb r0, [r7]
	bl CreateObject
	mov r1, sl
	str r0, [r1]
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r3, [sp]
	str r3, [r0, #0x70]
	ldr r1, _080DB5C8 @ =gUnk_02020EE0
	ldr r0, _080DB5CC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #8]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080DB5B2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DB572
	ldrb r0, [r7]
	cmp r0, r2
	bne _080DB5B2
_080DB572:
	ldr r1, _080DB5D0 @ =gUnk_08D60FA4
	ldr r4, _080DB5D4 @ =gSongTable
	ldr r7, _080DB5D8 @ =0x00000C14
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DB598
	movs r1, #0xc1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DB5B2
_080DB598:
	cmp r3, #0
	beq _080DB5AA
	ldr r0, _080DB5DC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DB5B2
_080DB5AA:
	movs r0, #0xc1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DB5B2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DB5C4: .4byte gUnk_020229E0
_080DB5C8: .4byte gUnk_02020EE0
_080DB5CC: .4byte gUnk_0203AD3C
_080DB5D0: .4byte gUnk_08D60FA4
_080DB5D4: .4byte gSongTable
_080DB5D8: .4byte 0x00000C14
_080DB5DC: .4byte gUnk_0203AD10

	thumb_func_start sub_080DB5E0
sub_080DB5E0: @ 0x080DB5E0
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x83
	strb r4, [r0]
	ldr r2, _080DB630 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB634 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB638 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB60E
	ldr r0, [r3, #8]
	orrs r0, r1
	str r0, [r3, #8]
_080DB60E:
	ldr r0, [r3, #8]
	movs r1, #8
	orrs r0, r1
	adds r1, #0xf8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x85
	strb r4, [r0]
	ldr r0, _080DB63C @ =sub_080DB7FC
	str r0, [r3, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DB630: .4byte gRngVal
_080DB634: .4byte 0x00196225
_080DB638: .4byte 0x3C6EF35F
_080DB63C: .4byte sub_080DB7FC

	thumb_func_start sub_080DB640
sub_080DB640: @ 0x080DB640
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DB660 @ =sub_080DA2BC
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
_080DB660: .4byte sub_080DA2BC

	thumb_func_start sub_080DB664
sub_080DB664: @ 0x080DB664
	push {lr}
	adds r2, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	beq _080DB678
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080DB678:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080DB690
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	bl sub_080DA4B0
_080DB690:
	pop {r0}
	bx r0

	thumb_func_start sub_080DB694
sub_080DB694: @ 0x080DB694
	push {lr}
	adds r2, r0, #0
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0x23
	ble _080DB6B0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
_080DB6B0:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DB6BC
sub_080DB6BC: @ 0x080DB6BC
	movs r1, #0
	strh r1, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #1
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _080DB6D8 @ =sub_080DB6DC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080DB6D8: .4byte sub_080DB6DC

	thumb_func_start sub_080DB6DC
sub_080DB6DC: @ 0x080DB6DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _080DB6FC
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_080DB43C
_080DB6FC:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB726
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DB738 @ =gUnk_08351530
	ldr r0, _080DB73C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DB740
_080DB726:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x38
	ble _080DB74E
	adds r0, r4, #0
	bl sub_080DB754
	b _080DB74E
	.align 2, 0
_080DB738: .4byte gUnk_08351530
_080DB73C: .4byte gUnk_0203AD30
_080DB740:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0x52
	ble _080DB74E
	adds r0, r4, #0
	bl sub_080DB754
_080DB74E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DB754
sub_080DB754: @ 0x080DB754
	movs r1, #0
	strh r1, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #2
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _080DB770 @ =sub_080DB774
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080DB770: .4byte sub_080DB774

	thumb_func_start sub_080DB774
sub_080DB774: @ 0x080DB774
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080DB78C
	adds r0, r1, #0
	bl sub_080DA4B0
_080DB78C:
	pop {r0}
	bx r0

	thumb_func_start sub_080DB790
sub_080DB790: @ 0x080DB790
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB7AA
	adds r0, r2, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	cmp r0, #0x37
	bls _080DB7D2
	b _080DB7B4
_080DB7AA:
	adds r0, r2, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	cmp r0, #0x57
	bls _080DB7D2
_080DB7B4:
	adds r1, #0xbe
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, _080DB7D8 @ =sub_080DB7DC
	str r0, [r2, #0x78]
_080DB7D2:
	pop {r0}
	bx r0
	.align 2, 0
_080DB7D8: .4byte sub_080DB7DC

	thumb_func_start sub_080DB7DC
sub_080DB7DC: @ 0x080DB7DC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	ldr r1, _080DB7F8 @ =0x03E70000
	cmp r0, r1
	ble _080DB7F4
	adds r0, r2, #0
	bl sub_080DA4B0
_080DB7F4:
	pop {r0}
	bx r0
	.align 2, 0
_080DB7F8: .4byte 0x03E70000

	thumb_func_start sub_080DB7FC
sub_080DB7FC: @ 0x080DB7FC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DB818
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r2, #8]
_080DB818:
	movs r0, #4
	ldrsh r1, [r2, r0]
	cmp r1, #0x24
	bne _080DB82A
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB838
_080DB82A:
	cmp r1, #0x3c
	bne _080DB84C
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB84C
_080DB838:
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	ldr r1, _080DB850 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _080DB854 @ =0xFFFFF5B7
	ands r0, r1
	str r0, [r2, #8]
	ldr r0, _080DB858 @ =sub_080DB0FC
	str r0, [r2, #0x78]
_080DB84C:
	pop {r0}
	bx r0
	.align 2, 0
_080DB850: .4byte 0xFFFFFBFF
_080DB854: .4byte 0xFFFFF5B7
_080DB858: .4byte sub_080DB0FC

	thumb_func_start sub_080DB85C
sub_080DB85C: @ 0x080DB85C
	push {lr}
	adds r3, r0, #0
	ldr r0, _080DB8A0 @ =gUnk_03000510
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
	bne _080DB89A
	ldr r0, [r3, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080DB89A
	ldr r2, _080DB8A4 @ =gUnk_08351648
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x83
	strb r1, [r0]
_080DB89A:
	pop {r0}
	bx r0
	.align 2, 0
_080DB8A0: .4byte gUnk_03000510
_080DB8A4: .4byte gUnk_08351648

	thumb_func_start sub_080DB8A8
sub_080DB8A8: @ 0x080DB8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080DB8DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DB8E0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DB8E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DB8EC
	.align 2, 0
_080DB8DC: .4byte ObjectMain
_080DB8E0: .4byte ObjectDestroy
_080DB8E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DB8EC:
	adds r5, r0, #0
	adds r6, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	ldr r1, _080DB9FC @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0xb0
	lsls r1, r1, #8
	str r1, [r5, #0x40]
	orrs r0, r2
	str r0, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080DBA00 @ =0x001080A0
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x68]
	movs r1, #0x1a
	rsbs r1, r1, #0
	subs r2, #0x15
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x1a
	bl sub_0803E2B0
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080DBA04 @ =gUnk_02023530
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DBA08 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080DBA0C @ =gUnk_02020EE0
	ldr r0, _080DBA10 @ =gUnk_0203AD3C
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
	bne _080DB9C8
	ldr r0, _080DBA14 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DB9C8
	adds r0, r4, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DB9C8:
	adds r0, r5, #0
	adds r0, #0x9e
	movs r4, #0
	strb r4, [r0]
	ldr r0, _080DBA18 @ =sub_080DEF64
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	bl sub_080DF000
	adds r0, r6, #0
	adds r0, #0xbc
	str r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080DB9FC: .4byte 0xFFFFFBFF
_080DBA00: .4byte 0x001080A0
_080DBA04: .4byte gUnk_02023530
_080DBA08: .4byte 0x0000065E
_080DBA0C: .4byte gUnk_02020EE0
_080DBA10: .4byte gUnk_0203AD3C
_080DBA14: .4byte gUnk_0203AD20
_080DBA18: .4byte sub_080DEF64

	thumb_func_start sub_080DBA1C
sub_080DBA1C: @ 0x080DBA1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080DBAEA
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DBAEA
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080DBAEA
	ldr r3, _080DBAF4 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_080DF2BC
_080DBAEA:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DBAF4: .4byte gUnk_02023530

	thumb_func_start sub_080DBAF8
sub_080DBAF8: @ 0x080DBAF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sb, r5
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r2, [r3]
	cmp r2, #0
	bne _080DBB30
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	beq _080DBB20
	b _080DBC74
_080DBB20:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	strh r2, [r5, #4]
	movs r0, #1
	strb r0, [r3]
	b _080DBC74
_080DBB30:
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	mov sl, r2
	cmp r0, r1
	ble _080DBB50
	str r1, [r5, #0x44]
	adds r0, r5, #0
	bl sub_080DBE3C
	b _080DBC74
_080DBB50:
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r4, #0
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6f
	bne _080DBB66
	adds r0, r5, #0
	adds r0, #0x83
	strb r4, [r0]
_080DBB66:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x20
	bne _080DBC4C
	adds r0, r5, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080DBB7A
	strb r4, [r0, #9]
_080DBB7A:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r4, [r0]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080DBC84 @ =gUnk_02023530
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080DBC88 @ =0x0000065E
	adds r0, r0, r2
	ldrb r6, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080DBC4C
	ldr r0, _080DBC8C @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080DBC4C
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080DBC4C
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r3, #0
	movs r3, #0x60
	adds r3, r3, r5
	mov r8, r3
	cmp r0, #0xf
	bls _080DBC0A
	movs r4, #1
_080DBBD2:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080DBBD2
	adds r0, r6, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_08002A44
_080DBC0A:
	ldr r1, _080DBC8C @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08002A1C
	ldr r2, _080DBC90 @ =gUnk_02020EE0
	ldr r0, _080DBC94 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DBC4C
	ldr r0, _080DBC98 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DBC4C
	adds r0, r6, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DBC4C:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x4c
	bne _080DBC74
	mov r4, sb
	adds r4, #0xb4
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	adds r0, r5, #0
	bl sub_080DCF18
	str r0, [r4]
	ldr r0, _080DBC9C @ =0x0000FF80
	mov r1, sl
	strh r0, [r1]
_080DBC74:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DBC84: .4byte gUnk_02023530
_080DBC88: .4byte 0x0000065E
_080DBC8C: .4byte gUnk_08352D80
_080DBC90: .4byte gUnk_02020EE0
_080DBC94: .4byte gUnk_0203AD3C
_080DBC98: .4byte gUnk_0203AD20
_080DBC9C: .4byte 0x0000FF80

	thumb_func_start sub_080DBCA0
sub_080DBCA0: @ 0x080DBCA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r6, #0
	movs r0, #3
	mov sb, r0
	movs r1, #2
	mov r8, r1
	mov sl, r1
	adds r7, r5, #0
	adds r4, r5, #0
	adds r4, #0xc0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DBD08
	adds r3, r5, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #4
	bls _080DBCD6
	strb r6, [r3]
	movs r0, #1
	strb r0, [r4]
	b _080DBCF2
_080DBCD6:
	ldr r2, _080DBCFC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DBD00 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DBD04 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DBD08
	strb r6, [r3]
	strb r1, [r4]
_080DBCF2:
	adds r0, r5, #0
	bl sub_080DF158
	b _080DBE2E
	.align 2, 0
_080DBCFC: .4byte gRngVal
_080DBD00: .4byte 0x00196225
_080DBD04: .4byte 0x3C6EF35F
_080DBD08:
	adds r1, r7, #0
	adds r1, #0xc0
	movs r0, #0
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r4, r0, #0
	adds r3, r5, #0
	adds r3, #0xac
	str r4, [r3]
	ldr r2, _080DBD80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DBD84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DBD88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r6, r0, #0x10
	movs r0, #7
	ands r6, r0
	ldr r0, [r4, #0x40]
	ldr r1, _080DBD8C @ =0xFFFFD000
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #8
	cmp r0, r1
	bls _080DBD4E
	movs r0, #1
	mov sb, r0
_080DBD4E:
	ldr r1, [r4, #0x44]
	movs r0, #0x90
	lsls r0, r0, #7
	adds r4, r7, #0
	adds r4, #0xc1
	cmp r1, r0
	ble _080DBD62
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DBD66
_080DBD62:
	movs r1, #0
	mov r8, r1
_080DBD66:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DBD94
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	ldr r0, _080DBD90 @ =0x00004FFF
	adds r2, r7, #0
	adds r2, #0xc2
	cmp r1, r0
	ble _080DBDB0
	b _080DBDA4
	.align 2, 0
_080DBD80: .4byte gRngVal
_080DBD84: .4byte 0x00196225
_080DBD88: .4byte 0x3C6EF35F
_080DBD8C: .4byte 0xFFFFD000
_080DBD90: .4byte 0x00004FFF
_080DBD94:
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #8
	adds r2, r7, #0
	adds r2, #0xc2
	cmp r1, r0
	bgt _080DBDB0
_080DBDA4:
	adds r1, r7, #0
	adds r1, #0xc2
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #0
	beq _080DBDB4
_080DBDB0:
	movs r0, #0
	mov sl, r0
_080DBDB4:
	cmp r6, r8
	bhs _080DBDC8
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	strb r1, [r2]
	adds r0, r5, #0
	bl sub_080DF02C
	b _080DBE2E
_080DBDC8:
	mov r0, r8
	add r0, sb
	cmp r6, r0
	bge _080DBDDE
	movs r0, #0
	strb r0, [r4]
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080DBF40
	b _080DBE2E
_080DBDDE:
	add r0, sl
	cmp r6, r0
	bge _080DBDF4
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	strb r1, [r4]
	adds r0, r5, #0
	bl sub_080DCB38
	b _080DBE2E
_080DBDF4:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r2]
	ldr r2, _080DBE1C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DBE20 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DBE24 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DBE28
	adds r0, r5, #0
	bl sub_080DF118
	b _080DBE2E
	.align 2, 0
_080DBE1C: .4byte gRngVal
_080DBE20: .4byte 0x00196225
_080DBE24: .4byte 0x3C6EF35F
_080DBE28:
	adds r0, r5, #0
	bl sub_080DCDC0
_080DBE2E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DBE3C
sub_080DBE3C: @ 0x080DBE3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DBE60 @ =sub_080DBEE0
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	ldr r0, _080DBE64 @ =0x00007FFF
	cmp r1, r0
	bgt _080DBE68
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #7
	b _080DBE74
	.align 2, 0
_080DBE60: .4byte sub_080DBEE0
_080DBE64: .4byte 0x00007FFF
_080DBE68:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xb0
	lsls r0, r0, #8
_080DBE74:
	str r0, [r4, #0x40]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080DBED4 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x9f
	movs r0, #2
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DBEC8
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DBED8 @ =gUnk_08351530
	ldr r0, _080DBEDC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x68
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DBECC
_080DBEC8:
	movs r0, #1
	strb r0, [r3]
_080DBECC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DBED4: .4byte 0xFFFFFDFF
_080DBED8: .4byte gUnk_08351530
_080DBEDC: .4byte gUnk_0203AD30

	thumb_func_start sub_080DBEE0
sub_080DBEE0: @ 0x080DBEE0
	push {lr}
	adds r3, r0, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	cmp r1, #0
	bne _080DBEF8
	subs r0, #0x4d
	strh r1, [r0]
	adds r0, r3, #0
	bl sub_080DBCA0
	b _080DBF3C
_080DBEF8:
	ldrh r0, [r3, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x2f
	bgt _080DBF18
	ldr r0, _080DBF14 @ =gUnk_083567D4
	asrs r1, r1, #0x13
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r3, #0
	adds r2, #0x52
	strh r0, [r2]
	b _080DBF20
	.align 2, 0
_080DBF14: .4byte gUnk_083567D4
_080DBF18:
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_080DBF20:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	ble _080DBF3C
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080DBF3C:
	pop {r0}
	bx r0

	thumb_func_start sub_080DBF40
sub_080DBF40: @ 0x080DBF40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080DC01C @ =sub_080DC050
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x5a
	strh r0, [r4, #4]
	ldr r1, _080DC020 @ =gUnk_02020EE0
	ldr r0, _080DC024 @ =gUnk_0203AD3C
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
	bne _080DBFC8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DBF88
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DBFC8
_080DBF88:
	ldr r1, _080DC028 @ =gUnk_08D60FA4
	ldr r5, _080DC02C @ =gSongTable
	ldr r2, _080DC030 @ =0x00000C04
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DBFAE
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DBFC8
_080DBFAE:
	cmp r3, #0
	beq _080DBFC0
	ldr r0, _080DC034 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DBFC8
_080DBFC0:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DBFC8:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DBFF2
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DC038 @ =gUnk_08351530
	ldr r0, _080DC03C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x68
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DC016
_080DBFF2:
	ldr r2, _080DC040 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DC044 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DC048 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC016
	ldr r0, _080DC04C @ =sub_080DC1CC
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
_080DC016:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DC01C: .4byte sub_080DC050
_080DC020: .4byte gUnk_02020EE0
_080DC024: .4byte gUnk_0203AD3C
_080DC028: .4byte gUnk_08D60FA4
_080DC02C: .4byte gSongTable
_080DC030: .4byte 0x00000C04
_080DC034: .4byte gUnk_0203AD10
_080DC038: .4byte gUnk_08351530
_080DC03C: .4byte gUnk_0203AD30
_080DC040: .4byte gRngVal
_080DC044: .4byte 0x00196225
_080DC048: .4byte 0x3C6EF35F
_080DC04C: .4byte sub_080DC1CC

	thumb_func_start sub_080DC050
sub_080DC050: @ 0x080DC050
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC114 @ =gUnk_08356418
	cmp r0, #0
	bne _080DC14C
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC080
	subs r0, r2, #1
	strb r0, [r4]
_080DC080:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC0A6
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC0A6:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC118
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC0E4
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC0E4
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC0E4:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC14C
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC14C
	.align 2, 0
_080DC114: .4byte gUnk_08356418
_080DC118:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC176
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC14C:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC176
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC188
_080DC176:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC188:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC1C6
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC1C6
	mov r0, ip
	bl sub_080DBE3C
_080DC1C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080DC1CC
sub_080DC1CC: @ 0x080DC1CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080DC28C @ =gUnk_0835658C
	cmp r0, #0
	bne _080DC2C2
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC1FC
	subs r0, r2, #1
	strb r0, [r4]
_080DC1FC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC222
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_080DC222:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC290
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC25E
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC25E
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC25E:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC2C2
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080DC2C2
	.align 2, 0
_080DC28C: .4byte gUnk_0835658C
_080DC290:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r5, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC2EC
	rsbs r0, r6, #0
	strh r0, [r2]
_080DC2C2:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r4, r5, #0
	adds r4, #0x9f
	adds r2, r5, #0
	adds r2, #0x50
	adds r3, r5, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080DC2EC
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC2FE
_080DC2EC:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC2FE:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r2, r5, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	subs r3, r0, #1
	strb r3, [r2]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r4, r2, #0
	cmp r0, #0
	bne _080DC33E
	lsls r0, r3, #0x18
	cmp r0, #0
	bne _080DC33E
	adds r0, r5, #0
	bl sub_080DBE3C
_080DC33E:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _080DC3B4
	ldr r1, _080DC3BC @ =gUnk_02020EE0
	ldr r0, _080DC3C0 @ =gUnk_0203AD3C
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
	bne _080DC3B4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DC374
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DC3B4
_080DC374:
	ldr r1, _080DC3C4 @ =gUnk_08D60FA4
	ldr r4, _080DC3C8 @ =gSongTable
	ldr r3, _080DC3CC @ =0x00000C04
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DC39A
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DC3B4
_080DC39A:
	cmp r3, #0
	beq _080DC3AC
	ldr r0, _080DC3D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DC3B4
_080DC3AC:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DC3B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DC3BC: .4byte gUnk_02020EE0
_080DC3C0: .4byte gUnk_0203AD3C
_080DC3C4: .4byte gUnk_08D60FA4
_080DC3C8: .4byte gSongTable
_080DC3CC: .4byte 0x00000C04
_080DC3D0: .4byte gUnk_0203AD10

	thumb_func_start sub_080DC3D4
sub_080DC3D4: @ 0x080DC3D4
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC498 @ =gUnk_0835670C
	cmp r0, #0
	bne _080DC4D0
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC404
	subs r0, r2, #1
	strb r0, [r4]
_080DC404:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC42A
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC42A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC49C
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC468
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC468
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC468:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC4D0
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC4D0
	.align 2, 0
_080DC498: .4byte gUnk_0835670C
_080DC49C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC4FA
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC4D0:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC4FA
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC50C
_080DC4FA:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC50C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC54A
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC54A
	mov r0, ip
	bl sub_080DF088
_080DC54A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080DC550
sub_080DC550: @ 0x080DC550
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC614 @ =gUnk_08356784
	cmp r0, #0
	bne _080DC64C
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC580
	subs r0, r2, #1
	strb r0, [r4]
_080DC580:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC5A6
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC5A6:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC618
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC5E4
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC5E4
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC5E4:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC64C
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC64C
	.align 2, 0
_080DC614: .4byte gUnk_08356784
_080DC618:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC676
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC64C:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC676
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC688
_080DC676:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC688:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC6D0
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC6D0
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r3, #8]
	mov r0, ip
	bl sub_080DF088
_080DC6D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DC6D8
sub_080DC6D8: @ 0x080DC6D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DC6EC
	adds r0, r4, #0
	bl sub_080DE188
_080DC6EC:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080DC75E
	ldr r1, _080DC77C @ =gUnk_02020EE0
	ldr r0, _080DC780 @ =gUnk_0203AD3C
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
	bne _080DC75E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DC722
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DC75E
_080DC722:
	ldr r1, _080DC784 @ =gUnk_08D60FA4
	ldr r5, _080DC788 @ =gSongTable
	ldr r2, _080DC78C @ =0x00000BFC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DC746
	ldr r1, _080DC790 @ =0x00000BF8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DC75E
_080DC746:
	cmp r3, #0
	beq _080DC758
	ldr r0, _080DC794 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DC75E
_080DC758:
	ldr r0, _080DC798 @ =0x0000017F
	bl m4aSongNumStart
_080DC75E:
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x8f
	bgt _080DC7A0
	ldr r2, _080DC79C @ =gUnk_083567CC
	asrs r0, r1, #0x12
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	b _080DC7A6
	.align 2, 0
_080DC77C: .4byte gUnk_02020EE0
_080DC780: .4byte gUnk_0203AD3C
_080DC784: .4byte gUnk_08D60FA4
_080DC788: .4byte gSongTable
_080DC78C: .4byte 0x00000BFC
_080DC790: .4byte 0x00000BF8
_080DC794: .4byte gUnk_0203AD10
_080DC798: .4byte 0x0000017F
_080DC79C: .4byte gUnk_083567CC
_080DC7A0:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
_080DC7A6:
	strh r0, [r1]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC7DC
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080DC7D8 @ =0x00001F7F
	cmp r0, r1
	bgt _080DC7F6
	movs r0, #0xfc
	lsls r0, r0, #5
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_080DF0C0
	b _080DC7F6
	.align 2, 0
_080DC7D8: .4byte 0x00001F7F
_080DC7DC:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080DC7FC @ =0x0000E080
	cmp r0, r1
	ble _080DC7F6
	str r1, [r4, #0x40]
	adds r0, r4, #0
	bl sub_080DF0C0
_080DC7F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DC7FC: .4byte 0x0000E080

	thumb_func_start sub_080DC800
sub_080DC800: @ 0x080DC800
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC8C4 @ =gUnk_08356748
	cmp r0, #0
	bne _080DC8FC
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC830
	subs r0, r2, #1
	strb r0, [r4]
_080DC830:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC856
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC856:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC8C8
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC894
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC894
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC894:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC8FC
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC8FC
	.align 2, 0
_080DC8C4: .4byte gUnk_08356748
_080DC8C8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC926
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC8FC:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC926
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC938
_080DC926:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC938:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC976
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC976
	mov r0, ip
	bl sub_080DBE3C
_080DC976:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080DC97C
sub_080DC97C: @ 0x080DC97C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x2f
	bgt _080DC99A
	ldr r0, _080DC9C0 @ =gUnk_083567D4
	asrs r1, r1, #0x13
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x52
	strh r0, [r2]
_080DC99A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	ble _080DC9C6
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r1, [r1]
	cmp r1, #0
	beq _080DC9C4
	cmp r0, #0x30
	ble _080DC9C6
	adds r0, r4, #0
	bl sub_080DBE3C
	b _080DCA3E
	.align 2, 0
_080DC9C0: .4byte gUnk_083567D4
_080DC9C4:
	strh r1, [r4, #4]
_080DC9C6:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080DC9EA
	movs r1, #0x30
	rsbs r1, r1, #0
	ldr r3, _080DCA10 @ =gRngVal
	ldr r2, [r3]
	ldr r0, _080DCA14 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080DCA18 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	movs r2, #8
	adds r0, r4, #0
	bl sub_080DDC44
_080DC9EA:
	ldr r2, [r4, #8]
	movs r5, #1
	ands r2, r5
	cmp r2, #0
	beq _080DCA20
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080DCA1C @ =0x00004FFF
	cmp r1, r0
	bgt _080DCA3E
	adds r0, #1
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	b _080DCA38
	.align 2, 0
_080DCA10: .4byte gRngVal
_080DCA14: .4byte 0x00196225
_080DCA18: .4byte 0x3C6EF35F
_080DCA1C: .4byte 0x00004FFF
_080DCA20:
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xb0
	lsls r1, r1, #8
	cmp r0, r1
	ble _080DCA3E
	str r1, [r4, #0x40]
	strh r2, [r3]
_080DCA38:
	adds r0, r4, #0
	adds r0, #0x9e
	strb r5, [r0]
_080DCA3E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080DCA44
sub_080DCA44: @ 0x080DCA44
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DCACA
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080DE064
	ldr r1, _080DCB14 @ =gUnk_02020EE0
	ldr r0, _080DCB18 @ =gUnk_0203AD3C
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
	bne _080DCACA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DCA8E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DCACA
_080DCA8E:
	ldr r1, _080DCB1C @ =gUnk_08D60FA4
	ldr r5, _080DCB20 @ =gSongTable
	ldr r2, _080DCB24 @ =0x00000B3C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DCAB2
	ldr r1, _080DCB28 @ =0x00000B38
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DCACA
_080DCAB2:
	cmp r3, #0
	beq _080DCAC4
	ldr r0, _080DCB2C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DCACA
_080DCAC4:
	ldr r0, _080DCB30 @ =0x00000167
	bl m4aSongNumStart
_080DCACA:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DCB0C
	ldr r2, _080DCB34 @ =gUnk_0835681B
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080DCB0C
	adds r0, r4, #0
	bl sub_080DBE3C
_080DCB0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DCB14: .4byte gUnk_02020EE0
_080DCB18: .4byte gUnk_0203AD3C
_080DCB1C: .4byte gUnk_08D60FA4
_080DCB20: .4byte gSongTable
_080DCB24: .4byte 0x00000B3C
_080DCB28: .4byte 0x00000B38
_080DCB2C: .4byte gUnk_0203AD10
_080DCB30: .4byte 0x00000167
_080DCB34: .4byte gUnk_0835681B

	thumb_func_start sub_080DCB38
sub_080DCB38: @ 0x080DCB38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DCB7C @ =sub_080DF18C
	movs r1, #1
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
	bne _080DCB78
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DCB80 @ =gUnk_08351530
	ldr r0, _080DCB84 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x68
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DCB88
_080DCB78:
	movs r0, #0x10
	b _080DCB8A
	.align 2, 0
_080DCB7C: .4byte sub_080DF18C
_080DCB80: .4byte gUnk_08351530
_080DCB84: .4byte gUnk_0203AD30
_080DCB88:
	movs r0, #0x24
_080DCB8A:
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DCBA0
sub_080DCBA0: @ 0x080DCBA0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DCC7C
	movs r6, #0
	adds r2, r5, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _080DCBC8
	adds r0, r4, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080DCBC8:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080DCBD6
	movs r6, #1
_080DCBD6:
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_080DE658
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080DE658
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DCC5C
	ldr r1, _080DCC98 @ =gUnk_02020EE0
	ldr r0, _080DCC9C @ =gUnk_0203AD3C
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
	bne _080DCC5C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DCC1C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DCC5C
_080DCC1C:
	ldr r1, _080DCCA0 @ =gUnk_08D60FA4
	ldr r4, _080DCCA4 @ =gSongTable
	ldr r2, _080DCCA8 @ =0x000009D4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DCC42
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DCC5C
_080DCC42:
	cmp r3, #0
	beq _080DCC54
	ldr r0, _080DCCAC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DCC5C
_080DCC54:
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DCC5C:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080DCC7C
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #4]
	strb r1, [r7]
_080DCC7C:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #6
	bne _080DCC92
	adds r0, r5, #0
	bl sub_080DBE3C
_080DCC92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DCC98: .4byte gUnk_02020EE0
_080DCC9C: .4byte gUnk_0203AD3C
_080DCCA0: .4byte gUnk_08D60FA4
_080DCCA4: .4byte gSongTable
_080DCCA8: .4byte 0x000009D4
_080DCCAC: .4byte gUnk_0203AD10

	thumb_func_start sub_080DCCB0
sub_080DCCB0: @ 0x080DCCB0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DCD8C
	movs r6, #0
	adds r2, r5, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _080DCCD8
	adds r0, r4, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080DCCD8:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080DCCE6
	movs r6, #1
_080DCCE6:
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_080DE658
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080DE658
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DCD6C
	ldr r1, _080DCDA8 @ =gUnk_02020EE0
	ldr r0, _080DCDAC @ =gUnk_0203AD3C
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
	bne _080DCD6C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DCD2C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DCD6C
_080DCD2C:
	ldr r1, _080DCDB0 @ =gUnk_08D60FA4
	ldr r4, _080DCDB4 @ =gSongTable
	ldr r2, _080DCDB8 @ =0x000009D4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DCD52
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DCD6C
_080DCD52:
	cmp r3, #0
	beq _080DCD64
	ldr r0, _080DCDBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DCD6C
_080DCD64:
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DCD6C:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080DCD8C
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #4]
	strb r1, [r7]
_080DCD8C:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080DCDA2
	adds r0, r5, #0
	bl sub_080DBE3C
_080DCDA2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DCDA8: .4byte gUnk_02020EE0
_080DCDAC: .4byte gUnk_0203AD3C
_080DCDB0: .4byte gUnk_08D60FA4
_080DCDB4: .4byte gSongTable
_080DCDB8: .4byte 0x000009D4
_080DCDBC: .4byte gUnk_0203AD10

	thumb_func_start sub_080DCDC0
sub_080DCDC0: @ 0x080DCDC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DCE04 @ =sub_080DF1E4
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	subs r1, r1, r0
	lsrs r1, r1, #5
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DCE08
	movs r0, #0xc
	b _080DCE0A
	.align 2, 0
_080DCE04: .4byte sub_080DF1E4
_080DCE08:
	movs r0, #0x18
_080DCE0A:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DCE28
sub_080DCE28: @ 0x080DCE28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, _080DCE44 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #0x1f
	ble _080DCE48
	adds r0, r4, #0
	bl sub_080DF21C
	b _080DCE9C
	.align 2, 0
_080DCE44: .4byte 0xFFFFF7FF
_080DCE48:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DCE82
	cmp r1, #7
	ble _080DCE82
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r0, [r5]
	cmp r0, #0
	beq _080DCE6C
	adds r0, r4, #0
	movs r1, #1
	bl sub_080DEA94
	movs r0, #0
	strb r0, [r5]
_080DCE6C:
	ldrh r1, [r4, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DCE82
	adds r0, r4, #0
	movs r1, #0
	bl sub_080DEA94
	movs r0, #1
	strb r0, [r5]
_080DCE82:
	ldr r1, _080DCEA4 @ =gUnk_083567E0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080DCE9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DCEA4: .4byte gUnk_083567E0

	thumb_func_start sub_080DCEA8
sub_080DCEA8: @ 0x080DCEA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #4
	ldrsh r2, [r4, r0]
	cmp r2, #0x63
	ble _080DCEBC
	adds r0, r4, #0
	bl sub_080DF258
	b _080DCF0E
_080DCEBC:
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r1, [r5]
	cmp r0, r1
	blt _080DCF08
	cmp r2, #0x54
	bgt _080DCF08
	cmp r1, #0
	beq _080DCEDE
	adds r0, r4, #0
	movs r1, #1
	bl sub_080DEA94
	movs r0, #0
	strb r0, [r5]
_080DCEDE:
	ldrh r1, [r4, #4]
	movs r6, #3
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080DCEF6
	adds r0, r4, #0
	movs r1, #0
	bl sub_080DEA94
	movs r0, #1
	strb r0, [r5]
_080DCEF6:
	ldr r2, _080DCF14 @ =gUnk_0835681B
	ldrh r1, [r4, #4]
	adds r0, r6, #0
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
_080DCF08:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080DCF0E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080DCF14: .4byte gUnk_0835681B

	thumb_func_start sub_080DCF18
sub_080DCF18: @ 0x080DCF18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080DCF48 @ =sub_080DD044
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DCF4C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DCF50
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DCF58
	.align 2, 0
_080DCF48: .4byte sub_080DD044
_080DCF4C: .4byte sub_0803DCCC
_080DCF50:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DCF58:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r6, r5, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r3, _080DCFCC @ =0x00000339
	movs r0, #9
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x30
	bl sub_080709F8
	adds r4, r5, #0
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080DCFD0 @ =gUnk_02020EE0
	ldr r0, _080DCFD4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DCFDC
	ldr r6, _080DCFD8 @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DCFDE
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DCFDE
	.align 2, 0
_080DCFCC: .4byte 0x00000339
_080DCFD0: .4byte gUnk_02020EE0
_080DCFD4: .4byte gUnk_0203AD3C
_080DCFD8: .4byte 0x0000033B
_080DCFDC:
	strb r7, [r4]
_080DCFDE:
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r6, #0
	strh r0, [r5, #8]
	strb r6, [r2]
	ldr r3, _080DD028 @ =gUnk_02020EE0
	ldr r0, _080DD02C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r4, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DD034
	ldr r6, _080DD030 @ =0x0000033A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD036
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DD036
	.align 2, 0
_080DD028: .4byte gUnk_02020EE0
_080DD02C: .4byte gUnk_0203AD3C
_080DD030: .4byte 0x0000033A
_080DD034:
	strb r6, [r4]
_080DD036:
	ldrb r0, [r4]
	strh r0, [r5, #4]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DD044
sub_080DD044: @ 0x080DD044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	movs r0, #0
	mov r8, r0
	ldr r2, _080DD070 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD074
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD07C
	.align 2, 0
_080DD070: .4byte gCurTask
_080DD074:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD07C:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DD096
	ldr r0, [r2]
	bl TaskDestroy
	b _080DD54A
_080DD096:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DD0A6
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DD54A
_080DD0A6:
	ldr r2, _080DD110 @ =gUnk_02020EE0
	ldr r0, _080DD114 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov sl, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DD158
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DD120
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD17E
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x30
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD118 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DD11C @ =0x0400000A
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
	b _080DD17E
	.align 2, 0
_080DD110: .4byte gUnk_02020EE0
_080DD114: .4byte gUnk_0203AD3C
_080DD118: .4byte 0xFFF7FFFF
_080DD11C: .4byte 0x0400000A
_080DD120:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD17E
	movs r0, #0x30
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD150 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DD154 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DD17E
	.align 2, 0
_080DD150: .4byte 0xFFF7FFFF
_080DD154: .4byte 0x0400000A
_080DD158:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DD174
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DD174
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DD174:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DD17E:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r3, [r0]
	adds r6, r0, #0
	cmp r3, #0
	bne _080DD18E
	movs r2, #1
	mov r8, r2
_080DD18E:
	ldr r2, _080DD1C8 @ =gUnk_02020EE0
	ldr r0, _080DD1CC @ =gUnk_0203AD3C
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
	bne _080DD1D4
	cmp r3, #0
	bne _080DD1D8
	ldr r4, _080DD1D0 @ =0x0000033B
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD1D8
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DD1D6
	.align 2, 0
_080DD1C8: .4byte gUnk_02020EE0
_080DD1CC: .4byte gUnk_0203AD3C
_080DD1D0: .4byte 0x0000033B
_080DD1D4:
	movs r0, #0
_080DD1D6:
	strb r0, [r6]
_080DD1D8:
	mov r2, r8
	cmp r2, #0
	beq _080DD236
	ldrb r0, [r6]
	movs r3, #0
	strh r0, [r5, #8]
	strb r3, [r6]
	ldr r2, _080DD220 @ =gUnk_02020EE0
	ldr r0, _080DD224 @ =gUnk_0203AD3C
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
	bne _080DD22C
	ldr r4, _080DD228 @ =0x0000033A
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD22E
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r6]
	b _080DD22E
	.align 2, 0
_080DD220: .4byte gUnk_02020EE0
_080DD224: .4byte gUnk_0203AD3C
_080DD228: .4byte 0x0000033A
_080DD22C:
	strb r3, [r6]
_080DD22E:
	ldrb r0, [r6]
	strh r0, [r5, #4]
	ldrh r0, [r5, #8]
	strb r0, [r6]
_080DD236:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DD240
	strh r0, [r5, #8]
	strh r0, [r5, #4]
_080DD240:
	ldr r0, _080DD28C @ =gUnk_03000510
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
	beq _080DD294
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD294
	ldrh r0, [r5, #8]
	strb r0, [r6]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD290 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803DBC8
	ldrh r0, [r5, #4]
	strb r0, [r6]
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DD54A
	.align 2, 0
_080DD28C: .4byte gUnk_03000510
_080DD290: .4byte 0xFFFFF7FF
_080DD294:
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	adds r4, r7, #0
	adds r4, #0x54
	ldrb r0, [r4]
	adds r3, r5, #0
	adds r3, #0x40
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0x55
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x41
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r0, [r0]
	str r4, [sp, #0x30]
	str r3, [sp, #0x28]
	str r2, [sp, #0x34]
	str r1, [sp, #0x2c]
	cmp r0, #1
	beq _080DD2EE
	cmp r0, #1
	bgt _080DD2D0
	cmp r0, #0
	beq _080DD2D6
	b _080DD2EE
_080DD2D0:
	cmp r0, #2
	beq _080DD2E6
	b _080DD2EE
_080DD2D6:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xa
	b _080DD2FC
_080DD2E6:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0x12
	b _080DD2FC
_080DD2EE:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #9
_080DD2FC:
	strb r0, [r1]
	adds r3, r1, #0
	ldrh r1, [r5, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DD318
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080DD322
_080DD318:
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _080DD3A8 @ =0xFFFFFBFF
	ands r1, r2
_080DD322:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldrh r4, [r5, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r5
	mov r8, r0
	cmp r2, #0
	bne _080DD3C6
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r1, [r0]
	mov sb, r0
	ldrb r3, [r3]
	cmp r1, r3
	bne _080DD350
	ldrh r0, [r5, #0x24]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	beq _080DD366
_080DD350:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080DD366
	strb r2, [r5, #1]
	strh r2, [r5, #2]
	ldr r0, _080DD3AC @ =0x0000FFFB
	ands r0, r4
	strh r0, [r5, #6]
_080DD366:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080DD3B0
	ldrh r0, [r5, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r5, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080DD3C6
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DD3C6
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1]
	ldrh r1, [r5, #6]
	ldr r0, _080DD3AC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r5, #6]
	strb r3, [r5, #1]
	strh r2, [r5, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _080DD3C6
	.align 2, 0
_080DD3A8: .4byte 0xFFFFFBFF
_080DD3AC: .4byte 0x0000FFFB
_080DD3B0:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r1, [r5, #6]
	ldr r0, _080DD478 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_080DD3C6:
	ldr r2, [r5, #0x34]
	asrs r2, r2, #8
	ldr r3, _080DD47C @ =gUnk_02023530
	ldr r0, _080DD480 @ =gUnk_0203AD3C
	mov ip, r0
	ldrb r0, [r0]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	ldr r1, [sp, #0x28]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	mov sb, r1
	mov r1, ip
	ldrb r0, [r1]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, sb
	subs r1, r3, r0
	ldr r3, [sp, #0x2c]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DD422
	ldr r3, [sp, #0x28]
	strb r2, [r3]
	ldr r0, [sp, #0x2c]
	strb r2, [r0]
_080DD422:
	ldr r0, [r5, #0x14]
	ldr r1, _080DD484 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #8]
	strb r0, [r6]
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080DD496
	ldr r2, _080DD488 @ =gUnk_02020EE0
	mov r0, ip
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
	bne _080DD496
	ldr r1, _080DD48C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x1c]
	adds r0, r0, r2
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r5, #0x1e]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DD490
	adds r0, r7, #0
	bl sub_081564D8
	b _080DD496
	.align 2, 0
_080DD478: .4byte 0x0000FFFD
_080DD47C: .4byte gUnk_02023530
_080DD480: .4byte gUnk_0203AD3C
_080DD484: .4byte 0xFFFFF7FF
_080DD488: .4byte gUnk_02020EE0
_080DD48C: .4byte gUnk_0203AD18
_080DD490:
	adds r0, r7, #0
	bl sub_0815604C
_080DD496:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #4]
	strb r0, [r6]
	ldr r2, [sp, #0x30]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	ldr r2, [r5, #0x34]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r3, _080DD534 @ =gUnk_02023530
	ldr r6, _080DD538 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r0, r8
	strh r0, [r5, #0x1c]
	ldr r1, [sp, #0x34]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x38]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r6]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r5, #0x1e]
	ldrh r4, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080DD54A
	ldr r2, _080DD53C @ =gUnk_02020EE0
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bne _080DD54A
	ldr r1, _080DD540 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080DD544
	adds r0, r7, #0
	bl sub_081564D8
	b _080DD54A
	.align 2, 0
_080DD534: .4byte gUnk_02023530
_080DD538: .4byte gUnk_0203AD3C
_080DD53C: .4byte gUnk_02020EE0
_080DD540: .4byte gUnk_0203AD18
_080DD544:
	adds r0, r7, #0
	bl sub_0815604C
_080DD54A:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DD55C
sub_080DD55C: @ 0x080DD55C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DD58C @ =sub_080DD62C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DD590 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD594
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD59C
	.align 2, 0
_080DD58C: .4byte sub_080DD62C
_080DD590: .4byte sub_0803DCCC
_080DD594:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD59C:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080DD610 @ =0x00000339
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x40
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	ldr r2, _080DD614 @ =gUnk_02020EE0
	ldr r0, _080DD618 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DD620
	ldr r6, _080DD61C @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD622
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DD622
	.align 2, 0
_080DD610: .4byte 0x00000339
_080DD614: .4byte gUnk_02020EE0
_080DD618: .4byte gUnk_0203AD3C
_080DD61C: .4byte 0x0000033B
_080DD620:
	strb r7, [r5]
_080DD622:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DD62C
sub_080DD62C: @ 0x080DD62C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080DD650 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD654
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD65C
	.align 2, 0
_080DD650: .4byte gCurTask
_080DD654:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD65C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DD678
	ldr r0, [r2]
	bl TaskDestroy
	b _080DD8CA
_080DD678:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DD68A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DD8CA
_080DD68A:
	ldr r2, _080DD6F4 @ =gUnk_02020EE0
	ldr r0, _080DD6F8 @ =gUnk_0203AD3C
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
	bne _080DD73C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DD704
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD762
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x40
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD6FC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DD700 @ =0x0400000A
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
	b _080DD762
	.align 2, 0
_080DD6F4: .4byte gUnk_02020EE0
_080DD6F8: .4byte gUnk_0203AD3C
_080DD6FC: .4byte 0xFFF7FFFF
_080DD700: .4byte 0x0400000A
_080DD704:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD762
	movs r0, #0x40
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD734 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DD738 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DD762
	.align 2, 0
_080DD734: .4byte 0xFFF7FFFF
_080DD738: .4byte 0x0400000A
_080DD73C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DD758
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DD758
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DD758:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DD762:
	ldr r2, _080DD7A4 @ =gUnk_02020EE0
	ldr r0, _080DD7A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080DD7B0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DD7B8
	ldr r6, _080DD7AC @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD7B8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DD7B8
	.align 2, 0
_080DD7A4: .4byte gUnk_02020EE0
_080DD7A8: .4byte gUnk_0203AD3C
_080DD7AC: .4byte 0x0000033B
_080DD7B0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DD7B8:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DD80C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DD7D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DD7D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DD7D6:
	cmp r3, #0
	beq _080DD80C
	ldr r0, _080DD808 @ =gUnk_03000510
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
	beq _080DD878
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD878
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DD8CA
	.align 2, 0
_080DD808: .4byte gUnk_03000510
_080DD80C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DD870 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DD84A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #4
_080DD84A:
	ldr r0, _080DD874 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DD878
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD878
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DD8CA
	.align 2, 0
_080DD870: .4byte gUnk_02020EE0
_080DD874: .4byte gUnk_03000510
_080DD878:
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _080DD8AA
	cmp r0, #1
	bgt _080DD88C
	cmp r0, #0
	beq _080DD892
	b _080DD8AA
_080DD88C:
	cmp r0, #2
	beq _080DD8A2
	b _080DD8AA
_080DD892:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xd
	b _080DD8B8
_080DD8A2:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0x11
	b _080DD8B8
_080DD8AA:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xc
_080DD8B8:
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x38]
	adds r0, r5, #0
	bl sub_0806FAC8
_080DD8CA:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DD8D8
sub_080DD8D8: @ 0x080DD8D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DD90C @ =sub_080DD9B4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DD910 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD914
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD91C
	.align 2, 0
_080DD90C: .4byte sub_080DD9B4
_080DD910: .4byte sub_0803DCCC
_080DD914:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD91C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r2, #0
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080DD994 @ =0x00000339
	str r2, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #9
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080DD998 @ =gUnk_02020EE0
	ldr r0, _080DD99C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DD9A0
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD9A4
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DD9A4
	.align 2, 0
_080DD994: .4byte 0x00000339
_080DD998: .4byte gUnk_02020EE0
_080DD99C: .4byte gUnk_0203AD3C
_080DD9A0:
	mov r1, r8
	strb r1, [r5]
_080DD9A4:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080DD9B4
sub_080DD9B4: @ 0x080DD9B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080DD9D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD9DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD9E4
	.align 2, 0
_080DD9D8: .4byte gCurTask
_080DD9DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD9E4:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DDA00
	ldr r0, [r2]
	bl TaskDestroy
	b _080DDC38
_080DDA00:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DDA12
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DDC38
_080DDA12:
	ldr r2, _080DDA7C @ =gUnk_02020EE0
	ldr r0, _080DDA80 @ =gUnk_0203AD3C
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
	bne _080DDAC4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DDA8C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDAEA
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
	ldr r1, _080DDA84 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DDA88 @ =0x0400000A
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
	b _080DDAEA
	.align 2, 0
_080DDA7C: .4byte gUnk_02020EE0
_080DDA80: .4byte gUnk_0203AD3C
_080DDA84: .4byte 0xFFF7FFFF
_080DDA88: .4byte 0x0400000A
_080DDA8C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDAEA
	movs r0, #9
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDABC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DDAC0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DDAEA
	.align 2, 0
_080DDABC: .4byte 0xFFF7FFFF
_080DDAC0: .4byte 0x0400000A
_080DDAC4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DDAE0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DDAE0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DDAE0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DDAEA:
	ldr r2, _080DDB2C @ =gUnk_02020EE0
	ldr r0, _080DDB30 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080DDB38
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DDB40
	ldr r6, _080DDB34 @ =0x00000339
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDB40
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DDB40
	.align 2, 0
_080DDB2C: .4byte gUnk_02020EE0
_080DDB30: .4byte gUnk_0203AD3C
_080DDB34: .4byte 0x00000339
_080DDB38:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DDB40:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DDB94
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DDB5E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DDB5E
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DDB5E:
	cmp r3, #0
	beq _080DDB94
	ldr r0, _080DDB90 @ =gUnk_03000510
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
	beq _080DDC00
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDC00
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DDC38
	.align 2, 0
_080DDB90: .4byte gUnk_03000510
_080DDB94:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DDBF8 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #4
_080DDBD2:
	ldr r0, _080DDBFC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DDC00
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDC00
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DDC38
	.align 2, 0
_080DDBF8: .4byte gUnk_02020EE0
_080DDBFC: .4byte gUnk_03000510
_080DDC00:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x38]
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x41
	strb r0, [r1]
	adds r0, r5, #0
	mov r1, r8
	bl sub_080DDFB4
	adds r0, r5, #0
	bl sub_0806FAC8
_080DDC38:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DDC44
sub_080DDC44: @ 0x080DDC44
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080DDC7C @ =sub_080DDD60
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DDC80 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DDC84
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DDC8C
	.align 2, 0
_080DDC7C: .4byte sub_080DDD60
_080DDC80: .4byte sub_0803DCCC
_080DDC84:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DDC8C:
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
	movs r3, #0
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r4, #6]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DDCDA
	lsls r0, r6, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	str r1, [r4, #0x34]
	movs r0, #1
	orrs r2, r0
	strh r2, [r4, #6]
	b _080DDCE4
_080DDCDA:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
_080DDCE4:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r6, _080DDD48 @ =0x0000033B
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080DDD4C @ =gUnk_02020EE0
	ldr r0, _080DDD50 @ =gUnk_0203AD3C
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
	bne _080DDD54
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDD56
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DDD56
	.align 2, 0
_080DDD48: .4byte 0x0000033B
_080DDD4C: .4byte gUnk_02020EE0
_080DDD50: .4byte gUnk_0203AD3C
_080DDD54:
	strb r3, [r5]
_080DDD56:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DDD60
sub_080DDD60: @ 0x080DDD60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080DDD80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DDD84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DDD8C
	.align 2, 0
_080DDD80: .4byte gCurTask
_080DDD84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DDD8C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080DDDA2
	ldr r0, [r2]
	bl TaskDestroy
	b _080DDFAC
_080DDDA2:
	ldr r2, _080DDE08 @ =gUnk_02020EE0
	ldr r0, _080DDE0C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DDE50
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DDE18
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDE76
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
	ldr r1, _080DDE10 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DDE14 @ =0x0400000A
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
	b _080DDE76
	.align 2, 0
_080DDE08: .4byte gUnk_02020EE0
_080DDE0C: .4byte gUnk_0203AD3C
_080DDE10: .4byte 0xFFF7FFFF
_080DDE14: .4byte 0x0400000A
_080DDE18:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDE76
	movs r0, #9
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDE48 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DDE4C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DDE76
	.align 2, 0
_080DDE48: .4byte 0xFFF7FFFF
_080DDE4C: .4byte 0x0400000A
_080DDE50:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DDE6C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DDE6C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DDE6C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DDE76:
	ldr r2, _080DDEBC @ =gUnk_02020EE0
	ldr r0, _080DDEC0 @ =gUnk_0203AD3C
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
	bne _080DDEC8
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DDED0
	ldr r6, _080DDEC4 @ =0x00000339
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDED0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DDED0
	.align 2, 0
_080DDEBC: .4byte gUnk_02020EE0
_080DDEC0: .4byte gUnk_0203AD3C
_080DDEC4: .4byte 0x00000339
_080DDEC8:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DDED0:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DDF24
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DDEEE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DDEEE
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DDEEE:
	cmp r3, #0
	beq _080DDF24
	ldr r0, _080DDF20 @ =gUnk_03000510
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
	beq _080DDF90
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDF90
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DDFAC
	.align 2, 0
_080DDF20: .4byte gUnk_03000510
_080DDF24:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DDF88 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DDF62
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #4
_080DDF62:
	ldr r0, _080DDF8C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DDF90
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDF90
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DDFAC
	.align 2, 0
_080DDF88: .4byte gUnk_02020EE0
_080DDF8C: .4byte gUnk_03000510
_080DDF90:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DDFA6
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080DDFAC
_080DDFA6:
	adds r0, r5, #0
	bl sub_0806FAC8
_080DDFAC:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DDFB4
sub_080DDFB4: @ 0x080DDFB4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r0, [r3, #0x40]
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r3, #0x44]
	ldr r2, [r2, #0x44]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	asrs r1, r0, #0xd
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080DE05C
	lsls r0, r1, #2
	ldr r1, _080DDFF8 @ =_080DDFFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080DDFF8: .4byte _080DDFFC
_080DDFFC: @ jump table
	.4byte _080DE01C @ case 0
	.4byte _080DE024 @ case 1
	.4byte _080DE02C @ case 2
	.4byte _080DE034 @ case 3
	.4byte _080DE03C @ case 4
	.4byte _080DE044 @ case 5
	.4byte _080DE04C @ case 6
	.4byte _080DE054 @ case 7
_080DE01C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
	b _080DE05A
_080DE024:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #7
	b _080DE05A
_080DE02C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #6
	b _080DE05A
_080DE034:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #5
	b _080DE05A
_080DE03C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #4
	b _080DE05A
_080DE044:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #3
	b _080DE05A
_080DE04C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #2
	b _080DE05A
_080DE054:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #1
_080DE05A:
	strb r0, [r1]
_080DE05C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DE064
sub_080DE064: @ 0x080DE064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0x18
	mov sl, r0
	ldr r3, _080DE0A8 @ =gRngVal
	ldr r0, [r3]
	ldr r4, _080DE0AC @ =0x00196225
	muls r0, r4, r0
	ldr r1, _080DE0B0 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DE0B4
	movs r2, #0x12
	str r2, [sp]
	mov sb, r1
	b _080DE0E0
	.align 2, 0
_080DE0A8: .4byte gRngVal
_080DE0AC: .4byte 0x00196225
_080DE0B0: .4byte 0x3C6EF35F
_080DE0B4:
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r4, _080DE0D4 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080DE0D8
	movs r7, #0x13
	str r7, [sp]
	movs r0, #1
	mov sb, r0
	b _080DE0E0
	.align 2, 0
_080DE0D4: .4byte 0x3C6EF35F
_080DE0D8:
	movs r1, #0x1c
	str r1, [sp]
	movs r2, #0
	mov sb, r2
_080DE0E0:
	movs r4, #0
	ldr r1, _080DE0F8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080DE0FC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080DE114
	.align 2, 0
_080DE0F8: .4byte gUnk_020229D4
_080DE0FC: .4byte gUnk_020229E0
_080DE100:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080DE11C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080DE114:
	cmp r0, #0
	bne _080DE100
	orrs r2, r3
	str r2, [r1]
_080DE11C:
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
	mov r0, ip
	strh r0, [r1, #6]
	mov r4, sl
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r7, sp
	ldrb r7, [r7]
	strb r7, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	strb r4, [r1, #0x10]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r5, [r0, #0x70]
	ldr r1, _080DE184 @ =sub_0809F840
	str r1, [r0, #0x7c]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE184: .4byte sub_0809F840

	thumb_func_start sub_080DE188
sub_080DE188: @ 0x080DE188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r3, #0
	ldr r2, _080DE29C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DE2A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DE2A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r1, #0
	ldr r0, _080DE2A8 @ =0x00001555
	mov sb, r2
	cmp r5, r0
	blt _080DE1C4
	adds r2, r0, #0
_080DE1B2:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xa
	bhi _080DE1C4
	adds r0, r1, #1
	muls r0, r2, r0
	cmp r5, r0
	bge _080DE1B2
_080DE1C4:
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _080DE2A0 @ =0x00196225
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r6, _080DE2A4 @ =0x3C6EF35F
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	lsls r4, r3, #0x18
	asrs r4, r4, #0x18
	adds r4, #8
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	subs r4, r4, r0
	ldr r0, _080DE2AC @ =gUnk_08356800
	adds r0, r7, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r5, #0x20
	lsls r5, r5, #0x18
	asrs r2, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_080DE2B4
	ldr r0, _080DE2B0 @ =gUnk_0835680C
	adds r0, r7, r0
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080DE2A8 @ =0x00001555
	cmp r2, r0
	blt _080DE246
	adds r6, r0, #0
_080DE234:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xa
	bhi _080DE246
	adds r0, r1, #1
	muls r0, r6, r0
	cmp r2, r0
	bge _080DE234
_080DE246:
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080DE2AC @ =gUnk_08356800
	adds r0, r7, r0
	lsls r4, r3, #0x18
	asrs r4, r4, #0x18
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x15
	adds r5, r5, r0
	asrs r5, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080DE2B4
	ldr r0, _080DE2B0 @ =gUnk_0835680C
	adds r0, r7, r0
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r5, #0x10
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_080DE2B4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE29C: .4byte gRngVal
_080DE2A0: .4byte 0x00196225
_080DE2A4: .4byte 0x3C6EF35F
_080DE2A8: .4byte 0x00001555
_080DE2AC: .4byte gUnk_08356800
_080DE2B0: .4byte gUnk_0835680C

	thumb_func_start sub_080DE2B4
sub_080DE2B4: @ 0x080DE2B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _080DE300 @ =sub_080DE42C
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
	beq _080DE304
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080DE30C
	.align 2, 0
_080DE300: .4byte sub_080DE42C
_080DE304:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080DE30C:
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	strh r0, [r7]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080DE404 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DE35E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DE35E:
	adds r0, r5, #0
	adds r0, #0x63
	strb r3, [r0]
	mov r0, r8
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	mov r0, sb
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	ldr r0, _080DE408 @ =0x20000403
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5, #8]
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r1, r5, #0
	adds r1, #0x10
	ldr r6, _080DE40C @ =0x0000033B
	mov r0, sl
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r5, #0
	adds r4, #0x2f
	movs r0, #0
	strb r0, [r4]
	ldr r2, _080DE410 @ =gUnk_02020EE0
	ldr r0, _080DE414 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080DE418
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE41C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DE41A
	.align 2, 0
_080DE404: .4byte gUnk_03000510
_080DE408: .4byte 0x20000403
_080DE40C: .4byte 0x0000033B
_080DE410: .4byte gUnk_02020EE0
_080DE414: .4byte gUnk_0203AD3C
_080DE418:
	movs r0, #0
_080DE41A:
	strb r0, [r4]
_080DE41C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DE42C
sub_080DE42C: @ 0x080DE42C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DE44C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE450
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DE458
	.align 2, 0
_080DE44C: .4byte gCurTask
_080DE450:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DE458:
	adds r5, r0, #0
	ldr r7, [r5, #0x70]
	ldr r2, _080DE4C4 @ =gUnk_02020EE0
	ldr r0, _080DE4C8 @ =gUnk_0203AD3C
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
	bne _080DE50C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DE4D4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE530
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE4CC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DE4D0 @ =0x0400000A
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
	b _080DE530
	.align 2, 0
_080DE4C4: .4byte gUnk_02020EE0
_080DE4C8: .4byte gUnk_0203AD3C
_080DE4CC: .4byte 0xFFF7FFFF
_080DE4D0: .4byte 0x0400000A
_080DE4D4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE530
	movs r0, #0x20
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE504 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DE508 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DE530
	.align 2, 0
_080DE504: .4byte 0xFFF7FFFF
_080DE508: .4byte 0x0400000A
_080DE50C:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DE526
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DE526
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080DE526:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DE530:
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r2, [r0]
	ldr r4, _080DE590 @ =0x0000FFFF
	adds r3, r0, #0
	cmp r2, r4
	beq _080DE550
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DE550
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080DE550:
	ldr r2, _080DE594 @ =gUnk_02020EE0
	ldr r0, _080DE598 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080DE5A0
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DE5A8
	ldr r6, _080DE59C @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE5A8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE5A8
	.align 2, 0
_080DE590: .4byte 0x0000FFFF
_080DE594: .4byte gUnk_02020EE0
_080DE598: .4byte gUnk_0203AD3C
_080DE59C: .4byte 0x0000033B
_080DE5A0:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DE5A8:
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DE648
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080DE5DA
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080DE648
_080DE5DA:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DE642
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080DE608
	ldr r2, _080DE600 @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DE604 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080DE60A
	.align 2, 0
_080DE600: .4byte gUnk_02023530
_080DE604: .4byte 0x0000065E
_080DE608:
	movs r1, #0xff
_080DE60A:
	cmp r1, #0xff
	beq _080DE642
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DE650 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DE654 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DE642:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DE648:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE650: .4byte gUnk_02022EB0
_080DE654: .4byte gUnk_02022F50

	thumb_func_start sub_080DE658
sub_080DE658: @ 0x080DE658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080DE69C @ =sub_080DE80C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DE6A0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE6A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080DE6AC
	.align 2, 0
_080DE69C: .4byte sub_080DE80C
_080DE6A0: .4byte sub_0803DCCC
_080DE6A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080DE6AC:
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov sl, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	mov r1, sl
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r2, #0x60
	adds r2, r2, r4
	mov sb, r2
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080DE7E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DE704
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DE704:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, _080DE7E4 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	cmp r7, #0
	beq _080DE740
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_080DE740:
	adds r0, r5, #0
	adds r0, #0x62
	strb r7, [r0]
	ldr r3, _080DE7E8 @ =gUnk_08356838
	mov r0, r8
	lsls r1, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	mov r1, sl
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r6, _080DE7EC @ =0x0000033B
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r5, #0
	adds r4, #0x2f
	movs r2, #0
	strb r2, [r4]
	ldr r2, _080DE7F0 @ =gUnk_02020EE0
	ldr r0, _080DE7F4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DE7F8
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE7FC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE7FC
	.align 2, 0
_080DE7E0: .4byte gUnk_03000510
_080DE7E4: .4byte 0x20000043
_080DE7E8: .4byte gUnk_08356838
_080DE7EC: .4byte 0x0000033B
_080DE7F0: .4byte gUnk_02020EE0
_080DE7F4: .4byte gUnk_0203AD3C
_080DE7F8:
	movs r2, #0
	strb r2, [r4]
_080DE7FC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DE80C
sub_080DE80C: @ 0x080DE80C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DE82C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE830
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DE838
	.align 2, 0
_080DE82C: .4byte gCurTask
_080DE830:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DE838:
	adds r5, r0, #0
	ldr r2, _080DE8A4 @ =gUnk_02020EE0
	ldr r0, _080DE8A8 @ =gUnk_0203AD3C
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
	bne _080DE8EC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DE8B4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE910
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE8AC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DE8B0 @ =0x0400000A
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
	b _080DE910
	.align 2, 0
_080DE8A4: .4byte gUnk_02020EE0
_080DE8A8: .4byte gUnk_0203AD3C
_080DE8AC: .4byte 0xFFF7FFFF
_080DE8B0: .4byte 0x0400000A
_080DE8B4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE910
	movs r0, #0x20
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE8E4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DE8E8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DE910
	.align 2, 0
_080DE8E4: .4byte 0xFFF7FFFF
_080DE8E8: .4byte 0x0400000A
_080DE8EC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DE906
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DE906
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080DE906:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DE910:
	ldr r2, _080DE958 @ =gUnk_02020EE0
	ldr r0, _080DE95C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080DE964
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DE96C
	ldr r7, _080DE960 @ =0x0000033B
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE96C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE96C
	.align 2, 0
_080DE958: .4byte gUnk_02020EE0
_080DE95C: .4byte gUnk_0203AD3C
_080DE960: .4byte 0x0000033B
_080DE964:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DE96C:
	ldr r0, [r5, #0x70]
	ldrh r2, [r6]
	ldr r3, _080DE9BC @ =0x0000FFFF
	cmp r2, r3
	beq _080DE988
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DE988
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r6]
_080DE988:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DEA84
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DE9C0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080DE9C0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080DEA84
	.align 2, 0
_080DE9BC: .4byte 0x0000FFFF
_080DE9C0:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DE9E8
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080DE9E8:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DEA0E
	ldrb r1, [r5, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DEA06
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _080DEA0C
_080DEA06:
	ldr r0, [r5, #8]
	ldr r1, _080DEA38 @ =0xFFFFFDFF
	ands r0, r1
_080DEA0C:
	str r0, [r5, #8]
_080DEA0E:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DEA7E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080DEA44
	ldr r2, _080DEA3C @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DEA40 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080DEA46
	.align 2, 0
_080DEA38: .4byte 0xFFFFFDFF
_080DEA3C: .4byte gUnk_02023530
_080DEA40: .4byte 0x0000065E
_080DEA44:
	movs r1, #0xff
_080DEA46:
	cmp r1, #0xff
	beq _080DEA7E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DEA8C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DEA90 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DEA7E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DEA84:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DEA8C: .4byte gUnk_02022EB0
_080DEA90: .4byte gUnk_02022F50

	thumb_func_start sub_080DEA94
sub_080DEA94: @ 0x080DEA94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080DEAD0 @ =sub_080DECE4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DEAD4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DEAD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DEAE0
	.align 2, 0
_080DEAD0: .4byte sub_080DECE4
_080DEAD4: .4byte sub_0803DCCC
_080DEAD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DEAE0:
	adds r4, r0, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x60
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x56
	strb r0, [r2]
	ldr r0, _080DEC28 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r2, [r2]
	lsls r0, r2
	movs r5, #0x10
	orrs r0, r5
	ands r1, r0
	cmp r1, #0
	beq _080DEB36
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DEB36:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, _080DEC2C @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	cmp r7, #0
	beq _080DEB72
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_080DEB72:
	adds r0, r4, #0
	adds r0, #0x62
	strb r7, [r0]
	subs r0, #0x12
	strh r6, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r2, _080DEC30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DEC34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DEC38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	subs r0, r5, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r4, #0x44]
	movs r1, #2
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #2
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r6, _080DEC3C @ =0x0000033B
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, sb
	strb r0, [r5]
	ldr r2, _080DEC40 @ =gUnk_02020EE0
	ldr r0, _080DEC44 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DEC48
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DEC4C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DEC4C
	.align 2, 0
_080DEC28: .4byte gUnk_03000510
_080DEC2C: .4byte 0x20000043
_080DEC30: .4byte gRngVal
_080DEC34: .4byte 0x00196225
_080DEC38: .4byte 0x3C6EF35F
_080DEC3C: .4byte 0x0000033B
_080DEC40: .4byte gUnk_02020EE0
_080DEC44: .4byte gUnk_0203AD3C
_080DEC48:
	mov r2, sb
	strb r2, [r5]
_080DEC4C:
	ldr r1, _080DECC4 @ =gUnk_02020EE0
	ldr r0, _080DECC8 @ =gUnk_0203AD3C
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
	bne _080DECB4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DEC78
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DECB4
_080DEC78:
	ldr r1, _080DECCC @ =gUnk_08D60FA4
	ldr r4, _080DECD0 @ =gSongTable
	ldr r2, _080DECD4 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DEC9C
	ldr r1, _080DECD8 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DECB4
_080DEC9C:
	cmp r3, #0
	beq _080DECAE
	ldr r0, _080DECDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DECB4
_080DECAE:
	ldr r0, _080DECE0 @ =0x00000145
	bl m4aSongNumStart
_080DECB4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DECC4: .4byte gUnk_02020EE0
_080DECC8: .4byte gUnk_0203AD3C
_080DECCC: .4byte gUnk_08D60FA4
_080DECD0: .4byte gSongTable
_080DECD4: .4byte 0x00000A2C
_080DECD8: .4byte 0x00000A28
_080DECDC: .4byte gUnk_0203AD10
_080DECE0: .4byte 0x00000145

	thumb_func_start sub_080DECE4
sub_080DECE4: @ 0x080DECE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DED04 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DED08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DED10
	.align 2, 0
_080DED04: .4byte gCurTask
_080DED08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DED10:
	adds r5, r0, #0
	ldr r2, _080DED7C @ =gUnk_02020EE0
	ldr r0, _080DED80 @ =gUnk_0203AD3C
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
	bne _080DEDC4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DED8C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DEDE8
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DED84 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DED88 @ =0x0400000A
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
	b _080DEDE8
	.align 2, 0
_080DED7C: .4byte gUnk_02020EE0
_080DED80: .4byte gUnk_0203AD3C
_080DED84: .4byte 0xFFF7FFFF
_080DED88: .4byte 0x0400000A
_080DED8C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DEDE8
	movs r0, #0x20
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DEDBC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DEDC0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DEDE8
	.align 2, 0
_080DEDBC: .4byte 0xFFF7FFFF
_080DEDC0: .4byte 0x0400000A
_080DEDC4:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DEDDE
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DEDDE
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080DEDDE:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DEDE8:
	ldr r2, _080DEE30 @ =gUnk_02020EE0
	ldr r0, _080DEE34 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080DEE3C
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DEE44
	ldr r7, _080DEE38 @ =0x0000033B
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DEE44
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DEE44
	.align 2, 0
_080DEE30: .4byte gUnk_02020EE0
_080DEE34: .4byte gUnk_0203AD3C
_080DEE38: .4byte 0x0000033B
_080DEE3C:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DEE44:
	ldr r4, [r5, #0x70]
	ldrh r2, [r6]
	ldr r3, _080DEEA4 @ =0x0000FFFF
	cmp r2, r3
	beq _080DEE60
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DEE60
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r6]
_080DEE60:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DEF54
	ldr r0, [r4, #8]
	movs r4, #0x80
	lsls r4, r4, #5
	ands r0, r4
	cmp r0, #0
	bne _080DEE9A
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	ldr r2, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	ble _080DEEA8
	movs r0, #0x8a
	lsls r0, r0, #8
	str r0, [r5, #0x44]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080DDC44
_080DEE9A:
	ldr r0, [r5, #8]
	orrs r0, r4
	str r0, [r5, #8]
	b _080DEF54
	.align 2, 0
_080DEEA4: .4byte 0x0000FFFF
_080DEEA8:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080DEECC
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r2, r0
	str r0, [r5, #0x44]
_080DEECC:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DEEDE
	ldr r0, [r5, #8]
	ldr r1, _080DEF08 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
_080DEEDE:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DEF4E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080DEF14
	ldr r2, _080DEF0C @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080DEF10 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080DEF16
	.align 2, 0
_080DEF08: .4byte 0xFFFFFDFF
_080DEF0C: .4byte gUnk_02023530
_080DEF10: .4byte 0x0000065E
_080DEF14:
	movs r1, #0xff
_080DEF16:
	cmp r1, #0xff
	beq _080DEF4E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DEF5C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DEF60 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DEF4E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DEF54:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DEF5C: .4byte gUnk_02022EB0
_080DEF60: .4byte gUnk_02022F50

	thumb_func_start sub_080DEF64
sub_080DEF64: @ 0x080DEF64
	push {r4, r5, r6, lr}
	sub sp, #0x78
	adds r3, r0, #0
	adds r5, r3, #0
	ldr r0, _080DEFF0 @ =gUnk_03000510
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
	bne _080DEFE6
	adds r6, r3, #0
	adds r6, #0xc3
	ldrb r0, [r6]
	cmp r0, #0
	beq _080DEF92
	subs r0, #1
	strb r0, [r6]
_080DEF92:
	ldr r0, [r5, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080DEFE6
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DEFE6
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	add r0, sp, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r0, #0x2b
	ldrb r0, [r0]
	mov r4, sp
	adds r4, #0x2f
	strb r0, [r4]
	ldr r1, _080DEFF4 @ =gUnk_08356868
	mov r0, sp
	bl sub_08085CE8
	adds r5, #0xb4
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	strb r0, [r4]
	ldr r1, _080DEFF8 @ =gUnk_083568A0
	mov r0, sp
	bl sub_08085CE8
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	strb r0, [r4]
	ldr r1, _080DEFFC @ =gUnk_083568D8
	mov r0, sp
	bl sub_08085CE8
	movs r0, #0x1e
	strb r0, [r6]
_080DEFE6:
	add sp, #0x78
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080DEFF0: .4byte gUnk_03000510
_080DEFF4: .4byte gUnk_08356868
_080DEFF8: .4byte gUnk_083568A0
_080DEFFC: .4byte gUnk_083568D8

	thumb_func_start sub_080DF000
sub_080DF000: @ 0x080DF000
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF028 @ =sub_080DBA1C
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
_080DF028: .4byte sub_080DBA1C

	thumb_func_start sub_080DF02C
sub_080DF02C: @ 0x080DF02C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080DF050 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF054 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF058 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080DF05C
	adds r0, r5, #0
	bl sub_080DF0EC
	b _080DF07C
	.align 2, 0
_080DF050: .4byte gRngVal
_080DF054: .4byte 0x00196225
_080DF058: .4byte 0x3C6EF35F
_080DF05C:
	ldr r2, _080DF084 @ =sub_080DC3D4
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_0808671C
	adds r1, r5, #0
	adds r1, #0xbc
	str r0, [r1]
_080DF07C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DF084: .4byte sub_080DC3D4

	thumb_func_start sub_080DF088
sub_080DF088: @ 0x080DF088
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF0BC @ =sub_080DC6D8
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF0B6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080DF0B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF0BC: .4byte sub_080DC6D8

	thumb_func_start sub_080DF0C0
sub_080DF0C0: @ 0x080DF0C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF0E8 @ =sub_080DC800
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, #0xbc
	ldr r0, [r4]
	bl sub_080867A0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF0E8: .4byte sub_080DC800

	thumb_func_start sub_080DF0EC
sub_080DF0EC: @ 0x080DF0EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF114 @ =sub_080DC550
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0808671C
	adds r4, #0xbc
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF114: .4byte sub_080DC550

	thumb_func_start sub_080DF118
sub_080DF118: @ 0x080DF118
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF154 @ =sub_080DC97C
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF146
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080DF146:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF154: .4byte sub_080DC97C

	thumb_func_start sub_080DF158
sub_080DF158: @ 0x080DF158
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF188 @ =sub_080DCA44
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #0x1c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF188: .4byte sub_080DCA44

	thumb_func_start sub_080DF18C
sub_080DF18C: @ 0x080DF18C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	subs r0, #1
	movs r1, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080DF1DC
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r2, _080DF1C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF1CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF1D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF1D8
	ldr r0, _080DF1D4 @ =sub_080DCBA0
	b _080DF1DA
	.align 2, 0
_080DF1C8: .4byte gRngVal
_080DF1CC: .4byte 0x00196225
_080DF1D0: .4byte 0x3C6EF35F
_080DF1D4: .4byte sub_080DCBA0
_080DF1D8:
	ldr r0, _080DF1E0 @ =sub_080DCCB0
_080DF1DA:
	str r0, [r3, #0x78]
_080DF1DC:
	pop {r0}
	bx r0
	.align 2, 0
_080DF1E0: .4byte sub_080DCCB0

	thumb_func_start sub_080DF1E4
sub_080DF1E4: @ 0x080DF1E4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DF1FA
	adds r0, r1, #0
	bl sub_080DF200
_080DF1FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF200
sub_080DF200: @ 0x080DF200
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF218 @ =sub_080DCE28
	movs r1, #1
	bl ObjectSetFunc
	adds r4, #0x9f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF218: .4byte sub_080DCE28

	thumb_func_start sub_080DF21C
sub_080DF21C: @ 0x080DF21C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF244 @ =sub_080DCEA8
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF248
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	b _080DF24E
	.align 2, 0
_080DF244: .4byte sub_080DCEA8
_080DF248:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
_080DF24E:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF258
sub_080DF258: @ 0x080DF258
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF274 @ =sub_080DF278
	movs r1, #1
	bl ObjectSetFunc
	adds r4, #0x50
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF274: .4byte sub_080DF278

	thumb_func_start sub_080DF278
sub_080DF278: @ 0x080DF278
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	ldr r1, _080DF298 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0x1f
	ble _080DF29C
	adds r0, r2, #0
	bl sub_080DBE3C
	b _080DF2B2
	.align 2, 0
_080DF298: .4byte 0xFFFFF7FF
_080DF29C:
	ldr r1, _080DF2B8 @ =gUnk_083567F0
	asrs r0, r3, #0x12
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080DF2B2:
	pop {r0}
	bx r0
	.align 2, 0
_080DF2B8: .4byte gUnk_083567F0

	thumb_func_start sub_080DF2BC
sub_080DF2BC: @ 0x080DF2BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF310 @ =sub_080DBAF8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3]
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	ldr r0, _080DF314 @ =0xFFFFC000
	str r0, [r4, #0x44]
	strh r1, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r0, #0x19
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080DD8D8
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080DD55C
	adds r1, r4, #0
	adds r1, #0xb4
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF310: .4byte sub_080DBAF8
_080DF314: .4byte 0xFFFFC000

	thumb_func_start CreateCrazyHand
CreateCrazyHand: @ 0x080DF318
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #5
	ldrb r0, [r5, #0xc]
	cmp r0, #0x47
	bne _080DF32E
	adds r2, #0x10
_080DF32E:
	ldr r0, _080DF354 @ =ObjectMain
	ldr r1, _080DF358 @ =sub_080E3E30
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DF35C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DF364
	.align 2, 0
_080DF354: .4byte ObjectMain
_080DF358: .4byte sub_080E3E30
_080DF35C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DF364:
	adds r4, r0, #0
	adds r0, #0xb4
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl InitObject
	ldr r1, [r4, #0xc]
	movs r3, #1
	orrs r1, r3
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x40
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #4
	orrs r1, r0
	orrs r1, r3
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080DF3DC @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DF3E0
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080DF3E2
	.align 2, 0
_080DF3DC: .4byte 0x001080A0
_080DF3E0:
	orrs r2, r3
_080DF3E2:
	str r2, [r4, #8]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r6, #4
	str r6, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _080DF424
	adds r0, r4, #0
	bl sub_080DF5A4
	b _080DF490
_080DF424:
	ldr r2, _080DF4AC @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DF4B0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080DF4B4 @ =gUnk_02020EE0
	ldr r0, _080DF4B8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DF48A
	ldr r0, _080DF4BC @ =gUnk_0203AD20
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080DF48A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DF48A:
	adds r0, r4, #0
	bl sub_080E37C4
_080DF490:
	adds r0, r4, #0
	bl sub_080E33E4
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
_080DF4AC: .4byte gUnk_02023530
_080DF4B0: .4byte 0x0000065E
_080DF4B4: .4byte gUnk_02020EE0
_080DF4B8: .4byte gUnk_0203AD3C
_080DF4BC: .4byte gUnk_0203AD20

	thumb_func_start sub_080DF4C0
sub_080DF4C0: @ 0x080DF4C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080DF596
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DF596
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080DF596
	ldr r4, _080DF5A0 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	movs r3, #0
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x85
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_080DF5A4
_080DF596:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DF5A0: .4byte gUnk_02023530

	thumb_func_start sub_080DF5A4
sub_080DF5A4: @ 0x080DF5A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r2, _080DF5E8 @ =sub_080E36C4
	movs r1, #0
	bl ObjectSetFunc
	adds r4, r5, #0
	adds r4, #0x82
	ldrb r0, [r4]
	cmp r0, #0x47
	bne _080DF5F0
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r5, #0x40]
	adds r1, r5, #0
	adds r1, #0x50
	ldr r0, _080DF5EC @ =0x0000FF40
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	movs r0, #0x85
	adds r0, r0, r5
	mov sb, r0
	cmp r1, #0
	bne _080DF5E2
	b _080DF6E4
_080DF5E2:
	movs r0, #0
	strb r0, [r1, #9]
	b _080DF6E4
	.align 2, 0
_080DF5E8: .4byte sub_080E36C4
_080DF5EC: .4byte 0x0000FF40
_080DF5F0:
	ldr r0, _080DF700 @ =0xFFFFE800
	str r0, [r5, #0x40]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080DF60E
	movs r0, #0
	strb r0, [r1, #9]
_080DF60E:
	ldrb r4, [r4]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080DF704 @ =gUnk_02023530
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DF708 @ =0x0000065E
	adds r0, r0, r1
	ldrb r6, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	movs r2, #0x85
	adds r2, r2, r5
	mov sb, r2
	cmp r1, #0
	blt _080DF6E4
	ldr r0, _080DF70C @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080DF6E4
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080DF6E4
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r3, #0
	movs r1, #0x60
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0xf
	bls _080DF6A2
	movs r4, #1
_080DF66A:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080DF66A
	adds r0, r6, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_08002A44
_080DF6A2:
	ldr r1, _080DF70C @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08002A1C
	ldr r2, _080DF710 @ =gUnk_02020EE0
	ldr r0, _080DF714 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	bne _080DF6E4
	ldr r0, _080DF718 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DF6E4
	adds r0, r6, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DF6E4:
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080DF71C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DF700: .4byte 0xFFFFE800
_080DF704: .4byte gUnk_02023530
_080DF708: .4byte 0x0000065E
_080DF70C: .4byte gUnk_08352D80
_080DF710: .4byte gUnk_02020EE0
_080DF714: .4byte gUnk_0203AD3C
_080DF718: .4byte gUnk_0203AD20
_080DF71C: .4byte 0xFFFFFBFF

	thumb_func_start sub_080DF720
sub_080DF720: @ 0x080DF720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #2
	mov sl, r0
	mov sb, r0
	movs r3, #2
	adds r5, r4, #0
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r2, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	cmp r2, #0
	beq _080DF76C
	movs r1, #1
	mov sb, r1
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _080DF75A
	movs r3, #3
_080DF75A:
	adds r0, r2, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080DF76C
	adds r0, r4, #0
	bl sub_080E3D10
	b _080DF884
_080DF76C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, r3
	blo _080DF7B8
	ldr r2, _080DF798 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF79C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF7A0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF7A4
	adds r0, r4, #0
	bl sub_080DF9D0
	b _080DF7AA
	.align 2, 0
_080DF798: .4byte gRngVal
_080DF79C: .4byte 0x00196225
_080DF7A0: .4byte 0x3C6EF35F
_080DF7A4:
	adds r0, r4, #0
	bl sub_080E003C
_080DF7AA:
	adds r1, r5, #0
	adds r1, #0xb9
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	b _080DF880
_080DF7B8:
	adds r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xba
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #0
	bne _080DF7CE
	cmp r2, #0
	bne _080DF7D2
_080DF7CE:
	movs r0, #0
	mov sl, r0
_080DF7D2:
	adds r3, r5, #0
	adds r3, #0xb9
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DF7E0
	movs r1, #0
	mov sb, r1
_080DF7E0:
	ldr r5, _080DF810 @ =gRngVal
	ldr r0, [r5]
	ldr r7, _080DF814 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080DF818 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r5]
	lsrs r1, r2, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, sl
	bhs _080DF822
	movs r5, #0
	strb r5, [r3]
	adds r0, r4, #0
	bl sub_080E3D10
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080DF81C
	movs r0, #4
	b _080DF880
	.align 2, 0
_080DF810: .4byte gRngVal
_080DF814: .4byte 0x00196225
_080DF818: .4byte 0x3C6EF35F
_080DF81C:
	mov r0, r8
	strb r5, [r0]
	b _080DF884
_080DF822:
	mov r0, sl
	add r0, sb
	cmp r1, r0
	bge _080DF83C
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	mov r0, ip
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080E1800
	b _080DF884
_080DF83C:
	movs r0, #0
	strb r0, [r3]
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	muls r0, r7, r0
	adds r2, r0, r6
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080DF85E
	adds r0, r4, #0
	bl sub_080E396C
	b _080DF884
_080DF85E:
	adds r0, r2, #0
	muls r0, r7, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF878
	adds r0, r4, #0
	bl sub_080DF9D0
	b _080DF87E
_080DF878:
	adds r0, r4, #0
	bl sub_080E003C
_080DF87E:
	movs r0, #0
_080DF880:
	mov r1, r8
	strb r0, [r1]
_080DF884:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF894
sub_080DF894: @ 0x080DF894
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r0, #0xb4
	ldr r7, [r0]
	ldr r2, _080DF8CC @ =sub_080DF954
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF8DC
	ldr r2, _080DF8D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF8D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF8D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x2a
	b _080DF926
	.align 2, 0
_080DF8CC: .4byte sub_080DF954
_080DF8D0: .4byte gRngVal
_080DF8D4: .4byte 0x00196225
_080DF8D8: .4byte 0x3C6EF35F
_080DF8DC:
	ldr r5, _080DF908 @ =gRngVal
	ldr r0, [r5]
	ldr r3, _080DF90C @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080DF910 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _080DF914
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080DF910 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x40
	b _080DF926
	.align 2, 0
_080DF908: .4byte gRngVal
_080DF90C: .4byte 0x00196225
_080DF910: .4byte 0x3C6EF35F
_080DF914:
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080DF950 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x48
_080DF926:
	strh r0, [r4, #4]
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080DF940
	adds r0, r7, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF940
	movs r0, #0x18
	strh r0, [r4, #4]
_080DF940:
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DF950: .4byte 0x3C6EF35F

	thumb_func_start sub_080DF954
sub_080DF954: @ 0x080DF954
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080DF974
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DF984
	b _080DF980
_080DF974:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DF984
_080DF980:
	movs r0, #0
	strh r0, [r1]
_080DF984:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080DF9A0
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DF9B0
	b _080DF9AC
_080DF9A0:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DF9B0
_080DF9AC:
	movs r0, #0
	strh r0, [r1]
_080DF9B0:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DF9CA
	adds r0, r3, #0
	bl sub_080DF720
_080DF9CA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DF9D0
sub_080DF9D0: @ 0x080DF9D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DFA20 @ =sub_080DFA24
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DFA20: .4byte sub_080DFA24

	thumb_func_start sub_080DFA24
sub_080DFA24: @ 0x080DFA24
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r6, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080DFA60
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	strb r6, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
_080DFA60:
	ldr r3, [r4, #0x44]
	ldr r1, _080DFA94 @ =0xFFFFF000
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x40
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080DFA98
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080DFAE4
	strh r2, [r5]
	b _080DFAE4
	.align 2, 0
_080DFA94: .4byte 0xFFFFF000
_080DFA98:
	cmp r3, r2
	bge _080DFABC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080DFAB8 @ =0xFFFFFE80
	adds r5, r1, #0
	cmp r0, r2
	bge _080DFAE4
	strh r2, [r5]
	b _080DFAE4
	.align 2, 0
_080DFAB8: .4byte 0xFFFFFE80
_080DFABC:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080DFAD8
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFAE4
	b _080DFAE2
_080DFAD8:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFAE4
_080DFAE2:
	strh r6, [r5]
_080DFAE4:
	ldr r3, [r4, #0x40]
	ldr r0, _080DFB10 @ =0xFFFFF000
	ands r3, r0
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080DFB14
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r3, [r1]
	adds r0, r0, r3
	b _080DFB56
	.align 2, 0
_080DFB10: .4byte 0xFFFFF000
_080DFB14:
	cmp r3, r2
	ble _080DFB74
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DFB4C
	adds r2, r4, #0
	adds r2, #0x50
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080DFB48 @ =0xFFFFFE80
	cmp r0, r1
	blt _080DFB44
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080DFB9C
_080DFB44:
	strh r1, [r2]
	b _080DFB9C
	.align 2, 0
_080DFB48: .4byte 0xFFFFFE80
_080DFB4C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r2, [r1]
	adds r0, r0, r2
_080DFB56:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080DFB6A
	ldr r2, _080DFB70 @ =0xFFFFFE80
	cmp r0, r2
	bge _080DFB9C
_080DFB6A:
	strh r2, [r1]
	b _080DFB9C
	.align 2, 0
_080DFB70: .4byte 0xFFFFFE80
_080DFB74:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080DFB8E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFB9C
	b _080DFB98
_080DFB8E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFB9C
_080DFB98:
	movs r0, #0
	strh r0, [r1]
_080DFB9C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFBB2
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFBB8
_080DFBB2:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080DFBB8:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bge _080DFBD0
	movs r0, #0
	strh r0, [r5]
_080DFBD0:
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r1, r4, #0
	adds r1, #0x9f
	cmp r0, #0
	bgt _080DFBE0
	movs r0, #1
	strb r0, [r1]
_080DFBE0:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DFC34
	movs r2, #0x10
	movs r0, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0x60
	bls _080DFC0C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080DFC10
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x20
	b _080DFC10
_080DFC0C:
	adds r0, #1
	strb r0, [r1]
_080DFC10:
	lsls r3, r2, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080DFC28
	cmp r1, r3
	blt _080DFC2E
	b _080DFC34
_080DFC28:
	subs r0, r0, r2
	cmp r0, r3
	bge _080DFC34
_080DFC2E:
	adds r0, r4, #0
	bl sub_080E37F0
_080DFC34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DFC3C
sub_080DFC3C: @ 0x080DFC3C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFC56
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFC5C
_080DFC56:
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
_080DFC5C:
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #3
	beq _080DFC6C
	b _080DFD7C
_080DFC6C:
	adds r2, r6, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080DFD5C @ =0xF9800000
	cmp r0, r1
	bge _080DFC82
	ldr r0, _080DFD60 @ =0x0000F980
	strh r0, [r2]
_080DFC82:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080DFC92
	b _080DFDAE
_080DFC92:
	movs r0, #1
	adds r1, r6, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r6, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r6, #8]
	ands r3, r4
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r5, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	ldr r1, _080DFD64 @ =gUnk_02020EE0
	ldr r0, _080DFD68 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DFD54
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DFD14
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DFD54
_080DFD14:
	ldr r1, _080DFD6C @ =gUnk_08D60FA4
	ldr r4, _080DFD70 @ =gSongTable
	ldr r2, _080DFD74 @ =0x00000BB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DFD3A
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DFD54
_080DFD3A:
	cmp r3, #0
	beq _080DFD4C
	ldr r0, _080DFD78 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DFD54
_080DFD4C:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DFD54:
	adds r0, r6, #0
	bl sub_080E3844
	b _080DFDD0
	.align 2, 0
_080DFD5C: .4byte 0xF9800000
_080DFD60: .4byte 0x0000F980
_080DFD64: .4byte gUnk_02020EE0
_080DFD68: .4byte gUnk_0203AD3C
_080DFD6C: .4byte gUnk_08D60FA4
_080DFD70: .4byte gSongTable
_080DFD74: .4byte 0x00000BB4
_080DFD78: .4byte gUnk_0203AD10
_080DFD7C:
	adds r3, r6, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080DFDAE
	ldr r2, _080DFDD8 @ =gUnk_08356A04
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080DFDAE:
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DFDD0
	ldr r0, [r6, #8]
	ldr r1, _080DFDDC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #3
	strb r0, [r4]
_080DFDD0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080DFDD8: .4byte gUnk_08356A04
_080DFDDC: .4byte 0xFFFFFEFF

	thumb_func_start sub_080DFDE0
sub_080DFDE0: @ 0x080DFDE0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFDF8
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFDFE
_080DFDF8:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080DFDFE:
	str r0, [r2, #8]
	movs r0, #0x85
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080DFE26
	ldr r1, _080DFE3C @ =gUnk_08356A04
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080DFE26:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DFE38
	adds r0, r2, #0
	bl sub_080E388C
_080DFE38:
	pop {r0}
	bx r0
	.align 2, 0
_080DFE3C: .4byte gUnk_08356A04

	thumb_func_start sub_080DFE40
sub_080DFE40: @ 0x080DFE40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080DFE80 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080DFE84
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080DFECE
	strh r2, [r1]
	b _080DFECE
	.align 2, 0
_080DFE80: .4byte 0xFFFFFC00
_080DFE84:
	cmp r3, r0
	bge _080DFEA4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080DFEA0 @ =0xFFFFFE00
	cmp r0, r2
	bge _080DFECE
	strh r2, [r1]
	b _080DFECE
	.align 2, 0
_080DFEA0: .4byte 0xFFFFFE00
_080DFEA4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080DFEC0
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFECE
	b _080DFECC
_080DFEC0:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFECE
_080DFECC:
	strh r5, [r1]
_080DFECE:
	ldr r3, [r4, #0x40]
	ldr r2, _080DFEF4 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080DFEF8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080DFF30
	.align 2, 0
_080DFEF4: .4byte 0xFFFFFC00
_080DFEF8:
	cmp r3, r0
	ble _080DFF54
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DFF30
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080DFF2C @ =0xFFFFFE00
	cmp r0, r2
	blt _080DFF26
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080DFF80
_080DFF26:
	strh r2, [r1]
	b _080DFF80
	.align 2, 0
_080DFF2C: .4byte 0xFFFFFE00
_080DFF30:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080DFF26
	ldr r2, _080DFF50 @ =0xFFFFFE00
	cmp r0, r2
	bge _080DFF80
	b _080DFF26
	.align 2, 0
_080DFF50: .4byte 0xFFFFFE00
_080DFF54:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080DFF70
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFF80
	b _080DFF7C
_080DFF70:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFF80
_080DFF7C:
	movs r0, #0
	strh r0, [r1]
_080DFF80:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFF96
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFF9C
_080DFF96:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080DFF9C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080DFFF0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080DFFC6
	cmp r2, #0xf
	ble _080DFFCC
	b _080DFFF0
_080DFFC6:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080DFFF0
_080DFFCC:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080DFFE4
	cmp r1, #0xf
	ble _080DFFEA
	b _080DFFF0
_080DFFE4:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080DFFF0
_080DFFEA:
	adds r0, r4, #0
	bl sub_080DF894
_080DFFF0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0028
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E001E
	ldr r2, _080E0030 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E0034 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E0038 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E001E:
	cmp r1, #0
	beq _080E0028
	adds r0, r4, #0
	bl sub_080DF720
_080E0028:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E0030: .4byte gRngVal
_080E0034: .4byte 0x00196225
_080E0038: .4byte 0x3C6EF35F

	thumb_func_start sub_080E003C
sub_080E003C: @ 0x080E003C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E0094 @ =sub_080E0098
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E0094: .4byte sub_080E0098

	thumb_func_start sub_080E0098
sub_080E0098: @ 0x080E0098
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sb, r1
	cmp r0, #0
	beq _080E00B4
	movs r2, #0xa0
	mov sb, r2
_080E00B4:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E00CC
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E00CC
	movs r0, #5
	strb r0, [r2]
_080E00CC:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E010A
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E010A:
	ldr r3, [r4, #0x44]
	ldr r1, _080E0144 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E0164
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080E0148
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E01D2
	strh r2, [r1]
	b _080E01D2
	.align 2, 0
_080E0144: .4byte 0xFFFFF000
_080E0148:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0160 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E01D2
	strh r2, [r1]
	b _080E01D2
	.align 2, 0
_080E0160: .4byte 0xFFFFFE80
_080E0164:
	cmp r3, r0
	bge _080E01AC
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080E018C
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E01D2
	strh r1, [r2]
	b _080E01D2
_080E018C:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E01A8 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E01D2
	strh r1, [r2]
	b _080E01D2
	.align 2, 0
_080E01A8: .4byte 0xFFFFFE80
_080E01AC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E01C6
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E01D2
	b _080E01D0
_080E01C6:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E01D2
_080E01D0:
	strh r7, [r1]
_080E01D2:
	ldr r3, [r4, #0x40]
	ldr r2, _080E0214 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E0218
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E0268
	b _080E026C
	.align 2, 0
_080E0214: .4byte 0xFFFFF000
_080E0218:
	cmp r3, r0
	ble _080E027C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E0250
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E024C @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080E0268
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E02A6
	strh r1, [r2]
	b _080E02A6
	.align 2, 0
_080E024C: .4byte 0xFFFFFE80
_080E0250:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E026C
_080E0268:
	strh r3, [r2]
	b _080E02A6
_080E026C:
	ldr r1, _080E0278 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E02A6
	strh r1, [r2]
	b _080E02A6
	.align 2, 0
_080E0278: .4byte 0xFFFFFE80
_080E027C:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0298
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E02A6
	b _080E02A2
_080E0298:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E02A6
_080E02A2:
	movs r0, #0
	strh r0, [r2]
_080E02A6:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E02E2
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080E02D2
	movs r0, #0
	strh r0, [r2]
_080E02D2:
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	blt _080E030C
	adds r0, r4, #0
	bl sub_080E38E0
	b _080E030C
_080E02E2:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080E02FE
	strh r3, [r2]
_080E02FE:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bgt _080E030C
	adds r0, r4, #0
	bl sub_080E38E0
_080E030C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E0318
sub_080E0318: @ 0x080E0318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sl, r1
	cmp r0, #0
	beq _080E0338
	movs r2, #0xa0
	mov sl, r2
_080E0338:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _080E0354
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0354
	movs r0, #5
	ldr r3, [sp]
	strb r0, [r3]
_080E0354:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xac
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0xa0
	adds r2, r2, r4
	mov sb, r2
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E0396
	adds r0, r4, #0
	bl sub_0803D368
	mov r3, r8
	str r0, [r3]
	strb r7, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, sb
	strh r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E0396:
	ldr r3, [r4, #0x44]
	ldr r1, _080E03D0 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E03F0
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080E03D4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E045E
	strh r2, [r1]
	b _080E045E
	.align 2, 0
_080E03D0: .4byte 0xFFFFF000
_080E03D4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E03EC @ =0xFFFFFE80
	cmp r0, r2
	bge _080E045E
	strh r2, [r1]
	b _080E045E
	.align 2, 0
_080E03EC: .4byte 0xFFFFFE80
_080E03F0:
	cmp r3, r0
	bge _080E0438
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080E0418
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E045E
	strh r1, [r2]
	b _080E045E
_080E0418:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E0434 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E045E
	strh r1, [r2]
	b _080E045E
	.align 2, 0
_080E0434: .4byte 0xFFFFFE80
_080E0438:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0452
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E045E
	b _080E045C
_080E0452:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E045E
_080E045C:
	strh r7, [r1]
_080E045E:
	ldr r3, [r4, #0x40]
	ldr r2, _080E04A0 @ =0xFFFFF000
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sl
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E04A4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E04F4
	b _080E04F8
	.align 2, 0
_080E04A0: .4byte 0xFFFFF000
_080E04A4:
	cmp r3, r0
	ble _080E0508
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E04DC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E04D8 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E04F4
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E0532
	strh r1, [r2]
	b _080E0532
	.align 2, 0
_080E04D8: .4byte 0xFFFFFF00
_080E04DC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E04F8
_080E04F4:
	strh r3, [r2]
	b _080E0532
_080E04F8:
	ldr r1, _080E0504 @ =0xFFFFFF00
	cmp r0, r1
	bge _080E0532
	strh r1, [r2]
	b _080E0532
	.align 2, 0
_080E0504: .4byte 0xFFFFFF00
_080E0508:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0524
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0532
	b _080E052E
_080E0524:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0532
_080E052E:
	movs r0, #0
	strh r0, [r2]
_080E0532:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E0556
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080E0568
	movs r0, #0
	strh r0, [r2]
	b _080E0568
_080E0556:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080E0568
	strh r3, [r2]
_080E0568:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080E058A
	adds r0, r4, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080E058E
_080E058A:
	movs r0, #0
	strh r0, [r2]
_080E058E:
	movs r2, #0xc
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x60
	bls _080E05B2
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E05B6
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x30
	b _080E05B6
_080E05B2:
	adds r0, r1, #1
	strb r0, [r5]
_080E05B6:
	lsls r3, r2, #8
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r2, r0, r1
	ldr r0, [r4, #0x44]
	subs r1, r2, r0
	cmp r1, #0
	blt _080E05D2
	cmp r1, r3
	blt _080E05D8
	b _080E0614
_080E05D2:
	subs r0, r0, r2
	cmp r0, r3
	bge _080E0614
_080E05D8:
	movs r0, #5
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E05FC
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E0604
_080E05FC:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x2c
	b _080E060A
_080E0604:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x30
_080E060A:
	strb r0, [r1]
	movs r0, #0
	strb r0, [r5]
	ldr r0, _080E0624 @ =sub_080E0628
	str r0, [r4, #0x78]
_080E0614:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E0624: .4byte sub_080E0628

	thumb_func_start sub_080E0628
sub_080E0628: @ 0x080E0628
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sb, r1
	cmp r0, #0
	beq _080E0644
	movs r2, #0xa0
	mov sb, r2
_080E0644:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E0682
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E0682:
	ldr r3, [r4, #0x44]
	ldr r1, _080E06BC @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E06DC
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080E06C0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E074A
	strh r2, [r1]
	b _080E074A
	.align 2, 0
_080E06BC: .4byte 0xFFFFF000
_080E06C0:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E06D8 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E074A
	strh r2, [r1]
	b _080E074A
	.align 2, 0
_080E06D8: .4byte 0xFFFFFE80
_080E06DC:
	cmp r3, r0
	bge _080E0724
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080E0704
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E074A
	strh r1, [r2]
	b _080E074A
_080E0704:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E0720 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E074A
	strh r1, [r2]
	b _080E074A
	.align 2, 0
_080E0720: .4byte 0xFFFFFE80
_080E0724:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E073E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E074A
	b _080E0748
_080E073E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E074A
_080E0748:
	strh r7, [r1]
_080E074A:
	ldr r3, [r4, #0x40]
	ldr r2, _080E078C @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E0790
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E07E0
	b _080E07E4
	.align 2, 0
_080E078C: .4byte 0xFFFFF000
_080E0790:
	cmp r3, r0
	ble _080E07F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E07C8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E07C4 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E07E0
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E081E
	strh r1, [r2]
	b _080E081E
	.align 2, 0
_080E07C4: .4byte 0xFFFFFF00
_080E07C8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E07E4
_080E07E0:
	strh r3, [r2]
	b _080E081E
_080E07E4:
	ldr r1, _080E07F0 @ =0xFFFFFF00
	cmp r0, r1
	bge _080E081E
	strh r1, [r2]
	b _080E081E
	.align 2, 0
_080E07F0: .4byte 0xFFFFFF00
_080E07F4:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0810
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E081E
	b _080E081A
_080E0810:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E081E
_080E081A:
	movs r0, #0
	strh r0, [r2]
_080E081E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E0842
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080E0854
	movs r0, #0
	strh r0, [r2]
	b _080E0854
_080E0842:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080E0854
	strh r3, [r2]
_080E0854:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080E0876
	adds r0, r4, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080E087A
_080E0876:
	movs r0, #0
	strh r0, [r2]
_080E087A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E088C
	movs r0, #0x60
	strh r0, [r4, #4]
_080E088C:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080E08A2
	adds r0, r4, #0
	bl sub_080E08B0
_080E08A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E08B0
sub_080E08B0: @ 0x080E08B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E08F8 @ =sub_080E0920
	movs r1, #6
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E08F2
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E08FC
_080E08F2:
	movs r0, #0xc
	b _080E08FE
	.align 2, 0
_080E08F8: .4byte sub_080E0920
_080E08FC:
	movs r0, #0x10
_080E08FE:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E0920
sub_080E0920: @ 0x080E0920
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #7
	beq _080E0930
	b _080E0AE6
_080E0930:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080E09AC
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080E31D4
	ldr r1, _080E0A00 @ =gUnk_02020EE0
	ldr r0, _080E0A04 @ =gUnk_0203AD3C
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
	bne _080E09AC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E0970
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E09AC
_080E0970:
	ldr r1, _080E0A08 @ =gUnk_08D60FA4
	ldr r5, _080E0A0C @ =gSongTable
	ldr r2, _080E0A10 @ =0x00000BBC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E0994
	ldr r1, _080E0A14 @ =0x00000BB8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E09AC
_080E0994:
	cmp r3, #0
	beq _080E09A6
	ldr r0, _080E0A18 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E09AC
_080E09A6:
	ldr r0, _080E0A1C @ =0x00000177
	bl m4aSongNumStart
_080E09AC:
	ldrb r0, [r4, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080E09C8
	ldr r1, _080E0A20 @ =gUnk_08356A14
	ldrb r0, [r4, #1]
	subs r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080E09C8:
	ldrb r0, [r4, #1]
	cmp r0, #0x18
	beq _080E09D0
	b _080E0AD4
_080E09D0:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080E09DC
	b _080E0AD4
_080E09DC:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080E0A30
	ldr r2, _080E0A24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E0A28 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E0A2C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #1
	ands r3, r0
	b _080E0A5C
	.align 2, 0
_080E0A00: .4byte gUnk_02020EE0
_080E0A04: .4byte gUnk_0203AD3C
_080E0A08: .4byte gUnk_08D60FA4
_080E0A0C: .4byte gSongTable
_080E0A10: .4byte 0x00000BBC
_080E0A14: .4byte 0x00000BB8
_080E0A18: .4byte gUnk_0203AD10
_080E0A1C: .4byte 0x00000177
_080E0A20: .4byte gUnk_08356A14
_080E0A24: .4byte gRngVal
_080E0A28: .4byte 0x00196225
_080E0A2C: .4byte 0x3C6EF35F
_080E0A30:
	movs r5, #0
	ldr r1, _080E0AAC @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080E0AB0 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080E0AB4 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r3, r0, #0x10
	ldr r0, _080E0AB8 @ =0x00005554
	adds r2, r1, #0
	cmp r3, r0
	bls _080E0A58
	ldr r0, _080E0ABC @ =0x0000AAA9
	movs r1, #2
	cmp r3, r0
	bhi _080E0A54
	movs r1, #1
_080E0A54:
	cmp r1, #0
	bne _080E0A5A
_080E0A58:
	movs r5, #1
_080E0A5A:
	adds r3, r5, #0
_080E0A5C:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x47
	bne _080E0A7E
	cmp r3, #0
	bne _080E0A82
	ldr r1, [r2]
	ldr r0, _080E0AB0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E0AB4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #1
	ands r3, r0
_080E0A7E:
	cmp r3, #0
	beq _080E0AD4
_080E0A82:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x60
	strh r0, [r4, #4]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E0AA4
	ldrb r0, [r5]
	cmp r0, #0x47
	bne _080E0AC0
_080E0AA4:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xc
	b _080E0AC6
	.align 2, 0
_080E0AAC: .4byte gRngVal
_080E0AB0: .4byte 0x00196225
_080E0AB4: .4byte 0x3C6EF35F
_080E0AB8: .4byte 0x00005554
_080E0ABC: .4byte 0x0000AAA9
_080E0AC0:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x18
_080E0AC6:
	strb r0, [r1]
	ldr r0, _080E0AD0 @ =sub_080E0628
	str r0, [r4, #0x78]
	b _080E0B3A
	.align 2, 0
_080E0AD0: .4byte sub_080E0628
_080E0AD4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0B3A
	adds r0, r4, #0
	bl sub_080E3918
	b _080E0B3A
_080E0AE6:
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080E0B18
	ldr r2, _080E0B40 @ =gUnk_08356A04
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080E0B18:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E0B3A
	movs r0, #7
	strb r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #0x68]
_080E0B3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E0B40: .4byte gUnk_08356A04

	thumb_func_start sub_080E0B44
sub_080E0B44: @ 0x080E0B44
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E0B84 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E0B88
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E0BD2
	strh r2, [r1]
	b _080E0BD2
	.align 2, 0
_080E0B84: .4byte 0xFFFFFC00
_080E0B88:
	cmp r3, r0
	bge _080E0BA8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0BA4 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E0BD2
	strh r2, [r1]
	b _080E0BD2
	.align 2, 0
_080E0BA4: .4byte 0xFFFFFE00
_080E0BA8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0BC4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0BD2
	b _080E0BD0
_080E0BC4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0BD2
_080E0BD0:
	strh r5, [r1]
_080E0BD2:
	ldr r3, [r4, #0x40]
	ldr r2, _080E0BF8 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E0BFC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E0C34
	.align 2, 0
_080E0BF8: .4byte 0xFFFFFC00
_080E0BFC:
	cmp r3, r0
	ble _080E0C58
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E0C34
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0C30 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E0C2A
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E0C84
_080E0C2A:
	strh r2, [r1]
	b _080E0C84
	.align 2, 0
_080E0C30: .4byte 0xFFFFFE00
_080E0C34:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E0C2A
	ldr r2, _080E0C54 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E0C84
	b _080E0C2A
	.align 2, 0
_080E0C54: .4byte 0xFFFFFE00
_080E0C58:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0C74
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0C84
	b _080E0C80
_080E0C74:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0C84
_080E0C80:
	movs r0, #0
	strh r0, [r1]
_080E0C84:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E0C9A
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E0CA0
_080E0C9A:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E0CA0:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E0CF4
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E0CCA
	cmp r2, #0xf
	ble _080E0CD0
	b _080E0CF4
_080E0CCA:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E0CF4
_080E0CD0:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E0CE8
	cmp r1, #0xf
	ble _080E0CEE
	b _080E0CF4
_080E0CE8:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E0CF4
_080E0CEE:
	adds r0, r4, #0
	bl sub_080DF894
_080E0CF4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0D2C
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E0D22
	ldr r2, _080E0D34 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E0D38 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E0D3C @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E0D22:
	cmp r1, #0
	beq _080E0D2C
	adds r0, r4, #0
	bl sub_080DF720
_080E0D2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E0D34: .4byte gRngVal
_080E0D38: .4byte 0x00196225
_080E0D3C: .4byte 0x3C6EF35F

	thumb_func_start sub_080E0D40
sub_080E0D40: @ 0x080E0D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E0D64
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0D64
	movs r0, #9
	strb r0, [r2]
_080E0D64:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	mov sl, r0
	cmp r1, #0
	beq _080E0D7A
	movs r3, #0xa0
	mov sb, r3
_080E0D7A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E0DB8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E0DB8:
	ldr r3, [r4, #0x44]
	ldr r1, _080E0DF0 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E0E10
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080E0DF4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E0E7E
	strh r2, [r1]
	b _080E0E7E
	.align 2, 0
_080E0DF0: .4byte 0xFFFFF000
_080E0DF4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0E0C @ =0xFFFFFE80
	cmp r0, r2
	bge _080E0E7E
	strh r2, [r1]
	b _080E0E7E
	.align 2, 0
_080E0E0C: .4byte 0xFFFFFE80
_080E0E10:
	cmp r3, r0
	bge _080E0E58
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080E0E38
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E0E7E
	strh r1, [r2]
	b _080E0E7E
_080E0E38:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E0E54 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E0E7E
	strh r1, [r2]
	b _080E0E7E
	.align 2, 0
_080E0E54: .4byte 0xFFFFFE80
_080E0E58:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0E72
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0E7E
	b _080E0E7C
_080E0E72:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0E7E
_080E0E7C:
	strh r7, [r1]
_080E0E7E:
	ldr r3, [r4, #0x40]
	ldr r2, _080E0EC0 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E0EC4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E0F14
	b _080E0F18
	.align 2, 0
_080E0EC0: .4byte 0xFFFFF000
_080E0EC4:
	cmp r3, r0
	ble _080E0F28
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E0EFC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E0EF8 @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080E0F14
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E0F52
	strh r1, [r2]
	b _080E0F52
	.align 2, 0
_080E0EF8: .4byte 0xFFFFFE80
_080E0EFC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E0F18
_080E0F14:
	strh r3, [r2]
	b _080E0F52
_080E0F18:
	ldr r1, _080E0F24 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E0F52
	strh r1, [r2]
	b _080E0F52
	.align 2, 0
_080E0F24: .4byte 0xFFFFFE80
_080E0F28:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0F44
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0F52
	b _080E0F4E
_080E0F44:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0F52
_080E0F4E:
	movs r0, #0
	strh r0, [r2]
_080E0F52:
	mov r3, sl
	ldr r0, [r3]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E0F8C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080E0F7C
	movs r0, #0
	strh r0, [r2]
_080E0F7C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080E0FB6
	adds r0, r4, #0
	bl sub_080E39C4
	b _080E0FB6
_080E0F8C:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r5, #0
	ldrsh r0, [r0, r5]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080E0FA8
	strh r3, [r2]
_080E0FA8:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bgt _080E0FB6
	adds r0, r4, #0
	bl sub_080E39C4
_080E0FB6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E0FC4
sub_080E0FC4: @ 0x080E0FC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E0FE8
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080E0FE8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	mov sl, r0
	cmp r1, #0
	beq _080E0FFE
	movs r3, #0xa0
	mov sb, r3
_080E0FFE:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E103C
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E103C:
	ldr r3, [r4, #0x44]
	ldr r1, _080E1074 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E1094
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080E1078
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E1102
	strh r2, [r1]
	b _080E1102
	.align 2, 0
_080E1074: .4byte 0xFFFFF000
_080E1078:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1090 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E1102
	strh r2, [r1]
	b _080E1102
	.align 2, 0
_080E1090: .4byte 0xFFFFFE80
_080E1094:
	cmp r3, r0
	bge _080E10DC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080E10BC
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E1102
	strh r1, [r2]
	b _080E1102
_080E10BC:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E10D8 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E1102
	strh r1, [r2]
	b _080E1102
	.align 2, 0
_080E10D8: .4byte 0xFFFFFE80
_080E10DC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E10F6
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1102
	b _080E1100
_080E10F6:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1102
_080E1100:
	strh r7, [r1]
_080E1102:
	ldr r3, [r4, #0x40]
	ldr r2, _080E1144 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E1148
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E1198
	b _080E119C
	.align 2, 0
_080E1144: .4byte 0xFFFFF000
_080E1148:
	cmp r3, r0
	ble _080E11AC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E1180
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E117C @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E1198
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E11D6
	strh r1, [r2]
	b _080E11D6
	.align 2, 0
_080E117C: .4byte 0xFFFFFF00
_080E1180:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E119C
_080E1198:
	strh r3, [r2]
	b _080E11D6
_080E119C:
	ldr r1, _080E11A8 @ =0xFFFFFF00
	cmp r0, r1
	bge _080E11D6
	strh r1, [r2]
	b _080E11D6
	.align 2, 0
_080E11A8: .4byte 0xFFFFFF00
_080E11AC:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E11C8
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E11D6
	b _080E11D2
_080E11C8:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E11D6
_080E11D2:
	movs r0, #0
	strh r0, [r2]
_080E11D6:
	mov r3, sl
	ldr r0, [r3]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E11F8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	ble _080E120A
	movs r0, #0
	strh r0, [r2]
	b _080E120A
_080E11F8:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080E120A
	strh r3, [r2]
_080E120A:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080E122C
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080E1230
_080E122C:
	movs r0, #0
	strh r0, [r2]
_080E1230:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _080E1266
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E124E
	movs r0, #0x60
	strh r0, [r4, #4]
_080E124E:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080E12B6
	adds r0, r4, #0
	bl sub_080E12C8
	b _080E12B6
_080E1266:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x40
	bls _080E128A
	movs r0, #0x30
	str r0, [sp]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E128E
	movs r0, #0x60
	strh r0, [r4, #4]
	b _080E128E
_080E128A:
	adds r0, r1, #1
	strb r0, [r5]
_080E128E:
	ldr r1, [sp]
	lsls r3, r1, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	subs r2, r1, r0
	cmp r2, #0
	blt _080E12A8
	cmp r2, r3
	blt _080E12AE
	b _080E12B6
_080E12A8:
	subs r0, r0, r1
	cmp r0, r3
	bge _080E12B6
_080E12AE:
	movs r0, #0xa
	strb r0, [r6]
	movs r0, #0x18
	strb r0, [r5]
_080E12B6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E12C8
sub_080E12C8: @ 0x080E12C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E1304 @ =sub_080E133C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E1308
	movs r0, #0x14
	b _080E130A
	.align 2, 0
_080E1304: .4byte sub_080E133C
_080E1308:
	movs r0, #0x1c
_080E130A:
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E133C
sub_080E133C: @ 0x080E133C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080E1378
	ldr r2, _080E13AC @ =gUnk_08356A04
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080E1378:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080E1384
	b _080E1568
_080E1384:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E13B4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E13B0 @ =0xFFFFF880
	cmp r0, r2
	blt _080E13D0
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	ble _080E13D2
	b _080E13D0
	.align 2, 0
_080E13AC: .4byte gUnk_08356A04
_080E13B0: .4byte 0xFFFFF880
_080E13B4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	bgt _080E13D0
	ldr r2, _080E1418 @ =0xFFFFF880
	cmp r0, r2
	bge _080E13D2
_080E13D0:
	strh r2, [r1]
_080E13D2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E1440
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x20
	lsls r0, r0, #8
	ldr r3, [r4, #0x40]
	cmp r3, r0
	bge _080E13F0
	b _080E1540
_080E13F0:
	cmp r5, #0
	bne _080E13F6
	b _080E15DA
_080E13F6:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080E1406
	cmp r0, #3
	beq _080E1406
	b _080E15DA
_080E1406:
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E1420
	ldr r0, _080E141C @ =0x000017FF
	cmp r2, r0
	ble _080E142A
	b _080E15DA
	.align 2, 0
_080E1418: .4byte 0xFFFFF880
_080E141C: .4byte 0x000017FF
_080E1420:
	subs r1, r1, r0
	ldr r0, _080E1438 @ =0x000017FF
	cmp r1, r0
	ble _080E142A
	b _080E15DA
_080E142A:
	ldr r2, _080E143C @ =0xFFFFE000
	adds r0, r3, r2
	ldr r1, [r5, #0x40]
	subs r2, r1, r0
	cmp r2, #0
	bge _080E1498
	b _080E14A8
	.align 2, 0
_080E1438: .4byte 0x000017FF
_080E143C: .4byte 0xFFFFE000
_080E1440:
	adds r0, r4, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x20
	lsls r0, r0, #8
	ldr r3, [r4, #0x40]
	cmp r3, r0
	bgt _080E1540
	cmp r5, #0
	bne _080E1458
	b _080E15DA
_080E1458:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080E1468
	cmp r0, #3
	beq _080E1468
	b _080E15DA
_080E1468:
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E1480
	ldr r0, _080E147C @ =0x000013FF
	cmp r2, r0
	ble _080E148A
	b _080E15DA
	.align 2, 0
_080E147C: .4byte 0x000013FF
_080E1480:
	subs r1, r1, r0
	ldr r0, _080E14A0 @ =0x000013FF
	cmp r1, r0
	ble _080E148A
	b _080E15DA
_080E148A:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r3, r1
	ldr r1, [r5, #0x40]
	subs r2, r1, r0
	cmp r2, #0
	blt _080E14A8
_080E1498:
	ldr r0, _080E14A4 @ =0x000007FF
	cmp r2, r0
	ble _080E14B2
	b _080E15DA
	.align 2, 0
_080E14A0: .4byte 0x000013FF
_080E14A4: .4byte 0x000007FF
_080E14A8:
	subs r1, r0, r1
	ldr r0, _080E1548 @ =0x000007FF
	cmp r1, r0
	ble _080E14B2
	b _080E15DA
_080E14B2:
	ldr r1, [r5, #0x78]
	ldr r0, _080E154C @ =sub_080E133C
	cmp r1, r0
	beq _080E14CC
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_080A8D18
_080E14CC:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E1550 @ =gUnk_02020EE0
	ldr r0, _080E1554 @ =gUnk_0203AD3C
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
	bne _080E1540
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E1500
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E1540
_080E1500:
	ldr r1, _080E1558 @ =gUnk_08D60FA4
	ldr r5, _080E155C @ =gSongTable
	ldr r2, _080E1560 @ =0x00000CA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E1526
	movs r1, #0xca
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E1540
_080E1526:
	cmp r3, #0
	beq _080E1538
	ldr r0, _080E1564 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E1540
_080E1538:
	movs r0, #0xca
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E1540:
	adds r0, r4, #0
	bl sub_080E39F8
	b _080E15DA
	.align 2, 0
_080E1548: .4byte 0x000007FF
_080E154C: .4byte sub_080E133C
_080E1550: .4byte gUnk_02020EE0
_080E1554: .4byte gUnk_0203AD3C
_080E1558: .4byte gUnk_08D60FA4
_080E155C: .4byte gSongTable
_080E1560: .4byte 0x00000CA4
_080E1564: .4byte gUnk_0203AD10
_080E1568:
	subs r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E15DA
	ldr r1, _080E15E4 @ =gUnk_02020EE0
	ldr r0, _080E15E8 @ =gUnk_0203AD3C
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
	bne _080E15DA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E159E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E15DA
_080E159E:
	ldr r1, _080E15EC @ =gUnk_08D60FA4
	ldr r4, _080E15F0 @ =gSongTable
	ldr r2, _080E15F4 @ =0x00000CCC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E15C2
	ldr r1, _080E15F8 @ =0x00000CC8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E15DA
_080E15C2:
	cmp r3, #0
	beq _080E15D4
	ldr r0, _080E15FC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E15DA
_080E15D4:
	ldr r0, _080E1600 @ =0x00000199
	bl m4aSongNumStart
_080E15DA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E15E4: .4byte gUnk_02020EE0
_080E15E8: .4byte gUnk_0203AD3C
_080E15EC: .4byte gUnk_08D60FA4
_080E15F0: .4byte gSongTable
_080E15F4: .4byte 0x00000CCC
_080E15F8: .4byte 0x00000CC8
_080E15FC: .4byte gUnk_0203AD10
_080E1600: .4byte 0x00000199

	thumb_func_start sub_080E1604
sub_080E1604: @ 0x080E1604
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E1644 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E1648
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1692
	strh r2, [r1]
	b _080E1692
	.align 2, 0
_080E1644: .4byte 0xFFFFFC00
_080E1648:
	cmp r3, r0
	bge _080E1668
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1664 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1692
	strh r2, [r1]
	b _080E1692
	.align 2, 0
_080E1664: .4byte 0xFFFFFE00
_080E1668:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1684
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1692
	b _080E1690
_080E1684:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1692
_080E1690:
	strh r5, [r1]
_080E1692:
	ldr r3, [r4, #0x40]
	ldr r2, _080E16B8 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E16BC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E16F4
	.align 2, 0
_080E16B8: .4byte 0xFFFFFC00
_080E16BC:
	cmp r3, r0
	ble _080E1718
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E16F4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E16F0 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E16EA
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1744
_080E16EA:
	strh r2, [r1]
	b _080E1744
	.align 2, 0
_080E16F0: .4byte 0xFFFFFE00
_080E16F4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E16EA
	ldr r2, _080E1714 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1744
	b _080E16EA
	.align 2, 0
_080E1714: .4byte 0xFFFFFE00
_080E1718:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1734
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1744
	b _080E1740
_080E1734:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1744
_080E1740:
	movs r0, #0
	strh r0, [r1]
_080E1744:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E175A
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1760
_080E175A:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E1760:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E17B4
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E178A
	cmp r2, #0xf
	ble _080E1790
	b _080E17B4
_080E178A:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E17B4
_080E1790:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E17A8
	cmp r1, #0xf
	ble _080E17AE
	b _080E17B4
_080E17A8:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E17B4
_080E17AE:
	adds r0, r4, #0
	bl sub_080DF894
_080E17B4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E17EC
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E17E2
	ldr r2, _080E17F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E17F8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E17FC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E17E2:
	cmp r1, #0
	beq _080E17EC
	adds r0, r4, #0
	bl sub_080DF720
_080E17EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E17F4: .4byte gRngVal
_080E17F8: .4byte 0x00196225
_080E17FC: .4byte 0x3C6EF35F

	thumb_func_start sub_080E1800
sub_080E1800: @ 0x080E1800
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E1858 @ =sub_080E1868
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	subs r2, #0x3e
	ands r1, r2
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #0x18
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E185C
	movs r0, #0x48
	b _080E185E
	.align 2, 0
_080E1858: .4byte sub_080E1868
_080E185C:
	movs r0, #0x30
_080E185E:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E1868
sub_080E1868: @ 0x080E1868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080E187A
	b _080E19E2
_080E187A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E18B8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E18B8:
	ldr r2, [r4, #0x44]
	ldr r1, _080E18E4 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080E18E8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E192E
	strh r2, [r1]
	b _080E192E
	.align 2, 0
_080E18E4: .4byte 0xFFFFF000
_080E18E8:
	cmp r2, r0
	bge _080E1908
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1904 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E192E
	strh r2, [r1]
	b _080E192E
	.align 2, 0
_080E1904: .4byte 0xFFFFFE00
_080E1908:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E1922
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E192E
	b _080E192C
_080E1922:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E192E
_080E192C:
	strh r7, [r1]
_080E192E:
	ldr r2, [r4, #0x40]
	ldr r1, _080E1968 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080E1970
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1964
	b _080E1AEA
_080E1964:
	ldr r2, _080E196C @ =0xFFFFFE00
	b _080E1B0C
	.align 2, 0
_080E1968: .4byte 0xFFFFF000
_080E196C: .4byte 0xFFFFFE00
_080E1970:
	cmp r2, r0
	ble _080E19C4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E19A4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E19A0 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1998
	b _080E1AEA
_080E1998:
	movs r2, #0x80
	lsls r2, r2, #2
	b _080E1AE6
	.align 2, 0
_080E19A0: .4byte 0xFFFFFE00
_080E19A4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E19BC
	b _080E1AEA
_080E19BC:
	ldr r2, _080E19C0 @ =0xFFFFFE00
	b _080E1B0C
	.align 2, 0
_080E19C0: .4byte 0xFFFFFE00
_080E19C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080E19D4
	b _080E1B32
_080E19D4:
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E19E0
	b _080E1B40
_080E19E0:
	b _080E1B3C
_080E19E2:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E1A1E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E1A1E:
	ldr r2, [r4, #0x44]
	ldr r1, _080E1A4C @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080E1A50
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E1A96
	strh r2, [r1]
	b _080E1A96
	.align 2, 0
_080E1A4C: .4byte 0xFFFFF000
_080E1A50:
	cmp r2, r0
	bge _080E1A70
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1A6C @ =0xFFFFFE80
	cmp r0, r2
	bge _080E1A96
	strh r2, [r1]
	b _080E1A96
	.align 2, 0
_080E1A6C: .4byte 0xFFFFFE80
_080E1A70:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E1A8A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1A96
	b _080E1A94
_080E1A8A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1A96
_080E1A94:
	strh r7, [r1]
_080E1A96:
	ldr r2, [r4, #0x40]
	ldr r1, _080E1AB8 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080E1ABC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E1AF4
	.align 2, 0
_080E1AB8: .4byte 0xFFFFF000
_080E1ABC:
	cmp r2, r0
	ble _080E1B18
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E1AF4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1AF0 @ =0xFFFFFE80
	cmp r0, r2
	blt _080E1AEA
	movs r2, #0xc0
	lsls r2, r2, #1
_080E1AE6:
	cmp r0, r2
	ble _080E1B40
_080E1AEA:
	strh r2, [r1]
	b _080E1B40
	.align 2, 0
_080E1AF0: .4byte 0xFFFFFE80
_080E1AF4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E1AEA
	ldr r2, _080E1B14 @ =0xFFFFFE80
_080E1B0C:
	cmp r0, r2
	bge _080E1B40
	b _080E1AEA
	.align 2, 0
_080E1B14: .4byte 0xFFFFFE80
_080E1B18:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1B32
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1B40
	b _080E1B3C
_080E1B32:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1B40
_080E1B3C:
	movs r0, #0
	strh r0, [r1]
_080E1B40:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E1B56
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1B5C
_080E1B56:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E1B5C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E1B70
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xd
	strb r0, [r1]
_080E1B70:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E1B82
	adds r0, r4, #0
	bl sub_080E3C6C
_080E1B82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E1B8C
sub_080E1B8C: @ 0x080E1B8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080E1BDC
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E1BDC
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080E1BDC
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080E1BDC
	cmp r0, #0x7a
	bhi _080E1BDC
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080E1BDC
	ldr r5, [r6, #8]
	ldr r0, _080E1BE0 @ =0x03800B00
	ands r5, r0
	cmp r5, #0
	beq _080E1BE4
_080E1BDC:
	movs r0, #0
	b _080E1C9E
	.align 2, 0
_080E1BE0: .4byte 0x03800B00
_080E1BE4:
	ldr r2, _080E1CAC @ =sub_080E3AE0
	adds r0, r4, #0
	movs r1, #0xe
	bl ObjectSetFunc
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080E1CB0 @ =gUnk_083569BC
	str r0, [r7]
	adds r0, r4, #0
	adds r0, #0xac
	str r6, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	str r6, [r4, #0x6c]
	ldr r1, _080E1CB4 @ =gUnk_02020EE0
	ldr r0, _080E1CB8 @ =gUnk_0203AD3C
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
	bne _080E1C9C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E1C5E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E1C9C
_080E1C5E:
	ldr r1, _080E1CBC @ =gUnk_08D60FA4
	ldr r4, _080E1CC0 @ =gSongTable
	ldr r2, _080E1CC4 @ =0x00000CD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E1C84
	movs r1, #0xcd
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E1C9C
_080E1C84:
	cmp r3, #0
	beq _080E1C94
	ldr r0, _080E1CC8 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080E1C9C
_080E1C94:
	movs r0, #0xcd
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E1C9C:
	movs r0, #1
_080E1C9E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E1CAC: .4byte sub_080E3AE0
_080E1CB0: .4byte gUnk_083569BC
_080E1CB4: .4byte gUnk_02020EE0
_080E1CB8: .4byte gUnk_0203AD3C
_080E1CBC: .4byte gUnk_08D60FA4
_080E1CC0: .4byte gSongTable
_080E1CC4: .4byte 0x00000CD4
_080E1CC8: .4byte gUnk_0203AD10

	thumb_func_start sub_080E1CCC
sub_080E1CCC: @ 0x080E1CCC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0xc]
	movs r6, #0x80
	ands r6, r1
	cmp r6, #0
	bne _080E1CEC
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080E1CFC
_080E1CEC:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080E25B4
	b _080E1EB4
_080E1CFC:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080E1D34 @ =0xFFFFFC00
	ands r4, r2
	adds r1, #4
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r3, r0, #8
	ands r3, r2
	adds r7, r1, #0
	cmp r4, r3
	ble _080E1D38
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1D82
	strh r2, [r1]
	b _080E1D82
	.align 2, 0
_080E1D34: .4byte 0xFFFFFC00
_080E1D38:
	cmp r4, r3
	bge _080E1D58
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1D54 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1D82
	strh r2, [r1]
	b _080E1D82
	.align 2, 0
_080E1D54: .4byte 0xFFFFFE00
_080E1D58:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1D74
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1D82
	b _080E1D80
_080E1D74:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1D82
_080E1D80:
	strh r6, [r1]
_080E1D82:
	ldr r4, [r5, #0x40]
	ldr r0, _080E1DA4 @ =0xFFFFFC00
	ands r4, r0
	adds r1, r5, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r3, r1, #8
	ands r3, r0
	cmp r4, r3
	bge _080E1DA8
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080E1DE0
	.align 2, 0
_080E1DA4: .4byte 0xFFFFFC00
_080E1DA8:
	cmp r4, r3
	ble _080E1E04
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E1DE0
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1DDC @ =0xFFFFFE00
	cmp r0, r2
	blt _080E1DD6
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1E30
_080E1DD6:
	strh r2, [r1]
	b _080E1E30
	.align 2, 0
_080E1DDC: .4byte 0xFFFFFE00
_080E1DE0:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E1DD6
	ldr r2, _080E1E00 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1E30
	b _080E1DD6
	.align 2, 0
_080E1E00: .4byte 0xFFFFFE00
_080E1E04:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1E20
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1E30
	b _080E1E2C
_080E1E20:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1E30
_080E1E2C:
	movs r0, #0
	strh r0, [r1]
_080E1E30:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E1E46
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1E4C
_080E1E46:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080E1E4C:
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x83
	cmp r0, #0
	beq _080E1E72
	movs r0, #0x10
	strb r0, [r4]
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_0803E2B0
_080E1E72:
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _080E1EB4
	movs r0, #0
	ldrsh r1, [r7, r0]
	adds r1, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080E1EB4
	adds r0, r5, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r5, #0x40]
	cmp r1, r0
	bge _080E1EB4
	adds r0, r5, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r2, _080E1EBC @ =0xFFFFFC00
	adds r0, r0, r2
	cmp r1, r0
	ble _080E1EB4
	adds r0, r5, #0
	bl sub_080E3B9C
_080E1EB4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E1EBC: .4byte 0xFFFFFC00

	thumb_func_start sub_080E1EC0
sub_080E1EC0: @ 0x080E1EC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r2, [r0]
	ldr r1, [r5, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080E1EDE
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _080E1EEE
_080E1EDE:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080E25B4
	b _080E2018
_080E1EEE:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E1F04
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1F0A
_080E1F04:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080E1F0A:
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080E1FFC
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080E1FDC @ =0xF9800000
	cmp r0, r1
	bge _080E1F2C
	ldr r0, _080E1FE0 @ =0x0000F980
	strh r0, [r2]
_080E1F2C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080E2018
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
	ldr r1, _080E1FE4 @ =gUnk_02020EE0
	ldr r0, _080E1FE8 @ =gUnk_0203AD3C
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
	bne _080E1FD2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E1F92
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E1FD2
_080E1F92:
	ldr r1, _080E1FEC @ =gUnk_08D60FA4
	ldr r4, _080E1FF0 @ =gSongTable
	ldr r3, _080E1FF4 @ =0x00000BB4
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E1FB8
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E1FD2
_080E1FB8:
	cmp r3, #0
	beq _080E1FCA
	ldr r0, _080E1FF8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E1FD2
_080E1FCA:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E1FD2:
	adds r0, r5, #0
	bl sub_080E3BD0
	b _080E2018
	.align 2, 0
_080E1FDC: .4byte 0xF9800000
_080E1FE0: .4byte 0x0000F980
_080E1FE4: .4byte gUnk_02020EE0
_080E1FE8: .4byte gUnk_0203AD3C
_080E1FEC: .4byte gUnk_08D60FA4
_080E1FF0: .4byte gSongTable
_080E1FF4: .4byte 0x00000BB4
_080E1FF8: .4byte gUnk_0203AD10
_080E1FFC:
	subs r0, r1, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E2018
	ldr r0, [r5, #8]
	ldr r1, _080E2020 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080E2018:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2020: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E2024
sub_080E2024: @ 0x080E2024
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080E2042
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080E2052
_080E2042:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080E25B4
	b _080E20A8
_080E2052:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2068
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E206E
_080E2068:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080E206E:
	str r0, [r2, #8]
	movs r0, #0x9e
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080E2096
	ldr r1, _080E20B0 @ =gUnk_08356A04
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080E2096:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E20A8
	adds r0, r2, #0
	bl sub_080E3C0C
_080E20A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E20B0: .4byte gUnk_08356A04

	thumb_func_start sub_080E20B4
sub_080E20B4: @ 0x080E20B4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E20F8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E20FC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080E214C
	strh r2, [r5]
	b _080E214C
	.align 2, 0
_080E20F8: .4byte 0xFFFFFC00
_080E20FC:
	cmp r3, r0
	bge _080E2120
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E211C @ =0xFFFFFE00
	adds r5, r1, #0
	cmp r0, r2
	bge _080E214C
	strh r2, [r5]
	b _080E214C
	.align 2, 0
_080E211C: .4byte 0xFFFFFE00
_080E2120:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080E213E
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E214C
	b _080E214A
_080E213E:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E214C
_080E214A:
	strh r6, [r5]
_080E214C:
	ldr r3, [r4, #0x40]
	ldr r2, _080E2188 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r3, r0
	bge _080E218C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E21DC
	b _080E21E0
	.align 2, 0
_080E2188: .4byte 0xFFFFFC00
_080E218C:
	cmp r3, r0
	ble _080E21F0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E21C4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E21C0 @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E21DC
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E221E
	strh r1, [r2]
	b _080E221E
	.align 2, 0
_080E21C0: .4byte 0xFFFFFE00
_080E21C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080E21E0
_080E21DC:
	strh r3, [r2]
	b _080E221E
_080E21E0:
	ldr r1, _080E21EC @ =0xFFFFFE00
	cmp r0, r1
	bge _080E221E
	strh r1, [r2]
	b _080E221E
	.align 2, 0
_080E21EC: .4byte 0xFFFFFE00
_080E21F0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E220E
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E221E
	b _080E221A
_080E220E:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E221E
_080E221A:
	movs r0, #0
	strh r0, [r2]
_080E221E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2234
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E223A
_080E2234:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E223A:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080E2290
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E2264
	cmp r2, #0xf
	ble _080E226A
	b _080E22A0
_080E2264:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E22A0
_080E226A:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E2282
	cmp r1, #0xf
	ble _080E2288
	b _080E22A0
_080E2282:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E22A0
_080E2288:
	adds r0, r4, #0
	bl sub_080DF894
	b _080E22A0
_080E2290:
	ldrb r0, [r4, #1]
	cmp r0, #0x17
	bhi _080E22A0
	movs r0, #0
	strh r0, [r2]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r5]
_080E22A0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E22D8
	movs r0, #0
	strb r0, [r6]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E22CE
	ldr r2, _080E22E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E22E4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E22E8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E22CE:
	cmp r1, #0
	beq _080E22D8
	adds r0, r4, #0
	bl sub_080DF720
_080E22D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E22E0: .4byte gRngVal
_080E22E4: .4byte 0x00196225
_080E22E8: .4byte 0x3C6EF35F

	thumb_func_start sub_080E22EC
sub_080E22EC: @ 0x080E22EC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E230E
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E231E
	b _080E231A
_080E230E:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E231E
_080E231A:
	movs r0, #0
	strh r0, [r1]
_080E231E:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E233A
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E234A
	b _080E2346
_080E233A:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E234A
_080E2346:
	movs r0, #0
	strh r0, [r1]
_080E234A:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2360
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E2366
_080E2360:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E2366:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xe
	bne _080E238A
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E23B0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xf
	strb r0, [r2]
	b _080E23B0
_080E238A:
	cmp r0, #0xf
	bne _080E23B0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E23B0
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	adds r0, r4, #0
	bl sub_080E3CC4
_080E23B0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E23B8
sub_080E23B8: @ 0x080E23B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E23F8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E23FC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E2446
	strh r2, [r1]
	b _080E2446
	.align 2, 0
_080E23F8: .4byte 0xFFFFFC00
_080E23FC:
	cmp r3, r0
	bge _080E241C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2418 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E2446
	strh r2, [r1]
	b _080E2446
	.align 2, 0
_080E2418: .4byte 0xFFFFFE00
_080E241C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E2438
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2446
	b _080E2444
_080E2438:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2446
_080E2444:
	strh r5, [r1]
_080E2446:
	ldr r3, [r4, #0x40]
	ldr r2, _080E246C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E2470
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E24A8
	.align 2, 0
_080E246C: .4byte 0xFFFFFC00
_080E2470:
	cmp r3, r0
	ble _080E24CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E24A8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E24A4 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E249E
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E24F8
_080E249E:
	strh r2, [r1]
	b _080E24F8
	.align 2, 0
_080E24A4: .4byte 0xFFFFFE00
_080E24A8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E249E
	ldr r2, _080E24C8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E24F8
	b _080E249E
	.align 2, 0
_080E24C8: .4byte 0xFFFFFE00
_080E24CC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E24E8
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E24F8
	b _080E24F4
_080E24E8:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E24F8
_080E24F4:
	movs r0, #0
	strh r0, [r1]
_080E24F8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E250E
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E2514
_080E250E:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E2514:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E2568
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E253E
	cmp r2, #0xf
	ble _080E2544
	b _080E2568
_080E253E:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2568
_080E2544:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E255C
	cmp r1, #0xf
	ble _080E2562
	b _080E2568
_080E255C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E2568
_080E2562:
	adds r0, r4, #0
	bl sub_080DF894
_080E2568:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E25A0
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E2596
	ldr r2, _080E25A8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E25AC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E25B0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E2596:
	cmp r1, #0
	beq _080E25A0
	adds r0, r4, #0
	bl sub_080DF720
_080E25A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E25A8: .4byte gRngVal
_080E25AC: .4byte 0x00196225
_080E25B0: .4byte 0x3C6EF35F

	thumb_func_start sub_080E25B4
sub_080E25B4: @ 0x080E25B4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080E2618 @ =sub_080E261C
	movs r1, #0x16
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E2618: .4byte sub_080E261C

	thumb_func_start sub_080E261C
sub_080E261C: @ 0x080E261C
	push {r4, r5, lr}
	mov ip, r0
	ldrh r0, [r0, #4]
	mov r1, ip
	movs r2, #4
	ldrsh r4, [r1, r2]
	cmp r4, #0
	beq _080E262E
	b _080E27E6
_080E262E:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r5, ip
	ldr r3, [r5, #0x44]
	ldr r2, _080E2668 @ =0xFFFFFC00
	ands r3, r2
	adds r1, #4
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	ble _080E266C
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E26B6
	strh r2, [r1]
	b _080E26B6
	.align 2, 0
_080E2668: .4byte 0xFFFFFC00
_080E266C:
	cmp r3, r0
	bge _080E268C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2688 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E26B6
	strh r2, [r1]
	b _080E26B6
	.align 2, 0
_080E2688: .4byte 0xFFFFFE00
_080E268C:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E26A8
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E26B6
	b _080E26B4
_080E26A8:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E26B6
_080E26B4:
	strh r4, [r1]
_080E26B6:
	mov r4, ip
	ldr r3, [r4, #0x40]
	ldr r2, _080E26E0 @ =0xFFFFFC00
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r4, r1, #0
	cmp r3, r0
	bge _080E26E4
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E271C
	.align 2, 0
_080E26E0: .4byte 0xFFFFFC00
_080E26E4:
	cmp r3, r0
	ble _080E2740
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E271C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2718 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E2714
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E276C
_080E2714:
	strh r2, [r1]
	b _080E276C
	.align 2, 0
_080E2718: .4byte 0xFFFFFE00
_080E271C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E2714
	ldr r2, _080E273C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E276C
	b _080E2714
	.align 2, 0
_080E273C: .4byte 0xFFFFFE00
_080E2740:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E275C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E276C
	b _080E2768
_080E275C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E276C
_080E2768:
	movs r0, #0
	strh r0, [r1]
_080E276C:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2788
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E2792
_080E2788:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080E2792:
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E2822
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E27BC
	cmp r2, #0xf
	ble _080E27C2
	b _080E2822
_080E27BC:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2822
_080E27C2:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E27D8
	cmp r2, #0xf
	ble _080E27DE
	b _080E2822
_080E27D8:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2822
_080E27DE:
	mov r0, ip
	bl sub_080DF894
	b _080E2822
_080E27E6:
	subs r0, #1
	mov r1, ip
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E2822
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E2818
	ldr r2, _080E2828 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E282C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E2830 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E2818:
	cmp r1, #0
	beq _080E2822
	mov r0, ip
	bl sub_080DF720
_080E2822:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2828: .4byte gRngVal
_080E282C: .4byte 0x00196225
_080E2830: .4byte 0x3C6EF35F

	thumb_func_start sub_080E2834
sub_080E2834: @ 0x080E2834
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r0, #0xb4
	ldr r5, [r0]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E285A
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E286A
	b _080E2866
_080E285A:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E286A
_080E2866:
	movs r0, #0
	strh r0, [r1]
_080E286A:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E2886
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2896
	b _080E2892
_080E2886:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2896
_080E2892:
	movs r0, #0
	strh r0, [r1]
_080E2896:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	bne _080E28B4
	adds r0, #4
	strb r1, [r0]
	adds r0, r3, #0
	bl sub_080DF894
	b _080E28C4
_080E28B4:
	adds r0, r5, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E28C4
	adds r0, r3, #0
	bl sub_080E3D34
_080E28C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E28CC
sub_080E28CC: @ 0x080E28CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r0, #0xb4
	ldr r6, [r0]
	cmp r6, #0
	bne _080E28EA
	mov r0, ip
	bl sub_080E3D90
	b _080E2BD8
_080E28EA:
	mov r1, ip
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0xa0
	movs r7, #0
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	mov r4, ip
	adds r4, #0xa2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r2
	mov sl, r0
	mov r5, ip
	adds r5, #0x9f
	cmp r1, #0x12
	beq _080E2922
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E2922
	b _080E2BBA
_080E2922:
	mov r0, ip
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	str r0, [sp]
	cmp r1, #0
	beq _080E2938
	movs r3, #0xa0
	mov sb, r3
_080E2938:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r1, _080E2980 @ =0xFFFFFC00
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E29A4
	mov r3, ip
	ldrh r2, [r3, #4]
	movs r7, #4
	ldrsh r0, [r3, r7]
	cmp r0, #0
	ble _080E2984
	mov r1, ip
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E2980: .4byte 0xFFFFFC00
_080E2984:
	mov r1, ip
	adds r1, #0x52
	ldrh r7, [r1]
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E29A0 @ =0xFFFFFE80
	adds r4, r1, #0
	cmp r0, r2
	bge _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E29A0: .4byte 0xFFFFFE80
_080E29A4:
	cmp r3, r0
	bge _080E29F4
	mov r1, ip
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080E29D2
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	mov r3, ip
	ldrh r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r0, #0
	cmp r1, r2
	ble _080E2A20
	strh r2, [r4]
	b _080E2A20
_080E29D2:
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	mov r7, ip
	ldrh r2, [r7, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _080E29F0 @ =0xFFFFFE80
	adds r4, r0, #0
	cmp r1, r2
	bge _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E29F0: .4byte 0xFFFFFE80
_080E29F4:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E2A12
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2A20
	b _080E2A1E
_080E2A12:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2A20
_080E2A1E:
	strh r7, [r4]
_080E2A20:
	mov r7, ip
	ldr r3, [r7, #0x40]
	ldr r2, _080E2A68 @ =0xFFFFFC00
	ands r3, r2
	mov r0, r8
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov r7, sb
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E2A6C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080E2AC0
	b _080E2AC4
	.align 2, 0
_080E2A68: .4byte 0xFFFFFC00
_080E2A6C:
	cmp r3, r0
	ble _080E2AD4
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E2AA8
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2AA4 @ =0xFFFFFE80
	adds r3, r1, #0
	cmp r0, r2
	blt _080E2AC0
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E2B02
	strh r1, [r3]
	b _080E2B02
	.align 2, 0
_080E2AA4: .4byte 0xFFFFFE80
_080E2AA8:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	ble _080E2AC4
_080E2AC0:
	strh r2, [r3]
	b _080E2B02
_080E2AC4:
	ldr r1, _080E2AD0 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E2B02
	strh r1, [r3]
	b _080E2B02
	.align 2, 0
_080E2AD0: .4byte 0xFFFFFE80
_080E2AD4:
	mov r0, ip
	adds r0, #0x50
	ldrh r2, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E2AF2
	adds r0, r2, #0
	adds r0, #0x18
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2B02
	b _080E2AFE
_080E2AF2:
	adds r0, r2, #0
	subs r0, #0x18
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2B02
_080E2AFE:
	movs r0, #0
	strh r0, [r3]
_080E2B02:
	ldr r1, [sp]
	ldr r0, [r1]
	ldrb r2, [r0, #0xe]
	cmp r2, #0
	beq _080E2B30
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	mov r0, ip
	adds r0, #0xa4
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bge _080E2B50
	movs r0, #0
	strh r0, [r3]
	b _080E2B50
_080E2B30:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r7, ip
	str r0, [r7, #8]
	mov r0, ip
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r7, #0x40]
	cmp r1, r0
	ble _080E2B50
	strh r2, [r3]
_080E2B50:
	ldrb r0, [r5]
	cmp r0, #1
	bne _080E2BB0
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E2B6A
	movs r0, #0x60
	strh r0, [r2, #4]
_080E2B6A:
	mov r7, ip
	ldr r0, [r7, #0x44]
	ldr r2, _080E2B90 @ =0xFFFFF800
	ands r0, r2
	ldr r1, [r6, #0x44]
	ands r1, r2
	cmp r0, r1
	bne _080E2BB4
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E2B94
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r2, r0
	bgt _080E2B9E
	b _080E2BB4
	.align 2, 0
_080E2B90: .4byte 0xFFFFF800
_080E2B94:
	subs r1, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080E2BB4
_080E2B9E:
	movs r1, #0
	movs r0, #0
	strh r0, [r3]
	strh r0, [r4]
	movs r0, #0x13
	mov r2, sl
	strb r0, [r2]
	strb r1, [r5]
	b _080E2BB4
_080E2BB0:
	subs r0, #1
	strb r0, [r5]
_080E2BB4:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E2BD8
_080E2BBA:
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0x13
	bne _080E2BD8
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0x13
	bne _080E2BD8
	mov r0, ip
	bl sub_080E2BE8
	adds r0, r6, #0
	bl sub_080E2BE8
_080E2BD8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E2BE8
sub_080E2BE8: @ 0x080E2BE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	ldr r2, _080E2C28 @ =sub_080E2C78
	adds r0, r4, #0
	movs r1, #0x14
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldr r0, _080E2C2C @ =0x0000FF80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2C1A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080E2C1A:
	ldr r2, [r4, #0x40]
	ldr r0, [r5, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080E2C30
	lsrs r0, r1, #8
	b _080E2C34
	.align 2, 0
_080E2C28: .4byte sub_080E2C78
_080E2C2C: .4byte 0x0000FF80
_080E2C30:
	subs r0, r0, r2
	lsrs r0, r0, #8
_080E2C34:
	adds r2, r4, #0
	adds r2, #0xa0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	strh r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2C52
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r0, r1, r0
	b _080E2C58
_080E2C52:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, r0, r1
_080E2C58:
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E2C78
sub_080E2C78: @ 0x080E2C78
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	bgt _080E2CCC
	cmp r0, #7
	ble _080E2CBC
	ldr r2, _080E2CC8 @ =gUnk_08356A04
	mov r3, ip
	movs r4, #4
	ldrsh r0, [r3, r4]
	subs r0, #8
	asrs r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x54
	movs r3, #0
	strb r1, [r0]
	mov r5, ip
	movs r1, #4
	ldrsh r0, [r5, r1]
	subs r0, #8
	asrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x55
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x50
	strh r3, [r0]
_080E2CBC:
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	b _080E2D7C
	.align 2, 0
_080E2CC8: .4byte gUnk_08356A04
_080E2CCC:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2CFC
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E2CF8 @ =0xFFFFFB00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E2D14
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	ble _080E2D20
	b _080E2D1E
	.align 2, 0
_080E2CF8: .4byte 0xFFFFFB00
_080E2CFC:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r2, r1, #0
	cmp r0, r3
	ble _080E2D18
_080E2D14:
	strh r3, [r2]
	b _080E2D20
_080E2D18:
	ldr r1, _080E2D54 @ =0xFFFFFB00
	cmp r0, r1
	bge _080E2D20
_080E2D1E:
	strh r1, [r2]
_080E2D20:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	beq _080E2D58
	mov r0, ip
	adds r0, #0xa0
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r4, ip
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r3, r0
	bge _080E2D7C
	lsls r0, r3, #8
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	mov r0, ip
	bl sub_080E2D84
	b _080E2D7C
	.align 2, 0
_080E2D54: .4byte 0xFFFFFB00
_080E2D58:
	mov r0, ip
	adds r0, #0xa0
	movs r5, #0
	ldrsh r3, [r0, r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r5, ip
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r3, r0
	ble _080E2D7C
	lsls r0, r3, #8
	str r0, [r5, #0x40]
	strh r4, [r2]
	mov r0, ip
	bl sub_080E2D84
_080E2D7C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E2D84
sub_080E2D84: @ 0x080E2D84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080E2DB0 @ =sub_080E2E94
	movs r1, #0x14
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
	beq _080E2DB4
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x14
	b _080E2DBA
	.align 2, 0
_080E2DB0: .4byte sub_080E2E94
_080E2DB4:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x20
_080E2DBA:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E2E72
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2DE4
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #3
	bl sub_080A8D18
	b _080E2DF4
_080E2DE4:
	movs r2, #0x28
	rsbs r2, r2, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_080A8D18
_080E2DF4:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E2E7C @ =gUnk_02020EE0
	ldr r0, _080E2E80 @ =gUnk_0203AD3C
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
	bne _080E2E68
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E2E28
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E2E68
_080E2E28:
	ldr r1, _080E2E84 @ =gUnk_08D60FA4
	ldr r5, _080E2E88 @ =gSongTable
	ldr r2, _080E2E8C @ =0x00000CA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E2E4E
	movs r1, #0xca
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E2E68
_080E2E4E:
	cmp r3, #0
	beq _080E2E60
	ldr r0, _080E2E90 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E2E68
_080E2E60:
	movs r0, #0xca
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E2E68:
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
_080E2E72:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2E7C: .4byte gUnk_02020EE0
_080E2E80: .4byte gUnk_0203AD3C
_080E2E84: .4byte gUnk_08D60FA4
_080E2E88: .4byte gSongTable
_080E2E8C: .4byte 0x00000CA4
_080E2E90: .4byte gUnk_0203AD10

	thumb_func_start sub_080E2E94
sub_080E2E94: @ 0x080E2E94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r7, #0
	adds r2, r7, #0
	adds r2, #0xb4
	ldr r0, [r2]
	mov sl, r0
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #7
	bgt _080E2ECC
	ldr r1, _080E2FC4 @ =gUnk_08356A14
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x54
	strb r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _080E2ECC
	mov r0, sl
	adds r0, #0x54
	strb r1, [r0]
_080E2ECC:
	movs r1, #4
	ldrsh r0, [r7, r1]
	adds r1, r7, #0
	adds r1, #0x9e
	ldrb r1, [r1]
	cmp r0, r1
	bge _080E2EDC
	b _080E2FE0
_080E2EDC:
	adds r1, r3, #0
	adds r1, #0xba
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E2FD8
	mov r0, sl
	adds r0, #0xba
	strb r2, [r0]
	ldrb r0, [r1]
	cmp r0, #2
	bhi _080E2FD8
	ldr r2, _080E2FC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E2FCC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080E2FD0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2FD8
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r4, [r0]
	adds r0, r7, #0
	movs r1, #0x12
	ldr r2, _080E2FD4 @ =sub_080E28CC
	bl ObjectSetFunc
	adds r0, r7, #0
	bl sub_0803D368
	adds r1, r7, #0
	adds r1, #0xac
	str r0, [r1]
	adds r4, #0xac
	str r0, [r4]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #8]
	movs r4, #0x9f
	adds r4, r4, r7
	mov sb, r4
	movs r0, #0x5a
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	movs r6, #8
	strh r6, [r7, #4]
	movs r5, #4
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	mov r0, sl
	adds r0, #0xb4
	ldr r4, [r0]
	mov r0, sl
	movs r1, #0x12
	ldr r2, _080E2FD4 @ =sub_080E28CC
	bl ObjectSetFunc
	mov r0, sl
	bl sub_0803D368
	mov r1, sl
	adds r1, #0xac
	str r0, [r1]
	adds r4, #0xac
	str r0, [r4]
	mov r4, sl
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	mov r0, r8
	strb r0, [r4]
	mov r1, sl
	strh r6, [r1, #4]
	str r5, [sp]
	mov r0, sl
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	adds r0, r7, #0
	adds r0, #0x83
	movs r2, #0x13
	strb r2, [r0]
	movs r1, #0x2d
	mov r0, sb
	strb r1, [r0]
	mov r0, sl
	adds r0, #0x83
	strb r2, [r0]
	strb r1, [r4]
	b _080E2FE6
	.align 2, 0
_080E2FC4: .4byte gUnk_08356A14
_080E2FC8: .4byte gRngVal
_080E2FCC: .4byte 0x00196225
_080E2FD0: .4byte 0x3C6EF35F
_080E2FD4: .4byte sub_080E28CC
_080E2FD8:
	adds r0, r7, #0
	bl sub_080E3D90
	b _080E2FE6
_080E2FE0:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080E2FE6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E2FF8
sub_080E2FF8: @ 0x080E2FF8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E303C @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E3040
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E308A
	strh r2, [r1]
	b _080E308A
	.align 2, 0
_080E303C: .4byte 0xFFFFFC00
_080E3040:
	cmp r3, r0
	bge _080E3060
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E305C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E308A
	strh r2, [r1]
	b _080E308A
	.align 2, 0
_080E305C: .4byte 0xFFFFFE00
_080E3060:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E307C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E308A
	b _080E3088
_080E307C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E308A
_080E3088:
	strh r5, [r1]
_080E308A:
	ldr r3, [r4, #0x40]
	ldr r2, _080E30B0 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E30B4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E30EC
	.align 2, 0
_080E30B0: .4byte 0xFFFFFC00
_080E30B4:
	cmp r3, r0
	ble _080E3110
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E30EC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E30E8 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E30E2
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E313C
_080E30E2:
	strh r2, [r1]
	b _080E313C
	.align 2, 0
_080E30E8: .4byte 0xFFFFFE00
_080E30EC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E30E2
	ldr r2, _080E310C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E313C
	b _080E30E2
	.align 2, 0
_080E310C: .4byte 0xFFFFFE00
_080E3110:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E312C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E313C
	b _080E3138
_080E312C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E313C
_080E3138:
	movs r0, #0
	strh r0, [r1]
_080E313C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E3152
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E3158
_080E3152:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E3158:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E31AC
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E3182
	cmp r2, #0xf
	ble _080E3188
	b _080E31AC
_080E3182:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E31AC
_080E3188:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E31A0
	cmp r1, #0xf
	ble _080E31A6
	b _080E31AC
_080E31A0:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E31AC
_080E31A6:
	adds r0, r4, #0
	bl sub_080DF894
_080E31AC:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E31CC
	movs r0, #0
	strb r0, [r5]
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
_080E31CC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E31D4
sub_080E31D4: @ 0x080E31D4
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
	beq _080E31F8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080E31FE
_080E31F8:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080E31FE:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #0x10
	mov ip, r0
	movs r4, #0
	ldr r1, _080E3220 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E3224 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E323C
	.align 2, 0
_080E3220: .4byte gUnk_020229D4
_080E3224: .4byte gUnk_020229E0
_080E3228:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E3244
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E323C:
	cmp r0, #0
	bne _080E3228
	orrs r2, r3
	str r2, [r1]
_080E3244:
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
	movs r0, #0xc8
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

	thumb_func_start sub_080E32A8
sub_080E32A8: @ 0x080E32A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E32DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E32E0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E32E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E32EC
	.align 2, 0
_080E32DC: .4byte ObjectMain
_080E32E0: .4byte ObjectDestroy
_080E32E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E32EC:
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
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x68]
	orrs r0, r2
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E336C @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #4
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080E3370
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E336C: .4byte sub_0809F840

	thumb_func_start sub_080E3370
sub_080E3370: @ 0x080E3370
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E33A0 @ =sub_080E3DE4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E3390
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E3390:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #0
	beq _080E33A4
	cmp r2, #1
	beq _080E33B0
	b _080E33C0
	.align 2, 0
_080E33A0: .4byte sub_080E3DE4
_080E33A4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r1]
	b _080E33C0
_080E33B0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
_080E33C0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E33D4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080E33D4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E33E4
sub_080E33E4: @ 0x080E33E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E3414 @ =sub_080E34C4
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
	beq _080E3418
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3420
	.align 2, 0
_080E3414: .4byte sub_080E34C4
_080E3418:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3420:
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
	ldr r0, _080E34BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E3470
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E3470:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r1, _080E34C0 @ =0x12010400
	str r1, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E349E
	orrs r1, r3
_080E349E:
	str r1, [r4, #8]
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x24
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E34BC: .4byte gUnk_03000510
_080E34C0: .4byte 0x12010400

	thumb_func_start sub_080E34C4
sub_080E34C4: @ 0x080E34C4
	push {r4, r5, lr}
	ldr r2, _080E34E0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E34E4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E34EC
	.align 2, 0
_080E34E0: .4byte gCurTask
_080E34E4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E34EC:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E3506
	ldr r0, [r2]
	bl TaskDestroy
	b _080E3602
_080E3506:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E3514
	orrs r1, r3
	str r1, [r4, #8]
	b _080E3602
_080E3514:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E3550 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E3554
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E3554
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E3602
	.align 2, 0
_080E3550: .4byte gUnk_03000510
_080E3554:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E3564
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E356C
_080E3564:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E356C:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080E3602
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E3590
	ldr r0, _080E358C @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E3602
	.align 2, 0
_080E358C: .4byte 0xFFFBFFFF
_080E3590:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E3602
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E3602
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E35C8
	ldr r2, _080E35C0 @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E35C4 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E35CA
	.align 2, 0
_080E35C0: .4byte gUnk_02023530
_080E35C4: .4byte 0x0000065E
_080E35C8:
	movs r1, #0xff
_080E35CA:
	cmp r1, #0xff
	beq _080E3602
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E3608 @ =gUnk_02022EB0
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
	ldr r2, _080E360C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E3602:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E3608: .4byte gUnk_02022EB0
_080E360C: .4byte gUnk_02022F50

	thumb_func_start sub_080E3610
sub_080E3610: @ 0x080E3610
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	adds r5, r6, #0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E3638 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E363C @ =gUnk_020229E0
	b _080E3654
	.align 2, 0
_080E3638: .4byte gUnk_020229D4
_080E363C: .4byte gUnk_020229E0
_080E3640:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E365C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E3654:
	cmp r0, #0
	bne _080E3640
	orrs r2, r3
	str r2, [r1]
_080E365C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x40
	strh r0, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x4d
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, r8
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
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	str r0, [r6, #0x70]
	str r5, [r0, #0x70]
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, #0xb4
	str r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E36C4
sub_080E36C4: @ 0x080E36C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E370A
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xc8
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E372A
	str r1, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_080E3734
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080E3610
	b _080E372A
_080E370A:
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080E3730 @ =0x00003FFF
	cmp r1, r0
	ble _080E372A
	adds r0, #1
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_080E3734
_080E372A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3730: .4byte 0x00003FFF

	thumb_func_start sub_080E3734
sub_080E3734: @ 0x080E3734
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3754 @ =sub_080E3758
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3754: .4byte sub_080E3758

	thumb_func_start sub_080E3758
sub_080E3758: @ 0x080E3758
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E379C
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080E37BC
	ldr r0, _080E3798 @ =0xFFFFFDFF
	ands r3, r0
	str r3, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #3
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080DF894
	b _080E37BC
	.align 2, 0
_080E3798: .4byte 0xFFFFFDFF
_080E379C:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E37BC
	ldr r0, _080E37C0 @ =0xFFFFFDFF
	ands r3, r0
	str r3, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080DF894
_080E37BC:
	pop {r0}
	bx r0
	.align 2, 0
_080E37C0: .4byte 0xFFFFFDFF

	thumb_func_start sub_080E37C4
sub_080E37C4: @ 0x080E37C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E37EC @ =sub_080DF4C0
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
_080E37EC: .4byte sub_080DF4C0

	thumb_func_start sub_080E37F0
sub_080E37F0: @ 0x080E37F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3820 @ =sub_080DFC3C
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E3824
	movs r0, #0x14
	b _080E3826
	.align 2, 0
_080E3820: .4byte sub_080DFC3C
_080E3824:
	movs r0, #0x18
_080E3826:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3844
sub_080E3844: @ 0x080E3844
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3888 @ =sub_080DFDE0
	movs r1, #3
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x26
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	ldr r0, [r4, #0x68]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3888: .4byte sub_080DFDE0

	thumb_func_start sub_080E388C
sub_080E388C: @ 0x080E388C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E38DC @ =sub_080DFE40
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E38DC: .4byte sub_080DFE40

	thumb_func_start sub_080E38E0
sub_080E38E0: @ 0x080E38E0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080E3914 @ =sub_080E0318
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x1a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3914: .4byte sub_080E0318

	thumb_func_start sub_080E3918
sub_080E3918: @ 0x080E3918
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3968 @ =sub_080E0B44
	movs r1, #8
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3968: .4byte sub_080E0B44

	thumb_func_start sub_080E396C
sub_080E396C: @ 0x080E396C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E39C0 @ =sub_080E0D40
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E39C0: .4byte sub_080E0D40

	thumb_func_start sub_080E39C4
sub_080E39C4: @ 0x080E39C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080E39F4 @ =sub_080E0FC4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E39F4: .4byte sub_080E0FC4

	thumb_func_start sub_080E39F8
sub_080E39F8: @ 0x080E39F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3A34 @ =sub_080E3A4C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E3A38
	movs r0, #0x18
	b _080E3A3A
	.align 2, 0
_080E3A34: .4byte sub_080E3A4C
_080E3A38:
	movs r0, #0x30
_080E3A3A:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3A4C
sub_080E3A4C: @ 0x080E3A4C
	push {lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #7
	bhi _080E3A78
	ldr r1, _080E3A90 @ =gUnk_08356A04
	lsrs r0, r2, #0x19
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080E3A78:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E3A8A
	adds r0, r3, #0
	bl sub_080E3A94
_080E3A8A:
	pop {r0}
	bx r0
	.align 2, 0
_080E3A90: .4byte gUnk_08356A04

	thumb_func_start sub_080E3A94
sub_080E3A94: @ 0x080E3A94
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3ADC @ =sub_080E1604
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3ADC: .4byte sub_080E1604

	thumb_func_start sub_080E3AE0
sub_080E3AE0: @ 0x080E3AE0
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080E3AFE
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080E3B0E
_080E3AFE:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080E25B4
	b _080E3B26
_080E3B0E:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E3B26
	adds r0, r2, #0
	bl sub_080E3B2C
_080E3B26:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3B2C
sub_080E3B2C: @ 0x080E3B2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080E3B90 @ =gUnk_083569DC
	str r1, [r0]
	ldr r2, _080E3B94 @ =sub_080E1CCC
	adds r0, r4, #0
	movs r1, #0xf
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080E3B98 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3B90: .4byte gUnk_083569DC
_080E3B94: .4byte sub_080E1CCC
_080E3B98: .4byte gUnk_02023530

	thumb_func_start sub_080E3B9C
sub_080E3B9C: @ 0x080E3B9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3BCC @ =sub_080E1EC0
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3BCC: .4byte sub_080E1EC0

	thumb_func_start sub_080E3BD0
sub_080E3BD0: @ 0x080E3BD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3C08 @ =sub_080E2024
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3C08: .4byte sub_080E2024

	thumb_func_start sub_080E3C0C
sub_080E3C0C: @ 0x080E3C0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080E3C64 @ =gUnk_083569EC
	str r1, [r0]
	ldr r2, _080E3C68 @ =sub_080E20B4
	adds r0, r4, #0
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3C64: .4byte gUnk_083569EC
_080E3C68: .4byte sub_080E20B4

	thumb_func_start sub_080E3C6C
sub_080E3C6C: @ 0x080E3C6C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080E3CC0 @ =sub_080E22EC
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3CC0: .4byte sub_080E22EC

	thumb_func_start sub_080E3CC4
sub_080E3CC4: @ 0x080E3CC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3D0C @ =sub_080E23B8
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D0C: .4byte sub_080E23B8

	thumb_func_start sub_080E3D10
sub_080E3D10: @ 0x080E3D10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3D30 @ =sub_080E2834
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xb8
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r4, #0xba
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D30: .4byte sub_080E2834

	thumb_func_start sub_080E3D34
sub_080E3D34: @ 0x080E3D34
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	ldr r2, _080E3D8C @ =sub_080E28CC
	adds r0, r4, #0
	movs r1, #0x12
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r5, #0xac
	str r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x5a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D8C: .4byte sub_080E28CC

	thumb_func_start sub_080E3D90
sub_080E3D90: @ 0x080E3D90
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3DE0 @ =sub_080E2FF8
	movs r1, #0x15
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb8
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3DE0: .4byte sub_080E2FF8

	thumb_func_start sub_080E3DE4
sub_080E3DE4: @ 0x080E3DE4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #8
	bne _080E3DF4
	adds r0, r1, #0
	bl sub_080E3DF8
_080E3DF4:
	pop {r0}
	bx r0

	thumb_func_start sub_080E3DF8
sub_080E3DF8: @ 0x080E3DF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3E18 @ =sub_080E3E24
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080E3E1C @ =0xFFFFF7FF
	ands r0, r1
	ldr r1, _080E3E20 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3E18: .4byte sub_080E3E24
_080E3E1C: .4byte 0xFFFFF7FF
_080E3E20: .4byte 0xFFFFFDFF

	thumb_func_start sub_080E3E24
sub_080E3E24: @ 0x080E3E24
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080E3E30
sub_080E3E30: @ 0x080E3E30
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E3E4A
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3E52
_080E3E4A:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3E52:
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _080E3E6C
	adds r3, r2, #0
	adds r3, #0x87
	movs r0, #0
	movs r1, #1
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0xb4
	str r0, [r1]
	str r0, [r2, #0x70]
_080E3E6C:
	adds r0, r4, #0
	bl ObjectDestroy
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateGobbler
CreateGobbler: @ 0x080E3E78
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E3EAC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E3EB0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E3EB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3EBC
	.align 2, 0
_080E3EAC: .4byte ObjectMain
_080E3EB0: .4byte ObjectDestroy
_080E3EB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3EBC:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	orrs r0, r2
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	subs r1, #0x48
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080E3FE0 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r1, #0x19
	rsbs r1, r1, #0
	subs r2, #0xb
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x17
	bl sub_0803E2B0
	movs r1, #0xf
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080E3FE4 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080E3FE8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080E3FEC @ =gUnk_02020EE0
	ldr r0, _080E3FF0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E3FB6
	ldr r0, _080E3FF4 @ =gUnk_0203AD20
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080E3FB6
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E3FB6:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E3FF8 @ =sub_080E7C54
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080E79D4
	adds r0, r4, #0
	bl sub_080E5E58
	adds r0, r4, #0
	bl sub_080E6470
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E3FE0: .4byte 0x001080A0
_080E3FE4: .4byte gUnk_02023530
_080E3FE8: .4byte 0x0000065E
_080E3FEC: .4byte gUnk_02020EE0
_080E3FF0: .4byte gUnk_0203AD3C
_080E3FF4: .4byte gUnk_0203AD20
_080E3FF8: .4byte sub_080E7C54

	thumb_func_start sub_080E3FFC
sub_080E3FFC: @ 0x080E3FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080E4022
	b _080E41AA
_080E4022:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080E4036
	b _080E41AA
_080E4036:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r0, #0xb0
	adds r0, r0, r5
	mov r8, r0
	ldr r4, [r0]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov ip, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080E4066
	b _080E41AA
_080E4066:
	ldr r4, _080E41B8 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080E43B4
	movs r0, #0x5a
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080E40E6
	movs r0, #0
	strb r0, [r1, #9]
_080E40E6:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080E41BC @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080E41AA
	ldr r0, _080E41C0 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080E41AA
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080E41AA
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080E4168
	movs r4, #1
_080E4130:
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
	bls _080E4130
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080E4168:
	ldr r1, _080E41C0 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080E41C4 @ =gUnk_02020EE0
	ldr r0, _080E41C8 @ =gUnk_0203AD3C
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
	bne _080E41AA
	ldr r0, _080E41CC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080E41AA
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E41AA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E41B8: .4byte gUnk_02023530
_080E41BC: .4byte 0x0000065E
_080E41C0: .4byte gUnk_08352D80
_080E41C4: .4byte gUnk_02020EE0
_080E41C8: .4byte gUnk_0203AD3C
_080E41CC: .4byte gUnk_0203AD20

	thumb_func_start sub_080E41D0
sub_080E41D0: @ 0x080E41D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #3
	mov r8, r0
	movs r7, #2
	movs r1, #2
	mov sb, r1
	movs r2, #4
	mov sl, r2
	adds r5, r4, #0
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x44]
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080E4218
	movs r3, #4
	mov r8, r3
	movs r7, #4
	movs r0, #8
	mov sb, r0
	adds r0, r4, #0
	adds r0, #0xc0
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_080E4218:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4224
	b _080E4386
_080E4224:
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4230
	b _080E4396
_080E4230:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E426C
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _080E425A
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	beq _080E425A
	mov r1, r8
	adds r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r2, #0
	mov r8, r2
_080E425A:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r6, r5, #0
	adds r6, #0xb8
	adds r2, r5, #0
	adds r2, #0xbc
	cmp r0, #0
	bne _080E428E
_080E426C:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	adds r6, r0, #0
	adds r2, r5, #0
	adds r2, #0xbc
	cmp r1, #0
	bne _080E428E
	ldr r0, [r2]
	cmp r0, #0
	bne _080E428E
	mov r3, r8
	adds r0, r3, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _080E42C8
_080E428E:
	movs r3, #0
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E42A4
	ldr r1, [r0, #0x78]
	ldr r0, _080E4328 @ =sub_080E6784
	cmp r1, r0
	bne _080E42A4
	movs r3, #1
_080E42A4:
	ldr r0, [r6]
	cmp r0, #0
	beq _080E42B4
	ldr r1, [r0, #0x78]
	ldr r0, _080E4328 @ =sub_080E6784
	cmp r1, r0
	bne _080E42B4
	movs r3, #1
_080E42B4:
	ldr r0, [r2]
	cmp r0, #0
	beq _080E42C4
	ldr r1, [r0, #0x78]
	ldr r0, _080E4328 @ =sub_080E6784
	cmp r1, r0
	bne _080E42C4
	movs r3, #1
_080E42C4:
	cmp r3, #0
	bne _080E42CA
_080E42C8:
	movs r7, #0
_080E42CA:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080E432C @ =gUnk_08351530
	ldr r0, _080E4330 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E42FE
	adds r0, r5, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080E42FE
	adds r1, r5, #0
	adds r1, #0xc2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080E42FE:
	ldr r2, _080E4334 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4338 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E433C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E4340
	adds r0, r4, #0
	bl sub_080E7B0C
	b _080E43A4
	.align 2, 0
_080E4328: .4byte sub_080E6784
_080E432C: .4byte gUnk_08351530
_080E4330: .4byte gUnk_0203AD30
_080E4334: .4byte gRngVal
_080E4338: .4byte 0x00196225
_080E433C: .4byte 0x3C6EF35F
_080E4340:
	subs r0, r1, r7
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E4352
	adds r0, r4, #0
	bl sub_080E7B7C
	b _080E43A4
_080E4352:
	mov r3, sb
	subs r0, r1, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E4366
	adds r0, r4, #0
	bl sub_080E7BA4
	b _080E43A4
_080E4366:
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E437A
	adds r0, r4, #0
	bl sub_080E4BD0
	b _080E43A4
_080E437A:
	mov r3, sl
	subs r0, r1, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E438E
_080E4386:
	adds r0, r4, #0
	bl sub_080E4E6C
	b _080E43A4
_080E438E:
	subs r0, r1, #4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080E439E
_080E4396:
	adds r0, r4, #0
	bl sub_080E53E8
	b _080E43A4
_080E439E:
	adds r0, r4, #0
	bl sub_080E43B4
_080E43A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E43B4
sub_080E43B4: @ 0x080E43B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080E43CC
	adds r0, r4, #0
	bl sub_080E7C00
	b _080E4476
_080E43CC:
	ldr r2, _080E4428 @ =sub_080E4488
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080E442C @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4410
	ldr r1, _080E4430 @ =gUnk_08351530
	ldr r0, _080E4434 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E4444
_080E4410:
	ldr r2, _080E4438 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E443C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4440 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x18
	b _080E445A
	.align 2, 0
_080E4428: .4byte sub_080E4488
_080E442C: .4byte 0xFFFFFDFF
_080E4430: .4byte gUnk_08351530
_080E4434: .4byte gUnk_0203AD30
_080E4438: .4byte gRngVal
_080E443C: .4byte 0x00196225
_080E4440: .4byte 0x3C6EF35F
_080E4444:
	ldr r2, _080E447C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4480 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4484 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x40
_080E445A:
	strh r0, [r4, #4]
	ldr r1, [r2]
	ldr r0, _080E4480 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4484 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #4
	ldrsh r2, [r4, r1]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4, #4]
_080E4476:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E447C: .4byte gRngVal
_080E4480: .4byte 0x00196225
_080E4484: .4byte 0x3C6EF35F

	thumb_func_start sub_080E4488
sub_080E4488: @ 0x080E4488
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	mov ip, r3
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080E44AA
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E44BA
	b _080E44B6
_080E44AA:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E44BA
_080E44B6:
	movs r0, #0
	strh r0, [r1]
_080E44BA:
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080E44E8
	ldr r2, _080E44E4 @ =gUnk_08356B48
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r5, r0, #0
	b _080E4534
	.align 2, 0
_080E44E4: .4byte gUnk_08356B48
_080E44E8:
	ldrb r4, [r3, #1]
	adds r5, r3, #0
	adds r5, #0x52
	cmp r4, #1
	bne _080E4534
	ldr r2, _080E4524 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4528 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E452C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	ands r1, r4
	ldr r2, [r3, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r2, r0
	bne _080E4510
	movs r1, #0
_080E4510:
	movs r0, #0x8c
	lsls r0, r0, #9
	cmp r2, r0
	bne _080E451A
	movs r1, #1
_080E451A:
	cmp r1, #0
	beq _080E4530
	movs r0, #0x40
	b _080E4532
	.align 2, 0
_080E4524: .4byte gRngVal
_080E4528: .4byte 0x00196225
_080E452C: .4byte 0x3C6EF35F
_080E4530:
	ldr r0, _080E4590 @ =0x0000FFC0
_080E4532:
	strh r0, [r5]
_080E4534:
	adds r2, r5, #0
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E454C
	movs r0, #0
	strh r0, [r2]
	str r1, [r3, #0x44]
_080E454C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x44]
	subs r1, r1, r0
	ldr r0, _080E4594 @ =0x000117FF
	cmp r1, r0
	ble _080E4564
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E4564:
	ldrb r2, [r6]
	cmp r2, #1
	bne _080E4598
	ldr r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E4584
	ldrb r0, [r3, #1]
	cmp r0, #0x19
	bls _080E45B6
	mov r0, ip
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080E45B6
_080E4584:
	eors r1, r2
	str r1, [r3, #8]
	movs r0, #0
	strb r0, [r6]
	b _080E45B6
	.align 2, 0
_080E4590: .4byte 0x0000FFC0
_080E4594: .4byte 0x000117FF
_080E4598:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080E45B6
	strh r0, [r5]
	adds r0, r3, #0
	bl sub_080E41D0
_080E45B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E45BC
sub_080E45BC: @ 0x080E45BC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080E45DC
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E45EC
	b _080E45E8
_080E45DC:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E45EC
_080E45E8:
	movs r0, #0
	strh r0, [r1]
_080E45EC:
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	bne _080E46DA
	ldrb r0, [r2, #1]
	cmp r0, #7
	bhi _080E462C
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E461A
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E46C6
	b _080E4626
_080E461A:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E46C6
_080E4626:
	movs r0, #0
	strh r0, [r1]
	b _080E46C6
_080E462C:
	cmp r0, #0x17
	bhi _080E467C
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E465C
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E4658 @ =0xFFFFFF00
	cmp r0, r3
	blt _080E46C4
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	ble _080E46C6
	b _080E46C4
	.align 2, 0
_080E4658: .4byte 0xFFFFFF00
_080E465C:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080E46C4
	ldr r3, _080E4678 @ =0xFFFFFF00
	b _080E46C0
	.align 2, 0
_080E4678: .4byte 0xFFFFFF00
_080E467C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E46A8
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E46A4 @ =0xFFFFFE00
	cmp r0, r3
	blt _080E46C4
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	ble _080E46C6
	b _080E46C4
	.align 2, 0
_080E46A4: .4byte 0xFFFFFE00
_080E46A8:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	bgt _080E46C4
	ldr r3, _080E4708 @ =0xFFFFFE00
_080E46C0:
	cmp r0, r3
	bge _080E46C6
_080E46C4:
	strh r3, [r1]
_080E46C6:
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E46DA
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r4]
_080E46DA:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E4778
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4718
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _080E4708 @ =0xFFFFFE00
	cmp r3, r0
	bge _080E470C
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	b _080E4736
	.align 2, 0
_080E4708: .4byte 0xFFFFFE00
_080E470C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	ble _080E4736
	strh r0, [r1]
	b _080E4736
_080E4718:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	bgt _080E4734
	ldr r3, _080E4758 @ =0xFFFFFE00
	cmp r0, r3
	bge _080E4736
_080E4734:
	strh r3, [r1]
_080E4736:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4760
	ldr r0, [r2, #0x40]
	ldr r1, _080E475C @ =0xFFFFD800
	cmp r0, r1
	bgt _080E4778
	str r1, [r2, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x44]
	adds r0, r2, #0
	bl sub_080E7BCC
	b _080E4778
	.align 2, 0
_080E4758: .4byte 0xFFFFFE00
_080E475C: .4byte 0xFFFFD800
_080E4760:
	ldr r1, [r2, #0x40]
	ldr r0, _080E4780 @ =0x000127FF
	cmp r1, r0
	ble _080E4778
	adds r0, #1
	str r0, [r2, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x44]
	adds r0, r2, #0
	bl sub_080E7BCC
_080E4778:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E4780: .4byte 0x000127FF

	thumb_func_start sub_080E4784
sub_080E4784: @ 0x080E4784
	push {r4, r5, lr}
	mov ip, r0
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E4858
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0xe
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080E47D8 @ =0xFE800000
	cmp r0, r1
	bge _080E47A8
	ldr r0, _080E47DC @ =0x0000FE80
	strh r0, [r2]
_080E47A8:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E47E4
	mov r2, ip
	adds r2, #0x50
	ldr r3, _080E47E0 @ =0xFFFFFC00
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	blt _080E4806
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	ble _080E4808
	b _080E4806
	.align 2, 0
_080E47D8: .4byte 0xFE800000
_080E47DC: .4byte 0x0000FE80
_080E47E0: .4byte 0xFFFFFC00
_080E47E4:
	mov r2, ip
	adds r2, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bgt _080E4806
	ldr r1, _080E482C @ =0xFFFFFC00
	cmp r0, r1
	bge _080E4808
_080E4806:
	strh r1, [r2]
_080E4808:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4834
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080E4830 @ =0xFFFFD800
	cmp r0, r1
	ble _080E4820
	b _080E4964
_080E4820:
	str r1, [r2, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x44]
	b _080E484A
	.align 2, 0
_080E482C: .4byte 0xFFFFFC00
_080E4830: .4byte 0xFFFFD800
_080E4834:
	mov r3, ip
	ldr r1, [r3, #0x40]
	ldr r0, _080E4854 @ =0x000127FF
	cmp r1, r0
	bgt _080E4840
	b _080E4964
_080E4840:
	adds r0, #1
	str r0, [r3, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E484A:
	mov r0, ip
	bl sub_080E498C
	b _080E4964
	.align 2, 0
_080E4854: .4byte 0x000127FF
_080E4858:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E4864
	b _080E4964
_080E4864:
	mov r0, ip
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	ble _080E48C0
	ldr r5, _080E48AC @ =gRngVal
	ldr r0, [r5]
	ldr r4, _080E48B0 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _080E48B4 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E48B8
	mov r0, ip
	bl sub_080E4FD8
	b _080E4964
	.align 2, 0
_080E48AC: .4byte gRngVal
_080E48B0: .4byte 0x00196225
_080E48B4: .4byte 0x3C6EF35F
_080E48B8:
	mov r0, ip
	bl sub_080E5554
	b _080E4964
_080E48C0:
	ldr r2, _080E48E4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E48E8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E48EC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E48F0
	mov r1, ip
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080E48F8
	.align 2, 0
_080E48E4: .4byte gRngVal
_080E48E8: .4byte 0x00196225
_080E48EC: .4byte 0x3C6EF35F
_080E48F0:
	mov r1, ip
	adds r1, #0x52
	movs r0, #0xb8
	lsls r0, r0, #2
_080E48F8:
	strh r0, [r1]
	ldr r1, _080E496C @ =gUnk_02020EE0
	ldr r0, _080E4970 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E4964
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E4928
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E4964
_080E4928:
	ldr r1, _080E4974 @ =gUnk_08D60FA4
	ldr r4, _080E4978 @ =gSongTable
	ldr r2, _080E497C @ =0x00000C2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E494C
	ldr r1, _080E4980 @ =0x00000C28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E4964
_080E494C:
	cmp r3, #0
	beq _080E495E
	ldr r0, _080E4984 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E4964
_080E495E:
	ldr r0, _080E4988 @ =0x00000185
	bl m4aSongNumStart
_080E4964:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E496C: .4byte gUnk_02020EE0
_080E4970: .4byte gUnk_0203AD3C
_080E4974: .4byte gUnk_08D60FA4
_080E4978: .4byte gSongTable
_080E497C: .4byte 0x00000C2C
_080E4980: .4byte 0x00000C28
_080E4984: .4byte gUnk_0203AD10
_080E4988: .4byte 0x00000185

	thumb_func_start sub_080E498C
sub_080E498C: @ 0x080E498C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E4A44 @ =sub_080E4A6C
	movs r1, #0
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
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080E4A48 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4A4C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4A50 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x12
	strb r0, [r1]
	ldr r1, _080E4A54 @ =gUnk_02020EE0
	ldr r0, _080E4A58 @ =gUnk_0203AD3C
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
	bne _080E4A3E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E4A00
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E4A3E
_080E4A00:
	ldr r1, _080E4A5C @ =gUnk_08D60FA4
	ldr r4, _080E4A60 @ =gSongTable
	ldr r2, _080E4A64 @ =0x00000404
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E4A26
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E4A3E
_080E4A26:
	cmp r3, #0
	beq _080E4A38
	ldr r0, _080E4A68 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E4A3E
_080E4A38:
	movs r0, #0x80
	bl m4aSongNumStart
_080E4A3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E4A44: .4byte sub_080E4A6C
_080E4A48: .4byte gRngVal
_080E4A4C: .4byte 0x00196225
_080E4A50: .4byte 0x3C6EF35F
_080E4A54: .4byte gUnk_02020EE0
_080E4A58: .4byte gUnk_0203AD3C
_080E4A5C: .4byte gUnk_08D60FA4
_080E4A60: .4byte gSongTable
_080E4A64: .4byte 0x00000404
_080E4A68: .4byte gUnk_0203AD10

	thumb_func_start sub_080E4A6C
sub_080E4A6C: @ 0x080E4A6C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E4A7C
	b _080E4BC4
_080E4A7C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4AB4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E4AA4 @ =0xFFFFFE00
	cmp r2, r0
	bge _080E4AA8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	b _080E4AD2
	.align 2, 0
_080E4AA4: .4byte 0xFFFFFE00
_080E4AA8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E4AD2
	strh r0, [r1]
	b _080E4AD2
_080E4AB4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E4AD0
	ldr r2, _080E4B20 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E4AD2
_080E4AD0:
	strh r2, [r1]
_080E4AD2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4B28
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #8
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080E4BC8
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E4B10
	ldr r2, _080E4B24 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E4B0E
	cmp r0, #0x1a
	bne _080E4B10
_080E4B0E:
	movs r1, #1
_080E4B10:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4B6A
	cmp r1, #0
	bne _080E4B6A
	b _080E4B90
	.align 2, 0
_080E4B20: .4byte 0xFFFFFE00
_080E4B24: .4byte 0x00000103
_080E4B28:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #8
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080E4BC8
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E4B5C
	ldr r2, _080E4B80 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E4B5A
	cmp r0, #0x1a
	bne _080E4B5C
_080E4B5A:
	movs r1, #1
_080E4B5C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4B6A
	cmp r1, #0
	beq _080E4B90
_080E4B6A:
	ldr r2, _080E4B84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4B88 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4B8C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E4BAE
	.align 2, 0
_080E4B80: .4byte 0x00000103
_080E4B84: .4byte gRngVal
_080E4B88: .4byte 0x00196225
_080E4B8C: .4byte 0x3C6EF35F
_080E4B90:
	ldr r2, _080E4BB8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4BBC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4BC0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E4BAC
	movs r2, #1
_080E4BAC:
	adds r1, r2, #0
_080E4BAE:
	cmp r1, #0
	beq _080E4BC8
	movs r0, #1
	strh r0, [r4, #4]
	b _080E4BC8
	.align 2, 0
_080E4BB8: .4byte gRngVal
_080E4BBC: .4byte 0x00196225
_080E4BC0: .4byte 0x3C6EF35F
_080E4BC4:
	subs r0, #1
	strb r0, [r1]
_080E4BC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E4BD0
sub_080E4BD0: @ 0x080E4BD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080E4C34 @ =sub_080E4CAC
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9f
	movs r6, #0
	strb r6, [r5]
	ldr r2, _080E4C38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4C3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4C40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E4C44 @ =0x00005554
	cmp r2, r0
	bls _080E4C64
	ldr r0, _080E4C48 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E4C0E
	movs r1, #1
_080E4C0E:
	cmp r1, #0
	beq _080E4C64
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r3, [r4, #0x44]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r2, [r0, #0x44]
	cmp r2, r1
	ble _080E4C4C
	movs r0, #2
	strb r0, [r5]
	b _080E4CA0
	.align 2, 0
_080E4C34: .4byte sub_080E4CAC
_080E4C38: .4byte gRngVal
_080E4C3C: .4byte 0x00196225
_080E4C40: .4byte 0x3C6EF35F
_080E4C44: .4byte 0x00005554
_080E4C48: .4byte 0x0000AAA9
_080E4C4C:
	ldr r1, _080E4C5C @ =0xFFFFF600
	adds r0, r3, r1
	cmp r2, r0
	bge _080E4C60
	movs r0, #1
	strb r0, [r5]
	b _080E4CA0
	.align 2, 0
_080E4C5C: .4byte 0xFFFFF600
_080E4C60:
	strb r6, [r5]
	b _080E4CA0
_080E4C64:
	ldr r2, _080E4C80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4C84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4C88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E4C8C @ =0x00005554
	cmp r2, r0
	bhi _080E4C90
	movs r1, #0
	b _080E4C9A
	.align 2, 0
_080E4C80: .4byte gRngVal
_080E4C84: .4byte 0x00196225
_080E4C88: .4byte 0x3C6EF35F
_080E4C8C: .4byte 0x00005554
_080E4C90:
	ldr r0, _080E4CA8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E4C9A
	movs r1, #1
_080E4C9A:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
_080E4CA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E4CA8: .4byte 0x0000AAA9

	thumb_func_start sub_080E4CAC
sub_080E4CAC: @ 0x080E4CAC
	push {r4, r5, lr}
	mov ip, r0
	ldr r1, [r0, #8]
	movs r0, #4
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4D20
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E4CF8
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x1a
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E4CE4 @ =0xFFFFFDF8
	cmp r2, r0
	bge _080E4CEC
	ldr r0, _080E4CE8 @ =0x0000FDF8
	strh r0, [r1]
	b _080E4D16
	.align 2, 0
_080E4CE4: .4byte 0xFFFFFDF8
_080E4CE8: .4byte 0x0000FDF8
_080E4CEC:
	movs r0, #0x82
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E4D16
	strh r0, [r1]
	b _080E4D16
_080E4CF8:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x1a
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x82
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E4D14
	ldr r2, _080E4D1C @ =0xFFFFFDF8
	cmp r0, r2
	bge _080E4D16
_080E4D14:
	strh r2, [r1]
_080E4D16:
	movs r0, #0xa
	movs r3, #0x78
	b _080E4D6E
	.align 2, 0
_080E4D1C: .4byte 0xFFFFFDF8
_080E4D20:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E4D4C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E4D48 @ =0xFFFFFE58
	cmp r0, r2
	blt _080E4D68
	movs r2, #0xd4
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E4D6A
	b _080E4D68
	.align 2, 0
_080E4D48: .4byte 0xFFFFFE58
_080E4D4C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd4
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E4D68
	ldr r2, _080E4D80 @ =0xFFFFFE58
	cmp r0, r2
	bge _080E4D6A
_080E4D68:
	strh r2, [r1]
_080E4D6A:
	movs r0, #7
	movs r3, #0x58
_080E4D6E:
	mov r2, ip
	adds r2, #0x9f
	ldrb r2, [r2]
	cmp r2, #1
	beq _080E4D84
	cmp r2, #2
	beq _080E4DD2
	b _080E4E06
	.align 2, 0
_080E4D80: .4byte 0xFFFFFE58
_080E4D84:
	adds r2, r0, #0
	cmp r2, #0
	ble _080E4DA0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r0, r3
	ble _080E4DB8
	b _080E4DB6
_080E4DA0:
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E4DB8
_080E4DB6:
	strh r3, [r2]
_080E4DB8:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r3, ip
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E4E06
	movs r0, #0
	strh r0, [r2]
	str r1, [r3, #0x44]
	b _080E4E06
_080E4DD2:
	adds r2, r0, #0
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, r1, r2
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E4DEC
	strh r3, [r2]
_080E4DEC:
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r3, ip
	ldr r1, [r3, #0x44]
	subs r1, r1, r0
	ldr r0, _080E4E24 @ =0x000117FF
	cmp r1, r0
	ble _080E4E06
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E4E06:
	mov r4, ip
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #4
	bne _080E4E28
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E4E64
	movs r0, #0
	strb r0, [r4]
	b _080E4E64
	.align 2, 0
_080E4E24: .4byte 0x000117FF
_080E4E28:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080E4E48
	mov r0, ip
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x40
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bge _080E4E64
	b _080E4E5C
_080E4E48:
	mov r0, ip
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x40
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x40]
	cmp r1, r0
	ble _080E4E64
_080E4E5C:
	mov r0, ip
	bl sub_080E43B4
	strb r5, [r4]
_080E4E64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E4E6C
sub_080E4E6C: @ 0x080E4E6C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080E4EBC @ =sub_080E4F0C
	movs r1, #2
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
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4F00
	adds r0, r4, #0
	adds r0, #0xc2
	ldrb r0, [r0]
	cmp r0, #1
	bls _080E4F06
	cmp r0, #6
	bls _080E4ECC
	ldr r2, _080E4EC0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4EC4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4EC8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #1
	b _080E4EDE
	.align 2, 0
_080E4EBC: .4byte sub_080E4F0C
_080E4EC0: .4byte gRngVal
_080E4EC4: .4byte 0x00196225
_080E4EC8: .4byte 0x3C6EF35F
_080E4ECC:
	ldr r2, _080E4EF4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4EF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4EFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #3
_080E4EDE:
	ands r2, r0
	cmp r2, #0
	bne _080E4F06
	adds r0, r5, #0
	adds r0, #0xc0
	movs r1, #4
	strb r1, [r0]
	adds r0, #2
	strb r2, [r0]
	b _080E4F06
	.align 2, 0
_080E4EF4: .4byte gRngVal
_080E4EF8: .4byte 0x00196225
_080E4EFC: .4byte 0x3C6EF35F
_080E4F00:
	adds r0, r4, #0
	bl sub_080E4FD8
_080E4F06:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E4F0C
sub_080E4F0C: @ 0x080E4F0C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bls _080E4F72
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E4F34
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E4F44
	b _080E4F40
_080E4F34:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E4F44
_080E4F40:
	movs r0, #0
	strh r0, [r1]
_080E4F44:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4FBE
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x25
	bgt _080E4F66
	ldr r0, [r2, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #8]
	b _080E4FBE
_080E4F66:
	ldr r0, [r2, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	b _080E4FBE
_080E4F72:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4FA0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E4F9C @ =0xFFFFFE58
	cmp r0, r3
	blt _080E4FBC
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	ble _080E4FBE
	b _080E4FBC
	.align 2, 0
_080E4F9C: .4byte 0xFFFFFE58
_080E4FA0:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080E4FBC
	ldr r3, _080E4FD4 @ =0xFFFFFE58
	cmp r0, r3
	bge _080E4FBE
_080E4FBC:
	strh r3, [r1]
_080E4FBE:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E4FCE
	adds r0, r2, #0
	bl sub_080E4FD8
_080E4FCE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E4FD4: .4byte 0xFFFFFE58

	thumb_func_start sub_080E4FD8
sub_080E4FD8: @ 0x080E4FD8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080E5008 @ =sub_080E50E0
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r3, [r4, #0x44]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r2, [r0, #0x44]
	cmp r2, r1
	ble _080E500C
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #2
	b _080E5026
	.align 2, 0
_080E5008: .4byte sub_080E50E0
_080E500C:
	ldr r1, _080E501C @ =0xFFFFF600
	adds r0, r3, r1
	cmp r2, r0
	bge _080E5020
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #1
	b _080E5026
	.align 2, 0
_080E501C: .4byte 0xFFFFF600
_080E5020:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
_080E5026:
	strb r0, [r1]
	ldr r1, _080E50BC @ =gUnk_02020EE0
	ldr r0, _080E50C0 @ =gUnk_0203AD3C
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
	bne _080E5090
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E5054
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E5090
_080E5054:
	ldr r1, _080E50C4 @ =gUnk_08D60FA4
	ldr r5, _080E50C8 @ =gSongTable
	ldr r2, _080E50CC @ =0x00000C2C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E5078
	ldr r1, _080E50D0 @ =0x00000C28
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E5090
_080E5078:
	cmp r3, #0
	beq _080E508A
	ldr r0, _080E50D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E5090
_080E508A:
	ldr r0, _080E50D8 @ =0x00000185
	bl m4aSongNumStart
_080E5090:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E50B4
	ldr r2, _080E50DC @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E50B0
	cmp r0, #0x1a
	bne _080E50B4
_080E50B0:
	movs r0, #1
	strb r0, [r1]
_080E50B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E50BC: .4byte gUnk_02020EE0
_080E50C0: .4byte gUnk_0203AD3C
_080E50C4: .4byte gUnk_08D60FA4
_080E50C8: .4byte gSongTable
_080E50CC: .4byte 0x00000C2C
_080E50D0: .4byte 0x00000C28
_080E50D4: .4byte gUnk_0203AD10
_080E50D8: .4byte 0x00000185
_080E50DC: .4byte 0x00000103

	thumb_func_start sub_080E50E0
sub_080E50E0: @ 0x080E50E0
	push {lr}
	mov ip, r0
	ldr r2, [r0, #8]
	movs r0, #4
	orrs r2, r0
	mov r0, ip
	str r2, [r0, #8]
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _080E511C @ =0xFF00FF00
	ands r0, r1
	cmp r0, #0
	beq _080E515C
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E5134
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E5120 @ =0xFFFFFD60
	cmp r2, r0
	bge _080E5128
	ldr r0, _080E5124 @ =0x0000FD60
	strh r0, [r1]
	b _080E5152
	.align 2, 0
_080E511C: .4byte 0xFF00FF00
_080E5120: .4byte 0xFFFFFD60
_080E5124: .4byte 0x0000FD60
_080E5128:
	movs r0, #0xa8
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E5152
	strh r0, [r1]
	b _080E5152
_080E5134:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E5150
	ldr r2, _080E5158 @ =0xFFFFFD60
	cmp r0, r2
	bge _080E5152
_080E5150:
	strh r2, [r1]
_080E5152:
	movs r0, #0xa
	movs r3, #0x70
	b _080E51AA
	.align 2, 0
_080E5158: .4byte 0xFFFFFD60
_080E515C:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E5188
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E5184 @ =0xFFFFFD80
	cmp r0, r2
	blt _080E51A4
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E51A6
	b _080E51A4
	.align 2, 0
_080E5184: .4byte 0xFFFFFD80
_080E5188:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E51A4
	ldr r2, _080E51BC @ =0xFFFFFD80
	cmp r0, r2
	bge _080E51A6
_080E51A4:
	strh r2, [r1]
_080E51A6:
	movs r0, #6
	movs r3, #0x40
_080E51AA:
	mov r2, ip
	adds r2, #0x9f
	ldrb r2, [r2]
	cmp r2, #1
	beq _080E51C0
	cmp r2, #2
	beq _080E520E
	b _080E5242
	.align 2, 0
_080E51BC: .4byte 0xFFFFFD80
_080E51C0:
	adds r2, r0, #0
	cmp r2, #0
	ble _080E51DC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r0, r3
	ble _080E51F4
	b _080E51F2
_080E51DC:
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E51F4
_080E51F2:
	strh r3, [r2]
_080E51F4:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r3, ip
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E5242
	movs r0, #0
	strh r0, [r2]
	str r1, [r3, #0x44]
	b _080E5242
_080E520E:
	adds r2, r0, #0
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, r1, r2
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E5228
	strh r3, [r2]
_080E5228:
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r3, ip
	ldr r1, [r3, #0x44]
	subs r1, r1, r0
	ldr r0, _080E526C @ =0x000117FF
	cmp r1, r0
	ble _080E5242
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E5242:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E5270
	mov r0, ip
	adds r0, #0xa4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x48
	lsls r0, r0, #8
	mov r3, ip
	ldr r1, [r3, #0x40]
	cmp r1, r0
	bge _080E528A
	mov r0, ip
	bl sub_080E79F8
	b _080E528A
	.align 2, 0
_080E526C: .4byte 0x000117FF
_080E5270:
	mov r0, ip
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x48
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x40]
	cmp r1, r0
	ble _080E528A
	mov r0, ip
	bl sub_080E79F8
_080E528A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5290
sub_080E5290: @ 0x080E5290
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldr r0, _080E52C0 @ =0xFF00FF00
	ands r2, r0
	cmp r2, #0
	beq _080E52D6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E52C4
	adds r0, r2, #0
	adds r0, #0x1b
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5300
	b _080E52D0
	.align 2, 0
_080E52C0: .4byte 0xFF00FF00
_080E52C4:
	adds r0, r2, #0
	subs r0, #0x1b
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5300
_080E52D0:
	movs r0, #0
	strh r0, [r1]
	b _080E5300
_080E52D6:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E52F2
	adds r0, r3, #0
	adds r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5300
	b _080E52FE
_080E52F2:
	adds r0, r3, #0
	subs r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5300
_080E52FE:
	strh r2, [r1]
_080E5300:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E531C
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E532C
	b _080E5328
_080E531C:
	adds r0, r2, #0
	subs r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E532C
_080E5328:
	movs r0, #0
	strh r0, [r1]
_080E532C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E53D6
	adds r0, r4, #0
	bl sub_080E43B4
	adds r0, r4, #0
	adds r0, #0x83
	movs r2, #1
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0xc0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E5360
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E535C
	strh r2, [r4, #4]
	b _080E53D6
_080E535C:
	movs r0, #0x40
	b _080E53D4
_080E5360:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E537C
	ldr r6, _080E53A0 @ =0x00000103
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E537A
	cmp r0, #0x1a
	bne _080E537C
_080E537A:
	movs r1, #1
_080E537C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E538A
	cmp r1, #0
	beq _080E53B0
_080E538A:
	ldr r2, _080E53A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E53A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E53AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E53CE
	.align 2, 0
_080E53A0: .4byte 0x00000103
_080E53A4: .4byte gRngVal
_080E53A8: .4byte 0x00196225
_080E53AC: .4byte 0x3C6EF35F
_080E53B0:
	ldr r2, _080E53DC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E53E0 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E53E4 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E53CC
	movs r2, #1
_080E53CC:
	adds r1, r2, #0
_080E53CE:
	cmp r1, #0
	beq _080E53D6
	movs r0, #1
_080E53D4:
	strh r0, [r4, #4]
_080E53D6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E53DC: .4byte gRngVal
_080E53E0: .4byte 0x00196225
_080E53E4: .4byte 0x3C6EF35F

	thumb_func_start sub_080E53E8
sub_080E53E8: @ 0x080E53E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080E5438 @ =sub_080E5488
	movs r1, #0xd
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
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E547C
	adds r0, r4, #0
	adds r0, #0xc2
	ldrb r0, [r0]
	cmp r0, #1
	bls _080E5482
	cmp r0, #6
	bls _080E5448
	ldr r2, _080E543C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5440 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5444 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	b _080E545A
	.align 2, 0
_080E5438: .4byte sub_080E5488
_080E543C: .4byte gRngVal
_080E5440: .4byte 0x00196225
_080E5444: .4byte 0x3C6EF35F
_080E5448:
	ldr r2, _080E5470 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5474 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5478 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
_080E545A:
	ands r1, r0
	cmp r1, #0
	bne _080E5482
	adds r2, r5, #0
	adds r2, #0xc1
	movs r0, #3
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0xc2
	strb r1, [r0]
	b _080E5482
	.align 2, 0
_080E5470: .4byte gRngVal
_080E5474: .4byte 0x00196225
_080E5478: .4byte 0x3C6EF35F
_080E547C:
	adds r0, r4, #0
	bl sub_080E5554
_080E5482:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E5488
sub_080E5488: @ 0x080E5488
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bls _080E54EE
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E54B0
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E54C0
	b _080E54BC
_080E54B0:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E54C0
_080E54BC:
	movs r0, #0
	strh r0, [r1]
_080E54C0:
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E553A
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x25
	bgt _080E54E2
	ldr r0, [r2, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #8]
	b _080E553A
_080E54E2:
	ldr r0, [r2, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	b _080E553A
_080E54EE:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E551C
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E5518 @ =0xFFFFFE58
	cmp r0, r3
	blt _080E5538
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	ble _080E553A
	b _080E5538
	.align 2, 0
_080E5518: .4byte 0xFFFFFE58
_080E551C:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080E5538
	ldr r3, _080E5550 @ =0xFFFFFE58
	cmp r0, r3
	bge _080E553A
_080E5538:
	strh r3, [r1]
_080E553A:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E554A
	adds r0, r2, #0
	bl sub_080E5554
_080E554A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5550: .4byte 0xFFFFFE58

	thumb_func_start sub_080E5554
sub_080E5554: @ 0x080E5554
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080E5614 @ =sub_080E5644
	movs r1, #0xe
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080E5618 @ =gUnk_02020EE0
	ldr r0, _080E561C @ =gUnk_0203AD3C
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
	bne _080E55D0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E5594
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E55D0
_080E5594:
	ldr r1, _080E5620 @ =gUnk_08D60FA4
	ldr r5, _080E5624 @ =gSongTable
	ldr r2, _080E5628 @ =0x00000C2C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E55B8
	ldr r1, _080E562C @ =0x00000C28
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E55D0
_080E55B8:
	cmp r3, #0
	beq _080E55CA
	ldr r0, _080E5630 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E55D0
_080E55CA:
	ldr r0, _080E5634 @ =0x00000185
	bl m4aSongNumStart
_080E55D0:
	adds r3, r4, #0
	adds r3, #0x85
	movs r2, #0
	strb r2, [r3]
	ldr r1, _080E5638 @ =gUnk_08351530
	ldr r0, _080E563C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	cmp r2, r0
	ble _080E5608
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E560C
	ldr r2, _080E5640 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5608
	cmp r0, #0x1a
	bne _080E560C
_080E5608:
	movs r0, #1
	strb r0, [r3]
_080E560C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5614: .4byte sub_080E5644
_080E5618: .4byte gUnk_02020EE0
_080E561C: .4byte gUnk_0203AD3C
_080E5620: .4byte gUnk_08D60FA4
_080E5624: .4byte gSongTable
_080E5628: .4byte 0x00000C2C
_080E562C: .4byte 0x00000C28
_080E5630: .4byte gUnk_0203AD10
_080E5634: .4byte 0x00000185
_080E5638: .4byte gUnk_08351530
_080E563C: .4byte gUnk_0203AD30
_080E5640: .4byte 0x00000103

	thumb_func_start sub_080E5644
sub_080E5644: @ 0x080E5644
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _080E5684 @ =0xFF00FF00
	ands r0, r1
	cmp r0, #0
	beq _080E56C4
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E56A0
	adds r1, r3, #0
	adds r1, #0x50
	ldr r2, _080E5688 @ =0xFFFFFEA0
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E568C @ =0xFFFFFC80
	cmp r2, r0
	bge _080E5694
	ldr r0, _080E5690 @ =0x0000FC80
	strh r0, [r1]
	b _080E571C
	.align 2, 0
_080E5684: .4byte 0xFF00FF00
_080E5688: .4byte 0xFFFFFEA0
_080E568C: .4byte 0xFFFFFC80
_080E5690: .4byte 0x0000FC80
_080E5694:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E571C
	strh r0, [r1]
	b _080E571C
_080E56A0:
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E571A
	ldr r2, _080E56C0 @ =0xFFFFFC80
	b _080E5716
	.align 2, 0
_080E56C0: .4byte 0xFFFFFC80
_080E56C4:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E56F8
	adds r1, r3, #0
	adds r1, #0x50
	ldr r2, _080E56F0 @ =0xFFFFFEA0
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E56F4 @ =0xFFFFFCC0
	cmp r0, r2
	blt _080E571A
	movs r2, #0xd0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E571C
	b _080E571A
	.align 2, 0
_080E56F0: .4byte 0xFFFFFEA0
_080E56F4: .4byte 0xFFFFFCC0
_080E56F8:
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E571A
	ldr r2, _080E5740 @ =0xFFFFFCC0
_080E5716:
	cmp r0, r2
	bge _080E571C
_080E571A:
	strh r2, [r1]
_080E571C:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E5744
	adds r0, r3, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r3, #0x40]
	cmp r1, r0
	bge _080E575C
	adds r0, r3, #0
	bl sub_080E7A18
	b _080E575C
	.align 2, 0
_080E5740: .4byte 0xFFFFFCC0
_080E5744:
	adds r0, r3, #0
	adds r0, #0xa8
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r3, #0x40]
	cmp r1, r0
	ble _080E575C
	adds r0, r3, #0
	bl sub_080E7A18
_080E575C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E5760
sub_080E5760: @ 0x080E5760
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldr r0, _080E5790 @ =0xFF00FF00
	ands r2, r0
	cmp r2, #0
	beq _080E57A6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5794
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E57D0
	b _080E57A0
	.align 2, 0
_080E5790: .4byte 0xFF00FF00
_080E5794:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E57D0
_080E57A0:
	movs r0, #0
	strh r0, [r1]
	b _080E57D0
_080E57A6:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E57C2
	adds r0, r3, #0
	adds r0, #0x24
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E57D0
	b _080E57CE
_080E57C2:
	adds r0, r3, #0
	subs r0, #0x24
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E57D0
_080E57CE:
	strh r2, [r1]
_080E57D0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E587A
	adds r0, r4, #0
	bl sub_080E43B4
	adds r0, r4, #0
	adds r0, #0x83
	movs r2, #1
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0xc1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E5804
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E5800
	strh r2, [r4, #4]
	b _080E587A
_080E5800:
	movs r0, #0x40
	b _080E5878
_080E5804:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5820
	ldr r2, _080E5844 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E581E
	cmp r0, #0x1a
	bne _080E5820
_080E581E:
	movs r1, #1
_080E5820:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E582E
	cmp r1, #0
	beq _080E5854
_080E582E:
	ldr r2, _080E5848 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E584C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5850 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5872
	.align 2, 0
_080E5844: .4byte 0x00000103
_080E5848: .4byte gRngVal
_080E584C: .4byte 0x00196225
_080E5850: .4byte 0x3C6EF35F
_080E5854:
	ldr r2, _080E5880 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5884 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080E5888 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5870
	movs r2, #1
_080E5870:
	adds r1, r2, #0
_080E5872:
	cmp r1, #0
	beq _080E587A
	movs r0, #1
_080E5878:
	strh r0, [r4, #4]
_080E587A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E5880: .4byte gRngVal
_080E5884: .4byte 0x00196225
_080E5888: .4byte 0x3C6EF35F

	thumb_func_start sub_080E588C
sub_080E588C: @ 0x080E588C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E58DA
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E58DA
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080E58DA
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080E58DA
	cmp r0, #0x7a
	bhi _080E58DA
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080E58DA
	ldr r4, [r6, #8]
	ldr r0, _080E58E0 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080E58E4
_080E58DA:
	movs r0, #0
	b _080E598A
	.align 2, 0
_080E58E0: .4byte 0x03800B00
_080E58E4:
	ldr r2, _080E5994 @ =sub_080E7A38
	adds r0, r5, #0
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, _080E5998 @ =gUnk_08356A98
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	adds r0, r5, #0
	adds r0, #0xc0
	strb r2, [r0]
	ldr r1, _080E599C @ =gUnk_02020EE0
	ldr r0, _080E59A0 @ =gUnk_0203AD3C
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
	bne _080E5988
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E594A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E5988
_080E594A:
	ldr r1, _080E59A4 @ =gUnk_08D60FA4
	ldr r4, _080E59A8 @ =gSongTable
	ldr r2, _080E59AC @ =0x00000C34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E5970
	movs r1, #0xc3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E5988
_080E5970:
	cmp r3, #0
	beq _080E5980
	ldr r0, _080E59B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080E5988
_080E5980:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E5988:
	movs r0, #1
_080E598A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E5994: .4byte sub_080E7A38
_080E5998: .4byte gUnk_08356A98
_080E599C: .4byte gUnk_02020EE0
_080E59A0: .4byte gUnk_0203AD3C
_080E59A4: .4byte gUnk_08D60FA4
_080E59A8: .4byte gSongTable
_080E59AC: .4byte 0x00000C34
_080E59B0: .4byte gUnk_0203AD10

	thumb_func_start sub_080E59B4
sub_080E59B4: @ 0x080E59B4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	ldr r2, _080E5A1C @ =sub_080E5A20
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x9f
	strb r2, [r3]
	movs r0, #0x9e
	adds r0, r0, r4
	mov ip, r0
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	bne _080E59F8
	strh r5, [r4, #4]
	movs r5, #0x10
_080E59F8:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _080E5A06
	strb r5, [r3]
	movs r5, #0x10
_080E5A06:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _080E5A14
	mov r0, ip
	strb r5, [r0]
_080E5A14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5A1C: .4byte sub_080E5A20

	thumb_func_start sub_080E5A20
sub_080E5A20: @ 0x080E5A20
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080E5A50
	subs r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _080E5A42
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A42:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #0
	b _080E5AA2
_080E5A50:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E5A7A
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080E5A6E
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A6E:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #1
	b _080E5AA2
_080E5A7A:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E5AB0
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080E5A98
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A98:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #2
_080E5AA2:
	bl sub_080E7848
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	b _080E5ABC
_080E5AB0:
	ldrh r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	bl sub_080E7B50
_080E5ABC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5AC4
sub_080E5AC4: @ 0x080E5AC4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5AE4
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5AF4
	b _080E5AF0
_080E5AE4:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5AF4
_080E5AF0:
	movs r0, #0
	strh r0, [r1]
_080E5AF4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E5B7A
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5B20
	ldr r2, _080E5B44 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5B1E
	cmp r0, #0x1a
	bne _080E5B20
_080E5B1E:
	movs r1, #1
_080E5B20:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5B2E
	cmp r1, #0
	beq _080E5B54
_080E5B2E:
	ldr r2, _080E5B48 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5B4C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5B50 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5B72
	.align 2, 0
_080E5B44: .4byte 0x00000103
_080E5B48: .4byte gRngVal
_080E5B4C: .4byte 0x00196225
_080E5B50: .4byte 0x3C6EF35F
_080E5B54:
	ldr r2, _080E5B80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5B84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5B88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5B70
	movs r2, #1
_080E5B70:
	adds r1, r2, #0
_080E5B72:
	cmp r1, #0
	beq _080E5B7A
	movs r0, #1
	strh r0, [r4, #4]
_080E5B7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5B80: .4byte gRngVal
_080E5B84: .4byte 0x00196225
_080E5B88: .4byte 0x3C6EF35F

	thumb_func_start sub_080E5B8C
sub_080E5B8C: @ 0x080E5B8C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5BAE
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5BBE
	b _080E5BBA
_080E5BAE:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5BBE
_080E5BBA:
	movs r0, #0
	strh r0, [r1]
_080E5BBE:
	ldrb r0, [r4, #1]
	cmp r0, #0x1e
	bne _080E5C62
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5BD4
	bl sub_080E7028
_080E5BD4:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080E5C0C
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E5CC0 @ =0x00005554
	cmp r2, r0
	bls _080E5C04
	ldr r0, _080E5CC4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E5C00
	movs r1, #1
_080E5C00:
	cmp r1, #0
	bne _080E5C0C
_080E5C04:
	ldr r0, [r7]
	bl sub_080E6CDC
	movs r6, #1
_080E5C0C:
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080E5C44
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E5CC0 @ =0x00005554
	cmp r2, r0
	bls _080E5C3C
	ldr r0, _080E5CC4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E5C38
	movs r1, #1
_080E5C38:
	cmp r1, #0
	bne _080E5C44
_080E5C3C:
	ldr r0, [r5]
	bl sub_080E6CDC
	movs r6, #1
_080E5C44:
	cmp r6, #0
	bne _080E5C62
	ldr r0, [r7]
	cmp r0, #0
	beq _080E5C54
	bl sub_080E6CDC
	movs r6, #1
_080E5C54:
	cmp r6, #0
	bne _080E5C62
	ldr r0, [r5]
	cmp r0, #0
	beq _080E5C62
	bl sub_080E6CDC
_080E5C62:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E5CF2
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5C8E
	ldr r2, _080E5CC8 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5C8C
	cmp r0, #0x1a
	bne _080E5C8E
_080E5C8C:
	movs r1, #1
_080E5C8E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5C9C
	cmp r1, #0
	beq _080E5CCC
_080E5C9C:
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5CEA
	.align 2, 0
_080E5CB4: .4byte gRngVal
_080E5CB8: .4byte 0x00196225
_080E5CBC: .4byte 0x3C6EF35F
_080E5CC0: .4byte 0x00005554
_080E5CC4: .4byte 0x0000AAA9
_080E5CC8: .4byte 0x00000103
_080E5CCC:
	ldr r2, _080E5CF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5D00 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5CE8
	movs r2, #1
_080E5CE8:
	adds r1, r2, #0
_080E5CEA:
	cmp r1, #0
	beq _080E5CF2
	movs r0, #1
	strh r0, [r4, #4]
_080E5CF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E5CF8: .4byte gRngVal
_080E5CFC: .4byte 0x00196225
_080E5D00: .4byte 0x3C6EF35F

	thumb_func_start sub_080E5D04
sub_080E5D04: @ 0x080E5D04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E5D9A
	ldr r2, _080E5DB8 @ =0x00000299
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E5DBC @ =gUnk_02020EE0
	ldr r0, _080E5DC0 @ =gUnk_0203AD3C
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
	bne _080E5D90
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E5D54
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E5D90
_080E5D54:
	ldr r1, _080E5DC4 @ =gUnk_08D60FA4
	ldr r5, _080E5DC8 @ =gSongTable
	ldr r2, _080E5DCC @ =0x00000BDC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E5D78
	ldr r1, _080E5DD0 @ =0x00000BD8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E5D90
_080E5D78:
	cmp r3, #0
	beq _080E5D8A
	ldr r0, _080E5DD4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E5D90
_080E5D8A:
	ldr r0, _080E5DD8 @ =0x0000017B
	bl m4aSongNumStart
_080E5D90:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080E5D9A:
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080E5E52
	ldr r2, _080E5DDC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5DE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5DE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r3, #0
	b _080E5DEC
	.align 2, 0
_080E5DB8: .4byte 0x00000299
_080E5DBC: .4byte gUnk_02020EE0
_080E5DC0: .4byte gUnk_0203AD3C
_080E5DC4: .4byte gUnk_08D60FA4
_080E5DC8: .4byte gSongTable
_080E5DCC: .4byte 0x00000BDC
_080E5DD0: .4byte 0x00000BD8
_080E5DD4: .4byte gUnk_0203AD10
_080E5DD8: .4byte 0x0000017B
_080E5DDC: .4byte gRngVal
_080E5DE0: .4byte 0x00196225
_080E5DE4: .4byte 0x3C6EF35F
_080E5DE8:
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
_080E5DEC:
	cmp r3, #3
	bhi _080E5E02
	adds r2, r3, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	cmp r5, r0
	bge _080E5DE8
_080E5E02:
	cmp r3, #1
	beq _080E5E28
	cmp r3, #1
	bgt _080E5E10
	cmp r3, #0
	beq _080E5E1A
	b _080E5E52
_080E5E10:
	cmp r3, #2
	beq _080E5E38
	cmp r3, #3
	beq _080E5E46
	b _080E5E52
_080E5E1A:
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #4
	bl sub_080E625C
	b _080E5E52
_080E5E28:
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_080E625C
	b _080E5E52
_080E5E38:
	movs r1, #0xa
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #1
	bl sub_080E625C
	b _080E5E52
_080E5E46:
	movs r1, #7
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080E625C
_080E5E52:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E5E58
sub_080E5E58: @ 0x080E5E58
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080E5E88 @ =sub_080E5F20
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080E5E8C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E5E90
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E5E98
	.align 2, 0
_080E5E88: .4byte sub_080E5F20
_080E5E8C: .4byte sub_0803DCCC
_080E5E90:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E5E98:
	adds r0, r4, #0
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
	adds r5, r4, #0
	adds r5, #0x42
	movs r7, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	movs r6, #0xc3
	lsls r6, r6, #2
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0x1d
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x10
	adds r3, r6, #0
	bl sub_080709F8
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080E5F0C @ =gUnk_02020EE0
	ldr r0, _080E5F10 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080E5F14
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E5F16
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080E5F16
	.align 2, 0
_080E5F0C: .4byte gUnk_02020EE0
_080E5F10: .4byte gUnk_0203AD3C
_080E5F14:
	strb r7, [r4]
_080E5F16:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5F20
sub_080E5F20: @ 0x080E5F20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080E5F44 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E5F48
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E5F50
	.align 2, 0
_080E5F44: .4byte gCurTask
_080E5F48:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E5F50:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov r8, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E5F6C
	ldr r0, [r2]
	bl TaskDestroy
	b _080E6242
_080E5F6C:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E5F7E
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _080E6242
_080E5F7E:
	ldr r2, _080E5FE8 @ =gUnk_02020EE0
	ldr r0, _080E5FEC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r5, [r6]
	cmp r0, r5
	bne _080E6030
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080E5FF8
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080E6056
	ldrh r1, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r7, #0
	adds r4, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080E5FF0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080E5FF4 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r7, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080E6056
	.align 2, 0
_080E5FE8: .4byte gUnk_02020EE0
_080E5FEC: .4byte gUnk_0203AD3C
_080E5FF0: .4byte 0xFFF7FFFF
_080E5FF4: .4byte 0x0400000A
_080E5FF8:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080E6056
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r7, #0
	adds r3, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080E6028 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080E602C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r7, #1]
	mov r0, sp
	bl sub_0815521C
	b _080E6056
	.align 2, 0
_080E6028: .4byte 0xFFF7FFFF
_080E602C: .4byte 0x0400000A
_080E6030:
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _080E604C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080E604C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r7, #0xc]
_080E604C:
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x14]
_080E6056:
	ldr r2, _080E6098 @ =gUnk_02020EE0
	ldr r0, _080E609C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	bne _080E60A0
	adds r4, r7, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E60A8
	movs r5, #0xc3
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E60A8
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080E60A8
	.align 2, 0
_080E6098: .4byte gUnk_02020EE0
_080E609C: .4byte gUnk_0203AD3C
_080E60A0:
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080E60A8:
	ldrh r0, [r7, #6]
	ldr r2, _080E613C @ =0x0000FBFF
	ands r2, r0
	strh r2, [r7, #6]
	mov r5, r8
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	orrs r1, r2
	ldr r0, _080E6140 @ =0x0000FFFE
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, [r5, #8]
	mvns r0, r0
	movs r2, #1
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #6]
	ldr r0, [r5, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r7, #0x38]
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x40
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x41
	strb r0, [r1]
	ldr r3, [r7, #0x44]
	cmp r3, #0
	beq _080E6148
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E610C
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E610C
	movs r0, #0
	str r0, [r7, #0x44]
	movs r3, #0
_080E610C:
	cmp r3, #0
	beq _080E6148
	ldr r0, _080E6144 @ =gUnk_03000510
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
	beq _080E61B4
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E61B4
	adds r0, r7, #0
	bl sub_0803DBC8
	b _080E6242
	.align 2, 0
_080E613C: .4byte 0x0000FBFF
_080E6140: .4byte 0x0000FFFE
_080E6144: .4byte gUnk_03000510
_080E6148:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _080E61AC @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	beq _080E6186
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #4
_080E6186:
	ldr r0, _080E61B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E61B4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E61B4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080E6242
	.align 2, 0
_080E61AC: .4byte gUnk_02020EE0
_080E61B0: .4byte gUnk_03000510
_080E61B4:
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E61CE
	cmp r0, #7
	beq _080E61CE
	cmp r0, #0xc
	bls _080E61DA
_080E61CE:
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_080E61DA:
	adds r0, r7, #0
	bl sub_0806FAC8
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080E623C
	ldrh r1, [r7, #4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080E623C
	ldr r4, _080E6250 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _080E6254 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _080E6258 @ =0x3C6EF35F
	adds r0, r0, r5
	lsrs r1, r0, #0x10
	movs r3, #7
	ands r1, r3
	subs r1, #0x1b
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r2, r2, #0x10
	ands r2, r3
	subs r2, #3
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r0, r8
	bl sub_080E625C
	ldr r0, [r4]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	movs r5, #4
	ldrsh r2, [r7, r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r7, #4]
_080E623C:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080E6242:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6250: .4byte gRngVal
_080E6254: .4byte 0x00196225
_080E6258: .4byte 0x3C6EF35F

	thumb_func_start sub_080E625C
sub_080E625C: @ 0x080E625C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080E6294 @ =sub_080E6320
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080E6298 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E629C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E62A4
	.align 2, 0
_080E6294: .4byte sub_080E6320
_080E6298: .4byte sub_0803DCCC
_080E629C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E62A4:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r5, #0x3e]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E62DC
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _080E62E4
_080E62DC:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_080E62E4:
	str r0, [r5, #0x34]
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _080E631C @ =0x06012000
	movs r3, #0xa8
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E631C: .4byte 0x06012000

	thumb_func_start sub_080E6320
sub_080E6320: @ 0x080E6320
	push {r4, r5, r6, lr}
	ldr r2, _080E6340 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080E6344
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E634C
	.align 2, 0
_080E6340: .4byte gCurTask
_080E6344:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E634C:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080E6368
	ldr r0, [r5]
	bl TaskDestroy
	b _080E646A
_080E6368:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080E63B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E6380
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080E6380
	str r2, [r3, #0x44]
	movs r1, #0
_080E6380:
	cmp r1, #0
	beq _080E63B4
	ldr r0, _080E63B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E6424
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E6424
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080E646A
	.align 2, 0
_080E63B0: .4byte gUnk_03000510
_080E63B4:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080E641C @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080E63F6
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #4
_080E63F6:
	ldr r0, _080E6420 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E6424
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E6424
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080E646A
	.align 2, 0
_080E641C: .4byte gUnk_02020EE0
_080E6420: .4byte gUnk_03000510
_080E6424:
	ldrh r0, [r3, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080E644C
	movs r0, #0x3c
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r6, #0x3e
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_080E644C:
	ldr r1, [r3, #0x38]
	movs r0, #0xe8
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080E6464
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _080E646A
_080E6464:
	adds r0, r3, #0
	bl sub_0806FAC8
_080E646A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E6470
sub_080E6470: @ 0x080E6470
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E64A0 @ =sub_080E6550
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
	beq _080E64A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E64AC
	.align 2, 0
_080E64A0: .4byte sub_080E6550
_080E64A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E64AC:
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
	ldr r0, _080E6548 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E64FC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E64FC:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080E654C @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E652A
	orrs r2, r3
_080E652A:
	str r2, [r4, #8]
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0x16
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0x1e
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E6548: .4byte gUnk_03000510
_080E654C: .4byte 0x12010400

	thumb_func_start sub_080E6550
sub_080E6550: @ 0x080E6550
	push {r4, r5, lr}
	ldr r2, _080E656C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E6570
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E6578
	.align 2, 0
_080E656C: .4byte gCurTask
_080E6570:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E6578:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E6592
	ldr r0, [r2]
	bl TaskDestroy
	b _080E668E
_080E6592:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E65A0
	orrs r1, r3
	str r1, [r4, #8]
	b _080E668E
_080E65A0:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E65DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E65E0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E65E0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E668E
	.align 2, 0
_080E65DC: .4byte gUnk_03000510
_080E65E0:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E65F0
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E65F8
_080E65F0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E65F8:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E668E
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E661C
	ldr r0, _080E6618 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E668E
	.align 2, 0
_080E6618: .4byte 0xFFFBFFFF
_080E661C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E668E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E668E
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E6654
	ldr r2, _080E664C @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E6650 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E6656
	.align 2, 0
_080E664C: .4byte gUnk_02023530
_080E6650: .4byte 0x0000065E
_080E6654:
	movs r1, #0xff
_080E6656:
	cmp r1, #0xff
	beq _080E668E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E6694 @ =gUnk_02022EB0
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
	ldr r2, _080E6698 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E668E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E6694: .4byte gUnk_02022EB0
_080E6698: .4byte gUnk_02022F50

	thumb_func_start sub_080E669C
sub_080E669C: @ 0x080E669C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E66D0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E66D4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E66D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E66E0
	.align 2, 0
_080E66D0: .4byte ObjectMain
_080E66D4: .4byte ObjectDestroy
_080E66D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E66E0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080E6744
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
_080E6744:
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E6754
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
_080E6754:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E6780 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080E79A4
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E6774
	adds r0, r4, #0
	bl sub_080E761C
_080E6774:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E6780: .4byte sub_0809F840

	thumb_func_start sub_080E6784
sub_080E6784: @ 0x080E6784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r0, [r0, #0x70]
	mov sl, r0
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080E67B0
	cmp r0, #1
	ble _080E67AA
	cmp r0, #2
	beq _080E67B6
_080E67AA:
	movs r7, #0xe8
	movs r6, #0xf0
	b _080E67BA
_080E67B0:
	movs r7, #0xec
	movs r6, #0x1e
	b _080E67BA
_080E67B6:
	movs r7, #0xc
	movs r6, #0x18
_080E67BA:
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E67CC
	lsls r0, r7, #0x18
	rsbs r0, r0, #0
	lsrs r7, r0, #0x18
_080E67CC:
	mov r0, ip
	adds r0, #0x83
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _080E67E4
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	b _080E67FC
_080E67E4:
	lsls r0, r7, #0x18
	rsbs r0, r0, #0
	lsrs r7, r0, #0x18
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E67FC
	movs r0, #0
	ldr r5, [sp]
	strb r0, [r5]
_080E67FC:
	mov r1, ip
	adds r1, #0xac
	mov r0, sl
	str r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0xa0
	movs r3, #0
	mov r8, r3
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	mov r4, ip
	adds r4, #0xa2
	strh r0, [r4]
	mov r0, sl
	adds r0, #0x83
	ldrb r1, [r0]
	mov sb, r2
	adds r5, r4, #0
	str r0, [sp, #4]
	cmp r1, #3
	blt _080E683E
	cmp r1, #4
	bgt _080E6834
	b _080E69A0
_080E6834:
	cmp r1, #0xf
	bgt _080E683E
	cmp r1, #0xe
	blt _080E683E
	b _080E6B00
_080E683E:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	mov r8, r2
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E6884 @ =0xFFFFFC00
	ands r3, r2
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	ble _080E6888
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E68DA
	strh r2, [r4]
	b _080E68DA
	.align 2, 0
_080E6884: .4byte 0xFFFFFC00
_080E6888:
	cmp r3, r0
	bge _080E68AC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E68A8 @ =0xFFFFFEE8
	adds r4, r1, #0
	cmp r0, r2
	bge _080E68DA
	strh r2, [r4]
	b _080E68DA
	.align 2, 0
_080E68A8: .4byte 0xFFFFFEE8
_080E68AC:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E68CC
	adds r0, r2, #6
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E68DA
	mov r5, r8
	strh r5, [r4]
	b _080E68DA
_080E68CC:
	subs r0, r2, #6
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E68DA
	mov r0, r8
	strh r0, [r4]
_080E68DA:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6920 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6928
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E691C
	b _080E6BFC
_080E691C:
	ldr r2, _080E6924 @ =0xFFFFFE80
	b _080E6C1C
	.align 2, 0
_080E6920: .4byte 0xFFFFFC00
_080E6924: .4byte 0xFFFFFE80
_080E6928:
	cmp r3, r0
	ble _080E697C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E695C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6958 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E6952
	b _080E6BFC
_080E6952:
	movs r2, #0xc0
	lsls r2, r2, #1
	b _080E6BF8
	.align 2, 0
_080E6958: .4byte 0xFFFFFE80
_080E695C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E6974
	b _080E6BFC
_080E6974:
	ldr r2, _080E6978 @ =0xFFFFFE80
	b _080E6C1C
	.align 2, 0
_080E6978: .4byte 0xFFFFFE80
_080E697C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E699A
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E6998
	b _080E6C56
_080E6998:
	b _080E6C52
_080E699A:
	adds r0, r2, #0
	subs r0, #0x28
	b _080E6C4A
_080E69A0:
	lsls r1, r6, #0x18
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E69E0 @ =0xFFFFFC00
	ands r3, r2
	movs r5, #0
	ldrsh r0, [r4, r5]
	asrs r1, r1, #0x19
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080E69E4
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E6A3A
	strh r2, [r4]
	b _080E6A3A
	.align 2, 0
_080E69E0: .4byte 0xFFFFFC00
_080E69E4:
	cmp r3, r0
	bge _080E6A08
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6A04 @ =0xFFFFFEE0
	adds r4, r1, #0
	cmp r0, r2
	bge _080E6A3A
	strh r2, [r4]
	b _080E6A3A
	.align 2, 0
_080E6A04: .4byte 0xFFFFFEE0
_080E6A08:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E6A2A
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6A3A
	mov r5, r8
	strh r5, [r4]
	b _080E6A3A
_080E6A2A:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6A3A
	mov r0, r8
	strh r0, [r4]
_080E6A3A:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6A80 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6A88
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6A7C
	b _080E6BFC
_080E6A7C:
	ldr r2, _080E6A84 @ =0xFFFFFDE0
	b _080E6C1C
	.align 2, 0
_080E6A80: .4byte 0xFFFFFC00
_080E6A84: .4byte 0xFFFFFDE0
_080E6A88:
	cmp r3, r0
	ble _080E6ADC
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E6ABC
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6AB8 @ =0xFFFFFDE0
	cmp r0, r2
	bge _080E6AB2
	b _080E6BFC
_080E6AB2:
	movs r2, #0x88
	lsls r2, r2, #2
	b _080E6BF8
	.align 2, 0
_080E6AB8: .4byte 0xFFFFFDE0
_080E6ABC:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6AD4
	b _080E6BFC
_080E6AD4:
	ldr r2, _080E6AD8 @ =0xFFFFFDE0
	b _080E6C1C
	.align 2, 0
_080E6AD8: .4byte 0xFFFFFDE0
_080E6ADC:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E6AFA
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E6AF8
	b _080E6C56
_080E6AF8:
	b _080E6C52
_080E6AFA:
	adds r0, r2, #0
	subs r0, #0x60
	b _080E6C4A
_080E6B00:
	lsls r1, r6, #0x18
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E6B40 @ =0xFFFFFC00
	ands r3, r2
	movs r5, #0
	ldrsh r0, [r4, r5]
	asrs r1, r1, #0x19
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080E6B44
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E6B9A
	strh r2, [r4]
	b _080E6B9A
	.align 2, 0
_080E6B40: .4byte 0xFFFFFC00
_080E6B44:
	cmp r3, r0
	bge _080E6B68
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6B64 @ =0xFFFFFF00
	adds r4, r1, #0
	cmp r0, r2
	bge _080E6B9A
	strh r2, [r4]
	b _080E6B9A
	.align 2, 0
_080E6B64: .4byte 0xFFFFFF00
_080E6B68:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E6B8A
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6B9A
	mov r5, r8
	strh r5, [r4]
	b _080E6B9A
_080E6B8A:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6B9A
	mov r0, r8
	strh r0, [r4]
_080E6B9A:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6BC8 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6BCC
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E6C04
	.align 2, 0
_080E6BC8: .4byte 0xFFFFFC00
_080E6BCC:
	cmp r3, r0
	ble _080E6C28
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E6C04
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x48
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6C00 @ =0xFFFFFD20
	cmp r0, r2
	blt _080E6BFC
	movs r2, #0xb8
	lsls r2, r2, #2
_080E6BF8:
	cmp r0, r2
	ble _080E6C56
_080E6BFC:
	strh r2, [r1]
	b _080E6C56
	.align 2, 0
_080E6C00: .4byte 0xFFFFFD20
_080E6C04:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x48
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb8
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6BFC
	ldr r2, _080E6C24 @ =0xFFFFFD20
_080E6C1C:
	cmp r0, r2
	bge _080E6C56
	b _080E6BFC
	.align 2, 0
_080E6C24: .4byte 0xFFFFFD20
_080E6C28:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E6C46
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6C56
	b _080E6C52
_080E6C46:
	ldr r5, _080E6CD4 @ =0xFFFFFEC0
	adds r0, r2, r5
_080E6C4A:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6C56
_080E6C52:
	movs r0, #0
	strh r0, [r1]
_080E6C56:
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	mov r1, ip
	str r2, [r1, #8]
	mov r3, sl
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	mov r5, ip
	str r2, [r5, #8]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	cmp r0, #1
	bne _080E6C90
	ldrb r0, [r3, #1]
	cmp r0, #0xe
	bne _080E6C90
	movs r0, #2
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080E6C90:
	adds r2, r4, #0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, ip
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E6CAA
	movs r0, #0
	strh r0, [r2]
	str r1, [r5, #0x44]
_080E6CAA:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, ip
	ldr r1, [r2, #0x44]
	subs r1, r1, r0
	ldr r0, _080E6CD8 @ =0x000129FF
	cmp r1, r0
	ble _080E6CC4
	movs r0, #0
	strh r0, [r4]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r2, #0x44]
_080E6CC4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6CD4: .4byte 0xFFFFFEC0
_080E6CD8: .4byte 0x000129FF

	thumb_func_start sub_080E6CDC
sub_080E6CDC: @ 0x080E6CDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #0x78]
	ldr r0, _080E6D34 @ =sub_080E6784
	cmp r1, r0
	bne _080E6D44
	ldr r2, _080E6D38 @ =sub_080E6D4C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	bne _080E6D3C
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	b _080E6D44
	.align 2, 0
_080E6D34: .4byte sub_080E6784
_080E6D38: .4byte sub_080E6D4C
_080E6D3C:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
	strb r0, [r1]
_080E6D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E6D4C
sub_080E6D4C: @ 0x080E6D4C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _080E6DDC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xb
	bgt _080E6DC0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E6D9C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E6D8C @ =0xFFFFFF00
	cmp r2, r0
	bge _080E6D90
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080E6DC6
	.align 2, 0
_080E6D8C: .4byte 0xFFFFFF00
_080E6D90:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080E6DC6
	strh r0, [r1]
	b _080E6DC6
_080E6D9C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E6DB8
	ldr r2, _080E6DBC @ =0xFFFFFF00
	cmp r0, r2
	bge _080E6DC6
_080E6DB8:
	strh r2, [r1]
	b _080E6DC6
	.align 2, 0
_080E6DBC: .4byte 0xFFFFFF00
_080E6DC0:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080E6DC6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080E6DE0
	adds r0, r4, #0
	bl sub_080E7CA8
	b _080E6DE0
_080E6DDC:
	subs r0, #1
	strb r0, [r1]
_080E6DE0:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E6DFA
	movs r0, #0
	strh r0, [r2]
	str r1, [r4, #0x44]
_080E6DFA:
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x44]
	subs r1, r1, r0
	ldr r0, _080E6E18 @ =0x000129FF
	cmp r1, r0
	ble _080E6E12
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r4, #0x44]
_080E6E12:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E6E18: .4byte 0x000129FF

	thumb_func_start sub_080E6E1C
sub_080E6E1C: @ 0x080E6E1C
	push {r4, lr}
	mov ip, r0
	ldr r1, [r0, #8]
	movs r0, #4
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080E6F14
	ands r1, r0
	cmp r1, #0
	beq _080E6E68
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E6E54 @ =0xFFFFFDC0
	cmp r2, r0
	bge _080E6E5C
	ldr r0, _080E6E58 @ =0x0000FDC0
	strh r0, [r1]
	b _080E6E86
	.align 2, 0
_080E6E54: .4byte 0xFFFFFDC0
_080E6E58: .4byte 0x0000FDC0
_080E6E5C:
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E6E86
	strh r0, [r1]
	b _080E6E86
_080E6E68:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6E84
	ldr r2, _080E6EB8 @ =0xFFFFFDC0
	cmp r0, r2
	bge _080E6E86
_080E6E84:
	strh r2, [r1]
_080E6E86:
	mov r0, ip
	adds r0, #0xac
	ldr r1, [r0]
	mov r3, ip
	ldr r2, [r3, #0x44]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r2, r4
	ldr r1, [r1, #0x44]
	cmp r1, r0
	blt _080E6EC4
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080E6EBC @ =0xFE800000
	adds r3, r0, #0
	cmp r1, r2
	blt _080E6EB2
	b _080E6FEA
_080E6EB2:
	ldr r0, _080E6EC0 @ =0x0000FE80
	b _080E6FE8
	.align 2, 0
_080E6EB8: .4byte 0xFFFFFDC0
_080E6EBC: .4byte 0xFE800000
_080E6EC0: .4byte 0x0000FE80
_080E6EC4:
	ldr r3, _080E6EEC @ =0xFFFFF800
	adds r0, r2, r3
	cmp r1, r0
	bgt _080E6EF0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080E6EE6
	b _080E6FEA
_080E6EE6:
	strh r2, [r3]
	b _080E6FEA
	.align 2, 0
_080E6EEC: .4byte 0xFFFFF800
_080E6EF0:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E6F0E
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6FEA
	b _080E6FE6
_080E6F0E:
	adds r0, r2, #0
	subs r0, #0x12
	b _080E6FDE
_080E6F14:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E6F40
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6F3C @ =0xFFFFFD30
	cmp r0, r2
	blt _080E6F5C
	movs r2, #0xb4
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6F5E
	b _080E6F5C
	.align 2, 0
_080E6F3C: .4byte 0xFFFFFD30
_080E6F40:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb4
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6F5C
	ldr r2, _080E6F8C @ =0xFFFFFD30
	cmp r0, r2
	bge _080E6F5E
_080E6F5C:
	strh r2, [r1]
_080E6F5E:
	mov r0, ip
	adds r0, #0xac
	ldr r1, [r0]
	mov r0, ip
	ldr r2, [r0, #0x44]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r1, [r1, #0x44]
	cmp r1, r0
	blt _080E6F98
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080E6F90 @ =0xFF300000
	adds r3, r0, #0
	cmp r1, r2
	bge _080E6FEA
	ldr r0, _080E6F94 @ =0x0000FF30
	b _080E6FE8
	.align 2, 0
_080E6F8C: .4byte 0xFFFFFD30
_080E6F90: .4byte 0xFF300000
_080E6F94: .4byte 0x0000FF30
_080E6F98:
	ldr r4, _080E6FB8 @ =0xFFFFF800
	adds r0, r2, r4
	cmp r1, r0
	bgt _080E6FBC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0xd0
	ble _080E6FEA
	movs r0, #0xd0
	b _080E6FE8
	.align 2, 0
_080E6FB8: .4byte 0xFFFFF800
_080E6FBC:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E6FDA
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6FEA
	b _080E6FE6
_080E6FDA:
	adds r0, r2, #0
	subs r0, #8
_080E6FDE:
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6FEA
_080E6FE6:
	movs r0, #0
_080E6FE8:
	strh r0, [r3]
_080E6FEA:
	adds r2, r3, #0
	movs r4, #0
	ldrsh r1, [r2, r4]
	mov r4, ip
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E7004
	movs r0, #0
	strh r0, [r2]
	str r1, [r4, #0x44]
_080E7004:
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, ip
	ldr r1, [r2, #0x44]
	subs r1, r1, r0
	ldr r0, _080E7024 @ =0x000129FF
	cmp r1, r0
	ble _080E701E
	movs r0, #0
	strh r0, [r3]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r2, #0x44]
_080E701E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7024: .4byte 0x000129FF

	thumb_func_start sub_080E7028
sub_080E7028: @ 0x080E7028
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #0x78]
	ldr r0, _080E7068 @ =sub_080E6784
	cmp r1, r0
	beq _080E7038
	b _080E7142
_080E7038:
	ldr r2, _080E706C @ =sub_080E7148
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E70C4
	ldr r2, _080E7070 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E7074 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E7078 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E707C @ =0x00005554
	cmp r2, r0
	bhi _080E7080
	movs r1, #0
	b _080E708A
	.align 2, 0
_080E7068: .4byte sub_080E6784
_080E706C: .4byte sub_080E7148
_080E7070: .4byte gRngVal
_080E7074: .4byte 0x00196225
_080E7078: .4byte 0x3C6EF35F
_080E707C: .4byte 0x00005554
_080E7080:
	ldr r0, _080E7098 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E708A
	movs r1, #1
_080E708A:
	cmp r1, #1
	beq _080E70AA
	cmp r1, #1
	bgt _080E709C
	cmp r1, #0
	beq _080E70A2
	b _080E70BC
	.align 2, 0
_080E7098: .4byte 0x0000AAA9
_080E709C:
	cmp r1, #2
	beq _080E70B2
	b _080E70BC
_080E70A2:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0xc0
	b _080E70BA
_080E70AA:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0xe0
	b _080E70BA
_080E70B2:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x88
	lsls r0, r0, #1
_080E70BA:
	strh r0, [r1]
_080E70BC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080E7138
_080E70C4:
	ldr r2, _080E70E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E70E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E70E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E70EC @ =0x00005554
	cmp r2, r0
	bhi _080E70F0
	movs r1, #0
	b _080E70FA
	.align 2, 0
_080E70E0: .4byte gRngVal
_080E70E4: .4byte 0x00196225
_080E70E8: .4byte 0x3C6EF35F
_080E70EC: .4byte 0x00005554
_080E70F0:
	ldr r0, _080E7108 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E70FA
	movs r1, #1
_080E70FA:
	cmp r1, #1
	beq _080E7120
	cmp r1, #1
	bgt _080E710C
	cmp r1, #0
	beq _080E7112
	b _080E7130
	.align 2, 0
_080E7108: .4byte 0x0000AAA9
_080E710C:
	cmp r1, #2
	beq _080E7128
	b _080E7130
_080E7112:
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, _080E711C @ =0x0000FFF0
	b _080E712E
	.align 2, 0
_080E711C: .4byte 0x0000FFF0
_080E7120:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x20
	b _080E712E
_080E7128:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x40
_080E712E:
	strh r0, [r1]
_080E7130:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E7138:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	movs r0, #0xee
	strh r0, [r1]
_080E7142:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E7148
sub_080E7148: @ 0x080E7148
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r5, #1
	ands r5, r0
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r1, _080E7198 @ =0xFFFFFC00
	ands r3, r1
	mov r0, ip
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080E719C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E71E6
	strh r2, [r1]
	b _080E71E6
	.align 2, 0
_080E7198: .4byte 0xFFFFFC00
_080E719C:
	cmp r3, r2
	bge _080E71BC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E71B8 @ =0xFFFFFEE0
	cmp r0, r2
	bge _080E71E6
	strh r2, [r1]
	b _080E71E6
	.align 2, 0
_080E71B8: .4byte 0xFFFFFEE0
_080E71BC:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E71D8
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E71E6
	b _080E71E4
_080E71D8:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E71E6
_080E71E4:
	strh r4, [r1]
_080E71E6:
	mov r0, ip
	ldr r3, [r0, #0x40]
	ldr r0, _080E720C @ =0xFFFFFC00
	ands r3, r0
	mov r1, ip
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080E7210
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080E724C
	.align 2, 0
_080E720C: .4byte 0xFFFFFC00
_080E7210:
	cmp r3, r2
	ble _080E7270
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E724C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E7248 @ =0xFFFFFE80
	cmp r0, r2
	blt _080E7242
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E729C
_080E7242:
	strh r2, [r1]
	b _080E729C
	.align 2, 0
_080E7248: .4byte 0xFFFFFE80
_080E724C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E7242
	ldr r2, _080E726C @ =0xFFFFFE80
	cmp r0, r2
	bge _080E729C
	b _080E7242
	.align 2, 0
_080E726C: .4byte 0xFFFFFE80
_080E7270:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E728C
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E729C
	b _080E7298
_080E728C:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E729C
_080E7298:
	movs r0, #0
	strh r0, [r1]
_080E729C:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r5
	mov r2, ip
	str r0, [r2, #8]
	ldr r0, [r2, #0x50]
	cmp r0, #0
	bne _080E72B8
	mov r0, ip
	bl sub_080E7CBC
_080E72B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E72C0
sub_080E72C0: @ 0x080E72C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov r8, r0
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080E738C @ =gUnk_08356B88
	cmp r0, #0
	bne _080E73C2
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #0
	bne _080E72F8
	subs r0, r2, #1
	strb r0, [r6]
_080E72F8:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r4
	mov ip, r2
	cmp r0, #0xff
	beq _080E7320
	strb r1, [r2]
_080E7320:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080E7390
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080E735C
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E735C
	rsbs r0, r3, #0
	strh r0, [r2]
_080E735C:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080E73C2
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080E73C2
	.align 2, 0
_080E738C: .4byte gUnk_08356B88
_080E7390:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r5, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r5, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E73F2
	rsbs r0, r5, #0
	strh r0, [r2]
_080E73C2:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r4, #0
	adds r6, #0x9f
	movs r0, #0x83
	adds r0, r0, r4
	mov ip, r0
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080E73F2
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080E7404
_080E73F2:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080E7404:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	mov r3, ip
	ldrb r0, [r3]
	adds r5, r1, #0
	cmp r0, #2
	bne _080E747C
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E7444
	ldr r0, _080E7440 @ =0x00003FFF
	cmp r2, r0
	ble _080E744C
	b _080E7450
	.align 2, 0
_080E7440: .4byte 0x00003FFF
_080E7444:
	subs r1, r1, r0
	ldr r0, _080E7474 @ =0x00003FFF
	cmp r1, r0
	bgt _080E7450
_080E744C:
	movs r0, #1
	strh r0, [r4, #4]
_080E7450:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E747C
	adds r3, r4, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E7478
	movs r0, #0
	mov r2, ip
	strb r0, [r2]
	ldr r1, [r4, #8]
	movs r2, #1
	eors r1, r2
	str r1, [r4, #8]
	b _080E747A
	.align 2, 0
_080E7474: .4byte 0x00003FFF
_080E7478:
	movs r0, #1
_080E747A:
	strb r0, [r3]
_080E747C:
	ldrb r2, [r6]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080E74DA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E74DA
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _080E74D4
	ldr r0, [r4, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	ldr r2, _080E74CC @ =sub_080E6784
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E74D0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _080E74DA
	.align 2, 0
_080E74CC: .4byte sub_080E6784
_080E74D0: .4byte 0xFDFFFFFF
_080E74D4:
	movs r0, #0xff
	orrs r0, r2
	strb r0, [r6]
_080E74DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E74E4
sub_080E74E4: @ 0x080E74E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E7532
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E7532
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080E7532
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080E7532
	cmp r0, #0x7a
	bhi _080E7532
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080E7532
	ldr r4, [r6, #8]
	ldr r0, _080E7538 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080E753C
_080E7532:
	movs r0, #0
	b _080E75F0
	.align 2, 0
_080E7538: .4byte 0x03800B00
_080E753C:
	ldr r2, _080E75FC @ =sub_080E7CF4
	adds r0, r5, #0
	movs r1, #7
	bl ObjectSetFunc
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0
	strh r4, [r2]
	adds r1, r5, #0
	adds r1, #0x52
	strh r4, [r1]
	adds r1, #0x4d
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r0, _080E7600 @ =gUnk_08356B00
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E7584
	rsbs r0, r3, #0
	strh r0, [r2]
_080E7584:
	ldr r1, _080E7604 @ =gUnk_02020EE0
	ldr r0, _080E7608 @ =gUnk_0203AD3C
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
	bne _080E75EE
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E75B0
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E75EE
_080E75B0:
	ldr r1, _080E760C @ =gUnk_08D60FA4
	ldr r4, _080E7610 @ =gSongTable
	ldr r2, _080E7614 @ =0x00000C34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E75D6
	movs r1, #0xc3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E75EE
_080E75D6:
	cmp r3, #0
	beq _080E75E6
	ldr r0, _080E7618 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080E75EE
_080E75E6:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E75EE:
	movs r0, #1
_080E75F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E75FC: .4byte sub_080E7CF4
_080E7600: .4byte gUnk_08356B00
_080E7604: .4byte gUnk_02020EE0
_080E7608: .4byte gUnk_0203AD3C
_080E760C: .4byte gUnk_08D60FA4
_080E7610: .4byte gSongTable
_080E7614: .4byte 0x00000C34
_080E7618: .4byte gUnk_0203AD10

	thumb_func_start sub_080E761C
sub_080E761C: @ 0x080E761C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E764C @ =sub_080E76FC
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
	beq _080E7650
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7658
	.align 2, 0
_080E764C: .4byte sub_080E76FC
_080E7650:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7658:
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
	ldr r0, _080E76F4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E76A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E76A8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, _080E76F8 @ =0x12010400
	str r2, [r4, #8]
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E76D6
	orrs r2, r3
_080E76D6:
	str r2, [r4, #8]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xc
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E76F4: .4byte gUnk_03000510
_080E76F8: .4byte 0x12010400

	thumb_func_start sub_080E76FC
sub_080E76FC: @ 0x080E76FC
	push {r4, r5, lr}
	ldr r2, _080E7718 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E771C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7724
	.align 2, 0
_080E7718: .4byte gCurTask
_080E771C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7724:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E773E
	ldr r0, [r2]
	bl TaskDestroy
	b _080E783A
_080E773E:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E774C
	orrs r1, r3
	str r1, [r4, #8]
	b _080E783A
_080E774C:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E7788 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E778C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E778C
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E783A
	.align 2, 0
_080E7788: .4byte gUnk_03000510
_080E778C:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E779C
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E77A4
_080E779C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E77A4:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E783A
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E77C8
	ldr r0, _080E77C4 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E783A
	.align 2, 0
_080E77C4: .4byte 0xFFFBFFFF
_080E77C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E783A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E783A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E7800
	ldr r2, _080E77F8 @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E77FC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E7802
	.align 2, 0
_080E77F8: .4byte gUnk_02023530
_080E77FC: .4byte 0x0000065E
_080E7800:
	movs r1, #0xff
_080E7802:
	cmp r1, #0xff
	beq _080E783A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E7840 @ =gUnk_02022EB0
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
	ldr r2, _080E7844 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E783A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E7840: .4byte gUnk_02022EB0
_080E7844: .4byte gUnk_02022F50

	thumb_func_start sub_080E7848
sub_080E7848: @ 0x080E7848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	mov sl, r5
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r4, #0
	ldr r1, _080E7878 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E787C @ =gUnk_020229E0
	mov ip, r7
	b _080E7894
	.align 2, 0
_080E7878: .4byte gUnk_020229D4
_080E787C: .4byte gUnk_020229E0
_080E7880:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E789C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E7894:
	cmp r0, #0
	bne _080E7880
	orrs r2, r3
	str r2, [r1]
_080E789C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, r8
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x9f
	strb r0, [r1, #0xc]
	strb r6, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
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
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r0, [r4]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	cmp r6, #1
	beq _080E7908
	cmp r6, #1
	ble _080E7902
	cmp r6, #2
	beq _080E790E
_080E7902:
	mov r0, sl
	adds r0, #0xb4
	b _080E7912
_080E7908:
	mov r0, sl
	adds r0, #0xb8
	b _080E7912
_080E790E:
	mov r0, sl
	adds r0, #0xbc
_080E7912:
	str r1, [r0]
	ldr r1, _080E798C @ =gUnk_02020EE0
	ldr r0, _080E7990 @ =gUnk_0203AD3C
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
	bne _080E797C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E793C
	ldrb r0, [r4]
	cmp r0, r2
	bne _080E797C
_080E793C:
	ldr r1, _080E7994 @ =gUnk_08D60FA4
	ldr r4, _080E7998 @ =gSongTable
	ldr r2, _080E799C @ =0x00000CE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E7962
	movs r7, #0xce
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E797C
_080E7962:
	cmp r3, #0
	beq _080E7974
	ldr r0, _080E79A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E797C
_080E7974:
	movs r0, #0xce
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E797C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E798C: .4byte gUnk_02020EE0
_080E7990: .4byte gUnk_0203AD3C
_080E7994: .4byte gUnk_08D60FA4
_080E7998: .4byte gSongTable
_080E799C: .4byte 0x00000CE4
_080E79A0: .4byte gUnk_0203AD10

	thumb_func_start sub_080E79A4
sub_080E79A4: @ 0x080E79A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E79CC @ =sub_080E6784
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E79D0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E79CC: .4byte sub_080E6784
_080E79D0: .4byte 0xFDFFFFFF

	thumb_func_start sub_080E79D4
sub_080E79D4: @ 0x080E79D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E79F4 @ =sub_080E3FFC
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
_080E79F4: .4byte sub_080E3FFC

	thumb_func_start sub_080E79F8
sub_080E79F8: @ 0x080E79F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7A14 @ =sub_080E5290
	movs r1, #4
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
_080E7A14: .4byte sub_080E5290

	thumb_func_start sub_080E7A18
sub_080E7A18: @ 0x080E7A18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7A34 @ =sub_080E5760
	movs r1, #0xf
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
_080E7A34: .4byte sub_080E5760

	thumb_func_start sub_080E7A38
sub_080E7A38: @ 0x080E7A38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7A4C
	adds r0, r2, #0
	bl sub_080E7A50
_080E7A4C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7A50
sub_080E7A50: @ 0x080E7A50
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r4, [r0]
	ldr r2, _080E7A78 @ =sub_080E7A80
	adds r0, r5, #0
	movs r1, #6
	bl ObjectSetFunc
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, _080E7A7C @ =gUnk_08356AD8
	str r0, [r4]
	movs r0, #0x10
	strh r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A78: .4byte sub_080E7A80
_080E7A7C: .4byte gUnk_08356AD8

	thumb_func_start sub_080E7A80
sub_080E7A80: @ 0x080E7A80
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7A96
	adds r0, r1, #0
	bl sub_080E7A9C
_080E7A96:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E7A9C
sub_080E7A9C: @ 0x080E7A9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7AB8 @ =sub_080E7ABC
	movs r1, #7
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
_080E7AB8: .4byte sub_080E7ABC

	thumb_func_start sub_080E7ABC
sub_080E7ABC: @ 0x080E7ABC
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	adds r4, r2, #0
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #7
	bne _080E7AF0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7B06
	movs r0, #8
	strb r0, [r4]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080E7AEC @ =gUnk_08356AF0
	str r0, [r1]
	b _080E7B06
	.align 2, 0
_080E7AEC: .4byte gUnk_08356AF0
_080E7AF0:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7B06
	adds r0, r2, #0
	bl sub_080E4BD0
	movs r0, #4
	strb r0, [r4]
_080E7B06:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E7B0C
sub_080E7B0C: @ 0x080E7B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7B34 @ =sub_080E7B38
	movs r1, #9
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
_080E7B34: .4byte sub_080E7B38

	thumb_func_start sub_080E7B38
sub_080E7B38: @ 0x080E7B38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7B4C
	adds r0, r2, #0
	bl sub_080E59B4
_080E7B4C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7B50
sub_080E7B50: @ 0x080E7B50
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7B78 @ =sub_080E5AC4
	movs r1, #0xb
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7B78: .4byte sub_080E5AC4

	thumb_func_start sub_080E7B7C
sub_080E7B7C: @ 0x080E7B7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BA0 @ =sub_080E5B8C
	movs r1, #0xc
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BA0: .4byte sub_080E5B8C

	thumb_func_start sub_080E7BA4
sub_080E7BA4: @ 0x080E7BA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BC8 @ =sub_080E45BC
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BC8: .4byte sub_080E45BC

	thumb_func_start sub_080E7BCC
sub_080E7BCC: @ 0x080E7BCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BFC @ =sub_080E4784
	movs r1, #0
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
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	movs r0, #0x12
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BFC: .4byte sub_080E4784

	thumb_func_start sub_080E7C00
sub_080E7C00: @ 0x080E7C00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7C4C @ =sub_080E5D04
	movs r1, #0x11
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080E7C50 @ =0x0000FFC0
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #4]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #4
	bl sub_080E625C
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_080E625C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7C4C: .4byte sub_080E5D04
_080E7C50: .4byte 0x0000FFC0

	thumb_func_start sub_080E7C54
sub_080E7C54: @ 0x080E7C54
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0xb4
	ldr r0, [r3]
	cmp r0, #0
	beq _080E7C72
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7C72
	movs r0, #0
	str r0, [r3]
_080E7C72:
	adds r3, r2, #0
	adds r3, #0xb8
	ldr r0, [r3]
	cmp r0, #0
	beq _080E7C8C
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7C8C
	movs r0, #0
	str r0, [r3]
_080E7C8C:
	adds r2, #0xbc
	ldr r0, [r2]
	cmp r0, #0
	beq _080E7CA4
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7CA4
	movs r0, #0
	str r0, [r2]
_080E7CA4:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7CA8
sub_080E7CA8: @ 0x080E7CA8
	push {lr}
	ldr r2, _080E7CB8 @ =sub_080E6E1C
	movs r1, #3
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080E7CB8: .4byte sub_080E6E1C

	thumb_func_start sub_080E7CBC
sub_080E7CBC: @ 0x080E7CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7CF0 @ =sub_080E72C0
	movs r1, #6
	bl ObjectSetFunc
	ldr r1, [r4, #8]
	movs r0, #0x40
	orrs r1, r0
	subs r0, #0x61
	ands r1, r0
	ldr r0, [r4, #0xc]
	movs r2, #2
	orrs r0, r2
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	str r1, [r4, #8]
	adds r4, #0x85
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7CF0: .4byte sub_080E72C0

	thumb_func_start sub_080E7CF4
sub_080E7CF4: @ 0x080E7CF4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bne _080E7D06
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080E7D06:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7D16
	adds r0, r2, #0
	bl sub_080E7D1C
_080E7D16:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E7D1C
sub_080E7D1C: @ 0x080E7D1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7D34 @ =sub_080E7D38
	movs r1, #8
	bl ObjectSetFunc
	movs r0, #0x10
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7D34: .4byte sub_080E7D38

	thumb_func_start sub_080E7D38
sub_080E7D38: @ 0x080E7D38
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7D66
	ldr r2, _080E7D6C @ =sub_080E6784
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E7D70 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
_080E7D66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7D6C: .4byte sub_080E6784
_080E7D70: .4byte 0xFDFFFFFF

	thumb_func_start sub_080E7D74
sub_080E7D74: @ 0x080E7D74
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E7DA8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E7DAC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E7DB0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7DB8
	.align 2, 0
_080E7DA8: .4byte ObjectMain
_080E7DAC: .4byte ObjectDestroy
_080E7DB0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7DB8:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080E7EA4 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080EAD0C
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	ldr r2, _080E7EA8 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080E7EAC @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080E7EB0 @ =gUnk_02020EE0
	ldr r0, _080E7EB4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E7E98
	ldr r0, _080E7EB8 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080E7E98
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E7E98:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E7EA4: .4byte 0x001080A0
_080E7EA8: .4byte gUnk_02023530
_080E7EAC: .4byte 0x0000065E
_080E7EB0: .4byte gUnk_02020EE0
_080E7EB4: .4byte gUnk_0203AD3C
_080E7EB8: .4byte gUnk_0203AD20

	thumb_func_start sub_080E7EBC
sub_080E7EBC: @ 0x080E7EBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080E7F8A
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E7F8A
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E7F8A
	ldr r3, _080E7F94 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_080EABC0
_080E7F8A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E7F94: .4byte gUnk_02023530

	thumb_func_start sub_080E7F98
sub_080E7F98: @ 0x080E7F98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080E7FAE
	cmp r0, #0x20
	bne _080E8016
_080E7FAE:
	ldr r1, _080E8030 @ =gUnk_02020EE0
	ldr r0, _080E8034 @ =gUnk_0203AD3C
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
	bne _080E8016
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E7FDA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8016
_080E7FDA:
	ldr r1, _080E8038 @ =gUnk_08D60FA4
	ldr r5, _080E803C @ =gSongTable
	ldr r2, _080E8040 @ =0x00000D0C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E7FFE
	ldr r1, _080E8044 @ =0x00000D08
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8016
_080E7FFE:
	cmp r3, #0
	beq _080E8010
	ldr r0, _080E8048 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E8016
_080E8010:
	ldr r0, _080E804C @ =0x000001A1
	bl m4aSongNumStart
_080E8016:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8028
	adds r0, r4, #0
	bl sub_080EAC18
_080E8028:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E8030: .4byte gUnk_02020EE0
_080E8034: .4byte gUnk_0203AD3C
_080E8038: .4byte gUnk_08D60FA4
_080E803C: .4byte gSongTable
_080E8040: .4byte 0x00000D0C
_080E8044: .4byte 0x00000D08
_080E8048: .4byte gUnk_0203AD10
_080E804C: .4byte 0x000001A1

	thumb_func_start sub_080E8050
sub_080E8050: @ 0x080E8050
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0x2c
	bhi _080E80CE
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080E80CE
	ldr r1, _080E8154 @ =gUnk_02020EE0
	ldr r0, _080E8158 @ =gUnk_0203AD3C
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
	bne _080E80CE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E808E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E80CE
_080E808E:
	ldr r1, _080E815C @ =gUnk_08D60FA4
	ldr r5, _080E8160 @ =gSongTable
	ldr r2, _080E8164 @ =0x00000D14
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E80B4
	movs r1, #0xd1
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E80CE
_080E80B4:
	cmp r3, #0
	beq _080E80C6
	ldr r0, _080E8168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E80CE
_080E80C6:
	movs r0, #0xd1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E80CE:
	ldrb r0, [r4, #1]
	cmp r0, #0x59
	bne _080E813C
	ldr r1, _080E8154 @ =gUnk_02020EE0
	ldr r0, _080E8158 @ =gUnk_0203AD3C
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
	bne _080E813C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8100
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E813C
_080E8100:
	ldr r1, _080E815C @ =gUnk_08D60FA4
	ldr r5, _080E8160 @ =gSongTable
	ldr r2, _080E816C @ =0x00000D1C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8124
	ldr r1, _080E8170 @ =0x00000D18
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E813C
_080E8124:
	cmp r3, #0
	beq _080E8136
	ldr r0, _080E8168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E813C
_080E8136:
	ldr r0, _080E8174 @ =0x000001A3
	bl m4aSongNumStart
_080E813C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E814C
	adds r0, r4, #0
	bl sub_080EAC48
_080E814C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E8154: .4byte gUnk_02020EE0
_080E8158: .4byte gUnk_0203AD3C
_080E815C: .4byte gUnk_08D60FA4
_080E8160: .4byte gSongTable
_080E8164: .4byte 0x00000D14
_080E8168: .4byte gUnk_0203AD10
_080E816C: .4byte 0x00000D1C
_080E8170: .4byte 0x00000D18
_080E8174: .4byte 0x000001A3

	thumb_func_start sub_080E8178
sub_080E8178: @ 0x080E8178
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _080E81A8 @ =sub_080EACD8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E81B0
	ldr r0, _080E81AC @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E81B6
	.align 2, 0
_080E81A8: .4byte sub_080EACD8
_080E81AC: .4byte 0xFFFFFF00
_080E81B0:
	ldr r0, _080E82A8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E81B6:
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080E81D2
	movs r0, #0
	strb r0, [r1, #9]
_080E81D2:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r6, [r0]
	adds r3, r6, #0
	subs r3, #0x38
	ldr r2, _080E82AC @ =gUnk_02023530
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080E82B0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080E82A0
	ldr r0, _080E82B4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080E82A0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080E82A0
	adds r0, r6, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r3, #0
	adds r7, r4, #0
	adds r7, #0x60
	cmp r0, #0xf
	bls _080E8260
	movs r4, #1
_080E8228:
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
	bls _080E8228
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080E8260:
	ldr r1, _080E82B4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080E82B8 @ =gUnk_02020EE0
	ldr r0, _080E82BC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080E82A0
	ldr r0, _080E82C0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080E82A0
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E82A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E82A8: .4byte 0xFFFFFF00
_080E82AC: .4byte gUnk_02023530
_080E82B0: .4byte 0x0000065E
_080E82B4: .4byte gUnk_08352D80
_080E82B8: .4byte gUnk_02020EE0
_080E82BC: .4byte gUnk_0203AD3C
_080E82C0: .4byte gUnk_0203AD20

	thumb_func_start sub_080E82C4
sub_080E82C4: @ 0x080E82C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080E82DA
	adds r0, r4, #0
	bl sub_080EAFDC
	b _080E83A0
_080E82DA:
	ldr r2, _080E82FC @ =sub_080E83A8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E8304
	ldr r0, _080E8300 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E830A
	.align 2, 0
_080E82FC: .4byte sub_080E83A8
_080E8300: .4byte 0xFFFFFF00
_080E8304:
	ldr r0, _080E8350 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E830A:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080E8354 @ =gUnk_08351530
	ldr r0, _080E8358 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E8372
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8360
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E835C
	movs r0, #0x14
	b _080E839E
	.align 2, 0
_080E8350: .4byte 0xFFFFFF00
_080E8354: .4byte gUnk_08351530
_080E8358: .4byte gUnk_0203AD30
_080E835C:
	movs r0, #0x1e
	b _080E839E
_080E8360:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E836E
	movs r0, #8
	b _080E839E
_080E836E:
	movs r0, #0x10
	b _080E839E
_080E8372:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E838E
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E838A
	movs r0, #0x28
	b _080E839E
_080E838A:
	movs r0, #0x5a
	b _080E839E
_080E838E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E839C
	movs r0, #0x1e
	b _080E839E
_080E839C:
	movs r0, #0x3c
_080E839E:
	strh r0, [r4, #4]
_080E83A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E83A8
sub_080E83A8: @ 0x080E83A8
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E842A
	adds r1, r3, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E83D6
	movs r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_080EAE98
	b _080E842A
_080E83D6:
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080E8400 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8404 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8408 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080E8414
	cmp r1, #1
	blo _080E840C
	cmp r1, #2
	beq _080E841C
	cmp r1, #3
	beq _080E8424
	b _080E842A
	.align 2, 0
_080E8400: .4byte gRngVal
_080E8404: .4byte 0x00196225
_080E8408: .4byte 0x3C6EF35F
_080E840C:
	adds r0, r3, #0
	bl sub_080E8430
	b _080E842A
_080E8414:
	adds r0, r3, #0
	bl sub_080E8588
	b _080E842A
_080E841C:
	adds r0, r3, #0
	bl sub_080EAD3C
	b _080E842A
_080E8424:
	adds r0, r3, #0
	bl sub_080EADE4
_080E842A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E8430
sub_080E8430: @ 0x080E8430
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _080E8460 @ =sub_080E8738
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E8468
	ldr r0, _080E8464 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E846E
	.align 2, 0
_080E8460: .4byte sub_080E8738
_080E8464: .4byte 0xFFFFFF00
_080E8468:
	ldr r0, _080E84AC @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E846E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r3, _080E84B0 @ =gRngVal
	ldr r0, [r3]
	ldr r7, _080E84B4 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080E84B8 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r5, #1
	ands r0, r5
	adds r1, #0x4d
	strb r0, [r1]
	ldr r1, [r4, #0x44]
	ldr r0, _080E84BC @ =0x00003FFF
	cmp r1, r0
	bgt _080E84C0
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #2
	strb r0, [r1]
	b _080E84F0
	.align 2, 0
_080E84AC: .4byte 0xFFFFFF00
_080E84B0: .4byte gRngVal
_080E84B4: .4byte 0x00196225
_080E84B8: .4byte 0x3C6EF35F
_080E84BC: .4byte 0x00003FFF
_080E84C0:
	adds r0, r4, #0
	adds r0, #0x85
	strb r5, [r0]
	adds r5, r0, #0
	mov r0, r8
	cmp r0, #3
	beq _080E84F0
	adds r0, r2, #0
	muls r0, r7, r0
	adds r0, r0, r6
	str r0, [r3]
	lsrs r2, r0, #0x10
	ldr r0, _080E8568 @ =0x00005554
	cmp r2, r0
	bls _080E84EC
	ldr r0, _080E856C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E84E8
	movs r1, #1
_080E84E8:
	cmp r1, #0
	bne _080E84F0
_080E84EC:
	movs r0, #3
	strb r0, [r5]
_080E84F0:
	ldr r1, _080E8570 @ =gUnk_02020EE0
	ldr r0, _080E8574 @ =gUnk_0203AD3C
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
	bne _080E855C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E851C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E855C
_080E851C:
	ldr r1, _080E8578 @ =gUnk_08D60FA4
	ldr r4, _080E857C @ =gSongTable
	ldr r2, _080E8580 @ =0x00000CF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8542
	movs r1, #0xcf
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E855C
_080E8542:
	cmp r3, #0
	beq _080E8554
	ldr r0, _080E8584 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E855C
_080E8554:
	movs r0, #0xcf
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E855C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E8568: .4byte 0x00005554
_080E856C: .4byte 0x0000AAA9
_080E8570: .4byte gUnk_02020EE0
_080E8574: .4byte gUnk_0203AD3C
_080E8578: .4byte gUnk_08D60FA4
_080E857C: .4byte gSongTable
_080E8580: .4byte 0x00000CF4
_080E8584: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8588
sub_080E8588: @ 0x080E8588
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _080E85BC @ =sub_080E8738
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E85C4
	ldr r0, _080E85C0 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E85CA
	.align 2, 0
_080E85BC: .4byte sub_080E8738
_080E85C0: .4byte 0xFFFFFF00
_080E85C4:
	ldr r0, _080E863C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E85CA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r7, #0
	mov sb, r7
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	mov r1, sb
	strb r1, [r0]
	adds r3, r4, #0
	adds r3, #0x9f
	strb r1, [r3]
	adds r1, r4, #0
	adds r1, #0x85
	movs r6, #1
	strb r6, [r1]
	subs r0, #0x17
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _080E8616
	movs r2, #0x80
	ldr r1, _080E8640 @ =gUnk_08351530
	ldr r0, _080E8644 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E865A
_080E8616:
	ldr r2, _080E8648 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E864C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8650 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r6
	strb r0, [r3]
	ldr r1, [r4, #0x44]
	ldr r0, _080E8654 @ =0x00003FFF
	cmp r1, r0
	bgt _080E8658
	mov r2, sb
	strb r2, [r3]
	movs r0, #2
	strb r0, [r5]
	b _080E865A
	.align 2, 0
_080E863C: .4byte 0xFFFFFF00
_080E8640: .4byte gUnk_08351530
_080E8644: .4byte gUnk_0203AD30
_080E8648: .4byte gRngVal
_080E864C: .4byte 0x00196225
_080E8650: .4byte 0x3C6EF35F
_080E8654: .4byte 0x00003FFF
_080E8658:
	strb r6, [r5]
_080E865A:
	mov r7, r8
	cmp r7, #3
	beq _080E8692
	ldr r2, _080E870C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8710 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8714 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8718 @ =0x00005554
	cmp r2, r0
	bls _080E8684
	ldr r0, _080E871C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8680
	movs r1, #1
_080E8680:
	cmp r1, #0
	bne _080E8692
_080E8684:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _080E8692
	movs r0, #3
	strb r0, [r5]
_080E8692:
	ldr r1, _080E8720 @ =gUnk_02020EE0
	ldr r0, _080E8724 @ =gUnk_0203AD3C
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
	bne _080E86FE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E86BE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E86FE
_080E86BE:
	ldr r1, _080E8728 @ =gUnk_08D60FA4
	ldr r4, _080E872C @ =gSongTable
	ldr r2, _080E8730 @ =0x00000CF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E86E4
	movs r7, #0xcf
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E86FE
_080E86E4:
	cmp r3, #0
	beq _080E86F6
	ldr r0, _080E8734 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E86FE
_080E86F6:
	movs r0, #0xcf
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E86FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E870C: .4byte gRngVal
_080E8710: .4byte 0x00196225
_080E8714: .4byte 0x3C6EF35F
_080E8718: .4byte 0x00005554
_080E871C: .4byte 0x0000AAA9
_080E8720: .4byte gUnk_02020EE0
_080E8724: .4byte gUnk_0203AD3C
_080E8728: .4byte gUnk_08D60FA4
_080E872C: .4byte gSongTable
_080E8730: .4byte 0x00000CF4
_080E8734: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8738
sub_080E8738: @ 0x080E8738
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E8808
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080E875E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080E875E:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E87B8
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8798
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E8794 @ =0xFFFFFB80
	adds r2, r1, #0
	cmp r0, r4
	blt _080E8850
	movs r1, #0x90
	lsls r1, r1, #3
	cmp r0, r1
	ble _080E885C
	b _080E885A
	.align 2, 0
_080E8794: .4byte 0xFFFFFB80
_080E8798:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x90
	lsls r4, r4, #3
	adds r2, r1, #0
	cmp r0, r4
	bgt _080E8850
	ldr r1, _080E87B4 @ =0xFFFFFB80
	b _080E8856
	.align 2, 0
_080E87B4: .4byte 0xFFFFFB80
_080E87B8:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E87E8
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E87E4 @ =0xFFFFFC80
	adds r2, r1, #0
	cmp r0, r4
	blt _080E8850
	movs r1, #0xe0
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E885C
	b _080E885A
	.align 2, 0
_080E87E4: .4byte 0xFFFFFC80
_080E87E8:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	bgt _080E8850
	ldr r1, _080E8804 @ =0xFFFFFC80
	b _080E8856
	.align 2, 0
_080E8804: .4byte 0xFFFFFC80
_080E8808:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8838
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E8834 @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r4
	blt _080E8850
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E885C
	b _080E885A
	.align 2, 0
_080E8834: .4byte 0xFFFFFE00
_080E8838:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	ble _080E8854
_080E8850:
	strh r4, [r2]
	b _080E885C
_080E8854:
	ldr r1, _080E8890 @ =0xFFFFFE00
_080E8856:
	cmp r0, r1
	bge _080E885C
_080E885A:
	strh r1, [r2]
_080E885C:
	ldr r0, [r3, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r3, #8]
	movs r4, #1
	ands r4, r0
	cmp r4, #0
	bne _080E886E
	b _080E8980
_080E886E:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r4, [r0]
	cmp r4, #3
	bne _080E8894
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080E888A
	b _080E8AA8
_080E888A:
	movs r0, #0
	strh r0, [r2]
	b _080E899C
	.align 2, 0
_080E8890: .4byte 0xFFFFFE00
_080E8894:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E88CA
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080E88CA
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	movs r1, #0xdc
	lsls r1, r1, #7
	cmp r0, r1
	ble _080E88BE
	b _080E8AA8
_080E88BE:
	cmp r4, #2
	beq _080E88C4
	str r1, [r3, #0x40]
_080E88C4:
	movs r0, #0
	strh r0, [r2]
	b _080E89D8
_080E88CA:
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	movs r1, #0xb8
	lsls r1, r1, #6
	cmp r0, r1
	ble _080E88DC
	b _080E8AA8
_080E88DC:
	str r1, [r3, #0x40]
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r3, #8]
	movs r4, #1
	eors r0, r4
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8914
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E8928 @ =gUnk_08351530
	ldr r0, _080E892C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E893C
_080E8914:
	ldr r2, _080E8930 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8934 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8938 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r4
	b _080E8974
	.align 2, 0
_080E8928: .4byte gUnk_08351530
_080E892C: .4byte gUnk_0203AD30
_080E8930: .4byte gRngVal
_080E8934: .4byte 0x00196225
_080E8938: .4byte 0x3C6EF35F
_080E893C:
	ldr r2, _080E8958 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E895C @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E8960 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8964 @ =0x00005554
	cmp r2, r0
	bhi _080E8968
	movs r1, #0
	b _080E8972
	.align 2, 0
_080E8958: .4byte gRngVal
_080E895C: .4byte 0x00196225
_080E8960: .4byte 0x3C6EF35F
_080E8964: .4byte 0x00005554
_080E8968:
	ldr r0, _080E897C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8972
	movs r1, #1
_080E8972:
	adds r0, r1, #0
_080E8974:
	cmp r0, #0
	beq _080E897A
	b _080E8A94
_080E897A:
	b _080E8AA0
	.align 2, 0
_080E897C: .4byte 0x0000AAA9
_080E8980:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r5, [r0]
	cmp r5, #3
	bne _080E89A8
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	ldr r0, _080E89A4 @ =0x00007FFF
	cmp r1, r0
	bgt _080E899A
	b _080E8AA8
_080E899A:
	strh r4, [r2]
_080E899C:
	adds r0, r3, #0
	bl sub_080EAE98
	b _080E8AFE
	.align 2, 0
_080E89A4: .4byte 0x00007FFF
_080E89A8:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E89E4
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080E89E4
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	ldr r0, _080E89E0 @ =0x000092FF
	cmp r1, r0
	ble _080E8AA8
	cmp r5, #2
	beq _080E89D6
	adds r0, #1
	str r0, [r3, #0x40]
_080E89D6:
	strh r4, [r2]
_080E89D8:
	adds r0, r3, #0
	bl sub_080E8C04
	b _080E8AFE
	.align 2, 0
_080E89E0: .4byte 0x000092FF
_080E89E4:
	movs r5, #0
	ldrsh r0, [r2, r5]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	ldr r0, _080E8A40 @ =0x0000D2FF
	cmp r1, r0
	ble _080E8AA8
	adds r0, #1
	str r0, [r3, #0x40]
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r3, #8]
	movs r4, #1
	eors r0, r4
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8A2C
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E8A44 @ =gUnk_08351530
	ldr r0, _080E8A48 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E8A58
_080E8A2C:
	ldr r2, _080E8A4C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8A50 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8A54 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r4
	b _080E8A90
	.align 2, 0
_080E8A40: .4byte 0x0000D2FF
_080E8A44: .4byte gUnk_08351530
_080E8A48: .4byte gUnk_0203AD30
_080E8A4C: .4byte gRngVal
_080E8A50: .4byte 0x00196225
_080E8A54: .4byte 0x3C6EF35F
_080E8A58:
	ldr r2, _080E8A74 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8A78 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E8A7C @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8A80 @ =0x00005554
	cmp r2, r0
	bhi _080E8A84
	movs r1, #0
	b _080E8A8E
	.align 2, 0
_080E8A74: .4byte gRngVal
_080E8A78: .4byte 0x00196225
_080E8A7C: .4byte 0x3C6EF35F
_080E8A80: .4byte 0x00005554
_080E8A84:
	ldr r0, _080E8A9C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8A8E
	movs r1, #1
_080E8A8E:
	adds r0, r1, #0
_080E8A90:
	cmp r0, #0
	beq _080E8AA0
_080E8A94:
	adds r0, r3, #0
	bl sub_080E82C4
	b _080E8AFE
	.align 2, 0
_080E8A9C: .4byte 0x0000AAA9
_080E8AA0:
	adds r0, r3, #0
	bl sub_080EAD3C
	b _080E8AFE
_080E8AA8:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	adds r2, r3, #0
	adds r2, #0x9e
	cmp r0, #0
	bne _080E8AE0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E8AE0
	movs r0, #0x22
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E8AD2
	movs r0, #0x16
	strh r0, [r3, #4]
_080E8AD2:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #1
	strb r0, [r2]
_080E8AE0:
	ldrb r0, [r2]
	cmp r0, #1
	bne _080E8AFE
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8AFE
	ldr r0, [r3, #8]
	ldr r1, _080E8B04 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	movs r0, #2
	strb r0, [r2]
_080E8AFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E8B04: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E8B08
sub_080E8B08: @ 0x080E8B08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080E8BE4 @ =sub_080E8CF0
	movs r1, #4
	bl ObjectSetFunc
	adds r5, r4, #0
	adds r5, #0x50
	movs r1, #0
	movs r0, #0
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r3, r4, #0
	adds r3, #0x9e
	strb r1, [r3]
	ldr r1, [r4, #0x44]
	ldr r0, _080E8BE8 @ =0x00003FFF
	cmp r1, r0
	bgt _080E8B4E
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r0, #1
	strb r0, [r3]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E8B4E:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8B72
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080E8B72:
	ldr r1, _080E8BEC @ =gUnk_02020EE0
	ldr r0, _080E8BF0 @ =gUnk_0203AD3C
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
	bne _080E8BDE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8B9E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8BDE
_080E8B9E:
	ldr r1, _080E8BF4 @ =gUnk_08D60FA4
	ldr r4, _080E8BF8 @ =gSongTable
	ldr r2, _080E8BFC @ =0x00000C44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8BC4
	movs r1, #0xc4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8BDE
_080E8BC4:
	cmp r3, #0
	beq _080E8BD6
	ldr r0, _080E8C00 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E8BDE
_080E8BD6:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E8BDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E8BE4: .4byte sub_080E8CF0
_080E8BE8: .4byte 0x00003FFF
_080E8BEC: .4byte gUnk_02020EE0
_080E8BF0: .4byte gUnk_0203AD3C
_080E8BF4: .4byte gUnk_08D60FA4
_080E8BF8: .4byte gSongTable
_080E8BFC: .4byte 0x00000C44
_080E8C00: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8C04
sub_080E8C04: @ 0x080E8C04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080E8CD4 @ =sub_080E8CF0
	movs r1, #4
	bl ObjectSetFunc
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0xd0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E8C30
	movs r0, #0xa4
	strh r0, [r5]
_080E8C30:
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	movs r2, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r6, #0x80
	lsls r6, r6, #1
	orrs r0, r6
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r3]
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080E8C64
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080E8C64:
	ldr r1, _080E8CD8 @ =gUnk_02020EE0
	ldr r0, _080E8CDC @ =gUnk_0203AD3C
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
	bne _080E8CCC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8C90
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8CCC
_080E8C90:
	ldr r1, _080E8CE0 @ =gUnk_08D60FA4
	ldr r4, _080E8CE4 @ =gSongTable
	ldr r2, _080E8CE8 @ =0x00000C44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8CB6
	movs r1, #0xc4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8CCC
_080E8CB6:
	cmp r3, #0
	beq _080E8CC4
	ldr r0, _080E8CEC @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080E8CCC
_080E8CC4:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E8CCC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E8CD4: .4byte sub_080E8CF0
_080E8CD8: .4byte gUnk_02020EE0
_080E8CDC: .4byte gUnk_0203AD3C
_080E8CE0: .4byte gUnk_08D60FA4
_080E8CE4: .4byte gSongTable
_080E8CE8: .4byte 0x00000C44
_080E8CEC: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8CF0
sub_080E8CF0: @ 0x080E8CF0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #4
	bne _080E8D0C
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E8D20
	movs r0, #5
	b _080E8D1E
_080E8D0C:
	adds r0, r4, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080E8D20
	movs r0, #6
_080E8D1E:
	strb r0, [r2]
_080E8D20:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080E8D44
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080E8D44
	adds r0, r4, #0
	bl sub_080EADA4
_080E8D44:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080E8D70
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080E8D6C @ =0x00002DFF
	cmp r0, r1
	bgt _080E8D86
	movs r0, #0xb8
	lsls r0, r0, #6
	str r0, [r4, #0x40]
	b _080E8D86
	.align 2, 0
_080E8D6C: .4byte 0x00002DFF
_080E8D70:
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xd3
	lsls r1, r1, #8
	cmp r0, r1
	ble _080E8D86
	str r1, [r4, #0x40]
_080E8D86:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8DA2
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8DA2
	ldr r0, _080E8DA8 @ =0xFFFFFEFF
	ands r0, r2
	str r0, [r4, #8]
_080E8DA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E8DA8: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E8DAC
sub_080E8DAC: @ 0x080E8DAC
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E8E6E
	adds r0, r3, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8DCA
	movs r0, #1
	eors r1, r0
	str r1, [r3, #8]
_080E8DCA:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8DF4
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E8E0C @ =gUnk_08351530
	ldr r0, _080E8E10 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E8E20
_080E8DF4:
	ldr r2, _080E8E14 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8E18 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8E1C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E8E56
	.align 2, 0
_080E8E0C: .4byte gUnk_08351530
_080E8E10: .4byte gUnk_0203AD30
_080E8E14: .4byte gRngVal
_080E8E18: .4byte 0x00196225
_080E8E1C: .4byte 0x3C6EF35F
_080E8E20:
	ldr r2, _080E8E3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8E40 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080E8E44 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8E48 @ =0x00005554
	cmp r2, r0
	bhi _080E8E4C
	movs r1, #0
	b _080E8E56
	.align 2, 0
_080E8E3C: .4byte gRngVal
_080E8E40: .4byte 0x00196225
_080E8E44: .4byte 0x3C6EF35F
_080E8E48: .4byte 0x00005554
_080E8E4C:
	ldr r0, _080E8E64 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8E56
	movs r1, #1
_080E8E56:
	cmp r1, #0
	beq _080E8E68
	adds r0, r3, #0
	bl sub_080E82C4
	b _080E8E6E
	.align 2, 0
_080E8E64: .4byte 0x0000AAA9
_080E8E68:
	adds r0, r3, #0
	bl sub_080E8E74
_080E8E6E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E8E74
sub_080E8E74: @ 0x080E8E74
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E8F50 @ =sub_080E8F74
	movs r1, #4
	bl ObjectSetFunc
	adds r3, r4, #0
	adds r3, #0x50
	ldr r0, _080E8F54 @ =0x000001A1
	strh r0, [r3]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	ldr r1, [r4, #0x44]
	ldr r0, _080E8F58 @ =0x00003FFF
	cmp r1, r0
	bgt _080E8EBA
	movs r0, #0x8e
	lsls r0, r0, #2
	strh r0, [r3]
	adds r0, #0xc8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E8EBA:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8EDE
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080E8EDE:
	ldr r1, _080E8F5C @ =gUnk_02020EE0
	ldr r0, _080E8F60 @ =gUnk_0203AD3C
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
	bne _080E8F4A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8F0A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8F4A
_080E8F0A:
	ldr r1, _080E8F64 @ =gUnk_08D60FA4
	ldr r4, _080E8F68 @ =gSongTable
	ldr r2, _080E8F6C @ =0x00000C44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8F30
	movs r1, #0xc4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8F4A
_080E8F30:
	cmp r3, #0
	beq _080E8F42
	ldr r0, _080E8F70 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E8F4A
_080E8F42:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E8F4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E8F50: .4byte sub_080E8F74
_080E8F54: .4byte 0x000001A1
_080E8F58: .4byte 0x00003FFF
_080E8F5C: .4byte gUnk_02020EE0
_080E8F60: .4byte gUnk_0203AD3C
_080E8F64: .4byte gUnk_08D60FA4
_080E8F68: .4byte gSongTable
_080E8F6C: .4byte 0x00000C44
_080E8F70: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8F74
sub_080E8F74: @ 0x080E8F74
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #4
	bne _080E8F90
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E8FA4
	movs r0, #5
	b _080E8FA2
_080E8F90:
	adds r0, r4, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080E8FA4
	movs r0, #6
_080E8FA2:
	strb r0, [r2]
_080E8FA4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080E8FC8
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080E8FC8
	adds r0, r4, #0
	bl sub_080EAE4C
_080E8FC8:
	ldr r2, [r4, #8]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E8FF4
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080E8FF0 @ =0x00002DFF
	cmp r1, r0
	bgt _080E900C
	adds r0, #1
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	b _080E900C
	.align 2, 0
_080E8FF0: .4byte 0x00002DFF
_080E8FF4:
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xd3
	lsls r1, r1, #8
	cmp r0, r1
	ble _080E900C
	str r1, [r4, #0x40]
	strh r2, [r3]
_080E900C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E902A
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E902A
	ldr r0, [r4, #8]
	ldr r1, _080E9030 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_080E902A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E9030: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E9034
sub_080E9034: @ 0x080E9034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	beq _080E9052
	cmp r0, #0x15
	bne _080E90BA
_080E9052:
	ldr r1, _080E9190 @ =gUnk_02020EE0
	ldr r0, _080E9194 @ =gUnk_0203AD3C
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
	bne _080E90BA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E907E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E90BA
_080E907E:
	ldr r1, _080E9198 @ =gUnk_08D60FA4
	ldr r5, _080E919C @ =gSongTable
	ldr r2, _080E91A0 @ =0x00000C3C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E90A2
	ldr r1, _080E91A4 @ =0x00000C38
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E90BA
_080E90A2:
	cmp r3, #0
	beq _080E90B4
	ldr r0, _080E91A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E90BA
_080E90B4:
	ldr r0, _080E91AC @ =0x00000187
	bl m4aSongNumStart
_080E90BA:
	ldrb r0, [r4, #1]
	cmp r0, #0x28
	bne _080E913A
	ldr r2, _080E91B0 @ =0x000002AA
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r0, r4, #0
	bl sub_080E921C
	ldr r1, _080E9190 @ =gUnk_02020EE0
	ldr r0, _080E9194 @ =gUnk_0203AD3C
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
	bne _080E913A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E90FE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E913A
_080E90FE:
	ldr r1, _080E9198 @ =gUnk_08D60FA4
	ldr r5, _080E919C @ =gSongTable
	ldr r2, _080E91B4 @ =0x00000CEC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E9122
	ldr r1, _080E91B8 @ =0x00000CE8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E913A
_080E9122:
	cmp r3, #0
	beq _080E9134
	ldr r0, _080E91A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E913A
_080E9134:
	ldr r0, _080E91BC @ =0x0000019D
	bl m4aSongNumStart
_080E913A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E9214
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x87
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _080E917C
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080E91C0 @ =gUnk_08351530
	ldr r0, _080E91C4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E91D4
_080E917C:
	ldr r2, _080E91C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E91CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E91D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	b _080E91E6
	.align 2, 0
_080E9190: .4byte gUnk_02020EE0
_080E9194: .4byte gUnk_0203AD3C
_080E9198: .4byte gUnk_08D60FA4
_080E919C: .4byte gSongTable
_080E91A0: .4byte 0x00000C3C
_080E91A4: .4byte 0x00000C38
_080E91A8: .4byte gUnk_0203AD10
_080E91AC: .4byte 0x00000187
_080E91B0: .4byte 0x000002AA
_080E91B4: .4byte 0x00000CEC
_080E91B8: .4byte 0x00000CE8
_080E91BC: .4byte 0x0000019D
_080E91C0: .4byte gUnk_08351530
_080E91C4: .4byte gUnk_0203AD30
_080E91C8: .4byte gRngVal
_080E91CC: .4byte 0x00196225
_080E91D0: .4byte 0x3C6EF35F
_080E91D4:
	ldr r2, _080E91FC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9200 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E9204 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
_080E91E6:
	ands r1, r0
	ldrb r0, [r3]
	cmp r0, #2
	bls _080E91F0
	movs r1, #1
_080E91F0:
	cmp r1, #0
	beq _080E9208
	adds r0, r4, #0
	bl sub_080EAF24
	b _080E9214
	.align 2, 0
_080E91FC: .4byte gRngVal
_080E9200: .4byte 0x00196225
_080E9204: .4byte 0x3C6EF35F
_080E9208:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x38
	strh r0, [r4, #4]
_080E9214:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E921C
sub_080E921C: @ 0x080E921C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E924C
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E9274 @ =gUnk_08351530
	ldr r0, _080E9278 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	ldr r6, _080E927C @ =gRngVal
	cmp r1, r0
	bgt _080E9262
_080E924C:
	ldr r2, _080E927C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9280 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E9284 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r4, r0
	adds r6, r2, #0
_080E9262:
	ldr r1, [r6]
	ldr r0, _080E9280 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E9284 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r6]
	lsrs r5, r0, #0x10
	movs r2, #0
	b _080E928C
	.align 2, 0
_080E9274: .4byte gUnk_08351530
_080E9278: .4byte gUnk_0203AD30
_080E927C: .4byte gRngVal
_080E9280: .4byte 0x00196225
_080E9284: .4byte 0x3C6EF35F
_080E9288:
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_080E928C:
	cmp r2, #8
	bhi _080E929A
	adds r1, r2, #1
	ldr r0, _080E92A8 @ =0x00001999
	muls r0, r1, r0
	cmp r5, r0
	bge _080E9288
_080E929A:
	cmp r2, #9
	bhi _080E937C
	lsls r0, r2, #2
	ldr r1, _080E92AC @ =_080E92B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E92A8: .4byte 0x00001999
_080E92AC: .4byte _080E92B0
_080E92B0: @ jump table
	.4byte _080E932C @ case 0
	.4byte _080E9340 @ case 1
	.4byte _080E9360 @ case 2
	.4byte _080E92D8 @ case 3
	.4byte _080E92E2 @ case 4
	.4byte _080E92EC @ case 5
	.4byte _080E92F6 @ case 6
	.4byte _080E9306 @ case 7
	.4byte _080E9316 @ case 8
	.4byte _080E934A @ case 9
_080E92D8:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9A54
	b _080E937C
_080E92E2:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9C58
	b _080E937C
_080E92EC:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9FC0
	b _080E937C
_080E92F6:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r3, #0
	bl sub_080EA1C0
	b _080E937C
_080E9306:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r3, #0
	bl sub_080EA27C
	b _080E937C
_080E9316:
	ldr r1, [r6]
	ldr r0, _080E9338 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E933C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E9340
_080E932C:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9384
	b _080E937C
	.align 2, 0
_080E9338: .4byte 0x00196225
_080E933C: .4byte 0x3C6EF35F
_080E9340:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9524
	b _080E937C
_080E934A:
	ldr r1, [r6]
	ldr r0, _080E936C @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E9370 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E9374
_080E9360:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E96F8
	b _080E937C
	.align 2, 0
_080E936C: .4byte 0x00196225
_080E9370: .4byte 0x3C6EF35F
_080E9374:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9A54
_080E937C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9384
sub_080E9384: @ 0x080E9384
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E93C0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E93C4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E93DC
	.align 2, 0
_080E93C0: .4byte gUnk_020229D4
_080E93C4: .4byte gUnk_020229E0
_080E93C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E93E4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E93DC:
	cmp r0, #0
	bne _080E93C8
	orrs r2, r3
	str r2, [r1]
_080E93E4:
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
	movs r0, #0xb5
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

	thumb_func_start sub_080E9448
sub_080E9448: @ 0x080E9448
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x62
	ldrb r1, [r5]
	movs r7, #3
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080E9472
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080E9472:
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080E951E
	ldr r2, _080E94A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E94A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E94A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r7
	cmp r0, #1
	beq _080E94BE
	cmp r0, #1
	blo _080E94AC
	cmp r0, #2
	beq _080E94D0
	cmp r0, #3
	beq _080E94E4
	b _080E94F6
	.align 2, 0
_080E94A0: .4byte gRngVal
_080E94A4: .4byte 0x00196225
_080E94A8: .4byte 0x3C6EF35F
_080E94AC:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xd0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080E94F4
_080E94BE:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x88
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	b _080E94F4
_080E94D0:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x90
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080E94F4
_080E94E4:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x64
_080E94F4:
	strh r0, [r1]
_080E94F6:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E950A
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
_080E950A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E951E
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080E951E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E9524
sub_080E9524: @ 0x080E9524
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9560 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E9564 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E957C
	.align 2, 0
_080E9560: .4byte gUnk_020229D4
_080E9564: .4byte gUnk_020229E0
_080E9568:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9584
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E957C:
	cmp r0, #0
	bne _080E9568
	orrs r2, r3
	str r2, [r1]
_080E9584:
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
	movs r0, #0xb6
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

	thumb_func_start sub_080E95E8
sub_080E95E8: @ 0x080E95E8
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9658
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E9638
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r1, _080E9624 @ =0xFFFFFC80
	adds r2, r0, #0
	cmp r4, r1
	bge _080E962C
	ldr r0, _080E9628 @ =0x0000FC80
	strh r0, [r2]
	b _080E96A8
	.align 2, 0
_080E9624: .4byte 0xFFFFFC80
_080E9628: .4byte 0x0000FC80
_080E962C:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r4, r0
	ble _080E96A8
	strh r0, [r2]
	b _080E96A8
_080E9638:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	bgt _080E969C
	ldr r1, _080E9654 @ =0xFFFFFC80
	b _080E96A2
	.align 2, 0
_080E9654: .4byte 0xFFFFFC80
_080E9658:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E9684
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E9680 @ =0xFFFFFD80
	adds r2, r1, #0
	cmp r0, r4
	blt _080E969C
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E96A8
	b _080E96A6
	.align 2, 0
_080E9680: .4byte 0xFFFFFD80
_080E9684:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	ble _080E96A0
_080E969C:
	strh r4, [r2]
	b _080E96A8
_080E96A0:
	ldr r1, _080E96DC @ =0xFFFFFD80
_080E96A2:
	cmp r0, r1
	bge _080E96A8
_080E96A6:
	strh r1, [r2]
_080E96A8:
	ldrh r1, [r3, #4]
	movs r4, #4
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _080E96B6
	subs r0, r1, #1
	strh r0, [r3, #4]
_080E96B6:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080E96F0
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080E96E0
	ldr r0, [r3, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r3, #8]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _080E96F0
	.align 2, 0
_080E96DC: .4byte 0xFFFFFD80
_080E96E0:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_0809DA30
_080E96F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E96F8
sub_080E96F8: @ 0x080E96F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r6, r0, #8
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r4, #0
	ldr r1, _080E9734 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E9738 @ =gUnk_020229E0
	mov ip, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov sb, r7
	b _080E9750
	.align 2, 0
_080E9734: .4byte gUnk_020229D4
_080E9738: .4byte gUnk_020229E0
_080E973C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9758
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9750:
	cmp r0, #0
	bne _080E973C
	orrs r2, r3
	str r2, [r1]
_080E9758:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb7
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sl
	strb r7, [r1, #0x10]
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
	mov r7, sl
	cmp r7, #0
	beq _080E97D4
	ldr r2, _080E97C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E97CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E97D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	b _080E97F2
	.align 2, 0
_080E97C8: .4byte gRngVal
_080E97CC: .4byte 0x00196225
_080E97D0: .4byte 0x3C6EF35F
_080E97D4:
	ldr r2, _080E9808 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E980C @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080E9810 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E97F0
	movs r2, #1
_080E97F0:
	adds r1, r2, #0
_080E97F2:
	cmp r1, #0
	beq _080E988A
	movs r4, #0
	ldr r1, _080E9814 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E9818 @ =gUnk_020229E0
	mov ip, r7
	b _080E9830
	.align 2, 0
_080E9808: .4byte gRngVal
_080E980C: .4byte 0x00196225
_080E9810: .4byte 0x3C6EF35F
_080E9814: .4byte gUnk_020229D4
_080E9818: .4byte gUnk_020229E0
_080E981C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9838
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9830:
	cmp r0, #0
	bne _080E981C
	orrs r2, r3
	str r2, [r1]
_080E9838:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb7
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sl
	strb r7, [r1, #0x10]
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
_080E988A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E9898
sub_080E9898: @ 0x080E9898
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E98CC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E98D0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E98D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E98DC
	.align 2, 0
_080E98CC: .4byte ObjectMain
_080E98D0: .4byte ObjectDestroy
_080E98D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E98DC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r1, #0xfe
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E9944 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080E9948
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E9944: .4byte sub_0809F840

	thumb_func_start sub_080E9948
sub_080E9948: @ 0x080E9948
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E9990 @ =sub_080E99F0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E9968
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E9968:
	ldr r2, _080E9994 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9998 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E999C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	strh r0, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E99B2
	cmp r0, #1
	bgt _080E99A0
	cmp r0, #0
	beq _080E99AA
	b _080E99D4
	.align 2, 0
_080E9990: .4byte sub_080E99F0
_080E9994: .4byte gRngVal
_080E9998: .4byte 0x00196225
_080E999C: .4byte 0x3C6EF35F
_080E99A0:
	cmp r0, #2
	beq _080E99BA
	cmp r0, #3
	beq _080E99C2
	b _080E99D4
_080E99AA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	b _080E99CA
_080E99B2:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	b _080E99CA
_080E99BA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xe0
	b _080E99CA
_080E99C2:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #1
_080E99CA:
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
_080E99D4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E99E8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080E99E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E99F0
sub_080E99F0: @ 0x080E99F0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #1
	beq _080E9A22
	cmp r0, #1
	bgt _080E9A0E
	cmp r0, #0
	beq _080E9A18
	b _080E9A4E
_080E9A0E:
	cmp r0, #2
	beq _080E9A2C
	cmp r0, #3
	beq _080E9A36
	b _080E9A4E
_080E9A18:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	b _080E9A3E
_080E9A22:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	b _080E9A3E
_080E9A2C:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	b _080E9A3E
_080E9A36:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #4
_080E9A3E:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E9A4E
	strh r2, [r1]
_080E9A4E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9A54
sub_080E9A54: @ 0x080E9A54
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9A90 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E9A94 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E9AAC
	.align 2, 0
_080E9A90: .4byte gUnk_020229D4
_080E9A94: .4byte gUnk_020229E0
_080E9A98:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9AB4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9AAC:
	cmp r0, #0
	bne _080E9A98
	orrs r2, r3
	str r2, [r1]
_080E9AB4:
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
	movs r0, #0xb8
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

	thumb_func_start sub_080E9B18
sub_080E9B18: @ 0x080E9B18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E9B4C @ =sub_080E9BA0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E9B38
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E9B38:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9B50
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080E9B56
	.align 2, 0
_080E9B4C: .4byte sub_080E9BA0
_080E9B50:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
_080E9B56:
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
	beq _080E9B74
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080E9B74:
	ldr r2, _080E9B94 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9B98 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E9B9C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x78
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E9B94: .4byte gRngVal
_080E9B98: .4byte 0x00196225
_080E9B9C: .4byte 0x3C6EF35F

	thumb_func_start sub_080E9BA0
sub_080E9BA0: @ 0x080E9BA0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r5, #4
	orrs r1, r5
	str r1, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E9BC6
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080E9BC6:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080E9C3A
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #4
	beq _080E9C3A
	ldrb r0, [r2]
	cmp r0, #1
	beq _080E9C04
	cmp r0, #1
	bgt _080E9BF0
	cmp r0, #0
	beq _080E9BFA
	b _080E9C20
_080E9BF0:
	cmp r0, #2
	beq _080E9C0E
	cmp r0, #3
	beq _080E9C18
	b _080E9C20
_080E9BFA:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xe8
	lsls r0, r0, #1
	b _080E9C1E
_080E9C04:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080E9C1E
_080E9C0E:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080E9C1E
_080E9C18:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
_080E9C1E:
	strh r0, [r1]
_080E9C20:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080E9C3A:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080E9C50
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080E9C50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9C58
sub_080E9C58: @ 0x080E9C58
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9C94 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E9C98 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E9CB0
	.align 2, 0
_080E9C94: .4byte gUnk_020229D4
_080E9C98: .4byte gUnk_020229E0
_080E9C9C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9CB8
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9CB0:
	cmp r0, #0
	bne _080E9C9C
	orrs r2, r3
	str r2, [r1]
_080E9CB8:
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
	movs r0, #0xb9
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

	thumb_func_start sub_080E9D1C
sub_080E9D1C: @ 0x080E9D1C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E9D50 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E9D54 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E9D58
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E9D60
	.align 2, 0
_080E9D50: .4byte ObjectMain
_080E9D54: .4byte ObjectDestroy
_080E9D58:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E9D60:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r1, #0xfe
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E9DD0 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080EAA30
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E9DD0: .4byte sub_0809F840

	thumb_func_start sub_080E9DD4
sub_080E9DD4: @ 0x080E9DD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E9E10 @ =sub_080E9E58
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E9DF4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E9DF4:
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9E14
	movs r0, #0x30
	b _080E9E16
	.align 2, 0
_080E9E10: .4byte sub_080E9E58
_080E9E14:
	movs r0, #0x40
_080E9E16:
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E9E28
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080E9E28:
	ldr r2, _080E9E4C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9E50 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E9E54 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #4
	ldrsh r2, [r4, r1]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	subs r2, r2, r0
	strh r2, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E9E4C: .4byte gRngVal
_080E9E50: .4byte 0x00196225
_080E9E54: .4byte 0x3C6EF35F

	thumb_func_start sub_080E9E58
sub_080E9E58: @ 0x080E9E58
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, _080E9E90 @ =gUnk_08356CB4
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r6, #0
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9E94
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080E9F9A
	.align 2, 0
_080E9E90: .4byte gUnk_08356CB4
_080E9E94:
	ldrb r1, [r4, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E9ED4
	adds r3, r4, #0
	adds r3, #0x2f
	strb r6, [r3]
	ldr r2, _080E9ECC @ =gUnk_02020EE0
	ldr r0, _080E9ED0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r5, r3, #0
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080E9F24
	movs r6, #0xc6
	lsls r6, r6, #2
	b _080E9EFC
	.align 2, 0
_080E9ECC: .4byte gUnk_02020EE0
_080E9ED0: .4byte gUnk_0203AD3C
_080E9ED4:
	adds r3, r4, #0
	adds r3, #0x2f
	strb r6, [r3]
	ldr r2, _080E9F18 @ =gUnk_02020EE0
	ldr r0, _080E9F1C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r5, r3, #0
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080E9F24
	ldr r6, _080E9F20 @ =0x00000317
_080E9EFC:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E9F26
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080E9F26
	.align 2, 0
_080E9F18: .4byte gUnk_02020EE0
_080E9F1C: .4byte gUnk_0203AD3C
_080E9F20: .4byte 0x00000317
_080E9F24:
	strb r6, [r5]
_080E9F26:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E9F9A
	adds r0, r4, #0
	bl sub_080EA3B8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9F4C
	movs r0, #0x30
	b _080E9F4E
_080E9F4C:
	movs r0, #0x40
_080E9F4E:
	strh r0, [r4, #4]
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080E9F8C @ =gUnk_02020EE0
	ldr r0, _080E9F90 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080E9F98
	ldr r6, _080E9F94 @ =0x00000317
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E9F9A
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080E9F9A
	.align 2, 0
_080E9F8C: .4byte gUnk_02020EE0
_080E9F90: .4byte gUnk_0203AD3C
_080E9F94: .4byte 0x00000317
_080E9F98:
	strb r3, [r5]
_080E9F9A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E9FB8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080E9FB8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9FC0
sub_080E9FC0: @ 0x080E9FC0
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9FFC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080EA000 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080EA018
	.align 2, 0
_080E9FFC: .4byte gUnk_020229D4
_080EA000: .4byte gUnk_020229E0
_080EA004:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080EA020
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080EA018:
	cmp r0, #0
	bne _080EA004
	orrs r2, r3
	str r2, [r1]
_080EA020:
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
	movs r0, #0xba
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

	thumb_func_start sub_080EA084
sub_080EA084: @ 0x080EA084
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA0D4 @ =sub_080EA0D8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA0A4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA0A4:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
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
	beq _080EA0CE
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EA0CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA0D4: .4byte sub_080EA0D8

	thumb_func_start sub_080EA0D8
sub_080EA0D8: @ 0x080EA0D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	bne _080EA19A
	movs r0, #4
	ldrsh r3, [r4, r0]
	cmp r3, #0
	beq _080EA14A
	adds r5, r4, #0
	adds r5, #0x2f
	strb r6, [r5]
	ldr r2, _080EA138 @ =gUnk_02020EE0
	ldr r0, _080EA13C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EA144
	ldr r6, _080EA140 @ =0x00000317
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA146
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080EA146
	.align 2, 0
_080EA138: .4byte gUnk_02020EE0
_080EA13C: .4byte gUnk_0203AD3C
_080EA140: .4byte 0x00000317
_080EA144:
	strb r6, [r5]
_080EA146:
	movs r0, #0
	b _080EA198
_080EA14A:
	adds r5, r4, #0
	adds r5, #0x2f
	strb r3, [r5]
	ldr r2, _080EA18C @ =gUnk_02020EE0
	ldr r0, _080EA190 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EA194
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA196
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080EA196
	.align 2, 0
_080EA18C: .4byte gUnk_02020EE0
_080EA190: .4byte gUnk_0203AD3C
_080EA194:
	strb r3, [r5]
_080EA196:
	movs r0, #1
_080EA198:
	strh r0, [r4, #4]
_080EA19A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080EA1B8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080EA1B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EA1C0
sub_080EA1C0: @ 0x080EA1C0
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080EA1FC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080EA200 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080EA218
	.align 2, 0
_080EA1FC: .4byte gUnk_020229D4
_080EA200: .4byte gUnk_020229E0
_080EA204:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080EA220
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080EA218:
	cmp r0, #0
	bne _080EA204
	orrs r2, r3
	str r2, [r1]
_080EA220:
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
	strb r4, [r1, #0xc]
	strb r4, [r1, #0xe]
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

	thumb_func_start sub_080EA27C
sub_080EA27C: @ 0x080EA27C
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080EA2B8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080EA2BC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080EA2D4
	.align 2, 0
_080EA2B8: .4byte gUnk_020229D4
_080EA2BC: .4byte gUnk_020229E0
_080EA2C0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080EA2DC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080EA2D4:
	cmp r0, #0
	bne _080EA2C0
	orrs r2, r3
	str r2, [r1]
_080EA2DC:
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
	movs r0, #0xbb
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

	thumb_func_start sub_080EA340
sub_080EA340: @ 0x080EA340
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA3A8 @ =sub_080EB0DC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA360
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA360:
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0xa0
	strh r0, [r3]
	ldr r2, _080EA3AC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EA3B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EA3B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080EA38E
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r3]
_080EA38E:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080EA39C
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080EA39C:
	movs r0, #0x5a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA3A8: .4byte sub_080EB0DC
_080EA3AC: .4byte gRngVal
_080EA3B0: .4byte 0x00196225
_080EA3B4: .4byte 0x3C6EF35F

	thumb_func_start sub_080EA3B8
sub_080EA3B8: @ 0x080EA3B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080EA3EC @ =sub_080EA528
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080EA3F0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA3F4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080EA3FC
	.align 2, 0
_080EA3EC: .4byte sub_080EA528
_080EA3F0: .4byte sub_0803DCCC
_080EA3F4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080EA3FC:
	adds r4, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r6, #2
	strb r6, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r1, #0
	mov r8, r1
	mov r0, ip
	strh r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080EA500 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080EA454
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080EA454:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080EA504 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x50
	mov r1, ip
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r3, _080EA508 @ =0x00000317
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080EA50C @ =gUnk_02020EE0
	ldr r0, _080EA510 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080EA514
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA518
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080EA518
	.align 2, 0
_080EA500: .4byte gUnk_03000510
_080EA504: .4byte 0x20000043
_080EA508: .4byte 0x00000317
_080EA50C: .4byte gUnk_02020EE0
_080EA510: .4byte gUnk_0203AD3C
_080EA514:
	mov r1, r8
	strb r1, [r5]
_080EA518:
	movs r0, #8
	strh r0, [r4, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EA528
sub_080EA528: @ 0x080EA528
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080EA548 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA54C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080EA554
	.align 2, 0
_080EA548: .4byte gCurTask
_080EA54C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080EA554:
	adds r5, r0, #0
	ldr r2, _080EA5C0 @ =gUnk_02020EE0
	ldr r0, _080EA5C4 @ =gUnk_0203AD3C
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
	bne _080EA608
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080EA5D0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080EA62C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080EA5C8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080EA5CC @ =0x0400000A
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
	b _080EA62C
	.align 2, 0
_080EA5C0: .4byte gUnk_02020EE0
_080EA5C4: .4byte gUnk_0203AD3C
_080EA5C8: .4byte 0xFFF7FFFF
_080EA5CC: .4byte 0x0400000A
_080EA5D0:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080EA62C
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080EA600 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080EA604 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080EA62C
	.align 2, 0
_080EA600: .4byte 0xFFF7FFFF
_080EA604: .4byte 0x0400000A
_080EA608:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080EA622
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080EA622
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080EA622:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080EA62C:
	ldr r2, _080EA674 @ =gUnk_02020EE0
	ldr r0, _080EA678 @ =gUnk_0203AD3C
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
	bne _080EA67C
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EA684
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA684
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080EA684
	.align 2, 0
_080EA674: .4byte gUnk_02020EE0
_080EA678: .4byte gUnk_0203AD3C
_080EA67C:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080EA684:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA692
	b _080EA7C6
_080EA692:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x56
	ldr r6, _080EA6C4 @ =gUnk_02023530
	cmp r0, #0
	bne _080EA706
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080EA6CC
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r1, _080EA6C8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080EA6CE
	.align 2, 0
_080EA6C4: .4byte gUnk_02023530
_080EA6C8: .4byte 0x0000065E
_080EA6CC:
	movs r1, #0xff
_080EA6CE:
	cmp r1, #0xff
	beq _080EA706
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080EA7B4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080EA7B8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080EA706:
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080EA72E
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080EA72E:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EA740
	ldr r0, _080EA7BC @ =0xFFFFFEFF
	ands r2, r0
	str r2, [r5, #8]
_080EA740:
	ldrb r1, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r6, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r2, [r5, #0x40]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080EA782
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080EA782
	adds r0, r6, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080EA782
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080EA782
	adds r0, r5, #0
	bl sub_0806FC70
_080EA782:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA798
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080EA7C0
_080EA798:
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080EA7C6
	.align 2, 0
_080EA7B4: .4byte gUnk_02022EB0
_080EA7B8: .4byte gUnk_02022F50
_080EA7BC: .4byte 0xFFFFFEFF
_080EA7C0:
	adds r0, r5, #0
	bl sub_0806F8BC
_080EA7C6:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EA7D0
sub_080EA7D0: @ 0x080EA7D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080EA804 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EA808 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA80C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080EA814
	.align 2, 0
_080EA804: .4byte ObjectMain
_080EA808: .4byte ObjectDestroy
_080EA80C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080EA814:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EA870 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080EA874
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EA870: .4byte sub_0809F840

	thumb_func_start sub_080EA874
sub_080EA874: @ 0x080EA874
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA8BC @ =sub_080E9448
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA894
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA894:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xd0
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
	beq _080EA8B6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EA8B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA8BC: .4byte sub_080E9448

	thumb_func_start sub_080EA8C0
sub_080EA8C0: @ 0x080EA8C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080EA8F4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EA8F8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA8FC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080EA904
	.align 2, 0
_080EA8F4: .4byte ObjectMain
_080EA8F8: .4byte ObjectDestroy
_080EA8FC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080EA904:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EA958 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080EA95C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EA958: .4byte sub_0809F840

	thumb_func_start sub_080EA95C
sub_080EA95C: @ 0x080EA95C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA988 @ =sub_080E95E8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA97C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA97C:
	movs r0, #0x5a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA988: .4byte sub_080E95E8

	thumb_func_start sub_080EA98C
sub_080EA98C: @ 0x080EA98C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EA9C0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EA9C4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA9C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080EA9D0
	.align 2, 0
_080EA9C0: .4byte ObjectMain
_080EA9C4: .4byte ObjectDestroy
_080EA9C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080EA9D0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EAA2C @ =sub_0809F840
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
	bl sub_080E9B18
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EAA2C: .4byte sub_0809F840

	thumb_func_start sub_080EAA30
sub_080EAA30: @ 0x080EAA30
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAA7C @ =sub_080EB0B8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EAA50
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EAA50:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EAA72
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EAA72:
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAA7C: .4byte sub_080EB0B8

	thumb_func_start sub_080EAA80
sub_080EAA80: @ 0x080EAA80
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EAAB4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EAAB8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EAABC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080EAAC4
	.align 2, 0
_080EAAB4: .4byte ObjectMain
_080EAAB8: .4byte ObjectDestroy
_080EAABC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080EAAC4:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EAB20 @ =sub_0809F840
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
	bl sub_080EA084
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EAB20: .4byte sub_0809F840

	thumb_func_start sub_080EAB24
sub_080EAB24: @ 0x080EAB24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080EAB58 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EAB5C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EAB60
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080EAB68
	.align 2, 0
_080EAB58: .4byte ObjectMain
_080EAB5C: .4byte ObjectDestroy
_080EAB60:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080EAB68:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EABBC @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080EA340
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EABBC: .4byte sub_0809F840

	thumb_func_start sub_080EABC0
sub_080EABC0: @ 0x080EABC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAC08 @ =sub_080E7F98
	movs r1, #0x10
	bl ObjectSetFunc
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	ldr r0, _080EAC0C @ =0xFFFFF000
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	ldr r0, _080EAC10 @ =0x0000FF80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EAC14 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #0xb4
	strh r1, [r4, #4]
	adds r1, #0x4c
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAC08: .4byte sub_080E7F98
_080EAC0C: .4byte 0xFFFFF000
_080EAC10: .4byte 0x0000FF80
_080EAC14: .4byte 0xFFFFFBFF

	thumb_func_start sub_080EAC18
sub_080EAC18: @ 0x080EAC18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAC44 @ =sub_080E8050
	movs r1, #0x11
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
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAC44: .4byte sub_080E8050

	thumb_func_start sub_080EAC48
sub_080EAC48: @ 0x080EAC48
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAC7C @ =sub_080EAC80
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #0x20
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x28
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAC7C: .4byte sub_080EAC80

	thumb_func_start sub_080EAC80
sub_080EAC80: @ 0x080EAC80
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #6
	bne _080EAC98
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	b _080EACA6
_080EAC98:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EACA6
	movs r0, #6
	strb r0, [r3]
_080EACA6:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EACBA
	ldr r0, [r2, #8]
	ldr r1, _080EACD4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #8]
_080EACBA:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080EACCE
	adds r0, r2, #0
	bl sub_080E8178
_080EACCE:
	pop {r0}
	bx r0
	.align 2, 0
_080EACD4: .4byte 0xFFFFFEFF

	thumb_func_start sub_080EACD8
sub_080EACD8: @ 0x080EACD8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r1, #8]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EAD04
	ldr r0, _080EAD08 @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r1, #8]
	adds r2, r1, #0
	adds r2, #0x85
	movs r0, #0
	strb r0, [r2]
	adds r0, r1, #0
	bl sub_080E82C4
_080EAD04:
	pop {r0}
	bx r0
	.align 2, 0
_080EAD08: .4byte 0xFFFFFDFF

	thumb_func_start sub_080EAD0C
sub_080EAD0C: @ 0x080EAD0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAD38 @ =sub_080E7EBC
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
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAD38: .4byte sub_080E7EBC

	thumb_func_start sub_080EAD3C
sub_080EAD3C: @ 0x080EAD3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAD60 @ =sub_080EAD8C
	movs r1, #3
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080EAD68
	ldr r0, _080EAD64 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080EAD6E
	.align 2, 0
_080EAD60: .4byte sub_080EAD8C
_080EAD64: .4byte 0xFFFFFF00
_080EAD68:
	ldr r0, _080EAD88 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080EAD6E:
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
_080EAD88: .4byte 0xFFFFFF00

	thumb_func_start sub_080EAD8C
sub_080EAD8C: @ 0x080EAD8C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EADA0
	adds r0, r2, #0
	bl sub_080E8B08
_080EADA0:
	pop {r0}
	bx r0

	thumb_func_start sub_080EADA4
sub_080EADA4: @ 0x080EADA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080EADE0 @ =sub_080E8DAC
	movs r1, #7
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x9e
	movs r2, #0
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x50
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	beq _080EADD2
	movs r0, #1
	strb r0, [r3]
_080EADD2:
	strh r2, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EADE0: .4byte sub_080E8DAC

	thumb_func_start sub_080EADE4
sub_080EADE4: @ 0x080EADE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAE08 @ =sub_080EAE34
	movs r1, #3
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080EAE10
	ldr r0, _080EAE0C @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080EAE16
	.align 2, 0
_080EAE08: .4byte sub_080EAE34
_080EAE0C: .4byte 0xFFFFFF00
_080EAE10:
	ldr r0, _080EAE30 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080EAE16:
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
_080EAE30: .4byte 0xFFFFFF00

	thumb_func_start sub_080EAE34
sub_080EAE34: @ 0x080EAE34
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAE48
	adds r0, r2, #0
	bl sub_080E8E74
_080EAE48:
	pop {r0}
	bx r0

	thumb_func_start sub_080EAE4C
sub_080EAE4C: @ 0x080EAE4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAE74 @ =sub_080EAE78
	movs r1, #7
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
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
_080EAE74: .4byte sub_080EAE78

	thumb_func_start sub_080EAE78
sub_080EAE78: @ 0x080EAE78
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAE92
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_080E82C4
_080EAE92:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EAE98
sub_080EAE98: @ 0x080EAE98
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAEC0 @ =sub_080EAEC4
	movs r1, #0xd
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
_080EAEC0: .4byte sub_080EAEC4

	thumb_func_start sub_080EAEC4
sub_080EAEC4: @ 0x080EAEC4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0x14
	bls _080EAEDE
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r2, #8]
_080EAEDE:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAEEE
	adds r0, r2, #0
	bl sub_080EAEF4
_080EAEEE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EAEF4
sub_080EAEF4: @ 0x080EAEF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAF20 @ =sub_080E9034
	movs r1, #0xe
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
	movs r0, #0x38
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAF20: .4byte sub_080E9034

	thumb_func_start sub_080EAF24
sub_080EAF24: @ 0x080EAF24
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAF4C @ =sub_080EAF50
	movs r1, #0xf
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
_080EAF4C: .4byte sub_080EAF50

	thumb_func_start sub_080EAF50
sub_080EAF50: @ 0x080EAF50
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #1]
	cmp r2, #0x1d
	bhi _080EAF78
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r3, #8]
	cmp r2, #0x1d
	bne _080EAF78
	ldr r0, _080EAFB4 @ =0xFFFF7FFF
	ands r1, r0
	ldr r0, _080EAFB8 @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r3, #8]
_080EAF78:
	ldr r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAFD6
	ldr r0, _080EAFB4 @ =0xFFFF7FFF
	ands r1, r0
	str r1, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EAFD0
	ldr r2, _080EAFBC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EAFC0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EAFC4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EAFC8
	adds r0, r3, #0
	bl sub_080E8430
	b _080EAFD6
	.align 2, 0
_080EAFB4: .4byte 0xFFFF7FFF
_080EAFB8: .4byte 0xFEFFFFFF
_080EAFBC: .4byte gRngVal
_080EAFC0: .4byte 0x00196225
_080EAFC4: .4byte 0x3C6EF35F
_080EAFC8:
	adds r0, r3, #0
	bl sub_080E8588
	b _080EAFD6
_080EAFD0:
	adds r0, r3, #0
	bl sub_080E82C4
_080EAFD6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EAFDC
sub_080EAFDC: @ 0x080EAFDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EB024 @ =sub_080EB028
	movs r1, #0x12
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
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x1e
	strh r1, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EB01E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EB01E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EB024: .4byte sub_080EB028

	thumb_func_start sub_080EB028
sub_080EB028: @ 0x080EB028
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB03E
	adds r0, r1, #0
	bl sub_080EB044
_080EB03E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EB044
sub_080EB044: @ 0x080EB044
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EB080 @ =sub_080EB088
	movs r1, #0x13
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080EB084 @ =0x0000FF80
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x8c
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EB080: .4byte sub_080EB088
_080EB084: .4byte 0x0000FF80

	thumb_func_start sub_080EB088
sub_080EB088: @ 0x080EB088
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
	bne _080EB0B0
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080EB0B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EB0B8
sub_080EB0B8: @ 0x080EB0B8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB0D6
	adds r0, r2, #0
	bl sub_080E9DD4
_080EB0D6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EB0DC
sub_080EB0DC: @ 0x080EB0DC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080EB0F6
	subs r0, r1, #1
	strh r0, [r2, #4]
_080EB0F6:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080EB130
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080EB120
	ldr r0, [r2, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080EB130
_080EB120:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080EB130:
	pop {r0}
	bx r0

	thumb_func_start sub_080EB134
sub_080EB134: @ 0x080EB134
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EB168 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EB16C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EB170
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080EB178
	.align 2, 0
_080EB168: .4byte ObjectMain
_080EB16C: .4byte ObjectDestroy
_080EB170:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080EB178:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xb4
	movs r1, #0
	strb r3, [r0]
	adds r2, r5, #0
	adds r2, #0xb6
	movs r0, #0
	strh r1, [r2]
	adds r1, r5, #0
	adds r1, #0xb5
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080EB1DA
	ldr r0, [r5, #8]
	orrs r0, r3
	b _080EB1E2
_080EB1DA:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EB1E2:
	str r0, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080EB2A8 @ =0x001080A0
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r4, #0x10
	rsbs r4, r4, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	ldr r2, _080EB2AC @ =gUnk_02023530
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080EB2B0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080EB2B4 @ =gUnk_02020EE0
	ldr r0, _080EB2B8 @ =gUnk_0203AD3C
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
	bne _080EB296
	ldr r0, _080EB2BC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080EB296
	adds r0, r4, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080EB296:
	adds r0, r5, #0
	bl sub_080ED520
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EB2A8: .4byte 0x001080A0
_080EB2AC: .4byte gUnk_02023530
_080EB2B0: .4byte 0x0000065E
_080EB2B4: .4byte gUnk_02020EE0
_080EB2B8: .4byte gUnk_0203AD3C
_080EB2BC: .4byte gUnk_0203AD20

	thumb_func_start sub_080EB2C0
sub_080EB2C0: @ 0x080EB2C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080EB38E
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EB38E
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080EB38E
	ldr r3, _080EB398 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_080ED54C
_080EB38E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EB398: .4byte gUnk_02023530

	thumb_func_start sub_080EB39C
sub_080EB39C: @ 0x080EB39C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x8c
	bne _080EB3B0
	movs r0, #4
	adds r1, r4, #0
	bl sub_0806FE64
_080EB3B0:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x77
	bgt _080EB3F8
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080EB3F8
	ldr r5, _080EB494 @ =gRngVal
	ldr r0, [r5]
	ldr r7, _080EB498 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080EB49C @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EB3E0
	adds r0, r4, #0
	bl sub_080ED078
_080EB3E0:
	ldr r0, [r5]
	muls r0, r7, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080EB3F8
	adds r0, r4, #0
	bl sub_080ED078
_080EB3F8:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x8c
	bgt _080EB476
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080EB476
	ldr r1, _080EB4A0 @ =gUnk_02020EE0
	ldr r0, _080EB4A4 @ =gUnk_0203AD3C
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
	bne _080EB476
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EB436
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EB476
_080EB436:
	ldr r1, _080EB4A8 @ =gUnk_08D60FA4
	ldr r5, _080EB4AC @ =gSongTable
	ldr r2, _080EB4B0 @ =0x00000C54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EB45C
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EB476
_080EB45C:
	cmp r3, #0
	beq _080EB46E
	ldr r0, _080EB4B4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EB476
_080EB46E:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EB476:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB48E
	adds r0, r4, #0
	bl sub_080700D8
	adds r0, r4, #0
	bl sub_080ED578
_080EB48E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EB494: .4byte gRngVal
_080EB498: .4byte 0x00196225
_080EB49C: .4byte 0x3C6EF35F
_080EB4A0: .4byte gUnk_02020EE0
_080EB4A4: .4byte gUnk_0203AD3C
_080EB4A8: .4byte gUnk_08D60FA4
_080EB4AC: .4byte gSongTable
_080EB4B0: .4byte 0x00000C54
_080EB4B4: .4byte gUnk_0203AD10

	thumb_func_start sub_080EB4B8
sub_080EB4B8: @ 0x080EB4B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bls _080EB4CA
	b _080EB6F4
_080EB4CA:
	lsls r0, r0, #2
	ldr r1, _080EB4D4 @ =_080EB4D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EB4D4: .4byte _080EB4D8
_080EB4D8: @ jump table
	.4byte _080EB51C @ case 0
	.4byte _080EB6F4 @ case 1
	.4byte _080EB6F4 @ case 2
	.4byte _080EB4F4 @ case 3
	.4byte _080EB508 @ case 4
	.4byte _080EB640 @ case 5
	.4byte _080EB6E4 @ case 6
_080EB4F4:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080EB500
	b _080EB6F4
_080EB500:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #4
	b _080EB650
_080EB508:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080EB514
	b _080EB6F4
_080EB514:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
	b _080EB618
_080EB51C:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x10
	bne _080EB606
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080EB534
	movs r0, #0
	strb r0, [r1, #9]
_080EB534:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r4, [r0]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080EB628 @ =gUnk_02023530
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080EB62C @ =0x0000065E
	adds r0, r0, r1
	ldrb r6, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080EB606
	ldr r0, _080EB630 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080EB606
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080EB606
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x60
	adds r2, r2, r5
	mov r8, r2
	adds r7, r3, #0
	cmp r0, #0xf
	bls _080EB5C4
	movs r4, #1
_080EB58C:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080EB58C
	adds r0, r6, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_08002A44
_080EB5C4:
	ldr r1, _080EB630 @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08002A1C
	ldr r2, _080EB634 @ =gUnk_02020EE0
	ldr r0, _080EB638 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EB606
	ldr r0, _080EB63C @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080EB606
	adds r0, r6, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080EB606:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB6F4
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
_080EB618:
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080EB6F4
	.align 2, 0
_080EB628: .4byte gUnk_02023530
_080EB62C: .4byte 0x0000065E
_080EB630: .4byte gUnk_08352D80
_080EB634: .4byte gUnk_02020EE0
_080EB638: .4byte gUnk_0203AD3C
_080EB63C: .4byte gUnk_0203AD20
_080EB640:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EB6F4
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #6
_080EB650:
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r1, _080EB6CC @ =gUnk_02020EE0
	ldr r0, _080EB6D0 @ =gUnk_0203AD3C
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
	bne _080EB6F4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080EB688
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EB6F4
_080EB688:
	ldr r1, _080EB6D4 @ =gUnk_08D60FA4
	ldr r4, _080EB6D8 @ =gSongTable
	ldr r2, _080EB6DC @ =0x00000C54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EB6AE
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EB6F4
_080EB6AE:
	cmp r3, #0
	beq _080EB6C0
	ldr r0, _080EB6E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EB6F4
_080EB6C0:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080EB6F4
	.align 2, 0
_080EB6CC: .4byte gUnk_02020EE0
_080EB6D0: .4byte gUnk_0203AD3C
_080EB6D4: .4byte gUnk_08D60FA4
_080EB6D8: .4byte gSongTable
_080EB6DC: .4byte 0x00000C54
_080EB6E0: .4byte gUnk_0203AD10
_080EB6E4:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EB6F4
	adds r0, r5, #0
	bl sub_080EBBD0
_080EB6F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EB700
sub_080EB700: @ 0x080EB700
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	movs r4, #3
	movs r5, #3
	movs r6, #3
	movs r0, #2
	mov sb, r0
	mov ip, r0
	mov r8, r6
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080EB778 @ =gUnk_08351530
	ldr r0, _080EB77C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r2, r7]
	asrs r0, r0, #0x11
	cmp r1, r0
	ble _080EB746
	movs r4, #4
	movs r5, #4
	movs r6, #5
	movs r0, #1
	mov sb, r0
	mov ip, r0
	mov r8, r0
_080EB746:
	ldr r2, _080EB780 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EB784 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EB788 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080EB790
	ldr r0, [r3, #0x18]
	ldr r1, _080EB78C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x18]
	movs r0, #0xfc
	lsls r0, r0, #9
	str r0, [r3, #0x40]
	movs r0, #0x8c
	lsls r0, r0, #9
	b _080EB83A
	.align 2, 0
_080EB778: .4byte gUnk_08351530
_080EB77C: .4byte gUnk_0203AD30
_080EB780: .4byte gRngVal
_080EB784: .4byte 0x00196225
_080EB788: .4byte 0x3C6EF35F
_080EB78C: .4byte 0xFFFFF7FF
_080EB790:
	subs r0, r1, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080EB7B4
	ldr r0, [r3, #0x18]
	ldr r1, _080EB7B0 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x18]
	movs r0, #0x94
	lsls r0, r0, #0xa
	str r0, [r3, #0x40]
	movs r0, #0x84
	lsls r0, r0, #9
	b _080EB83A
	.align 2, 0
_080EB7B0: .4byte 0xFFFFF7FF
_080EB7B4:
	subs r0, r1, r6
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080EB7D8
	ldr r0, [r3, #0x18]
	ldr r1, _080EB7D4 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x18]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r3, #0x40]
	movs r0, #0xf8
	lsls r0, r0, #8
	b _080EB83A
	.align 2, 0
_080EB7D4: .4byte 0xFFFFF7FF
_080EB7D8:
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080EB7FA
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x18]
	movs r0, #0xfc
	lsls r0, r0, #9
	str r0, [r3, #0x40]
	movs r0, #0xf8
	lsls r0, r0, #8
	b _080EB83A
_080EB7FA:
	mov r7, ip
	subs r0, r1, r7
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080EB81C
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x18]
	movs r0, #0x94
	lsls r0, r0, #0xa
	str r0, [r3, #0x40]
	movs r0, #0xe8
	lsls r0, r0, #8
	b _080EB83A
_080EB81C:
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080EB83C
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x18]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r3, #0x40]
	movs r0, #0xd8
	lsls r0, r0, #8
_080EB83A:
	str r0, [r3, #0x44]
_080EB83C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EB848
sub_080EB848: @ 0x080EB848
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080EB860
	adds r0, r4, #0
	bl sub_080EC504
	b _080EB98A
_080EB860:
	ldr r2, _080EB894 @ =sub_080EB9AC
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080EB898
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080EB8A0
	.align 2, 0
_080EB894: .4byte sub_080EB9AC
_080EB898:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EB8A0:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _080EB8D0 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080EB8D4 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080EB8D8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EB8DC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EB8E0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EB8E4
	movs r0, #0x10
	b _080EB8E6
	.align 2, 0
_080EB8D0: .4byte 0xFFFFFDFF
_080EB8D4: .4byte 0xFFFFFBFF
_080EB8D8: .4byte gRngVal
_080EB8DC: .4byte 0x00196225
_080EB8E0: .4byte 0x3C6EF35F
_080EB8E4:
	movs r0, #0x30
_080EB8E6:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EB90C
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	b _080EB91E
_080EB90C:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0xa
	bl sub_0803E2B0
_080EB91E:
	ldr r1, _080EB994 @ =gUnk_02020EE0
	ldr r0, _080EB998 @ =gUnk_0203AD3C
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
	bne _080EB98A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EB94A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EB98A
_080EB94A:
	ldr r1, _080EB99C @ =gUnk_08D60FA4
	ldr r4, _080EB9A0 @ =gSongTable
	ldr r2, _080EB9A4 @ =0x00000C54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EB970
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EB98A
_080EB970:
	cmp r3, #0
	beq _080EB982
	ldr r0, _080EB9A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EB98A
_080EB982:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EB98A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EB994: .4byte gUnk_02020EE0
_080EB998: .4byte gUnk_0203AD3C
_080EB99C: .4byte gUnk_08D60FA4
_080EB9A0: .4byte gSongTable
_080EB9A4: .4byte 0x00000C54
_080EB9A8: .4byte gUnk_0203AD10

	thumb_func_start sub_080EB9AC
sub_080EB9AC: @ 0x080EB9AC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	beq _080EBA58
	cmp r0, #3
	bgt _080EB9C4
	cmp r0, #2
	beq _080EB9D2
	b _080EBBC8
_080EB9C4:
	cmp r0, #4
	bne _080EB9CA
	b _080EBB6A
_080EB9CA:
	cmp r0, #6
	bne _080EB9D0
	b _080EBBB8
_080EB9D0:
	b _080EBBC8
_080EB9D2:
	ldr r1, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080EB9DC
	b _080EBBC8
_080EB9DC:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EB9F8
	b _080EBBC8
_080EB9F8:
	ldr r2, _080EBA38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBA3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBA40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EBA44 @ =0x00005554
	cmp r2, r0
	bls _080EBA1C
	ldr r0, _080EBA48 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080EBA18
	movs r1, #1
_080EBA18:
	cmp r1, #0
	bne _080EBA26
_080EBA1C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080EBA50
_080EBA26:
	ldr r0, [r4, #8]
	ldr r1, _080EBA4C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	b _080EBB10
	.align 2, 0
_080EBA38: .4byte gRngVal
_080EBA3C: .4byte 0x00196225
_080EBA40: .4byte 0x3C6EF35F
_080EBA44: .4byte 0x00005554
_080EBA48: .4byte 0x0000AAA9
_080EBA4C: .4byte 0xFFFFFBFF
_080EBA50:
	adds r0, r4, #0
	bl sub_080EBBD0
	b _080EBBC8
_080EBA58:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bne _080EBAD2
	ldr r0, [r4, #8]
	ldr r1, _080EBB20 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080EBB24 @ =gUnk_02020EE0
	ldr r0, _080EBB28 @ =gUnk_0203AD3C
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
	bne _080EBAD2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EBA92
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EBAD2
_080EBA92:
	ldr r1, _080EBB2C @ =gUnk_08D60FA4
	ldr r5, _080EBB30 @ =gSongTable
	ldr r2, _080EBB34 @ =0x00000C54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EBAB8
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EBAD2
_080EBAB8:
	cmp r3, #0
	beq _080EBACA
	ldr r0, _080EBB38 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EBAD2
_080EBACA:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EBAD2:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBBC8
	ldr r2, _080EBB3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBB40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBB44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EBB48 @ =0x00005554
	cmp r2, r0
	bls _080EBB00
	ldr r0, _080EBB4C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080EBAFC
	movs r1, #1
_080EBAFC:
	cmp r1, #0
	bne _080EBB0A
_080EBB00:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080EBB50
_080EBB0A:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
_080EBB10:
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080EBBC8
	.align 2, 0
_080EBB20: .4byte 0xFFFFFDFF
_080EBB24: .4byte gUnk_02020EE0
_080EBB28: .4byte gUnk_0203AD3C
_080EBB2C: .4byte gUnk_08D60FA4
_080EBB30: .4byte gSongTable
_080EBB34: .4byte 0x00000C54
_080EBB38: .4byte gUnk_0203AD10
_080EBB3C: .4byte gRngVal
_080EBB40: .4byte 0x00196225
_080EBB44: .4byte 0x3C6EF35F
_080EBB48: .4byte 0x00005554
_080EBB4C: .4byte 0x0000AAA9
_080EBB50:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	b _080EBBC8
_080EBB6A:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080EBBA6
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EBB92
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	b _080EBBA6
_080EBB92:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
_080EBBA6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBBC8
	adds r0, r4, #0
	bl sub_080EBF34
	b _080EBBC8
_080EBBB8:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBBC8
	adds r0, r4, #0
	bl sub_080EBBD0
_080EBBC8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBBD0
sub_080EBBD0: @ 0x080EBBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	ldr r2, _080EBC80 @ =sub_080ED5FC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080EBC3C
	ldr r6, _080EBC84 @ =gRngVal
	ldr r0, [r6]
	ldr r1, _080EBC88 @ =0x00196225
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080EBC8C @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080EBC22
	adds r0, r5, #0
	bl sub_080ED078
_080EBC22:
	ldr r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _080EBC3C
	adds r0, r5, #0
	bl sub_080ED078
_080EBC3C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080EBC84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBC88 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBC8C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080EBC94
	cmp r1, #1
	blo _080EBC90
	cmp r1, #2
	beq _080EBC98
	movs r0, #0xf
	b _080EBC9A
	.align 2, 0
_080EBC80: .4byte sub_080ED5FC
_080EBC84: .4byte gRngVal
_080EBC88: .4byte 0x00196225
_080EBC8C: .4byte 0x3C6EF35F
_080EBC90:
	movs r0, #0x5a
	b _080EBC9A
_080EBC94:
	movs r0, #0x3c
	b _080EBC9A
_080EBC98:
	movs r0, #0x1e
_080EBC9A:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	adds r6, r5, #0
	adds r6, #0xb4
	cmp r0, #0
	beq _080EBCC2
	ldrb r0, [r6]
	cmp r0, #0
	bne _080EBCC2
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080EC650
_080EBCC2:
	movs r0, #0
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0xb6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBCDC
sub_080EBCDC: @ 0x080EBCDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EBD28 @ =sub_080EBD4C
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EBD2C @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080EBD30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBD34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBD38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EBD3C
	strh r1, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	b _080EBD46
	.align 2, 0
_080EBD28: .4byte sub_080EBD4C
_080EBD2C: .4byte 0xFFFFFBFF
_080EBD30: .4byte gRngVal
_080EBD34: .4byte 0x00196225
_080EBD38: .4byte 0x3C6EF35F
_080EBD3C:
	movs r0, #0x18
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
_080EBD46:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBD4C
sub_080EBD4C: @ 0x080EBD4C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #5
	beq _080EBD6C
	cmp r0, #5
	bgt _080EBD66
	cmp r0, #4
	bne _080EBD64
	b _080EBEE0
_080EBD64:
	b _080EBF2C
_080EBD66:
	cmp r0, #6
	beq _080EBE38
	b _080EBF2C
_080EBD6C:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080EBDA8
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EBD96
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	b _080EBDA8
_080EBD96:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0xa
	bl sub_0803E2B0
_080EBDA8:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080EBDB4
	b _080EBF2C
_080EBDB4:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EBDC2
	b _080EBF2C
_080EBDC2:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EBDDC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	b _080EBE2E
_080EBDDC:
	ldr r2, _080EBE10 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBE14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBE18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EBDFE
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080EBE1C
_080EBDFE:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	b _080EBE2E
	.align 2, 0
_080EBE10: .4byte gRngVal
_080EBE14: .4byte 0x00196225
_080EBE18: .4byte 0x3C6EF35F
_080EBE1C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080EBE34 @ =0xFFFFFDFF
_080EBE2E:
	ands r0, r1
	str r0, [r4, #8]
	b _080EBF2C
	.align 2, 0
_080EBE34: .4byte 0xFFFFFDFF
_080EBE38:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080EBEB4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080EBEC8 @ =gUnk_02020EE0
	ldr r0, _080EBECC @ =gUnk_0203AD3C
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
	bne _080EBEB4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EBE74
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EBEB4
_080EBE74:
	ldr r1, _080EBED0 @ =gUnk_08D60FA4
	ldr r5, _080EBED4 @ =gSongTable
	ldr r2, _080EBED8 @ =0x00000C54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EBE9A
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EBEB4
_080EBE9A:
	cmp r3, #0
	beq _080EBEAC
	ldr r0, _080EBEDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EBEB4
_080EBEAC:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EBEB4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBF2C
	adds r0, r4, #0
	bl sub_080EBBD0
	b _080EBF2C
	.align 2, 0
_080EBEC8: .4byte gUnk_02020EE0
_080EBECC: .4byte gUnk_0203AD3C
_080EBED0: .4byte gUnk_08D60FA4
_080EBED4: .4byte gSongTable
_080EBED8: .4byte 0x00000C54
_080EBEDC: .4byte gUnk_0203AD10
_080EBEE0:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _080EBF1C
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EBF08
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	b _080EBF1C
_080EBF08:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
_080EBF1C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBF2C
	adds r0, r4, #0
	bl sub_080EBF34
_080EBF2C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBF34
sub_080EBF34: @ 0x080EBF34
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _080EBFA8 @ =sub_080ED67C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r5, #8]
	ldr r1, _080EBFAC @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _080EBFB0 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EBF8C
	adds r2, r5, #0
	adds r2, #0x80
	ldr r3, _080EBFB4 @ =gUnk_08351530
	ldr r4, _080EBFB8 @ =gUnk_0203AD30
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	adds r6, r2, #0
	cmp r1, r0
	bge _080EBFE0
_080EBF8C:
	ldr r2, _080EBFBC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBFC0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBFC4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EBFC8
	movs r0, #0x18
	b _080EBFCA
	.align 2, 0
_080EBFA8: .4byte sub_080ED67C
_080EBFAC: .4byte 0xFFFFFBFF
_080EBFB0: .4byte 0xFFFFFDFF
_080EBFB4: .4byte gUnk_08351530
_080EBFB8: .4byte gUnk_0203AD30
_080EBFBC: .4byte gRngVal
_080EBFC0: .4byte 0x00196225
_080EBFC4: .4byte 0x3C6EF35F
_080EBFC8:
	movs r0, #0x10
_080EBFCA:
	strh r0, [r5, #4]
	adds r6, r5, #0
	adds r6, #0x80
	ldr r3, _080EBFD8 @ =gUnk_08351530
	ldr r4, _080EBFDC @ =gUnk_0203AD30
	b _080EC00C
	.align 2, 0
_080EBFD8: .4byte gUnk_08351530
_080EBFDC: .4byte gUnk_0203AD30
_080EBFE0:
	ldr r2, _080EBFFC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC000 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC004 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC008
	movs r0, #0x24
	b _080EC00A
	.align 2, 0
_080EBFFC: .4byte gRngVal
_080EC000: .4byte 0x00196225
_080EC004: .4byte 0x3C6EF35F
_080EC008:
	movs r0, #0x18
_080EC00A:
	strh r0, [r5, #4]
_080EC00C:
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r6, r2]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC02E
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #4]
_080EC02E:
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC040
sub_080EC040: @ 0x080EC040
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #5
	adds r3, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EC070
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC0BC @ =gUnk_08351530
	ldr r0, _080EC0C0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC072
_080EC070:
	movs r5, #3
_080EC072:
	adds r0, r3, #0
	adds r0, #0xb6
	ldrh r0, [r0]
	cmp r0, r5
	bhi _080EC07E
	b _080EC188
_080EC07E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC10C
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC0BC @ =gUnk_08351530
	ldr r0, _080EC0C0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC0D0
	ldr r2, _080EC0C4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC0C8 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080EC0CC @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	b _080EC16E
	.align 2, 0
_080EC0BC: .4byte gUnk_08351530
_080EC0C0: .4byte gUnk_0203AD30
_080EC0C4: .4byte gRngVal
_080EC0C8: .4byte 0x00196225
_080EC0CC: .4byte 0x3C6EF35F
_080EC0D0:
	ldr r2, _080EC0EC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC0F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC0F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EC0F8 @ =0x00005554
	cmp r2, r0
	bhi _080EC0FC
_080EC0E6:
	movs r1, #0
	b _080EC170
	.align 2, 0
_080EC0EC: .4byte gRngVal
_080EC0F0: .4byte 0x00196225
_080EC0F4: .4byte 0x3C6EF35F
_080EC0F8: .4byte 0x00005554
_080EC0FC:
	ldr r0, _080EC108 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080EC170
	movs r1, #1
	b _080EC170
	.align 2, 0
_080EC108: .4byte 0x0000AAA9
_080EC10C:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC144 @ =gUnk_08351530
	ldr r0, _080EC148 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC15C
	ldr r2, _080EC14C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC150 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080EC154 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EC158 @ =0x00005554
	cmp r2, r0
	bls _080EC0E6
	b _080EC0FC
	.align 2, 0
_080EC144: .4byte gUnk_08351530
_080EC148: .4byte gUnk_0203AD30
_080EC14C: .4byte gRngVal
_080EC150: .4byte 0x00196225
_080EC154: .4byte 0x3C6EF35F
_080EC158: .4byte 0x00005554
_080EC15C:
	ldr r2, _080EC17C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC180 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC184 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
_080EC16E:
	ands r1, r0
_080EC170:
	cmp r1, #0
	bne _080EC188
	adds r0, r4, #0
	bl sub_080ED704
	b _080EC1EC
	.align 2, 0
_080EC17C: .4byte gRngVal
_080EC180: .4byte 0x00196225
_080EC184: .4byte 0x3C6EF35F
_080EC188:
	ldr r2, _080EC1D4 @ =sub_080ED6D0
	adds r0, r4, #0
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EC1D8 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080EC1DC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC1E0 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080EC1E4 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EC1CE
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC1E8
_080EC1CE:
	strh r1, [r4, #4]
	b _080EC1EC
	.align 2, 0
_080EC1D4: .4byte sub_080ED6D0
_080EC1D8: .4byte 0xFFFFFBFF
_080EC1DC: .4byte gRngVal
_080EC1E0: .4byte 0x00196225
_080EC1E4: .4byte 0x3C6EF35F
_080EC1E8:
	movs r0, #2
	strh r0, [r4, #4]
_080EC1EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC1F4
sub_080EC1F4: @ 0x080EC1F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080EC220 @ =sub_080EC308
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
	ble _080EC224
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080EC22C
	.align 2, 0
_080EC220: .4byte sub_080EC308
_080EC224:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EC22C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EC270 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC284
	ldr r2, _080EC274 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC278 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC27C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC280
	movs r0, #0xc
	b _080EC2AE
	.align 2, 0
_080EC270: .4byte 0xFFFFFBFF
_080EC274: .4byte gRngVal
_080EC278: .4byte 0x00196225
_080EC27C: .4byte 0x3C6EF35F
_080EC280:
	movs r0, #8
	b _080EC2AE
_080EC284:
	ldr r2, _080EC2A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC2A4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080EC2A8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC2AC
	movs r0, #0x24
	b _080EC2AE
	.align 2, 0
_080EC2A0: .4byte gRngVal
_080EC2A4: .4byte 0x00196225
_080EC2A8: .4byte 0x3C6EF35F
_080EC2AC:
	movs r0, #0x18
_080EC2AE:
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC300 @ =gUnk_08351530
	ldr r0, _080EC304 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080EC2D8
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #4]
_080EC2D8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080EC650
	adds r1, r5, #0
	adds r1, #0xb4
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EC300: .4byte gUnk_08351530
_080EC304: .4byte gUnk_0203AD30

	thumb_func_start sub_080EC308
sub_080EC308: @ 0x080EC308
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #8
	beq _080EC326
	cmp r0, #8
	bgt _080EC320
	cmp r0, #0
	beq _080EC34C
	b _080EC3B2
_080EC320:
	cmp r0, #9
	beq _080EC334
	b _080EC3B2
_080EC326:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC3B2
	movs r0, #9
	b _080EC340
_080EC334:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC3B2
	movs r0, #0
_080EC340:
	strb r0, [r2]
	ldr r0, [r3, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r3, #8]
	b _080EC3B2
_080EC34C:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EC3B2
	ldr r2, _080EC398 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC39C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC3A0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	ldr r0, _080EC3A4 @ =0x00005554
	cmp r1, r0
	bls _080EC380
	ldr r0, _080EC3A8 @ =0x0000AAA9
	movs r4, #2
	cmp r1, r0
	bhi _080EC378
	movs r4, #1
_080EC378:
	adds r2, r3, #0
	adds r2, #0x85
	cmp r4, #0
	bne _080EC38C
_080EC380:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bls _080EC3AC
_080EC38C:
	movs r0, #0
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_080EBCDC
	b _080EC3B2
	.align 2, 0
_080EC398: .4byte gRngVal
_080EC39C: .4byte 0x00196225
_080EC3A0: .4byte 0x3C6EF35F
_080EC3A4: .4byte 0x00005554
_080EC3A8: .4byte 0x0000AAA9
_080EC3AC:
	adds r0, r3, #0
	bl sub_080EC1F4
_080EC3B2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080EC3B8
sub_080EC3B8: @ 0x080EC3B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080EC3E4 @ =sub_080EC44C
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
	ble _080EC3E8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080EC3F0
	.align 2, 0
_080EC3E4: .4byte sub_080EC44C
_080EC3E8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EC3F0:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r5, #8]
	ldr r1, _080EC41C @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC420
	movs r0, #0x1c
	b _080EC422
	.align 2, 0
_080EC41C: .4byte 0xFFFFFBFF
_080EC420:
	movs r0, #0x2a
_080EC422:
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	adds r0, r5, #0
	movs r1, #2
	bl sub_080EC650
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC44C
sub_080EC44C: @ 0x080EC44C
	push {r4, r5, lr}
	adds r3, r0, #0
	mov ip, r3
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #8
	beq _080EC46C
	cmp r0, #8
	bgt _080EC466
	cmp r0, #0
	beq _080EC4E4
	b _080EC4FE
_080EC466:
	cmp r0, #9
	beq _080EC47C
	b _080EC4FE
_080EC46C:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC4FE
	movs r0, #9
	strb r0, [r2]
	b _080EC4D8
_080EC47C:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC4FE
	movs r4, #8
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC4B4
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080EC4C8 @ =gUnk_08351530
	ldr r0, _080EC4CC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC4B4
	movs r4, #0xc
_080EC4B4:
	mov r0, ip
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, r4
	bhs _080EC4D0
	adds r0, r3, #0
	bl sub_080EC3B8
	b _080EC4FE
	.align 2, 0
_080EC4C8: .4byte gUnk_08351530
_080EC4CC: .4byte gUnk_0203AD30
_080EC4D0:
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
_080EC4D8:
	ldr r0, [r3, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080EC4FE
_080EC4E4:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EC4FE
	adds r1, r3, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_080EBCDC
_080EC4FE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080EC504
sub_080EC504: @ 0x080EC504
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080EC560 @ =sub_080ED77C
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
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080EC564
	ldr r1, [r4, #0x44]
	movs r0, #0xf8
	lsls r0, r0, #8
	cmp r1, r0
	bne _080EC564
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _080EC556
	adds r0, r1, #0
	cmp r0, #4
	beq _080EC556
	cmp r0, #5
	bne _080EC564
_080EC556:
	adds r0, r4, #0
	bl sub_080ED87C
	b _080EC5AC
	.align 2, 0
_080EC560: .4byte sub_080ED77C
_080EC564:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080EC578
	adds r0, r4, #0
	bl sub_080ED7D8
	b _080EC5AC
_080EC578:
	ldr r0, _080EC5A4 @ =0xFFFFFBFF
	ands r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #2
	blt _080EC59C
	cmp r0, #3
	ble _080EC5A8
	cmp r0, #6
	bgt _080EC59C
	cmp r0, #5
	bge _080EC5AC
_080EC59C:
	movs r0, #5
	strb r0, [r2]
	b _080EC5AC
	.align 2, 0
_080EC5A4: .4byte 0xFFFFFBFF
_080EC5A8:
	movs r0, #6
	strb r0, [r1]
_080EC5AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC5B4
sub_080EC5B4: @ 0x080EC5B4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080EC638
	movs r5, #0
	ldr r0, _080EC640 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	bhs _080EC638
	movs r7, #0xf8
	lsls r7, r7, #5
	ldr r6, _080EC644 @ =gUnk_02023530
_080EC5D0:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080EC648 @ =gUnk_02020EE0
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EC62A
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080EC62A
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	cmp r0, r7
	beq _080EC62A
	ldrb r1, [r1, #4]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r6
	ldr r2, _080EC64C @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #1
	strh r0, [r4, #4]
_080EC62A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080EC640 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	blo _080EC5D0
_080EC638:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EC640: .4byte gUnk_0203AD44
_080EC644: .4byte gUnk_02023530
_080EC648: .4byte gUnk_02020EE0
_080EC64C: .4byte 0x0000065E

	thumb_func_start sub_080EC650
sub_080EC650: @ 0x080EC650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r2, _080EC6B4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC6B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC6BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080EC6C0 @ =0x00002492
	ldr r7, _080EC6C4 @ =gUnk_020229D4
	cmp r2, r0
	blt _080EC698
	adds r3, r0, #0
_080EC686:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bhi _080EC698
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _080EC686
_080EC698:
	adds r0, r1, #0
	adds r0, #0xc1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC6C8
	ldr r1, [r4, #0x40]
	asrs r0, r1, #8
	subs r0, #0x14
	b _080EC6CE
	.align 2, 0
_080EC6B4: .4byte gRngVal
_080EC6B8: .4byte 0x00196225
_080EC6BC: .4byte 0x3C6EF35F
_080EC6C0: .4byte 0x00002492
_080EC6C4: .4byte gUnk_020229D4
_080EC6C8:
	ldr r1, [r4, #0x40]
	asrs r0, r1, #8
	adds r0, #0x14
_080EC6CE:
	str r0, [sp]
	adds r2, r1, #0
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EC6E8
	ldr r1, [r4, #0x44]
	asrs r0, r1, #8
	adds r5, r0, #0
	adds r5, #0x14
	b _080EC6F0
_080EC6E8:
	ldr r1, [r4, #0x44]
	asrs r0, r1, #8
	adds r5, r0, #0
	subs r5, #0x14
_080EC6F0:
	mov r3, r8
	cmp r3, #1
	bne _080EC6FC
	asrs r2, r2, #8
	str r2, [sp]
	asrs r5, r1, #8
_080EC6FC:
	movs r3, #0
	movs r2, #1
	ldr r1, [r7]
	adds r0, r1, #0
	ands r0, r2
	movs r6, #0x56
	adds r6, r6, r4
	mov ip, r6
	b _080EC722
_080EC70E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080EC72A
	movs r2, #1
	lsls r2, r3
	ldr r1, [r7]
	adds r0, r1, #0
	ands r0, r2
_080EC722:
	cmp r0, #0
	bne _080EC70E
	orrs r1, r2
	str r1, [r7]
_080EC72A:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, _080EC7A0 @ =gUnk_020229E0
	adds r1, r1, r0
	movs r2, #0
	movs r7, #1
	strb r7, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r6, sp
	ldrh r6, [r6]
	strh r6, [r1, #6]
	strh r5, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r0, sb
	strb r0, [r1, #0xc]
	mov r6, r8
	strb r6, [r1, #0xe]
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
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r4, [r1, #0x70]
	ldr r0, [r4, #8]
	ands r0, r7
	cmp r0, #0
	beq _080EC78E
	ldr r0, [r1, #8]
	orrs r0, r7
	str r0, [r1, #8]
_080EC78E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EC7A0: .4byte gUnk_020229E0

	thumb_func_start sub_080EC7A4
sub_080EC7A4: @ 0x080EC7A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EC7D8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EC7DC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EC7E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080EC7E8
	.align 2, 0
_080EC7D8: .4byte ObjectMain
_080EC7DC: .4byte ObjectDestroy
_080EC7E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080EC7E8:
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
	ldr r0, _080EC84C @ =sub_0809F840
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
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0xc1
	cmp r0, #6
	bhi _080EC8B8
	lsls r0, r0, #2
	ldr r1, _080EC850 @ =_080EC854
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EC84C: .4byte sub_0809F840
_080EC850: .4byte _080EC854
_080EC854: @ jump table
	.4byte _080EC884 @ case 0
	.4byte _080EC870 @ case 1
	.4byte _080EC870 @ case 2
	.4byte _080EC8A6 @ case 3
	.4byte _080EC898 @ case 4
	.4byte _080EC8A6 @ case 5
	.4byte _080EC8A6 @ case 6
_080EC870:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	b _080EC8B8
_080EC884:
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	b _080EC8B8
_080EC898:
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r5, #0x5c]
_080EC8A6:
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
_080EC8B8:
	adds r0, r5, #0
	bl ObjectInitSprite
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080EC8D8
	adds r0, r5, #0
	bl sub_080EC8E8
	b _080EC8DE
_080EC8D8:
	adds r0, r5, #0
	bl sub_080ED8C4
_080EC8DE:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080EC8E8
sub_080EC8E8: @ 0x080EC8E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	movs r4, #0
	ldr r0, [r0, #0x70]
	mov sb, r0
	adds r0, #0xac
	ldr r5, [r0]
	ldr r2, _080EC938 @ =sub_080ECDE0
	mov r0, r8
	movs r1, #0
	bl ObjectSetFunc
	mov r0, r8
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080EC91C
	b _080ECA94
_080EC91C:
	cmp r0, #0
	beq _080EC948
	ldr r2, _080EC93C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC940 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC944 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #0xff
	ands r4, r0
	b _080EC966
	.align 2, 0
_080EC938: .4byte sub_080ECDE0
_080EC93C: .4byte gRngVal
_080EC940: .4byte 0x00196225
_080EC944: .4byte 0x3C6EF35F
_080EC948:
	ldr r2, [r5, #0x40]
	mov r0, sb
	ldr r1, [r0, #0x40]
	subs r0, r2, r1
	cmp r0, #0
	blt _080EC960
	asrs r4, r0, #8
	ldr r1, _080EC95C @ =gRngVal
	mov ip, r1
	b _080EC968
	.align 2, 0
_080EC95C: .4byte gRngVal
_080EC960:
	subs r0, r1, r2
	asrs r4, r0, #8
	ldr r2, _080EC974 @ =gRngVal
_080EC966:
	mov ip, r2
_080EC968:
	cmp r4, #0x1d
	bhi _080EC978
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x80
	b _080EC9D2
	.align 2, 0
_080EC974: .4byte gRngVal
_080EC978:
	cmp r4, #0x3b
	bhi _080EC984
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xd0
	b _080EC9D2
_080EC984:
	cmp r4, #0x59
	bhi _080EC992
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x90
	lsls r0, r0, #1
	b _080EC9D2
_080EC992:
	cmp r4, #0x77
	bhi _080EC9A0
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080EC9D2
_080EC9A0:
	cmp r4, #0x95
	bhi _080EC9AE
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xe8
	lsls r0, r0, #1
	b _080EC9D2
_080EC9AE:
	cmp r4, #0xb3
	bhi _080EC9BC
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080EC9D2
_080EC9BC:
	cmp r4, #0xd1
	bhi _080EC9CA
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x90
	lsls r0, r0, #2
	b _080EC9D2
_080EC9CA:
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
_080EC9D2:
	strh r0, [r1]
	adds r7, r1, #0
	mov r1, ip
	ldr r0, [r1]
	ldr r6, _080ECA38 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _080ECA3C @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r1]
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsrs r0, r2, #0x10
	movs r4, #0x7f
	ands r0, r4
	adds r1, r1, r0
	strh r1, [r7]
	mov r3, r8
	adds r3, #0x52
	movs r1, #0xe8
	lsls r1, r1, #1
	strh r1, [r3]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	mov r2, ip
	str r0, [r2]
	lsrs r2, r0, #0x10
	ands r2, r4
	adds r1, r2, r1
	strh r1, [r3]
	mov r0, sb
	ldr r1, [r0, #0x44]
	ldr r0, _080ECA40 @ =0x0000F7FF
	cmp r1, r0
	ble _080ECA52
	mov r0, sb
	ldr r1, [r0, #0x40]
	movs r0, #0xfc
	lsls r0, r0, #9
	cmp r1, r0
	bne _080ECA44
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r2, r1
	strh r0, [r3]
	ldrh r0, [r7]
	adds r0, #0x80
	strh r0, [r7]
	b _080ECA66
	.align 2, 0
_080ECA38: .4byte 0x00196225
_080ECA3C: .4byte 0x3C6EF35F
_080ECA40: .4byte 0x0000F7FF
_080ECA44:
	movs r0, #0xa8
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080ECA66
	movs r1, #0x80
	lsls r1, r1, #1
	b _080ECA62
_080ECA52:
	mov r0, sb
	ldr r1, [r0, #0x40]
	movs r0, #0xfc
	lsls r0, r0, #9
	cmp r1, r0
	bne _080ECA66
	movs r1, #0xac
	lsls r1, r1, #2
_080ECA62:
	adds r0, r2, r1
	strh r0, [r3]
_080ECA66:
	mov r2, sb
	ldr r0, [r2, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080ECA82
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r3]
	ldrh r0, [r7]
	adds r0, #0x80
	strh r0, [r7]
_080ECA82:
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ECA94
	ldrh r0, [r7]
	rsbs r0, r0, #0
	strh r0, [r7]
_080ECA94:
	mov r0, r8
	adds r0, #0x82
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0xc7
	bne _080ECAA8
	mov r1, r8
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_080ECAA8:
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r1, _080ECB34 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	ldr r1, _080ECB38 @ =gUnk_02020EE0
	ldr r0, _080ECB3C @ =gUnk_0203AD3C
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
	bne _080ECB22
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080ECAE6
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080ECB22
_080ECAE6:
	ldr r1, _080ECB40 @ =gUnk_08D60FA4
	ldr r4, _080ECB44 @ =gSongTable
	ldr r2, _080ECB48 @ =0x00000C5C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080ECB0A
	ldr r1, _080ECB4C @ =0x00000C58
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080ECB22
_080ECB0A:
	cmp r3, #0
	beq _080ECB1C
	ldr r0, _080ECB50 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080ECB22
_080ECB1C:
	ldr r0, _080ECB54 @ =0x0000018B
	bl m4aSongNumStart
_080ECB22:
	ldrb r0, [r5]
	subs r0, #0xc1
	cmp r0, #6
	bhi _080ECB9C
	lsls r0, r0, #2
	ldr r1, _080ECB58 @ =_080ECB5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080ECB34: .4byte 0xFFFFFDFF
_080ECB38: .4byte gUnk_02020EE0
_080ECB3C: .4byte gUnk_0203AD3C
_080ECB40: .4byte gUnk_08D60FA4
_080ECB44: .4byte gSongTable
_080ECB48: .4byte 0x00000C5C
_080ECB4C: .4byte 0x00000C58
_080ECB50: .4byte gUnk_0203AD10
_080ECB54: .4byte 0x0000018B
_080ECB58: .4byte _080ECB5C
_080ECB5C: @ jump table
	.4byte _080ECB9C @ case 0
	.4byte _080ECB78 @ case 1
	.4byte _080ECB78 @ case 2
	.4byte _080ECB8A @ case 3
	.4byte _080ECB9C @ case 4
	.4byte _080ECB84 @ case 5
	.4byte _080ECB9C @ case 6
_080ECB78:
	ldr r0, _080ECB80 @ =sub_080ECCAC
	mov r2, r8
	b _080ECB9A
	.align 2, 0
_080ECB80: .4byte sub_080ECCAC
_080ECB84:
	movs r0, #0
	movs r1, #0x91
	b _080ECB8E
_080ECB8A:
	movs r0, #0
	movs r1, #0x5a
_080ECB8E:
	mov r2, r8
	strh r1, [r2, #4]
	mov r1, r8
	adds r1, #0x9e
	strb r0, [r1]
	ldr r0, _080ECBA8 @ =sub_080ECBAC
_080ECB9A:
	str r0, [r2, #0x78]
_080ECB9C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ECBA8: .4byte sub_080ECBAC

	thumb_func_start sub_080ECBAC
sub_080ECBAC: @ 0x080ECBAC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #0
	bne _080ECBC2
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080ECBC2:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080ECC46
	ldrb r0, [r2]
	cmp r0, #3
	beq _080ECC3A
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	bne _080ECBE4
	movs r0, #1
	b _080ECBE6
_080ECBE4:
	movs r0, #0
_080ECBE6:
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	beq _080ECC0E
	cmp r1, #1
	bgt _080ECBFE
	cmp r1, #0
	beq _080ECC04
	b _080ECC1E
_080ECBFE:
	cmp r1, #2
	beq _080ECC16
	b _080ECC1E
_080ECC04:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #1
	b _080ECC1C
_080ECC0E:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	b _080ECC1C
_080ECC16:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
_080ECC1C:
	strh r0, [r1]
_080ECC1E:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _080ECC46
_080ECC3A:
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
_080ECC46:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ECC62
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080ECC62:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc4
	bne _080ECC84
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ECCA6
	movs r2, #0xa
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
	b _080ECCA6
_080ECC84:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ECCA6
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_08097E9C
_080ECCA6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ECCAC
sub_080ECCAC: @ 0x080ECCAC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080ECCC2
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_080ECCC2:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080ECCD2
	b _080ECDDC
_080ECCD2:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080ECCDC
	movs r0, #1
	b _080ECCDE
_080ECCDC:
	movs r0, #0
_080ECCDE:
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc2
	bne _080ECD8E
	ldr r2, _080ECD10 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ECD14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ECD18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	cmp r1, #1
	beq _080ECD30
	cmp r1, #1
	blo _080ECD1C
	cmp r1, #2
	beq _080ECD42
	cmp r1, #3
	beq _080ECD56
	b _080ECD6A
	.align 2, 0
_080ECD10: .4byte gRngVal
_080ECD14: .4byte 0x00196225
_080ECD18: .4byte 0x3C6EF35F
_080ECD1C:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xe8
	lsls r0, r0, #1
	b _080ECD68
_080ECD30:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xb4
	lsls r0, r0, #2
	b _080ECD68
_080ECD42:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080ECD68
_080ECD56:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x98
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #1
_080ECD68:
	strh r0, [r1]
_080ECD6A:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ECD7E
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080ECD7E:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080ECDD4
	b _080ECDB8
_080ECD8E:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080ECDAA
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080ECDCA
	b _080ECDB8
_080ECDAA:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080ECDCA
_080ECDB8:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_0809DA30
	b _080ECDDC
_080ECDCA:
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0x88
	lsls r0, r0, #2
	strh r0, [r1]
_080ECDD4:
	ldr r0, [r3, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3, #8]
_080ECDDC:
	pop {r0}
	bx r0

	thumb_func_start sub_080ECDE0
sub_080ECDE0: @ 0x080ECDE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc7
	bne _080ECE0E
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080ECE0E
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
	str r2, [r4, #8]
	b _080ECE80
_080ECE0E:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080ECEB8
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc7
	beq _080ECE88
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080ECE6E
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xc1
	bne _080ECE4A
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080ECE52
_080ECE4A:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #1
_080ECE52:
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
	b _080ECEB8
_080ECE6E:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080ECE80:
	adds r0, r4, #0
	bl sub_0809DA30
	b _080ECEB8
_080ECE88:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ECE9C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080ECEA4
_080ECE9C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080ECEA4:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ECEB8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080ECEB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ECEC0
sub_080ECEC0: @ 0x080ECEC0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080ECEF0 @ =sub_080ECF6C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080ECEF4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ECEF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080ECF00
	.align 2, 0
_080ECEF0: .4byte sub_080ECF6C
_080ECEF4: .4byte sub_0803DCCC
_080ECEF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080ECF00:
	adds r0, r4, #0
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
	ldr r0, [r4, #0x38]
	ldr r1, _080ECF64 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080ECF38
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_080ECF38:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080ECF68 @ =0x06012000
	movs r3, #0xd0
	lsls r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ECF64: .4byte 0xFFFFF000
_080ECF68: .4byte 0x06012000

	thumb_func_start sub_080ECF6C
sub_080ECF6C: @ 0x080ECF6C
	push {r4, r5, r6, lr}
	ldr r2, _080ECF8C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080ECF90
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ECF98
	.align 2, 0
_080ECF8C: .4byte gCurTask
_080ECF90:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ECF98:
	adds r3, r0, #0
	ldrh r4, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _080ECFB0
	ldr r0, [r5]
	bl TaskDestroy
	b _080ED072
_080ECFB0:
	ldr r1, [r3, #0x44]
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080ECFC2
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3, #6]
	b _080ED072
_080ECFC2:
	cmp r1, #0
	beq _080ECFF4
	ldr r0, _080ECFF0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080ED064
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	cmp r0, #0
	bne _080ED064
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080ED072
	.align 2, 0
_080ECFF0: .4byte gUnk_03000510
_080ECFF4:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080ED05C @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080ED036
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080ED036
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080ED036
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080ED036
	movs r4, #4
_080ED036:
	ldr r0, _080ED060 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080ED064
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080ED064
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080ED072
	.align 2, 0
_080ED05C: .4byte gUnk_02020EE0
_080ED060: .4byte gUnk_03000510
_080ED064:
	ldrh r1, [r3, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r3, #6]
	adds r0, r3, #0
	bl sub_0806FAC8
_080ED072:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ED078
sub_080ED078: @ 0x080ED078
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080ED0A8 @ =sub_080ED270
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080ED0AC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ED0B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ED0B8
	.align 2, 0
_080ED0A8: .4byte sub_080ED270
_080ED0AC: .4byte sub_0803DCCC
_080ED0B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ED0B8:
	adds r5, r0, #0
	bl sub_0803E380
	movs r3, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r3, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080ED130 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080ED106
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080ED106:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080ED13C
	ldr r0, [r5, #0x44]
	ldr r1, _080ED134 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldr r7, _080ED138 @ =gRngVal
	b _080ED166
	.align 2, 0
_080ED130: .4byte gUnk_03000510
_080ED134: .4byte 0xFFFFF800
_080ED138: .4byte gRngVal
_080ED13C:
	ldr r0, [r5, #0x44]
	movs r1, #0xb0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, _080ED1B4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED1B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED1BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	adds r7, r2, #0
_080ED166:
	ldr r0, [r7]
	ldr r4, _080ED1B8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _080ED1BC @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r7]
	lsrs r0, r2, #0x10
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x20
	adds r6, r5, #0
	adds r6, #0x50
	strh r0, [r6]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	lsrs r2, r0, #0x10
	movs r1, #0xf
	ands r2, r1
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED1C0
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	lsls r1, r2, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
	b _080ED1C8
	.align 2, 0
_080ED1B4: .4byte gRngVal
_080ED1B8: .4byte 0x00196225
_080ED1BC: .4byte 0x3C6EF35F
_080ED1C0:
	lsls r1, r2, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080ED1C8:
	ldr r1, [r7]
	ldr r0, _080ED1F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED1F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080ED200
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080ED1FC @ =0x00000342
	movs r4, #0
	str r4, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #4
	b _080ED210
	.align 2, 0
_080ED1F4: .4byte 0x00196225
_080ED1F8: .4byte 0x3C6EF35F
_080ED1FC: .4byte 0x00000342
_080ED200:
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080ED258 @ =0x00000342
	str r4, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #1
_080ED210:
	bl sub_080708DC
	strh r4, [r5, #4]
	adds r4, r5, #0
	adds r4, #0x2f
	movs r3, #0
	strb r3, [r4]
	ldr r2, _080ED25C @ =gUnk_02020EE0
	ldr r0, _080ED260 @ =gUnk_0203AD3C
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
	bne _080ED264
	ldr r5, _080ED258 @ =0x00000342
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080ED266
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080ED266
	.align 2, 0
_080ED258: .4byte 0x00000342
_080ED25C: .4byte gUnk_02020EE0
_080ED260: .4byte gUnk_0203AD3C
_080ED264:
	strb r3, [r4]
_080ED266:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED270
sub_080ED270: @ 0x080ED270
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r2, _080ED290 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ED294
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ED29C
	.align 2, 0
_080ED290: .4byte gCurTask
_080ED294:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ED29C:
	adds r5, r0, #0
	ldr r3, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080ED2B4
	ldr r0, [r2]
	bl TaskDestroy
	b _080ED514
_080ED2B4:
	ldr r0, [r5, #0x70]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _080ED2C4
	orrs r3, r1
	str r3, [r5, #8]
	b _080ED514
_080ED2C4:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080ED31A
	ldr r2, _080ED308 @ =gUnk_02020EE0
	ldr r0, _080ED30C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080ED3CC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080ED310
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #1
	b _080ED352
	.align 2, 0
_080ED308: .4byte gUnk_02020EE0
_080ED30C: .4byte gUnk_0203AD3C
_080ED310:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	movs r0, #1
	b _080ED39C
_080ED31A:
	ldr r2, _080ED384 @ =gUnk_02020EE0
	ldr r0, _080ED388 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080ED3CC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080ED394
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #4
_080ED352:
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080ED38C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080ED390 @ =0x0400000A
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
	b _080ED3EC
	.align 2, 0
_080ED384: .4byte gUnk_02020EE0
_080ED388: .4byte gUnk_0203AD3C
_080ED38C: .4byte 0xFFF7FFFF
_080ED390: .4byte 0x0400000A
_080ED394:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	movs r0, #4
_080ED39C:
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080ED3C4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080ED3C8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080ED3EC
	.align 2, 0
_080ED3C4: .4byte 0xFFF7FFFF
_080ED3C8: .4byte 0x0400000A
_080ED3CC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080ED3E2
	movs r4, #0x80
	lsls r4, r4, #7
	ands r4, r3
	cmp r4, #0
	bne _080ED3E2
	bl sub_08157190
	str r4, [r5, #0x10]
_080ED3E2:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080ED3EC:
	ldr r2, _080ED42C @ =gUnk_02020EE0
	ldr r0, _080ED430 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080ED438
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080ED440
	ldr r6, _080ED434 @ =0x00000342
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080ED440
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080ED440
	.align 2, 0
_080ED42C: .4byte gUnk_02020EE0
_080ED430: .4byte gUnk_0203AD3C
_080ED434: .4byte 0x00000342
_080ED438:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080ED440:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED514
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x15
	strh r0, [r1]
	lsls r0, r0, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r4, r1, #0
	cmp r0, r2
	bge _080ED470
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4]
_080ED470:
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	bne _080ED498
	ldr r1, [r5, #0x40]
	str r1, [r5, #0x48]
	ldr r2, [r5, #0x44]
	str r2, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x50
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	str r2, [r5, #0x44]
_080ED498:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	bne _080ED4EA
	ldr r2, _080ED51C @ =gUnk_02023530
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r5, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080ED4EA
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080ED4EA
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r5, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080ED4EA
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080ED4EA
	adds r0, r5, #0
	bl sub_0806FC70
_080ED4EA:
	adds r1, r5, #0
	adds r1, #0x62
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ED50E
	movs r0, #0
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r4]
	subs r1, #0x12
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	ldr r0, [r5, #8]
	orrs r0, r2
	str r0, [r5, #8]
_080ED50E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080ED514:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ED51C: .4byte gUnk_02023530

	thumb_func_start sub_080ED520
sub_080ED520: @ 0x080ED520
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED548 @ =sub_080EB2C0
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
_080ED548: .4byte sub_080EB2C0

	thumb_func_start sub_080ED54C
sub_080ED54C: @ 0x080ED54C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED574 @ =sub_080EB39C
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #0xd2
	strh r0, [r4, #4]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED574: .4byte sub_080EB39C

	thumb_func_start sub_080ED578
sub_080ED578: @ 0x080ED578
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED5A4 @ =sub_080ED5AC
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED5A8 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED5A4: .4byte sub_080ED5AC
_080ED5A8: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED5AC
sub_080ED5AC: @ 0x080ED5AC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED5C0
	adds r0, r2, #0
	bl sub_080ED5C4
_080ED5C0:
	pop {r0}
	bx r0

	thumb_func_start sub_080ED5C4
sub_080ED5C4: @ 0x080ED5C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED5F4 @ =sub_080EB4B8
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED5F8 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED5F4: .4byte sub_080EB4B8
_080ED5F8: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED5FC
sub_080ED5FC: @ 0x080ED5FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _080ED63A
	adds r0, r4, #0
	bl sub_080EB700
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_080ED078
	ldr r2, _080ED670 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED674 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED678 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED63A
	adds r0, r4, #0
	bl sub_080ED078
_080ED63A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED66A
	ldr r2, _080ED670 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED674 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED678 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED664
	adds r0, r4, #0
	bl sub_080ED078
_080ED664:
	adds r0, r4, #0
	bl sub_080EB848
_080ED66A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED670: .4byte gRngVal
_080ED674: .4byte 0x00196225
_080ED678: .4byte 0x3C6EF35F

	thumb_func_start sub_080ED67C
sub_080ED67C: @ 0x080ED67C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED6CA
	ldr r2, _080ED6B8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED6BC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED6C0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080ED6AE
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080ED6C4
_080ED6AE:
	adds r0, r3, #0
	bl sub_080EC040
	b _080ED6CA
	.align 2, 0
_080ED6B8: .4byte gRngVal
_080ED6BC: .4byte 0x00196225
_080ED6C0: .4byte 0x3C6EF35F
_080ED6C4:
	adds r0, r3, #0
	bl sub_080EBCDC
_080ED6CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED6D0
sub_080ED6D0: @ 0x080ED6D0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED6FE
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED6FE
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080EC1F4
_080ED6FE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED704
sub_080ED704: @ 0x080ED704
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED740 @ =sub_080ED748
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED744 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #6
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xb6
	strh r2, [r0]
	subs r0, #1
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED740: .4byte sub_080ED748
_080ED744: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED748
sub_080ED748: @ 0x080ED748
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED776
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED776
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080EC3B8
_080ED776:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED77C
sub_080ED77C: @ 0x080ED77C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080EC5B4
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #5
	beq _080ED794
	cmp r0, #6
	beq _080ED7AC
	b _080ED7D2
_080ED794:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED7D2
	movs r0, #6
	strb r0, [r2]
	ldr r0, [r4, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #8]
	b _080ED7D2
_080ED7AC:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED7D2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080ED7D2
	adds r0, r4, #0
	bl sub_080ED7D8
_080ED7D2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ED7D8
sub_080ED7D8: @ 0x080ED7D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED81C @ =sub_080ED828
	movs r1, #3
	bl ObjectSetFunc
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0xf8
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r1, _080ED820 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	ldr r1, _080ED824 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED81C: .4byte sub_080ED828
_080ED820: .4byte 0xFFFFF7FF
_080ED824: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED828
sub_080ED828: @ 0x080ED828
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080EC5B4
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #3
	beq _080ED840
	cmp r0, #4
	beq _080ED858
	b _080ED876
_080ED840:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED876
	movs r0, #4
	strb r0, [r2]
	ldr r0, [r4, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #8]
	b _080ED876
_080ED858:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED876
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _080ED876
	adds r0, r4, #0
	bl sub_080ED87C
_080ED876:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ED87C
sub_080ED87C: @ 0x080ED87C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080ED8B0 @ =sub_080ED8B8
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r5, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED8B4 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080ECEC0
	strh r5, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ED8B0: .4byte sub_080ED8B8
_080ED8B4: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED8B8
sub_080ED8B8: @ 0x080ED8B8
	push {lr}
	bl sub_080EC5B4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED8C4
sub_080ED8C4: @ 0x080ED8C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED8EC @ =sub_080ED8F0
	movs r1, #1
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
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED8EC: .4byte sub_080ED8F0

	thumb_func_start sub_080ED8F0
sub_080ED8F0: @ 0x080ED8F0
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x70]
	ldrb r0, [r2, #1]
	cmp r0, #3
	bne _080ED938
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED90E
	ldr r0, [r2, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #4
	b _080ED912
_080ED90E:
	ldr r0, [r2, #0x40]
	ldr r1, _080ED92C @ =0xFFFFF600
_080ED912:
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080ED930
	ldr r0, [r2, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	b _080ED934
	.align 2, 0
_080ED92C: .4byte 0xFFFFF600
_080ED930:
	ldr r0, [r2, #0x44]
	ldr r1, _080ED94C @ =0xFFFFFC00
_080ED934:
	adds r0, r0, r1
	str r0, [r2, #0x44]
_080ED938:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED948
	adds r0, r2, #0
	bl sub_080EC8E8
_080ED948:
	pop {r0}
	bx r0
	.align 2, 0
_080ED94C: .4byte 0xFFFFFC00

	thumb_func_start CreateMegaTitan
CreateMegaTitan: @ 0x080ED950
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080ED984 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080ED988 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ED98C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ED994
	.align 2, 0
_080ED984: .4byte ObjectMain
_080ED988: .4byte ObjectDestroy
_080ED98C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ED994:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080ED9DC @ =0xFBFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080ED9E0
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080ED9E8
	.align 2, 0
_080ED9DC: .4byte 0xFBFFFFFF
_080ED9E0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080ED9E8:
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080EDAB4 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r1, #4
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xe8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080EDAB8 @ =sub_080F4190
	str r0, [r4, #0x7c]
	ldr r2, _080EDABC @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080EDAC0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080EDAC4 @ =gUnk_02020EE0
	ldr r0, _080EDAC8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EDAA4
	ldr r0, _080EDACC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080EDAA4
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080EDAA4:
	adds r0, r4, #0
	bl sub_080F5640
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EDAB4: .4byte 0x001080A0
_080EDAB8: .4byte sub_080F4190
_080EDABC: .4byte gUnk_02023530
_080EDAC0: .4byte 0x0000065E
_080EDAC4: .4byte gUnk_02020EE0
_080EDAC8: .4byte gUnk_0203AD3C
_080EDACC: .4byte gUnk_0203AD20

	thumb_func_start sub_080EDAD0
sub_080EDAD0: @ 0x080EDAD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r7, [r0]
	ldr r0, [r6, #8]
	movs r1, #4
	mov r8, r1
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080EDB00
	b _080EDC6C
_080EDB00:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r7, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080EDB14
	b _080EDC6C
_080EDB14:
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r5, r6, #0
	adds r5, #0xb0
	ldr r4, [r5]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov ip, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	adds r7, r5, #0
	cmp r0, #0
	bne _080EDB44
	b _080EDC6C
_080EDB44:
	adds r1, r6, #0
	adds r1, #0xa4
	movs r4, #0
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xee
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x98
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x9f
	strb r4, [r0]
	adds r0, r6, #0
	bl sub_080EDC94
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080EDB7A
	strb r4, [r0, #9]
_080EDB7A:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r4, [r0]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080EDC7C @ =gUnk_02023530
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080EDC80 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080EDC44
	ldr r0, _080EDC84 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080EDC44
	ldr r0, [r7]
	ldrh r1, [r0, #0x22]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080EDC44
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r3
	cmp r0, #0xf
	bls _080EDC00
	movs r4, #1
_080EDBC8:
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
	bls _080EDBC8
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080EDC00:
	ldr r1, _080EDC84 @ =gUnk_08352D80
	mov r2, r8
	asrs r0, r2, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080EDC88 @ =gUnk_02020EE0
	ldr r0, _080EDC8C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, sb
	ldrh r3, [r3]
	cmp r0, r3
	bne _080EDC44
	ldr r0, _080EDC90 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080EDC44
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080EDC44:
	ldr r0, [r7]
	ldrb r1, [r0, #0x10]
	adds r0, r6, #0
	bl sub_080EF010
	ldr r0, [r7]
	ldrb r1, [r0, #0x10]
	adds r0, r6, #0
	bl sub_080F1FD8
	ldr r0, [r7]
	ldrb r1, [r0, #0x10]
	adds r0, r6, #0
	bl sub_080F1400
	ldr r0, [r7]
	ldrb r1, [r0, #0x10]
	adds r0, r6, #0
	bl sub_080F2BDC
_080EDC6C:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EDC7C: .4byte gUnk_02023530
_080EDC80: .4byte 0x0000065E
_080EDC84: .4byte gUnk_08352D80
_080EDC88: .4byte gUnk_02020EE0
_080EDC8C: .4byte gUnk_0203AD3C
_080EDC90: .4byte gUnk_0203AD20

	thumb_func_start sub_080EDC94
sub_080EDC94: @ 0x080EDC94
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
	bgt _080EDCBE
	adds r0, r4, #0
	bl sub_080EEC24
	b _080EDCF6
_080EDCBE:
	ldr r2, _080EDD00 @ =sub_080EDD0C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _080EDD04 @ =0xFBFFFFFF
	ands r0, r1
	ldr r1, _080EDD08 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r4, #4]
	mov r0, r8
	strb r0, [r7]
	strb r5, [r6]
	cmp r5, #0
	bne _080EDCF6
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_080EDCF6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EDD00: .4byte sub_080EDD0C
_080EDD04: .4byte 0xFBFFFFFF
_080EDD08: .4byte 0xFFFFFDFF

	thumb_func_start sub_080EDD0C
sub_080EDD0C: @ 0x080EDD0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EDDA8
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
	ldr r6, _080EDD60 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EDD64
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
	b _080EDE28
	.align 2, 0
_080EDD60: .4byte 0xFFFFF800
_080EDD64:
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
	bgt _080EDE2C
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
	ldr r2, _080EDDA4 @ =0xFFFFF800
	adds r0, r0, r2
	b _080EDE28
	.align 2, 0
_080EDDA4: .4byte 0xFFFFF800
_080EDDA8:
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
	bgt _080EDDEC
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
	ldr r2, _080EDDE8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080EDE28
	.align 2, 0
_080EDDE8: .4byte 0xFFFFF800
_080EDDEC:
	movs r3, #0x3e
	adds r3, r3, r4
	mov ip, r3
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ldr r2, _080EDE70 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080EDE2C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	ldrsh r1, [r3, r5]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080EDE28:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080EDE2C:
	adds r5, r4, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x44]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xaa
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080EDE70 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EDE74
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
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
	subs r1, r1, r0
	str r1, [r4, #0x44]
	b _080EDE9E
	.align 2, 0
_080EDE70: .4byte 0xFFFFF800
_080EDE74:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r0, #0x69
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	cmp r1, r0
	bgt _080EDE9E
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_080EDE9E:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #2
	beq _080EDEAE
	cmp r1, #0
	bne _080EDEB6
_080EDEAE:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080EDEB6:
	mov r0, r8
	adds r0, #0xc4
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080EDF90
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080EDED8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080EDEE0
_080EDED8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EDEE0:
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EDFAC
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EDF40 @ =gUnk_08351530
	ldr r0, _080EDF44 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x98
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080EDF54
	ldr r3, _080EDF48 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _080EDF4C @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080EDF50 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EDF3A
	adds r0, r2, #0
	muls r0, r5, r0
	ldr r2, _080EDF50 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, #1
	strb r0, [r6]
_080EDF3A:
	movs r0, #0xb4
	strh r0, [r4, #4]
	b _080EDFAC
	.align 2, 0
_080EDF40: .4byte gUnk_08351530
_080EDF44: .4byte gUnk_0203AD30
_080EDF48: .4byte gRngVal
_080EDF4C: .4byte 0x00196225
_080EDF50: .4byte 0x3C6EF35F
_080EDF54:
	ldr r2, _080EDF84 @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080EDF88 @ =0x00196225
	muls r0, r5, r0
	ldr r3, _080EDF8C @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080EDF7E
	adds r0, r1, #0
	muls r0, r5, r0
	ldr r5, _080EDF8C @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	adds r0, #1
	strb r0, [r6]
_080EDF7E:
	movs r0, #0xf0
	strh r0, [r4, #4]
	b _080EDFAC
	.align 2, 0
_080EDF84: .4byte gRngVal
_080EDF88: .4byte 0x00196225
_080EDF8C: .4byte 0x3C6EF35F
_080EDF90:
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080EDFA2
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080EDFAA
_080EDFA2:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EDFAA:
	str r0, [r4, #8]
_080EDFAC:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080EE01C
	subs r0, #0x18
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080EDFE2
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EDFFC @ =gUnk_08351530
	ldr r0, _080EE000 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x98
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EE004
_080EDFE2:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x80
	ble _080EE07C
	movs r0, #0x80
	strh r0, [r1]
	b _080EE07C
	.align 2, 0
_080EDFFC: .4byte gUnk_08351530
_080EE000: .4byte gUnk_0203AD30
_080EE004:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _080EE07C
	movs r0, #0x50
	strh r0, [r1]
	b _080EE07C
_080EE01C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080EE048
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EE05C @ =gUnk_08351530
	ldr r0, _080EE060 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x98
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EE064
_080EE048:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	rsbs r2, r2, #0
	b _080EE076
	.align 2, 0
_080EE05C: .4byte gUnk_08351530
_080EE060: .4byte gUnk_0203AD30
_080EE064:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x50
	rsbs r2, r2, #0
_080EE076:
	cmp r0, r2
	bge _080EE07C
	strh r2, [r1]
_080EE07C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080EE0A8
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080EE0A0 @ =0xFEA00000
	cmp r0, r1
	bge _080EE0C0
	ldr r0, _080EE0A4 @ =0x0000FEA0
	strh r0, [r2]
	b _080EE0C0
	.align 2, 0
_080EE0A0: .4byte 0xFEA00000
_080EE0A4: .4byte 0x0000FEA0
_080EE0A8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #6
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080EE0C0
	strh r2, [r1]
_080EE0C0:
	ldrb r5, [r3]
	cmp r5, #0
	bne _080EE0E6
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EE110 @ =gUnk_08351530
	ldr r0, _080EE114 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x98
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EE11C
_080EE0E6:
	ldr r1, [r4, #0x40]
	ldr r0, _080EE118 @ =0x000043FF
	cmp r1, r0
	bgt _080EE0FE
	movs r0, #1
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080EE0FE:
	ldr r1, [r4, #0x40]
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	ble _080EE14C
	movs r0, #0
	strb r0, [r6]
	b _080EE140
	.align 2, 0
_080EE110: .4byte gUnk_08351530
_080EE114: .4byte gUnk_0203AD30
_080EE118: .4byte 0x000043FF
_080EE11C:
	ldr r1, [r4, #0x40]
	ldr r0, _080EE220 @ =0x00003BFF
	cmp r1, r0
	bgt _080EE134
	movs r0, #1
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080EE134:
	ldr r1, [r4, #0x40]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _080EE14C
	strb r5, [r6]
_080EE140:
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080EE14C:
	ldr r1, [r4, #0x44]
	ldr r0, _080EE224 @ =0x000037FF
	cmp r1, r0
	bgt _080EE16E
	ldrb r0, [r7]
	cmp r0, #2
	bne _080EE16E
	movs r0, #1
	mov r5, r8
	strb r0, [r5]
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080EE16E:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _080EE1FC
	ldrb r0, [r7]
	cmp r0, #0
	bne _080EE1FC
	mov r6, r8
	strb r0, [r6]
	movs r0, #1
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080EE228 @ =gUnk_02020EE0
	ldr r0, _080EE22C @ =gUnk_0203AD3C
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
	bne _080EE1FC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EE1BC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EE1FC
_080EE1BC:
	ldr r1, _080EE230 @ =gUnk_08D60FA4
	ldr r5, _080EE234 @ =gSongTable
	ldr r2, _080EE238 @ =0x00000C64
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EE1E2
	movs r6, #0xc6
	lsls r6, r6, #4
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EE1FC
_080EE1E2:
	cmp r3, #0
	beq _080EE1F4
	ldr r0, _080EE23C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EE1FC
_080EE1F4:
	movs r0, #0xc6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EE1FC:
	adds r2, r7, #0
	ldrb r0, [r2]
	cmp r0, #1
	bne _080EE240
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EE25A
	strb r1, [r2]
	ldr r0, [r4, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080F37B0
	b _080EE25A
	.align 2, 0
_080EE220: .4byte 0x00003BFF
_080EE224: .4byte 0x000037FF
_080EE228: .4byte gUnk_02020EE0
_080EE22C: .4byte gUnk_0203AD3C
_080EE230: .4byte gUnk_08D60FA4
_080EE234: .4byte gSongTable
_080EE238: .4byte 0x00000C64
_080EE23C: .4byte gUnk_0203AD10
_080EE240:
	cmp r0, #3
	bne _080EE25A
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EE25A
	movs r0, #0
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #8]
_080EE25A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EE264
sub_080EE264: @ 0x080EE264
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r6, [r5]
	ldr r2, _080EE334 @ =sub_080EE358
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x46
	strh r1, [r0]
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0x3c
	movs r3, #0x11
	bl sub_080F3974
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EE2B0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
_080EE2B0:
	movs r0, #0x24
	strh r0, [r4, #4]
	strb r6, [r5]
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080EE338 @ =gUnk_02020EE0
	ldr r0, _080EE33C @ =gUnk_0203AD3C
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
	bne _080EE326
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EE2EA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EE326
_080EE2EA:
	ldr r1, _080EE340 @ =gUnk_08D60FA4
	ldr r5, _080EE344 @ =gSongTable
	ldr r2, _080EE348 @ =0x00000C7C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EE30E
	ldr r1, _080EE34C @ =0x00000C78
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EE326
_080EE30E:
	cmp r3, #0
	beq _080EE320
	ldr r0, _080EE350 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EE326
_080EE320:
	ldr r0, _080EE354 @ =0x0000018F
	bl m4aSongNumStart
_080EE326:
	adds r0, r4, #0
	bl sub_0809E79C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EE334: .4byte sub_080EE358
_080EE338: .4byte gUnk_02020EE0
_080EE33C: .4byte gUnk_0203AD3C
_080EE340: .4byte gUnk_08D60FA4
_080EE344: .4byte gSongTable
_080EE348: .4byte 0x00000C7C
_080EE34C: .4byte 0x00000C78
_080EE350: .4byte gUnk_0203AD10
_080EE354: .4byte 0x0000018F

	thumb_func_start sub_080EE358
sub_080EE358: @ 0x080EE358
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EE3F4
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
	ldr r6, _080EE3AC @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EE3B0
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
	b _080EE474
	.align 2, 0
_080EE3AC: .4byte 0xFFFFF800
_080EE3B0:
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
	bgt _080EE478
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
	ldr r3, _080EE3F0 @ =0xFFFFF800
	adds r0, r0, r3
	b _080EE474
	.align 2, 0
_080EE3F0: .4byte 0xFFFFF800
_080EE3F4:
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
	bgt _080EE438
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
	ldr r3, _080EE434 @ =0xFFFFF800
	adds r0, r0, r3
	b _080EE474
	.align 2, 0
_080EE434: .4byte 0xFFFFF800
_080EE438:
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
	ldr r3, _080EE4BC @ =0xFFFFF800
	adds r0, r0, r3
	cmp r1, r0
	blt _080EE478
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
_080EE474:
	subs r1, r1, r0
	str r1, [r2, #0x40]
_080EE478:
	adds r5, r2, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x44]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xaa
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080EE4BC @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EE4C0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
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
	subs r1, r1, r0
	str r1, [r2, #0x44]
	b _080EE4EA
	.align 2, 0
_080EE4BC: .4byte 0xFFFFF800
_080EE4C0:
	adds r0, r2, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	cmp r1, r0
	bgt _080EE4EA
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	orrs r0, r1
	strb r0, [r3]
_080EE4EA:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EE50C
	adds r0, r2, #0
	bl sub_080EE514
_080EE50C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EE514
sub_080EE514: @ 0x080EE514
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r6, [r5]
	ldr r2, _080EE570 @ =sub_080EE588
	movs r1, #4
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x90
	lsls r0, r0, #6
	cmp r1, r0
	bgt _080EE53A
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xf8
	lsls r0, r0, #1
	strh r0, [r1]
_080EE53A:
	ldr r1, [r4, #0x40]
	ldr r0, _080EE574 @ =0x0000DFFF
	cmp r1, r0
	ble _080EE54A
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080EE578 @ =0x0000FE10
	strh r0, [r1]
_080EE54A:
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x46
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080EE57C
	adds r0, r4, #0
	bl sub_080EEC24
	b _080EE582
	.align 2, 0
_080EE570: .4byte sub_080EE588
_080EE574: .4byte 0x0000DFFF
_080EE578: .4byte 0x0000FE10
_080EE57C:
	movs r0, #4
	strh r0, [r4, #4]
	strb r6, [r5]
_080EE582:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080EE588
sub_080EE588: @ 0x080EE588
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EE620
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
	ldr r6, _080EE5D8 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EE5DC
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
	b _080EE6A0
	.align 2, 0
_080EE5D8: .4byte 0xFFFFF800
_080EE5DC:
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
	bgt _080EE6A4
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
	ldr r3, _080EE61C @ =0xFFFFF800
	adds r0, r0, r3
	b _080EE6A0
	.align 2, 0
_080EE61C: .4byte 0xFFFFF800
_080EE620:
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
	bgt _080EE664
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
	ldr r3, _080EE660 @ =0xFFFFF800
	adds r0, r0, r3
	b _080EE6A0
	.align 2, 0
_080EE660: .4byte 0xFFFFF800
_080EE664:
	movs r4, #0x3e
	adds r4, r4, r2
	mov ip, r4
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #8
	ldr r3, _080EE6E8 @ =0xFFFFF800
	adds r0, r0, r3
	cmp r1, r0
	blt _080EE6A4
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
_080EE6A0:
	subs r1, r1, r0
	str r1, [r2, #0x40]
_080EE6A4:
	adds r5, r2, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x44]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xaa
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080EE6E8 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EE6EC
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
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
	subs r1, r1, r0
	str r1, [r2, #0x44]
	b _080EE716
	.align 2, 0
_080EE6E8: .4byte 0xFFFFF800
_080EE6EC:
	adds r0, r2, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r0, #0x69
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080EE716
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	orrs r0, r1
	strb r0, [r3]
_080EE716:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EE744
	adds r0, r3, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EE752
	b _080EE74E
_080EE744:
	subs r0, r3, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EE752
_080EE74E:
	movs r0, #0
	strh r0, [r1]
_080EE752:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EE764
	adds r0, r2, #0
	bl sub_080F566C
_080EE764:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EE76C
sub_080EE76C: @ 0x080EE76C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EE800
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
	ldr r7, _080EE7B8 @ =0xFFFFF800
	adds r0, r0, r7
	cmp r1, r0
	blt _080EE7BC
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
	movs r3, #0x80
	lsls r3, r3, #4
	b _080EE83C
	.align 2, 0
_080EE7B8: .4byte 0xFFFFF800
_080EE7BC:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r5, #0
	adds r2, #0xa4
	movs r6, #0
	ldrsh r0, [r2, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	adds r3, r5, #0
	adds r3, #0x62
	cmp r1, r0
	bgt _080EE888
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080EE7FC @ =0xFFFFF800
	adds r0, r0, r2
	b _080EE884
	.align 2, 0
_080EE7FC: .4byte 0xFFFFF800
_080EE800:
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
	bgt _080EE84C
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r7, #0
	ldrsh r1, [r3, r7]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r3, _080EE848 @ =0xFFFFF800
_080EE83C:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r5, #0x40]
	adds r3, r2, #0
	b _080EE888
	.align 2, 0
_080EE848: .4byte 0xFFFFF800
_080EE84C:
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r5, #0
	adds r2, #0xa8
	movs r7, #0
	ldrsh r0, [r2, r7]
	lsls r0, r0, #8
	ldr r3, _080EE8C8 @ =0xFFFFF800
	adds r0, r0, r3
	adds r3, r5, #0
	adds r3, #0x62
	cmp r1, r0
	blt _080EE888
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r7, #0
	ldrsh r1, [r2, r7]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080EE884:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080EE888:
	adds r6, r5, #0
	adds r6, #0x3f
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x44]
	adds r1, r2, r1
	adds r4, r5, #0
	adds r4, #0xaa
	movs r7, #0
	ldrsh r0, [r4, r7]
	lsls r0, r0, #8
	ldr r7, _080EE8C8 @ =0xFFFFF800
	adds r0, r0, r7
	cmp r1, r0
	blt _080EE8CC
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	subs r1, r1, r0
	str r1, [r5, #0x44]
	b _080EE8F2
	.align 2, 0
_080EE8C8: .4byte 0xFFFFF800
_080EE8CC:
	adds r0, r5, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _080EE8F2
	ldrb r1, [r3]
	movs r0, #8
	orrs r0, r1
	strb r0, [r3]
_080EE8F2:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x40
	movs r7, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080EE928 @ =0xFC800000
	adds r4, r0, #0
	cmp r1, r2
	bge _080EE90C
	ldr r0, _080EE92C @ =0x0000FC80
	strh r0, [r4]
_080EE90C:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r6, r0, #0
	cmp r1, #0
	bge _080EE930
	adds r0, r2, #2
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EE93C
	b _080EE93A
	.align 2, 0
_080EE928: .4byte 0xFC800000
_080EE92C: .4byte 0x0000FC80
_080EE930:
	subs r0, r2, #2
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EE93C
_080EE93A:
	strh r7, [r6]
_080EE93C:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080EEA08
	movs r0, #0
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	movs r0, #4
	ldrsh r7, [r5, r0]
	cmp r7, #0
	bne _080EE9EC
	movs r0, #3
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	strh r7, [r6]
	ldr r1, _080EEA10 @ =gUnk_02020EE0
	ldr r0, _080EEA14 @ =gUnk_0203AD3C
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
	bne _080EE9EC
	ldrb r0, [r5]
	cmp r0, #0
	bne _080EE9AC
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EE9EC
_080EE9AC:
	ldr r1, _080EEA18 @ =gUnk_08D60FA4
	ldr r4, _080EEA1C @ =gSongTable
	ldr r2, _080EEA20 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EE9D2
	movs r6, #0xb2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EE9EC
_080EE9D2:
	cmp r3, #0
	beq _080EE9E4
	ldr r0, _080EEA24 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EE9EC
_080EE9E4:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EE9EC:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _080EEA08
	ldr r0, [r5, #8]
	ldr r1, _080EEA28 @ =0xFBFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_080EDC94
_080EEA08:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EEA10: .4byte gUnk_02020EE0
_080EEA14: .4byte gUnk_0203AD3C
_080EEA18: .4byte gUnk_08D60FA4
_080EEA1C: .4byte gSongTable
_080EEA20: .4byte 0x00000B24
_080EEA24: .4byte gUnk_0203AD10
_080EEA28: .4byte 0xFBFFFFFF

	thumb_func_start sub_080EEA2C
sub_080EEA2C: @ 0x080EEA2C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EEAC4
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
	ldr r6, _080EEA7C @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EEA80
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
	b _080EEB44
	.align 2, 0
_080EEA7C: .4byte 0xFFFFF800
_080EEA80:
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
	bgt _080EEB48
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
	ldr r3, _080EEAC0 @ =0xFFFFF800
	adds r0, r0, r3
	b _080EEB44
	.align 2, 0
_080EEAC0: .4byte 0xFFFFF800
_080EEAC4:
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
	bgt _080EEB08
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
	ldr r3, _080EEB04 @ =0xFFFFF800
	adds r0, r0, r3
	b _080EEB44
	.align 2, 0
_080EEB04: .4byte 0xFFFFF800
_080EEB08:
	movs r4, #0x3e
	adds r4, r4, r2
	mov ip, r4
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #8
	ldr r3, _080EEB8C @ =0xFFFFF800
	adds r0, r0, r3
	cmp r1, r0
	blt _080EEB48
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
_080EEB44:
	subs r1, r1, r0
	str r1, [r2, #0x40]
_080EEB48:
	adds r5, r2, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x44]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xaa
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080EEB8C @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EEB90
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
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
	subs r1, r1, r0
	str r1, [r2, #0x44]
	b _080EEBBA
	.align 2, 0
_080EEB8C: .4byte 0xFFFFF800
_080EEB90:
	adds r0, r2, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r0, #0x69
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080EEBBA
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	orrs r0, r1
	strb r0, [r3]
_080EEBBA:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EEBE8
	adds r0, r3, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EEBF6
	b _080EEBF2
_080EEBE8:
	subs r0, r3, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EEBF6
_080EEBF2:
	movs r0, #0
	strh r0, [r1]
_080EEBF6:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EEC14
	ldr r0, [r2, #8]
	ldr r1, _080EEC1C @ =0xFFFF7FFF
	ands r0, r1
	ldr r1, _080EEC20 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_080EDC94
_080EEC14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EEC1C: .4byte 0xFFFF7FFF
_080EEC20: .4byte 0xFEFFFFFF

	thumb_func_start sub_080EEC24
sub_080EEC24: @ 0x080EEC24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r0, #0x9e
	movs r4, #0
	strb r4, [r0]
	str r4, [r5, #0x7c]
	ldr r2, _080EED2C @ =sub_080EED48
	adds r0, r5, #0
	movs r1, #7
	bl ObjectSetFunc
	str r4, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r0, r2
	subs r1, #0xa1
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, [r5, #8]
	subs r1, #0x43
	ands r0, r1
	orrs r0, r2
	str r0, [r5, #8]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08088528
	ldr r1, _080EED30 @ =gUnk_02020EE0
	ldr r0, _080EED34 @ =gUnk_0203AD3C
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
	bne _080EECE4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080EECA4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EECE4
_080EECA4:
	ldr r1, _080EED38 @ =gUnk_08D60FA4
	ldr r4, _080EED3C @ =gSongTable
	ldr r2, _080EED40 @ =0x00000BE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EECCA
	movs r1, #0xbe
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EECE4
_080EECCA:
	cmp r3, #0
	beq _080EECDC
	ldr r0, _080EED44 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EECE4
_080EECDC:
	movs r0, #0xbe
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EECE4:
	movs r0, #0
	strh r0, [r6, #4]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EECFC
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080EECFC:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl sub_080F12A8
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl sub_080F12A8
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl sub_080F12A8
	adds r0, r5, #0
	adds r0, #0xc0
	ldr r0, [r0]
	bl sub_080F12A8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EED2C: .4byte sub_080EED48
_080EED30: .4byte gUnk_02020EE0
_080EED34: .4byte gUnk_0203AD3C
_080EED38: .4byte gUnk_08D60FA4
_080EED3C: .4byte gSongTable
_080EED40: .4byte 0x00000BE4
_080EED44: .4byte gUnk_0203AD10

	thumb_func_start sub_080EED48
sub_080EED48: @ 0x080EED48
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EEDE0
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
	ldr r6, _080EED98 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EED9C
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
	b _080EEE5C
	.align 2, 0
_080EED98: .4byte 0xFFFFF800
_080EED9C:
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
	bgt _080EEE60
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
	ldr r2, _080EEDDC @ =0xFFFFF800
	adds r0, r0, r2
	b _080EEE5C
	.align 2, 0
_080EEDDC: .4byte 0xFFFFF800
_080EEDE0:
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
	bgt _080EEE24
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
	ldr r2, _080EEE20 @ =0xFFFFF800
	adds r0, r0, r2
	b _080EEE5C
	.align 2, 0
_080EEE20: .4byte 0xFFFFF800
_080EEE24:
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
	ldr r2, _080EEEA4 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080EEE60
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
_080EEE5C:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080EEE60:
	adds r4, r5, #0
	adds r4, #0x3f
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x44]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xaa
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080EEEA4 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080EEEA8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
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
	subs r1, r1, r0
	str r1, [r5, #0x44]
	b _080EEED2
	.align 2, 0
_080EEEA4: .4byte 0xFFFFF800
_080EEEA8:
	adds r0, r5, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080EEED2
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_080EEED2:
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #7
	bne _080EEF1A
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080EEEE8
	b _080EF00A
_080EEEE8:
	movs r0, #8
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080F3D28
	adds r0, r5, #0
	movs r1, #1
	bl sub_080F3D28
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r5, #0
	bl sub_080F4484
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	b _080EF00A
_080EEF1A:
	ldr r0, [r5, #8]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080EF00A
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	movs r0, #4
	ldrsh r6, [r5, r0]
	cmp r6, #0
	bne _080EEFDA
	movs r0, #3
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	adds r0, r5, #0
	adds r0, #0x50
	strh r6, [r0]
	ldr r1, _080EEFEC @ =gUnk_02020EE0
	ldr r0, _080EEFF0 @ =gUnk_0203AD3C
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
	bne _080EEFDA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080EEF9A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EEFDA
_080EEF9A:
	ldr r1, _080EEFF4 @ =gUnk_08D60FA4
	ldr r4, _080EEFF8 @ =gSongTable
	ldr r2, _080EEFFC @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EEFC0
	movs r6, #0xb2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EEFDA
_080EEFC0:
	cmp r3, #0
	beq _080EEFD2
	ldr r0, _080EF000 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EEFDA
_080EEFD2:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EEFDA:
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x3c
	bgt _080EF004
	adds r0, r1, #1
	strh r0, [r5, #4]
	b _080EF00A
	.align 2, 0
_080EEFEC: .4byte gUnk_02020EE0
_080EEFF0: .4byte gUnk_0203AD3C
_080EEFF4: .4byte gUnk_08D60FA4
_080EEFF8: .4byte gSongTable
_080EEFFC: .4byte 0x00000B24
_080EF000: .4byte gUnk_0203AD10
_080EF004:
	adds r0, r5, #0
	bl sub_080F56A8
_080EF00A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080EF010
sub_080EF010: @ 0x080EF010
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
	ldr r1, _080EF054 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080EF058 @ =gUnk_020229E0
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	ldr r6, [sp]
	adds r6, #0xb4
	b _080EF070
	.align 2, 0
_080EF054: .4byte gUnk_020229D4
_080EF058: .4byte gUnk_020229E0
_080EF05C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080EF078
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080EF070:
	cmp r0, #0
	bne _080EF05C
	orrs r2, r3
	str r2, [r1]
_080EF078:
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
	movs r0, #0xbc
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

	thumb_func_start sub_080EF0DC
sub_080EF0DC: @ 0x080EF0DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EF110 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EF114 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EF118
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080EF120
	.align 2, 0
_080EF110: .4byte ObjectMain
_080EF114: .4byte ObjectDestroy
_080EF118:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080EF120:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r1, [r6, #8]
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
	ldr r0, [r6, #0x5c]
	ldr r2, _080EF1A0 @ =0x001080A0
	orrs r0, r2
	str r0, [r6, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EF1A4 @ =sub_080F5744
	str r0, [r6, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	movs r5, #8
	rsbs r5, r5, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	adds r0, r6, #0
	bl sub_080EF1A8
	movs r0, #0xb4
	strh r0, [r6, #4]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EF1A0: .4byte 0x001080A0
_080EF1A4: .4byte sub_080F5744

	thumb_func_start sub_080EF1A8
sub_080EF1A8: @ 0x080EF1A8
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
	beq _080EF1C8
	cmp r0, #0xc
	bne _080EF1CA
_080EF1C8:
	movs r7, #0xc
_080EF1CA:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #1
	bne _080EF1F6
	movs r0, #0xb
	strb r0, [r6]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xe
	bl sub_080F3974
	movs r4, #1
_080EF1F6:
	ldr r2, _080EF224 @ =sub_080EF2A0
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	cmp r4, #0
	beq _080EF208
	movs r0, #0xb
	strb r0, [r6]
_080EF208:
	cmp r7, #0
	beq _080EF20E
	strb r7, [r6]
_080EF20E:
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x70]
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EF228
	movs r0, #8
	b _080EF296
	.align 2, 0
_080EF224: .4byte sub_080EF2A0
_080EF228:
	ldr r2, _080EF24C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EF250 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EF254 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080EF298
	lsls r0, r1, #2
	ldr r1, _080EF258 @ =_080EF25C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EF24C: .4byte gRngVal
_080EF250: .4byte 0x00196225
_080EF254: .4byte 0x3C6EF35F
_080EF258: .4byte _080EF25C
_080EF25C: @ jump table
	.4byte _080EF27C @ case 0
	.4byte _080EF280 @ case 1
	.4byte _080EF294 @ case 2
	.4byte _080EF284 @ case 3
	.4byte _080EF288 @ case 4
	.4byte _080EF28C @ case 5
	.4byte _080EF290 @ case 6
	.4byte _080EF294 @ case 7
_080EF27C:
	movs r0, #0x78
	b _080EF296
_080EF280:
	movs r0, #0x5a
	b _080EF296
_080EF284:
	movs r0, #0x14
	b _080EF296
_080EF288:
	movs r0, #0x2d
	b _080EF296
_080EF28C:
	movs r0, #0x5a
	b _080EF296
_080EF290:
	movs r0, #0x2d
	b _080EF296
_080EF294:
	movs r0, #0x3c
_080EF296:
	strh r0, [r5, #4]
_080EF298:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EF2A0
sub_080EF2A0: @ 0x080EF2A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sb, r0
	movs r2, #0xea
	movs r1, #0xe8
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
	bne _080EF350
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
	blt _080EF300
	cmp r4, #5
	ble _080EF30E
	adds r7, r3, #0
	mov r8, r6
	mov r1, ip
	lsls r6, r1, #0x18
	b _080EF3AA
_080EF300:
	subs r0, r0, r1
	adds r7, r3, #0
	mov r8, r6
	mov r3, ip
	lsls r6, r3, #0x18
	cmp r0, #5
	bgt _080EF3AA
_080EF30E:
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
	blt _080EF338
	cmp r4, #5
	ble _080EF344
	movs r1, #0x83
	adds r1, r1, r5
	mov r8, r1
	b _080EF3AA
_080EF338:
	subs r0, r0, r1
	movs r3, #0x83
	adds r3, r3, r5
	mov r8, r3
	cmp r0, #5
	bgt _080EF3AA
_080EF344:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
	mov r8, r1
	b _080EF3AA
_080EF350:
	cmp r0, #0xa
	bne _080EF38E
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
	bne _080EF3AA
	movs r0, #0xb
	mov r1, r8
	strb r0, [r1]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xe
	bl sub_080F3974
	b _080EF3AA
_080EF38E:
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
	bne _080EF3AA
	movs r0, #0xa
	mov r4, r8
	strb r0, [r4]
_080EF3AA:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	beq _080EF3C0
	cmp r0, #0xc
	beq _080EF3C0
	b _080EF518
_080EF3C0:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080EF3FC @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080EF400
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
	ble _080EF44A
	strh r2, [r1]
	b _080EF44A
	.align 2, 0
_080EF3FC: .4byte 0xFFFFFC00
_080EF400:
	cmp r4, r0
	bge _080EF420
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080EF41C @ =0xFFFFFE40
	cmp r0, r2
	bge _080EF44A
	strh r2, [r1]
	b _080EF44A
	.align 2, 0
_080EF41C: .4byte 0xFFFFFE40
_080EF420:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EF43C
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EF44A
	b _080EF448
_080EF43C:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EF44A
_080EF448:
	strh r3, [r1]
_080EF44A:
	ldr r4, [r5, #0x40]
	ldr r2, _080EF48C @ =0xFFFFFC00
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
	bge _080EF494
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
	bgt _080EF4C4
	ldr r2, _080EF490 @ =0xFFFFFDC0
	b _080EF634
	.align 2, 0
_080EF48C: .4byte 0xFFFFFC00
_080EF490: .4byte 0xFFFFFDC0
_080EF494:
	cmp r4, r0
	ble _080EF4EC
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080EF4CC
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080EF4C8 @ =0xFFFFFDC0
	cmp r0, r2
	blt _080EF4C4
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080EF4C4
	b _080EF666
_080EF4C4:
	strh r2, [r1]
	b _080EF666
	.align 2, 0
_080EF4C8: .4byte 0xFFFFFDC0
_080EF4CC:
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
	bgt _080EF4C4
	ldr r2, _080EF4E8 @ =0xFFFFFDC0
	b _080EF634
	.align 2, 0
_080EF4E8: .4byte 0xFFFFFDC0
_080EF4EC:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EF50C
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080EF50A
	b _080EF666
_080EF50A:
	b _080EF662
_080EF50C:
	ldr r4, _080EF514 @ =0xFFFFFE80
	adds r0, r2, r4
	b _080EF65A
	.align 2, 0
_080EF514: .4byte 0xFFFFFE80
_080EF518:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080EF554 @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080EF558
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
	ble _080EF5A4
	strh r2, [r1]
	b _080EF5A4
	.align 2, 0
_080EF554: .4byte 0xFFFFFC00
_080EF558:
	cmp r4, r0
	bge _080EF578
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080EF574 @ =0xFFFFFEB0
	cmp r0, r2
	bge _080EF5A4
	strh r2, [r1]
	b _080EF5A4
	.align 2, 0
_080EF574: .4byte 0xFFFFFEB0
_080EF578:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EF596
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EF5A4
	b _080EF5A2
_080EF596:
	ldr r4, _080EF5E0 @ =0xFFFFFF00
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EF5A4
_080EF5A2:
	strh r3, [r1]
_080EF5A4:
	ldr r4, [r5, #0x40]
	ldr r2, _080EF5E4 @ =0xFFFFFC00
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
	bge _080EF5E8
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
	ble _080EF630
	movs r0, #0xe0
	b _080EF664
	.align 2, 0
_080EF5E0: .4byte 0xFFFFFF00
_080EF5E4: .4byte 0xFFFFFC00
_080EF5E8:
	cmp r4, r0
	ble _080EF63A
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080EF61A
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
	bge _080EF612
	b _080EF4C4
_080EF612:
	cmp r0, #0xe0
	ble _080EF666
	movs r0, #0xe0
	b _080EF664
_080EF61A:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080EF630
	movs r0, #0xe0
	b _080EF664
_080EF630:
	movs r2, #0xe0
	rsbs r2, r2, #0
_080EF634:
	cmp r0, r2
	bge _080EF666
	b _080EF4C4
_080EF63A:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EF656
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EF666
	b _080EF662
_080EF656:
	adds r0, r2, #0
	subs r0, #0x40
_080EF65A:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EF666
_080EF662:
	movs r0, #0
_080EF664:
	strh r0, [r1]
_080EF666:
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
	beq _080EF684
	adds r0, r5, #0
	bl sub_080EF6E4
	b _080EF6D6
_080EF684:
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0x12
	bne _080EF6BA
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080EF6D6
	movs r0, #0xa
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	adds r1, r0, #0
	cmp r2, #2
	beq _080EF6B0
	cmp r2, #0xc
	bne _080EF6B4
_080EF6B0:
	movs r0, #0xc
	strb r0, [r4]
_080EF6B4:
	movs r0, #0
	strb r0, [r1]
	b _080EF6D6
_080EF6BA:
	cmp r0, #0xc
	beq _080EF6D6
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EF6D6
	movs r0, #0xa
	mov r3, r8
	strb r0, [r3]
	adds r0, r5, #0
	bl sub_080EFC18
_080EF6D6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EF6E4
sub_080EF6E4: @ 0x080EF6E4
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
	beq _080EF702
	cmp r0, #0xc
	bne _080EF704
_080EF702:
	movs r7, #2
_080EF704:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0xb
	bne _080EF730
	movs r0, #1
	strb r0, [r6]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #8
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_080F3974
	movs r4, #1
_080EF730:
	ldr r2, _080EF75C @ =sub_080EF7D8
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	cmp r4, #0
	beq _080EF742
	movs r0, #1
	strb r0, [r6]
_080EF742:
	cmp r7, #0
	beq _080EF748
	strb r7, [r6]
_080EF748:
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x70]
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EF760
	movs r0, #8
	b _080EF7CE
	.align 2, 0
_080EF75C: .4byte sub_080EF7D8
_080EF760:
	ldr r2, _080EF784 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EF788 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EF78C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080EF7D0
	lsls r0, r1, #2
	ldr r1, _080EF790 @ =_080EF794
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EF784: .4byte gRngVal
_080EF788: .4byte 0x00196225
_080EF78C: .4byte 0x3C6EF35F
_080EF790: .4byte _080EF794
_080EF794: @ jump table
	.4byte _080EF7B4 @ case 0
	.4byte _080EF7B8 @ case 1
	.4byte _080EF7CC @ case 2
	.4byte _080EF7BC @ case 3
	.4byte _080EF7C0 @ case 4
	.4byte _080EF7C4 @ case 5
	.4byte _080EF7C8 @ case 6
	.4byte _080EF7CC @ case 7
_080EF7B4:
	movs r0, #0x78
	b _080EF7CE
_080EF7B8:
	movs r0, #0x5a
	b _080EF7CE
_080EF7BC:
	movs r0, #0x14
	b _080EF7CE
_080EF7C0:
	movs r0, #0x2d
	b _080EF7CE
_080EF7C4:
	movs r0, #0x5a
	b _080EF7CE
_080EF7C8:
	movs r0, #0x2d
	b _080EF7CE
_080EF7CC:
	movs r0, #0x3c
_080EF7CE:
	strh r0, [r5, #4]
_080EF7D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EF7D8
sub_080EF7D8: @ 0x080EF7D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sb, r0
	movs r2, #0xe4
	movs r1, #0xf4
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
	cmp r0, #2
	bne _080EF888
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
	blt _080EF838
	cmp r4, #5
	ble _080EF846
	adds r7, r3, #0
	mov r8, r6
	mov r1, ip
	lsls r6, r1, #0x18
	b _080EF8E0
_080EF838:
	subs r0, r0, r1
	adds r7, r3, #0
	mov r8, r6
	mov r2, ip
	lsls r6, r2, #0x18
	cmp r0, #5
	bgt _080EF8E0
_080EF846:
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
	blt _080EF870
	cmp r4, #5
	ble _080EF87C
	movs r1, #0x83
	adds r1, r1, r5
	mov r8, r1
	b _080EF8E0
_080EF870:
	subs r0, r0, r1
	movs r2, #0x83
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #5
	bgt _080EF8E0
_080EF87C:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	mov r8, r1
	b _080EF8E0
_080EF888:
	cmp r0, #0
	bne _080EF8C4
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r3, #0
	mov r8, r6
	lsls r2, r2, #0x18
	mov sl, r2
	mov r3, ip
	lsls r6, r3, #0x18
	cmp r0, #1
	bne _080EF8E0
	mov r4, r8
	strb r0, [r4]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #8
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_080F3974
	b _080EF8E0
_080EF8C4:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r7, r3, #0
	mov r8, r6
	lsls r2, r2, #0x18
	mov sl, r2
	mov r1, ip
	lsls r6, r1, #0x18
	cmp r0, #3
	bne _080EF8E0
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
_080EF8E0:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #2
	beq _080EF8F6
	cmp r0, #0xc
	beq _080EF8F6
	b _080EFA50
_080EF8F6:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080EF934 @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080EF938
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
	ble _080EF982
	strh r2, [r1]
	b _080EF982
	.align 2, 0
_080EF934: .4byte 0xFFFFFC00
_080EF938:
	cmp r4, r0
	bge _080EF958
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080EF954 @ =0xFFFFFE40
	cmp r0, r2
	bge _080EF982
	strh r2, [r1]
	b _080EF982
	.align 2, 0
_080EF954: .4byte 0xFFFFFE40
_080EF958:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EF974
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EF982
	b _080EF980
_080EF974:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EF982
_080EF980:
	strh r3, [r1]
_080EF982:
	ldr r4, [r5, #0x40]
	ldr r2, _080EF9C4 @ =0xFFFFFC00
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
	bge _080EF9CC
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
	bgt _080EF9FC
	ldr r2, _080EF9C8 @ =0xFFFFFDC0
	b _080EFB6C
	.align 2, 0
_080EF9C4: .4byte 0xFFFFFC00
_080EF9C8: .4byte 0xFFFFFDC0
_080EF9CC:
	cmp r4, r0
	ble _080EFA24
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080EFA04
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080EFA00 @ =0xFFFFFDC0
	cmp r0, r2
	blt _080EF9FC
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080EF9FC
	b _080EFB9E
_080EF9FC:
	strh r2, [r1]
	b _080EFB9E
	.align 2, 0
_080EFA00: .4byte 0xFFFFFDC0
_080EFA04:
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
	bgt _080EF9FC
	ldr r2, _080EFA20 @ =0xFFFFFDC0
	b _080EFB6C
	.align 2, 0
_080EFA20: .4byte 0xFFFFFDC0
_080EFA24:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EFA44
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080EFA42
	b _080EFB9E
_080EFA42:
	b _080EFB9A
_080EFA44:
	ldr r4, _080EFA4C @ =0xFFFFFE80
	adds r0, r2, r4
	b _080EFB92
	.align 2, 0
_080EFA4C: .4byte 0xFFFFFE80
_080EFA50:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080EFA8C @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080EFA90
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
	ble _080EFADC
	strh r2, [r1]
	b _080EFADC
	.align 2, 0
_080EFA8C: .4byte 0xFFFFFC00
_080EFA90:
	cmp r4, r0
	bge _080EFAB0
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080EFAAC @ =0xFFFFFEB0
	cmp r0, r2
	bge _080EFADC
	strh r2, [r1]
	b _080EFADC
	.align 2, 0
_080EFAAC: .4byte 0xFFFFFEB0
_080EFAB0:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EFACE
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EFADC
	b _080EFADA
_080EFACE:
	ldr r4, _080EFB18 @ =0xFFFFFF00
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EFADC
_080EFADA:
	strh r3, [r1]
_080EFADC:
	ldr r4, [r5, #0x40]
	ldr r2, _080EFB1C @ =0xFFFFFC00
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
	bge _080EFB20
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
	ble _080EFB68
	movs r0, #0xe0
	b _080EFB9C
	.align 2, 0
_080EFB18: .4byte 0xFFFFFF00
_080EFB1C: .4byte 0xFFFFFC00
_080EFB20:
	cmp r4, r0
	ble _080EFB72
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080EFB52
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
	bge _080EFB4A
	b _080EF9FC
_080EFB4A:
	cmp r0, #0xe0
	ble _080EFB9E
	movs r0, #0xe0
	b _080EFB9C
_080EFB52:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080EFB68
	movs r0, #0xe0
	b _080EFB9C
_080EFB68:
	movs r2, #0xe0
	rsbs r2, r2, #0
_080EFB6C:
	cmp r0, r2
	bge _080EFB9E
	b _080EF9FC
_080EFB72:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080EFB8E
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EFB9E
	b _080EFB9A
_080EFB8E:
	adds r0, r2, #0
	subs r0, #0x40
_080EFB92:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080EFB9E
_080EFB9A:
	movs r0, #0
_080EFB9C:
	strh r0, [r1]
_080EFB9E:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080EFBB8
	adds r0, r5, #0
	bl sub_080EF1A8
	b _080EFC0A
_080EFBB8:
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #8
	bne _080EFBEE
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080EFC0A
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	adds r1, r0, #0
	cmp r2, #2
	beq _080EFBE4
	cmp r2, #0xc
	bne _080EFBE8
_080EFBE4:
	movs r0, #2
	strb r0, [r4]
_080EFBE8:
	movs r0, #0
	strb r0, [r1]
	b _080EFC0A
_080EFBEE:
	cmp r0, #2
	beq _080EFC0A
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EFC0A
	movs r0, #0
	mov r3, r8
	strb r0, [r3]
	adds r0, r5, #0
	bl sub_080EFC18
_080EFC0A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EFC18
sub_080EFC18: @ 0x080EFC18
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r5, #0x70]
	adds r0, r3, #0
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EFCFA
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	bls _080EFC46
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080EFC4E
_080EFC46:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #1
	ble _080EFC58
_080EFC4E:
	ldr r0, [r4]
	ldr r1, [r0, #0x78]
	ldr r0, _080EFCF0 @ =sub_080F05CC
	cmp r1, r0
	bne _080EFCF4
_080EFC58:
	adds r0, r3, #0
	adds r0, #0xb8
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	bls _080EFC76
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080EFC7E
_080EFC76:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #1
	ble _080EFC88
_080EFC7E:
	ldr r0, [r4]
	ldr r1, [r0, #0x78]
	ldr r0, _080EFCF0 @ =sub_080F05CC
	cmp r1, r0
	bne _080EFCF4
_080EFC88:
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	bls _080EFCA6
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080EFCAE
_080EFCA6:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #1
	ble _080EFCB8
_080EFCAE:
	ldr r0, [r4]
	ldr r1, [r0, #0x78]
	ldr r0, _080EFCF0 @ =sub_080F05CC
	cmp r1, r0
	bne _080EFCF4
_080EFCB8:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #1
	bls _080EFCD6
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080EFCDE
_080EFCD6:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #1
	ble _080EFCE8
_080EFCDE:
	ldr r0, [r3]
	ldr r1, [r0, #0x78]
	ldr r0, _080EFCF0 @ =sub_080F05CC
	cmp r1, r0
	bne _080EFCF4
_080EFCE8:
	adds r0, r5, #0
	bl sub_080F0554
	b _080EFD46
	.align 2, 0
_080EFCF0: .4byte sub_080F05CC
_080EFCF4:
	movs r0, #1
	strh r0, [r5, #4]
	b _080EFD46
_080EFCFA:
	ldr r2, _080EFD2C @ =gRngVal
	ldr r0, [r2]
	ldr r4, _080EFD30 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _080EFD34 @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080EFD40
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, _080EFD34 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080EFD38
	adds r0, r5, #0
	bl sub_080F0410
	b _080EFD46
	.align 2, 0
_080EFD2C: .4byte gRngVal
_080EFD30: .4byte 0x00196225
_080EFD34: .4byte 0x3C6EF35F
_080EFD38:
	adds r0, r5, #0
	bl sub_080F0CAC
	b _080EFD46
_080EFD40:
	adds r0, r5, #0
	bl sub_080EFD4C
_080EFD46:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080EFD4C
sub_080EFD4C: @ 0x080EFD4C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080EFD7C @ =sub_080EFE9C
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _080EFD80
	movs r0, #0xd
	b _080EFD82
	.align 2, 0
_080EFD7C: .4byte sub_080EFE9C
_080EFD80:
	movs r0, #3
_080EFD82:
	strb r0, [r2]
	ldr r2, _080EFDB4 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x14
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r1, [r1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	cmp r0, #0x25
	beq _080EFDD2
	cmp r0, #0x25
	bgt _080EFDB8
	cmp r0, #0x24
	beq _080EFDC2
	b _080EFE00
	.align 2, 0
_080EFDB4: .4byte gUnk_08351648
_080EFDB8:
	cmp r0, #0x26
	beq _080EFDE2
	cmp r0, #0x27
	beq _080EFDF2
	b _080EFE00
_080EFDC2:
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x28
	bl sub_080F3974
	b _080EFE00
_080EFDD2:
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x29
	bl sub_080F3974
	b _080EFE00
_080EFDE2:
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x2a
	bl sub_080F3974
	b _080EFE00
_080EFDF2:
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x2b
	bl sub_080F3974
_080EFE00:
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080EFE8C @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x18
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	movs r0, #0x2a
	adds r0, r0, r4
	mov ip, r0
	ldrb r3, [r0]
	cmp r3, #1
	bne _080EFE42
	ldr r2, _080EFE90 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EFE94 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EFE98 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
_080EFE42:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #2
	bne _080EFE66
	ldr r2, _080EFE90 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EFE94 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EFE98 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
_080EFE66:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #3
	bne _080EFE76
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #4
	strb r0, [r1]
_080EFE76:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #4
	bne _080EFE86
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #5
	strb r0, [r1]
_080EFE86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EFE8C: .4byte 0xFFFFFDFF
_080EFE90: .4byte gRngVal
_080EFE94: .4byte 0x00196225
_080EFE98: .4byte 0x3C6EF35F

	thumb_func_start sub_080EFE9C
sub_080EFE9C: @ 0x080EFE9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080EFF84
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _080EFF60 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EFEEC
	b _080F03FE
_080EFEEC:
	ldr r1, _080EFF64 @ =gUnk_02020EE0
	ldr r0, _080EFF68 @ =gUnk_0203AD3C
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
	beq _080EFF0A
	b _080F03FE
_080EFF0A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EFF1C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080EFF1C
	b _080F03FE
_080EFF1C:
	ldr r1, _080EFF6C @ =gUnk_08D60FA4
	ldr r4, _080EFF70 @ =gSongTable
	ldr r2, _080EFF74 @ =0x00000C6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EFF42
	ldr r1, _080EFF78 @ =0x00000C68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080EFF42
	b _080F03FE
_080EFF42:
	cmp r3, #0
	beq _080EFF56
	ldr r0, _080EFF7C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EFF56
	b _080F03FE
_080EFF56:
	ldr r0, _080EFF80 @ =0x0000018D
	bl m4aSongNumStart
	b _080F03FE
	.align 2, 0
_080EFF60: .4byte gUnk_0203AD40
_080EFF64: .4byte gUnk_02020EE0
_080EFF68: .4byte gUnk_0203AD3C
_080EFF6C: .4byte gUnk_08D60FA4
_080EFF70: .4byte gSongTable
_080EFF74: .4byte 0x00000C6C
_080EFF78: .4byte 0x00000C68
_080EFF7C: .4byte gUnk_0203AD10
_080EFF80: .4byte 0x0000018D
_080EFF84:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #5
	bls _080EFF90
	b _080F028E
_080EFF90:
	lsls r0, r0, #2
	ldr r1, _080EFF9C @ =_080EFFA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EFF9C: .4byte _080EFFA0
_080EFFA0: @ jump table
	.4byte _080EFFB8 @ case 0
	.4byte _080F0034 @ case 1
	.4byte _080F00A8 @ case 2
	.4byte _080F0128 @ case 3
	.4byte _080F01A8 @ case 4
	.4byte _080F0220 @ case 5
_080EFFB8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EFFF4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080EFFDC @ =0xFFFFFD9E
	cmp r2, r0
	bge _080EFFE4
	ldr r0, _080EFFE0 @ =0x0000FD9E
	strh r0, [r1]
	b _080F0010
	.align 2, 0
_080EFFDC: .4byte 0xFFFFFD9E
_080EFFE0: .4byte 0x0000FD9E
_080EFFE4:
	ldr r0, _080EFFF0 @ =0x00000262
	cmp r2, r0
	ble _080F0010
	strh r0, [r1]
	b _080F0010
	.align 2, 0
_080EFFF0: .4byte 0x00000262
_080EFFF4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F002C @ =0x00000262
	cmp r0, r2
	bgt _080F000E
	ldr r2, _080F0030 @ =0xFFFFFD9E
	cmp r0, r2
	bge _080F0010
_080F000E:
	strh r2, [r1]
_080F0010:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x94
	bgt _080F0024
	b _080F028E
_080F0024:
	movs r0, #0x94
	strh r0, [r1]
	b _080F028E
	.align 2, 0
_080F002C: .4byte 0x00000262
_080F0030: .4byte 0xFFFFFD9E
_080F0034:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F0070
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F0058 @ =0xFFFFFD17
	cmp r2, r0
	bge _080F0060
	ldr r0, _080F005C @ =0x0000FD17
	strh r0, [r1]
	b _080F008C
	.align 2, 0
_080F0058: .4byte 0xFFFFFD17
_080F005C: .4byte 0x0000FD17
_080F0060:
	ldr r0, _080F006C @ =0x000002E9
	cmp r2, r0
	ble _080F008C
	strh r0, [r1]
	b _080F008C
	.align 2, 0
_080F006C: .4byte 0x000002E9
_080F0070:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F00A0 @ =0x000002E9
	cmp r0, r2
	bgt _080F008A
	ldr r2, _080F00A4 @ =0xFFFFFD17
	cmp r0, r2
	bge _080F008C
_080F008A:
	strh r2, [r1]
_080F008C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd8
	lsls r2, r2, #1
	b _080F0210
	.align 2, 0
_080F00A0: .4byte 0x000002E9
_080F00A4: .4byte 0xFFFFFD17
_080F00A8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F00E4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F00CC @ =0xFFFFFCAE
	cmp r2, r0
	bge _080F00D4
	ldr r0, _080F00D0 @ =0x0000FCAE
	strh r0, [r1]
	b _080F0100
	.align 2, 0
_080F00CC: .4byte 0xFFFFFCAE
_080F00D0: .4byte 0x0000FCAE
_080F00D4:
	ldr r0, _080F00E0 @ =0x00000352
	cmp r2, r0
	ble _080F0100
	strh r0, [r1]
	b _080F0100
	.align 2, 0
_080F00E0: .4byte 0x00000352
_080F00E4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0118 @ =0x00000352
	cmp r0, r2
	bgt _080F00FE
	ldr r2, _080F011C @ =0xFFFFFCAE
	cmp r0, r2
	bge _080F0100
_080F00FE:
	strh r2, [r1]
_080F0100:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080F0120 @ =0xFF6D0000
	cmp r0, r1
	bge _080F0114
	b _080F028E
_080F0114:
	ldr r0, _080F0124 @ =0x0000FF6C
	b _080F028C
	.align 2, 0
_080F0118: .4byte 0x00000352
_080F011C: .4byte 0xFFFFFCAE
_080F0120: .4byte 0xFF6D0000
_080F0124: .4byte 0x0000FF6C
_080F0128:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F0164
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F014C @ =0xFFFFFCBF
	cmp r2, r0
	bge _080F0154
	ldr r0, _080F0150 @ =0x0000FCBF
	strh r0, [r1]
	b _080F0180
	.align 2, 0
_080F014C: .4byte 0xFFFFFCBF
_080F0150: .4byte 0x0000FCBF
_080F0154:
	ldr r0, _080F0160 @ =0x00000341
	cmp r2, r0
	ble _080F0180
	strh r0, [r1]
	b _080F0180
	.align 2, 0
_080F0160: .4byte 0x00000341
_080F0164:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0198 @ =0x00000341
	cmp r0, r2
	bgt _080F017E
	ldr r2, _080F019C @ =0xFFFFFCBF
	cmp r0, r2
	bge _080F0180
_080F017E:
	strh r2, [r1]
_080F0180:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080F01A0 @ =0xFF230000
	cmp r0, r1
	bge _080F0194
	b _080F028E
_080F0194:
	ldr r0, _080F01A4 @ =0x0000FF22
	b _080F028C
	.align 2, 0
_080F0198: .4byte 0x00000341
_080F019C: .4byte 0xFFFFFCBF
_080F01A0: .4byte 0xFF230000
_080F01A4: .4byte 0x0000FF22
_080F01A8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F01E4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F01CC @ =0xFFFFFD9E
	cmp r2, r0
	bge _080F01D4
	ldr r0, _080F01D0 @ =0x0000FD9E
	strh r0, [r1]
	b _080F0200
	.align 2, 0
_080F01CC: .4byte 0xFFFFFD9E
_080F01D0: .4byte 0x0000FD9E
_080F01D4:
	ldr r0, _080F01E0 @ =0x00000262
	cmp r2, r0
	ble _080F0200
	strh r0, [r1]
	b _080F0200
	.align 2, 0
_080F01E0: .4byte 0x00000262
_080F01E4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0218 @ =0x00000262
	cmp r0, r2
	bgt _080F01FE
	ldr r2, _080F021C @ =0xFFFFFD9E
	cmp r0, r2
	bge _080F0200
_080F01FE:
	strh r2, [r1]
_080F0200:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0218 @ =0x00000262
_080F0210:
	cmp r0, r2
	ble _080F028E
	strh r2, [r1]
	b _080F028E
	.align 2, 0
_080F0218: .4byte 0x00000262
_080F021C: .4byte 0xFFFFFD9E
_080F0220:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F025C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F0244 @ =0xFFFFFCD6
	cmp r2, r0
	bge _080F024C
	ldr r0, _080F0248 @ =0x0000FCD6
	strh r0, [r1]
	b _080F0278
	.align 2, 0
_080F0244: .4byte 0xFFFFFCD6
_080F0248: .4byte 0x0000FCD6
_080F024C:
	ldr r0, _080F0258 @ =0x0000032A
	cmp r2, r0
	ble _080F0278
	strh r0, [r1]
	b _080F0278
	.align 2, 0
_080F0258: .4byte 0x0000032A
_080F025C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0360 @ =0x0000032A
	cmp r0, r2
	bgt _080F0276
	ldr r2, _080F0364 @ =0xFFFFFCD6
	cmp r0, r2
	bge _080F0278
_080F0276:
	strh r2, [r1]
_080F0278:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080F0368 @ =0xFF120000
	cmp r0, r1
	blt _080F028E
	ldr r0, _080F036C @ =0x0000FF11
_080F028C:
	strh r0, [r2]
_080F028E:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #0xd
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080F02A0
	b _080F03FE
_080F02A0:
	ldr r2, [r4, #0x70]
	mov r8, r2
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4d
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080F03B2
	subs r0, #0x1a
	ldrb r0, [r0]
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080F0370 @ =gUnk_02020EE0
	ldr r0, _080F0374 @ =gUnk_0203AD3C
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
	bne _080F0344
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F0304
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F0344
_080F0304:
	ldr r1, _080F0378 @ =gUnk_08D60FA4
	ldr r5, _080F037C @ =gSongTable
	ldr r2, _080F0380 @ =0x00000C74
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F032A
	movs r1, #0xc7
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F0344
_080F032A:
	cmp r3, #0
	beq _080F033C
	ldr r0, _080F0384 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F0344
_080F033C:
	movs r0, #0xc7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F0344:
	ldrb r2, [r7]
	movs r1, #3
	ands r1, r2
	cmp r1, #0
	beq _080F0388
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #3
	bl sub_080A8D18
	b _080F03B2
	.align 2, 0
_080F0360: .4byte 0x0000032A
_080F0364: .4byte 0xFFFFFCD6
_080F0368: .4byte 0xFF120000
_080F036C: .4byte 0x0000FF11
_080F0370: .4byte gUnk_02020EE0
_080F0374: .4byte gUnk_0203AD3C
_080F0378: .4byte gUnk_08D60FA4
_080F037C: .4byte gSongTable
_080F0380: .4byte 0x00000C74
_080F0384: .4byte gUnk_0203AD10
_080F0388:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080F03A0
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_080A8D18
	b _080F03B2
_080F03A0:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080F03B2
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_080A8C28
_080F03B2:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _080F03FE
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F03E8
	ldr r0, _080F03E4 @ =gUnk_08357018
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080F03FE
	.align 2, 0
_080F03E4: .4byte gUnk_08357018
_080F03E8:
	ldr r0, _080F040C @ =gUnk_08357028
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080F03FE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F040C: .4byte gUnk_08357028

	thumb_func_start sub_080F0410
sub_080F0410: @ 0x080F0410
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080F0440 @ =sub_080F0474
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _080F0444
	movs r0, #0xe
	b _080F0446
	.align 2, 0
_080F0440: .4byte sub_080F0474
_080F0444:
	movs r0, #4
_080F0446:
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #4
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080F0474
sub_080F0474: @ 0x080F0474
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F0494
	movs r0, #1
	orrs r2, r0
	b _080F049A
_080F0494:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080F049A:
	str r2, [r3, #8]
	ldr r0, [r3, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r2, r0, r1
	adds r1, r3, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	adds r4, r1, #0
	cmp r2, r0
	ble _080F04CC
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080F0518
	strh r1, [r2]
	b _080F0518
_080F04CC:
	cmp r2, r0
	bge _080F04EC
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080F04E8 @ =0xFFFFFE80
	cmp r0, r1
	bge _080F0518
	strh r1, [r2]
	b _080F0518
	.align 2, 0
_080F04E8: .4byte 0xFFFFFE80
_080F04EC:
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r1, [r2]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080F0508
	adds r0, r1, #0
	adds r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F0518
	b _080F0514
_080F0508:
	adds r0, r1, #0
	subs r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F0518
_080F0514:
	movs r0, #0
	strh r0, [r2]
_080F0518:
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	ldr r1, [r3, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080F0530
	ldr r0, _080F052C @ =0x000007FF
	cmp r2, r0
	ble _080F0538
	b _080F054A
	.align 2, 0
_080F052C: .4byte 0x000007FF
_080F0530:
	subs r1, r1, r0
	ldr r0, _080F0550 @ =0x000007FF
	cmp r1, r0
	bgt _080F054A
_080F0538:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F054A
	adds r0, r3, #0
	bl sub_080F097C
_080F054A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F0550: .4byte 0x000007FF

	thumb_func_start sub_080F0554
sub_080F0554: @ 0x080F0554
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080F0588 @ =sub_080F05CC
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _080F058C
	movs r0, #0xe
	b _080F058E
	.align 2, 0
_080F0588: .4byte sub_080F05CC
_080F058C:
	movs r0, #4
_080F058E:
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x42
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, [r5, #8]
	movs r2, #1
	ands r1, r2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x20
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F05CC
sub_080F05CC: @ 0x080F05CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov r8, r0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r1, r8
	adds r1, #0xc4
	ldrb r0, [r1]
	cmp r0, #0
	bne _080F05F0
	b _080F0880
_080F05F0:
	cmp r0, #3
	beq _080F0690
	cmp r0, #3
	bgt _080F05FE
	cmp r0, #2
	beq _080F0640
	b _080F0602
_080F05FE:
	cmp r0, #4
	beq _080F06D4
_080F0602:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xbd
	beq _080F0630
	cmp r0, #0xbd
	ble _080F0618
	cmp r0, #0xbe
	beq _080F061E
	cmp r0, #0xbf
	beq _080F0624
_080F0618:
	movs r6, #0x20
	movs r4, #0x28
	b _080F0666
_080F061E:
	movs r6, #0x30
	movs r4, #0x16
	b _080F0672
_080F0624:
	movs r6, #0x30
	ldr r4, _080F062C @ =0x0000FFEA
	b _080F0684
	.align 2, 0
_080F062C: .4byte 0x0000FFEA
_080F0630:
	movs r6, #0x20
	ldr r4, _080F063C @ =0x0000FFD8
	movs r7, #0xa2
	adds r7, r7, r5
	mov ip, r7
	b _080F0710
	.align 2, 0
_080F063C: .4byte 0x0000FFD8
_080F0640:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xbd
	beq _080F0680
	cmp r0, #0xbd
	ble _080F0656
	cmp r0, #0xbe
	beq _080F0662
	cmp r0, #0xbf
	beq _080F066E
_080F0656:
	movs r6, #0x20
	movs r4, #0x30
	movs r0, #0xa2
	adds r0, r0, r5
	mov ip, r0
	b _080F0710
_080F0662:
	movs r6, #0x30
	movs r4, #8
_080F0666:
	movs r1, #0xa2
	adds r1, r1, r5
	mov ip, r1
	b _080F0710
_080F066E:
	movs r6, #0x30
	ldr r4, _080F067C @ =0x0000FFF8
_080F0672:
	movs r2, #0xa2
	adds r2, r2, r5
	mov ip, r2
	b _080F0710
	.align 2, 0
_080F067C: .4byte 0x0000FFF8
_080F0680:
	movs r6, #0x20
	ldr r4, _080F068C @ =0x0000FFD0
_080F0684:
	movs r3, #0xa2
	adds r3, r3, r5
	mov ip, r3
	b _080F0710
	.align 2, 0
_080F068C: .4byte 0x0000FFD0
_080F0690:
	adds r1, r5, #0
	adds r1, #0xa2
	movs r0, #0x58
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	mov ip, r1
	cmp r0, #0xbd
	beq _080F06C8
	cmp r0, #0xbd
	ble _080F06B0
	cmp r0, #0xbe
	beq _080F06B6
	cmp r0, #0xbf
	beq _080F06BC
_080F06B0:
	movs r6, #0x20
	movs r4, #0x3c
	b _080F0710
_080F06B6:
	movs r6, #0x20
	movs r4, #0x18
	b _080F0710
_080F06BC:
	movs r6, #0x20
	ldr r4, _080F06C4 @ =0x0000FFE8
	b _080F0710
	.align 2, 0
_080F06C4: .4byte 0x0000FFE8
_080F06C8:
	movs r6, #0x20
	ldr r4, _080F06D0 @ =0x0000FFC4
	b _080F0710
	.align 2, 0
_080F06D0: .4byte 0x0000FFC4
_080F06D4:
	adds r1, r5, #0
	adds r1, #0xa2
	movs r0, #0x58
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	mov ip, r1
	cmp r0, #0xbd
	beq _080F070C
	cmp r0, #0xbd
	ble _080F06F4
	cmp r0, #0xbe
	beq _080F06FA
	cmp r0, #0xbf
	beq _080F0700
_080F06F4:
	movs r6, #0x10
	movs r4, #0x14
	b _080F0710
_080F06FA:
	movs r6, #0x10
	movs r4, #0x30
	b _080F0710
_080F0700:
	movs r6, #0x10
	ldr r4, _080F0708 @ =0x0000FFD0
	b _080F0710
	.align 2, 0
_080F0708: .4byte 0x0000FFD0
_080F070C:
	movs r6, #0x10
	ldr r4, _080F0764 @ =0x0000FFEC
_080F0710:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F0720
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
_080F0720:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r7, #0
	mov sb, r7
	strb r0, [r1]
	ldr r3, [r5, #0x44]
	ldr r2, _080F0768 @ =0xFFFFFC00
	ands r3, r2
	mov r0, ip
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	ble _080F076C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080F07BE
	strh r2, [r1]
	b _080F07BE
	.align 2, 0
_080F0764: .4byte 0x0000FFEC
_080F0768: .4byte 0xFFFFFC00
_080F076C:
	cmp r3, r0
	bge _080F078C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0788 @ =0xFFFFFD80
	cmp r0, r2
	bge _080F07BE
	strh r2, [r1]
	b _080F07BE
	.align 2, 0
_080F0788: .4byte 0xFFFFFD80
_080F078C:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F07AE
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F07BE
	mov r7, sb
	strh r7, [r1]
	b _080F07BE
_080F07AE:
	ldr r3, _080F07E8 @ =0xFFFFFE80
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F07BE
	mov r4, sb
	strh r4, [r1]
_080F07BE:
	ldr r3, [r5, #0x40]
	ldr r2, _080F07EC @ =0xFFFFFC00
	ands r3, r2
	adds r0, r5, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080F07F0
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080F0828
	.align 2, 0
_080F07E8: .4byte 0xFFFFFE80
_080F07EC: .4byte 0xFFFFFC00
_080F07F0:
	cmp r3, r0
	ble _080F084C
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F0828
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0824 @ =0xFFFFFD80
	cmp r0, r2
	blt _080F081E
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080F0882
_080F081E:
	strh r2, [r1]
	b _080F0882
	.align 2, 0
_080F0824: .4byte 0xFFFFFD80
_080F0828:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F081E
	ldr r2, _080F0848 @ =0xFFFFFD80
	cmp r0, r2
	bge _080F0882
	b _080F081E
	.align 2, 0
_080F0848: .4byte 0xFFFFFD80
_080F084C:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F086A
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F0882
	b _080F0876
_080F086A:
	ldr r7, _080F087C @ =0xFFFFFE80
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F0882
_080F0876:
	movs r0, #0
	strh r0, [r1]
	b _080F0882
	.align 2, 0
_080F087C: .4byte 0xFFFFFE80
_080F0880:
	strh r0, [r5, #4]
_080F0882:
	ldrh r3, [r5, #4]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080F0932
	mov r0, r8
	adds r0, #0xc4
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _080F0928
	ldr r3, [r5, #8]
	movs r2, #1
	mov sb, r2
	ands r3, r2
	mov r4, r8
	adds r4, #0xb4
	ldr r1, [r4]
	ldr r0, [r1, #8]
	subs r2, #3
	ands r0, r2
	str r0, [r1, #8]
	mov r6, r8
	adds r6, #0xb8
	ldr r1, [r6]
	ldr r0, [r1, #8]
	ands r0, r2
	str r0, [r1, #8]
	mov r7, r8
	adds r7, #0xbc
	ldr r1, [r7]
	ldr r0, [r1, #8]
	ands r0, r2
	str r0, [r1, #8]
	movs r0, #0xc0
	add r0, r8
	mov ip, r0
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ands r0, r2
	str r0, [r1, #8]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #4
	beq _080F08FA
	ldr r1, [r4]
	ldr r0, [r1, #8]
	orrs r0, r3
	str r0, [r1, #8]
	ldr r1, [r6]
	ldr r0, [r1, #8]
	orrs r0, r3
	str r0, [r1, #8]
	ldr r1, [r7]
	ldr r0, [r1, #8]
	orrs r0, r3
	str r0, [r1, #8]
	mov r2, ip
	ldr r1, [r2]
	b _080F091C
_080F08FA:
	ldr r2, [r4]
	mvns r1, r3
	mov r4, sb
	ands r1, r4
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
	ldr r2, [r6]
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
	ldr r1, [r7]
	ldr r0, [r1, #8]
	orrs r0, r3
	str r0, [r1, #8]
	mov r7, ip
	ldr r1, [r7]
_080F091C:
	ldr r0, [r1, #8]
	orrs r0, r3
	str r0, [r1, #8]
	movs r0, #0
	mov r1, sl
	strb r0, [r1]
_080F0928:
	adds r0, r5, #0
	bl sub_080F097C
	movs r0, #0x20
	b _080F0966
_080F0932:
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r2, [r0, #0x78]
	ldr r0, _080F0978 @ =sub_080F05CC
	cmp r2, r0
	bne _080F0968
	mov r0, r8
	adds r0, #0xb8
	ldr r0, [r0]
	ldr r1, [r0, #0x78]
	cmp r1, r2
	bne _080F0968
	mov r0, r8
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r2, [r0, #0x78]
	cmp r2, r1
	bne _080F0968
	mov r0, r8
	adds r0, #0xc0
	ldr r0, [r0]
	ldr r0, [r0, #0x78]
	cmp r0, r2
	bne _080F0968
	subs r0, r3, #1
_080F0966:
	strh r0, [r5, #4]
_080F0968:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F0978: .4byte sub_080F05CC

	thumb_func_start sub_080F097C
sub_080F097C: @ 0x080F097C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080F09A4 @ =sub_080F09E4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #9
	bls _080F09A8
	movs r0, #0xf
	b _080F09AA
	.align 2, 0
_080F09A4: .4byte sub_080F09E4
_080F09A8:
	movs r0, #5
_080F09AA:
	strb r0, [r1]
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #0x30
	bl sub_080F3974
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080F09E0 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F09E0: .4byte 0xFFFFFDFF

	thumb_func_start sub_080F09E4
sub_080F09E4: @ 0x080F09E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080F0ACC
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _080F0AA8 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080F0A34
	b _080F0C9A
_080F0A34:
	ldr r1, _080F0AAC @ =gUnk_02020EE0
	ldr r0, _080F0AB0 @ =gUnk_0203AD3C
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
	beq _080F0A52
	b _080F0C9A
_080F0A52:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F0A64
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080F0A64
	b _080F0C9A
_080F0A64:
	ldr r1, _080F0AB4 @ =gUnk_08D60FA4
	ldr r4, _080F0AB8 @ =gSongTable
	ldr r2, _080F0ABC @ =0x00000C6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F0A8A
	ldr r1, _080F0AC0 @ =0x00000C68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080F0A8A
	b _080F0C9A
_080F0A8A:
	cmp r3, #0
	beq _080F0A9E
	ldr r0, _080F0AC4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F0A9E
	b _080F0C9A
_080F0A9E:
	ldr r0, _080F0AC8 @ =0x0000018D
	bl m4aSongNumStart
	b _080F0C9A
	.align 2, 0
_080F0AA8: .4byte gUnk_0203AD40
_080F0AAC: .4byte gUnk_02020EE0
_080F0AB0: .4byte gUnk_0203AD3C
_080F0AB4: .4byte gUnk_08D60FA4
_080F0AB8: .4byte gSongTable
_080F0ABC: .4byte 0x00000C6C
_080F0AC0: .4byte 0x00000C68
_080F0AC4: .4byte gUnk_0203AD10
_080F0AC8: .4byte 0x0000018D
_080F0ACC:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080F0AF8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0AF4 @ =0xFFFFFD00
	adds r3, r1, #0
	cmp r0, r2
	blt _080F0B10
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _080F0B1C
	b _080F0B1A
	.align 2, 0
_080F0AF4: .4byte 0xFFFFFD00
_080F0AF8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r3, r1, #0
	cmp r0, r2
	ble _080F0B14
_080F0B10:
	strh r2, [r3]
	b _080F0B1C
_080F0B14:
	ldr r1, _080F0B58 @ =0xFFFFFD00
	cmp r0, r1
	bge _080F0B1C
_080F0B1A:
	strh r1, [r3]
_080F0B1C:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080F0B2E
	b _080F0C9A
_080F0B2E:
	ldr r2, [r4, #0x70]
	mov r8, r2
	movs r0, #0
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080F0C3E
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #9
	bls _080F0B5C
	movs r0, #0xe
	b _080F0B5E
	.align 2, 0
_080F0B58: .4byte 0xFFFFFD00
_080F0B5C:
	movs r0, #4
_080F0B5E:
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080F0BFC @ =gUnk_02020EE0
	ldr r0, _080F0C00 @ =gUnk_0203AD3C
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
	bne _080F0BDE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F0B9E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F0BDE
_080F0B9E:
	ldr r1, _080F0C04 @ =gUnk_08D60FA4
	ldr r5, _080F0C08 @ =gSongTable
	ldr r2, _080F0C0C @ =0x00000C74
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F0BC4
	movs r1, #0xc7
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F0BDE
_080F0BC4:
	cmp r3, #0
	beq _080F0BD6
	ldr r0, _080F0C10 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F0BDE
_080F0BD6:
	movs r0, #0xc7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F0BDE:
	ldrb r2, [r7]
	movs r1, #3
	ands r1, r2
	cmp r1, #0
	beq _080F0C14
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #3
	bl sub_080A8D18
	b _080F0C3E
	.align 2, 0
_080F0BFC: .4byte gUnk_02020EE0
_080F0C00: .4byte gUnk_0203AD3C
_080F0C04: .4byte gUnk_08D60FA4
_080F0C08: .4byte gSongTable
_080F0C0C: .4byte 0x00000C74
_080F0C10: .4byte gUnk_0203AD10
_080F0C14:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080F0C2C
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_080A8D18
	b _080F0C3E
_080F0C2C:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080F0C3E
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_080A8C28
_080F0C3E:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _080F0C9A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F0C84
	ldr r0, _080F0C80 @ =gUnk_08357018
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080F0C9A
	.align 2, 0
_080F0C80: .4byte gUnk_08357018
_080F0C84:
	ldr r0, _080F0CA8 @ =gUnk_08357028
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080F0C9A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F0CA8: .4byte gUnk_08357028

	thumb_func_start sub_080F0CAC
sub_080F0CAC: @ 0x080F0CAC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080F0CDC @ =sub_080F0D10
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _080F0CE0
	movs r0, #0x10
	b _080F0CE2
	.align 2, 0
_080F0CDC: .4byte sub_080F0D10
_080F0CE0:
	movs r0, #6
_080F0CE2:
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #4
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080F0D10
sub_080F0D10: @ 0x080F0D10
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	movs r6, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080F0D34
	movs r0, #0xc0
	strh r0, [r1]
_080F0D34:
	ldr r5, [r3, #0x40]
	ldr r0, _080F0D5C @ =0xFFFFFA00
	adds r2, r5, r0
	adds r1, r3, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r4, [r0, #0x40]
	adds r7, r1, #0
	cmp r2, r4
	ble _080F0D6A
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F0D60
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	b _080F0D86
	.align 2, 0
_080F0D5C: .4byte 0xFFFFFA00
_080F0D60:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	b _080F0DAC
_080F0D6A:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r5, r1
	cmp r0, r4
	bge _080F0DC8
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F0DA4
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
_080F0D86:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F0DA0 @ =0xFFFFFE80
	cmp r0, r2
	blt _080F0D9A
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F0DF2
_080F0D9A:
	strh r2, [r1]
	b _080F0DF2
	.align 2, 0
_080F0DA0: .4byte 0xFFFFFE80
_080F0DA4:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
_080F0DAC:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F0D9A
	ldr r2, _080F0DC4 @ =0xFFFFFE80
	cmp r0, r2
	bge _080F0DF2
	b _080F0D9A
	.align 2, 0
_080F0DC4: .4byte 0xFFFFFE80
_080F0DC8:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F0DE4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F0DF2
	b _080F0DF0
_080F0DE4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F0DF2
_080F0DF0:
	strh r6, [r1]
_080F0DF2:
	ldr r0, [r7]
	ldr r0, [r0, #0x40]
	ldr r1, [r3, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080F0E0C
	ldr r0, _080F0E08 @ =0x000007FF
	cmp r2, r0
	ble _080F0E14
	b _080F0E34
	.align 2, 0
_080F0E08: .4byte 0x000007FF
_080F0E0C:
	subs r1, r1, r0
	ldr r0, _080F0E3C @ =0x000007FF
	cmp r1, r0
	bgt _080F0E34
_080F0E14:
	ldr r0, [r7]
	ldr r1, [r3, #0x44]
	ldr r2, _080F0E40 @ =0xFFFFF800
	adds r1, r1, r2
	ldr r0, [r0, #0x44]
	cmp r0, r1
	blt _080F0E34
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F0E34
	adds r0, r3, #0
	bl sub_080F0E44
_080F0E34:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F0E3C: .4byte 0x000007FF
_080F0E40: .4byte 0xFFFFF800

	thumb_func_start sub_080F0E44
sub_080F0E44: @ 0x080F0E44
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080F0E6C @ =sub_080F0EAC
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #9
	bls _080F0E70
	movs r0, #0x11
	b _080F0E72
	.align 2, 0
_080F0E6C: .4byte sub_080F0EAC
_080F0E70:
	movs r0, #7
_080F0E72:
	strb r0, [r1]
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #0x35
	bl sub_080F3974
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080F0EA8 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F0EA8: .4byte 0xFFFFFDFF

	thumb_func_start sub_080F0EAC
sub_080F0EAC: @ 0x080F0EAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #8]
	movs r0, #4
	ldrsh r5, [r4, r0]
	cmp r5, #0
	beq _080F0F94
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _080F0F70 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080F0EFC
	b _080F1122
_080F0EFC:
	ldr r1, _080F0F74 @ =gUnk_02020EE0
	ldr r0, _080F0F78 @ =gUnk_0203AD3C
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
	beq _080F0F1A
	b _080F1122
_080F0F1A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F0F2C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080F0F2C
	b _080F1122
_080F0F2C:
	ldr r1, _080F0F7C @ =gUnk_08D60FA4
	ldr r4, _080F0F80 @ =gSongTable
	ldr r2, _080F0F84 @ =0x00000C6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F0F52
	ldr r1, _080F0F88 @ =0x00000C68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080F0F52
	b _080F1122
_080F0F52:
	cmp r3, #0
	beq _080F0F66
	ldr r0, _080F0F8C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F0F66
	b _080F1122
_080F0F66:
	ldr r0, _080F0F90 @ =0x0000018D
	bl m4aSongNumStart
	b _080F1122
	.align 2, 0
_080F0F70: .4byte gUnk_0203AD40
_080F0F74: .4byte gUnk_02020EE0
_080F0F78: .4byte gUnk_0203AD3C
_080F0F7C: .4byte gUnk_08D60FA4
_080F0F80: .4byte gSongTable
_080F0F84: .4byte 0x00000C6C
_080F0F88: .4byte 0x00000C68
_080F0F8C: .4byte gUnk_0203AD10
_080F0F90: .4byte 0x0000018D
_080F0F94:
	adds r3, r4, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x80
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080F0FE0 @ =0xFFFFFD00
	cmp r0, r1
	bge _080F0FAA
	strh r1, [r3]
_080F0FAA:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080F0FBC
	b _080F1122
_080F0FBC:
	ldr r2, [r4, #0x70]
	mov r8, r2
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	strh r5, [r3]
	adds r0, #0x4f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080F10C6
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #9
	bls _080F0FE4
	movs r0, #0x10
	b _080F0FE6
	.align 2, 0
_080F0FE0: .4byte 0xFFFFFD00
_080F0FE4:
	movs r0, #6
_080F0FE6:
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080F1084 @ =gUnk_02020EE0
	ldr r0, _080F1088 @ =gUnk_0203AD3C
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
	bne _080F1066
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F1026
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F1066
_080F1026:
	ldr r1, _080F108C @ =gUnk_08D60FA4
	ldr r5, _080F1090 @ =gSongTable
	ldr r2, _080F1094 @ =0x00000C74
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F104C
	movs r1, #0xc7
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F1066
_080F104C:
	cmp r3, #0
	beq _080F105E
	ldr r0, _080F1098 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1066
_080F105E:
	movs r0, #0xc7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F1066:
	ldrb r2, [r7]
	movs r1, #3
	ands r1, r2
	cmp r1, #0
	beq _080F109C
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #3
	bl sub_080A8D18
	b _080F10C6
	.align 2, 0
_080F1084: .4byte gUnk_02020EE0
_080F1088: .4byte gUnk_0203AD3C
_080F108C: .4byte gUnk_08D60FA4
_080F1090: .4byte gSongTable
_080F1094: .4byte 0x00000C74
_080F1098: .4byte gUnk_0203AD10
_080F109C:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080F10B4
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_080A8D18
	b _080F10C6
_080F10B4:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080F10C6
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_080A8C28
_080F10C6:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _080F1122
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F110C
	ldr r0, _080F1108 @ =gUnk_08357018
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080F1122
	.align 2, 0
_080F1108: .4byte gUnk_08357018
_080F110C:
	ldr r0, _080F1130 @ =gUnk_08357028
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080F1122:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F1130: .4byte gUnk_08357028

	thumb_func_start sub_080F1134
sub_080F1134: @ 0x080F1134
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080F1158 @ =sub_080F118C
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r1, [r2]
	cmp r1, #9
	bhi _080F115C
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	movs r0, #8
	b _080F1164
	.align 2, 0
_080F1158: .4byte sub_080F118C
_080F115C:
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	movs r0, #0x12
_080F1164:
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	adds r1, #0x4d
	movs r0, #0x24
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F118C
sub_080F118C: @ 0x080F118C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	bne _080F11BA
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	b _080F129E
_080F11BA:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F11F0 @ =0xFFFFFB00
	cmp r0, r2
	bge _080F11D0
	strh r2, [r1]
_080F11D0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F11F8
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #8
	bne _080F11F4
	movs r0, #0
	b _080F11F6
	.align 2, 0
_080F11F0: .4byte 0xFFFFFB00
_080F11F4:
	movs r0, #0xa
_080F11F6:
	strb r0, [r1]
_080F11F8:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F129E
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080F1222
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
_080F1222:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080F129E
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r2, [r0]
	adds r1, r2, #0
	adds r3, r0, #0
	cmp r1, #2
	beq _080F124C
	cmp r1, #0xc
	bne _080F1254
_080F124C:
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	b _080F125C
_080F1254:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
_080F125C:
	movs r0, #0
	strb r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1288
	ldr r0, _080F1284 @ =gUnk_08357018
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080F129E
	.align 2, 0
_080F1284: .4byte gUnk_08357018
_080F1288:
	ldr r0, _080F12A4 @ =gUnk_08357028
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r1, [r1]
	subs r1, #0xbc
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080F129E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F12A4: .4byte gUnk_08357028

	thumb_func_start sub_080F12A8
sub_080F12A8: @ 0x080F12A8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080F12C4 @ =sub_080F12F8
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #9
	bhi _080F12C8
	movs r0, #9
	b _080F12CA
	.align 2, 0
_080F12C4: .4byte sub_080F12F8
_080F12C8:
	movs r0, #0x13
_080F12CA:
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strh r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080F12F8
sub_080F12F8: @ 0x080F12F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _080F1338 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080F134A
	adds r5, r4, #0
	adds r5, #0x60
	adds r3, r0, #0
_080F130C:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _080F133C @ =gUnk_02020EE0
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r5]
	cmp r0, r6
	bne _080F1340
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080F13E2
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	b _080F13DE
	.align 2, 0
_080F1338: .4byte gUnk_0203AD44
_080F133C: .4byte gUnk_02020EE0
_080F1340:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _080F130C
_080F134A:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080F13E2
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F13E2
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080F13E8 @ =gUnk_02020EE0
	ldr r0, _080F13EC @ =gUnk_0203AD3C
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
	bne _080F13D4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F1394
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F13D4
_080F1394:
	ldr r1, _080F13F0 @ =gUnk_08D60FA4
	ldr r5, _080F13F4 @ =gSongTable
	ldr r2, _080F13F8 @ =0x00000C74
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F13BA
	movs r6, #0xc7
	lsls r6, r6, #4
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F13D4
_080F13BA:
	cmp r3, #0
	beq _080F13CC
	ldr r0, _080F13FC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F13D4
_080F13CC:
	movs r0, #0xc7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F13D4:
	movs r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
_080F13DE:
	orrs r0, r1
	str r0, [r4, #8]
_080F13E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F13E8: .4byte gUnk_02020EE0
_080F13EC: .4byte gUnk_0203AD3C
_080F13F0: .4byte gUnk_08D60FA4
_080F13F4: .4byte gSongTable
_080F13F8: .4byte 0x00000C74
_080F13FC: .4byte gUnk_0203AD10

	thumb_func_start sub_080F1400
sub_080F1400: @ 0x080F1400
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
	ldr r1, _080F1444 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080F1448 @ =gUnk_020229E0
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	ldr r6, [sp]
	adds r6, #0xbc
	b _080F1460
	.align 2, 0
_080F1444: .4byte gUnk_020229D4
_080F1448: .4byte gUnk_020229E0
_080F144C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080F1468
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080F1460:
	cmp r0, #0
	bne _080F144C
	orrs r2, r3
	str r2, [r1]
_080F1468:
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
	movs r0, #0xbe
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

	thumb_func_start sub_080F14CC
sub_080F14CC: @ 0x080F14CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F1500 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F1504 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F1508
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080F1510
	.align 2, 0
_080F1500: .4byte ObjectMain
_080F1504: .4byte ObjectDestroy
_080F1508:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080F1510:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r1, [r6, #8]
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
	ldr r0, [r6, #0x5c]
	ldr r2, _080F1590 @ =0x001080A0
	orrs r0, r2
	str r0, [r6, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080F1594 @ =sub_080F5744
	str r0, [r6, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	movs r5, #8
	rsbs r5, r5, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	adds r0, r6, #0
	bl sub_080F1598
	movs r0, #0xb4
	strh r0, [r6, #4]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F1590: .4byte 0x001080A0
_080F1594: .4byte sub_080F5744

	thumb_func_start sub_080F1598
sub_080F1598: @ 0x080F1598
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
	beq _080F15B8
	cmp r0, #0xc
	bne _080F15BA
_080F15B8:
	movs r7, #0xc
_080F15BA:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #1
	bne _080F15E6
	movs r0, #0xb
	strb r0, [r6]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #8
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_080F3974
	movs r4, #1
_080F15E6:
	ldr r2, _080F1614 @ =sub_080F1690
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	cmp r4, #0
	beq _080F15F8
	movs r0, #0xb
	strb r0, [r6]
_080F15F8:
	cmp r7, #0
	beq _080F15FE
	strb r7, [r6]
_080F15FE:
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x70]
	adds r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F1618
	movs r0, #8
	b _080F1686
	.align 2, 0
_080F1614: .4byte sub_080F1690
_080F1618:
	ldr r2, _080F163C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F1640 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F1644 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080F1688
	lsls r0, r1, #2
	ldr r1, _080F1648 @ =_080F164C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F163C: .4byte gRngVal
_080F1640: .4byte 0x00196225
_080F1644: .4byte 0x3C6EF35F
_080F1648: .4byte _080F164C
_080F164C: @ jump table
	.4byte _080F166C @ case 0
	.4byte _080F1670 @ case 1
	.4byte _080F1684 @ case 2
	.4byte _080F1674 @ case 3
	.4byte _080F1678 @ case 4
	.4byte _080F167C @ case 5
	.4byte _080F1680 @ case 6
	.4byte _080F1684 @ case 7
_080F166C:
	movs r0, #0x78
	b _080F1686
_080F1670:
	movs r0, #0x5a
	b _080F1686
_080F1674:
	movs r0, #0x14
	b _080F1686
_080F1678:
	movs r0, #0x2d
	b _080F1686
_080F167C:
	movs r0, #0x5a
	b _080F1686
_080F1680:
	movs r0, #0x2d
	b _080F1686
_080F1684:
	movs r0, #0x3c
_080F1686:
	strh r0, [r5, #4]
_080F1688:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F1690
sub_080F1690: @ 0x080F1690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sl, r0
	movs r7, #0xf4
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
	cmp r0, #0xc
	bne _080F1736
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x1c
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r4, r1, r0
	cmp r4, #0
	blt _080F16E8
	cmp r4, #5
	ble _080F16F6
	adds r6, r3, #0
	mov sb, r2
	lsls r7, r7, #0x18
	mov r8, r7
	b _080F1784
_080F16E8:
	subs r0, r0, r1
	adds r6, r3, #0
	mov sb, r2
	lsls r2, r7, #0x18
	mov r8, r2
	cmp r0, #5
	bgt _080F1784
_080F16F6:
	adds r3, r5, #0
	adds r3, #0xa2
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r2, r7, #0x18
	asrs r0, r2, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r4, r1, r0
	adds r6, r3, #0
	mov r8, r2
	cmp r4, #0
	blt _080F171E
	cmp r4, #5
	ble _080F172A
	movs r0, #0x83
	adds r0, r0, r5
	mov sb, r0
	b _080F1784
_080F171E:
	subs r0, r0, r1
	movs r1, #0x83
	adds r1, r1, r5
	mov sb, r1
	cmp r0, #5
	bgt _080F1784
_080F172A:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
	mov sb, r1
	b _080F1784
_080F1736:
	cmp r0, #0xa
	bne _080F176E
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r6, r3, #0
	mov sb, r2
	lsls r7, r7, #0x18
	mov r8, r7
	cmp r0, #1
	bne _080F1784
	movs r0, #0xb
	strb r0, [r2]
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #8
	bl sub_080F3974
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_080F3974
	b _080F1784
_080F176E:
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r6, r3, #0
	mov sb, r2
	lsls r7, r7, #0x18
	mov r8, r7
	cmp r0, #3
	bne _080F1784
	movs r0, #0xa
	strb r0, [r2]
_080F1784:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #2
	beq _080F179A
	cmp r0, #0xc
	beq _080F179A
	b _080F18F0
_080F179A:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080F17D8 @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r6, r8
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080F17DC
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
	ble _080F1826
	strh r2, [r1]
	b _080F1826
	.align 2, 0
_080F17D8: .4byte 0xFFFFFC00
_080F17DC:
	cmp r4, r0
	bge _080F17FC
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F17F8 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F1826
	strh r2, [r1]
	b _080F1826
	.align 2, 0
_080F17F8: .4byte 0xFFFFFE40
_080F17FC:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F1818
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F1826
	b _080F1824
_080F1818:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F1826
_080F1824:
	strh r3, [r1]
_080F1826:
	ldr r4, [r5, #0x40]
	ldr r1, _080F1864 @ =0xFFFFFC00
	ands r4, r1
	adds r0, r5, #0
	adds r0, #0xa0
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0x1c
	lsls r0, r0, #8
	ands r0, r1
	cmp r4, r0
	bge _080F186C
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
	bgt _080F189C
	ldr r2, _080F1868 @ =0xFFFFFDC0
	b _080F1A0C
	.align 2, 0
_080F1864: .4byte 0xFFFFFC00
_080F1868: .4byte 0xFFFFFDC0
_080F186C:
	cmp r4, r0
	ble _080F18C4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F18A4
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F18A0 @ =0xFFFFFDC0
	cmp r0, r2
	blt _080F189C
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080F189C
	b _080F1A3E
_080F189C:
	strh r2, [r1]
	b _080F1A3E
	.align 2, 0
_080F18A0: .4byte 0xFFFFFDC0
_080F18A4:
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
	bgt _080F189C
	ldr r2, _080F18C0 @ =0xFFFFFDC0
	b _080F1A0C
	.align 2, 0
_080F18C0: .4byte 0xFFFFFDC0
_080F18C4:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080F18E4
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080F18E2
	b _080F1A3E
_080F18E2:
	b _080F1A3A
_080F18E4:
	ldr r6, _080F18EC @ =0xFFFFFE80
	adds r0, r2, r6
	b _080F1A32
	.align 2, 0
_080F18EC: .4byte 0xFFFFFE80
_080F18F0:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080F1930 @ =0xFFFFFC00
	ands r4, r2
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r6, r8
	asrs r1, r6, #0x18
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r4, r0
	ble _080F1934
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
	ble _080F1980
	strh r2, [r1]
	b _080F1980
	.align 2, 0
_080F1930: .4byte 0xFFFFFC00
_080F1934:
	cmp r4, r0
	bge _080F1954
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F1950 @ =0xFFFFFEB0
	cmp r0, r2
	bge _080F1980
	strh r2, [r1]
	b _080F1980
	.align 2, 0
_080F1950: .4byte 0xFFFFFEB0
_080F1954:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080F1972
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r2, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080F1980
	b _080F197E
_080F1972:
	ldr r4, _080F19B8 @ =0xFFFFFF00
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080F1980
_080F197E:
	strh r3, [r1]
_080F1980:
	ldr r4, [r5, #0x40]
	ldr r1, _080F19BC @ =0xFFFFFC00
	ands r4, r1
	adds r0, r5, #0
	adds r0, #0xa0
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0x1c
	lsls r0, r0, #8
	ands r0, r1
	cmp r4, r0
	bge _080F19C0
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
	ble _080F1A08
	movs r0, #0xe0
	b _080F1A3C
	.align 2, 0
_080F19B8: .4byte 0xFFFFFF00
_080F19BC: .4byte 0xFFFFFC00
_080F19C0:
	cmp r4, r0
	ble _080F1A12
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F19F2
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
	bge _080F19EA
	b _080F189C
_080F19EA:
	cmp r0, #0xe0
	ble _080F1A3E
	movs r0, #0xe0
	b _080F1A3C
_080F19F2:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F1A08
	movs r0, #0xe0
	b _080F1A3C
_080F1A08:
	movs r2, #0xe0
	rsbs r2, r2, #0
_080F1A0C:
	cmp r0, r2
	bge _080F1A3E
	b _080F189C
_080F1A12:
	adds r1, r5, #0
	adds r1, #0x50

