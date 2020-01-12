	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E84AD8
sub_08E84AD8: @ 0x08E84AD8
	push {lr}
	ldr r1, _08E84AEC @ =gUnk_03003E54
	ldr r0, _08E84AF0 @ =gUnk_0201887C
	str r0, [r1]
	bl sub_08E84AF4
	bl sub_08E85D2C
	pop {r0}
	bx r0
	.align 2, 0
_08E84AEC: .4byte gUnk_03003E54
_08E84AF0: .4byte gUnk_0201887C

	thumb_func_start sub_08E84AF4
sub_08E84AF4: @ 0x08E84AF4
	push {r4, lr}
	sub sp, #4
	ldr r0, _08E84B20 @ =gUnk_03000D60
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _08E84B24 @ =gUnk_03000AB0
	ldr r2, _08E84B28 @ =0x01000158
	bl sub_08E9197C
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08E84B2C @ =gUnk_03000A80
	ldr r2, _08E84B30 @ =0x01000016
	bl sub_08E9197C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E84B20: .4byte gUnk_03000D60
_08E84B24: .4byte gUnk_03000AB0
_08E84B28: .4byte 0x01000158
_08E84B2C: .4byte gUnk_03000A80
_08E84B30: .4byte 0x01000016

	thumb_func_start sub_08E84B34
