	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A8C28
sub_080A8C28: @ 0x080A8C28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A8C50
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _080A8C5A
_080A8C50:
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
_080A8C5A:
	mov sb, r1
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	mov ip, r1
	movs r4, #0
	ldr r1, _080A8C80 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A8C84 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080A8C9C
	.align 2, 0
_080A8C80: .4byte gUnk_020229D4
_080A8C84: .4byte gUnk_020229E0
_080A8C88:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A8CA4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A8C9C:
	cmp r0, #0
	bne _080A8C88
	orrs r2, r3
	str r2, [r1]
_080A8CA4:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r3, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xa5
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	adds r2, r1, #0
	str r5, [r1, #0x70]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080A8D04
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
_080A8D04:
	adds r0, r2, #0
	bl sub_080A8EF4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A8D18
sub_080A8D18: @ 0x080A8D18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A8D52
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _080A8D5C
_080A8D52:
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
_080A8D5C:
	str r1, [sp]
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	mov ip, r1
	movs r4, #0
	ldr r1, _080A8D80 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A8D84 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080A8D9C
	.align 2, 0
_080A8D80: .4byte gUnk_020229D4
_080A8D84: .4byte gUnk_020229E0
_080A8D88:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A8DA4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A8D9C:
	cmp r0, #0
	bne _080A8D88
	orrs r2, r3
	str r2, [r1]
_080A8DA4:
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
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1, #6]
	mov r6, ip
	strh r6, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa5
	strb r0, [r1, #0xc]
	mov r7, sb
	strb r7, [r1, #0xe]
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	adds r2, r1, #0
	str r5, [r1, #0x70]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080A8E0A
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
_080A8E0A:
	adds r0, r2, #0
	bl sub_080A8EF4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateInhalableStar
CreateInhalableStar: @ 0x080A8E20
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A8E54 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A8E58 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A8E5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080A8E64
	.align 2, 0
_080A8E54: .4byte ObjectMain
_080A8E58: .4byte ObjectDestroy
_080A8E5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080A8E64:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, _080A8EE8 @ =0xFFFFFDD8
	str r1, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r4, #0
	str r4, [r5, #0x68]
	ldr r1, _080A8EEC @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080A8EF0 @ =sub_0809F840
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A8EE8: .4byte 0xFFFFFDD8
_080A8EEC: .4byte 0xEFFFFFFF
_080A8EF0: .4byte sub_0809F840

	thumb_func_start sub_080A8EF4
sub_080A8EF4: @ 0x080A8EF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080A8F60 @ =sub_080A8F64
	movs r1, #0
	bl ObjectSetFunc
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x52
	subs r0, #0x80
	strh r0, [r2]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r0, [r3]
	ldrb r1, [r0, #0xe]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080A8F30
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080A8F30:
	ldr r0, [r3]
	ldrb r1, [r0, #0xe]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A8F40
	movs r0, #0
	strh r0, [r5]
_080A8F40:
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _080A8F4E
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080A8F4E:
	ldr r0, [r3]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8F60: .4byte sub_080A8F64

	thumb_func_start sub_080A8F64
sub_080A8F64: @ 0x080A8F64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	movs r0, #0x83
	adds r0, r0, r2
	mov r8, r0
	ldrb r6, [r0]
	cmp r6, #0
	bne _080A8FD0
	ldr r0, [r2, #8]
	movs r1, #2
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	beq _080A901E
	adds r3, r2, #0
	adds r3, #0x50
	movs r4, #0x80
	strh r4, [r3]
	movs r0, #0x52
	adds r0, r0, r2
	mov ip, r0
	strh r4, [r0]
	adds r5, r2, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r1, [r0, #0xe]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080A8FAE
	rsbs r0, r4, #0
	mov r1, ip
	strh r0, [r1]
_080A8FAE:
	ldr r0, [r5]
	ldrb r1, [r0, #0xe]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080A8FBC
	strh r6, [r3]
_080A8FBC:
	ldr r0, [r2, #8]
	ands r0, r7
	cmp r0, #0
	beq _080A8FCA
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080A8FCA:
	mov r3, r8
	strb r7, [r3]
	b _080A901E
_080A8FD0:
	cmp r6, #1
	bne _080A900A
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A8FF6
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080A8FF6
	mov r0, r8
	strb r1, [r0]
_080A8FF6:
	ldrb r0, [r2, #1]
	cmp r0, #0xc
	bne _080A901E
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080A901E
_080A900A:
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A901E
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r2, #8]
	b _080A902C
_080A901E:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x2d
	bgt _080A902C
	adds r0, r1, #1
	strh r0, [r2, #4]
_080A902C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9038
sub_080A9038: @ 0x080A9038
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
	movs r0, #0xa3
	mov sb, r0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	ldr r1, _080A9088 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _080A9070
	movs r2, #0xa4
	mov sb, r2
_080A9070:
	movs r4, #0
	ldr r1, _080A908C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A9090 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080A90A8
	.align 2, 0
_080A9088: .4byte 0x00000103
_080A908C: .4byte gUnk_020229D4
_080A9090: .4byte gUnk_020229E0
_080A9094:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A90B0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A90A8:
	cmp r0, #0
	bne _080A9094
	orrs r2, r3
	str r2, [r1]
_080A90B0:
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
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1, #6]
	mov r6, ip
	strh r6, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r7, sb
	strb r7, [r1, #0xc]
	ldr r6, _080A914C @ =0x00000103
	adds r0, r5, r6
	ldrb r0, [r0]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	adds r2, r0, #0
	adds r3, r2, #0
	str r5, [r2, #0x70]
	mov r0, sl
	cmp r0, #0
	bne _080A9120
	adds r0, r5, #0
	adds r0, #0xf0
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x9e
	strb r0, [r1]
_080A9120:
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080A912E
	ldr r0, [r3, #8]
	orrs r0, r4
	str r0, [r3, #8]
_080A912E:
	ldr r2, _080A9150 @ =0x000002A9
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A914C: .4byte 0x00000103
_080A9150: .4byte 0x000002A9
