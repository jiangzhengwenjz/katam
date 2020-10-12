	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateWaddleDoo
CreateWaddleDoo: @ 0x080B6968
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B699C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B69A0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B69A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B69AC
	.align 2, 0
_080B699C: .4byte ObjectMain
_080B69A0: .4byte ObjectDestroy
_080B69A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B69AC:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
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
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	ldr r1, _080B6A30 @ =0xFFFFF000
	ands r0, r1
	subs r0, r0, r2
	subs r0, #1
	str r0, [r4, #0x44]
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B6A0E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080B6A0E:
	adds r0, r4, #0
	bl ObjectInitSprite
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	beq _080B6A34
	cmp r0, #1
	ble _080B6A26
	cmp r0, #2
	beq _080B6A3C
	cmp r0, #3
	beq _080B6A44
_080B6A26:
	adds r0, r4, #0
	bl sub_080B6AD8
	b _080B6A4A
	.align 2, 0
_080B6A30: .4byte 0xFFFFF000
_080B6A34:
	adds r0, r4, #0
	bl sub_080B7460
	b _080B6A4A
_080B6A3C:
	adds r0, r4, #0
	bl sub_080B7408
	b _080B6A4A
_080B6A44:
	adds r0, r4, #0
	bl sub_080B7428
_080B6A4A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B6A54
sub_080B6A54: @ 0x080B6A54
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080B6A7E
	cmp r0, #1
	ble _080B6AB8
	cmp r0, #2
	beq _080B6AC0
	cmp r0, #3
	beq _080B6AC8
	b _080B6AB8
_080B6A7E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #2
	bne _080B6A90
	adds r0, r4, #0
	bl sub_080B73D8
	b _080B6ACE
_080B6A90:
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
_080B6AB8:
	adds r0, r4, #0
	bl sub_080B6AD8
	b _080B6ACE
_080B6AC0:
	adds r0, r4, #0
	bl sub_080B7408
	b _080B6ACE
_080B6AC8:
	adds r0, r4, #0
	bl sub_080B7428
_080B6ACE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B6AD8
sub_080B6AD8: @ 0x080B6AD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B6B10 @ =sub_080B6B68
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B6AFA
	movs r0, #0x41
	strh r0, [r4, #4]
_080B6AFA:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #1
	beq _080B6B2C
	cmp r2, #1
	bgt _080B6B14
	cmp r2, #0
	beq _080B6B1E
	b _080B6B4E
	.align 2, 0
_080B6B10: .4byte sub_080B6B68
_080B6B14:
	cmp r2, #2
	beq _080B6B34
	cmp r2, #3
	beq _080B6B3E
	b _080B6B4E
_080B6B1E:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x80
	strh r1, [r0]
	adds r0, #0x33
	b _080B6B4C
_080B6B2C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080B6B46
_080B6B34:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080B6B46
_080B6B3E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080B6B46:
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
_080B6B4C:
	strb r2, [r0]
_080B6B4E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6B62
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B6B62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6B68
sub_080B6B68: @ 0x080B6B68
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r4, #4
	orrs r2, r4
	str r2, [r3, #8]
	movs r0, #0x62
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B6B94
	eors r2, r5
	str r2, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B6B94:
	mov r0, ip
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080B6BF6
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _080B6BF6
	ldr r2, _080B6BCC @ =gRngVal
	ldr r0, [r2]
	ldr r4, _080B6BD0 @ =0x00196225
	muls r0, r4, r0
	ldr r1, _080B6BD4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	ands r1, r5
	cmp r1, #0
	beq _080B6BD8
	adds r0, r3, #0
	bl sub_080B6C78
	b _080B6BF6
	.align 2, 0
_080B6BCC: .4byte gRngVal
_080B6BD0: .4byte 0x00196225
_080B6BD4: .4byte 0x3C6EF35F
_080B6BD8:
	muls r0, r4, r0
	ldr r4, _080B6BEC @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080B6BF0
	strh r1, [r3, #4]
	b _080B6BF6
	.align 2, 0
_080B6BEC: .4byte 0x3C6EF35F
_080B6BF0:
	adds r0, r3, #0
	bl sub_080B6BFC
_080B6BF6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6BFC
sub_080B6BFC: @ 0x080B6BFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B6C2C @ =sub_080B7324
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x33
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B6C42
	cmp r0, #1
	bgt _080B6C30
	cmp r0, #0
	beq _080B6C3A
	b _080B6C5E
	.align 2, 0
_080B6C2C: .4byte sub_080B7324
_080B6C30:
	cmp r0, #2
	beq _080B6C4A
	cmp r0, #3
	beq _080B6C54
	b _080B6C5E
_080B6C3A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080B6C5C
_080B6C42:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080B6C5C
_080B6C4A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080B6C5C
_080B6C54:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080B6C5C:
	strh r0, [r1]
_080B6C5E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6C72
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B6C72:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6C78
sub_080B6C78: @ 0x080B6C78
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B6CA4 @ =sub_080B7360
	movs r1, #6
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B6CBA
	cmp r0, #1
	bgt _080B6CA8
	cmp r0, #0
	beq _080B6CB2
	b _080B6CD2
	.align 2, 0
_080B6CA4: .4byte sub_080B7360
_080B6CA8:
	cmp r0, #2
	beq _080B6CC2
	cmp r0, #3
	beq _080B6CCA
	b _080B6CD2
_080B6CB2:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x10
	b _080B6CD0
_080B6CBA:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0xa
	b _080B6CD0
_080B6CC2:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #8
	b _080B6CD0
_080B6CCA:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #6
_080B6CD0:
	strb r0, [r1]
_080B6CD2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6CD8
sub_080B6CD8: @ 0x080B6CD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B6CF6
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080B6CF6:
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6D2A
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080B6D1C
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_080B6DDC
	b _080B6D24
_080B6D1C:
	ldrb r1, [r4, #4]
	adds r0, r4, #0
	bl sub_080B6DDC
_080B6D24:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B6D2A:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B6D52
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B6D4C
	adds r0, r4, #0
	bl sub_080B7428
	b _080B6D52
_080B6D4C:
	adds r0, r4, #0
	bl sub_080B6AD8
_080B6D52:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6D58
sub_080B6D58: @ 0x080B6D58
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r4, r2, #0
	adds r4, #0x62
	ldrb r0, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080B6DBE
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bne _080B6D82
	adds r0, r2, #0
	bl sub_080B6A54
	b _080B6DD6
_080B6D82:
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x50
	movs r0, #0x80
	strh r0, [r3]
	ldrb r1, [r4]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080B6DAE
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
_080B6DAE:
	ldr r0, [r2, #8]
	ands r0, r4
	cmp r0, #0
	beq _080B6DD6
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _080B6DD6
_080B6DBE:
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_080B6DD6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6DDC
sub_080B6DDC: @ 0x080B6DDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080B6E14 @ =sub_080B7068
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B6E18 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B6E1C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B6E24
	.align 2, 0
_080B6E14: .4byte sub_080B7068
_080B6E18: .4byte sub_0803DCCC
_080B6E1C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B6E24:
	adds r4, r0, #0
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
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080B6EE4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B6E74
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B6E74:
	adds r0, r4, #0
	adds r0, #0x63
	strb r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080B6EE8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r2, _080B6EEC @ =gUnk_0835464C
	lsls r1, r7, #1
	lsls r0, r7, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x50
	strh r0, [r3]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _080B6EF4
	ldr r0, [r4, #0x40]
	ldr r2, _080B6EF0 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _080B6F08
	.align 2, 0
_080B6EE4: .4byte gUnk_03000510
_080B6EE8: .4byte 0x20000043
_080B6EEC: .4byte gUnk_0835464C
_080B6EF0: .4byte 0xFFFFF800
_080B6EF4:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080B6F08:
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	movs r3, #0xcc
	lsls r3, r3, #2
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, r8
	strb r0, [r5]
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B6F92
	ldr r2, _080B6F80 @ =gUnk_02020EE0
	ldr r0, _080B6F84 @ =gUnk_0203AD3C
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
	bne _080B6F8C
	ldr r0, _080B6F88 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080B6FB4
	.align 2, 0
_080B6F80: .4byte gUnk_02020EE0
_080B6F84: .4byte gUnk_0203AD3C
_080B6F88: .4byte gUnk_08351648
_080B6F8C:
	mov r0, r8
	strb r0, [r5]
	b _080B6FDA
_080B6F92:
	ldr r2, _080B6FD0 @ =gUnk_02020EE0
	ldr r0, _080B6FD4 @ =gUnk_0203AD3C
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
	bne _080B6FD8
	movs r6, #0xc2
	lsls r6, r6, #2
_080B6FB4:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B6FDA
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080B6FDA
	.align 2, 0
_080B6FD0: .4byte gUnk_02020EE0
_080B6FD4: .4byte gUnk_0203AD3C
_080B6FD8:
	strb r3, [r5]
_080B6FDA:
	ldr r1, _080B7050 @ =gUnk_02020EE0
	ldr r0, _080B7054 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080B7042
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B7002
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B7042
_080B7002:
	ldr r1, _080B7058 @ =gUnk_08D60FA4
	ldr r4, _080B705C @ =gSongTable
	ldr r2, _080B7060 @ =0x000009D4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B7028
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B7042
_080B7028:
	cmp r3, #0
	beq _080B703A
	ldr r0, _080B7064 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7042
_080B703A:
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B7042:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7050: .4byte gUnk_02020EE0
_080B7054: .4byte gUnk_0203AD3C
_080B7058: .4byte gUnk_08D60FA4
_080B705C: .4byte gSongTable
_080B7060: .4byte 0x000009D4
_080B7064: .4byte gUnk_0203AD10

	thumb_func_start sub_080B7068
sub_080B7068: @ 0x080B7068
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080B7088 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B708C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B7094
	.align 2, 0
_080B7088: .4byte gCurTask
_080B708C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B7094:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r2, _080B7100 @ =gUnk_02020EE0
	ldr r0, _080B7104 @ =gUnk_0203AD3C
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
	bne _080B7148
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080B7110
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B716C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #8
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B7108 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B710C @ =0x0400000A
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
	b _080B716C
	.align 2, 0
_080B7100: .4byte gUnk_02020EE0
_080B7104: .4byte gUnk_0203AD3C
_080B7108: .4byte 0xFFF7FFFF
_080B710C: .4byte 0x0400000A
_080B7110:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B716C
	movs r0, #8
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B7140 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B7144 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B716C
	.align 2, 0
_080B7140: .4byte 0xFFF7FFFF
_080B7144: .4byte 0x0400000A
_080B7148:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080B7162
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080B7162
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080B7162:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080B716C:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B71C2
	ldr r2, _080B71AC @ =gUnk_02020EE0
	ldr r0, _080B71B0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B71B8
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B721A
	ldr r0, _080B71B4 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080B71EE
	.align 2, 0
_080B71AC: .4byte gUnk_02020EE0
_080B71B0: .4byte gUnk_0203AD3C
_080B71B4: .4byte gUnk_08351648
_080B71B8:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080B721A
_080B71C2:
	ldr r2, _080B720C @ =gUnk_02020EE0
	ldr r0, _080B7210 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B7214
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B721A
	movs r6, #0xc2
	lsls r6, r6, #2
_080B71EE:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B721A
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B721A
	.align 2, 0
_080B720C: .4byte gUnk_02020EE0
_080B7210: .4byte gUnk_0203AD3C
_080B7214:
	adds r0, r5, #0
	adds r0, #0x2f
	strb r3, [r0]
_080B721A:
	ldr r6, [r5, #0x70]
	ldrh r2, [r7]
	ldr r3, _080B726C @ =0x0000FFFF
	cmp r2, r3
	beq _080B7236
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B7236
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r7]
_080B7236:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B7314
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B7270
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080B7270
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080B7314
	.align 2, 0
_080B726C: .4byte 0x0000FFFF
_080B7270:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B72E6
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B72E6
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080B72AC
	ldr r2, _080B72A4 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080B72A8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080B72AE
	.align 2, 0
_080B72A4: .4byte gCurLevelInfo
_080B72A8: .4byte 0x0000065E
_080B72AC:
	movs r1, #0xff
_080B72AE:
	cmp r1, #0xff
	beq _080B72E6
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B731C @ =gUnk_02022EB0
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
	ldr r2, _080B7320 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B72E6:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B730E
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
_080B730E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080B7314:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B731C: .4byte gUnk_02022EB0
_080B7320: .4byte gUnk_02022F50

	thumb_func_start sub_080B7324
sub_080B7324: @ 0x080B7324
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080B7348
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B7348:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7358
	adds r0, r2, #0
	bl sub_080B6AD8
_080B7358:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7360
sub_080B7360: @ 0x080B7360
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B737E
	adds r1, r2, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080B737E:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B738E
	adds r0, r2, #0
	bl sub_080B7394
_080B738E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7394
sub_080B7394: @ 0x080B7394
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B73C0 @ =sub_080B6CD8
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	blt _080B73D0
	cmp r0, #1
	bgt _080B73C4
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #8
	b _080B73CE
	.align 2, 0
_080B73C0: .4byte sub_080B6CD8
_080B73C4:
	cmp r0, #3
	bgt _080B73D0
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #4
_080B73CE:
	strb r0, [r1]
_080B73D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B73D8
sub_080B73D8: @ 0x080B73D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B7404 @ =sub_080B6D58
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r1, #0x32
	movs r0, #5
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B7404: .4byte sub_080B6D58

	thumb_func_start sub_080B7408
sub_080B7408: @ 0x080B7408
	push {lr}
	ldr r2, _080B7418 @ =sub_080B741C
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080B7418: .4byte sub_080B741C

	thumb_func_start sub_080B741C
sub_080B741C: @ 0x080B741C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B7428
sub_080B7428: @ 0x080B7428
	push {lr}
	ldr r2, _080B7438 @ =sub_080B743C
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080B7438: .4byte sub_080B743C

	thumb_func_start sub_080B743C
sub_080B743C: @ 0x080B743C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3e
	ble _080B745C
	adds r0, r2, #0
	bl sub_080B6C78
_080B745C:
	pop {r0}
	bx r0

	thumb_func_start sub_080B7460
sub_080B7460: @ 0x080B7460
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080B74B0 @ =sub_080B74B4
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B74B0: .4byte sub_080B74B4

	thumb_func_start sub_080B74B4
sub_080B74B4: @ 0x080B74B4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080C29C0
	ldr r0, [r4, #8]
	ldr r1, _080B74D8 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080B73D8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B74D8: .4byte 0xFFFFDFFF
