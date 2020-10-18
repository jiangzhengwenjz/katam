	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateCupie
CreateCupie: @ 0x080A2A10
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A2A44 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A2A48 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A2A4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A2A54
	.align 2, 0
_080A2A44: .4byte ObjectMain
_080A2A48: .4byte ObjectDestroy
_080A2A4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A2A54:
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
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2AA4
	movs r0, #1
	orrs r2, r0
	b _080A2AAA
_080A2AA4:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080A2AAA:
	str r2, [r4, #8]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080A2AEC @ =gUnk_08351648
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
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080A2AE0
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xff
	strb r0, [r1]
_080A2AE0:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2AEC: .4byte gUnk_08351648

	thumb_func_start sub_080A2AF0
sub_080A2AF0: @ 0x080A2AF0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080A2B2E
	cmp r0, #2
	bgt _080A2B1A
	cmp r0, #1
	beq _080A2B26
	b _080A2B36
_080A2B1A:
	cmp r0, #4
	bgt _080A2B36
	adds r0, r2, #0
	bl sub_080A3AFC
	b _080A2B68
_080A2B26:
	adds r0, r2, #0
	bl sub_080A3A4C
	b _080A2B68
_080A2B2E:
	adds r0, r2, #0
	bl sub_080A3A24
	b _080A2B68
_080A2B36:
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080A2B5C @ =sub_080A2B6C
	str r0, [r2, #0x78]
	ldr r0, [r2, #8]
	ldr r1, _080A2B60 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A2B64
	movs r0, #0x87
	lsls r0, r0, #1
	b _080A2B66
	.align 2, 0
_080A2B5C: .4byte sub_080A2B6C
_080A2B60: .4byte 0xFFFFF7FF
_080A2B64:
	movs r0, #0x5a
_080A2B66:
	strh r0, [r2, #4]
_080A2B68:
	pop {r0}
	bx r0

	thumb_func_start sub_080A2B6C
sub_080A2B6C: @ 0x080A2B6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2B88
	b _080A2C92
_080A2B88:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r7, _080A2C40 @ =gUnk_08352FD4
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080A2C6A
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A2BBE
	subs r0, r1, #1
	strb r0, [r3]
_080A2BBE:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A2BE4
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A2BE4:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A2C44
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
	ldrh r2, [r1]
	mov r8, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2C12
	mov r0, r8
	strh r0, [r5]
_080A2C12:
	ldrb r2, [r3]
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2C6A
	mov r1, r8
	rsbs r0, r1, #0
	mov r2, ip
	b _080A2C68
	.align 2, 0
_080A2C40: .4byte gUnk_08352FD4
_080A2C44:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5]
	mov r2, ip
	ldrh r0, [r2]
	rsbs r0, r0, #0
_080A2C68:
	strh r0, [r2]
_080A2C6A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r2, ip
	ldrh r1, [r2]
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	strh r1, [r2]
	b _080A2D92
_080A2C92:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r7, _080A2D48 @ =gUnk_08352FD4
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080A2D6A
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A2CC8
	subs r0, r1, #1
	strb r0, [r3]
_080A2CC8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A2CEE
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A2CEE:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A2D4C
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
	ldrh r2, [r1]
	mov r8, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2D1C
	mov r0, r8
	strh r0, [r5]
_080A2D1C:
	ldrb r2, [r3]
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2D6A
	mov r1, r8
	mov r0, ip
	strh r1, [r0]
	b _080A2D6A
	.align 2, 0
_080A2D48: .4byte gUnk_08352FD4
_080A2D4C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	mov r2, ip
	strh r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5]
_080A2D6A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1]
_080A2D92:
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	ldrb r2, [r3]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080A2DB8
	ldrb r0, [r6]
	cmp r0, #0
	bne _080A2DB8
	movs r0, #0xff
	strb r0, [r3]
_080A2DB8:
	ldr r1, _080A2DF0 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2E20
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2DF4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A2DFC
	.align 2, 0
_080A2DF0: .4byte gUnk_083533F4
_080A2DF4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2DFC:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080A2E2C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A2E30 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A2E34 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2E20
	adds r0, r4, #0
	bl sub_080A3A74
_080A2E20:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2E2C: .4byte gRngVal
_080A2E30: .4byte 0x00196225
_080A2E34: .4byte 0x3C6EF35F

	thumb_func_start sub_080A2E38
sub_080A2E38: @ 0x080A2E38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r6, _080A2EEC @ =gUnk_08353070
	cmp r0, #0
	bne _080A2F14
	adds r3, r4, #0
	adds r3, #0x9f
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
	bne _080A2E6E
	subs r0, r1, #1
	strb r0, [r3]
_080A2E6E:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A2E94
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A2E94:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A2EF0
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
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A2EC2
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080A2EC2:
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A2F14
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080A2F14
	.align 2, 0
_080A2EEC: .4byte gUnk_08353070
_080A2EF0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
_080A2F14:
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r5, [r3]
	adds r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A2F6E
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A2F6E
	movs r0, #0xff
	orrs r0, r5
	strb r0, [r3]
_080A2F6E:
	ldr r1, _080A2FA8 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2FF0
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2FAC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A2FB4
	.align 2, 0
_080A2FA8: .4byte gUnk_083533F4
_080A2FAC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2FB4:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080A2FF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A2FFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A3000 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2FF0
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, _080A3004 @ =sub_080A3A9C
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	subs r1, #4
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A2FF0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2FF8: .4byte gRngVal
_080A2FFC: .4byte 0x00196225
_080A3000: .4byte 0x3C6EF35F
_080A3004: .4byte sub_080A3A9C

	thumb_func_start sub_080A3008
sub_080A3008: @ 0x080A3008
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r6, _080A30BC @ =gUnk_083532C8
	cmp r0, #0
	bne _080A30E4
	adds r3, r4, #0
	adds r3, #0x9f
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
	bne _080A303E
	subs r0, r1, #1
	strb r0, [r3]
_080A303E:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A3064
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A3064:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A30C0
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
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A3092
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080A3092:
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A30E4
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080A30E4
	.align 2, 0
_080A30BC: .4byte gUnk_083532C8
_080A30C0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
_080A30E4:
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r5, [r3]
	adds r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A313E
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A313E
	movs r0, #0xff
	orrs r0, r5
	strb r0, [r3]
_080A313E:
	ldr r1, _080A3178 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A31C0
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A317C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A3184
	.align 2, 0
_080A3178: .4byte gUnk_083533F4
_080A317C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A3184:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080A31C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A31CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A31D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A31C0
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, _080A31D4 @ =sub_080A3A9C
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	subs r1, #4
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A31C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A31C8: .4byte gRngVal
_080A31CC: .4byte 0x00196225
_080A31D0: .4byte 0x3C6EF35F
_080A31D4: .4byte sub_080A3A9C

	thumb_func_start sub_080A31D8
sub_080A31D8: @ 0x080A31D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A31FE
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080A31FE:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	bgt _080A3210
	b _080A33CC
_080A3210:
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
	cmp r0, #0xf
	bls _080A324E
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0803D368
	ldr r3, [sp]
	str r0, [r3]
	mov r2, r8
	strb r2, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080A324E:
	ldr r2, [r4, #0x44]
	ldr r1, _080A327C @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	subs r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080A3280
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A32CC
	b _080A32CA
	.align 2, 0
_080A327C: .4byte 0xFFFFF000
_080A3280:
	cmp r2, r0
	bge _080A32A0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A329C @ =0xFFFFFF00
	cmp r0, r2
	bge _080A32CC
	b _080A32CA
	.align 2, 0
_080A329C: .4byte 0xFFFFFF00
_080A32A0:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A32BE
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A32CC
	mov r0, r8
	strh r0, [r1]
	b _080A32CC
_080A32BE:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A32CC
	mov r2, r8
_080A32CA:
	strh r2, [r1]
_080A32CC:
	ldr r2, [r4, #0x40]
	ldr r1, _080A32EC @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r7, r5]
	adds r0, #0x60
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080A32F0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A3328
	.align 2, 0
_080A32EC: .4byte 0xFFFFF000
_080A32F0:
	cmp r2, r0
	ble _080A334C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A3328
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A3324 @ =0xFFFFFF00
	cmp r0, r2
	blt _080A331E
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A3374
_080A331E:
	strh r2, [r1]
	b _080A3374
	.align 2, 0
_080A3324: .4byte 0xFFFFFF00
_080A3328:
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
	bgt _080A331E
	ldr r2, _080A3348 @ =0xFFFFFF00
	cmp r0, r2
	bge _080A3374
	b _080A331E
	.align 2, 0
_080A3348: .4byte 0xFFFFFF00
_080A334C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A3366
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3374
	b _080A3370
_080A3366:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3374
_080A3370:
	movs r0, #0
	strh r0, [r1]
_080A3374:
	ldr r0, [r4, #8]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080A3388
	b _080A35A4
_080A3388:
	ldr r1, [r4, #0x40]
	ldr r2, _080A33C4 @ =0xFFFFF000
	ands r1, r2
	ldr r3, [r3]
	ldr r0, [r3, #0x40]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r0, r0, r6
	ands r0, r2
	cmp r1, r0
	beq _080A33A0
	b _080A35A8
_080A33A0:
	ldr r1, [r4, #0x44]
	ands r1, r2
	ldr r0, [r3, #0x44]
	ldr r3, _080A33C8 @ =0xFFFFC000
	adds r0, r0, r3
	ands r0, r2
	cmp r1, r0
	beq _080A33B2
	b _080A35A8
_080A33B2:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r5, [r0]
	b _080A3578
	.align 2, 0
_080A33C4: .4byte 0xFFFFF000
_080A33C8: .4byte 0xFFFFC000
_080A33CC:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r6, #0
	mov r8, r6
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080A340A
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0803D368
	ldr r3, [sp]
	str r0, [r3]
	mov r0, r8
	strb r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080A340A:
	ldr r2, [r4, #0x44]
	ldr r1, _080A3438 @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	subs r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080A343C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A3488
	b _080A3486
	.align 2, 0
_080A3438: .4byte 0xFFFFF000
_080A343C:
	cmp r2, r0
	bge _080A345C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A3458 @ =0xFFFFFF00
	cmp r0, r2
	bge _080A3488
	b _080A3486
	.align 2, 0
_080A3458: .4byte 0xFFFFFF00
_080A345C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A347A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3488
	mov r0, r8
	strh r0, [r1]
	b _080A3488
_080A347A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3488
	mov r2, r8
_080A3486:
	strh r2, [r1]
_080A3488:
	ldr r2, [r4, #0x40]
	ldr r1, _080A34A8 @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r7, r5]
	subs r0, #0x60
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080A34AC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A34E4
	.align 2, 0
_080A34A8: .4byte 0xFFFFF000
_080A34AC:
	cmp r2, r0
	ble _080A3508
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A34E4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A34E0 @ =0xFFFFFF00
	cmp r0, r2
	blt _080A34DA
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A3530
_080A34DA:
	strh r2, [r1]
	b _080A3530
	.align 2, 0
_080A34E0: .4byte 0xFFFFFF00
_080A34E4:
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
	bgt _080A34DA
	ldr r2, _080A3504 @ =0xFFFFFF00
	cmp r0, r2
	bge _080A3530
	b _080A34DA
	.align 2, 0
_080A3504: .4byte 0xFFFFFF00
_080A3508:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A3522
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3530
	b _080A352C
_080A3522:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3530
_080A352C:
	movs r0, #0
	strh r0, [r1]
_080A3530:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080A35A4
	ldr r1, [r4, #0x40]
	ldr r2, _080A3594 @ =0xFFFFF000
	ands r1, r2
	ldr r3, [r3]
	ldr r0, [r3, #0x40]
	ldr r5, _080A3598 @ =0xFFFFA000
	adds r0, r0, r5
	ands r0, r2
	cmp r1, r0
	bne _080A35A8
	ldr r1, [r4, #0x44]
	ands r1, r2
	ldr r0, [r3, #0x44]
	ldr r6, _080A359C @ =0xFFFFC000
	adds r0, r0, r6
	ands r0, r2
	cmp r1, r0
	bne _080A35A8
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #2
	movs r0, #1
	strb r0, [r1]
_080A3578:
	ldr r0, _080A35A0 @ =sub_080A3A9C
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080A35B8
	.align 2, 0
_080A3594: .4byte 0xFFFFF000
_080A3598: .4byte 0xFFFFA000
_080A359C: .4byte 0xFFFFC000
_080A35A0: .4byte sub_080A3A9C
_080A35A4:
	subs r0, r1, #1
	strh r0, [r4, #4]
_080A35A8:
	ldr r1, _080A35C4 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x55
	strb r1, [r0]
_080A35B8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A35C4: .4byte gUnk_083533F4

	thumb_func_start sub_080A35C8
sub_080A35C8: @ 0x080A35C8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r1, _080A35DC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _080A35E0 @ =gUnk_020229E0
	b _080A35F8
	.align 2, 0
_080A35DC: .4byte gUnk_020229D4
_080A35E0: .4byte gUnk_020229E0
_080A35E4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A3600
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A35F8:
	cmp r0, #0
	bne _080A35E4
	orrs r2, r3
	str r2, [r1]
_080A3600:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd8
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r6, #0
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
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r3, r0, #0
	ldr r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	beq _080A366A
	ldr r0, [r3, #8]
	orrs r0, r4
	str r0, [r3, #8]
_080A366A:
	ldr r1, _080A36A8 @ =gRngVal
	ldr r0, [r1]
	ldr r2, _080A36AC @ =0x00196225
	mov ip, r2
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r7, _080A36B0 @ =0x3C6EF35F
	adds r2, r0, r7
	str r2, [r1]
	lsrs r4, r2, #0x10
	ldr r0, _080A36B4 @ =0x00005554
	adds r5, r1, #0
	cmp r4, r0
	bls _080A36BC
	ldr r0, _080A36B8 @ =0x0000AAA9
	movs r1, #2
	cmp r4, r0
	bhi _080A3692
	movs r1, #1
_080A3692:
	cmp r1, #0
	beq _080A36BC
	mov r0, ip
	muls r0, r2, r0
	adds r0, r0, r7
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	adds r1, #0xc1
	b _080A36D2
	.align 2, 0
_080A36A8: .4byte gRngVal
_080A36AC: .4byte 0x00196225
_080A36B0: .4byte 0x3C6EF35F
_080A36B4: .4byte 0x00005554
_080A36B8: .4byte 0x0000AAA9
_080A36BC:
	ldr r1, [r5]
	ldr r0, _080A3700 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080A3704 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
_080A36D2:
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r3, #0
	adds r2, #0x52
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r6, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080A36F8
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r3, #8]
	orrs r0, r2
	str r0, [r3, #8]
_080A36F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3700: .4byte 0x00196225
_080A3704: .4byte 0x3C6EF35F

	thumb_func_start sub_080A3708
sub_080A3708: @ 0x080A3708
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A373C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A3740 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A3744
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080A374C
	.align 2, 0
_080A373C: .4byte ObjectMain
_080A3740: .4byte ObjectDestroy
_080A3744:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080A374C:
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
	ldr r0, _080A37E8 @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _080A37EC @ =sub_0809F840
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
	ldr r2, _080A37F0 @ =gUnk_08351648
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
_080A37E8: .4byte 0x20000043
_080A37EC: .4byte sub_0809F840
_080A37F0: .4byte gUnk_08351648

	thumb_func_start sub_080A37F4
sub_080A37F4: @ 0x080A37F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3880 @ =sub_080A389C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080A3884 @ =gUnk_02020EE0
	ldr r0, _080A3888 @ =gUnk_0203AD3C
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
	bne _080A3878
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3838
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A3878
_080A3838:
	ldr r1, _080A388C @ =gUnk_08D60FA4
	ldr r4, _080A3890 @ =gSongTable
	ldr r2, _080A3894 @ =0x00000AF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A385E
	movs r1, #0xaf
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A3878
_080A385E:
	cmp r3, #0
	beq _080A3870
	ldr r0, _080A3898 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A3878
_080A3870:
	movs r0, #0xaf
	lsls r0, r0, #1
	bl m4aSongNumStart
_080A3878:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3880: .4byte sub_080A389C
_080A3884: .4byte gUnk_02020EE0
_080A3888: .4byte gUnk_0203AD3C
_080A388C: .4byte gUnk_08D60FA4
_080A3890: .4byte gSongTable
_080A3894: .4byte 0x00000AF4
_080A3898: .4byte gUnk_0203AD10

	thumb_func_start sub_080A389C
sub_080A389C: @ 0x080A389C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	ldr r1, _080A391C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080A3920 @ =gCurLevelInfo
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
	bgt _080A38F4
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080A38F4
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080A38F4
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080A38F4
	adds r0, r4, #0
	bl sub_0806FC70
_080A38F4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r6, [r0]
	cmp r6, #0
	beq _080A3924
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080A3A1C
	.align 2, 0
_080A391C: .4byte 0xFFFFFEFF
_080A3920: .4byte gCurLevelInfo
_080A3924:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A3958 @ =0xFFFFFD80
	adds r5, r1, #0
	cmp r0, r2
	bge _080A393C
	strh r2, [r5]
_080A393C:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080A395C
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3968
	b _080A3966
	.align 2, 0
_080A3958: .4byte 0xFFFFFD80
_080A395C:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3968
_080A3966:
	strh r6, [r2]
_080A3968:
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _080A3972
	rsbs r1, r1, #0
_080A3972:
	ldr r0, _080A39A8 @ =0x0000017F
	cmp r1, r0
	bgt _080A39DC
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #4
	strb r1, [r0]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r0, #0
	cmp r1, #0x80
	ble _080A39B0
	subs r0, #0x59
	movs r1, #2
	strb r1, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080A39B0
	adds r0, #0xc0
	cmp r1, r0
	ble _080A39AC
	movs r0, #0
	b _080A39AE
	.align 2, 0
_080A39A8: .4byte 0x0000017F
_080A39AC:
	movs r0, #1
_080A39AE:
	strb r0, [r2]
_080A39B0:
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080A3A1C
	movs r0, #6
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _080A39D4 @ =0xFFFFFE80
	cmp r1, r0
	bge _080A3A1C
	subs r0, #0xc0
	cmp r1, r0
	bge _080A39D8
	movs r0, #8
	b _080A3A1A
	.align 2, 0
_080A39D4: .4byte 0xFFFFFE80
_080A39D8:
	movs r0, #7
	b _080A3A1A
_080A39DC:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	strb r0, [r1]
	movs r2, #0
	ldrsh r3, [r5, r2]
	adds r2, r1, #0
	cmp r3, #0x80
	ble _080A39FE
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r3, r0
	ble _080A39FA
	movs r0, #2
	b _080A39FC
_080A39FA:
	movs r0, #3
_080A39FC:
	strb r0, [r2]
_080A39FE:
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080A3A1C
	ldr r0, _080A3A14 @ =0xFFFFFE80
	cmp r1, r0
	bge _080A3A18
	movs r0, #6
	b _080A3A1A
	.align 2, 0
_080A3A14: .4byte 0xFFFFFE80
_080A3A18:
	movs r0, #5
_080A3A1A:
	strb r0, [r2]
_080A3A1C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A3A24
sub_080A3A24: @ 0x080A3A24
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0
	strb r1, [r2]
	ldr r1, _080A3A44 @ =sub_080A2E38
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	ldr r2, _080A3A48 @ =0xFFFFF7FF
	ands r1, r2
	str r1, [r0, #8]
	movs r1, #0x5a
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_080A3A44: .4byte sub_080A2E38
_080A3A48: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3A4C
sub_080A3A4C: @ 0x080A3A4C
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0
	strb r1, [r2]
	ldr r1, _080A3A6C @ =sub_080A3008
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	ldr r2, _080A3A70 @ =0xFFFFF7FF
	ands r1, r2
	str r1, [r0, #8]
	movs r1, #0x5a
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_080A3A6C: .4byte sub_080A3008
_080A3A70: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3A74
sub_080A3A74: @ 0x080A3A74
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #1
	strb r1, [r2]
	ldr r1, _080A3A98 @ =sub_080A3A9C
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080A3A98: .4byte sub_080A3A9C

	thumb_func_start sub_080A3A9C
sub_080A3A9C: @ 0x080A3A9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r1, [r5]
	cmp r1, #2
	beq _080A3AC8
	cmp r1, #2
	bgt _080A3AB4
	cmp r1, #1
	beq _080A3ABA
	b _080A3AF6
_080A3AB4:
	cmp r1, #3
	beq _080A3AE6
	b _080A3AF6
_080A3ABA:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A3AF6
	strb r1, [r5]
	b _080A3ADA
_080A3AC8:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A3AF6
	adds r0, r4, #0
	bl sub_080A35C8
	movs r0, #3
	strb r0, [r5]
_080A3ADA:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A3AF6
_080A3AE6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A3AF6
	adds r0, r4, #0
	bl sub_080A2AF0
_080A3AF6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3AFC
sub_080A3AFC: @ 0x080A3AFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3B24 @ =sub_080A31D8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bne _080A3B28
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0xf
	bls _080A3B44
	b _080A3B3C
	.align 2, 0
_080A3B24: .4byte sub_080A31D8
_080A3B28:
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r0, #2
	ldrb r0, [r0]
	adds r0, #1
	cmp r1, r0
	blt _080A3B44
_080A3B3C:
	adds r0, r4, #0
	bl sub_080A3B5C
	b _080A3B52
_080A3B44:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080A3B58 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
_080A3B52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3B58: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3B5C
sub_080A3B5C: @ 0x080A3B5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3B8C @ =sub_080A3B94
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080A3B90 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3B8C: .4byte sub_080A3B94
_080A3B90: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3B94
sub_080A3B94: @ 0x080A3B94
	push {lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A3BAC
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0x48
	b _080A3BB2
_080A3BAC:
	adds r1, r2, #0
	adds r1, #0x50
	ldr r0, _080A3BD4 @ =0x0000FFB8
_080A3BB2:
	strh r0, [r1]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r1, _080A3BD8 @ =gUnk_083533F4
	ldrb r0, [r2, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x55
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080A3BD4: .4byte 0x0000FFB8
_080A3BD8: .4byte gUnk_083533F4