sub_08E84B34: @ 0x08E84B34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _08E84B98 @ =gUnk_03002C70
	ldr r2, _08E84B9C @ =0x05000014
	add r0, sp, #4
	bl sub_08E9197C
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _08E84BA0 @ =gUnk_03003E90
	ldr r2, _08E84BA4 @ =0x05000005
	bl sub_08E9197C
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _08E84BA8 @ =gUnk_03000A80
	ldr r2, _08E84BAC @ =0x01000016
	adds r1, r4, #0
	bl sub_08E9197C
	strh r5, [r4, #4]
	bl sub_08E90FD0
	ldr r0, _08E84BB0 @ =gUnk_02000A15
	str r5, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0
	bl sub_08E8F750
	str r0, [r4]
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	mov r3, sp
	adds r3, #0xe
	cmp r1, #0
	beq _08E84BB4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E84BBA
	.align 2, 0
_08E84B98: .4byte gUnk_03002C70
_08E84B9C: .4byte 0x05000014
_08E84BA0: .4byte gUnk_03003E90
_08E84BA4: .4byte 0x05000005
_08E84BA8: .4byte gUnk_03000A80
_08E84BAC: .4byte 0x01000016
_08E84BB0: .4byte gUnk_02000A15
_08E84BB4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08E84BBA:
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E84BE4 @ =0x01000010
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08E9197C
	ldr r0, _08E84BE8 @ =gUnk_02000C01
	str r0, [r4]
	strb r7, [r4, #0x1c]
	cmp r6, #0
	beq _08E84BDC
	adds r1, r4, #4
	adds r0, r6, #0
	movs r2, #4
	bl sub_08E9197C
_08E84BDC:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E84BE4: .4byte 0x01000010
_08E84BE8: .4byte gUnk_02000C01

	thumb_func_start sub_08E84BEC
sub_08E84BEC: @ 0x08E84BEC
	push {r4, lr}
	ldr r4, _08E84C00 @ =gUnk_03000A80
	ldr r0, [r4]
	bl sub_08E8F86C
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E84C00: .4byte gUnk_03000A80

	thumb_func_start sub_08E84C04
sub_08E84C04: @ 0x08E84C04
	ldr r2, _08E84C10 @ =gUnk_03000A80
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08E84C10: .4byte gUnk_03000A80

	thumb_func_start sub_08E84C14
sub_08E84C14: @ 0x08E84C14
	ldr r0, _08E84C1C @ =gUnk_03000A80
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08E84C1C: .4byte gUnk_03000A80

	thumb_func_start sub_08E84C20
sub_08E84C20: @ 0x08E84C20
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _08E84C60 @ =gUnk_03002C70
	ldr r2, _08E84C64 @ =0x05000014
	mov r0, sp
	bl sub_08E9197C
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _08E84C68 @ =gUnk_03003E90
	ldr r2, _08E84C6C @ =0x05000005
	bl sub_08E9197C
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _08E84C70 @ =gUnk_03000AB0
	ldr r2, _08E84C74 @ =0x01000158
	adds r1, r4, #0
	bl sub_08E9197C
	strh r6, [r4, #4]
	strb r5, [r4, #6]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E84C60: .4byte gUnk_03002C70
_08E84C64: .4byte 0x05000014
_08E84C68: .4byte gUnk_03003E90
_08E84C6C: .4byte 0x05000005
_08E84C70: .4byte gUnk_03000AB0
_08E84C74: .4byte 0x01000158

	thumb_func_start sub_08E84C78
sub_08E84C78: @ 0x08E84C78
	ldr r1, _08E84C80 @ =gUnk_03000AB0
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08E84C80: .4byte gUnk_03000AB0

	thumb_func_start sub_08E84C84
sub_08E84C84: @ 0x08E84C84
	ldr r2, _08E84C90 @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08E84C90: .4byte gUnk_03000AB0

	thumb_func_start sub_08E84C94
sub_08E84C94: @ 0x08E84C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08E84D20 @ =gUnk_03000AB0
	ldr r0, [r5]
	subs r0, #5
	mov ip, r0
	movs r4, #0
	ldr r0, _08E84D24 @ =gUnk_03000A5C
	mov r8, r0
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08E84D4A
_08E84CAE:
	movs r7, #0xaa
	lsls r7, r7, #2
	adds r3, r5, r7
	adds r3, r3, r4
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r2, r5, r6
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	ldrb r2, [r2]
	cmp r0, r2
	beq _08E84D08
_08E84CCE:
	adds r0, r5, r7
	adds r3, r0, r4
	ldrb r2, [r3]
	lsls r1, r2, #3
	lsls r0, r4, #7
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp ip, r0
	beq _08E84CF8
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	adds r0, r5, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08E84CCE
_08E84CF8:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r4
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08E84D2C
_08E84D08:
	ldrh r1, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #4]
	ldr r1, _08E84D28 @ =gUnk_03000D60
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _08E84D54
	.align 2, 0
_08E84D20: .4byte gUnk_03000AB0
_08E84D24: .4byte gUnk_03000A5C
_08E84D28: .4byte gUnk_03000D60
_08E84D2C:
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r2, r5, r3
	adds r2, r2, r4
	subs r0, r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blo _08E84CAE
_08E84D4A:
	ldrh r1, [r5, #4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #1
_08E84D54:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E84D60
sub_08E84D60: @ 0x08E84D60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08E84D74 @ =gUnk_03000AB0
	ldr r1, _08E84D78 @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08E84D74: .4byte gUnk_03000AB0
_08E84D78: .4byte 0x000002AD

	thumb_func_start sub_08E84D7C
sub_08E84D7C: @ 0x08E84D7C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08E84E9C @ =gUnk_03000AB0
	ldrh r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E84D8C
	b _08E84E96
_08E84D8C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E84D96
	b _08E84E96
_08E84D96:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r0, r7
	ldr r0, [r7]
	str r0, [r4]
	ldr r0, _08E84EA0 @ =gUnk_03003670
	ldrh r1, [r0]
	ldr r0, _08E84EA4 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #4]
	ldr r6, _08E84EA8 @ =gUnk_03003E90
	movs r0, #0x20
	strb r0, [r6]
	ldrb r0, [r7, #6]
	strb r0, [r6, #1]
	ldr r0, [r4]
	str r0, [r6, #0x10]
	movs r5, #0
_08E84DC2:
	lsls r1, r5, #1
	adds r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _08E84DC2
	movs r0, #0xab
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r5, [r3]
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #2]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #2]
	subs r5, #1
	movs r2, #0xf
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #2]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #4]
	orrs r1, r0
	strh r1, [r6, #4]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #6]
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #8]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #8]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #0xa]
	orrs r1, r0
	strh r1, [r6, #0xa]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #0xa]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	orrs r1, r0
	strh r1, [r6, #0xc]
	subs r0, r5, #1
	ands r0, r2
	lsls r0, r0, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #0xc]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
_08E84E96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E84E9C: .4byte gUnk_03000AB0
_08E84EA0: .4byte gUnk_03003670
_08E84EA4: .4byte 0x000003FF
_08E84EA8: .4byte gUnk_03003E90

	thumb_func_start sub_08E84EAC
sub_08E84EAC: @ 0x08E84EAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E84F34 @ =gUnk_03000AB0
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E84EC8
	b _08E8530E
_08E84EC8:
	movs r1, #0
	mov r8, r1
	ldr r2, _08E84F38 @ =gUnk_03000A5C
	ldrb r2, [r2]
	cmp r8, r2
	blo _08E84ED6
	b _08E850E0
_08E84ED6:
	ldr r0, _08E84F3C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r3, r8
	lsls r6, r3, #7
	cmp r0, r8
	bne _08E84F40
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	adds r0, #0x20
	mov r2, ip
	adds r5, r2, r0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	adds r3, r0, r3
	ldrb r4, [r3]
	subs r0, r4, #1
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0xa0
	add r1, ip
	lsls r0, r0, #3
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r2, [r5]
	cmp r0, r2
	bne _08E84F1E
	b _08E850CC
_08E84F1E:
	lsls r0, r4, #3
	adds r6, r1, r0
	str r2, [r6]
	ldrh r0, [r5, #4]
	strh r0, [r6, #4]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	b _08E850CC
	.align 2, 0
_08E84F34: .4byte gUnk_03000AB0
_08E84F38: .4byte gUnk_03000A5C
_08E84F3C: .4byte 0x04000128
_08E84F40:
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _08E850FC @ =gUnk_03002C70
	adds r5, r0, r1
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	mov sb, r0
	ldrb r2, [r0]
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	ldr r4, [r5, #0x10]
	lsls r1, r1, #3
	mov sl, r6
	add r1, sl
	mov r0, ip
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r3, [r0]
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r1, r3, #0x18
	str r1, [sp]
	asrs r3, r3, #0x18
	adds r2, r2, r3
	subs r7, r2, #1
	movs r2, #0xf
	ands r7, r2
	mov r2, sl
	adds r2, #0xa0
	add r2, ip
	lsls r0, r7, #3
	adds r6, r2, r0
	str r4, [r6]
	ldrh r0, [r5, #2]
	strh r0, [r6, #4]
	subs r7, #1
	movs r4, #0xf
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r6]
	ldrh r1, [r5, #2]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #4]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #2
	str r0, [r6]
	ldrh r1, [r5, #4]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #3
	str r0, [r6]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #4
	str r0, [r6]
	ldrh r0, [r5, #8]
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #5
	str r0, [r6]
	ldrh r1, [r5, #8]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #6
	str r0, [r6]
	ldrh r1, [r5, #0xa]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r0, r7, #1
	ands r0, r4
	lsls r0, r0, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #7
	str r0, [r6]
	ldrh r0, [r5, #0xc]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	cmp r3, #0
	ble _08E8504C
	mov r3, sb
	ldrb r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r3]
_08E8504C:
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r7, r0, #1
	movs r2, #0xf
	ands r7, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r7, r3
	beq _08E8508C
_08E85064:
	mov r0, sl
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldr r0, _08E85100 @ =0x0000FFFF
	str r0, [r6]
	ldrh r1, [r6, #4]
	orrs r0, r1
	strh r0, [r6, #4]
	subs r7, #1
	movs r0, #0xf
	ands r7, r0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	cmp r7, r0
	bne _08E85064
_08E8508C:
	mov r0, ip
	ldrh r2, [r0, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E850CC
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _08E850A0
	b _08E852B0
_08E850A0:
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r5, [r5, #1]
	cmp r0, r5
	beq _08E850AC
	b _08E852C8
_08E850AC:
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #3
	mov r3, r8
	lsls r1, r3, #7
	adds r0, r0, r1
	add r0, ip
	adds r0, #0xa4
	ldrh r1, [r0]
	ldr r0, _08E85100 @ =0x0000FFFF
	cmp r1, r0
	bne _08E850CC
	b _08E852E0
_08E850CC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08E85104 @ =gUnk_03000A5C
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08E850E0
	b _08E84ED6
_08E850E0:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E851BE
	ldr r0, _08E85108 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #4]
	movs r5, #0
	mov r8, r5
	ldr r4, _08E85104 @ =gUnk_03000A5C
	b _08E8517A
	.align 2, 0
_08E850FC: .4byte gUnk_03002C70
_08E85100: .4byte 0x0000FFFF
_08E85104: .4byte gUnk_03000A5C
_08E85108: .4byte 0x0000FFFB
_08E8510C:
	ldr r0, _08E8519C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r8
	beq _08E85170
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	mov r1, r8
	lsls r3, r1, #7
	adds r0, r0, r3
	mov r2, ip
	adds r2, #0xa0
	adds r0, r2, r0
	ldr r1, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r0, [r2]
	subs r1, r1, r0
	movs r0, #0xa8
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08E85170
	cmp r1, #1
	bgt _08E85184
_08E85170:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08E8517A:
	ldrb r3, [r4]
	cmp r8, r3
	blo _08E8510C
	cmp r5, #0
	beq _08E851A4
_08E85184:
	mov r0, ip
	ldrh r1, [r0, #4]
	movs r0, #4
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E851A0 @ =0x000002AD
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08E851BE
	.align 2, 0
_08E8519C: .4byte 0x04000128
_08E851A0: .4byte 0x000002AD
_08E851A4:
	ldr r1, _08E851B8 @ =0x000002AD
	add r1, ip
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08E851BC
	adds r0, r2, #1
	strb r0, [r1]
	b _08E851BE
	.align 2, 0
_08E851B8: .4byte 0x000002AD
_08E851BC:
	strb r5, [r1]
_08E851BE:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E8523E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E851D4
	b _08E852FC
_08E851D4:
	movs r3, #0
	mov r8, r3
	ldr r0, _08E8526C @ =gUnk_03000A5C
	mov sb, r0
	ldrb r1, [r0]
	cmp r8, r1
	bhs _08E8523E
_08E851E2:
	mov r2, r8
	lsls r5, r2, #1
	mov r2, ip
	adds r2, #8
	adds r2, r2, r5
	ldrh r4, [r2]
	movs r3, #0xaa
	lsls r3, r3, #2
	add r3, ip
	add r3, r8
	ldrb r7, [r3]
	mov r1, r8
	lsls r0, r1, #7
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldrh r1, [r6, #4]
	ldr r0, _08E85270 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x10
	adds r1, r1, r5
	bics r0, r4
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x18
	adds r0, r0, r5
	ldrh r1, [r2]
	bics r4, r1
	strh r4, [r0]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	ldrb r2, [r2]
	cmp r8, r2
	blo _08E851E2
_08E8523E:
	mov r0, ip
	ldrh r3, [r0, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08E852FC
	ldr r0, _08E85274 @ =0x000002AD
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08E8527C
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08E85278 @ =gUnk_03000D60
	movs r0, #7
	b _08E852F0
	.align 2, 0
_08E8526C: .4byte gUnk_03000A5C
_08E85270: .4byte 0x000003FF
_08E85274: .4byte 0x000002AD
_08E85278: .4byte gUnk_03000D60
_08E8527C:
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r2, r0
	bne _08E852FC
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08E852AC @ =gUnk_03000D60
	movs r0, #5
	b _08E852F0
	.align 2, 0
_08E852AC: .4byte gUnk_03000D60
_08E852B0:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E852C4 @ =gUnk_03000D60
	movs r0, #3
	b _08E852F0
	.align 2, 0
_08E852C4: .4byte gUnk_03000D60
_08E852C8:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E852DC @ =gUnk_03000D60
	movs r0, #4
	b _08E852F0
	.align 2, 0
_08E852DC: .4byte gUnk_03000D60
_08E852E0:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E852F8 @ =gUnk_03000D60
	movs r0, #6
_08E852F0:
	str r0, [r1]
	movs r0, #0
	b _08E85310
	.align 2, 0
_08E852F8: .4byte gUnk_03000D60
_08E852FC:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E8530E
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08E8530E:
	movs r0, #1
_08E85310:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E85320
sub_08E85320: @ 0x08E85320
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E8533C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E85340 @ =gUnk_03000A80
	cmp r0, #0
	beq _08E85344
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E85348
	.align 2, 0
_08E8533C: .4byte gUnk_03003DB0
_08E85340: .4byte gUnk_03000A80
_08E85344:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E85348:
	adds r0, r1, r0
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _08E85430
	ldr r0, _08E85370 @ =gUnk_03002D34
	mov ip, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08E85378
	ldr r0, _08E85374 @ =0x0000FFFE
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08E853A8
	.align 2, 0
_08E85370: .4byte gUnk_03002D34
_08E85374: .4byte 0x0000FFFE
_08E85378:
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _08E85390
	ldr r0, _08E8538C @ =0x0000FFFD
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08E853AC
	.align 2, 0
_08E8538C: .4byte 0x0000FFFD
_08E85390:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08E853DC
	ldrh r0, [r3, #0x18]
	cmp r0, #8
	bls _08E853C0
	ldr r0, _08E853B8 @ =0x0000FFFF
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #3
_08E853A8:
	ands r0, r1
	ldr r1, _08E853BC @ =0x0000FFFB
_08E853AC:
	ands r0, r1
	strh r0, [r4, #6]
	movs r0, #1
	str r0, [r3, #0xc]
	b _08E85430
	.align 2, 0
_08E853B8: .4byte 0x0000FFFF
_08E853BC: .4byte 0x0000FFFB
_08E853C0:
	adds r0, #1
	strh r0, [r3, #0x18]
	b _08E853DE
_08E853C6:
	ldr r0, _08E853D8 @ =0x0000FFFC
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #6]
	str r7, [r3, #0xc]
	b _08E85430
	.align 2, 0
_08E853D8: .4byte 0x0000FFFC
_08E853DC:
	strh r2, [r3, #0x18]
_08E853DE:
	movs r6, #0
_08E853E0:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r6
	mov r1, ip
	ldr r2, [r1]
	ands r0, r2
	lsls r5, r6, #1
	adds r1, r3, #0
	adds r1, #0x10
	cmp r0, #0
	beq _08E8540E
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r6
	ands r0, r2
	cmp r0, #0
	bne _08E8540E
	adds r1, r1, r5
	ldrh r0, [r1]
	cmp r0, #0xa
	bhi _08E853C6
	adds r0, #1
	b _08E85412
_08E8540E:
	adds r1, r1, r5
	movs r0, #0
_08E85412:
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08E853E0
	ldr r1, [r3]
	adds r0, r3, #0
	bl sub_08E9199C
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldr r0, _08E85438 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
_08E85430:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E85438: .4byte 0x0000FFFB

	thumb_func_start sub_08E8543C
sub_08E8543C: @ 0x08E8543C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08E8546C @ =gUnk_03000A80
	mov ip, r0
	ldr r4, _08E85470 @ =gUnk_03003E90
	movs r5, #0
	adds r0, #0x28
	strb r5, [r0]
	mov r0, ip
	adds r0, #0x29
	strb r5, [r0]
	movs r2, #0
_08E85454:
	ldr r0, _08E85474 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r3, r2, #1
	cmp r0, r2
	bne _08E85478
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	b _08E854CA
	.align 2, 0
_08E8546C: .4byte gUnk_03000A80
_08E85470: .4byte gUnk_03003E90
_08E85474: .4byte 0x04000128
_08E85478:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, _08E854AC @ =gUnk_03002D34
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08E854E0
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08E854B0 @ =gUnk_03002C70
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _08E854F2
	ldrb r0, [r6, #0x1c]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _08E854B8
	ldr r5, _08E854B4 @ =0x0000FFFB
	b _08E854F2
	.align 2, 0
_08E854AC: .4byte gUnk_03002D34
_08E854B0: .4byte gUnk_03002C70
_08E854B4: .4byte 0x0000FFFB
_08E854B8:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x20
	beq _08E854CA
	cmp r0, #0x20
	blt _08E854F2
	cmp r0, #0x41
	bgt _08E854F2
	cmp r0, #0x40
	blt _08E854F2
_08E854CA:
	mov r1, ip
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	lsls r0, r2
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	b _08E854F2
_08E854E0:
	movs r0, #1
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08E854F2
	lsls r0, r2, #1
	ldr r1, _08E85508 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
_08E854F2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08E85454
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E85508: .4byte 0x04000120

	thumb_func_start sub_08E8550C
sub_08E8550C: @ 0x08E8550C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08E85570 @ =gUnk_03000A80
	ldr r1, _08E85574 @ =gUnk_03003E90
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	movs r7, #0
	ldr r0, _08E85578 @ =0x00000123
	strh r0, [r1, #2]
	strb r7, [r1, #0xe]
	strh r2, [r1, #0xc]
	adds r0, r4, #4
	adds r1, #4
	movs r2, #4
	bl sub_08E9197C
	ldrh r0, [r6, #6]
	ldr r3, _08E8557C @ =0x0000FFFC
	ands r3, r0
	strh r3, [r6, #6]
	ldr r5, _08E85580 @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E8558C
	ldr r0, _08E85584 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E8558C
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08E8558C
	movs r0, #1
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08E85588 @ =gUnk_02000CC9
	b _08E855BE
	.align 2, 0
_08E85570: .4byte gUnk_03000A80
_08E85574: .4byte gUnk_03003E90
_08E85578: .4byte 0x00000123
_08E8557C: .4byte 0x0000FFFC
_08E85580: .4byte 0x04000128
_08E85584: .4byte gUnk_03002D34
_08E85588: .4byte gUnk_02000CC9
_08E8558C:
	ldr r3, _08E855C8 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E855C0
	ldr r0, _08E855CC @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E855C0
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08E855C0
	ldrh r0, [r6, #6]
	movs r1, #2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08E855D0 @ =gUnk_02000F69
_08E855BE:
	str r0, [r4]
_08E855C0:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E855C8: .4byte 0x04000128
_08E855CC: .4byte gUnk_03002D34
_08E855D0: .4byte gUnk_02000F69

	thumb_func_start sub_08E855D4
sub_08E855D4: @ 0x08E855D4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _08E8562C @ =gUnk_03000A80
	ldr r6, _08E85630 @ =gUnk_03003E90
	movs r0, #2
	strb r0, [r6]
	ldrb r0, [r5, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _08E85634 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x20
	strb r0, [r6, #0xe]
	movs r7, #1
	strh r7, [r6, #0xc]
	ldr r3, _08E85638 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E85618
	ldr r0, _08E8563C @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E85618
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E85648
_08E85618:
	ldrh r0, [r4, #6]
	ldr r1, _08E85640 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r4, #6]
	ldr r0, _08E85644 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E856CA
	.align 2, 0
_08E8562C: .4byte gUnk_03000A80
_08E85630: .4byte gUnk_03003E90
_08E85634: .4byte 0x00000123
_08E85638: .4byte 0x04000128
_08E8563C: .4byte gUnk_03002D34
_08E85640: .4byte 0x0000FFFC
_08E85644: .4byte gUnk_02000C01
_08E85648:
	adds r0, r5, #0
	bl sub_08E8543C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E856CA
	adds r0, r4, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E856C8
	cmp r0, #1
	bls _08E856C8
	ldrh r1, [r4, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E856BC
	movs r1, #0
_08E85676:
	ldr r0, _08E85694 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08E85698 @ =gUnk_03000A88
	adds r4, r1, #1
	cmp r0, r1
	bne _08E8569C
	adds r1, r2, r3
	adds r0, r6, #4
	movs r2, #4
	bl sub_08E9197C
	b _08E856B0
	.align 2, 0
_08E85694: .4byte 0x04000128
_08E85698: .4byte gUnk_03000A88
_08E8569C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E856C0 @ =gUnk_03002C70
	adds r0, r0, r1
	adds r0, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08E9197C
_08E856B0:
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08E85676
	ldr r0, _08E856C4 @ =gUnk_02000DC5
	str r0, [r5]
_08E856BC:
	movs r0, #1
	b _08E856CA
	.align 2, 0
_08E856C0: .4byte gUnk_03002C70
_08E856C4: .4byte gUnk_02000DC5
_08E856C8:
	movs r0, #0
_08E856CA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E856D0
sub_08E856D0: @ 0x08E856D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _08E85738 @ =gUnk_03000A80
	mov ip, r0
	ldr r4, _08E8573C @ =gUnk_03003E90
	movs r0, #2
	strb r0, [r4]
	ldrb r7, [r5, #0x1c]
	strb r7, [r4, #1]
	ldr r0, _08E85740 @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x22
	strb r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r3, _08E85744 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E85724
	ldr r1, _08E85748 @ =gUnk_03002D34
	mov sb, r1
	ldr r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E85724
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E85754
_08E85724:
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _08E8574C @ =0x0000FFFC
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _08E85750 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E85842
	.align 2, 0
_08E85738: .4byte gUnk_03000A80
_08E8573C: .4byte gUnk_03003E90
_08E85740: .4byte 0x00000123
_08E85744: .4byte 0x04000128
_08E85748: .4byte gUnk_03002D34
_08E8574C: .4byte 0x0000FFFC
_08E85750: .4byte gUnk_02000C01
_08E85754:
	movs r6, #0
	movs r3, #0
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldrb r1, [r0]
	cmp r3, r1
	bhs _08E857FA
	ldr r2, _08E857A4 @ =gUnk_03002C70
	mov sl, r2
_08E85768:
	ldr r0, _08E857A8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r3
	beq _08E857DC
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r3
	mov r2, sb
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08E857EC
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, sl
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #2
	bne _08E857EC
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #1]
	cmp r0, r1
	beq _08E857B0
	ldr r6, _08E857AC @ =0x0000FFFB
	b _08E857EC
	.align 2, 0
_08E857A4: .4byte gUnk_03002C70
_08E857A8: .4byte 0x04000128
_08E857AC: .4byte 0x0000FFFB
_08E857B0:
	ldrh r1, [r2, #2]
	ldr r0, _08E857BC @ =0x00000123
	cmp r1, r0
	beq _08E857C4
	ldr r6, _08E857C0 @ =0x0000FFFA
	b _08E857EC
	.align 2, 0
_08E857BC: .4byte 0x00000123
_08E857C0: .4byte 0x0000FFFA
_08E857C4:
	ldrb r0, [r2, #0xe]
	cmp r0, #0x40
	blt _08E857EC
	cmp r0, #0x41
	ble _08E857D4
	cmp r0, #0x42
	beq _08E857DC
	b _08E857EC
_08E857D4:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	b _08E857E8
_08E857DC:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0x10
	lsls r1, r3
_08E857E8:
	orrs r0, r1
	strh r0, [r4, #0xc]
_08E857EC:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r3, r2
	blo _08E85768
_08E857FA:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E85842
	movs r3, #0
	mov r2, ip
	adds r2, #0x28
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08E8582A
	ldrh r1, [r4, #0xc]
	movs r0, #0x10
	b _08E85824
_08E85814:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08E8582A
	movs r0, #0x10
	lsls r0, r3
_08E85824:
	ands r0, r1
	cmp r0, #0
	bne _08E85814
_08E8582A:
	mov r0, ip
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r3, r0
	bne _08E85840
	ldr r0, _08E8583C @ =gUnk_02000F45
	str r0, [r5]
	movs r0, #2
	b _08E85842
	.align 2, 0
_08E8583C: .4byte gUnk_02000F45
_08E85840:
	movs r0, #1
_08E85842:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E85850
sub_08E85850: @ 0x08E85850
	ldr r2, _08E8586C @ =gUnk_03003E90
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #2
	strb r1, [r2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08E85870 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x22
	strb r0, [r2, #0xe]
	movs r0, #2
	bx lr
	.align 2, 0
_08E8586C: .4byte gUnk_03003E90
_08E85870: .4byte 0x00000123

	thumb_func_start sub_08E85874
sub_08E85874: @ 0x08E85874
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _08E858D0 @ =gUnk_03000A80
	ldr r1, _08E858D4 @ =gUnk_03003E90
	ldr r6, _08E858D8 @ =gUnk_03002C70
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	ldr r0, _08E858DC @ =0x00000123
	strh r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r5, _08E858E0 @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E858BC
	ldr r0, _08E858E4 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E858BC
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E858F0
_08E858BC:
	ldrh r0, [r3, #6]
	ldr r1, _08E858E8 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r3, #6]
	ldr r0, _08E858EC @ =gUnk_02000C01
	str r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E85920
	.align 2, 0
_08E858D0: .4byte gUnk_03000A80
_08E858D4: .4byte gUnk_03003E90
_08E858D8: .4byte gUnk_03002C70
_08E858DC: .4byte 0x00000123
_08E858E0: .4byte 0x04000128
_08E858E4: .4byte gUnk_03002D34
_08E858E8: .4byte 0x0000FFFC
_08E858EC: .4byte gUnk_02000C01
_08E858F0:
	ldrb r0, [r6]
	cmp r0, #2
	bne _08E8591E
	adds r0, r4, #0
	bl sub_08E8543C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E85920
	ldrb r0, [r6, #0xe]
	cmp r0, #0x20
	bne _08E8591E
	ldrh r1, [r6, #0xc]
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	beq _08E8591E
	ldr r0, _08E85928 @ =gUnk_02001021
	str r0, [r4]
_08E8591E:
	movs r0, #0
_08E85920:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E85928: .4byte gUnk_02001021

	thumb_func_start sub_08E8592C
sub_08E8592C: @ 0x08E8592C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08E85984 @ =gUnk_03000A80
	ldr r4, _08E85988 @ =gUnk_03003E90
	ldr r6, _08E8598C @ =gUnk_03002C70
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #1]
	ldr r0, _08E85990 @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x41
	strb r0, [r4, #0xe]
	strh r1, [r4, #0xc]
	ldr r3, _08E85994 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E85972
	ldr r0, _08E85998 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E85972
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E859A4
_08E85972:
	ldrh r0, [r7, #6]
	ldr r1, _08E8599C @ =0x0000FFFC
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, _08E859A0 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E85A16
	.align 2, 0
_08E85984: .4byte gUnk_03000A80
_08E85988: .4byte gUnk_03003E90
_08E8598C: .4byte gUnk_03002C70
_08E85990: .4byte 0x00000123
_08E85994: .4byte 0x04000128
_08E85998: .4byte gUnk_03002D34
_08E8599C: .4byte 0x0000FFFC
_08E859A0: .4byte gUnk_02000C01
_08E859A4:
	ldrb r0, [r6]
	cmp r0, #2
	beq _08E859B0
	movs r0, #1
	rsbs r0, r0, #0
	b _08E85A16
_08E859B0:
	adds r0, r5, #0
	bl sub_08E8543C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E85A16
	ldrb r0, [r6, #0xe]
	cmp r0, #0x22
	bne _08E85A14
	movs r1, #0
_08E859C6:
	ldr r0, _08E859E4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08E859E8 @ =gUnk_03000A88
	adds r7, r1, #1
	cmp r0, r1
	bne _08E859EC
	adds r1, r2, r3
	adds r0, r4, #4
	movs r2, #4
	bl sub_08E9197C
	b _08E85A00
	.align 2, 0
_08E859E4: .4byte 0x04000128
_08E859E8: .4byte gUnk_03000A88
_08E859EC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E85A1C @ =gUnk_03002C70
	adds r6, r0, r1
	adds r0, r6, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08E9197C
_08E85A00:
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08E859C6
	ldr r0, _08E85A20 @ =gUnk_02001119
	str r0, [r5]
	movs r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x42
	strb r0, [r4, #0xe]
_08E85A14:
	movs r0, #0
_08E85A16:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E85A1C: .4byte gUnk_03002C70
_08E85A20: .4byte gUnk_02001119

	thumb_func_start sub_08E85A24
sub_08E85A24: @ 0x08E85A24
	push {lr}
	adds r1, r0, #0
	ldr r2, _08E85A48 @ =gUnk_03003E90
	ldrh r0, [r1, #0x1a]
	ldrb r3, [r1, #0x1c]
	cmp r0, #0
	bne _08E85A50
	movs r0, #1
	str r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08E85A4C @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x42
	strb r0, [r2, #0xe]
	movs r0, #2
	b _08E85A64
	.align 2, 0
_08E85A48: .4byte gUnk_03003E90
_08E85A4C: .4byte 0x00000123
_08E85A50:
	subs r0, #1
	strh r0, [r1, #0x1a]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08E85A68 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x41
	strb r0, [r2, #0xe]
	movs r0, #0
_08E85A64:
	pop {r1}
	bx r1
	.align 2, 0
_08E85A68: .4byte 0x00000123

	thumb_func_start sub_08E85A6C
sub_08E85A6C: @ 0x08E85A6C
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08E85ACC @ =0x0000FFFF
	movs r0, #0
	bl sub_08E8F7F4
	ldr r1, _08E85AD0 @ =gUnk_030041E4
	ldr r0, _08E85AD4 @ =gUnk_03003F70
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08E85AD8 @ =gUnk_03007090
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08E85ADC @ =gUnk_03006858
	ldr r0, _08E85AE0 @ =gUnk_03004184
	ldrb r0, [r0]
	strb r0, [r1]
	bl nullsub_23
	ldr r1, _08E85AE4 @ =gUnk_03002C68
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E85AE8 @ =gUnk_03002D20
	ldr r0, _08E85AEC @ =0x06010000
	str r0, [r1]
	ldr r0, _08E85AF0 @ =gUnk_020012AD
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _08E85AF4 @ =gUnk_020012DD
	ldr r5, _08E85AF8 @ =gUnk_03000D60
	cmp r1, #0
	beq _08E85AFC
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08E85B02
	.align 2, 0
_08E85ACC: .4byte 0x0000FFFF
_08E85AD0: .4byte gUnk_030041E4
_08E85AD4: .4byte gUnk_03003F70
_08E85AD8: .4byte gUnk_03007090
_08E85ADC: .4byte gUnk_03006858
_08E85AE0: .4byte gUnk_03004184
_08E85AE4: .4byte gUnk_03002C68
_08E85AE8: .4byte gUnk_03002D20
_08E85AEC: .4byte 0x06010000
_08E85AF0: .4byte gUnk_020012AD
_08E85AF4: .4byte gUnk_020012DD
_08E85AF8: .4byte gUnk_03000D60
_08E85AFC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08E85B02:
	str r3, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r1, [r5]
	adds r0, #2
	strh r1, [r0]
	bl sub_08E84C78
	bl sub_08E917C8
	str r4, [sp, #4]
	ldr r1, _08E85B90 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08E85B94 @ =gUnk_03003E90
	str r0, [r1, #4]
	ldr r0, _08E85B98 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E85B2C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E85B2C
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08E85B90 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08E85B9C @ =gUnk_03002C70
	str r0, [r1, #4]
	ldr r0, _08E85BA0 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E85B46:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E85B46
	ldr r0, _08E85BA4 @ =gUnk_03002D34
	movs r4, #0
	str r4, [r0]
	ldr r0, _08E85BA8 @ =gUnk_03002D38
	strb r4, [r0]
	movs r0, #0
	bl sub_08E90EE0
	bl sub_08E84AF4
	bl sub_08E8D4EC
	ldr r0, _08E85BAC @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_08E85B6A:
	ldr r2, _08E85BB0 @ =gUnk_03001F90
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _08E85BB4 @ =gUnk_02027D4C
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xe
	bls _08E85B6A
	ldr r1, _08E85BAC @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E85B90: .4byte 0x040000D4
_08E85B94: .4byte gUnk_03003E90
_08E85B98: .4byte 0x85000005
_08E85B9C: .4byte gUnk_03002C70
_08E85BA0: .4byte 0x85000014
_08E85BA4: .4byte gUnk_03002D34
_08E85BA8: .4byte gUnk_03002D38
_08E85BAC: .4byte 0x04000208
_08E85BB0: .4byte gUnk_03001F90
_08E85BB4: .4byte gUnk_02027D4C

	thumb_func_start sub_08E85BB8
sub_08E85BB8: @ 0x08E85BB8
	push {lr}
	ldr r0, _08E85BD4 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E85BD8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E85BDC
	.align 2, 0
_08E85BD4: .4byte gUnk_03003DB0
_08E85BD8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E85BDC:
	adds r0, r1, r0
	ldr r1, [r0, #0x40]
	bl sub_08E9199C
	pop {r0}
	bx r0

	thumb_func_start sub_08E85BE8
sub_08E85BE8: @ 0x08E85BE8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08E84C78
	bl sub_08E917C8
	bl sub_08E8D4EC
	ldr r0, _08E85C54 @ =gUnk_03000A40
	movs r3, #0
	str r3, [r0]
	ldr r2, _08E85C58 @ =gUnk_03002C20
	ldr r0, [r2]
	ldr r1, _08E85C5C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08E85C60 @ =gUnk_03002CC8
	strh r3, [r0]
	ldr r1, _08E85C64 @ =gUnk_03003E70
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _08E85C68 @ =gUnk_03003690
	ldr r0, _08E85C6C @ =0x00001F03
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _08E85C70 @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08E85C74 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08E85C78 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08E85C7C @ =gUnk_03003E60
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _08E85C80 @ =gUnk_02001379
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E85C54: .4byte gUnk_03000A40
_08E85C58: .4byte gUnk_03002C20
_08E85C5C: .4byte 0xFFFFFBFF
_08E85C60: .4byte gUnk_03002CC8
_08E85C64: .4byte gUnk_03003E70
_08E85C68: .4byte gUnk_03003690
_08E85C6C: .4byte 0x00001F03
_08E85C70: .4byte 0x040000D4
_08E85C74: .4byte 0x8100C000
_08E85C78: .4byte 0x81000200
_08E85C7C: .4byte gUnk_03003E60
_08E85C80: .4byte gUnk_02001379

	thumb_func_start sub_08E85C84
sub_08E85C84: @ 0x08E85C84
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08E85CF8 @ =gUnk_03003E70
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E85CFC @ =gUnk_03003690
	movs r2, #0
	ldr r0, _08E85D00 @ =0x00001F03
	strh r0, [r1]
	ldr r0, _08E85D04 @ =gUnk_03003E60
	strh r2, [r0]
	strh r2, [r0, #2]
_08E85CA0:
	ldr r4, _08E85D08 @ =gUnk_0200DAB4
	ldr r1, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r5, _08E85D0C @ =0x040000D4
	str r1, [r5]
	lsls r0, r2, #6
	ldr r1, _08E85D10 @ =0x0600F800
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _08E85D14 @ =0x8000001E
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bls _08E85CA0
	subs r4, #0x10
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08E9198C
	ldr r0, [r4, #8]
	str r0, [r5]
	ldr r0, _08E85D18 @ =gUnk_03003F80
	str r0, [r5, #4]
	ldr r0, _08E85D1C @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08E85D20 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08E85D24 @ =gUnk_0200141D
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E85CF8: .4byte gUnk_03003E70
_08E85CFC: .4byte gUnk_03003690
_08E85D00: .4byte 0x00001F03
_08E85D04: .4byte gUnk_03003E60
_08E85D08: .4byte gUnk_0200DAB4
_08E85D0C: .4byte 0x040000D4
_08E85D10: .4byte 0x0600F800
_08E85D14: .4byte 0x8000001E
_08E85D18: .4byte gUnk_03003F80
_08E85D1C: .4byte 0x80000010
_08E85D20: .4byte gUnk_03002C20
_08E85D24: .4byte gUnk_0200141D

	thumb_func_start nullsub_46
nullsub_46: @ 0x08E85D28
	bx lr
	.align 2, 0

	thumb_func_start sub_08E85D2C
sub_08E85D2C: @ 0x08E85D2C
	push {r4, lr}
	sub sp, #8
	ldr r0, _08E85D58 @ =gUnk_02001491
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _08E85D5C @ =gUnk_02001521
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E85D60
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E85D66
	.align 2, 0
_08E85D58: .4byte gUnk_02001491
_08E85D5C: .4byte gUnk_02001521
_08E85D60:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08E85D66:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08E85D94 @ =0x01000052
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08E9197C
	movs r1, #0
	str r1, [r4, #0x78]
	ldr r0, _08E85D98 @ =gUnk_02001525
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08E8626C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E85D94: .4byte 0x01000052
_08E85D98: .4byte gUnk_02001525

	thumb_func_start sub_08E85D9C
sub_08E85D9C: @ 0x08E85D9C
	push {r4, r5, lr}
	ldr r0, _08E85DB8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E85DBC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E85DC0
	.align 2, 0
_08E85DB8: .4byte gUnk_03003DB0
_08E85DBC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E85DC0:
	adds r0, r1, r0
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
_08E85DD0:
	lsls r2, r5, #1
	adds r1, r4, #0
	adds r1, #0x80
	adds r1, r1, r2
	ldr r3, _08E85E28 @ =gUnk_03000AB0
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x88
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x90
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x18
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08E85DD0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08E85E1A
	adds r0, r4, #0
	bl sub_08E8637C
_08E85E1A:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_08E9199C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E85E28: .4byte gUnk_03000AB0

	thumb_func_start nullsub_47
nullsub_47: @ 0x08E85E2C
	bx lr
	.align 2, 0

	thumb_func_start sub_08E85E30
sub_08E85E30: @ 0x08E85E30
	push {r4, lr}
	ldr r3, _08E85E58 @ =gUnk_03003E70
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _08E85E5C @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _08E85E60 @ =gUnk_03003E60
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	ldr r1, _08E85E64 @ =gUnk_0200155D
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E85E58: .4byte gUnk_03003E70
_08E85E5C: .4byte 0x0000F9FF
_08E85E60: .4byte gUnk_03003E60
_08E85E64: .4byte gUnk_0200155D

	thumb_func_start sub_08E85E68
sub_08E85E68: @ 0x08E85E68
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E85EEC @ =gUnk_0200DE98
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _08E85EF0 @ =0x0600C000
	bl sub_08E9198C
	movs r2, #0
	str r2, [sp]
	ldr r1, _08E85EF4 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E85EF8 @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _08E85EFC @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08E85F00 @ =gUnk_03006880
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _08E85F04 @ =gUnk_03003660
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _08E85F08 @ =0x0600E480
_08E85EA4:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08E85EA4
	ldr r3, _08E85F0C @ =0x0600E4C0
	movs r2, #0
_08E85EBC:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08E85EBC
	ldr r2, _08E85F10 @ =gUnk_03003E70
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08E85F14 @ =gUnk_0200160D
	str r0, [r5, #0x7c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E85EEC: .4byte gUnk_0200DE98
_08E85EF0: .4byte 0x0600C000
_08E85EF4: .4byte 0x040000D4
_08E85EF8: .4byte 0x0600CC60
_08E85EFC: .4byte 0x85000008
_08E85F00: .4byte gUnk_03006880
_08E85F04: .4byte gUnk_03003660
_08E85F08: .4byte 0x0600E480
_08E85F0C: .4byte 0x0600E4C0
_08E85F10: .4byte gUnk_03003E70
_08E85F14: .4byte gUnk_0200160D

	thumb_func_start sub_08E85F18
sub_08E85F18: @ 0x08E85F18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08E91714
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08E85F38 @ =gUnk_02001631
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E85F38: .4byte gUnk_02001631

	thumb_func_start sub_08E85F3C
sub_08E85F3C: @ 0x08E85F3C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08E85F60 @ =0xFFFF0000
	cmp r1, r0
	bne _08E85F58
	bl sub_08E9176C
	ldr r0, _08E85F64 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
_08E85F58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E85F60: .4byte 0xFFFF0000
_08E85F64: .4byte gUnk_0200165D

	thumb_func_start sub_08E85F68
sub_08E85F68: @ 0x08E85F68
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_08E84B34
	ldr r0, _08E85F88 @ =gUnk_02001681
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E85F88: .4byte gUnk_02001681

	thumb_func_start sub_08E85F8C
sub_08E85F8C: @ 0x08E85F8C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08E85FB8 @ =0xFFFF0000
	cmp r0, r1
	bne _08E85FC4
	ldr r0, _08E85FBC @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
	ldr r0, _08E85FC0 @ =gUnk_03000D60
	str r5, [r0]
	bl sub_08E85A6C
	b _08E8604E
	.align 2, 0
_08E85FB8: .4byte 0xFFFF0000
_08E85FBC: .4byte gUnk_03003DB0
_08E85FC0: .4byte gUnk_03000D60
_08E85FC4:
	bl sub_08E84C14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08E86018
	bl sub_08E84BEC
	ldr r1, _08E85FFC @ =gUnk_03000A5C
	ldr r0, _08E86000 @ =gUnk_03000A80
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08E86004 @ =gUnk_03000A68
	ldr r0, _08E86008 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _08E8600C @ =gUnk_03000A74
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08E86010 @ =gUnk_03000A50
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08E86014 @ =gUnk_02001749
	str r0, [r4, #0x7c]
	b _08E8604E
	.align 2, 0
_08E85FFC: .4byte gUnk_03000A5C
_08E86000: .4byte gUnk_03000A80
_08E86004: .4byte gUnk_03000A68
_08E86008: .4byte 0x04000128
_08E8600C: .4byte gUnk_03000A74
_08E86010: .4byte gUnk_03000A50
_08E86014: .4byte gUnk_02001749
_08E86018:
	cmp r0, #1
	bne _08E86034
	adds r0, r4, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08E8604E
	bl sub_08E84C04
	b _08E8604E
_08E86034:
	cmp r0, #0
	bge _08E86048
	bl sub_08E84BEC
	ldr r0, _08E86044 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
	b _08E8604E
	.align 2, 0
_08E86044: .4byte gUnk_0200165D
_08E86048:
	adds r0, r4, #0
	adds r0, #0x9c
	strh r5, [r0]
_08E8604E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08E86054
sub_08E86054: @ 0x08E86054
	ldr r1, _08E8605C @ =gUnk_02001755
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E8605C: .4byte gUnk_02001755

	thumb_func_start sub_08E86060
sub_08E86060: @ 0x08E86060
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
_08E8606E:
	lsls r2, r3, #1
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x88
	adds r0, r0, r2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	adds r0, r0, r2
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08E8606E
	movs r0, #3
	bl sub_08E84C20
	bl sub_08E84C84
	ldr r0, _08E860A8 @ =gUnk_020017A1
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E860A8: .4byte gUnk_020017A1

	thumb_func_start sub_08E860AC
sub_08E860AC: @ 0x08E860AC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08E860E2
	movs r0, #0
	strh r0, [r2]
	bl sub_08E84C94
	cmp r0, #0
	bne _08E860DE
	bl sub_08E85A6C
	b _08E860E2
_08E860DE:
	ldr r0, _08E860E8 @ =gUnk_020017E1
	str r0, [r4, #0x7c]
_08E860E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E860E8: .4byte gUnk_020017E1

	thumb_func_start sub_08E860EC
sub_08E860EC: @ 0x08E860EC
	movs r1, #1
	str r1, [r0, #0x78]
	ldr r1, _08E860F8 @ =gUnk_020017F1
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E860F8: .4byte gUnk_020017F1

	thumb_func_start sub_08E860FC
sub_08E860FC: @ 0x08E860FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E8611C
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E8611C
	subs r0, #1
	strh r0, [r1]
_08E8611C:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E86134
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #2
	beq _08E86134
	adds r0, #1
	strh r0, [r1]
_08E86134:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_08E8632C
	ldrh r1, [r5]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08E86158
	ldr r0, _08E86160 @ =gUnk_02001859
	str r0, [r4, #0x7c]
_08E86158:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E86160: .4byte gUnk_02001859

	thumb_func_start sub_08E86164
sub_08E86164: @ 0x08E86164
	adds r2, r0, #0
	adds r2, #0x98
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08E86174 @ =gUnk_0200186D
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E86174: .4byte gUnk_0200186D

	thumb_func_start sub_08E86178
sub_08E86178: @ 0x08E86178
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_08E8632C
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08E861A6
	ldr r0, _08E861AC @ =gUnk_020018A5
	str r0, [r4, #0x7c]
_08E861A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E861AC: .4byte gUnk_020018A5

	thumb_func_start sub_08E861B0
sub_08E861B0: @ 0x08E861B0
	ldr r2, _08E861C8 @ =gUnk_03002CC8
	movs r3, #0
	movs r1, #0x8f
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _08E861CC @ =gUnk_020018C5
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E861C8: .4byte gUnk_03002CC8
_08E861CC: .4byte gUnk_020018C5

	thumb_func_start sub_08E861D0
sub_08E861D0: @ 0x08E861D0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08E861FC @ =gUnk_03002CC8
	adds r2, r3, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _08E861F6
	strh r4, [r5, #4]
	ldr r0, _08E86200 @ =gUnk_020018F9
	str r0, [r3, #0x7c]
_08E861F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E861FC: .4byte gUnk_03002CC8
_08E86200: .4byte gUnk_020018F9

	thumb_func_start sub_08E86204
sub_08E86204: @ 0x08E86204
	push {lr}
	sub sp, #4
	ldr r1, _08E86250 @ =gUnk_03000A44
	adds r0, #0xa0
	ldrh r0, [r0]
	strb r0, [r1]
	mov r1, sp
	ldr r2, _08E86254 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08E86258 @ =0x01000200
	mov r0, sp
	bl sub_08E9197C
	ldr r1, _08E8625C @ =gUnk_03002CC8
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08E86260 @ =gUnk_02030000
	ldr r1, _08E86264 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08E9197C
	ldr r0, _08E86268 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
	bl sub_08E884B0
	bl sub_08E884E0
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E86250: .4byte gUnk_03000A44
_08E86254: .4byte 0x00007FFF
_08E86258: .4byte 0x01000200
_08E8625C: .4byte gUnk_03002CC8
_08E86260: .4byte gUnk_02030000
_08E86264: .4byte 0x06008000
_08E86268: .4byte gUnk_03003DB0

	thumb_func_start sub_08E8626C
sub_08E8626C: @ 0x08E8626C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	movs r1, #0
	bl sub_08E8632C
	ldr r0, _08E86328 @ =0x06010000
	str r0, [r7]
	movs r0, #0
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sl, r1
	mov r1, sl
	strh r1, [r7, #0x14]
	movs r1, #2
	mov sb, r1
	mov r1, sb
	strh r1, [r7, #0xc]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r1, r8
	strb r1, [r7, #0x1c]
	movs r6, #0xf
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r5, #0xc0
	lsls r5, r5, #0xc
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08E8FFC4
	adds r1, r7, #0
	adds r1, #0x28
	ldr r0, _08E86328 @ =0x06010000
	str r0, [r7, #0x28]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, sb
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #2
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08E8FFC4
	adds r1, r7, #0
	adds r1, #0x50
	ldr r0, _08E86328 @ =0x06010000
	str r0, [r7, #0x50]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, sb
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08E8FFC4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E86328: .4byte 0x06010000

	thumb_func_start sub_08E8632C
sub_08E8632C: @ 0x08E8632C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _08E86344 @ =gUnk_0200DAB8
	ldr r4, _08E86348 @ =gUnk_03003620
	ldr r2, _08E8634C @ =gUnk_03002C20
	cmp r1, #0
	beq _08E86354
	ldr r1, _08E86350 @ =0x040000D4
	adds r0, #1
	b _08E86358
	.align 2, 0
_08E86344: .4byte gUnk_0200DAB8
_08E86348: .4byte gUnk_03003620
_08E8634C: .4byte gUnk_03002C20
_08E86350: .4byte 0x040000D4
_08E86354:
	ldr r1, _08E86374 @ =0x040000D4
	adds r0, #2
_08E86358:
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08E86378 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E86374: .4byte 0x040000D4
_08E86378: .4byte 0x80000010

	thumb_func_start sub_08E8637C
sub_08E8637C: @ 0x08E8637C
	push {lr}
	adds r1, r0, #0
	adds r1, #0xa0
	ldrh r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0xa8
	strh r1, [r0, #0x10]
	movs r1, #0xa0
	strh r1, [r0, #0x12]
	bl sub_08E907CC
	pop {r0}
	bx r0

	thumb_func_start sub_08E8639C
sub_08E8639C: @ 0x08E8639C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x3c]
	ldr r0, [r4, #0x28]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrh r0, [r5, #0x30]
	movs r6, #0
	strh r0, [r4, #0x30]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x34]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08E864F8
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E863D8
sub_08E863D8: @ 0x08E863D8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08E863F0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_08E863F0:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E86402
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08E86402:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08E8646A
	adds r0, r4, #0
	bl sub_08E86474
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E86464
	adds r0, r4, #0
	bl sub_08E8FFC4
	ldrh r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	cmp r0, #0
	beq _08E8643C
	ldr r0, _08E86438 @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	b _08E86454
	.align 2, 0
_08E86438: .4byte 0x0000FDFF
_08E8643C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E8644C
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _08E8645A
_08E8644C:
	ldr r0, _08E86470 @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
_08E86454:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_08E8645A:
	cmp r2, #0
	beq _08E86464
	adds r0, r2, #0
	bl sub_08E863D8
_08E86464:
	adds r0, r4, #0
	bl sub_08E907CC
_08E8646A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E86470: .4byte 0x0000FBFF

	thumb_func_start sub_08E86474
sub_08E86474: @ 0x08E86474
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08E864B4
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E864BC
	ldr r0, [sp]
	asrs r0, r0, #2
	strh r0, [r4, #0x10]
	ldr r0, [sp, #4]
	asrs r0, r0, #2
	strh r0, [r4, #0x12]
_08E864B4:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E864BC
sub_08E864BC: @ 0x08E864BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _08E864CC
	bl sub_08E864BC
_08E864CC:
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x28]
	ldr r1, [r4]
	ldr r5, [r5, #0x2c]
	ldr r6, [r4, #4]
	cmp r2, #0
	beq _08E864EA
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, r1, r0
	str r0, [r4]
	ldr r0, [r2, #4]
	adds r0, r5, r0
	adds r0, r6, r0
	b _08E864F0
_08E864EA:
	adds r0, r1, r3
	str r0, [r4]
	adds r0, r6, r5
_08E864F0:
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E864F8
sub_08E864F8: @ 0x08E864F8
	push {lr}
_08E864FA:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _08E86504
	adds r0, r1, #0
	b _08E864FA
_08E86504:
	ldr r0, [r0, #0x38]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E8650C
sub_08E8650C: @ 0x08E8650C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	ldr r1, _08E8652C @ =0x0000FEFF
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E86526
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08E86526:
	pop {r0}
	bx r0
	.align 2, 0
_08E8652C: .4byte 0x0000FEFF

	thumb_func_start sub_08E86530
sub_08E86530: @ 0x08E86530
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x34
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x48]
	adds r4, r0, r1
	str r4, [r2, #0x48]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x4c]
	adds r3, r0, r1
	str r3, [r2, #0x4c]
	str r4, [r2, #0x2c]
	str r3, [r2, #0x30]
	adds r0, r2, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E86568
	ldr r0, [r2]
	ldr r1, [r0, #0x28]
	adds r1, r4, r1
	str r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r3, r0
	str r0, [r2, #0x30]
_08E86568:
	adds r0, r2, #4
	bl sub_08E863D8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E86574
sub_08E86574: @ 0x08E86574
	push {r4, lr}
	ldr r0, _08E86590 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E86594
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E86598
	.align 2, 0
_08E86590: .4byte gUnk_03003DB0
_08E86594:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E86598:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E86530
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E865CC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E865BE
	subs r0, #1
	strh r0, [r1]
	b _08E865E0
_08E865BE:
	ldr r0, _08E865C8 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
	b _08E865E0
	.align 2, 0
_08E865C8: .4byte gUnk_03003DB0
_08E865CC:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E865E0
	ldr r0, _08E865E8 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
_08E865E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E865E8: .4byte gUnk_03003DB0

	thumb_func_start sub_08E865EC
sub_08E865EC: @ 0x08E865EC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08E86620 @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #0x18
	cmp r1, #0
	beq _08E86624
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E8662A
	.align 2, 0
_08E86620: .4byte gUnk_02001E01
_08E86624:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E8662A:
	adds r2, r0, #0
	cmp r3, #0
	ble _08E86636
	movs r0, #0
	strb r0, [r2, #3]
	b _08E8663E
_08E86636:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08E8663E:
	strh r0, [r2]
	ldrb r1, [r2, #3]
	ldr r3, _08E86654 @ =gUnk_03002CC8
	cmp r5, #0
	beq _08E86658
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _08E86660
	.align 2, 0
_08E86654: .4byte gUnk_03002CC8
_08E86658:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_08E86660:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _08E86678 @ =gUnk_03002CC8
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E86678: .4byte gUnk_03002CC8

	thumb_func_start sub_08E8667C
sub_08E8667C: @ 0x08E8667C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08E866B0 @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r6, #0x18
	cmp r1, #0
	beq _08E866B4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E866BA
	.align 2, 0
_08E866B0: .4byte gUnk_02001E01
_08E866B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E866BA:
	adds r2, r0, #0
	cmp r3, #0
	ble _08E866C6
	movs r0, #0
	strb r0, [r2, #3]
	b _08E866CE
_08E866C6:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08E866CE:
	strh r0, [r2]
	ldrb r3, [r2, #3]
	ldr r4, _08E866E4 @ =gUnk_03002CC8
	cmp r5, #0
	beq _08E866E8
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _08E866F0
	.align 2, 0
_08E866E4: .4byte gUnk_03002CC8
_08E866E8:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_08E866F0:
	strb r6, [r2, #2]
	ldr r1, _08E86708 @ =gUnk_03002CC8
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E86708: .4byte gUnk_03002CC8

	thumb_func_start sub_08E8670C
sub_08E8670C: @ 0x08E8670C
	push {r4, lr}
	ldr r4, _08E86728 @ =gUnk_03003DB0
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08E8672C @ =gUnk_03002CC8
	cmp r0, #0
	beq _08E86730
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E86734
	.align 2, 0
_08E86728: .4byte gUnk_03003DB0
_08E8672C: .4byte gUnk_03002CC8
_08E86730:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E86734:
	adds r2, r1, r0
	movs r0, #2
	ldrsb r0, [r2, r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	lsrs r0, r0, #4
	strh r0, [r3, #4]
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8678C
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08E86772
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08E8677A
	movs r0, #0x1e
	b _08E86780
_08E86772:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E8677E
_08E8677A:
	strh r2, [r3, #4]
	b _08E86782
_08E8677E:
	movs r0, #0x1f
_08E86780:
	strh r0, [r3, #4]
_08E86782:
	movs r0, #0
	strh r0, [r3, #2]
	ldr r0, [r4]
	bl sub_08E8F86C
_08E8678C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E86794
sub_08E86794: @ 0x08E86794
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08E867D0 @ =gUnk_02001EF9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r4, r4, #0x18
	cmp r1, #0
	beq _08E867D4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E867DA
	.align 2, 0
_08E867D0: .4byte gUnk_02001EF9
_08E867D4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E867DA:
	adds r2, r1, #0
	strh r5, [r2]
	asrs r4, r4, #0x18
	cmp r4, #0
	bge _08E867E6
	rsbs r4, r4, #0
_08E867E6:
	strb r4, [r2, #2]
	cmp r6, #0
	beq _08E867F0
	movs r0, #0x10
	b _08E867F2
_08E867F0:
	movs r0, #0x20
_08E867F2:
	strb r0, [r2, #3]
	ldrb r1, [r2, #3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #3]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E86804
sub_08E86804: @ 0x08E86804
	push {r4, lr}
	ldr r0, _08E86820 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E86824
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E86828
	.align 2, 0
_08E86820: .4byte gUnk_03003DB0
_08E86824:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E86828:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r2, [r4, #3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E8685A
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _08E86852
	adds r0, r1, #0
	movs r1, #1
	bl sub_08E865EC
	b _08E8685A
_08E86852:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08E865EC
_08E8685A:
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E86892
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #3]
	movs r1, #0x10
	ands r1, r0
	ldrb r0, [r4, #2]
	cmp r1, #0
	beq _08E86886
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_08E865EC
	b _08E86892
_08E86886:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_08E865EC
_08E86892:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E868CA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E868C0
	ldr r1, _08E868B8 @ =gUnk_03002CC8
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _08E868BC @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
	b _08E868CA
	.align 2, 0
_08E868B8: .4byte gUnk_03002CC8
_08E868BC: .4byte gUnk_03003DB0
_08E868C0:
	movs r0, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
_08E868CA:
	ldrb r0, [r4, #3]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r4, #3]
	ldr r0, _08E868E8 @ =gUnk_03002CC8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08E868E2
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r4, #3]
_08E868E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E868E8: .4byte gUnk_03002CC8

	thumb_func_start sub_08E868EC
sub_08E868EC: @ 0x08E868EC
	push {lr}
	ldr r1, _08E86904 @ =gUnk_03002CC8
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08E868FA
	cmp r0, #0x1f
	bne _08E86908
_08E868FA:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08E86908
	movs r0, #0
	b _08E8690A
	.align 2, 0
_08E86904: .4byte gUnk_03002CC8
_08E86908:
	movs r0, #1
_08E8690A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E86910
sub_08E86910: @ 0x08E86910
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E86940 @ =gUnk_02002069
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_08E8F750
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08E86944
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E86948
	.align 2, 0
_08E86940: .4byte gUnk_02002069
_08E86944:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E86948:
	adds r2, r1, r0
	str r5, [r2]
	ldrh r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r4, #3]
	strb r0, [r2, #8]
	ldrb r0, [r4, #2]
	lsls r0, r0, #5
	movs r1, #0
	strh r0, [r2, #0xa]
	strb r1, [r2, #0xc]
	movs r0, #0xff
	strb r0, [r2, #0xd]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E86974
sub_08E86974: @ 0x08E86974
	push {lr}
	ldr r0, _08E86990 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E86994
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E86998
	.align 2, 0
_08E86990: .4byte gUnk_03003DB0
_08E86994:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E86998:
	adds r2, r1, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r2, #0xd]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _08E869B0
	adds r0, r1, #1
	strb r0, [r2, #0xd]
	b _08E869E4
_08E869B0:
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2, #8]
	cmp r0, r3
	blo _08E869C4
	strb r1, [r2, #0xc]
_08E869C4:
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldr r1, [r2, #4]
	ldrh r2, [r2, #0xa]
	lsrs r2, r2, #2
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl sub_08E9197C
_08E869E4:
	pop {r0}
	bx r0

	thumb_func_start sub_08E869E8
sub_08E869E8: @ 0x08E869E8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E86A18 @ =gUnk_0200213D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_08E8F750
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08E86A1C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E86A20
	.align 2, 0
_08E86A18: .4byte gUnk_0200213D
_08E86A1C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E86A20:
	adds r2, r1, r0
	str r5, [r2]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	ldrb r0, [r4]
	strb r0, [r2, #6]
	ldrb r0, [r4, #2]
	strb r0, [r2, #7]
	ldrb r0, [r4, #1]
	strb r0, [r2, #8]
	strb r1, [r2, #9]
	movs r0, #0xff
	strb r0, [r2, #0xa]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E86A48
sub_08E86A48: @ 0x08E86A48
	push {r4, lr}
	ldr r0, _08E86A64 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E86A68
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E86A6C
	.align 2, 0
_08E86A64: .4byte gUnk_03003DB0
_08E86A68:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E86A6C:
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldrb r1, [r3, #0xa]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08E86A84
	adds r0, r1, #1
	strb r0, [r3, #0xa]
	b _08E86AD6
_08E86A84:
	ldrb r1, [r3, #9]
	adds r1, #1
	movs r2, #0
	strb r1, [r3, #9]
	strb r2, [r3, #0xa]
	ldrh r0, [r3, #4]
	adds r0, #1
	ldrb r4, [r3, #7]
	adds r0, r0, r4
	strh r0, [r3, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r3, #8]
	cmp r1, r0
	blo _08E86AA8
	movs r0, #0
	strb r0, [r3, #9]
	strh r2, [r3, #4]
_08E86AA8:
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldr r2, _08E86ADC @ =0x040000D4
	adds r0, #2
	str r0, [r2]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	ldr r1, _08E86AE0 @ =gUnk_03003F80
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08E86AE4 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08E86AD6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E86ADC: .4byte 0x040000D4
_08E86AE0: .4byte gUnk_03003F80
_08E86AE4: .4byte gUnk_03002C20

	thumb_func_start sub_08E86AE8
sub_08E86AE8: @ 0x08E86AE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r5, r0, #0
	ldr r0, [sp, #0x88]
	ldr r4, [sp, #0x8c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x34]
	ldr r0, _08E86B70 @ =gUnk_020027ED
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_08E8F750
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _08E86B74 @ =gUnk_0200DAB8
	mov ip, r0
	ldr r4, _08E86B78 @ =gUnk_03002C20
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x44]
	adds r0, #4
	str r0, [sp, #0x48]
	adds r0, #4
	str r0, [sp, #0x4c]
	adds r0, #4
	str r0, [sp, #0x50]
	adds r0, #4
	str r0, [sp, #0x54]
	adds r0, #4
	str r0, [sp, #0x58]
	adds r0, #4
	str r0, [sp, #0x5c]
	adds r0, #4
	str r0, [sp, #0x60]
	adds r0, #4
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _08E86B7C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _08E86B82
	.align 2, 0
_08E86B70: .4byte gUnk_020027ED
_08E86B74: .4byte gUnk_0200DAB8
_08E86B78: .4byte gUnk_03002C20
_08E86B7C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
_08E86B82:
	adds r1, r7, #0
	str r5, [r1]
	movs r2, #0xab
	lsls r2, r2, #2
	adds r3, r1, r2
	movs r6, #0
	movs r5, #0x10
	strb r5, [r3]
	adds r2, #1
	adds r0, r1, r2
	strb r6, [r0]
	ldr r5, _08E86F80 @ =0x000002AE
	adds r0, r1, r5
	movs r2, #0
	mov sl, r2
	strh r6, [r0]
	adds r5, #2
	adds r5, r1, r5
	str r5, [sp, #0x3c]
	mov r0, r8
	strb r0, [r5]
	ldr r2, _08E86F84 @ =0x000002B1
	adds r2, r2, r1
	mov r8, r2
	mov r5, sb
	strb r5, [r2]
	ldr r0, _08E86F88 @ =0x000002B2
	adds r5, r1, r0
	movs r0, #1
	strb r0, [r5]
	ldr r2, _08E86F8C @ =0x000002B3
	adds r0, r1, r2
	mov r2, sl
	strb r2, [r0]
	movs r0, #0xad
	lsls r0, r0, #2
	adds r0, r0, r1
	mov sl, r0
	mov r2, sp
	ldrh r2, [r2, #0x2c]
	strh r2, [r0]
	ldr r0, _08E86F90 @ =0x000002B6
	adds r0, r0, r1
	mov sb, r0
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _08E86BEE
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_08E86BEE:
	ldr r1, _08E86F94 @ =0x040000D4
	ldrb r0, [r5]
	lsls r0, r0, #5
	add r0, ip
	str r0, [r1]
	ldr r5, [sp, #0x3c]
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r2, _08E86F98 @ =gUnk_03003440
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r3, _08E86F9C @ =0x80000010
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	mov r5, ip
	str r5, [r1]
	mov r5, r8
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r5, _08E86F98 @ =gUnk_03003440
	adds r0, r0, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	orrs r0, r2
	str r0, [r4]
	str r6, [sp, #4]
	adds r5, r7, #4
	add r0, sp, #4
	adds r1, r5, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E86FA4 @ =0x06010000
	str r0, [r7, #4]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r7, #0x18]
	ldr r1, [r7]
	ldrh r0, [r1]
	strh r0, [r7, #0x10]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1e]
	strh r6, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, [sp, #0x3c]
	ldrb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x23
	strb r0, [r1]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r7, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r7, #0x16]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r7, #0xc]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r7, #0x2c]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r7, #0x30]
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	movs r0, #0x10
	strh r0, [r7, #0x38]
	strh r6, [r7, #0x3a]
	str r6, [r7, #0x3c]
	str r6, [r7, #0x40]
	str r6, [r7, #0x44]
	str r6, [sp, #8]
	adds r4, r7, #0
	adds r4, #0x48
	ldr r0, [sp, #0x44]
	adds r1, r4, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r1, _08E86FA4 @ =0x06010000
	str r1, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x5c
	movs r2, #0xa0
	lsls r2, r2, #2
	strh r2, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #4]
	adds r0, r7, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r0, [r7]
	ldrb r0, [r0, #6]
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r6, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x64
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x67
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x50]
	str r6, [r7, #0x70]
	str r6, [r7, #0x74]
	adds r0, r7, #0
	adds r0, #0x78
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r2, r7, #0
	adds r2, #0x7c
	movs r1, #0x10
	strh r1, [r2]
	adds r0, #4
	strh r6, [r0]
	adds r0, #2
	str r6, [r0]
	adds r1, r7, #0
	adds r1, #0x84
	str r6, [r1]
	adds r0, #8
	str r6, [r0]
	str r4, [r7, #0x44]
	str r5, [r1]
	ldrh r1, [r2]
	ldr r0, _08E86FA8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	str r6, [sp, #0xc]
	adds r5, #0x88
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r2, _08E86FA4 @ =0x06010000
	str r2, [r5]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r1, #0x10
	strb r1, [r5, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r5, #0x1f]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	strh r0, [r5, #0x10]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xa
	strh r0, [r5, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xa
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x10]
	adds r4, #0x88
	ldr r0, [sp, #0x4c]
	adds r1, r4, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r1, _08E86FA4 @ =0x06010000
	str r1, [r4]
	movs r2, #0xb0
	lsls r2, r2, #2
	strh r2, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #8]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0xa]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r0, #0x10
	strh r0, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08E86FA8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [sp, #0x50]
	adds r1, r5, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r2, _08E86FA4 @ =0x06010000
	str r2, [r5]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r1, #0x10
	strb r1, [r5, #0x1c]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	strb r0, [r5, #0x1f]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #0x14
	strh r0, [r5, #0x10]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #5
	strh r0, [r5, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #5
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x18]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [sp, #0x54]
	adds r1, r4, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r2, _08E86FA4 @ =0x06010000
	str r2, [r4]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08E86FA8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E86FA4 @ =0x06010000
	str r0, [r5]
	movs r1, #0xb0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r2, #0x10
	strb r2, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #0x1f]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #5
	strh r0, [r5, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #5
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x20]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [sp, #0x5c]
	adds r1, r4, #0
	ldr r2, _08E86FA0 @ =0x05000011
	bl sub_08E9197C
	ldr r2, _08E86FA4 @ =0x06010000
	str r2, [r4]
	b _08E86FAC
	.align 2, 0
_08E86F80: .4byte 0x000002AE
_08E86F84: .4byte 0x000002B1
_08E86F88: .4byte 0x000002B2
_08E86F8C: .4byte 0x000002B3
_08E86F90: .4byte 0x000002B6
_08E86F94: .4byte 0x040000D4
_08E86F98: .4byte gUnk_03003440
_08E86F9C: .4byte 0x80000010
_08E86FA0: .4byte 0x05000011
_08E86FA4: .4byte 0x06010000
_08E86FA8: .4byte 0x0000FFEF
_08E86FAC:
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08E870EC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x24]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	ldr r2, _08E870F0 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E870F4 @ =0x06010000
	str r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r2, #0x10
	strb r2, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #0x1f]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0x14
	strh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0xf
	strh r0, [r5, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xf
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x28]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [sp, #0x64]
	adds r1, r4, #0
	ldr r2, _08E870F0 @ =0x05000011
	bl sub_08E9197C
	ldr r2, _08E870F4 @ =0x06010000
	str r2, [r4]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0x16]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r0, [r4, #0x34]
	ldr r2, _08E870EC @ =0x0000FFEF
	ands r2, r0
	strh r2, [r4, #0x34]
	ldr r0, [sp, #0x38]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E870EC: .4byte 0x0000FFEF
_08E870F0: .4byte 0x05000011
_08E870F4: .4byte 0x06010000

	thumb_func_start sub_08E870F8
sub_08E870F8: @ 0x08E870F8
	ldr r0, _08E87104 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E87108 @ =gUnk_02002801
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08E87104: .4byte gUnk_03003DB0
_08E87108: .4byte gUnk_02002801

	thumb_func_start sub_08E8710C
sub_08E8710C: @ 0x08E8710C
	push {r4, r5, r6, lr}
	ldr r6, _08E87128 @ =gUnk_03003DB0
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8712C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E87130
	.align 2, 0
_08E87128: .4byte gUnk_03003DB0
_08E8712C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E87130:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E87148
	movs r1, #0
	b _08E8714C
_08E87148:
	ldr r0, _08E8716C @ =gUnk_03000AB0
	ldrh r1, [r0, #0x10]
_08E8714C:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r3, [r2]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08E871C4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E87170
	movs r0, #1
	orrs r0, r3
	strb r0, [r2]
	b _08E87260
	.align 2, 0
_08E8716C: .4byte gUnk_03000AB0
_08E87170:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08E87188
	movs r0, #0xfb
	ands r0, r3
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _08E87260
_08E87188:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08E871A8
	ldr r1, _08E871A0 @ =0x000002AE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r1, [r6]
	ldr r0, _08E871A4 @ =gUnk_020030F9
	b _08E8725E
	.align 2, 0
_08E871A0: .4byte 0x000002AE
_08E871A4: .4byte gUnk_020030F9
_08E871A8:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08E87260
	ldr r1, _08E871BC @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08E871C0 @ =gUnk_02002E09
	b _08E8725E
	.align 2, 0
_08E871BC: .4byte 0x000002AE
_08E871C0: .4byte gUnk_02002E09
_08E871C4:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08E8722C
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08E87208
	ldr r1, _08E871E8 @ =0x000002AD
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E871F0
	ldr r0, _08E871EC @ =0x000002B2
	adds r1, r4, r0
	movs r0, #1
	b _08E87206
	.align 2, 0
_08E871E8: .4byte 0x000002AD
_08E871EC: .4byte 0x000002B2
_08E871F0:
	cmp r0, #1
	bne _08E87200
	ldr r0, _08E871FC @ =0x000002B2
	adds r1, r4, r0
	movs r0, #3
	b _08E87206
	.align 2, 0
_08E871FC: .4byte 0x000002B2
_08E87200:
	ldr r0, _08E87220 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #5
_08E87206:
	strb r0, [r1]
_08E87208:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E87224
	movs r0, #4
	orrs r0, r1
	movs r1, #0x40
	b _08E87226
	.align 2, 0
_08E87220: .4byte 0x000002B2
_08E87224:
	movs r0, #1
_08E87226:
	orrs r0, r1
	strb r0, [r2]
	b _08E87260
_08E8722C:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08E8724C
	ldr r1, _08E87244 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08E87248 @ =gUnk_02002A49
	b _08E8725E
	.align 2, 0
_08E87244: .4byte 0x000002AE
_08E87248: .4byte gUnk_02002A49
_08E8724C:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08E87260
	ldr r1, _08E872A0 @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _08E872A4 @ =gUnk_02002C29
_08E8725E:
	str r0, [r1, #8]
_08E87260:
	adds r0, r4, #0
	bl sub_08E872BC
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E872B6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E872A8
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E863D8
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E863D8
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E863D8
	b _08E872B6
	.align 2, 0
_08E872A0: .4byte 0x000002AE
_08E872A4: .4byte gUnk_02002C29
_08E872A8:
	adds r0, r4, #4
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E863D8
_08E872B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E872BC
sub_08E872BC: @ 0x08E872BC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08E872F4 @ =0x000002B3
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08E87342
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	ldr r1, _08E872F8 @ =gUnk_0200DAB8
	ldr r6, _08E872FC @ =gUnk_03003440
	ldr r5, _08E87300 @ =gUnk_03002C20
	cmp r0, #0
	beq _08E87308
	ldr r2, _08E87304 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _08E87310
	.align 2, 0
_08E872F4: .4byte 0x000002B3
_08E872F8: .4byte gUnk_0200DAB8
_08E872FC: .4byte gUnk_03003440
_08E87300: .4byte gUnk_03002C20
_08E87304: .4byte 0x000002B2
_08E87308:
	ldr r2, _08E87348 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
_08E87310:
	lsls r0, r0, #5
	adds r4, r0, r1
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	eors r0, r1
	strb r0, [r2]
	ldr r1, _08E8734C @ =0x040000D4
	str r4, [r1]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08E87350 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_08E87342:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E87348: .4byte 0x000002B2
_08E8734C: .4byte 0x040000D4
_08E87350: .4byte 0x80000010

	thumb_func_start sub_08E87354
sub_08E87354: @ 0x08E87354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08E87378 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8737C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E87380
	.align 2, 0
_08E87378: .4byte gUnk_03003DB0
_08E8737C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E87380:
	adds r0, r1, r0
	adds r5, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	ldrh r3, [r5, #0x18]
	movs r4, #0x23
	adds r4, r4, r5
	mov sl, r4
	adds r6, r5, #0
	adds r6, #0x5c
	adds r4, r5, #0
	adds r4, #0x67
	str r4, [sp]
	adds r7, r5, #0
	adds r7, #0xb4
	movs r4, #0xb8
	adds r4, r4, r5
	mov ip, r4
	movs r4, #0xa0
	adds r4, r4, r5
	mov r8, r4
	adds r4, r5, #0
	adds r4, #0xab
	str r4, [sp, #4]
	movs r4, #0xe4
	adds r4, r4, r5
	mov sb, r4
	adds r4, r5, #0
	adds r4, #0xef
	str r4, [sp, #8]
	cmp r1, #0
	beq _08E8742C
	adds r0, #8
	str r0, [r5, #0x2c]
	adds r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08E87424 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	ldr r0, _08E87428 @ =0x000002B1
	adds r3, r5, r0
	ldrb r0, [r3]
	mov r1, sl
	strb r0, [r1]
	ldrh r1, [r6]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r6]
	ldrb r0, [r3]
	ldr r4, [sp]
	strb r0, [r4]
	ldr r0, [r7]
	subs r0, #8
	str r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	subs r0, #4
	str r0, [r1]
	mov r4, r8
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r3, r1, #0
	orrs r0, r3
	strh r0, [r4]
	movs r4, #0xac
	lsls r4, r4, #2
	b _08E87482
	.align 2, 0
_08E87424: .4byte 0x0000F83F
_08E87428: .4byte 0x000002B1
_08E8742C:
	subs r0, #8
	str r0, [r5, #0x2c]
	subs r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08E874B4 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r3, r5, r0
	ldrb r0, [r3]
	mov r1, sl
	strb r0, [r1]
	ldrh r1, [r6]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r6]
	ldrb r0, [r3]
	ldr r4, [sp]
	strb r0, [r4]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	mov r4, r8
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r3, r1, #0
	orrs r0, r3
	strh r0, [r4]
	ldr r4, _08E874B8 @ =0x000002B1
_08E87482:
	adds r1, r5, r4
	ldrb r0, [r1]
	ldr r4, [sp, #4]
	strb r0, [r4]
	mov r4, sb
	ldrh r0, [r4]
	ands r2, r0
	orrs r2, r3
	strh r2, [r4]
	ldrb r0, [r1]
	ldr r1, [sp, #8]
	strb r0, [r1]
	movs r4, #0xab
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E874C0
	ldr r0, _08E874BC @ =0x000002B2
	adds r1, r5, r0
	movs r0, #1
	b _08E874C6
	.align 2, 0
_08E874B4: .4byte 0x0000F83F
_08E874B8: .4byte 0x000002B1
_08E874BC: .4byte 0x000002B2
_08E874C0:
	ldr r4, _08E87524 @ =0x000002B2
	adds r1, r5, r4
	movs r0, #3
_08E874C6:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08E872BC
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E874EC
	adds r0, r5, #4
	bl sub_08E863D8
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08E863D8
_08E874EC:
	ldr r0, _08E87528 @ =0x000002AE
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E87512
	ldr r0, _08E8752C @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E87530 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r0, [r4]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r4]
_08E87512:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E87524: .4byte 0x000002B2
_08E87528: .4byte 0x000002AE
_08E8752C: .4byte gUnk_03003DB0
_08E87530: .4byte gUnk_02002801

	thumb_func_start sub_08E87534
sub_08E87534: @ 0x08E87534
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08E87554 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E87558
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8755C
	.align 2, 0
_08E87554: .4byte gUnk_03003DB0
_08E87558:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8755C:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #0x30]
	adds r6, r4, #0
	adds r6, #0x23
	movs r2, #0x67
	adds r2, r2, r4
	mov sb, r2
	adds r2, r4, #0
	adds r2, #0xb4
	adds r3, r4, #0
	adds r3, #0xb8
	movs r7, #0xab
	adds r7, r7, r4
	mov ip, r7
	movs r7, #0xef
	adds r7, r7, r4
	mov r8, r7
	cmp r1, #0
	beq _08E875C8
	adds r0, #8
	str r0, [r4, #0x2c]
	adds r0, r5, #4
	str r0, [r4, #0x30]
	ldr r0, _08E875C4 @ =0x000002B1
	adds r1, r4, r0
	ldrb r0, [r1]
	strb r0, [r6]
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r2]
	subs r0, #8
	str r0, [r2]
	ldr r0, [r3]
	subs r0, #4
	str r0, [r3]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	b _08E875FA
	.align 2, 0
_08E875C4: .4byte 0x000002B1
_08E875C8:
	subs r0, #8
	str r0, [r4, #0x2c]
	subs r0, r5, #4
	str r0, [r4, #0x30]
	movs r7, #0xac
	lsls r7, r7, #2
	adds r1, r4, r7
	ldrb r0, [r1]
	strb r0, [r6]
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #8
	str r0, [r2]
	ldr r0, [r3]
	adds r0, #4
	str r0, [r3]
	ldr r2, _08E87614 @ =0x000002B1
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	mov r7, r8
_08E875FA:
	strb r0, [r7]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E8761C
	ldr r2, _08E87618 @ =0x000002B2
	adds r1, r4, r2
	movs r0, #1
	b _08E87622
	.align 2, 0
_08E87614: .4byte 0x000002B1
_08E87618: .4byte 0x000002B2
_08E8761C:
	ldr r3, _08E876A4 @ =0x000002B2
	adds r1, r4, r3
	movs r0, #3
_08E87622:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08E872BC
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E87648
	adds r0, r4, #4
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E863D8
_08E87648:
	ldr r0, _08E876A8 @ =0x000002AE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E87704
	ldrb r0, [r5]
	movs r1, #0x10
	ands r1, r0
	ldr r2, _08E876AC @ =gUnk_03003DB0
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0
	adds r7, r4, #0
	adds r7, #0xe4
	ldr r0, _08E876B0 @ =gUnk_02002801
	mov r8, r0
	cmp r1, #0
	beq _08E876B8
	ldr r1, _08E876B4 @ =0x0000F83F
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r0, r3
	strh r0, [r4, #0x18]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r5]
	ldrh r2, [r6]
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0xa0
	lsls r3, r3, #2
	b _08E876DC
	.align 2, 0
_08E876A4: .4byte 0x000002B2
_08E876A8: .4byte 0x000002AE
_08E876AC: .4byte gUnk_03003DB0
_08E876B0: .4byte gUnk_02002801
_08E876B4: .4byte 0x0000F83F
_08E876B8:
	ldr r1, _08E87710 @ =0x0000F83F
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r0, r3
	strh r0, [r4, #0x18]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r5]
	ldrh r2, [r6]
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0xb0
	lsls r3, r3, #2
_08E876DC:
	adds r2, r3, #0
	orrs r0, r2
	strh r0, [r6]
	ldrh r0, [r7]
	ands r1, r0
	orrs r1, r2
	strh r1, [r7]
	mov r7, ip
	ldr r0, [r7]
	mov r1, r8
	str r1, [r0, #8]
	movs r3, #0xab
	lsls r3, r3, #2
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r2]
_08E87704:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E87710: .4byte 0x0000F83F

	thumb_func_start sub_08E87714
sub_08E87714: @ 0x08E87714
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E8773C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E87740 @ =gUnk_0200DEB4
	cmp r0, #0
	beq _08E87744
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E87748
	.align 2, 0
_08E8773C: .4byte gUnk_03003DB0
_08E87740: .4byte gUnk_0200DEB4
_08E87744:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E87748:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08E8795C @ =0x000002AD
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r0, r2
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	add r1, sb
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	add r1, r8
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r0, _08E87960 @ =0x0000F83F
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, _08E87964 @ =0x000002B1
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	ldr r2, _08E87968 @ =0x00000133
	mov sl, r2
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08E87960 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r3, ip
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	subs r1, #8
	str r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	subs r1, #4
	str r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08E87960 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0xac
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r1, [r6]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08E87960 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r6]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r2, sb
	ldr r0, [r2]
	subs r0, #8
	str r0, [r2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r3, r8
	ldr r0, [r3]
	subs r0, #4
	str r0, [r3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08E87960 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r3, ip
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r3, _08E87960 @ =0x0000F83F
	ands r3, r1
	strh r3, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r2, ip
	ldrb r1, [r2]
	add r0, sl
	strb r1, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _08E87970
	ldr r3, _08E8796C @ =0x000002B2
	adds r1, r7, r3
	movs r0, #1
	b _08E87986
	.align 2, 0
_08E8795C: .4byte 0x000002AD
_08E87960: .4byte 0x0000F83F
_08E87964: .4byte 0x000002B1
_08E87968: .4byte 0x00000133
_08E8796C: .4byte 0x000002B2
_08E87970:
	cmp r0, #1
	bne _08E87980
	ldr r0, _08E8797C @ =0x000002B2
	adds r1, r7, r0
	movs r0, #3
	b _08E87986
	.align 2, 0
_08E8797C: .4byte 0x000002B2
_08E87980:
	ldr r2, _08E879F0 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #5
_08E87986:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08E872BC
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E879BC
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08E863D8
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08E863D8
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08E863D8
_08E879BC:
	ldr r0, _08E879F4 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E879DE
	ldr r0, _08E879F8 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E879FC @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _08E87A00 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08E879DE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E879F0: .4byte 0x000002B2
_08E879F4: .4byte 0x000002AE
_08E879F8: .4byte gUnk_03003DB0
_08E879FC: .4byte gUnk_02002801
_08E87A00: .4byte 0x000002AD

	thumb_func_start sub_08E87A04
sub_08E87A04: @ 0x08E87A04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E87A2C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E87A30 @ =gUnk_0200DEB4
	cmp r0, #0
	beq _08E87A34
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E87A38
	.align 2, 0
_08E87A2C: .4byte gUnk_03003DB0
_08E87A30: .4byte gUnk_0200DEB4
_08E87A34:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E87A38:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08E87C48 @ =0x000002AD
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r6, r0, r2
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	add r1, sb
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	add r1, r8
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r5, _08E87C4C @ =0x0000F83F
	mov ip, r5
	mov r0, ip
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, _08E87C50 @ =0x000002B1
	adds r5, r7, r1
	ldrb r1, [r5]
	ldr r2, _08E87C54 @ =0x00000133
	mov sl, r2
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	adds r1, #8
	str r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	str r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r3, sb
	ldr r0, [r3]
	subs r0, #0x10
	str r0, [r3]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r5, r8
	ldr r0, [r5]
	subs r0, #8
	str r0, [r5]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r5, #0xac
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r5, ip
	ands r5, r1
	strh r5, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08E87C5C
	ldr r2, _08E87C58 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #1
	b _08E87C72
	.align 2, 0
_08E87C48: .4byte 0x000002AD
_08E87C4C: .4byte 0x0000F83F
_08E87C50: .4byte 0x000002B1
_08E87C54: .4byte 0x00000133
_08E87C58: .4byte 0x000002B2
_08E87C5C:
	cmp r0, #1
	bne _08E87C6C
	ldr r3, _08E87C68 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #3
	b _08E87C72
	.align 2, 0
_08E87C68: .4byte 0x000002B2
_08E87C6C:
	ldr r5, _08E87CDC @ =0x000002B2
	adds r1, r7, r5
	movs r0, #5
_08E87C72:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08E872BC
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E87CA8
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08E863D8
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08E863D8
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08E863D8
_08E87CA8:
	ldr r0, _08E87CE0 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E87CCA
	ldr r0, _08E87CE4 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E87CE8 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r6, #2]
	ldr r2, _08E87CEC @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08E87CCA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E87CDC: .4byte 0x000002B2
_08E87CE0: .4byte 0x000002AE
_08E87CE4: .4byte gUnk_03003DB0
_08E87CE8: .4byte gUnk_02002801
_08E87CEC: .4byte 0x000002AD

	thumb_func_start sub_08E87CF0
sub_08E87CF0: @ 0x08E87CF0
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E87D06
	movs r0, #0
	b _08E87D08
_08E87D06:
	movs r0, #1
_08E87D08:
	pop {r1}
	bx r1

	thumb_func_start sub_08E87D0C
sub_08E87D0C: @ 0x08E87D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xdc
	adds r4, r0, #0
	str r1, [sp, #8]
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _08E87E24 @ =gUnk_03000A5C
	adds r1, r4, #0
	adds r1, #0x94
	ldr r2, _08E87E28 @ =gUnk_03000A68
	adds r5, r4, #0
	adds r5, #0x9a
	movs r3, #0x98
	adds r3, r3, r4
	mov r8, r3
	movs r3, #0x9c
	adds r3, r3, r4
	mov ip, r3
	adds r3, r4, #0
	adds r3, #0x9e
	str r3, [sp, #0x10]
	adds r3, #2
	str r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x1c]
	adds r3, #2
	str r3, [sp, #0x20]
	adds r3, #2
	str r3, [sp, #0x24]
	adds r3, #2
	str r3, [sp, #0x28]
	adds r3, #2
	str r3, [sp, #0x2c]
	adds r3, #2
	str r3, [sp, #0x30]
	adds r3, #4
	str r3, [sp, #0x34]
	adds r3, #2
	str r3, [sp, #0x38]
	adds r3, #1
	str r3, [sp, #0x3c]
	adds r3, #1
	str r3, [sp, #0x40]
	adds r3, #2
	str r3, [sp, #0x44]
	adds r3, #2
	str r3, [sp, #0x48]
	adds r3, #4
	str r3, [sp, #0x4c]
	adds r3, #1
	str r3, [sp, #0x50]
	adds r3, #1
	str r3, [sp, #0x54]
	adds r3, #1
	str r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x5c]
	adds r3, #8
	str r3, [sp, #0x60]
	adds r3, #4
	str r3, [sp, #0x64]
	adds r3, #4
	str r3, [sp, #0x68]
	adds r3, #4
	str r3, [sp, #0x6c]
	adds r3, #4
	str r3, [sp, #0x70]
	ldrb r3, [r7]
	str r3, [sp, #0x74]
	adds r3, r4, #0
	adds r3, #0xdc
	str r3, [sp, #0x78]
	ldrb r3, [r7, #1]
	str r3, [sp, #0x7c]
	adds r3, r4, #0
	adds r3, #0xe0
	str r3, [sp, #0x80]
	adds r3, #4
	str r3, [sp, #0x84]
	movs r3, #0xe5
	adds r3, r3, r4
	mov sl, r3
	adds r3, r4, #0
	adds r3, #0xe6
	str r3, [sp, #0x88]
	adds r3, #2
	str r3, [sp, #0x8c]
	mov r3, sp
	adds r3, #4
	str r3, [sp, #0x90]
	adds r3, r4, #0
	adds r3, #0x44
	str r3, [sp, #0x94]
	adds r3, #0x14
	str r3, [sp, #0x98]
	subs r3, #8
	str r3, [sp, #0x9c]
	adds r3, #0xe
	str r3, [sp, #0xa0]
	subs r3, #4
	str r3, [sp, #0xa4]
	adds r3, #5
	str r3, [sp, #0xa8]
	adds r3, #1
	str r3, [sp, #0xac]
	adds r3, #3
	str r3, [sp, #0xb0]
	subs r3, #0xf
	str r3, [sp, #0xb4]
	adds r3, #2
	str r3, [sp, #0xb8]
	adds r3, #0x1e
	str r3, [sp, #0xbc]
	adds r3, #2
	str r3, [sp, #0xc0]
	adds r3, #2
	str r3, [sp, #0xc4]
	adds r3, #2
	str r3, [sp, #0xc8]
	adds r3, #6
	str r3, [sp, #0xcc]
	adds r3, #4
	str r3, [sp, #0xd0]
	adds r3, #4
	str r3, [sp, #0xd4]
	adds r3, #4
	str r3, [sp, #0xd8]
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08E87E2C
	movs r0, #0
	b _08E87E2E
	.align 2, 0
_08E87E24: .4byte gUnk_03000A5C
_08E87E28: .4byte gUnk_03000A68
_08E87E2C:
	movs r0, #1
_08E87E2E:
	strh r0, [r1]
	ldrb r2, [r2]
	cmp r6, r2
	bne _08E87E42
	adds r2, r4, #0
	adds r2, #0x94
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08E87E42:
	movs r0, #0x94
	adds r0, r0, r4
	mov sb, r0
	ldrh r3, [r0]
	movs r0, #0x10
	movs r2, #0
	movs r1, #0
	orrs r0, r3
	mov r3, sb
	strh r0, [r3]
	strh r1, [r5]
	mov r0, r8
	strh r1, [r0]
	mov r3, ip
	strh r1, [r3]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	movs r0, #6
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	movs r0, #1
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	ldr r3, [sp, #0x1c]
	strh r0, [r3]
	ldr r0, [sp, #0x20]
	strh r1, [r0]
	ldr r3, [sp, #0x24]
	strb r2, [r3]
	ldr r0, [sp, #0x28]
	strh r1, [r0]
	ldr r3, [sp, #0x2c]
	strh r1, [r3]
	ldr r0, [sp, #0x30]
	str r1, [r0]
	ldr r3, [sp, #0x34]
	strh r1, [r3]
	ldr r0, [sp, #0x38]
	strb r2, [r0]
	ldr r3, [sp, #0x3c]
	strb r2, [r3]
	ldr r0, [sp, #0x40]
	strh r1, [r0]
	ldr r3, [sp, #0x44]
	strh r1, [r3]
	ldr r0, [sp, #0x48]
	strb r2, [r0]
	ldr r1, [sp, #0x4c]
	strb r2, [r1]
	ldr r3, [sp, #0x50]
	strb r2, [r3]
	ldr r0, [sp, #0x54]
	strb r2, [r0]
	ldr r1, [sp, #0x58]
	strb r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x5c]
	str r0, [r2]
	cmp r6, #1
	beq _08E87EDA
	cmp r6, #1
	bgt _08E87EC6
	cmp r6, #0
	beq _08E87ED0
	b _08E87EF8
_08E87EC6:
	cmp r6, #2
	beq _08E87EE4
	cmp r6, #3
	beq _08E87EEE
	b _08E87EF8
_08E87ED0:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xe8
	lsls r0, r0, #2
	b _08E87EF6
_08E87EDA:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xc8
	lsls r0, r0, #2
	b _08E87EF6
_08E87EE4:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xa8
	lsls r0, r0, #2
	b _08E87EF6
_08E87EEE:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0x88
	lsls r0, r0, #2
_08E87EF6:
	str r0, [r1]
_08E87EF8:
	movs r5, #0
	ldr r3, [sp, #0x60]
	str r5, [r3]
	ldr r0, [sp, #0x64]
	str r5, [r0]
	movs r1, #0
	mov r8, r1
	ldr r2, [sp, #0x68]
	strh r5, [r2]
	ldr r3, [sp, #0x6c]
	str r7, [r3]
	ldr r1, [sp, #0x74]
	lsls r0, r1, #2
	ldr r2, _08E880A0 @ =gUnk_020183F4
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [sp, #0x70]
	str r0, [r3]
	ldr r1, [sp, #0x7c]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	str r0, [r2]
	mov r0, r8
	ldr r3, [sp, #0x80]
	strb r0, [r3]
	ldr r1, [sp, #0x84]
	strb r0, [r1]
	mov r0, sl
	mov r2, r8
	strb r2, [r0]
	ldr r3, [sp, #0x88]
	strh r5, [r3]
	ldr r0, _08E880A4 @ =gUnk_030070B8
	ldr r1, [r0]
	ldr r0, _08E880A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E880AC @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r2, _08E880A4 @ =gUnk_030070B8
	str r0, [r2]
	ldr r3, [sp, #0x8c]
	str r0, [r3]
	str r5, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _08E880B0 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E880B4 @ =0x06010000
	str r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	ldr r0, _08E880B8 @ =gUnk_0200EF70
	ldrh r1, [r0, #0x28]
	strh r1, [r4, #0xc]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r3, #1
	rsbs r3, r3, #0
	mov r2, sp
	strb r3, [r2, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r7, #0x10
	strb r7, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #0x14
	strh r0, [r4, #0x10]
	movs r0, #0x82
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0x50
	str r0, [r4, #0x28]
	movs r0, #0x82
	lsls r0, r0, #2
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	ldr r0, _08E880BC @ =gUnk_03000A68
	ldrb r0, [r0]
	cmp r6, r0
	bne _08E87FBE
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
_08E87FBE:
	str r5, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, _08E880B0 @ =0x05000011
	bl sub_08E9197C
	ldr r1, _08E880B4 @ =0x06010000
	str r1, [r4, #0x44]
	movs r3, #0x88
	lsls r3, r3, #3
	ldr r2, [sp, #0x98]
	strh r3, [r2]
	ldr r1, _08E880C0 @ =gUnk_0200F0F4
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x2c]
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	ldrb r0, [r2]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x2e
	ldrb r0, [r0]
	ldr r1, [sp, #0xa0]
	strb r0, [r1]
	ldr r2, [sp, #0xa4]
	strh r5, [r2]
	ldr r3, [sp, #0xa8]
	ldrb r0, [r3]
	mov r1, sp
	ldrb r1, [r1, #0xc]
	orrs r0, r1
	strb r0, [r3]
	ldr r2, [sp, #0xac]
	strb r7, [r2]
	movs r0, #4
	ldr r3, [sp, #0xb0]
	strb r0, [r3]
	ldr r1, [sp, #0xb4]
	strh r0, [r1]
	ldr r0, _08E880C4 @ =0x0000FFEC
	ldr r2, [sp, #0xb8]
	strh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	str r3, [r4, #0x4c]
	str r7, [r4, #0x6c]
	movs r0, #0x50
	rsbs r0, r0, #0
	str r0, [r4, #0x70]
	ldr r0, [sp, #0xbc]
	strh r5, [r0]
	ldr r1, [sp, #0xc0]
	strh r5, [r1]
	ldr r0, _08E880C8 @ =0x00001010
	ldr r2, [sp, #0xc4]
	strh r0, [r2]
	ldr r3, [sp, #0xc8]
	strh r5, [r3]
	str r5, [r4, #0x7c]
	ldr r0, [sp, #0xcc]
	str r5, [r0]
	ldr r1, [sp, #0xd0]
	str r5, [r1]
	ldr r2, [sp, #0x94]
	str r2, [r4, #0x40]
	str r4, [r0]
	ldr r3, [sp, #0xc4]
	ldrh r1, [r3]
	ldr r0, _08E880CC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r3]
	ldr r0, [sp, #8]
	str r0, [r4, #0x38]
	ldr r1, [sp, #0xd4]
	str r5, [r1]
	ldr r2, [sp, #0xd8]
	str r5, [r2]
	mov r3, sb
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8808E
	adds r0, r4, #0
	bl sub_08E8BBD8
	ldr r1, [sp, #0xd4]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08E8BC68
	ldr r2, [sp, #0xd8]
	str r0, [r2]
	adds r0, r4, #0
	bl sub_08E8B4B0
	adds r1, r4, #0
	adds r1, #0x90
	str r0, [r1]
_08E8808E:
	add sp, #0xdc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E880A0: .4byte gUnk_020183F4
_08E880A4: .4byte gUnk_030070B8
_08E880A8: .4byte 0x00196225
_08E880AC: .4byte 0x3C6EF35F
_08E880B0: .4byte 0x05000011
_08E880B4: .4byte 0x06010000
_08E880B8: .4byte gUnk_0200EF70
_08E880BC: .4byte gUnk_03000A68
_08E880C0: .4byte gUnk_0200F0F4
_08E880C4: .4byte 0x0000FFEC
_08E880C8: .4byte 0x00001010
_08E880CC: .4byte 0x0000FFEF

	thumb_func_start sub_08E880D0
sub_08E880D0: @ 0x08E880D0
	push {r4, lr}
	lsls r3, r3, #0x18
	ldrb r1, [r2]
	lsls r1, r1, #2
	lsrs r3, r3, #0xe
	adds r1, r1, r3
	str r1, [r0]
	ldrb r3, [r2, #1]
	lsls r3, r3, #2
	str r3, [r0, #4]
	ldrb r4, [r2, #2]
	lsrs r1, r4, #4
	lsls r1, r1, #5
	subs r1, r3, r1
	str r1, [r0, #8]
	movs r1, #0xf
	ands r1, r4
	lsls r1, r1, #5
	adds r3, r3, r1
	str r3, [r0, #0xc]
	ldrb r1, [r2, #3]
	strh r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x12]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E88108
sub_08E88108: @ 0x08E88108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	mov r8, r1
	adds r4, r3, #0
	ldr r0, [sp, #0x50]
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	movs r5, #0
	str r5, [sp, #4]
	add r0, sp, #4
	adds r1, r7, #0
	ldr r2, _08E88458 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E8845C @ =0x06010000
	str r0, [r7]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	ldr r0, _08E88460 @ =gUnk_0200F094
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrh r0, [r4, #0x10]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #0x12]
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #4
	strb r1, [r7, #0x1f]
	movs r0, #0x38
	strh r0, [r7, #0x10]
	mov r0, sl
	lsls r0, r0, #7
	str r0, [sp, #0x28]
	adds r4, r0, #0
	adds r4, #0x90
	asrs r6, r4, #2
	strh r6, [r7, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r7, #8]
	movs r0, #0xe0
	str r0, [r7, #0x28]
	str r4, [r7, #0x2c]
	strh r5, [r7, #0x30]
	strh r5, [r7, #0x32]
	movs r0, #0x10
	strh r0, [r7, #0x34]
	strh r5, [r7, #0x36]
	str r5, [r7, #0x38]
	str r5, [r7, #0x3c]
	str r5, [r7, #0x40]
	str r5, [sp, #8]
	add r0, sp, #8
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _08E88458 @ =0x05000011
	bl sub_08E9197C
	ldr r1, _08E8845C @ =0x06010000
	str r1, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r0, _08E88464 @ =gUnk_0200EF70
	ldrh r2, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x50
	strh r2, [r1]
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, #0xe
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	mov r1, r8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	movs r0, #0x72
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x56
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x4c]
	movs r0, #0xe4
	lsls r0, r0, #1
	str r0, [r7, #0x6c]
	str r4, [r7, #0x70]
	adds r0, r7, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	movs r1, #0x10
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [r7, #0x7c]
	adds r0, #6
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	mov r0, sp
	mov r1, sb
	bl sub_08E8AD14
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	adds r4, r7, #0
	adds r4, #0x88
	adds r1, r4, #0
	ldr r2, _08E88458 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E8845C @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	ldr r0, _08E88468 @ =gUnk_0200F0F4
	mov r8, r0
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xa4
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x28]
	adds r1, #0x9c
	str r1, [sp, #0x2c]
	asrs r1, r1, #2
	mov sb, r1
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xa4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x2c]
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x10
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	adds r4, #0x44
	adds r1, r4, #0
	ldr r2, _08E88458 @ =0x05000011
	bl sub_08E9197C
	ldr r1, _08E8845C @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xac
	strh r0, [r4, #0x10]
	mov r1, sb
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xac
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x2c]
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x10
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x14]
	add r0, sp, #0x14
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r1, r4, #0
	ldr r2, _08E88458 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E8845C @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, r8
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #4
	strb r1, [r4, #0x1f]
	movs r0, #0xb4
	strh r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xb4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x18]
	add r0, sp, #0x18
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r1, r4, #0
	ldr r2, _08E88458 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E8845C @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #4
	strb r1, [r4, #0x1f]
	movs r0, #0xbc
	strh r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xbc
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x1c]
	add r0, sp, #0x1c
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r1, r4, #0
	ldr r2, _08E88458 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E8845C @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #4
	strb r1, [r4, #0x1f]
	movs r0, #0xc4
	strh r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xc4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E88458: .4byte 0x05000011
_08E8845C: .4byte 0x06010000
_08E88460: .4byte gUnk_0200F094
_08E88464: .4byte gUnk_0200EF70
_08E88468: .4byte gUnk_0200F0F4

	thumb_func_start sub_08E8846C
sub_08E8846C: @ 0x08E8846C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0xcc
	bl sub_08E863D8
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E863D8
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E863D8
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E863D8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E884B0
sub_08E884B0: @ 0x08E884B0
	ldr r1, _08E884CC @ =0x040000D4
	ldr r0, _08E884D0 @ =gUnk_0200F2F4
	str r0, [r1]
	ldr r0, _08E884D4 @ =gUnk_03003F80
	str r0, [r1, #4]
	ldr r0, _08E884D8 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08E884DC @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08E884CC: .4byte 0x040000D4
_08E884D0: .4byte gUnk_0200F2F4
_08E884D4: .4byte gUnk_03003F80
_08E884D8: .4byte 0x80000100
_08E884DC: .4byte gUnk_03002C20

	thumb_func_start sub_08E884E0
sub_08E884E0: @ 0x08E884E0
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08E88540 @ =gUnk_030070B8
	movs r2, #0
	str r2, [r0]
	ldr r1, _08E88544 @ =gUnk_03003E70
	movs r3, #0x9a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08E88548 @ =gUnk_03003690
	ldr r0, _08E8854C @ =0x00001C01
	strh r0, [r1]
	ldr r0, _08E88550 @ =0x00001D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _08E88554 @ =gUnk_03002CC8
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _08E88558 @ =gUnk_03003E60
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _08E8855C @ =gUnk_02003CDD
	movs r1, #0xb0
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08E88560 @ =gUnk_02005155
	str r3, [sp]
	movs r3, #0
	bl sub_08E8F750
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _08E88564
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E88568
	.align 2, 0
_08E88540: .4byte gUnk_030070B8
_08E88544: .4byte gUnk_03003E70
_08E88548: .4byte gUnk_03003690
_08E8854C: .4byte 0x00001C01
_08E88550: .4byte 0x00001D01
_08E88554: .4byte gUnk_03002CC8
_08E88558: .4byte gUnk_03003E60
_08E8855C: .4byte gUnk_02003CDD
_08E88560: .4byte gUnk_02005155
_08E88564:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E88568:
	adds r5, r1, r0
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08E885C4 @ =0x010002C0
	adds r1, r5, #0
	bl sub_08E9197C
	ldr r0, _08E885C8 @ =gUnk_03000A44
	ldrb r1, [r0]
	ldr r2, _08E885CC @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08E885D0 @ =gUnk_02018494
	bl sub_08E86910
	str r0, [r5, #0x10]
	ldr r0, _08E885D4 @ =gUnk_020184A8
	bl sub_08E869E8
	str r0, [r5, #0x14]
	ldr r0, _08E885D8 @ =gUnk_020185B4
	bl sub_08E869E8
	str r0, [r5, #0x18]
	ldr r0, _08E885DC @ =gUnk_02018828
	bl sub_08E869E8
	str r0, [r5, #0x1c]
	movs r3, #0xa5
	lsls r3, r3, #3
	adds r0, r5, r3
	strb r4, [r0]
	ldr r1, _08E885E0 @ =0x00000529
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _08E885E4 @ =0x0000052A
	adds r0, r5, r2
	strb r4, [r0]
	bl sub_08E8D4EC
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E885C4: .4byte 0x010002C0
_08E885C8: .4byte gUnk_03000A44
_08E885CC: .4byte 0x0000057C
_08E885D0: .4byte gUnk_02018494
_08E885D4: .4byte gUnk_020184A8
_08E885D8: .4byte gUnk_020185B4
_08E885DC: .4byte gUnk_02018828
_08E885E0: .4byte 0x00000529
_08E885E4: .4byte 0x0000052A

	thumb_func_start sub_08E885E8
sub_08E885E8: @ 0x08E885E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x130
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E865EC
	ldr r4, _08E88630 @ =gUnk_03003DB0
	ldr r2, [r4]
	ldrh r0, [r2, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldrh r3, [r2, #6]
	ldr r6, _08E88634 @ =gUnk_02004101
	add r7, sp, #0x28
	add r2, sp, #0x50
	add r5, sp, #0x78
	add r0, sp, #0xa0
	mov sb, r0
	add r0, sp, #0xc8
	mov r8, r0
	mov r0, sp
	adds r0, #0xf0
	str r0, [sp, #0x128]
	cmp r1, #0
	beq _08E88638
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #0x124]
	b _08E88640
	.align 2, 0
_08E88630: .4byte gUnk_03003DB0
_08E88634: .4byte gUnk_02004101
_08E88638:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	str r3, [sp, #0x124]
_08E88640:
	ldr r1, [sp, #0x124]
	str r1, [sp, #0x11c]
	ldr r0, [r4]
	str r6, [r0, #8]
	ldr r3, _08E889B4 @ =0x06010000
	str r3, [sp]
	mov r0, sp
	movs r1, #0
	mov sl, r1
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r0, #0x14]
	movs r6, #3
	strh r6, [r0, #0xc]
	strb r1, [r0, #0x1a]
	mov r3, sl
	strh r3, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r3, #0
	strb r3, [r0, #0x1f]
	mov r1, sl
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp, #8]
	str r2, [sp, #0x12c]
	bl sub_08E8FFC4
	ldr r3, _08E889B4 @ =0x06010000
	str r3, [sp, #0x28]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r6, [r7, #0xc]
	movs r0, #0xd
	strb r0, [r7, #0x1a]
	mov r1, sl
	strh r1, [r7, #0x16]
	subs r0, #0xe
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #1
	strb r0, [r7, #0x1f]
	strh r1, [r7, #0x10]
	strh r1, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl sub_08E8FFC4
	ldr r1, _08E889B4 @ =0x06010000
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x12c]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r2, #0x14]
	strh r6, [r2, #0xc]
	movs r0, #0xc
	strb r0, [r2, #0x1a]
	mov r0, sl
	strh r0, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #2
	strb r3, [r2, #0x1f]
	mov r0, sl
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl sub_08E8FFC4
	ldr r1, _08E889B4 @ =0x06010000
	str r1, [sp, #0x78]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r5, #0x14]
	strh r6, [r5, #0xc]
	movs r0, #0xe
	strb r0, [r5, #0x1a]
	mov r3, sl
	strh r3, [r5, #0x16]
	subs r0, #0xf
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r1, #3
	strb r1, [r5, #0x1f]
	strh r3, [r5, #0x10]
	strh r3, [r5, #0x12]
	str r4, [r5, #8]
	adds r0, r5, #0
	bl sub_08E8FFC4
	ldr r2, _08E889B4 @ =0x06010000
	mov r3, sb
	str r2, [r3]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	movs r1, #1
	strh r1, [r3, #0xc]
	movs r2, #0
	strb r2, [r3, #0x1a]
	mov r0, sl
	strh r0, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r2, #4
	strb r2, [r3, #0x1f]
	mov r0, sl
	strh r0, [r3, #0x10]
	strh r0, [r3, #0x12]
	str r4, [r3, #8]
	mov r0, sb
	bl sub_08E8FFC4
	ldr r1, _08E889B4 @ =0x06010000
	mov r2, r8
	str r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r2, #0x14]
	movs r6, #6
	movs r0, #6
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #5
	strb r0, [r2, #0x1f]
	strh r1, [r2, #0x10]
	strh r1, [r2, #0x12]
	str r4, [r2, #8]
	mov r0, r8
	bl sub_08E8FFC4
	ldr r0, _08E889B4 @ =0x06010000
	ldr r1, [sp, #0x128]
	str r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r1, #0x14]
	movs r3, #1
	strh r3, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	mov r2, sl
	strh r2, [r1, #0x16]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	adds r0, r3, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x12]
	str r4, [r1, #8]
	ldr r0, [sp, #0x128]
	bl sub_08E8FFC4
	ldr r0, _08E889B8 @ =gUnk_020101F4
	ldr r1, _08E889BC @ =0x0600E000
	ldr r4, _08E889C0 @ =0x04000200
	adds r2, r4, #0
	bl sub_08E9197C
	ldr r0, _08E889C4 @ =gUnk_0200F9F4
	ldr r1, _08E889C8 @ =0x0600E800
	adds r2, r4, #0
	bl sub_08E9197C
	ldr r0, _08E889CC @ =gUnk_0200F4F4
	ldr r1, _08E889D0 @ =0x0600F000
	ldr r2, _08E889D4 @ =0x04000140
	bl sub_08E9197C
	mov r1, sl
	ldr r2, [sp, #0x11c]
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0xc]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r0, r2, r3
	movs r1, #0
	strb r1, [r0]
	adds r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	ldr r1, _08E889D8 @ =0x000003D2
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r3, [sp, #0x11c]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _08E889DC @ =0x0000057A
	adds r0, r3, r2
	mov r3, sl
	strh r3, [r0]
	ldr r0, [sp, #0x11c]
	ldr r1, _08E889E0 @ =0x0000052A
	adds r4, r0, r1
	ldrb r6, [r4]
	adds r7, r6, #0
	movs r2, #0
	strb r2, [r4]
	movs r3, #0xa5
	lsls r3, r3, #3
	adds r5, r0, r3
	ldrh r1, [r5]
	ldr r0, _08E889E4 @ =0x00000A05
	cmp r1, r0
	bne _08E88828
	ldr r0, _08E889E8 @ =0x00000235
	bl sub_08E8D3B8
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_08E88828:
	movs r2, #1
	ands r6, r2
	cmp r6, #0
	beq _08E88836
	ldrb r0, [r4]
	orrs r0, r2
	strb r0, [r4]
_08E88836:
	movs r3, #2
	ands r7, r3
	cmp r7, #0
	beq _08E88846
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_08E88846:
	movs r0, #0
	strb r0, [r5]
	ldr r1, [sp, #0x124]
	ldr r2, _08E889EC @ =0x00000529
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08E889F0 @ =gUnk_03000A68
	ldrb r1, [r0]
	ldr r0, [sp, #0x124]
	adds r2, #0x50
	adds r6, r0, r2
	strb r1, [r6]
	ldr r3, _08E889F4 @ =0x0000057D
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [sp, #0x124]
	adds r2, #5
	adds r0, r1, r2
	mov r3, sl
	strh r3, [r0]
	ldr r0, [sp, #0x124]
	bl sub_08E89BA4
	ldr r0, [sp, #0x124]
	adds r0, #0x20
	ldr r7, [sp, #0x124]
	adds r7, #8
	ldr r1, [sp, #0x124]
	ldr r2, _08E889F8 @ =0x0000052C
	adds r4, r1, r2
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08E87D0C
	ldr r3, [sp, #0x124]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08E87D0C
	ldr r2, [sp, #0x124]
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_08E87D0C
	ldr r1, [sp, #0x124]
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08E87D0C
	ldr r0, [sp, #0x124]
	bl sub_08E89C98
	ldr r0, [sp, #0x124]
	bl sub_08E8AD7C
	ldr r0, _08E889FC @ =0xFFFF0000
	ldr r3, [sp, #0x120]
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _08E88A00 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r3, r0
	str r3, [sp, #0x120]
	add r0, sp, #0x118
	mov r1, sl
	str r1, [r0]
	ldr r2, [sp, #0x124]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r4, r2, r3
	ldr r2, _08E88A04 @ =0x05000011
	adds r1, r4, #0
	bl sub_08E9197C
	ldr r0, _08E889B4 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	add r2, sp, #0x120
	ldrh r2, [r2]
	strh r2, [r4, #0xc]
	ldr r3, [sp, #0x120]
	lsrs r0, r3, #0x10
	strb r0, [r4, #0x1a]
	mov r0, sl
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r3, #4
	strb r3, [r4, #0x1f]
	mov r0, sl
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	mov r1, sl
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	strh r1, [r4, #0x30]
	mov r2, sl
	strh r2, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r2, [r4, #0x36]
	mov r3, sl
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	str r3, [r4, #0x40]
	ldr r1, [sp, #0x124]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r0, r1, r2
	str r7, [r0]
	movs r0, #0xae
	lsls r0, r0, #3
	adds r3, r1, r0
	ldrb r0, [r6]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [sp, #0x124]
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r1, [sp, #0x124]
	ldr r0, _08E88A08 @ =0x00000574
	adds r3, r1, r0
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [sp, #0x124]
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrb r0, [r6]
	muls r0, r2, r0
	ldr r1, [sp, #0x124]
	adds r0, r1, r0
	adds r2, #0x14
	adds r0, r0, r2
	ldrb r1, [r0]
	ldr r3, [sp, #0x124]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r3, r2
	strb r1, [r0]
	movs r0, #0x1e
	bl sub_08E8D3B8
	add sp, #0x130
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E889B4: .4byte 0x06010000
_08E889B8: .4byte gUnk_020101F4
_08E889BC: .4byte 0x0600E000
_08E889C0: .4byte 0x04000200
_08E889C4: .4byte gUnk_0200F9F4
_08E889C8: .4byte 0x0600E800
_08E889CC: .4byte gUnk_0200F4F4
_08E889D0: .4byte 0x0600F000
_08E889D4: .4byte 0x04000140
_08E889D8: .4byte 0x000003D2
_08E889DC: .4byte 0x0000057A
_08E889E0: .4byte 0x0000052A
_08E889E4: .4byte 0x00000A05
_08E889E8: .4byte 0x00000235
_08E889EC: .4byte 0x00000529
_08E889F0: .4byte gUnk_03000A68
_08E889F4: .4byte 0x0000057D
_08E889F8: .4byte 0x0000052C
_08E889FC: .4byte 0xFFFF0000
_08E88A00: .4byte 0xFF00FFFF
_08E88A04: .4byte 0x05000011
_08E88A08: .4byte 0x00000574

	thumb_func_start sub_08E88A0C
sub_08E88A0C: @ 0x08E88A0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E88A34 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r4, _08E88A38 @ =gUnk_030070B8
	cmp r0, #0
	beq _08E88A3C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E88A40
	.align 2, 0
_08E88A34: .4byte gUnk_03003DB0
_08E88A38: .4byte gUnk_030070B8
_08E88A3C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E88A40:
	adds r0, r1, r0
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r0, [r4]
	ldr r2, _08E88E24 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08E88E28 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r1, r7, #0
	adds r1, #0xe8
	movs r0, #0xe0
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r2, r7, #0
	adds r2, #0xe4
	str r2, [sp]
	ldr r0, [r2]
	str r0, [r1]
	movs r5, #0xea
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #0xe8
	adds r1, r7, r5
	adds r2, #0xe8
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #0xe8
	adds r1, r7, r5
	adds r2, #0xe8
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r4, r7, #0
	adds r4, #0xd2
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0xd3
	strb r0, [r1]
	movs r5, #0x20
	adds r5, r5, r7
	mov sb, r5
	mov r0, sb
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	ldr r2, _08E88E2C @ =0x000001BF
	adds r1, r7, r2
	strb r0, [r1]
	movs r5, #0x86
	lsls r5, r5, #1
	adds r5, r5, r7
	mov r8, r5
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	ldr r0, _08E88E30 @ =0x000002AA
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _08E88E34 @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r6, r7, r5
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	ldr r0, _08E88E38 @ =0x00000396
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _08E88E3C @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	mov r0, sb
	bl sub_08E8A08C
	mov r0, r8
	bl sub_08E8A08C
	adds r0, r6, #0
	bl sub_08E8A08C
	adds r0, r5, #0
	bl sub_08E8A08C
	mov r0, sb
	bl sub_08E8A154
	mov r0, r8
	bl sub_08E8A154
	adds r0, r6, #0
	bl sub_08E8A154
	adds r0, r5, #0
	bl sub_08E8A154
	mov r0, sb
	bl sub_08E8A17C
	mov r0, r8
	bl sub_08E8A17C
	adds r0, r6, #0
	bl sub_08E8A17C
	adds r0, r5, #0
	bl sub_08E8A17C
	mov r0, sb
	bl sub_08E8A1BC
	mov r0, r8
	bl sub_08E8A1BC
	adds r0, r6, #0
	bl sub_08E8A1BC
	adds r0, r5, #0
	bl sub_08E8A1BC
	mov r0, sb
	bl sub_08E8A3F4
	mov r0, r8
	bl sub_08E8A3F4
	adds r0, r6, #0
	bl sub_08E8A3F4
	adds r0, r5, #0
	bl sub_08E8A3F4
	ldr r2, _08E88E40 @ =0x0000045C
	adds r1, r7, r2
	adds r2, #0xc8
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, sb
	bl sub_08E8A4A0
	mov r0, sb
	bl sub_08E8A798
	mov r0, r8
	bl sub_08E8A798
	adds r0, r6, #0
	bl sub_08E8A798
	adds r0, r5, #0
	bl sub_08E8A798
	mov r0, sb
	bl sub_08E8A934
	mov r0, r8
	bl sub_08E8A934
	adds r0, r6, #0
	bl sub_08E8A934
	adds r0, r5, #0
	bl sub_08E8A934
	adds r4, r7, #0
	adds r4, #8
	mov r0, sb
	adds r1, r4, #0
	bl sub_08E8A998
	mov r0, r8
	adds r1, r4, #0
	bl sub_08E8A998
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08E8A998
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E8A998
	ldr r5, _08E88E44 @ =0x00000579
	adds r3, r7, r5
	ldrb r0, [r3]
	movs r4, #0xec
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r7, r2
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08E88D20
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r7, #8]
	ldrb r0, [r3]
	muls r0, r4, r0
	ldr r5, [sp]
	adds r1, r5, r0
	ldr r1, [r1]
	rsbs r1, r1, #0
	adds r0, r7, r0
	adds r0, #0xf0
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r1, r5
	str r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08E88C92
	ldr r1, _08E88E48 @ =0xFFFFFE80
	cmp r0, r1
	bge _08E88C94
_08E88C92:
	str r1, [r7, #0xc]
_08E88C94:
	movs r0, #0xae
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, _08E88E44 @ =0x00000579
	adds r3, r7, r1
	ldrb r0, [r3]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r5, _08E88E4C @ =0x00000574
	adds r4, r7, r5
	ldrb r0, [r3]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r7, r2
	strb r1, [r0]
	ldr r2, _08E88E50 @ =gUnk_03003E60
	movs r0, #7
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #2]
	ldr r0, [r7, #8]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r2, #4]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #6]
	ldr r0, _08E88E54 @ =gUnk_03000D70
	str r7, [r0]
	ldr r3, _08E88E58 @ =gUnk_03002C50
	ldr r2, _08E88E5C @ =gUnk_03006850
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08E88E60 @ =gUnk_0200665D
	str r1, [r0]
	ldr r2, _08E88E64 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
_08E88D20:
	adds r0, r7, #0
	bl sub_08E8ADF0
	mov r0, sb
	bl sub_08E8A9F0
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08E8A9F0
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08E8A9F0
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r7, r2
	bl sub_08E8A9F0
	adds r0, r7, #0
	bl sub_08E8AA64
	movs r5, #0xad
	lsls r5, r5, #3
	adds r0, r7, r5
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r0]
	cmp r1, r2
	ble _08E88E10
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _08E88E10
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, r2
	ble _08E88E10
	movs r5, #0xe9
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _08E88E10
	ldr r1, _08E88E68 @ =0x0000052A
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E88DC8
	adds r3, r7, #0
	adds r3, #0x98
	ldrh r2, [r3]
	ldr r1, _08E88E6C @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r3, r7, r2
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r5, #0x9c
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_08E88DC8:
	adds r3, r7, #0
	adds r3, #0xb4
	ldrh r2, [r3]
	ldr r1, _08E88E70 @ =0x0000FFEF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r3, r7, r2
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r5, #0xa3
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r0, #0xde
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	bl sub_08E8C38C
	ldr r0, _08E88E74 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E88E78 @ =gUnk_02004571
	str r0, [r1, #8]
	movs r0, #0x1d
	bl sub_08E8D3B8
_08E88E10:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E88E20
sub_08E88E20: @ 0x08E88E20
	b _08E88E7C
	.align 2, 0
_08E88E24: .4byte 0x00196225
_08E88E28: .4byte 0x3C6EF35F
_08E88E2C: .4byte 0x000001BF
_08E88E30: .4byte 0x000002AA
_08E88E34: .4byte 0x000002AB
_08E88E38: .4byte 0x00000396
_08E88E3C: .4byte 0x00000397
_08E88E40: .4byte 0x0000045C
_08E88E44: .4byte 0x00000579
_08E88E48: .4byte 0xFFFFFE80
_08E88E4C: .4byte 0x00000574
_08E88E50: .4byte gUnk_03003E60
_08E88E54: .4byte gUnk_03000D70
_08E88E58: .4byte gUnk_03002C50
_08E88E5C: .4byte gUnk_03006850
_08E88E60: .4byte gUnk_0200665D
_08E88E64: .4byte gUnk_03002C20
_08E88E68: .4byte 0x0000052A
_08E88E6C: .4byte 0x0000EFFF
_08E88E70: .4byte 0x0000FFEF
_08E88E74: .4byte gUnk_03003DB0
_08E88E78: .4byte gUnk_02004571
_08E88E7C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08E88EA4 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r4, _08E88EA8 @ =gUnk_030070B8
	cmp r0, #0
	beq _08E88EAC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E88EB0
	.align 2, 0
_08E88EA4: .4byte gUnk_03003DB0
_08E88EA8: .4byte gUnk_030070B8
_08E88EAC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E88EB0:
	adds r0, r1, r0
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r0, [r4]
	ldr r2, _08E891A0 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08E891A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r1, r7, #0
	adds r1, #0xe8
	adds r0, r7, #0
	adds r0, #0xe0
	str r0, [sp]
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r2, r7, #0
	adds r2, #0xe4
	str r2, [sp, #4]
	ldr r0, [r2]
	str r0, [r1]
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r4, #0xe6
	lsls r4, r4, #1
	adds r4, r7, r4
	str r4, [sp, #8]
	ldr r0, [r4]
	str r0, [r1]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #0xec
	adds r1, r7, r3
	movs r4, #0xae
	lsls r4, r4, #2
	adds r4, r7, r4
	str r4, [sp, #0xc]
	ldr r0, [r4]
	str r0, [r1]
	adds r5, #0xec
	adds r1, r7, r5
	adds r2, #0xec
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #0xec
	adds r1, r7, r3
	movs r4, #0xe9
	lsls r4, r4, #2
	adds r4, r7, r4
	str r4, [sp, #0x10]
	ldr r0, [r4]
	str r0, [r1]
	adds r5, #0xec
	adds r1, r7, r5
	adds r2, #0xec
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #0xb0
	adds r0, r7, r3
	ldr r4, _08E891A8 @ =0x00000524
	adds r1, r7, r4
	ldrb r1, [r1]
	bl sub_08E89D88
	adds r0, r7, #0
	bl sub_08E89AF0
	movs r5, #0x20
	adds r5, r5, r7
	mov sl, r5
	mov r0, sl
	bl sub_08E89DF8
	movs r0, #0x86
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	bl sub_08E89DF8
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r6, r7, r1
	adds r0, r6, #0
	bl sub_08E89DF8
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl sub_08E89DF8
	adds r4, r7, #0
	adds r4, #0xd2
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0xd3
	movs r3, #0
	mov sb, r3
	strb r0, [r1]
	mov r0, sl
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	ldr r2, _08E891AC @ =0x000001BF
	adds r1, r7, r2
	strb r0, [r1]
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	ldr r3, _08E891B0 @ =0x000002AA
	adds r4, r7, r3
	ldrb r1, [r4]
	ldr r2, _08E891B4 @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	ldr r3, _08E891B8 @ =0x00000396
	adds r4, r7, r3
	ldrb r1, [r4]
	ldr r2, _08E891BC @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	strb r0, [r4]
	mov r0, sl
	bl sub_08E89EA8
	mov r0, r8
	bl sub_08E89EA8
	adds r0, r6, #0
	bl sub_08E89EA8
	adds r0, r5, #0
	bl sub_08E89EA8
	mov r0, sl
	bl sub_08E8A024
	mov r0, r8
	bl sub_08E8A024
	adds r0, r6, #0
	bl sub_08E8A024
	adds r0, r5, #0
	bl sub_08E8A024
	mov r0, sl
	bl sub_08E8A08C
	mov r0, r8
	bl sub_08E8A08C
	adds r0, r6, #0
	bl sub_08E8A08C
	adds r0, r5, #0
	bl sub_08E8A08C
	mov r0, sl
	bl sub_08E8A154
	mov r0, r8
	bl sub_08E8A154
	adds r0, r6, #0
	bl sub_08E8A154
	adds r0, r5, #0
	bl sub_08E8A154
	mov r0, sl
	bl sub_08E8A17C
	mov r0, r8
	bl sub_08E8A17C
	adds r0, r6, #0
	bl sub_08E8A17C
	adds r0, r5, #0
	bl sub_08E8A17C
	ldr r3, _08E891C0 @ =0x0000056C
	adds r2, r7, r3
	ldr r4, [sp]
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E8909A
	adds r0, r7, #0
	adds r0, #0xc8
	mov r1, sb
	strh r1, [r0]
_08E8909A:
	ldr r3, [sp, #8]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E890AE
	movs r4, #0xda
	lsls r4, r4, #1
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_08E890AE:
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E890C2
	movs r4, #0xa8
	lsls r4, r4, #2
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_08E890C2:
	ldr r3, [sp, #0x10]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E890D6
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_08E890D6:
	mov r0, sl
	bl sub_08E8A1BC
	mov r0, r8
	bl sub_08E8A1BC
	adds r0, r6, #0
	bl sub_08E8A1BC
	adds r0, r5, #0
	bl sub_08E8A1BC
	ldr r2, _08E891C4 @ =0x00000579
	adds r0, r7, r2
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E89120
	movs r3, #0x83
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _08E89120
	bl sub_08E8C4FC
	str r0, [r7]
	movs r0, #0x1f
	bl sub_08E8D3B8
_08E89120:
	ldr r5, _08E891C8 @ =0x0000057A
	adds r4, r7, r5
	ldrh r1, [r4]
	mov r0, sl
	bl sub_08E8A3D0
	movs r0, #0x86
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldrh r1, [r4]
	bl sub_08E8A3D0
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r6, r7, r1
	ldrh r1, [r4]
	adds r0, r6, #0
	bl sub_08E8A3D0
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r5, r7, r2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_08E8A3D0
	mov r0, sl
	bl sub_08E8A3F4
	mov r0, r8
	bl sub_08E8A3F4
	adds r0, r6, #0
	bl sub_08E8A3F4
	adds r0, r5, #0
	bl sub_08E8A3F4
	ldr r3, _08E891C4 @ =0x00000579
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	adds r4, r7, #0
	adds r4, #8
	str r4, [sp, #0x18]
	cmp r0, #0
	beq _08E891D0
	ldr r5, _08E891CC @ =0x0000045C
	adds r1, r7, r5
	ldr r2, _08E891A8 @ =0x00000524
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, sl
	bl sub_08E8A5BC
	b _08E891E0
	.align 2, 0
_08E891A0: .4byte 0x00196225
_08E891A4: .4byte 0x3C6EF35F
_08E891A8: .4byte 0x00000524
_08E891AC: .4byte 0x000001BF
_08E891B0: .4byte 0x000002AA
_08E891B4: .4byte 0x000002AB
_08E891B8: .4byte 0x00000396
_08E891BC: .4byte 0x00000397
_08E891C0: .4byte 0x0000056C
_08E891C4: .4byte 0x00000579
_08E891C8: .4byte 0x0000057A
_08E891CC: .4byte 0x0000045C
_08E891D0:
	ldr r3, _08E89330 @ =0x0000045C
	adds r1, r7, r3
	ldr r4, _08E89334 @ =0x00000524
	adds r0, r7, r4
	ldrb r2, [r0]
	mov r0, sl
	bl sub_08E8A4A0
_08E891E0:
	ldr r0, _08E89330 @ =0x0000045C
	adds r5, r7, r0
	ldr r1, _08E89334 @ =0x00000524
	adds r4, r7, r1
	ldrb r2, [r4]
	mov r0, sl
	adds r1, r5, #0
	bl sub_08E8A6C8
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	ldrb r2, [r4]
	mov r0, sb
	adds r1, r5, #0
	bl sub_08E8A6C8
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	ldrb r2, [r4]
	mov r0, r8
	adds r1, r5, #0
	bl sub_08E8A6C8
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08E8A6C8
	mov r0, sl
	bl sub_08E8A798
	mov r0, sb
	bl sub_08E8A798
	mov r0, r8
	bl sub_08E8A798
	adds r0, r6, #0
	bl sub_08E8A798
	mov r0, sl
	bl sub_08E8A8C4
	mov r0, sb
	bl sub_08E8A8C4
	mov r0, r8
	bl sub_08E8A8C4
	adds r0, r6, #0
	bl sub_08E8A8C4
	mov r0, sl
	bl sub_08E8A934
	mov r0, sb
	bl sub_08E8A934
	mov r0, r8
	bl sub_08E8A934
	adds r0, r6, #0
	bl sub_08E8A934
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl sub_08E8A998
	mov r0, sb
	ldr r1, [sp, #0x18]
	bl sub_08E8A998
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_08E8A998
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	bl sub_08E8A998
	ldr r1, _08E89338 @ =0x00000579
	adds r4, r7, r1
	ldrb r0, [r4]
	movs r5, #0xec
	adds r3, r0, #0
	muls r3, r5, r3
	adds r2, r7, r3
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0xe0
	str r1, [sp, #0x14]
	movs r1, #0xf8
	adds r1, r1, r7
	mov ip, r1
	adds r1, r7, #0
	adds r1, #0xfc
	str r1, [sp, #0x1c]
	ldr r6, _08E8933C @ =gUnk_03003E60
	ldr r1, _08E89340 @ =gUnk_03006850
	mov sb, r1
	cmp r0, #0
	bne _08E892C6
	b _08E89438
_08E892C6:
	adds r0, r2, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E89302
	ldr r2, _08E89344 @ =0x0000057D
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08E892EC
	movs r0, #0
	strb r0, [r1]
_08E892EC:
	ldrb r0, [r1]
	muls r0, r5, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08E89378
	ldr r0, _08E89348 @ =0xFFFFFE80
	str r0, [r7, #0xc]
_08E89302:
	ldr r3, _08E89344 @ =0x0000057D
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E89378
	ldr r4, _08E8934C @ =0x0000057C
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E89360
	cmp r0, #1
	bgt _08E89350
	cmp r0, #0
	beq _08E89356
	b _08E893B0
	.align 2, 0
_08E89330: .4byte 0x0000045C
_08E89334: .4byte 0x00000524
_08E89338: .4byte 0x00000579
_08E8933C: .4byte gUnk_03003E60
_08E89340: .4byte gUnk_03006850
_08E89344: .4byte 0x0000057D
_08E89348: .4byte 0xFFFFFE80
_08E8934C: .4byte 0x0000057C
_08E89350:
	cmp r0, #2
	beq _08E8936C
	b _08E893B0
_08E89356:
	ldr r0, _08E8935C @ =0xFFFF738B
	str r0, [r7, #8]
	b _08E893B0
	.align 2, 0
_08E8935C: .4byte 0xFFFF738B
_08E89360:
	ldr r0, _08E89368 @ =0xFFFF4B90
	str r0, [r7, #8]
	b _08E893B0
	.align 2, 0
_08E89368: .4byte 0xFFFF4B90
_08E8936C:
	ldr r0, _08E89374 @ =0xFFFF238C
	str r0, [r7, #8]
	b _08E893B0
	.align 2, 0
_08E89374: .4byte 0xFFFF238C
_08E89378:
	ldr r5, _08E89428 @ =0x0000057D
	adds r2, r7, r5
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	ldr r3, [sp]
	adds r0, r3, r0
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r7, #8]
	ldrb r0, [r2]
	muls r1, r0, r1
	ldr r5, [sp, #4]
	adds r0, r5, r1
	ldr r0, [r0]
	rsbs r0, r0, #0
	adds r1, r7, r1
	adds r1, #0xf0
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0xc]
_08E893B0:
	ldr r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08E893C0
	ldr r1, _08E8942C @ =0xFFFFFE80
	cmp r0, r1
	bge _08E893C2
_08E893C0:
	str r1, [r7, #0xc]
_08E893C2:
	movs r4, #0xae
	lsls r4, r4, #3
	adds r4, r4, r7
	mov r8, r4
	ldr r5, _08E89428 @ =0x0000057D
	adds r2, r7, r5
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _08E89430 @ =0x00000574
	adds r4, r7, r0
	ldrb r0, [r2]
	muls r0, r1, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r5, #0xaf
	lsls r5, r5, #3
	adds r3, r7, r5
	strb r0, [r3]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E89422
	ldr r1, _08E89434 @ =gUnk_020183F4
	ldr r0, [r1, #0x2c]
	mov r2, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r4]
	movs r0, #0x24
	strb r0, [r3]
_08E89422:
	ldrb r1, [r3]
	b _08E894B0
	.align 2, 0
_08E89428: .4byte 0x0000057D
_08E8942C: .4byte 0xFFFFFE80
_08E89430: .4byte 0x00000574
_08E89434: .4byte gUnk_020183F4
_08E89438:
	ldr r1, [sp]
	adds r0, r1, r3
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r7, #8]
	ldrb r0, [r4]
	muls r0, r5, r0
	ldr r3, [sp, #4]
	adds r1, r3, r0
	ldr r1, [r1]
	rsbs r1, r1, #0
	adds r0, r7, r0
	adds r0, #0xf0
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r1, r5
	str r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08E89474
	ldr r1, _08E89610 @ =0xFFFFFE80
	cmp r0, r1
	bge _08E89476
_08E89474:
	str r1, [r7, #0xc]
_08E89476:
	movs r0, #0xae
	lsls r0, r0, #3
	adds r3, r7, r0
	ldr r1, _08E89614 @ =0x00000579
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r3]
	ldr r4, _08E89618 @ =0x00000574
	adds r3, r7, r4
	ldrb r0, [r2]
	muls r0, r1, r0
	ldr r5, [sp, #0x1c]
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [r3]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	adds r1, #0x14
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r7, r2
	strb r1, [r0]
_08E894B0:
	movs r0, #7
	ands r0, r1
	strh r0, [r6]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r6, #2]
	ldr r0, [r7, #8]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r6, #4]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r6, #6]
	ldr r3, _08E8961C @ =gUnk_03000D70
	str r7, [r3]
	mov r4, sb
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r5, _08E89620 @ =gUnk_03002C50
	adds r0, r0, r5
	ldr r1, _08E89624 @ =gUnk_0200665D
	str r1, [r0]
	ldr r2, _08E89628 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	adds r0, r7, #0
	bl sub_08E8AB74
	mov r0, sl
	bl sub_08E8AA28
	movs r3, #0x86
	lsls r3, r3, #1
	adds r6, r7, r3
	adds r0, r6, #0
	bl sub_08E8AA28
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r5, r7, r4
	adds r0, r5, #0
	bl sub_08E8AA28
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_08E8AA28
	adds r0, r7, #0
	bl sub_08E8ADF0
	mov r0, sl
	bl sub_08E8A9F0
	adds r0, r6, #0
	bl sub_08E8A9F0
	adds r0, r5, #0
	bl sub_08E8A9F0
	adds r0, r4, #0
	bl sub_08E8A9F0
	adds r0, r7, #0
	bl sub_08E8AA64
	ldr r1, _08E8962C @ =0x0000056C
	adds r0, r7, r1
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	ldr r2, [r0]
	cmp r1, r2
	ble _08E895F6
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, r2
	ble _08E895F6
	movs r4, #0xae
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, r2
	ble _08E895F6
	movs r5, #0xe9
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _08E895F6
	ldr r0, [r7]
	bl sub_08E8F86C
	movs r0, #0
	mov sl, r0
	str r0, [r7]
	ldr r1, _08E89614 @ =0x00000579
	adds r1, r1, r7
	mov sb, r1
	ldrb r0, [r1]
	movs r6, #0xec
	muls r0, r6, r0
	movs r2, #0xa8
	adds r2, r2, r7
	mov r8, r2
	add r0, r8
	ldr r0, [r0]
	bl sub_08E8F86C
	mov r3, sb
	ldrb r0, [r3]
	muls r0, r6, r0
	adds r5, r7, #0
	adds r5, #0xac
	adds r0, r5, r0
	ldr r0, [r0]
	bl sub_08E8F86C
	mov r4, sb
	ldrb r0, [r4]
	muls r0, r6, r0
	adds r4, r7, #0
	adds r4, #0xb0
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_08E8F86C
	mov r1, sb
	ldrb r0, [r1]
	muls r0, r6, r0
	add r8, r0
	mov r2, sl
	mov r3, r8
	str r2, [r3]
	ldrb r0, [r1]
	muls r0, r6, r0
	adds r5, r5, r0
	str r2, [r5]
	ldrb r0, [r1]
	muls r0, r6, r0
	adds r4, r4, r0
	str r2, [r4]
	movs r0, #0x10
	movs r1, #1
	bl sub_08E865EC
	ldr r0, _08E89630 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E89634 @ =gUnk_02004D31
	str r0, [r1, #8]
	bl sub_08E8D4EC
_08E895F6:
	ldr r4, _08E89638 @ =0x0000057A
	adds r1, r7, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E89610: .4byte 0xFFFFFE80
_08E89614: .4byte 0x00000579
_08E89618: .4byte 0x00000574
_08E8961C: .4byte gUnk_03000D70
_08E89620: .4byte gUnk_03002C50
_08E89624: .4byte gUnk_0200665D
_08E89628: .4byte gUnk_03002C20
_08E8962C: .4byte 0x0000056C
_08E89630: .4byte gUnk_03003DB0
_08E89634: .4byte gUnk_02004D31
_08E89638: .4byte 0x0000057A

	thumb_func_start sub_08E8963C
sub_08E8963C: @ 0x08E8963C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08E8965C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E89660
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E89664
	.align 2, 0
_08E8965C: .4byte gUnk_03003DB0
_08E89660:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E89664:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_08E868EC
	adds r6, r0, #0
	cmp r6, #0
	beq _08E89674
	b _08E897D2
_08E89674:
	ldr r1, _08E8976C @ =gUnk_03003E60
	movs r4, #0
	strh r6, [r1, #4]
	movs r0, #0x50
	strh r0, [r1, #6]
	subs r0, #0x60
	movs r1, #1
	bl sub_08E865EC
	ldr r0, _08E89770 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E89774 @ =gUnk_02004ED5
	str r0, [r1, #8]
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r0, _08E89778 @ =gUnk_020183F4
	ldr r2, [r0, #0x30]
	str r2, [r3]
	movs r1, #0xfc
	adds r1, r1, r7
	mov ip, r1
	ldr r1, [r0]
	mov r5, ip
	str r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r7, r0
	strb r4, [r0]
	movs r5, #0xf2
	lsls r5, r5, #1
	adds r0, r7, r5
	str r2, [r0]
	adds r5, #4
	adds r0, r7, r5
	str r1, [r0]
	adds r5, #4
	adds r0, r7, r5
	strb r4, [r0]
	adds r5, #0xe4
	adds r0, r7, r5
	str r2, [r0]
	adds r5, #4
	adds r0, r7, r5
	str r1, [r0]
	adds r5, #4
	adds r0, r7, r5
	strb r4, [r0]
	adds r5, #0xe4
	adds r0, r7, r5
	str r2, [r0]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	adds r5, #8
	adds r0, r7, r5
	strb r4, [r0]
	movs r0, #0xae
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, _08E8977C @ =0x00000579
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r4]
	ldr r4, _08E89780 @ =0x00000574
	adds r3, r7, r4
	ldrb r0, [r2]
	muls r0, r1, r0
	mov r4, ip
	adds r5, r4, r0
	ldr r0, [r5]
	str r0, [r3]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	add r0, r8
	ldrb r1, [r0]
	movs r5, #0xaf
	lsls r5, r5, #3
	adds r0, r7, r5
	strb r1, [r0]
	ldr r0, _08E89784 @ =gUnk_03000D70
	str r7, [r0]
	ldr r3, _08E89788 @ =gUnk_03002C50
	ldr r2, _08E8978C @ =gUnk_03006850
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08E89790 @ =gUnk_0200665D
	str r1, [r0]
	ldr r1, _08E89794 @ =gUnk_03002C20
	ldr r0, [r1]
	movs r4, #0x10
	orrs r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl sub_08E8AC00
	ldr r0, _08E89798 @ =gUnk_02006719
	movs r1, #0x84
	lsls r1, r1, #4
	str r6, [sp]
	mov r2, r8
	movs r3, #0
	bl sub_08E8F750
	str r0, [r7]
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _08E8979C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E897A0
	.align 2, 0
_08E8976C: .4byte gUnk_03003E60
_08E89770: .4byte gUnk_03003DB0
_08E89774: .4byte gUnk_02004ED5
_08E89778: .4byte gUnk_020183F4
_08E8977C: .4byte 0x00000579
_08E89780: .4byte 0x00000574
_08E89784: .4byte gUnk_03000D70
_08E89788: .4byte gUnk_03002C50
_08E8978C: .4byte gUnk_03006850
_08E89790: .4byte gUnk_0200665D
_08E89794: .4byte gUnk_03002C20
_08E89798: .4byte gUnk_02006719
_08E8979C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E897A0:
	adds r1, r1, r0
	str r7, [r1]
	ldr r1, _08E897C4 @ =0x00000579
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	ldr r2, _08E897C8 @ =0x00000105
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E897CC
	movs r0, #0x21
	bl sub_08E8D3B8
	b _08E897D2
	.align 2, 0
_08E897C4: .4byte 0x00000579
_08E897C8: .4byte 0x00000105
_08E897CC:
	movs r0, #0x20
	bl sub_08E8D3B8
_08E897D2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E897E0
sub_08E897E0: @ 0x08E897E0
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08E897FC @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E89800
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E89804
	.align 2, 0
_08E897FC: .4byte gUnk_03003DB0
_08E89800:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E89804:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08E868EC
	cmp r0, #0
	bne _08E898FA
	ldr r3, [r5, #4]
	cmp r3, #0
	bne _08E89894
	ldr r0, _08E8983C @ =gUnk_03000AB0
	ldrh r2, [r0, #0x10]
	adds r4, r2, #0
	ldrh r1, [r0, #8]
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08E8985E
	ldr r0, _08E89840 @ =gUnk_03000A68
	ldrb r0, [r0]
	ldr r1, _08E89844 @ =gUnk_0200EEF8
	cmp r0, #0
	beq _08E89848
	movs r0, #0x50
	str r0, [sp]
	str r6, [sp, #4]
	b _08E8984E
	.align 2, 0
_08E8983C: .4byte gUnk_03000AB0
_08E89840: .4byte gUnk_03000A68
_08E89844: .4byte gUnk_0200EEF8
_08E89848:
	movs r0, #0x50
	str r0, [sp]
	str r3, [sp, #4]
_08E8984E:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08E86AE8
	str r0, [r5, #4]
	b _08E898FA
_08E8985E:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08E898FA
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08E89878
	movs r0, #0xa5
	lsls r0, r0, #3
	adds r1, r5, r0
	b _08E89886
_08E89878:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08E898FA
	ldr r2, _08E89890 @ =0x00000529
	adds r1, r5, r2
_08E89886:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08E898FA
	.align 2, 0
_08E89890: .4byte 0x00000529
_08E89894:
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	cmp r0, #0
	beq _08E898A8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E898AC
_08E898A8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E898AC:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E87CF0
	cmp r0, #0
	beq _08E898FA
	movs r0, #0x10
	movs r1, #1
	bl sub_08E865EC
	ldr r1, _08E898E4 @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08E898E8 @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _08E898EC @ =gUnk_03003DB0
	cmp r0, #0
	beq _08E898F4
	ldr r1, [r1]
	ldr r0, _08E898F0 @ =gUnk_02004FFD
	b _08E898F8
	.align 2, 0
_08E898E4: .4byte 0x000002AD
_08E898E8: .4byte 0x0000057C
_08E898EC: .4byte gUnk_03003DB0
_08E898F0: .4byte gUnk_02004FFD
_08E898F4:
	ldr r1, [r1]
	ldr r0, _08E89904 @ =gUnk_02005059
_08E898F8:
	str r0, [r1, #8]
_08E898FA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E89904: .4byte gUnk_02005059

	thumb_func_start sub_08E89908
sub_08E89908: @ 0x08E89908
	push {r4, r5, lr}
	ldr r0, _08E89924 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E89928
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8992C
	.align 2, 0
_08E89924: .4byte gUnk_03003DB0
_08E89928:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8992C:
	adds r4, r1, r0
	bl sub_08E868EC
	adds r5, r0, #0
	cmp r5, #0
	bne _08E89954
	bl sub_08E8D4EC
	ldr r0, _08E8995C @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E89960 @ =gUnk_02003CDD
	str r0, [r1, #8]
	ldr r0, [r4]
	bl sub_08E8F86C
	str r5, [r4]
	ldr r0, [r4, #4]
	bl sub_08E8F86C
	str r5, [r4, #4]
_08E89954:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8995C: .4byte gUnk_03003DB0
_08E89960: .4byte gUnk_02003CDD

	thumb_func_start sub_08E89964
sub_08E89964: @ 0x08E89964
	push {r4, r5, lr}
	ldr r0, _08E89980 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E89984
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E89988
	.align 2, 0
_08E89980: .4byte gUnk_03003DB0
_08E89984:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E89988:
	adds r4, r1, r0
	bl sub_08E868EC
	adds r5, r0, #0
	cmp r5, #0
	bne _08E899E4
	ldr r0, [r4]
	bl sub_08E8F86C
	str r5, [r4]
	ldr r0, [r4, #4]
	bl sub_08E8F86C
	str r5, [r4, #4]
	ldr r0, _08E899EC @ =gUnk_03000A40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08E899BA
	ldr r2, _08E899F0 @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	ldr r0, _08E899F4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_08E899BA:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E865EC
	ldr r2, _08E899F0 @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	ldr r0, _08E899F4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	ldr r2, _08E899F8 @ =gUnk_03003E70
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08E899FC @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E89A00 @ =gUnk_020050F9
	str r0, [r1, #8]
_08E899E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E899EC: .4byte gUnk_03000A40
_08E899F0: .4byte gUnk_03000AB0
_08E899F4: .4byte 0x0000FFFD
_08E899F8: .4byte gUnk_03003E70
_08E899FC: .4byte gUnk_03003DB0
_08E89A00: .4byte gUnk_020050F9

	thumb_func_start sub_08E89A04
sub_08E89A04: @ 0x08E89A04
	push {lr}
	bl sub_08E868EC
	cmp r0, #0
	bne _08E89A12
	bl sub_08E84C78
_08E89A12:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E89A18
sub_08E89A18: @ 0x08E89A18
	push {lr}
	ldr r3, _08E89A34 @ =gUnk_03003DB0
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E89A38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E89A3C
	.align 2, 0
_08E89A34: .4byte gUnk_03003DB0
_08E89A38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E89A3C:
	adds r0, r1, r0
	ldr r1, _08E89A5C @ =0x0000057E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _08E89A56
	ldr r0, [r3]
	bl sub_08E8F86C
_08E89A56:
	pop {r0}
	bx r0
	.align 2, 0
_08E89A5C: .4byte 0x0000057E

	thumb_func_start sub_08E89A60
sub_08E89A60: @ 0x08E89A60
	push {r4, r5, lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E89A78
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _08E89A7E
_08E89A78:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
_08E89A7E:
	ldr r0, [r5, #0x10]
	bl sub_08E8F86C
	movs r4, #0
	str r4, [r5, #0x10]
	ldr r0, [r5, #0x14]
	bl sub_08E8F86C
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl sub_08E8F86C
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl sub_08E8F86C
	str r4, [r5, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E89AA8
sub_08E89AA8: @ 0x08E89AA8
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	movs r5, #0
	ldr r4, _08E89AE0 @ =gUnk_030070B8
	ldr r3, [r4]
	ldr r2, _08E89AE4 @ =0x00196225
	muls r2, r3, r2
	ldr r3, _08E89AE8 @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r4]
	lsrs r2, r2, #0x10
	movs r3, #0xf
	ands r2, r3
	ldr r3, _08E89AEC @ =gUnk_0200F25C
	adds r0, #0xb2
	lsrs r1, r1, #0x14
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	cmp r2, r1
	bhs _08E89AD6
	movs r5, #1
_08E89AD6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08E89AE0: .4byte gUnk_030070B8
_08E89AE4: .4byte 0x00196225
_08E89AE8: .4byte 0x3C6EF35F
_08E89AEC: .4byte gUnk_0200F25C

	thumb_func_start sub_08E89AF0
sub_08E89AF0: @ 0x08E89AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r3, #0
_08E89B00:
	movs r0, #0xec
	adds r7, r3, #0
	muls r7, r0, r7
	adds r2, r4, r7
	adds r0, r2, #0
	adds r0, #0xb4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	adds r6, #0xba
	adds r5, r2, #0
	adds r5, #0xbc
	movs r1, #0xb8
	adds r1, r1, r2
	mov r8, r1
	adds r2, #0xbe
	mov sb, r2
	adds r2, r3, #1
	str r2, [sp]
	cmp r0, #0
	beq _08E89B5C
	ldrh r0, [r6]
	movs r3, #0
	mov sl, r3
	strh r0, [r5]
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r4, r0
	ldr r2, _08E89B58 @ =0x0000057C
	adds r1, r4, r2
	ldrb r1, [r1]
	bl sub_08E89AA8
	strh r0, [r6]
	ldrh r1, [r5]
	eors r1, r0
	ands r1, r0
	mov r3, r8
	strh r1, [r3]
	mov r1, sl
	mov r0, sb
	strh r1, [r0]
	b _08E89B86
	.align 2, 0
_08E89B58: .4byte 0x0000057C
_08E89B5C:
	ldrh r0, [r6]
	strh r0, [r5]
	ldr r2, _08E89BA0 @ =gUnk_03000AB0
	lsls r1, r3, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r6]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x18
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, sb
	strh r0, [r1]
_08E89B86:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08E89B00
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E89BA0: .4byte gUnk_03000AB0

	thumb_func_start sub_08E89BA4
sub_08E89BA4: @ 0x08E89BA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08E89BD4 @ =0x0000052C
	adds r1, r6, r0
	ldr r2, _08E89BD8 @ =0x0500000F
	mov r0, sp
	bl sub_08E9197C
	movs r7, #0xa
	ldr r1, _08E89BDC @ =0x0000057C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E89BEA
	cmp r0, #1
	bgt _08E89BE0
	cmp r0, #0
	beq _08E89BE6
	b _08E89BF0
	.align 2, 0
_08E89BD4: .4byte 0x0000052C
_08E89BD8: .4byte 0x0500000F
_08E89BDC: .4byte 0x0000057C
_08E89BE0:
	cmp r0, #2
	beq _08E89BEE
	b _08E89BF0
_08E89BE6:
	movs r7, #0x24
	b _08E89BF0
_08E89BEA:
	movs r7, #0x2e
	b _08E89BF0
_08E89BEE:
	movs r7, #0x38
_08E89BF0:
	movs r0, #9
	mov r8, r0
	movs r5, #0
	cmp r5, r7
	bhs _08E89C22
_08E89BFA:
	ldr r2, _08E89C80 @ =gUnk_030070B8
	ldr r1, [r2]
	ldr r0, _08E89C84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E89C88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ldr r1, _08E89C8C @ =0x0000052C
	adds r4, r6, r1
	adds r4, r4, r5
	mov r1, r8
	bl sub_08E91AE4
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08E89BFA
_08E89C22:
	movs r5, #0
	cmp r5, r7
	bhs _08E89C3C
_08E89C28:
	ldr r1, _08E89C8C @ =0x0000052C
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #9
	strb r1, [r0]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08E89C28
_08E89C3C:
	ldr r0, _08E89C8C @ =0x0000052C
	adds r2, r6, r0
	movs r3, #0
	movs r0, #0xa
	strb r0, [r2]
	ldr r1, _08E89C90 @ =0x0000052D
	adds r0, r6, r1
	strb r3, [r0]
	subs r0, r7, #2
	adds r0, r2, r0
	strb r3, [r0]
	subs r0, r7, #1
	adds r0, r2, r0
	movs r1, #0xb
	strb r1, [r0]
	adds r2, r2, r7
	strb r3, [r2]
	movs r0, #0xad
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
	ldr r0, _08E89C94 @ =0x0000056C
	adds r1, r6, r0
	adds r0, r7, #1
	lsls r0, r0, #0xa
	str r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E89C80: .4byte gUnk_030070B8
_08E89C84: .4byte 0x00196225
_08E89C88: .4byte 0x3C6EF35F
_08E89C8C: .4byte 0x0000052C
_08E89C90: .4byte 0x0000052D
_08E89C94: .4byte 0x0000056C

	thumb_func_start sub_08E89C98
sub_08E89C98: @ 0x08E89C98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sl, r0
	movs r1, #8
	mov r8, r1
	ldr r1, _08E89CC0 @ =0x0000057C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E89CCE
	cmp r0, #1
	bgt _08E89CC4
	cmp r0, #0
	beq _08E89CCA
	b _08E89CD8
	.align 2, 0
_08E89CC0: .4byte 0x0000057C
_08E89CC4:
	cmp r0, #2
	beq _08E89CD4
	b _08E89CD8
_08E89CCA:
	movs r0, #0x24
	b _08E89CD6
_08E89CCE:
	movs r1, #0x2e
	mov r8, r1
	b _08E89CD8
_08E89CD4:
	movs r0, #0x38
_08E89CD6:
	mov r8, r0
_08E89CD8:
	ldr r0, _08E89D70 @ =0x00000524
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	cmp r6, r8
	bhs _08E89D46
_08E89CE6:
	ldr r1, _08E89D74 @ =0x0000052C
	adds r0, r4, r1
	adds r0, r0, r6
	ldrb r1, [r0]
	ldr r0, _08E89D78 @ =gUnk_0201845C
	adds r0, r1, r0
	ldrb r7, [r0]
	ldr r0, _08E89D7C @ =gUnk_02018469
	adds r1, r1, r0
	ldrb r1, [r1]
	mov sb, r1
	movs r5, #0
	cmp r5, r7
	bhs _08E89D3C
_08E89D02:
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E89D80 @ =0x0000045C
	adds r0, r0, r1
	adds r0, r4, r0
	mov r1, sb
	adds r2, r1, r5
	lsls r2, r2, #2
	ldr r1, _08E89D84 @ =gUnk_02018478
	adds r2, r2, r1
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	bl sub_08E880D0
	mov r0, sl
	cmp r0, #9
	bhi _08E89D46
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08E89D02
_08E89D3C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r8
	blo _08E89CE6
_08E89D46:
	ldr r1, _08E89D70 @ =0x00000524
	adds r2, r4, r1
	movs r0, #0
	strb r0, [r2]
	adds r1, #6
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E89D60
	mov r0, sl
	strb r0, [r2]
_08E89D60:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E89D70: .4byte 0x00000524
_08E89D74: .4byte 0x0000052C
_08E89D78: .4byte gUnk_0201845C
_08E89D7C: .4byte gUnk_02018469
_08E89D80: .4byte 0x0000045C
_08E89D84: .4byte gUnk_02018478

	thumb_func_start sub_08E89D88
sub_08E89D88: @ 0x08E89D88
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r3, #0
	cmp r3, r7
	bhs _08E89DF2
_08E89D96:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, ip
	adds r2, r0, r1
	ldrh r4, [r2, #0x12]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r4
	ldr r5, [r2, #4]
	adds r3, #1
	cmp r0, #0
	beq _08E89DD0
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _08E89DBC
	rsbs r1, r1, #0
_08E89DBC:
	subs r1, r5, r1
	str r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	bge _08E89DEA
	ldr r0, _08E89DCC @ =0x0000FEFF
	ands r0, r4
	b _08E89DE8
	.align 2, 0
_08E89DCC: .4byte 0x0000FEFF
_08E89DD0:
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _08E89DDA
	rsbs r1, r1, #0
_08E89DDA:
	adds r1, r5, r1
	str r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	ble _08E89DEA
	adds r0, r6, #0
	orrs r0, r4
_08E89DE8:
	strh r0, [r2, #0x12]
_08E89DEA:
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r7
	blo _08E89D96
_08E89DF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E89DF8
sub_08E89DF8: @ 0x08E89DF8
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x94
	ldrh r1, [r3]
	movs r0, #0x20
	movs r7, #0
	orrs r1, r0
	strh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E89E18
	ldr r0, _08E89EA0 @ =0x0000FFDF
	ands r1, r0
	strh r1, [r3]
_08E89E18:
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r4, #0x20
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08E89E30
	ldrh r1, [r3]
	ldr r0, _08E89EA0 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
_08E89E30:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08E89E9A
	adds r0, r2, #0
	adds r0, #0x98
	ldrh r1, [r0]
	movs r6, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E89E9A
	adds r1, r2, #0
	adds r1, #0xe4
	ldrb r0, [r1]
	cmp r0, #1
	bhi _08E89E9A
	adds r0, #1
	strb r0, [r1]
	adds r5, r2, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08E89E9A
	adds r0, r1, #0
	orrs r0, r6
	movs r1, #2
	orrs r0, r1
	strh r0, [r5]
	adds r0, r2, #0
	adds r0, #0xa2
	strh r4, [r0]
	adds r1, r2, #0
	adds r1, #0xa0
	movs r0, #6
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xbf
	strb r6, [r0]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E89E9A
	ldr r0, _08E89EA4 @ =0x0000022D
	bl sub_08E8D3B8
_08E89E9A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E89EA0: .4byte 0x0000FFDF
_08E89EA4: .4byte 0x0000022D

	thumb_func_start sub_08E89EA8
sub_08E89EA8: @ 0x08E89EA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0xb8
	adds r0, r0, r4
	mov r8, r0
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0xa4
	cmp r0, #0
	bne _08E89ED4
	ldrh r1, [r2]
	ldr r0, _08E89ED0 @ =0x0000EFFF
	ands r0, r1
	b _08E89EE4
	.align 2, 0
_08E89ED0: .4byte 0x0000EFFF
_08E89ED4:
	subs r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
_08E89EE4:
	strh r0, [r2]
	adds r6, r4, #0
	adds r6, #0xa4
	ldrh r2, [r6]
	movs r7, #2
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _08E89EF8
	b _08E8A012
_08E89EF8:
	ldr r1, _08E89F50 @ =0x0000FFFD
	ands r1, r2
	strh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08E89F0A
	b _08E8A012
_08E89F0A:
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08E89F18
	cmp r0, #0xb
	bne _08E89F54
_08E89F18:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08E8BE18
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8A000
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	b _08E89FE6
	.align 2, 0
_08E89F50: .4byte 0x0000FFFD
_08E89F54:
	cmp r0, #9
	beq _08E89F5C
	cmp r0, #0xc
	bne _08E89F94
_08E89F5C:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08E8BE18
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8A000
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	b _08E89FE6
_08E89F94:
	cmp r0, #0xa
	beq _08E89F9C
	cmp r0, #0xd
	bne _08E8A012
_08E89F9C:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #6
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08E8BE18
	ldr r0, _08E8A01C @ =gUnk_0200EF70
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	adds r0, #0x4a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8A000
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #2
_08E89FE6:
	bl sub_08E8BF9C
	adds r0, r4, #0
	bl sub_08E8B33C
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8A000
	ldr r0, _08E8A020 @ =0x00000232
	bl sub_08E8D3B8
_08E8A000:
	ldrh r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r6]
	movs r0, #0xa
	mov r3, r8
	strb r0, [r3]
_08E8A012:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A01C: .4byte gUnk_0200EF70
_08E8A020: .4byte 0x00000232

	thumb_func_start sub_08E8A024
sub_08E8A024: @ 0x08E8A024
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xa4
	ldrh r3, [r6]
	movs r2, #1
	ands r2, r3
	cmp r2, #0
	bne _08E8A082
	ldr r5, _08E8A088 @ =gUnk_0200F1FC
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0xb2
	ldrb r1, [r1]
	adds r1, r1, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _08E8A082
	movs r0, #1
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0xa8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xa0
	strb r1, [r0]
_08E8A082:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A088: .4byte gUnk_0200F1FC

	thumb_func_start sub_08E8A08C
sub_08E8A08C: @ 0x08E8A08C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r0, #0xa4
	adds r0, r0, r3
	mov r8, r0
	ldrh r6, [r0]
	movs r0, #1
	ands r0, r6
	adds r4, r3, #0
	adds r4, #0xa2
	movs r1, #0xa1
	adds r1, r1, r3
	mov ip, r1
	cmp r0, #0
	beq _08E8A11C
	adds r0, r3, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r4, #0
	ldrh r0, [r4]
	muls r1, r0, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r2, r0, #0
	muls r2, r0, r2
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r2, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08E8A100
	ldr r0, _08E8A0F8 @ =0x0000FFFE
	ands r0, r6
	movs r2, #0
	ldr r1, _08E8A0FC @ =0x0000FFEF
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	strh r2, [r4]
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r3, #0
	adds r0, #0xc4
	ldr r0, [r0]
	str r0, [r1]
	b _08E8A148
	.align 2, 0
_08E8A0F8: .4byte 0x0000FFFE
_08E8A0FC: .4byte 0x0000FFEF
_08E8A100:
	adds r1, r3, #0
	adds r1, #0xaa
	cmp r0, #0x1f
	ble _08E8A110
	ldr r0, _08E8A10C @ =0x0000FFE0
	b _08E8A112
	.align 2, 0
_08E8A10C: .4byte 0x0000FFE0
_08E8A110:
	rsbs r0, r0, #0
_08E8A112:
	strh r0, [r1]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _08E8A148
_08E8A11C:
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r1, r0, #0
	muls r1, r0, r1
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r1, r0
	lsls r0, r0, #0xf
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	adds r1, #0xaa
	cmp r0, #0xf
	ble _08E8A140
	movs r0, #0x10
	strh r0, [r1]
	b _08E8A148
_08E8A140:
	strh r2, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08E8A148:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8A154
sub_08E8A154: @ 0x08E8A154
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xc0
	adds r0, #0xa8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	adds r0, r3, #0
	adds r0, #0xaa
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8A17C
sub_08E8A17C: @ 0x08E8A17C
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa8
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _08E8A1B8 @ =0x000002FF
	cmp r1, r0
	bgt _08E8A192
	adds r0, r3, #4
	strh r0, [r2]
_08E8A192:
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _08E8A1A4
	subs r0, r3, #3
	strh r0, [r2]
_08E8A1A4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _08E8A1B2
	strh r1, [r2]
_08E8A1B2:
	pop {r0}
	bx r0
	.align 2, 0
_08E8A1B8: .4byte 0x000002FF

	thumb_func_start sub_08E8A1BC
sub_08E8A1BC: @ 0x08E8A1BC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xb0
	ldrh r0, [r4]
	ldr r1, _08E8A344 @ =0x0000FFE0
	ands r1, r0
	strh r1, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E8A210
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08E8A200
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08E8A208
_08E8A200:
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
_08E8A208:
	ldrh r1, [r4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4]
_08E8A210:
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E8A230
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08E8A230:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E8A27C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08E8A264
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08E8A270
_08E8A264:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
_08E8A270:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
_08E8A27C:
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	adds r6, r5, #0
	adds r6, #0x94
	cmp r0, #0
	beq _08E8A29C
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
_08E8A29C:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E8A3A8
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08E8A2D0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08E8A2DC
_08E8A2D0:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
_08E8A2DC:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x10
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r3, r5, #0
	adds r3, #0xac
	ldr r0, [r3]
	cmp r0, #0
	beq _08E8A352
	subs r2, #0xc
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E8A350
	ldr r0, _08E8A348 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r0, [r3]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r3]
	movs r1, #0x60
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08E8A352
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [r3]
	adds r0, r5, #0
	adds r0, #0xe4
	strb r4, [r0]
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8A3C8
	ldr r0, _08E8A34C @ =0x0000022E
	bl sub_08E8D3B8
	b _08E8A352
	.align 2, 0
_08E8A344: .4byte 0x0000FFE0
_08E8A348: .4byte 0x0000FFBF
_08E8A34C: .4byte 0x0000022E
_08E8A350:
	str r0, [r3]
_08E8A352:
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8A3C8
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x90
	cmp r0, #1
	bne _08E8A398
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #1
	bne _08E8A390
	ldr r0, [r4]
	bl sub_08E8B630
	ldr r0, [r4]
	movs r1, #1
	bl sub_08E8B690
	b _08E8A3C8
_08E8A390:
	ldr r0, [r4]
	bl sub_08E8B660
	b _08E8A3C8
_08E8A398:
	ldr r0, [r4]
	bl sub_08E8B630
	ldr r0, [r4]
	movs r1, #0
	bl sub_08E8B690
	b _08E8A3C8
_08E8A3A8:
	adds r2, r5, #0
	adds r2, #0xa4
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8A3C8
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_08E8B660
_08E8A3C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8A3D0
sub_08E8A3D0: @ 0x08E8A3D0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E8A3F0
	adds r1, r2, #0
	adds r1, #0xe6
	ldrh r0, [r1]
	cmp r0, #0
	bne _08E8A3F0
	strh r3, [r1]
_08E8A3F0:
	pop {r0}
	bx r0

	thumb_func_start sub_08E8A3F4
sub_08E8A3F4: @ 0x08E8A3F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0xc4
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	lsls r0, r0, #0xb
	lsrs r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08E8A42E
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08E8A48A
	b _08E8A42E
_08E8A422:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08E8A42E
	movs r1, #0
_08E8A42E:
	ldr r0, _08E8A498 @ =gUnk_0200F20C
	mov sb, r0
	adds r7, r4, #0
	adds r7, #0xc0
	ldr r0, [r7]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r5, r6, #5
	adds r1, r4, #0
	adds r1, #0xd4
	ldr r2, [r1]
	adds r1, r5, #0
	bl sub_08E8AB2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E8A422
	mov r1, r8
	str r5, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E8AB00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r2, [r0]
	ldr r3, _08E8A49C @ =gUnk_0200F21C
	ldr r0, [r7]
	asrs r0, r0, #2
	movs r1, #7
	ands r0, r1
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0xd0
	strh r0, [r1]
_08E8A48A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A498: .4byte gUnk_0200F20C
_08E8A49C: .4byte gUnk_0200F21C

	thumb_func_start sub_08E8A4A0
sub_08E8A4A0: @ 0x08E8A4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	movs r0, #0
	b _08E8A59E
_08E8A4BA:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #2
	ldr r4, [sp]
	adds r2, r0, r4
	ldrh r0, [r2, #0x12]
	ldr r6, _08E8A5B4 @ =0x0000FF0E
	ands r6, r0
	strh r6, [r2, #0x12]
	movs r1, #0
	mov r0, ip
	adds r0, #0xc0
	ldr r3, [r0]
	ldr r5, _08E8A5B8 @ =0xFFFFFF00
	mov r8, r5
	adds r0, r3, r5
	ldr r4, [r2]
	cmp r0, r4
	bgt _08E8A4E4
	movs r1, #1
_08E8A4E4:
	movs r5, #0
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r3, r7
	cmp r4, r0
	bgt _08E8A4F2
	movs r5, #1
_08E8A4F2:
	ands r1, r5
	cmp r1, #0
	beq _08E8A504
	movs r0, #1
	adds r1, r6, #0
	orrs r1, r0
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r2, #0x12]
_08E8A504:
	movs r3, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _08E8A518
	movs r3, #1
_08E8A518:
	movs r5, #0
	adds r0, r1, r7
	cmp r4, r0
	bgt _08E8A522
	movs r5, #1
_08E8A522:
	ands r3, r5
	cmp r3, #0
	beq _08E8A534
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x12]
_08E8A534:
	movs r3, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _08E8A548
	movs r3, #1
_08E8A548:
	movs r5, #0
	adds r0, r1, r7
	cmp r4, r0
	bgt _08E8A552
	movs r5, #1
_08E8A552:
	ands r3, r5
	cmp r3, #0
	beq _08E8A564
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2, #0x12]
_08E8A564:
	movs r3, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _08E8A578
	movs r3, #1
_08E8A578:
	movs r4, #0
	adds r1, r1, r7
	ldr r0, [r2]
	cmp r0, r1
	bgt _08E8A584
	movs r4, #1
_08E8A584:
	ands r3, r4
	cmp r3, #0
	beq _08E8A596
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r1, r0
	movs r0, #0x80
	orrs r1, r0
	strh r1, [r2, #0x12]
_08E8A596:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08E8A59E:
	mov sb, r0
	cmp sb, sl
	blo _08E8A4BA
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A5B4: .4byte 0x0000FF0E
_08E8A5B8: .4byte 0xFFFFFF00

	thumb_func_start sub_08E8A5BC
sub_08E8A5BC: @ 0x08E8A5BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	movs r0, #0
	b _08E8A6AA
_08E8A5D6:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #2
	ldr r2, [sp]
	adds r3, r0, r2
	ldrh r0, [r3, #0x12]
	ldr r6, _08E8A6C0 @ =0x0000FF0E
	ands r6, r0
	strh r6, [r3, #0x12]
	movs r4, #0
	mov r0, ip
	adds r0, #0xc0
	ldr r1, [r0]
	ldr r5, _08E8A6C4 @ =0xFFFFFF00
	mov r8, r5
	adds r0, r1, r5
	ldr r2, [r3]
	cmp r0, r2
	bgt _08E8A600
	movs r4, #1
_08E8A600:
	movs r5, #0
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r1, r7
	cmp r2, r0
	bgt _08E8A60E
	movs r5, #1
_08E8A60E:
	ands r4, r5
	cmp r4, #0
	beq _08E8A61C
	movs r1, #0xf1
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E8A61C:
	movs r4, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _08E8A630
	movs r4, #1
_08E8A630:
	movs r5, #0
	adds r0, r1, r7
	cmp r2, r0
	bgt _08E8A63A
	movs r5, #1
_08E8A63A:
	ands r4, r5
	cmp r4, #0
	beq _08E8A648
	ldrh r0, [r3, #0x12]
	movs r1, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E8A648:
	movs r4, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _08E8A65C
	movs r4, #1
_08E8A65C:
	movs r5, #0
	adds r0, r1, r7
	cmp r2, r0
	bgt _08E8A666
	movs r5, #1
_08E8A666:
	ands r4, r5
	cmp r4, #0
	beq _08E8A674
	ldrh r0, [r3, #0x12]
	movs r1, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E8A674:
	movs r4, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _08E8A688
	movs r4, #1
_08E8A688:
	movs r5, #0
	adds r1, r1, r7
	ldr r0, [r3]
	cmp r0, r1
	bgt _08E8A694
	movs r5, #1
_08E8A694:
	ands r4, r5
	cmp r4, #0
	beq _08E8A6A2
	ldrh r1, [r3, #0x12]
	movs r0, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E8A6A2:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08E8A6AA:
	mov sb, r0
	cmp sb, sl
	blo _08E8A5D6
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A6C0: .4byte 0x0000FF0E
_08E8A6C4: .4byte 0xFFFFFF00

	thumb_func_start sub_08E8A6C8
sub_08E8A6C8: @ 0x08E8A6C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	movs r7, #0
	cmp r7, r8
	bhs _08E8A786
_08E8A6E0:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r3, r0, r1
	ldrh r1, [r3, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E8A77C
	movs r5, #0
	ldr r0, [r3]
	asrs r4, r0, #2
	adds r1, r4, #0
	subs r1, #0xe
	adds r0, r6, #0
	adds r0, #0xc0
	ldr r0, [r0]
	asrs r2, r0, #2
	cmp r1, r2
	bgt _08E8A70C
	movs r5, #1
_08E8A70C:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xe
	cmp r2, r0
	bgt _08E8A718
	movs r1, #1
_08E8A718:
	adds r2, r5, #0
	ands r2, r1
	movs r4, #0
	ldr r0, [r3, #4]
	asrs r5, r0, #2
	adds r1, r5, #0
	subs r1, #0xe
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r3, r0, #2
	cmp r1, r3
	bgt _08E8A734
	movs r4, #1
_08E8A734:
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0xe
	cmp r3, r0
	bgt _08E8A740
	movs r1, #1
_08E8A740:
	ands r4, r1
	ands r2, r4
	cmp r2, #0
	beq _08E8A77C
	adds r4, r6, #0
	adds r4, #0xa4
	ldrh r1, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08E8A77C
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8A76E
	ldr r0, _08E8A794 @ =0x00000235
	bl sub_08E8D3B8
_08E8A76E:
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	orrs r0, r5
	strh r0, [r4]
_08E8A77C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, r8
	blo _08E8A6E0
_08E8A786:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A794: .4byte 0x00000235

	thumb_func_start sub_08E8A798
sub_08E8A798: @ 0x08E8A798
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08E8A820
	adds r6, r4, #0
	adds r6, #0xb2
	ldrb r2, [r6]
	cmp r2, #0
	beq _08E8A806
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E8A7E4
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8A7D4
	cmp r2, #1
	bne _08E8A7D4
	adds r0, r4, #0
	bl sub_08E8B714
_08E8A7D4:
	ldrh r0, [r5]
	ldr r1, _08E8A884 @ =0x0000FF7F
	ands r1, r0
	strh r1, [r5]
	adds r1, r4, #0
	adds r1, #0xbf
	movs r0, #5
	strb r0, [r1]
_08E8A7E4:
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _08E8A806
	cmp r1, #4
	beq _08E8A7FA
	adds r0, #1
	strb r0, [r2]
_08E8A7FA:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xa
	ble _08E8A806
	movs r0, #0
	strb r0, [r2]
_08E8A806:
	adds r0, r4, #0
	adds r0, #0xa4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08E8A820
	ldrb r1, [r6]
	cmp r1, #0
	beq _08E8A820
	adds r0, r4, #0
	adds r0, #0xbc
	strb r1, [r0]
_08E8A820:
	movs r0, #0xbd
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0xbe
	strb r0, [r5]
	ldr r3, _08E8A888 @ =gUnk_0200F070
	adds r0, r4, #0
	adds r0, #0xbf
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _08E8A88C @ =gUnk_0200F060
	subs r0, #3
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #0xb
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r2, [r1]
	mov r1, ip
	strb r2, [r1]
	adds r3, r4, #0
	adds r3, #0xa4
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08E8A894
	adds r2, r4, #0
	adds r2, #0xb4
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08E8A8B8
	ldrh r1, [r3]
	ldr r0, _08E8A890 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	strh r0, [r2]
	b _08E8A89A
	.align 2, 0
_08E8A884: .4byte 0x0000FF7F
_08E8A888: .4byte gUnk_0200F070
_08E8A88C: .4byte gUnk_0200F060
_08E8A890: .4byte 0x0000FBFF
_08E8A894:
	ldrb r0, [r5]
	cmp r0, r2
	beq _08E8A8B8
_08E8A89A:
	ldr r1, _08E8A8C0 @ =gUnk_0200EF70
	mov r2, ip
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x28]
	strh r0, [r4, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08E8A8B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A8C0: .4byte gUnk_0200EF70

	thumb_func_start sub_08E8A8C4
sub_08E8A8C4: @ 0x08E8A8C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E8A92C
	ldr r0, _08E8A900 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r5]
	movs r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xb
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8A904
	adds r0, r4, #0
	bl sub_08E8C074
	b _08E8A908
	.align 2, 0
_08E8A900: .4byte 0x0000FEFF
_08E8A904:
	bl sub_08E8C140
_08E8A908:
	ldrh r1, [r5]
	movs r0, #1
	movs r3, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe4
	strb r3, [r0]
	subs r0, #0x3c
	strh r2, [r0]
_08E8A92C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8A934
sub_08E8A934: @ 0x08E8A934
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r5, ip
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r6, _08E8A990 @ =0xFFFFFF00
	adds r0, r0, r6
	asrs r0, r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08E8A94E
	movs r1, #0
_08E8A94E:
	mov r3, ip
	adds r3, #0xd8
	ldr r4, _08E8A994 @ =gUnk_020183F4
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r2, ip
	adds r2, #0xd4
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldr r0, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, [r5]
	adds r0, r0, r6
	asrs r1, r0, #2
	movs r0, #0xff
	ands r1, r0
	mov r0, ip
	adds r0, #0xe0
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A990: .4byte 0xFFFFFF00
_08E8A994: .4byte gUnk_020183F4

	thumb_func_start sub_08E8A998
sub_08E8A998: @ 0x08E8A998
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x94
	ldrh r0, [r4]
	ldr r6, _08E8A9EC @ =0x0000FFFB
	ands r6, r0
	strh r6, [r4]
	movs r5, #0
	ldr r1, [r1]
	adds r2, r1, #0
	cmp r1, #0
	bge _08E8A9B4
	rsbs r2, r1, #0
_08E8A9B4:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r3, [r0]
	cmp r2, r3
	bgt _08E8A9C0
	movs r5, #1
_08E8A9C0:
	movs r2, #0
	adds r0, r1, #0
	cmp r0, #0
	bge _08E8A9CA
	rsbs r0, r0, #0
_08E8A9CA:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	cmp r3, r0
	bgt _08E8A9D6
	movs r2, #1
_08E8A9D6:
	ands r5, r2
	cmp r5, #0
	beq _08E8A9E4
	movs r1, #4
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4]
_08E8A9E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8A9EC: .4byte 0x0000FFFB

	thumb_func_start sub_08E8A9F0
sub_08E8A9F0: @ 0x08E8A9F0
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [r3, #0x28]
	adds r2, r3, #0
	adds r2, #0xc4
	adds r0, r3, #0
	adds r0, #0xd0
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3, #0x2c]
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E8AA20
	adds r0, r3, #0
	bl sub_08E863D8
_08E8AA20:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8AA28
sub_08E8AA28: @ 0x08E8AA28
	adds r3, r0, #0
	ldr r2, _08E8AA60 @ =gUnk_0200F0F4
	movs r0, #0xe5
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x2c]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bx lr
	.align 2, 0
_08E8AA60: .4byte gUnk_0200F0F4

	thumb_func_start sub_08E8AA64
sub_08E8AA64: @ 0x08E8AA64
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08E8AA78 @ =0x0000044C
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _08E8AA7C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r5, #0
	b _08E8AADC
	.align 2, 0
_08E8AA78: .4byte 0x0000044C
_08E8AA7C: .4byte 0x0000FEFF
_08E8AA80:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r3, r0, #2
	adds r0, r4, r3
	ldr r2, _08E8AAEC @ =0x0000046E
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08E8AAF0 @ =0x00000579
	adds r2, r4, r0
	movs r0, #0x10
	ldrb r2, [r2]
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	beq _08E8AAD6
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r4, r2
	adds r2, #0x1c
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08E8AAF4 @ =0x00000444
	adds r1, r4, r0
	adds r2, #4
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	bl sub_08E863D8
	ldr r0, _08E8AAF8 @ =0x0000044C
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08E8AAD6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08E8AADC:
	ldr r1, _08E8AAFC @ =0x00000524
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r5, r0
	blo _08E8AA80
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8AAEC: .4byte 0x0000046E
_08E8AAF0: .4byte 0x00000579
_08E8AAF4: .4byte 0x00000444
_08E8AAF8: .4byte 0x0000044C
_08E8AAFC: .4byte 0x00000524

	thumb_func_start sub_08E8AB00
sub_08E8AB00: @ 0x08E8AB00
	push {lr}
	adds r3, r0, #0
	adds r0, #0xc0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r0]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0xc4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r1]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0xd4
	ldr r2, [r2]
	bl sub_08E8AB2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_08E8AB2C
sub_08E8AB2C: @ 0x08E8AB2C
	push {r4, lr}
	ldr r3, _08E8AB64 @ =0x000003FF
	adds r4, r3, #0
	adds r3, r0, #0
	ands r3, r4
	ands r1, r4
	ldr r4, _08E8AB68 @ =gUnk_02018428
	asrs r0, r0, #0xa
	adds r2, r2, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	lsrs r1, r1, #5
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x16
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	asrs r3, r3, #0x15
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _08E8AB6C
	movs r0, #0xf
	ands r0, r1
	b _08E8AB6E
	.align 2, 0
_08E8AB64: .4byte 0x000003FF
_08E8AB68: .4byte gUnk_02018428
_08E8AB6C:
	lsrs r0, r1, #4
_08E8AB6E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08E8AB74
sub_08E8AB74: @ 0x08E8AB74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0xe0
	ldr r0, [r7]
	str r0, [sp]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r1, #0xec
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r1, #0xec
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	movs r5, #0
_08E8AB9E:
	movs r6, #0
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r2, r0
	bge _08E8ABAA
	adds r2, r0, #0
_08E8ABAA:
	ldr r0, [sp, #4]
	cmp r2, r0
	bge _08E8ABB2
	adds r2, r0, #0
_08E8ABB2:
	ldr r0, [sp]
	cmp r2, r0
	bge _08E8ABBA
	adds r2, r0, #0
_08E8ABBA:
	movs r3, #0
_08E8ABBC:
	movs r0, #0xec
	adds r1, r3, #0
	muls r1, r0, r1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r2, r0
	bne _08E8ABE0
	adds r0, r4, r1
	ldr r1, _08E8ABFC @ =0x00000105
	adds r0, r0, r1
	movs r1, #0
	strb r5, [r0]
	lsls r0, r3, #2
	add r0, sp
	str r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08E8ABE0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08E8ABBC
	adds r0, r5, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08E8AB9E
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8ABFC: .4byte 0x00000105

	thumb_func_start sub_08E8AC00
sub_08E8AC00: @ 0x08E8AC00
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	mov r1, sp
	movs r2, #0x83
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r7, #0xf9
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r2, _08E8AC4C @ =0x000002DE
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r7, _08E8AC50 @ =0x000003CA
	adds r0, r4, r7
	ldrh r0, [r0]
	strh r0, [r1, #6]
	movs r5, #0
_08E8AC2E:
	movs r6, #0
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _08E8AC54
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r3, r0
	blt _08E8AC5C
	b _08E8AC62
	.align 2, 0
_08E8AC4C: .4byte 0x000002DE
_08E8AC50: .4byte 0x000003CA
_08E8AC54:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r3, r0
	bge _08E8AC62
_08E8AC5C:
	mov r0, sp
	ldrh r0, [r0, #2]
	b _08E8AC72
_08E8AC62:
	mov r0, sp
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _08E8AC78
	mov r0, sp
	ldrh r0, [r0, #4]
_08E8AC72:
	cmp r2, r0
	blt _08E8AC80
	b _08E8AC86
_08E8AC78:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r2, r0
	bge _08E8AC86
_08E8AC80:
	mov r0, sp
	ldrh r0, [r0]
	b _08E8ACBA
_08E8AC86:
	mov r0, sp
	ldrh r2, [r0, #2]
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _08E8AC9E
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _08E8ACA6
	b _08E8ACAC
_08E8AC9E:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r2, r0
	bge _08E8ACAC
_08E8ACA6:
	mov r0, sp
	ldrh r0, [r0, #2]
	b _08E8ACBA
_08E8ACAC:
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #6]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bls _08E8ACBA
	adds r0, r1, #0
_08E8ACBA:
	adds r3, r0, #0
	movs r2, #0
_08E8ACBE:
	movs r0, #0xec
	muls r0, r2, r0
	adds r1, r4, r0
	movs r7, #0x83
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r3, r0
	bne _08E8ACF2
	subs r7, #1
	adds r0, r1, r7
	strb r5, [r0]
	adds r1, r5, r6
	movs r7, #0xf4
	lsls r7, r7, #2
	adds r0, r4, r7
	adds r0, r0, r1
	strb r2, [r0]
	lsls r0, r2, #1
	mov r7, sp
	adds r1, r7, r0
	ldr r0, _08E8AD10 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08E8ACF2:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08E8ACBE
	adds r0, r5, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08E8AC2E
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8AD10: .4byte 0x0000FFFF

	thumb_func_start sub_08E8AD14
sub_08E8AD14: @ 0x08E8AD14
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08E8AD78 @ =0x0000176F
	cmp r4, r0
	bls _08E8AD24
	adds r4, r0, #0
_08E8AD24:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08E91A6C
	strb r0, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_08E91A6C
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08E91A6C
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r4, r0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8AD78: .4byte 0x0000176F

	thumb_func_start sub_08E8AD7C
sub_08E8AD7C: @ 0x08E8AD7C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	str r5, [sp]
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r2, _08E8ADE4 @ =0x05000011
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E9197C
	ldr r0, _08E8ADE8 @ =0x06010000
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r0, _08E8ADEC @ =gUnk_0200F0F4
	ldrh r1, [r0, #0x2c]
	strh r1, [r4, #0xc]
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	strh r5, [r4, #0x10]
	movs r0, #0x40
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r5, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8ADE4: .4byte 0x05000011
_08E8ADE8: .4byte 0x06010000
_08E8ADEC: .4byte gUnk_0200F0F4

	thumb_func_start sub_08E8ADF0
sub_08E8ADF0: @ 0x08E8ADF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E8AE44 @ =0x0000052A
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E8AE0E
	b _08E8AF42
_08E8AE0E:
	ldr r0, _08E8AE48 @ =gUnk_03000A68
	ldrb r0, [r0]
	movs r2, #0xec
	muls r0, r2, r0
	adds r0, r5, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8AE64
	ldr r1, _08E8AE4C @ =0x0000057D
	adds r0, r5, r1
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8AE50
	adds r3, #0xe6
	adds r0, r2, r3
	b _08E8AE54
	.align 2, 0
_08E8AE44: .4byte 0x0000052A
_08E8AE48: .4byte gUnk_03000A68
_08E8AE4C: .4byte 0x0000057D
_08E8AE50:
	ldr r1, _08E8AE60 @ =0x0000057A
	adds r0, r5, r1
_08E8AE54:
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08E8AD14
	b _08E8AE70
	.align 2, 0
_08E8AE60: .4byte 0x0000057A
_08E8AE64:
	ldr r2, _08E8AF54 @ =0x0000057A
	adds r0, r5, r2
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08E8AD14
_08E8AE70:
	movs r4, #0
_08E8AE72:
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r6, _08E8AF58 @ =gUnk_0200F0F4
	movs r1, #3
	subs r1, r1, r4
	mov r3, sp
	adds r2, r3, r1
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r1, [r1, #0x2c]
	strh r1, [r0, #0xc]
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r6
	adds r1, #0x2e
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r2, r5, r3
	ldr r1, _08E8AF5C @ =gUnk_0200F28C
	mov sb, r1
	lsls r1, r4, #1
	add r1, sb
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #2
	str r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r3, #0x40
	mov r8, r3
	str r3, [r1]
	bl sub_08E863D8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08E8AE72
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r6, r5, r2
	mov r3, sb
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	str r0, [r6]
	adds r2, #4
	adds r5, r5, r2
	mov r3, r8
	str r3, [r5]
	adds r0, r4, #0
	bl sub_08E863D8
	ldr r0, _08E8AF60 @ =0xFFFF0000
	ands r7, r0
	movs r0, #4
	orrs r7, r0
	ldr r0, _08E8AF64 @ =0xFF00FFFF
	ands r7, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r7, r0
	strh r7, [r4, #0xc]
	lsrs r0, r7, #0x10
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r4, #0x1b]
	mov r2, sb
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	lsls r0, r0, #2
	str r0, [r6]
	mov r0, r8
	str r0, [r5]
	adds r0, r4, #0
	bl sub_08E863D8
_08E8AF42:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8AF54: .4byte 0x0000057A
_08E8AF58: .4byte gUnk_0200F0F4
_08E8AF5C: .4byte gUnk_0200F28C
_08E8AF60: .4byte 0xFFFF0000
_08E8AF64: .4byte 0xFF00FFFF

	thumb_func_start sub_08E8AF68
sub_08E8AF68: @ 0x08E8AF68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E8B010 @ =gUnk_03000D70
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0
	str r0, [sp]
	ldr r4, _08E8B014 @ =0x0600E000
	ldr r2, _08E8B018 @ =0x05000200
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E9197C
	movs r3, #0xae
	lsls r3, r3, #3
	add r3, r8
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, r8
	ldrb r1, [r0]
	lsrs r1, r1, #3
	lsls r2, r1, #1
	ldr r0, [r3]
	adds r7, r0, r2
	ldr r0, _08E8B01C @ =0x00000574
	add r0, r8
	ldr r6, [r0]
	mov sb, r4
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, r4
	movs r0, #0
	mov sl, r0
_08E8AFB4:
	movs r4, #0xaf
	lsls r4, r4, #3
	add r4, r8
	ldrb r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	movs r2, #0x40
	subs r2, r2, r0
	asrs r2, r2, #1
	ldr r1, _08E8B020 @ =0x001FFFFF
	ands r2, r1
	adds r0, r7, #0
	mov r1, sb
	bl sub_08E9197C
	ldrb r0, [r4]
	lsrs r2, r0, #3
	cmp r2, #0
	beq _08E8AFE6
	ldr r0, _08E8B020 @ =0x001FFFFF
	ands r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08E9197C
_08E8AFE6:
	movs r1, #0x40
	add sb, r1
	adds r5, #0x40
	adds r7, #0x40
	adds r6, #0x40
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0x1f
	bls _08E8AFB4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8B010: .4byte gUnk_03000D70
_08E8B014: .4byte 0x0600E000
_08E8B018: .4byte 0x05000200
_08E8B01C: .4byte 0x00000574
_08E8B020: .4byte 0x001FFFFF

	thumb_func_start sub_08E8B024
sub_08E8B024: @ 0x08E8B024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r3, _08E8B050 @ =gUnk_03003DB0
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E8B054 @ =gUnk_020069C5
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x18]
	cmp r0, #0
	beq _08E8B058
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8B05C
	.align 2, 0
_08E8B050: .4byte gUnk_03003DB0
_08E8B054: .4byte gUnk_020069C5
_08E8B058:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8B05C:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r0, [r3]
	str r2, [r0, #8]
	adds r1, r7, #0
	ldm r1!, {r0}
	str r0, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r2, _08E8B1FC @ =0xFFFF0000
	ands r6, r2
	movs r3, #4
	mov sl, r3
	orrs r6, r3
	ldr r4, _08E8B200 @ =0xFF00FFFF
	mov r8, r4
	ands r6, r4
	movs r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _08E8B204 @ =0x05000011
	bl sub_08E9197C
	ldr r0, _08E8B208 @ =0x06010000
	mov sb, r0
	str r0, [r7, #4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x18]
	strh r6, [r7, #0x10]
	movs r0, #0
	strb r0, [r7, #0x1e]
	strh r4, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	movs r5, #0x10
	strb r5, [r0]
	adds r0, #3
	mov r2, sl
	strb r2, [r0]
	movs r0, #0x3b
	strh r0, [r7, #0x14]
	strh r5, [r7, #0x16]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	str r3, [r7, #0xc]
	movs r0, #0xec
	str r0, [r7, #0x2c]
	movs r0, #0x40
	str r0, [r7, #0x30]
	strh r4, [r7, #0x34]
	strh r4, [r7, #0x36]
	strh r5, [r7, #0x38]
	strh r4, [r7, #0x3a]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	str r4, [r7, #0x44]
	ldr r1, _08E8B1FC @ =0xFFFF0000
	ands r6, r1
	mov r2, sl
	orrs r6, r2
	mov r3, r8
	ands r6, r3
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	str r4, [sp, #8]
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, [sp, #0x18]
	ldr r2, _08E8B204 @ =0x05000011
	bl sub_08E9197C
	mov r0, sb
	str r0, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x5c
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0]
	subs r0, #8
	strh r6, [r0]
	lsrs r0, r6, #0x10
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r4, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x64
	movs r2, #0x10
	strb r2, [r0]
	adds r0, #3
	mov r3, sl
	strb r3, [r0]
	subs r1, #0xb
	movs r0, #0xb5
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x50]
	movs r0, #0xb5
	lsls r0, r0, #2
	str r0, [r7, #0x70]
	movs r1, #0x40
	str r1, [r7, #0x74]
	adds r0, r7, #0
	adds r0, #0x78
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	movs r2, #0
	mov r8, r2
_08E8B166:
	mov r3, r8
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r5, r0, #2
	adds r0, r5, #0
	adds r0, #0xd0
	adds r0, r7, r0
	ldr r1, [sp, #0x10]
	movs r2, #0xf4
	lsls r2, r2, #2
	adds r4, r1, r2
	add r4, r8
	ldrb r1, [r4]
	movs r2, #0xec
	muls r2, r1, r2
	ldr r3, [sp, #0x14]
	adds r2, r2, r3
	adds r3, r2, #0
	adds r3, #0xe5
	ldrb r3, [r3]
	adds r2, #0xe6
	ldrh r2, [r2]
	str r2, [sp]
	mov r2, r8
	bl sub_08E88108
	ldr r0, [sp, #0x10]
	ldr r2, _08E8B20C @ =0x00000579
	adds r1, r0, r2
	ldrb r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E8B29E
	adds r2, r7, r5
	movs r4, #0x94
	lsls r4, r4, #1
	adds r3, r2, r4
	ldrh r0, [r3]
	ldr r4, _08E8B210 @ =0x0000F83F
	adds r1, r4, #0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08E8B214 @ =0x00000177
	adds r0, r2, r1
	movs r1, #5
	strb r1, [r0]
	ldr r3, _08E8B218 @ =0x000001BB
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _08E8B21C @ =0x000001FF
	adds r0, r2, r4
	strb r1, [r0]
	adds r3, #0x88
	adds r0, r2, r3
	strb r1, [r0]
	adds r4, #0x88
	adds r2, r2, r4
	strb r1, [r2]
	movs r3, #0x98
	mov r0, r8
	cmp r0, #1
	beq _08E8B220
	cmp r0, #1
	ble _08E8B230
	cmp r0, #2
	beq _08E8B226
	cmp r0, #3
	beq _08E8B22C
	b _08E8B230
	.align 2, 0
_08E8B1FC: .4byte 0xFFFF0000
_08E8B200: .4byte 0xFF00FFFF
_08E8B204: .4byte 0x05000011
_08E8B208: .4byte 0x06010000
_08E8B20C: .4byte 0x00000579
_08E8B210: .4byte 0x0000F83F
_08E8B214: .4byte 0x00000177
_08E8B218: .4byte 0x000001BB
_08E8B21C: .4byte 0x000001FF
_08E8B220:
	movs r3, #0x8c
	lsls r3, r3, #1
	b _08E8B230
_08E8B226:
	movs r3, #0xcc
	lsls r3, r3, #1
	b _08E8B230
_08E8B22C:
	movs r3, #0x86
	lsls r3, r3, #2
_08E8B230:
	ldr r0, _08E8B2C0 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E8B2C4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	orrs r6, r0
	movs r5, #0
	str r5, [sp, #0xc]
	adds r4, r7, #0
	adds r4, #0x8c
	add r0, sp, #0xc
	adds r1, r4, #0
	ldr r2, _08E8B2C8 @ =0x05000011
	str r3, [sp, #0x1c]
	bl sub_08E9197C
	ldr r0, _08E8B2CC @ =0x06010000
	str r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xc]
	lsrs r0, r6, #0x10
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0x76
	strh r0, [r4, #0x10]
	ldr r3, [sp, #0x1c]
	lsrs r0, r3, #2
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xec
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	str r3, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
_08E8B29E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08E8B2AE
	b _08E8B166
_08E8B2AE:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8B2C0: .4byte 0xFFFF0000
_08E8B2C4: .4byte 0xFF00FFFF
_08E8B2C8: .4byte 0x05000011
_08E8B2CC: .4byte 0x06010000

	thumb_func_start sub_08E8B2D0
sub_08E8B2D0: @ 0x08E8B2D0
	push {r4, lr}
	ldr r0, _08E8B2EC @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8B2F0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8B2F4
	.align 2, 0
_08E8B2EC: .4byte gUnk_03003DB0
_08E8B2F0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8B2F4:
	adds r4, r1, r0
	adds r0, r4, #4
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0x48
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E863D8
	adds r0, r4, #0
	adds r0, #0xd0
	bl sub_08E8846C
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08E8846C
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_08E8846C
	ldr r1, _08E8B338 @ =0x00000664
	adds r0, r4, r1
	bl sub_08E8846C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8B338: .4byte 0x00000664

	thumb_func_start sub_08E8B33C
sub_08E8B33C: @ 0x08E8B33C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08E8B374 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E8B378
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E8B37E
	.align 2, 0
_08E8B374: .4byte gUnk_02001C69
_08E8B378:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E8B37E:
	adds r5, r0, #0
	ldr r0, _08E8B430 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E8B434 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r5, #0x48]
	movs r1, #0x20
	str r1, [r5, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	cmp r4, #0
	beq _08E8B440
	str r7, [sp, #4]
	ldr r2, _08E8B438 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8B43C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08E8B492
	.align 2, 0
_08E8B430: .4byte 0xFFFF0000
_08E8B434: .4byte 0xFF00FFFF
_08E8B438: .4byte 0x05000011
_08E8B43C: .4byte 0x06010000
_08E8B440:
	str r4, [sp, #4]
	ldr r2, _08E8B4A8 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8B4AC @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r0, sb
	strb r3, [r0]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08E8B492:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8B4A8: .4byte 0x05000011
_08E8B4AC: .4byte 0x06010000

	thumb_func_start sub_08E8B4B0
sub_08E8B4B0: @ 0x08E8B4B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	ldr r0, _08E8B4E8 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8B4EC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8B4F0
	.align 2, 0
_08E8B4E8: .4byte gUnk_02001C69
_08E8B4EC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8B4F0:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _08E8B5A8 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E8B5AC @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r4, #0x48]
	movs r1, #8
	str r1, [r4, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r2, r6, #8
	mov r8, r2
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r2, #0x23
	adds r2, r2, r4
	mov sl, r2
	cmp r5, #0
	beq _08E8B5B8
	str r7, [sp, #4]
	ldr r2, _08E8B5B0 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8B5B4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #6
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08E8B60E
	.align 2, 0
_08E8B5A8: .4byte 0xFFFF0000
_08E8B5AC: .4byte 0xFF00FFFF
_08E8B5B0: .4byte 0x05000011
_08E8B5B4: .4byte 0x06010000
_08E8B5B8:
	str r5, [sp, #4]
	ldr r2, _08E8B628 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8B62C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #6
	mov r2, sl
	strb r0, [r2]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8B60E:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E8B628: .4byte 0x05000011
_08E8B62C: .4byte 0x06010000

	thumb_func_start sub_08E8B630
sub_08E8B630: @ 0x08E8B630
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E8B648
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08E8B64E
_08E8B648:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08E8B64E:
	ldrh r1, [r2, #0x38]
	ldr r0, _08E8B65C @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_08E8B65C: .4byte 0x0000EFFF

	thumb_func_start sub_08E8B660
sub_08E8B660: @ 0x08E8B660
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E8B678
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08E8B67E
_08E8B678:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08E8B67E:
	ldrh r1, [r2, #0x38]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8B690
sub_08E8B690: @ 0x08E8B690
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E8B6AC
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E8B6B2
_08E8B6AC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E8B6B2:
	adds r2, r1, #0
	cmp r4, #0
	beq _08E8B6D4
	ldr r0, _08E8B6CC @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _08E8B6D0 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _08E8B6E4
	.align 2, 0
_08E8B6CC: .4byte 0xFFFF0000
_08E8B6D0: .4byte 0xFF00FFFF
_08E8B6D4:
	ldr r0, _08E8B70C @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _08E8B710 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
_08E8B6E4:
	orrs r3, r0
	ldrh r1, [r2, #0x10]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08E8B6FC
	lsrs r0, r3, #0x10
	ldrb r1, [r2, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08E8B706
_08E8B6FC:
	strh r3, [r2, #0x10]
	lsrs r0, r3, #0x10
	strb r0, [r2, #0x1e]
	movs r0, #0xff
	strb r0, [r2, #0x1f]
_08E8B706:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8B70C: .4byte 0xFFFF0000
_08E8B710: .4byte 0xFF00FFFF

	thumb_func_start sub_08E8B714
sub_08E8B714: @ 0x08E8B714
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08E8B74C @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E8B750
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E8B756
	.align 2, 0
_08E8B74C: .4byte gUnk_02001C69
_08E8B750:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E8B756:
	adds r5, r0, #0
	ldr r0, _08E8B808 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E8B80C @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xa0
	lsls r0, r0, #0xb
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	cmp r4, #0
	beq _08E8B818
	str r7, [sp, #4]
	ldr r2, _08E8B810 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8B814 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r0, #6
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08E8B86A
	.align 2, 0
_08E8B808: .4byte 0xFFFF0000
_08E8B80C: .4byte 0xFF00FFFF
_08E8B810: .4byte 0x05000011
_08E8B814: .4byte 0x06010000
_08E8B818:
	str r4, [sp, #4]
	ldr r2, _08E8B880 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8B884 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r0, sb
	strb r3, [r0]
	movs r0, #6
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08E8B86A:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8B880: .4byte 0x05000011
_08E8B884: .4byte 0x06010000

	thumb_func_start sub_08E8B888
sub_08E8B888: @ 0x08E8B888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08E8B8C4 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r0, _08E8B8C8 @ =gUnk_0200F298
	mov r8, r0
	ldr r5, _08E8B8CC @ =gUnk_030070B8
	cmp r1, #0
	beq _08E8B8D0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E8B8D6
	.align 2, 0
_08E8B8C4: .4byte gUnk_02001C69
_08E8B8C8: .4byte gUnk_0200F298
_08E8B8CC: .4byte gUnk_030070B8
_08E8B8D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E8B8D6:
	adds r4, r1, #0
	ldr r0, _08E8B9AC @ =0xFFFF0000
	ands r6, r0
	movs r2, #1
	orrs r6, r2
	ldr r0, _08E8B9B0 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	ldr r1, [sp, #8]
	str r1, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0xf
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x52
	strh r2, [r3]
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x28]
	subs r0, #0x20
	str r0, [r4, #0x48]
	ldr r1, [r5]
	ldr r0, _08E8B9B4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E8B9B8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	movs r1, #7
	ands r0, r1
	add r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r2, r6, #8
	mov r8, r2
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r2, #0x23
	adds r2, r2, r4
	mov sl, r2
	cmp r5, #0
	beq _08E8B9C4
	str r7, [sp, #4]
	ldr r2, _08E8B9BC @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8B9C0 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08E8BA1A
	.align 2, 0
_08E8B9AC: .4byte 0xFFFF0000
_08E8B9B0: .4byte 0xFF00FFFF
_08E8B9B4: .4byte 0x00196225
_08E8B9B8: .4byte 0x3C6EF35F
_08E8B9BC: .4byte 0x05000011
_08E8B9C0: .4byte 0x06010000
_08E8B9C4:
	str r5, [sp, #4]
	ldr r2, _08E8BA30 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8BA34 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r2, sl
	strb r0, [r2]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8BA1A:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8BA30: .4byte 0x05000011
_08E8BA34: .4byte 0x06010000

	thumb_func_start sub_08E8BA38
sub_08E8BA38: @ 0x08E8BA38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	str r3, [sp, #8]
	ldr r0, _08E8BA78 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #2
	lsls r5, r5, #2
	cmp r1, #0
	beq _08E8BA7C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E8BA82
	.align 2, 0
_08E8BA78: .4byte gUnk_02001C69
_08E8BA7C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E8BA82:
	adds r4, r1, #0
	ldr r0, _08E8BB40 @ =0xFFFF0000
	ands r6, r0
	movs r2, #1
	orrs r6, r2
	ldr r0, _08E8BB44 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	mov r0, sl
	str r0, [r4]
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x19
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	mov r2, sl
	ldr r0, [r2, #0x28]
	adds r0, r0, r3
	str r0, [r4, #0x48]
	ldr r0, [r2, #0x2c]
	adds r0, r0, r5
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r2, #0x20
	adds r2, r2, r4
	mov sb, r2
	adds r0, r4, #0
	adds r0, #0x23
	str r0, [sp, #0xc]
	cmp r5, #0
	beq _08E8BB50
	str r7, [sp, #4]
	ldr r2, _08E8BB48 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8BB4C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08E8BBA6
	.align 2, 0
_08E8BB40: .4byte 0xFFFF0000
_08E8BB44: .4byte 0xFF00FFFF
_08E8BB48: .4byte 0x05000011
_08E8BB4C: .4byte 0x06010000
_08E8BB50:
	str r5, [sp, #4]
	ldr r2, _08E8BBCC @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8BBD0 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8BBA6:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	movs r0, #4
	strh r0, [r4, #0x34]
	ldr r0, _08E8BBD4 @ =gUnk_0200F298
	ldr r2, [sp, #8]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4, #0x36]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8BBCC: .4byte 0x05000011
_08E8BBD0: .4byte 0x06010000
_08E8BBD4: .4byte gUnk_0200F298

	thumb_func_start sub_08E8BBD8
sub_08E8BBD8: @ 0x08E8BBD8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E8BC08 @ =gUnk_02007319
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_08E8F750
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, [r4, #0x28]
	cmp r0, #0
	beq _08E8BC0C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8BC10
	.align 2, 0
_08E8BC08: .4byte gUnk_02007319
_08E8BC0C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8BC10:
	adds r1, r1, r0
	str r4, [r1]
	movs r0, #0
	strh r3, [r1, #4]
	strb r0, [r1, #6]
	adds r0, r2, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08E8BC24
sub_08E8BC24: @ 0x08E8BC24
	push {r4, lr}
	ldr r0, _08E8BC40 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8BC44
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8BC48
	.align 2, 0
_08E8BC40: .4byte gUnk_03003DB0
_08E8BC44:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8BC48:
	adds r4, r1, r0
	ldrb r0, [r4, #6]
	adds r1, r0, #1
	strb r1, [r4, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08E8BC62
	ldr r0, [r4]
	bl sub_08E8B888
	movs r0, #0
	strb r0, [r4, #6]
_08E8BC62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E8BC68
sub_08E8BC68: @ 0x08E8BC68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	ldr r0, _08E8BCA0 @ =gUnk_020074DD
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8BCA4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8BCA8
	.align 2, 0
_08E8BCA0: .4byte gUnk_020074DD
_08E8BCA4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8BCA8:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _08E8BD60 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E8BD64 @ =0xFF00FFFF
	ands r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	movs r1, #0x30
	rsbs r1, r1, #0
	str r1, [r4, #0x48]
	movs r1, #0x30
	str r1, [r4, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r2, r6, #8
	mov r8, r2
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r2, #0x23
	adds r2, r2, r4
	mov sl, r2
	cmp r5, #0
	beq _08E8BD70
	str r7, [sp, #4]
	ldr r2, _08E8BD68 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8BD6C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08E8BDC6
	.align 2, 0
_08E8BD60: .4byte 0xFFFF0000
_08E8BD64: .4byte 0xFF00FFFF
_08E8BD68: .4byte 0x05000011
_08E8BD6C: .4byte 0x06010000
_08E8BD70:
	str r5, [sp, #4]
	ldr r2, _08E8BDE0 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8BDE4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r2, sl
	strb r0, [r2]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8BDC6:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E8BDE0: .4byte 0x05000011
_08E8BDE4: .4byte 0x06010000

	thumb_func_start sub_08E8BDE8
sub_08E8BDE8: @ 0x08E8BDE8
	push {lr}
	ldr r0, _08E8BE04 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8BE08
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8BE0C
	.align 2, 0
_08E8BE04: .4byte gUnk_03003DB0
_08E8BE08:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8BE0C:
	adds r0, r1, r0
	bl sub_08E86530
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8BE18
sub_08E8BE18: @ 0x08E8BE18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _08E8BE54 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E8BE58
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E8BE5E
	.align 2, 0
_08E8BE54: .4byte gUnk_02001C69
_08E8BE58:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E8BE5E:
	adds r4, r1, #0
	mov r0, sl
	str r0, [r4]
	adds r1, #0x50
	movs r6, #0
	movs r0, #0x1e
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	subs r0, #0x23
	str r0, [r4, #0x48]
	movs r0, #0x40
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r7, r7, #2
	movs r0, #0x20
	adds r0, r0, r4
	mov r8, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sb, r0
	cmp r5, #0
	beq _08E8BF14
	str r6, [sp, #4]
	ldr r2, _08E8BF08 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8BF0C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08E8BF10 @ =gUnk_0200F2AC
	adds r0, r7, r0
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
	b _08E8BF6E
	.align 2, 0
_08E8BF08: .4byte 0x05000011
_08E8BF0C: .4byte 0x06010000
_08E8BF10: .4byte gUnk_0200F2AC
_08E8BF14:
	str r5, [sp, #4]
	ldr r2, _08E8BF8C @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8BF90 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08E8BF94 @ =gUnk_0200F2AC
	adds r0, r7, r0
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8BF6E:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r0, _08E8BF98 @ =0x0000FFFE
	strh r0, [r4, #0x34]
	subs r0, #2
	strh r0, [r4, #0x36]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8BF8C: .4byte 0x05000011
_08E8BF90: .4byte 0x06010000
_08E8BF94: .4byte gUnk_0200F2AC
_08E8BF98: .4byte 0x0000FFFE

	thumb_func_start sub_08E8BF9C
sub_08E8BF9C: @ 0x08E8BF9C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r2, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08E8BFD4 @ =gUnk_020076F1
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, [r4, #0x28]
	ldr r5, _08E8BFD8 @ =gUnk_0200F29F
	cmp r1, #0
	beq _08E8BFDC
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E8BFE2
	.align 2, 0
_08E8BFD4: .4byte gUnk_020076F1
_08E8BFD8: .4byte gUnk_0200F29F
_08E8BFDC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E8BFE2:
	str r4, [r1]
	movs r0, #0
	strh r3, [r1, #4]
	strb r0, [r1, #6]
	adds r0, r6, r5
	ldrb r0, [r0]
	strb r0, [r1, #7]
	str r7, [r1, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8BFFC
sub_08E8BFFC: @ 0x08E8BFFC
	push {r4, lr}
	ldr r0, _08E8C018 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8C01C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8C020
	.align 2, 0
_08E8C018: .4byte gUnk_03003DB0
_08E8C01C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8C020:
	adds r4, r1, r0
	ldr r0, [r4]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0x1a
	movs r3, #0
	bl sub_08E8BA38
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #0
	movs r3, #1
	bl sub_08E8BA38
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #8
	movs r3, #2
	bl sub_08E8BA38
	ldr r0, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	movs r1, #0x1e
	movs r3, #3
	bl sub_08E8BA38
	ldr r0, [r4]
	movs r1, #0x1e
	movs r2, #4
	movs r3, #4
	bl sub_08E8BA38
	ldr r0, _08E8C070 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8C070: .4byte gUnk_03003DB0

	thumb_func_start sub_08E8C074
sub_08E8C074: @ 0x08E8C074
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	ldr r0, _08E8C134 @ =gUnk_030070B8
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _08E8C138 @ =0x00196225
	muls r0, r6, r0
	ldr r4, _08E8C13C @ =0x3C6EF35F
	adds r0, r0, r4
	movs r5, #7
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_08E8C178
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_08E8C178
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_08E8C178
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_08E8C178
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8C134: .4byte gUnk_030070B8
_08E8C138: .4byte 0x00196225
_08E8C13C: .4byte 0x3C6EF35F

	thumb_func_start sub_08E8C140
sub_08E8C140: @ 0x08E8C140
	ldr r3, _08E8C16C @ =gUnk_030070B8
	ldr r0, [r3]
	ldr r2, _08E8C170 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08E8C174 @ =0x3C6EF35F
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_08E8C16C: .4byte gUnk_030070B8
_08E8C170: .4byte 0x00196225
_08E8C174: .4byte 0x3C6EF35F

	thumb_func_start sub_08E8C178
sub_08E8C178: @ 0x08E8C178
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x10]
	ldr r0, _08E8C1BC @ =gUnk_02007A01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E8C1C0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E8C1C6
	.align 2, 0
_08E8C1BC: .4byte gUnk_02007A01
_08E8C1C0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E8C1C6:
	adds r4, r1, #0
	ldr r0, _08E8C27C @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E8C280 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r4, #0x48]
	str r7, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08E8C28C
	str r7, [sp, #4]
	ldr r2, _08E8C284 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8C288 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08E8C2E2
	.align 2, 0
_08E8C27C: .4byte 0xFFFF0000
_08E8C280: .4byte 0xFF00FFFF
_08E8C284: .4byte 0x05000011
_08E8C288: .4byte 0x06010000
_08E8C28C:
	str r5, [sp, #4]
	ldr r2, _08E8C304 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8C308 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8C2E2:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r4, #0x36]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8C304: .4byte 0x05000011
_08E8C308: .4byte 0x06010000

	thumb_func_start sub_08E8C30C
sub_08E8C30C: @ 0x08E8C30C
	push {r4, lr}
	ldr r0, _08E8C328 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8C32C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8C330
	.align 2, 0
_08E8C328: .4byte gUnk_03003DB0
_08E8C32C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8C330:
	adds r4, r1, r0
	ldrh r0, [r4, #0x36]
	adds r0, #2
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08E86530
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E8C36C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E8C35C
	subs r0, #1
	strh r0, [r1]
	b _08E8C380
_08E8C35C:
	ldr r0, _08E8C368 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
	b _08E8C380
	.align 2, 0
_08E8C368: .4byte gUnk_03003DB0
_08E8C36C:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8C380
	ldr r0, _08E8C388 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E8F86C
_08E8C380:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8C388: .4byte gUnk_03003DB0

	thumb_func_start sub_08E8C38C
sub_08E8C38C: @ 0x08E8C38C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08E8C3C0 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _08E8C3C4
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E8C3CA
	.align 2, 0
_08E8C3C0: .4byte gUnk_02001C69
_08E8C3C4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
_08E8C3CA:
	ldr r0, _08E8C47C @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _08E8C480 @ =0xFF00FFFF
	ands r6, r0
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	subs r0, #0xa0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08E8C48C
	str r7, [sp, #4]
	ldr r2, _08E8C484 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8C488 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08E8C4E2
	.align 2, 0
_08E8C47C: .4byte 0xFFFF0000
_08E8C480: .4byte 0xFF00FFFF
_08E8C484: .4byte 0x05000011
_08E8C488: .4byte 0x06010000
_08E8C48C:
	str r5, [sp, #4]
	ldr r2, _08E8C4F4 @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8C4F8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8C4E2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8C4F4: .4byte 0x05000011
_08E8C4F8: .4byte 0x06010000

	thumb_func_start sub_08E8C4FC
sub_08E8C4FC: @ 0x08E8C4FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08E8C534 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E8F750
	str r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #8]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E8C538
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E8C53C
	.align 2, 0
_08E8C534: .4byte gUnk_02001C69
_08E8C538:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E8C53C:
	adds r4, r1, r0
	ldr r0, _08E8C5F4 @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _08E8C5F8 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	movs r7, #0
	str r7, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r7, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	subs r0, #0xa0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r2, #0x20
	adds r2, r2, r4
	mov sb, r2
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08E8C604
	str r7, [sp, #4]
	ldr r2, _08E8C5FC @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8C600 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08E8C65A
	.align 2, 0
_08E8C5F4: .4byte 0xFFFF0000
_08E8C5F8: .4byte 0xFF00FFFF
_08E8C5FC: .4byte 0x05000011
_08E8C600: .4byte 0x06010000
_08E8C604:
	str r5, [sp, #4]
	ldr r2, _08E8C66C @ =0x05000011
	add r0, sp, #4
	bl sub_08E9197C
	ldr r0, _08E8C670 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r2, sl
	strb r0, [r2]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08E8C65A:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E8C66C: .4byte 0x05000011
_08E8C670: .4byte 0x06010000
