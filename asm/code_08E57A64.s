	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E57A64
sub_08E57A64: @ 0x08E57A64
	push {lr}
	ldr r1, _08E57A78 @ =gUnk_03003E54
	ldr r0, _08E57A7C @ =gUnk_02018870
	str r0, [r1]
	bl sub_08E57A80
	bl sub_08E58CB8
	pop {r0}
	bx r0
	.align 2, 0
_08E57A78: .4byte gUnk_03003E54
_08E57A7C: .4byte gUnk_02018870

	thumb_func_start sub_08E57A80
sub_08E57A80: @ 0x08E57A80
	push {r4, lr}
	sub sp, #4
	ldr r0, _08E57AAC @ =gUnk_03000D60
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _08E57AB0 @ =gUnk_03000AB0
	ldr r2, _08E57AB4 @ =0x01000158
	bl sub_08E648E4
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08E57AB8 @ =gUnk_03000A80
	ldr r2, _08E57ABC @ =0x01000016
	bl sub_08E648E4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E57AAC: .4byte gUnk_03000D60
_08E57AB0: .4byte gUnk_03000AB0
_08E57AB4: .4byte 0x01000158
_08E57AB8: .4byte gUnk_03000A80
_08E57ABC: .4byte 0x01000016

	thumb_func_start sub_08E57AC0
sub_08E57AC0: @ 0x08E57AC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _08E57B24 @ =gUnk_03002C70
	ldr r2, _08E57B28 @ =0x05000014
	add r0, sp, #4
	bl sub_08E648E4
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _08E57B2C @ =gUnk_03003E90
	ldr r2, _08E57B30 @ =0x05000005
	bl sub_08E648E4
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _08E57B34 @ =gUnk_03000A80
	ldr r2, _08E57B38 @ =0x01000016
	adds r1, r4, #0
	bl sub_08E648E4
	strh r5, [r4, #4]
	bl sub_08E63F38
	ldr r0, _08E57B3C @ =gUnk_02000A15
	str r5, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0
	bl sub_08E626B8
	str r0, [r4]
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	mov r3, sp
	adds r3, #0xe
	cmp r1, #0
	beq _08E57B40
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E57B46
	.align 2, 0
_08E57B24: .4byte gUnk_03002C70
_08E57B28: .4byte 0x05000014
_08E57B2C: .4byte gUnk_03003E90
_08E57B30: .4byte 0x05000005
_08E57B34: .4byte gUnk_03000A80
_08E57B38: .4byte 0x01000016
_08E57B3C: .4byte gUnk_02000A15
_08E57B40:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08E57B46:
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E57B70 @ =0x01000010
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08E648E4
	ldr r0, _08E57B74 @ =gUnk_02000C01
	str r0, [r4]
	strb r7, [r4, #0x1c]
	cmp r6, #0
	beq _08E57B68
	adds r1, r4, #4
	adds r0, r6, #0
	movs r2, #4
	bl sub_08E648E4
_08E57B68:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E57B70: .4byte 0x01000010
_08E57B74: .4byte gUnk_02000C01

	thumb_func_start sub_08E57B78
sub_08E57B78: @ 0x08E57B78
	push {r4, lr}
	ldr r4, _08E57B8C @ =gUnk_03000A80
	ldr r0, [r4]
	bl sub_08E627D4
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E57B8C: .4byte gUnk_03000A80

	thumb_func_start sub_08E57B90
sub_08E57B90: @ 0x08E57B90
	ldr r2, _08E57B9C @ =gUnk_03000A80
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08E57B9C: .4byte gUnk_03000A80

	thumb_func_start sub_08E57BA0
sub_08E57BA0: @ 0x08E57BA0
	ldr r0, _08E57BA8 @ =gUnk_03000A80
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08E57BA8: .4byte gUnk_03000A80

	thumb_func_start sub_08E57BAC
sub_08E57BAC: @ 0x08E57BAC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _08E57BEC @ =gUnk_03002C70
	ldr r2, _08E57BF0 @ =0x05000014
	mov r0, sp
	bl sub_08E648E4
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _08E57BF4 @ =gUnk_03003E90
	ldr r2, _08E57BF8 @ =0x05000005
	bl sub_08E648E4
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _08E57BFC @ =gUnk_03000AB0
	ldr r2, _08E57C00 @ =0x01000158
	adds r1, r4, #0
	bl sub_08E648E4
	strh r6, [r4, #4]
	strb r5, [r4, #6]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E57BEC: .4byte gUnk_03002C70
_08E57BF0: .4byte 0x05000014
_08E57BF4: .4byte gUnk_03003E90
_08E57BF8: .4byte 0x05000005
_08E57BFC: .4byte gUnk_03000AB0
_08E57C00: .4byte 0x01000158

	thumb_func_start sub_08E57C04
sub_08E57C04: @ 0x08E57C04
	ldr r1, _08E57C0C @ =gUnk_03000AB0
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08E57C0C: .4byte gUnk_03000AB0

	thumb_func_start sub_08E57C10
sub_08E57C10: @ 0x08E57C10
	ldr r2, _08E57C1C @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08E57C1C: .4byte gUnk_03000AB0

	thumb_func_start sub_08E57C20
sub_08E57C20: @ 0x08E57C20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08E57CAC @ =gUnk_03000AB0
	ldr r0, [r5]
	subs r0, #5
	mov ip, r0
	movs r4, #0
	ldr r0, _08E57CB0 @ =gUnk_03000A5C
	mov r8, r0
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08E57CD6
_08E57C3A:
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
	beq _08E57C94
_08E57C5A:
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
	beq _08E57C84
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	adds r0, r5, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08E57C5A
_08E57C84:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r4
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08E57CB8
_08E57C94:
	ldrh r1, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #4]
	ldr r1, _08E57CB4 @ =gUnk_03000D60
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _08E57CE0
	.align 2, 0
_08E57CAC: .4byte gUnk_03000AB0
_08E57CB0: .4byte gUnk_03000A5C
_08E57CB4: .4byte gUnk_03000D60
_08E57CB8:
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
	blo _08E57C3A
_08E57CD6:
	ldrh r1, [r5, #4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #1
_08E57CE0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E57CEC
sub_08E57CEC: @ 0x08E57CEC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08E57D00 @ =gUnk_03000AB0
	ldr r1, _08E57D04 @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08E57D00: .4byte gUnk_03000AB0
_08E57D04: .4byte 0x000002AD

	thumb_func_start sub_08E57D08
sub_08E57D08: @ 0x08E57D08
	push {r4, r5, r6, r7, lr}
	ldr r7, _08E57E28 @ =gUnk_03000AB0
	ldrh r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E57D18
	b _08E57E22
_08E57D18:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E57D22
	b _08E57E22
_08E57D22:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r0, r7
	ldr r0, [r7]
	str r0, [r4]
	ldr r0, _08E57E2C @ =gUnk_03003670
	ldrh r1, [r0]
	ldr r0, _08E57E30 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #4]
	ldr r6, _08E57E34 @ =gUnk_03003E90
	movs r0, #0x20
	strb r0, [r6]
	ldrb r0, [r7, #6]
	strb r0, [r6, #1]
	ldr r0, [r4]
	str r0, [r6, #0x10]
	movs r5, #0
_08E57D4E:
	lsls r1, r5, #1
	adds r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _08E57D4E
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
_08E57E22:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E57E28: .4byte gUnk_03000AB0
_08E57E2C: .4byte gUnk_03003670
_08E57E30: .4byte 0x000003FF
_08E57E34: .4byte gUnk_03003E90

	thumb_func_start sub_08E57E38
sub_08E57E38: @ 0x08E57E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E57EC0 @ =gUnk_03000AB0
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E57E54
	b _08E5829A
_08E57E54:
	movs r1, #0
	mov r8, r1
	ldr r2, _08E57EC4 @ =gUnk_03000A5C
	ldrb r2, [r2]
	cmp r8, r2
	blo _08E57E62
	b _08E5806C
_08E57E62:
	ldr r0, _08E57EC8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r3, r8
	lsls r6, r3, #7
	cmp r0, r8
	bne _08E57ECC
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
	bne _08E57EAA
	b _08E58058
_08E57EAA:
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
	b _08E58058
	.align 2, 0
_08E57EC0: .4byte gUnk_03000AB0
_08E57EC4: .4byte gUnk_03000A5C
_08E57EC8: .4byte 0x04000128
_08E57ECC:
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _08E58088 @ =gUnk_03002C70
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
	ble _08E57FD8
	mov r3, sb
	ldrb r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r3]
_08E57FD8:
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
	beq _08E58018
_08E57FF0:
	mov r0, sl
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldr r0, _08E5808C @ =0x0000FFFF
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
	bne _08E57FF0
_08E58018:
	mov r0, ip
	ldrh r2, [r0, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E58058
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _08E5802C
	b _08E5823C
_08E5802C:
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r5, [r5, #1]
	cmp r0, r5
	beq _08E58038
	b _08E58254
_08E58038:
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
	ldr r0, _08E5808C @ =0x0000FFFF
	cmp r1, r0
	bne _08E58058
	b _08E5826C
_08E58058:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08E58090 @ =gUnk_03000A5C
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08E5806C
	b _08E57E62
_08E5806C:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5814A
	ldr r0, _08E58094 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #4]
	movs r5, #0
	mov r8, r5
	ldr r4, _08E58090 @ =gUnk_03000A5C
	b _08E58106
	.align 2, 0
_08E58088: .4byte gUnk_03002C70
_08E5808C: .4byte 0x0000FFFF
_08E58090: .4byte gUnk_03000A5C
_08E58094: .4byte 0x0000FFFB
_08E58098:
	ldr r0, _08E58128 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r8
	beq _08E580FC
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
	bls _08E580FC
	cmp r1, #1
	bgt _08E58110
_08E580FC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08E58106:
	ldrb r3, [r4]
	cmp r8, r3
	blo _08E58098
	cmp r5, #0
	beq _08E58130
_08E58110:
	mov r0, ip
	ldrh r1, [r0, #4]
	movs r0, #4
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E5812C @ =0x000002AD
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08E5814A
	.align 2, 0
_08E58128: .4byte 0x04000128
_08E5812C: .4byte 0x000002AD
_08E58130:
	ldr r1, _08E58144 @ =0x000002AD
	add r1, ip
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08E58148
	adds r0, r2, #1
	strb r0, [r1]
	b _08E5814A
	.align 2, 0
_08E58144: .4byte 0x000002AD
_08E58148:
	strb r5, [r1]
_08E5814A:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E581CA
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E58160
	b _08E58288
_08E58160:
	movs r3, #0
	mov r8, r3
	ldr r0, _08E581F8 @ =gUnk_03000A5C
	mov sb, r0
	ldrb r1, [r0]
	cmp r8, r1
	bhs _08E581CA
_08E5816E:
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
	ldr r0, _08E581FC @ =0x000003FF
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
	blo _08E5816E
_08E581CA:
	mov r0, ip
	ldrh r3, [r0, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08E58288
	ldr r0, _08E58200 @ =0x000002AD
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08E58208
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08E58204 @ =gUnk_03000D60
	movs r0, #7
	b _08E5827C
	.align 2, 0
_08E581F8: .4byte gUnk_03000A5C
_08E581FC: .4byte 0x000003FF
_08E58200: .4byte 0x000002AD
_08E58204: .4byte gUnk_03000D60
_08E58208:
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
	bne _08E58288
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08E58238 @ =gUnk_03000D60
	movs r0, #5
	b _08E5827C
	.align 2, 0
_08E58238: .4byte gUnk_03000D60
_08E5823C:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E58250 @ =gUnk_03000D60
	movs r0, #3
	b _08E5827C
	.align 2, 0
_08E58250: .4byte gUnk_03000D60
_08E58254:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E58268 @ =gUnk_03000D60
	movs r0, #4
	b _08E5827C
	.align 2, 0
_08E58268: .4byte gUnk_03000D60
_08E5826C:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E58284 @ =gUnk_03000D60
	movs r0, #6
_08E5827C:
	str r0, [r1]
	movs r0, #0
	b _08E5829C
	.align 2, 0
_08E58284: .4byte gUnk_03000D60
_08E58288:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E5829A
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08E5829A:
	movs r0, #1
_08E5829C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E582AC
sub_08E582AC: @ 0x08E582AC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E582C8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E582CC @ =gUnk_03000A80
	cmp r0, #0
	beq _08E582D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E582D4
	.align 2, 0
_08E582C8: .4byte gUnk_03003DB0
_08E582CC: .4byte gUnk_03000A80
_08E582D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E582D4:
	adds r0, r1, r0
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _08E583BC
	ldr r0, _08E582FC @ =gUnk_03002D34
	mov ip, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08E58304
	ldr r0, _08E58300 @ =0x0000FFFE
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08E58334
	.align 2, 0
_08E582FC: .4byte gUnk_03002D34
_08E58300: .4byte 0x0000FFFE
_08E58304:
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _08E5831C
	ldr r0, _08E58318 @ =0x0000FFFD
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08E58338
	.align 2, 0
_08E58318: .4byte 0x0000FFFD
_08E5831C:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08E58368
	ldrh r0, [r3, #0x18]
	cmp r0, #8
	bls _08E5834C
	ldr r0, _08E58344 @ =0x0000FFFF
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #3
_08E58334:
	ands r0, r1
	ldr r1, _08E58348 @ =0x0000FFFB
_08E58338:
	ands r0, r1
	strh r0, [r4, #6]
	movs r0, #1
	str r0, [r3, #0xc]
	b _08E583BC
	.align 2, 0
_08E58344: .4byte 0x0000FFFF
_08E58348: .4byte 0x0000FFFB
_08E5834C:
	adds r0, #1
	strh r0, [r3, #0x18]
	b _08E5836A
_08E58352:
	ldr r0, _08E58364 @ =0x0000FFFC
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #6]
	str r7, [r3, #0xc]
	b _08E583BC
	.align 2, 0
_08E58364: .4byte 0x0000FFFC
_08E58368:
	strh r2, [r3, #0x18]
_08E5836A:
	movs r6, #0
_08E5836C:
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
	beq _08E5839A
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r6
	ands r0, r2
	cmp r0, #0
	bne _08E5839A
	adds r1, r1, r5
	ldrh r0, [r1]
	cmp r0, #0xa
	bhi _08E58352
	adds r0, #1
	b _08E5839E
_08E5839A:
	adds r1, r1, r5
	movs r0, #0
_08E5839E:
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08E5836C
	ldr r1, [r3]
	adds r0, r3, #0
	bl sub_08E64904
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldr r0, _08E583C4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
_08E583BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E583C4: .4byte 0x0000FFFB

	thumb_func_start sub_08E583C8
sub_08E583C8: @ 0x08E583C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08E583F8 @ =gUnk_03000A80
	mov ip, r0
	ldr r4, _08E583FC @ =gUnk_03003E90
	movs r5, #0
	adds r0, #0x28
	strb r5, [r0]
	mov r0, ip
	adds r0, #0x29
	strb r5, [r0]
	movs r2, #0
_08E583E0:
	ldr r0, _08E58400 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r3, r2, #1
	cmp r0, r2
	bne _08E58404
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	b _08E58456
	.align 2, 0
_08E583F8: .4byte gUnk_03000A80
_08E583FC: .4byte gUnk_03003E90
_08E58400: .4byte 0x04000128
_08E58404:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, _08E58438 @ =gUnk_03002D34
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08E5846C
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08E5843C @ =gUnk_03002C70
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _08E5847E
	ldrb r0, [r6, #0x1c]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _08E58444
	ldr r5, _08E58440 @ =0x0000FFFB
	b _08E5847E
	.align 2, 0
_08E58438: .4byte gUnk_03002D34
_08E5843C: .4byte gUnk_03002C70
_08E58440: .4byte 0x0000FFFB
_08E58444:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x20
	beq _08E58456
	cmp r0, #0x20
	blt _08E5847E
	cmp r0, #0x41
	bgt _08E5847E
	cmp r0, #0x40
	blt _08E5847E
_08E58456:
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
	b _08E5847E
_08E5846C:
	movs r0, #1
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08E5847E
	lsls r0, r2, #1
	ldr r1, _08E58494 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
_08E5847E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08E583E0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E58494: .4byte 0x04000120

	thumb_func_start sub_08E58498
sub_08E58498: @ 0x08E58498
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08E584FC @ =gUnk_03000A80
	ldr r1, _08E58500 @ =gUnk_03003E90
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	movs r7, #0
	ldr r0, _08E58504 @ =0x00000123
	strh r0, [r1, #2]
	strb r7, [r1, #0xe]
	strh r2, [r1, #0xc]
	adds r0, r4, #4
	adds r1, #4
	movs r2, #4
	bl sub_08E648E4
	ldrh r0, [r6, #6]
	ldr r3, _08E58508 @ =0x0000FFFC
	ands r3, r0
	strh r3, [r6, #6]
	ldr r5, _08E5850C @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E58518
	ldr r0, _08E58510 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E58518
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08E58518
	movs r0, #1
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08E58514 @ =gUnk_02000CC9
	b _08E5854A
	.align 2, 0
_08E584FC: .4byte gUnk_03000A80
_08E58500: .4byte gUnk_03003E90
_08E58504: .4byte 0x00000123
_08E58508: .4byte 0x0000FFFC
_08E5850C: .4byte 0x04000128
_08E58510: .4byte gUnk_03002D34
_08E58514: .4byte gUnk_02000CC9
_08E58518:
	ldr r3, _08E58554 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E5854C
	ldr r0, _08E58558 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E5854C
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08E5854C
	ldrh r0, [r6, #6]
	movs r1, #2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08E5855C @ =gUnk_02000F69
_08E5854A:
	str r0, [r4]
_08E5854C:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E58554: .4byte 0x04000128
_08E58558: .4byte gUnk_03002D34
_08E5855C: .4byte gUnk_02000F69

	thumb_func_start sub_08E58560
sub_08E58560: @ 0x08E58560
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _08E585B8 @ =gUnk_03000A80
	ldr r6, _08E585BC @ =gUnk_03003E90
	movs r0, #2
	strb r0, [r6]
	ldrb r0, [r5, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _08E585C0 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x20
	strb r0, [r6, #0xe]
	movs r7, #1
	strh r7, [r6, #0xc]
	ldr r3, _08E585C4 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E585A4
	ldr r0, _08E585C8 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E585A4
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E585D4
_08E585A4:
	ldrh r0, [r4, #6]
	ldr r1, _08E585CC @ =0x0000FFFC
	ands r1, r0
	strh r1, [r4, #6]
	ldr r0, _08E585D0 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E58656
	.align 2, 0
_08E585B8: .4byte gUnk_03000A80
_08E585BC: .4byte gUnk_03003E90
_08E585C0: .4byte 0x00000123
_08E585C4: .4byte 0x04000128
_08E585C8: .4byte gUnk_03002D34
_08E585CC: .4byte 0x0000FFFC
_08E585D0: .4byte gUnk_02000C01
_08E585D4:
	adds r0, r5, #0
	bl sub_08E583C8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E58656
	adds r0, r4, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E58654
	cmp r0, #1
	bls _08E58654
	ldrh r1, [r4, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E58648
	movs r1, #0
_08E58602:
	ldr r0, _08E58620 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08E58624 @ =gUnk_03000A88
	adds r4, r1, #1
	cmp r0, r1
	bne _08E58628
	adds r1, r2, r3
	adds r0, r6, #4
	movs r2, #4
	bl sub_08E648E4
	b _08E5863C
	.align 2, 0
_08E58620: .4byte 0x04000128
_08E58624: .4byte gUnk_03000A88
_08E58628:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E5864C @ =gUnk_03002C70
	adds r0, r0, r1
	adds r0, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08E648E4
_08E5863C:
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08E58602
	ldr r0, _08E58650 @ =gUnk_02000DC5
	str r0, [r5]
_08E58648:
	movs r0, #1
	b _08E58656
	.align 2, 0
_08E5864C: .4byte gUnk_03002C70
_08E58650: .4byte gUnk_02000DC5
_08E58654:
	movs r0, #0
_08E58656:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E5865C
sub_08E5865C: @ 0x08E5865C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _08E586C4 @ =gUnk_03000A80
	mov ip, r0
	ldr r4, _08E586C8 @ =gUnk_03003E90
	movs r0, #2
	strb r0, [r4]
	ldrb r7, [r5, #0x1c]
	strb r7, [r4, #1]
	ldr r0, _08E586CC @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x22
	strb r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r3, _08E586D0 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E586B0
	ldr r1, _08E586D4 @ =gUnk_03002D34
	mov sb, r1
	ldr r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E586B0
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E586E0
_08E586B0:
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _08E586D8 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _08E586DC @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E587CE
	.align 2, 0
_08E586C4: .4byte gUnk_03000A80
_08E586C8: .4byte gUnk_03003E90
_08E586CC: .4byte 0x00000123
_08E586D0: .4byte 0x04000128
_08E586D4: .4byte gUnk_03002D34
_08E586D8: .4byte 0x0000FFFC
_08E586DC: .4byte gUnk_02000C01
_08E586E0:
	movs r6, #0
	movs r3, #0
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldrb r1, [r0]
	cmp r3, r1
	bhs _08E58786
	ldr r2, _08E58730 @ =gUnk_03002C70
	mov sl, r2
_08E586F4:
	ldr r0, _08E58734 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r3
	beq _08E58768
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r3
	mov r2, sb
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08E58778
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, sl
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #2
	bne _08E58778
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #1]
	cmp r0, r1
	beq _08E5873C
	ldr r6, _08E58738 @ =0x0000FFFB
	b _08E58778
	.align 2, 0
_08E58730: .4byte gUnk_03002C70
_08E58734: .4byte 0x04000128
_08E58738: .4byte 0x0000FFFB
_08E5873C:
	ldrh r1, [r2, #2]
	ldr r0, _08E58748 @ =0x00000123
	cmp r1, r0
	beq _08E58750
	ldr r6, _08E5874C @ =0x0000FFFA
	b _08E58778
	.align 2, 0
_08E58748: .4byte 0x00000123
_08E5874C: .4byte 0x0000FFFA
_08E58750:
	ldrb r0, [r2, #0xe]
	cmp r0, #0x40
	blt _08E58778
	cmp r0, #0x41
	ble _08E58760
	cmp r0, #0x42
	beq _08E58768
	b _08E58778
_08E58760:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	b _08E58774
_08E58768:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0x10
	lsls r1, r3
_08E58774:
	orrs r0, r1
	strh r0, [r4, #0xc]
_08E58778:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r3, r2
	blo _08E586F4
_08E58786:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E587CE
	movs r3, #0
	mov r2, ip
	adds r2, #0x28
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08E587B6
	ldrh r1, [r4, #0xc]
	movs r0, #0x10
	b _08E587B0
_08E587A0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08E587B6
	movs r0, #0x10
	lsls r0, r3
_08E587B0:
	ands r0, r1
	cmp r0, #0
	bne _08E587A0
_08E587B6:
	mov r0, ip
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r3, r0
	bne _08E587CC
	ldr r0, _08E587C8 @ =gUnk_02000F45
	str r0, [r5]
	movs r0, #2
	b _08E587CE
	.align 2, 0
_08E587C8: .4byte gUnk_02000F45
_08E587CC:
	movs r0, #1
_08E587CE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E587DC
sub_08E587DC: @ 0x08E587DC
	ldr r2, _08E587F8 @ =gUnk_03003E90
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #2
	strb r1, [r2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08E587FC @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x22
	strb r0, [r2, #0xe]
	movs r0, #2
	bx lr
	.align 2, 0
_08E587F8: .4byte gUnk_03003E90
_08E587FC: .4byte 0x00000123

	thumb_func_start sub_08E58800
sub_08E58800: @ 0x08E58800
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _08E5885C @ =gUnk_03000A80
	ldr r1, _08E58860 @ =gUnk_03003E90
	ldr r6, _08E58864 @ =gUnk_03002C70
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	ldr r0, _08E58868 @ =0x00000123
	strh r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r5, _08E5886C @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E58848
	ldr r0, _08E58870 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E58848
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E5887C
_08E58848:
	ldrh r0, [r3, #6]
	ldr r1, _08E58874 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r3, #6]
	ldr r0, _08E58878 @ =gUnk_02000C01
	str r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E588AC
	.align 2, 0
_08E5885C: .4byte gUnk_03000A80
_08E58860: .4byte gUnk_03003E90
_08E58864: .4byte gUnk_03002C70
_08E58868: .4byte 0x00000123
_08E5886C: .4byte 0x04000128
_08E58870: .4byte gUnk_03002D34
_08E58874: .4byte 0x0000FFFC
_08E58878: .4byte gUnk_02000C01
_08E5887C:
	ldrb r0, [r6]
	cmp r0, #2
	bne _08E588AA
	adds r0, r4, #0
	bl sub_08E583C8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E588AC
	ldrb r0, [r6, #0xe]
	cmp r0, #0x20
	bne _08E588AA
	ldrh r1, [r6, #0xc]
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	beq _08E588AA
	ldr r0, _08E588B4 @ =gUnk_02001021
	str r0, [r4]
_08E588AA:
	movs r0, #0
_08E588AC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E588B4: .4byte gUnk_02001021

	thumb_func_start sub_08E588B8
sub_08E588B8: @ 0x08E588B8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08E58910 @ =gUnk_03000A80
	ldr r4, _08E58914 @ =gUnk_03003E90
	ldr r6, _08E58918 @ =gUnk_03002C70
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #1]
	ldr r0, _08E5891C @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x41
	strb r0, [r4, #0xe]
	strh r1, [r4, #0xc]
	ldr r3, _08E58920 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E588FE
	ldr r0, _08E58924 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E588FE
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E58930
_08E588FE:
	ldrh r0, [r7, #6]
	ldr r1, _08E58928 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, _08E5892C @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E589A2
	.align 2, 0
_08E58910: .4byte gUnk_03000A80
_08E58914: .4byte gUnk_03003E90
_08E58918: .4byte gUnk_03002C70
_08E5891C: .4byte 0x00000123
_08E58920: .4byte 0x04000128
_08E58924: .4byte gUnk_03002D34
_08E58928: .4byte 0x0000FFFC
_08E5892C: .4byte gUnk_02000C01
_08E58930:
	ldrb r0, [r6]
	cmp r0, #2
	beq _08E5893C
	movs r0, #1
	rsbs r0, r0, #0
	b _08E589A2
_08E5893C:
	adds r0, r5, #0
	bl sub_08E583C8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E589A2
	ldrb r0, [r6, #0xe]
	cmp r0, #0x22
	bne _08E589A0
	movs r1, #0
_08E58952:
	ldr r0, _08E58970 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08E58974 @ =gUnk_03000A88
	adds r7, r1, #1
	cmp r0, r1
	bne _08E58978
	adds r1, r2, r3
	adds r0, r4, #4
	movs r2, #4
	bl sub_08E648E4
	b _08E5898C
	.align 2, 0
_08E58970: .4byte 0x04000128
_08E58974: .4byte gUnk_03000A88
_08E58978:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E589A8 @ =gUnk_03002C70
	adds r6, r0, r1
	adds r0, r6, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08E648E4
_08E5898C:
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08E58952
	ldr r0, _08E589AC @ =gUnk_02001119
	str r0, [r5]
	movs r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x42
	strb r0, [r4, #0xe]
_08E589A0:
	movs r0, #0
_08E589A2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E589A8: .4byte gUnk_03002C70
_08E589AC: .4byte gUnk_02001119

	thumb_func_start sub_08E589B0
sub_08E589B0: @ 0x08E589B0
	push {lr}
	adds r1, r0, #0
	ldr r2, _08E589D4 @ =gUnk_03003E90
	ldrh r0, [r1, #0x1a]
	ldrb r3, [r1, #0x1c]
	cmp r0, #0
	bne _08E589DC
	movs r0, #1
	str r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08E589D8 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x42
	strb r0, [r2, #0xe]
	movs r0, #2
	b _08E589F0
	.align 2, 0
_08E589D4: .4byte gUnk_03003E90
_08E589D8: .4byte 0x00000123
_08E589DC:
	subs r0, #1
	strh r0, [r1, #0x1a]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08E589F4 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x41
	strb r0, [r2, #0xe]
	movs r0, #0
_08E589F0:
	pop {r1}
	bx r1
	.align 2, 0
_08E589F4: .4byte 0x00000123

	thumb_func_start sub_08E589F8
sub_08E589F8: @ 0x08E589F8
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08E58A58 @ =0x0000FFFF
	movs r0, #0
	bl sub_08E6275C
	ldr r1, _08E58A5C @ =gUnk_030041E4
	ldr r0, _08E58A60 @ =gUnk_03003F70
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08E58A64 @ =gUnk_03007090
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08E58A68 @ =gUnk_03006858
	ldr r0, _08E58A6C @ =gUnk_03004184
	ldrb r0, [r0]
	strb r0, [r1]
	bl nullsub_20
	ldr r1, _08E58A70 @ =gUnk_03002C68
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E58A74 @ =gUnk_03002D20
	ldr r0, _08E58A78 @ =0x06010000
	str r0, [r1]
	ldr r0, _08E58A7C @ =gUnk_020012AD
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _08E58A80 @ =gUnk_020012DD
	ldr r5, _08E58A84 @ =gUnk_03000D60
	cmp r1, #0
	beq _08E58A88
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08E58A8E
	.align 2, 0
_08E58A58: .4byte 0x0000FFFF
_08E58A5C: .4byte gUnk_030041E4
_08E58A60: .4byte gUnk_03003F70
_08E58A64: .4byte gUnk_03007090
_08E58A68: .4byte gUnk_03006858
_08E58A6C: .4byte gUnk_03004184
_08E58A70: .4byte gUnk_03002C68
_08E58A74: .4byte gUnk_03002D20
_08E58A78: .4byte 0x06010000
_08E58A7C: .4byte gUnk_020012AD
_08E58A80: .4byte gUnk_020012DD
_08E58A84: .4byte gUnk_03000D60
_08E58A88:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08E58A8E:
	str r3, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r1, [r5]
	adds r0, #2
	strh r1, [r0]
	bl sub_08E57C04
	bl sub_08E64730
	str r4, [sp, #4]
	ldr r1, _08E58B1C @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08E58B20 @ =gUnk_03003E90
	str r0, [r1, #4]
	ldr r0, _08E58B24 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E58AB8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E58AB8
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08E58B1C @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08E58B28 @ =gUnk_03002C70
	str r0, [r1, #4]
	ldr r0, _08E58B2C @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E58AD2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E58AD2
	ldr r0, _08E58B30 @ =gUnk_03002D34
	movs r4, #0
	str r4, [r0]
	ldr r0, _08E58B34 @ =gUnk_03002D38
	strb r4, [r0]
	movs r0, #0
	bl sub_08E63E48
	bl sub_08E57A80
	bl sub_08E60454
	ldr r0, _08E58B38 @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_08E58AF6:
	ldr r2, _08E58B3C @ =gUnk_03001F90
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _08E58B40 @ =gUnk_02027D40
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xe
	bls _08E58AF6
	ldr r1, _08E58B38 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E58B1C: .4byte 0x040000D4
_08E58B20: .4byte gUnk_03003E90
_08E58B24: .4byte 0x85000005
_08E58B28: .4byte gUnk_03002C70
_08E58B2C: .4byte 0x85000014
_08E58B30: .4byte gUnk_03002D34
_08E58B34: .4byte gUnk_03002D38
_08E58B38: .4byte 0x04000208
_08E58B3C: .4byte gUnk_03001F90
_08E58B40: .4byte gUnk_02027D40

	thumb_func_start sub_08E58B44
sub_08E58B44: @ 0x08E58B44
	push {lr}
	ldr r0, _08E58B60 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E58B64
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E58B68
	.align 2, 0
_08E58B60: .4byte gUnk_03003DB0
_08E58B64:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E58B68:
	adds r0, r1, r0
	ldr r1, [r0, #0x40]
	bl sub_08E64904
	pop {r0}
	bx r0

	thumb_func_start sub_08E58B74
sub_08E58B74: @ 0x08E58B74
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08E57C04
	bl sub_08E64730
	bl sub_08E60454
	ldr r0, _08E58BE0 @ =gUnk_03000A40
	movs r3, #0
	str r3, [r0]
	ldr r2, _08E58BE4 @ =gUnk_03002C20
	ldr r0, [r2]
	ldr r1, _08E58BE8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08E58BEC @ =gUnk_03002CC8
	strh r3, [r0]
	ldr r1, _08E58BF0 @ =gUnk_03003E70
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _08E58BF4 @ =gUnk_03003690
	ldr r0, _08E58BF8 @ =0x00001F03
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _08E58BFC @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08E58C00 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08E58C04 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08E58C08 @ =gUnk_03003E60
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _08E58C0C @ =gUnk_02001379
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E58BE0: .4byte gUnk_03000A40
_08E58BE4: .4byte gUnk_03002C20
_08E58BE8: .4byte 0xFFFFFBFF
_08E58BEC: .4byte gUnk_03002CC8
_08E58BF0: .4byte gUnk_03003E70
_08E58BF4: .4byte gUnk_03003690
_08E58BF8: .4byte 0x00001F03
_08E58BFC: .4byte 0x040000D4
_08E58C00: .4byte 0x8100C000
_08E58C04: .4byte 0x81000200
_08E58C08: .4byte gUnk_03003E60
_08E58C0C: .4byte gUnk_02001379

	thumb_func_start sub_08E58C10
sub_08E58C10: @ 0x08E58C10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08E58C84 @ =gUnk_03003E70
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E58C88 @ =gUnk_03003690
	movs r2, #0
	ldr r0, _08E58C8C @ =0x00001F03
	strh r0, [r1]
	ldr r0, _08E58C90 @ =gUnk_03003E60
	strh r2, [r0]
	strh r2, [r0, #2]
_08E58C2C:
	ldr r4, _08E58C94 @ =gUnk_0200DAB4
	ldr r1, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r5, _08E58C98 @ =0x040000D4
	str r1, [r5]
	lsls r0, r2, #6
	ldr r1, _08E58C9C @ =0x0600F800
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _08E58CA0 @ =0x8000001E
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bls _08E58C2C
	subs r4, #0x10
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08E648F4
	ldr r0, [r4, #8]
	str r0, [r5]
	ldr r0, _08E58CA4 @ =gUnk_03003F80
	str r0, [r5, #4]
	ldr r0, _08E58CA8 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08E58CAC @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08E58CB0 @ =gUnk_0200141D
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E58C84: .4byte gUnk_03003E70
_08E58C88: .4byte gUnk_03003690
_08E58C8C: .4byte 0x00001F03
_08E58C90: .4byte gUnk_03003E60
_08E58C94: .4byte gUnk_0200DAB4
_08E58C98: .4byte 0x040000D4
_08E58C9C: .4byte 0x0600F800
_08E58CA0: .4byte 0x8000001E
_08E58CA4: .4byte gUnk_03003F80
_08E58CA8: .4byte 0x80000010
_08E58CAC: .4byte gUnk_03002C20
_08E58CB0: .4byte gUnk_0200141D

	thumb_func_start nullsub_34
nullsub_34: @ 0x08E58CB4
	bx lr
	.align 2, 0

	thumb_func_start sub_08E58CB8
sub_08E58CB8: @ 0x08E58CB8
	push {r4, lr}
	sub sp, #8
	ldr r0, _08E58CE4 @ =gUnk_02001491
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _08E58CE8 @ =gUnk_02001521
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E58CEC
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E58CF2
	.align 2, 0
_08E58CE4: .4byte gUnk_02001491
_08E58CE8: .4byte gUnk_02001521
_08E58CEC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08E58CF2:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08E58D20 @ =0x01000052
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08E648E4
	movs r1, #0
	str r1, [r4, #0x78]
	ldr r0, _08E58D24 @ =gUnk_02001525
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08E591F8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E58D20: .4byte 0x01000052
_08E58D24: .4byte gUnk_02001525

	thumb_func_start sub_08E58D28
sub_08E58D28: @ 0x08E58D28
	push {r4, r5, lr}
	ldr r0, _08E58D44 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E58D48
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E58D4C
	.align 2, 0
_08E58D44: .4byte gUnk_03003DB0
_08E58D48:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E58D4C:
	adds r0, r1, r0
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
_08E58D5C:
	lsls r2, r5, #1
	adds r1, r4, #0
	adds r1, #0x80
	adds r1, r1, r2
	ldr r3, _08E58DB4 @ =gUnk_03000AB0
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
	bls _08E58D5C
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08E58DA6
	adds r0, r4, #0
	bl sub_08E59308
_08E58DA6:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_08E64904
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E58DB4: .4byte gUnk_03000AB0

	thumb_func_start nullsub_35
nullsub_35: @ 0x08E58DB8
	bx lr
	.align 2, 0

	thumb_func_start sub_08E58DBC
sub_08E58DBC: @ 0x08E58DBC
	push {r4, lr}
	ldr r3, _08E58DE4 @ =gUnk_03003E70
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _08E58DE8 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _08E58DEC @ =gUnk_03003E60
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	ldr r1, _08E58DF0 @ =gUnk_0200155D
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E58DE4: .4byte gUnk_03003E70
_08E58DE8: .4byte 0x0000F9FF
_08E58DEC: .4byte gUnk_03003E60
_08E58DF0: .4byte gUnk_0200155D

	thumb_func_start sub_08E58DF4
sub_08E58DF4: @ 0x08E58DF4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E58E78 @ =gUnk_0200DE8C
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _08E58E7C @ =0x0600C000
	bl sub_08E648F4
	movs r2, #0
	str r2, [sp]
	ldr r1, _08E58E80 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E58E84 @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _08E58E88 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08E58E8C @ =gUnk_03006880
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _08E58E90 @ =gUnk_03003660
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _08E58E94 @ =0x0600E480
_08E58E30:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08E58E30
	ldr r3, _08E58E98 @ =0x0600E4C0
	movs r2, #0
_08E58E48:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08E58E48
	ldr r2, _08E58E9C @ =gUnk_03003E70
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08E58EA0 @ =gUnk_0200160D
	str r0, [r5, #0x7c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E58E78: .4byte gUnk_0200DE8C
_08E58E7C: .4byte 0x0600C000
_08E58E80: .4byte 0x040000D4
_08E58E84: .4byte 0x0600CC60
_08E58E88: .4byte 0x85000008
_08E58E8C: .4byte gUnk_03006880
_08E58E90: .4byte gUnk_03003660
_08E58E94: .4byte 0x0600E480
_08E58E98: .4byte 0x0600E4C0
_08E58E9C: .4byte gUnk_03003E70
_08E58EA0: .4byte gUnk_0200160D

	thumb_func_start sub_08E58EA4
sub_08E58EA4: @ 0x08E58EA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08E6467C
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08E58EC4 @ =gUnk_02001631
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E58EC4: .4byte gUnk_02001631

	thumb_func_start sub_08E58EC8
sub_08E58EC8: @ 0x08E58EC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08E58EEC @ =0xFFFF0000
	cmp r1, r0
	bne _08E58EE4
	bl sub_08E646D4
	ldr r0, _08E58EF0 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
_08E58EE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E58EEC: .4byte 0xFFFF0000
_08E58EF0: .4byte gUnk_0200165D

	thumb_func_start sub_08E58EF4
sub_08E58EF4: @ 0x08E58EF4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_08E57AC0
	ldr r0, _08E58F14 @ =gUnk_02001681
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E58F14: .4byte gUnk_02001681

	thumb_func_start sub_08E58F18
sub_08E58F18: @ 0x08E58F18
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08E58F44 @ =0xFFFF0000
	cmp r0, r1
	bne _08E58F50
	ldr r0, _08E58F48 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
	ldr r0, _08E58F4C @ =gUnk_03000D60
	str r5, [r0]
	bl sub_08E589F8
	b _08E58FDA
	.align 2, 0
_08E58F44: .4byte 0xFFFF0000
_08E58F48: .4byte gUnk_03003DB0
_08E58F4C: .4byte gUnk_03000D60
_08E58F50:
	bl sub_08E57BA0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08E58FA4
	bl sub_08E57B78
	ldr r1, _08E58F88 @ =gUnk_03000A5C
	ldr r0, _08E58F8C @ =gUnk_03000A80
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08E58F90 @ =gUnk_03000A68
	ldr r0, _08E58F94 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _08E58F98 @ =gUnk_03000A74
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08E58F9C @ =gUnk_03000A50
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08E58FA0 @ =gUnk_02001749
	str r0, [r4, #0x7c]
	b _08E58FDA
	.align 2, 0
_08E58F88: .4byte gUnk_03000A5C
_08E58F8C: .4byte gUnk_03000A80
_08E58F90: .4byte gUnk_03000A68
_08E58F94: .4byte 0x04000128
_08E58F98: .4byte gUnk_03000A74
_08E58F9C: .4byte gUnk_03000A50
_08E58FA0: .4byte gUnk_02001749
_08E58FA4:
	cmp r0, #1
	bne _08E58FC0
	adds r0, r4, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08E58FDA
	bl sub_08E57B90
	b _08E58FDA
_08E58FC0:
	cmp r0, #0
	bge _08E58FD4
	bl sub_08E57B78
	ldr r0, _08E58FD0 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
	b _08E58FDA
	.align 2, 0
_08E58FD0: .4byte gUnk_0200165D
_08E58FD4:
	adds r0, r4, #0
	adds r0, #0x9c
	strh r5, [r0]
_08E58FDA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08E58FE0
sub_08E58FE0: @ 0x08E58FE0
	ldr r1, _08E58FE8 @ =gUnk_02001755
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E58FE8: .4byte gUnk_02001755

	thumb_func_start sub_08E58FEC
sub_08E58FEC: @ 0x08E58FEC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
_08E58FFA:
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
	bls _08E58FFA
	movs r0, #3
	bl sub_08E57BAC
	bl sub_08E57C10
	ldr r0, _08E59034 @ =gUnk_020017A1
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E59034: .4byte gUnk_020017A1

	thumb_func_start sub_08E59038
sub_08E59038: @ 0x08E59038
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
	bls _08E5906E
	movs r0, #0
	strh r0, [r2]
	bl sub_08E57C20
	cmp r0, #0
	bne _08E5906A
	bl sub_08E589F8
	b _08E5906E
_08E5906A:
	ldr r0, _08E59074 @ =gUnk_020017E1
	str r0, [r4, #0x7c]
_08E5906E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E59074: .4byte gUnk_020017E1

	thumb_func_start sub_08E59078
sub_08E59078: @ 0x08E59078
	movs r1, #1
	str r1, [r0, #0x78]
	ldr r1, _08E59084 @ =gUnk_020017F1
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E59084: .4byte gUnk_020017F1

	thumb_func_start sub_08E59088
sub_08E59088: @ 0x08E59088
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E590A8
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E590A8
	subs r0, #1
	strh r0, [r1]
_08E590A8:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E590C0
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #2
	beq _08E590C0
	adds r0, #1
	strh r0, [r1]
_08E590C0:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_08E592B8
	ldrh r1, [r5]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08E590E4
	ldr r0, _08E590EC @ =gUnk_02001859
	str r0, [r4, #0x7c]
_08E590E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E590EC: .4byte gUnk_02001859

	thumb_func_start sub_08E590F0
sub_08E590F0: @ 0x08E590F0
	adds r2, r0, #0
	adds r2, #0x98
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08E59100 @ =gUnk_0200186D
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E59100: .4byte gUnk_0200186D

	thumb_func_start sub_08E59104
sub_08E59104: @ 0x08E59104
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
	bl sub_08E592B8
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08E59132
	ldr r0, _08E59138 @ =gUnk_020018A5
	str r0, [r4, #0x7c]
_08E59132:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E59138: .4byte gUnk_020018A5

	thumb_func_start sub_08E5913C
sub_08E5913C: @ 0x08E5913C
	ldr r2, _08E59154 @ =gUnk_03002CC8
	movs r3, #0
	movs r1, #0x8f
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _08E59158 @ =gUnk_020018C5
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E59154: .4byte gUnk_03002CC8
_08E59158: .4byte gUnk_020018C5

	thumb_func_start sub_08E5915C
sub_08E5915C: @ 0x08E5915C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08E59188 @ =gUnk_03002CC8
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
	bls _08E59182
	strh r4, [r5, #4]
	ldr r0, _08E5918C @ =gUnk_020018F9
	str r0, [r3, #0x7c]
_08E59182:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E59188: .4byte gUnk_03002CC8
_08E5918C: .4byte gUnk_020018F9

	thumb_func_start sub_08E59190
sub_08E59190: @ 0x08E59190
	push {lr}
	sub sp, #4
	ldr r1, _08E591DC @ =gUnk_03000A44
	adds r0, #0xa0
	ldrh r0, [r0]
	strb r0, [r1]
	mov r1, sp
	ldr r2, _08E591E0 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08E591E4 @ =0x01000200
	mov r0, sp
	bl sub_08E648E4
	ldr r1, _08E591E8 @ =gUnk_03002CC8
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08E591EC @ =gUnk_02030000
	ldr r1, _08E591F0 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08E648E4
	ldr r0, _08E591F4 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
	bl sub_08E5B42C
	bl sub_08E5B45C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E591DC: .4byte gUnk_03000A44
_08E591E0: .4byte 0x00007FFF
_08E591E4: .4byte 0x01000200
_08E591E8: .4byte gUnk_03002CC8
_08E591EC: .4byte gUnk_02030000
_08E591F0: .4byte 0x06008000
_08E591F4: .4byte gUnk_03003DB0

	thumb_func_start sub_08E591F8
sub_08E591F8: @ 0x08E591F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	movs r1, #0
	bl sub_08E592B8
	ldr r0, _08E592B4 @ =0x06010000
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
	bl sub_08E62F2C
	adds r1, r7, #0
	adds r1, #0x28
	ldr r0, _08E592B4 @ =0x06010000
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
	bl sub_08E62F2C
	adds r1, r7, #0
	adds r1, #0x50
	ldr r0, _08E592B4 @ =0x06010000
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
	bl sub_08E62F2C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E592B4: .4byte 0x06010000

	thumb_func_start sub_08E592B8
sub_08E592B8: @ 0x08E592B8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _08E592D0 @ =gUnk_0200DAB8
	ldr r4, _08E592D4 @ =gUnk_03003620
	ldr r2, _08E592D8 @ =gUnk_03002C20
	cmp r1, #0
	beq _08E592E0
	ldr r1, _08E592DC @ =0x040000D4
	adds r0, #1
	b _08E592E4
	.align 2, 0
_08E592D0: .4byte gUnk_0200DAB8
_08E592D4: .4byte gUnk_03003620
_08E592D8: .4byte gUnk_03002C20
_08E592DC: .4byte 0x040000D4
_08E592E0:
	ldr r1, _08E59300 @ =0x040000D4
	adds r0, #2
_08E592E4:
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08E59304 @ =0x80000010
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
_08E59300: .4byte 0x040000D4
_08E59304: .4byte 0x80000010

	thumb_func_start sub_08E59308
sub_08E59308: @ 0x08E59308
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
	bl sub_08E63734
	pop {r0}
	bx r0

	thumb_func_start sub_08E59328
sub_08E59328: @ 0x08E59328
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
	bl sub_08E59484
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E59364
sub_08E59364: @ 0x08E59364
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08E5937C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_08E5937C:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E5938E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08E5938E:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08E593F6
	adds r0, r4, #0
	bl sub_08E59400
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E593F0
	adds r0, r4, #0
	bl sub_08E62F2C
	ldrh r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	cmp r0, #0
	beq _08E593C8
	ldr r0, _08E593C4 @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	b _08E593E0
	.align 2, 0
_08E593C4: .4byte 0x0000FDFF
_08E593C8:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E593D8
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _08E593E6
_08E593D8:
	ldr r0, _08E593FC @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
_08E593E0:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_08E593E6:
	cmp r2, #0
	beq _08E593F0
	adds r0, r2, #0
	bl sub_08E59364
_08E593F0:
	adds r0, r4, #0
	bl sub_08E63734
_08E593F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E593FC: .4byte 0x0000FBFF

	thumb_func_start sub_08E59400
sub_08E59400: @ 0x08E59400
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
	bne _08E59440
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
	bl sub_08E59448
	ldr r0, [sp]
	asrs r0, r0, #2
	strh r0, [r4, #0x10]
	ldr r0, [sp, #4]
	asrs r0, r0, #2
	strh r0, [r4, #0x12]
_08E59440:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E59448
sub_08E59448: @ 0x08E59448
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _08E59458
	bl sub_08E59448
_08E59458:
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x28]
	ldr r1, [r4]
	ldr r5, [r5, #0x2c]
	ldr r6, [r4, #4]
	cmp r2, #0
	beq _08E59476
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, r1, r0
	str r0, [r4]
	ldr r0, [r2, #4]
	adds r0, r5, r0
	adds r0, r6, r0
	b _08E5947C
_08E59476:
	adds r0, r1, r3
	str r0, [r4]
	adds r0, r6, r5
_08E5947C:
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E59484
sub_08E59484: @ 0x08E59484
	push {lr}
_08E59486:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _08E59490
	adds r0, r1, #0
	b _08E59486
_08E59490:
	ldr r0, [r0, #0x38]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E59498
sub_08E59498: @ 0x08E59498
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	ldr r1, _08E594B8 @ =0x0000FEFF
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E594B2
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08E594B2:
	pop {r0}
	bx r0
	.align 2, 0
_08E594B8: .4byte 0x0000FEFF

	thumb_func_start sub_08E594BC
sub_08E594BC: @ 0x08E594BC
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
	beq _08E594F4
	ldr r0, [r2]
	ldr r1, [r0, #0x28]
	adds r1, r4, r1
	str r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r3, r0
	str r0, [r2, #0x30]
_08E594F4:
	adds r0, r2, #4
	bl sub_08E59364
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E59500
sub_08E59500: @ 0x08E59500
	push {r4, lr}
	ldr r0, _08E5951C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E59520
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E59524
	.align 2, 0
_08E5951C: .4byte gUnk_03003DB0
_08E59520:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E59524:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E594BC
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E59558
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E5954A
	subs r0, #1
	strh r0, [r1]
	b _08E5956C
_08E5954A:
	ldr r0, _08E59554 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
	b _08E5956C
	.align 2, 0
_08E59554: .4byte gUnk_03003DB0
_08E59558:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5956C
	ldr r0, _08E59574 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
_08E5956C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E59574: .4byte gUnk_03003DB0

	thumb_func_start sub_08E59578
sub_08E59578: @ 0x08E59578
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08E595AC @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #0x18
	cmp r1, #0
	beq _08E595B0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E595B6
	.align 2, 0
_08E595AC: .4byte gUnk_02001E01
_08E595B0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E595B6:
	adds r2, r0, #0
	cmp r3, #0
	ble _08E595C2
	movs r0, #0
	strb r0, [r2, #3]
	b _08E595CA
_08E595C2:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08E595CA:
	strh r0, [r2]
	ldrb r1, [r2, #3]
	ldr r3, _08E595E0 @ =gUnk_03002CC8
	cmp r5, #0
	beq _08E595E4
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _08E595EC
	.align 2, 0
_08E595E0: .4byte gUnk_03002CC8
_08E595E4:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_08E595EC:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _08E59604 @ =gUnk_03002CC8
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
_08E59604: .4byte gUnk_03002CC8

	thumb_func_start sub_08E59608
sub_08E59608: @ 0x08E59608
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08E5963C @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r6, #0x18
	cmp r1, #0
	beq _08E59640
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E59646
	.align 2, 0
_08E5963C: .4byte gUnk_02001E01
_08E59640:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E59646:
	adds r2, r0, #0
	cmp r3, #0
	ble _08E59652
	movs r0, #0
	strb r0, [r2, #3]
	b _08E5965A
_08E59652:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08E5965A:
	strh r0, [r2]
	ldrb r3, [r2, #3]
	ldr r4, _08E59670 @ =gUnk_03002CC8
	cmp r5, #0
	beq _08E59674
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _08E5967C
	.align 2, 0
_08E59670: .4byte gUnk_03002CC8
_08E59674:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_08E5967C:
	strb r6, [r2, #2]
	ldr r1, _08E59694 @ =gUnk_03002CC8
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
_08E59694: .4byte gUnk_03002CC8

	thumb_func_start sub_08E59698
sub_08E59698: @ 0x08E59698
	push {r4, lr}
	ldr r4, _08E596B4 @ =gUnk_03003DB0
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08E596B8 @ =gUnk_03002CC8
	cmp r0, #0
	beq _08E596BC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E596C0
	.align 2, 0
_08E596B4: .4byte gUnk_03003DB0
_08E596B8: .4byte gUnk_03002CC8
_08E596BC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E596C0:
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
	beq _08E59718
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08E596FE
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08E59706
	movs r0, #0x1e
	b _08E5970C
_08E596FE:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5970A
_08E59706:
	strh r2, [r3, #4]
	b _08E5970E
_08E5970A:
	movs r0, #0x1f
_08E5970C:
	strh r0, [r3, #4]
_08E5970E:
	movs r0, #0
	strh r0, [r3, #2]
	ldr r0, [r4]
	bl sub_08E627D4
_08E59718:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E59720
sub_08E59720: @ 0x08E59720
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08E5975C @ =gUnk_02001EF9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r4, r4, #0x18
	cmp r1, #0
	beq _08E59760
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E59766
	.align 2, 0
_08E5975C: .4byte gUnk_02001EF9
_08E59760:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E59766:
	adds r2, r1, #0
	strh r5, [r2]
	asrs r4, r4, #0x18
	cmp r4, #0
	bge _08E59772
	rsbs r4, r4, #0
_08E59772:
	strb r4, [r2, #2]
	cmp r6, #0
	beq _08E5977C
	movs r0, #0x10
	b _08E5977E
_08E5977C:
	movs r0, #0x20
_08E5977E:
	strb r0, [r2, #3]
	ldrb r1, [r2, #3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #3]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E59790
sub_08E59790: @ 0x08E59790
	push {r4, lr}
	ldr r0, _08E597AC @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E597B0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E597B4
	.align 2, 0
_08E597AC: .4byte gUnk_03003DB0
_08E597B0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E597B4:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r2, [r4, #3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E597E6
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _08E597DE
	adds r0, r1, #0
	movs r1, #1
	bl sub_08E59578
	b _08E597E6
_08E597DE:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08E59578
_08E597E6:
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E5981E
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #3]
	movs r1, #0x10
	ands r1, r0
	ldrb r0, [r4, #2]
	cmp r1, #0
	beq _08E59812
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_08E59578
	b _08E5981E
_08E59812:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_08E59578
_08E5981E:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E59856
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5984C
	ldr r1, _08E59844 @ =gUnk_03002CC8
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _08E59848 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
	b _08E59856
	.align 2, 0
_08E59844: .4byte gUnk_03002CC8
_08E59848: .4byte gUnk_03003DB0
_08E5984C:
	movs r0, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
_08E59856:
	ldrb r0, [r4, #3]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r4, #3]
	ldr r0, _08E59874 @ =gUnk_03002CC8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08E5986E
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r4, #3]
_08E5986E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E59874: .4byte gUnk_03002CC8

	thumb_func_start sub_08E59878
sub_08E59878: @ 0x08E59878
	push {lr}
	ldr r1, _08E59890 @ =gUnk_03002CC8
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08E59886
	cmp r0, #0x1f
	bne _08E59894
_08E59886:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08E59894
	movs r0, #0
	b _08E59896
	.align 2, 0
_08E59890: .4byte gUnk_03002CC8
_08E59894:
	movs r0, #1
_08E59896:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E5989C
sub_08E5989C: @ 0x08E5989C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E598CC @ =gUnk_02002069
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_08E626B8
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08E598D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E598D4
	.align 2, 0
_08E598CC: .4byte gUnk_02002069
_08E598D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E598D4:
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

	thumb_func_start sub_08E59900
sub_08E59900: @ 0x08E59900
	push {lr}
	ldr r0, _08E5991C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E59920
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E59924
	.align 2, 0
_08E5991C: .4byte gUnk_03003DB0
_08E59920:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E59924:
	adds r2, r1, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r2, #0xd]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _08E5993C
	adds r0, r1, #1
	strb r0, [r2, #0xd]
	b _08E59970
_08E5993C:
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2, #8]
	cmp r0, r3
	blo _08E59950
	strb r1, [r2, #0xc]
_08E59950:
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
	bl sub_08E648E4
_08E59970:
	pop {r0}
	bx r0

	thumb_func_start sub_08E59974
sub_08E59974: @ 0x08E59974
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E599A4 @ =gUnk_0200213D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_08E626B8
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08E599A8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E599AC
	.align 2, 0
_08E599A4: .4byte gUnk_0200213D
_08E599A8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E599AC:
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

	thumb_func_start sub_08E599D4
sub_08E599D4: @ 0x08E599D4
	push {r4, lr}
	ldr r0, _08E599F0 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E599F4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E599F8
	.align 2, 0
_08E599F0: .4byte gUnk_03003DB0
_08E599F4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E599F8:
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldrb r1, [r3, #0xa]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08E59A10
	adds r0, r1, #1
	strb r0, [r3, #0xa]
	b _08E59A62
_08E59A10:
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
	blo _08E59A34
	movs r0, #0
	strb r0, [r3, #9]
	strh r2, [r3, #4]
_08E59A34:
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldr r2, _08E59A68 @ =0x040000D4
	adds r0, #2
	str r0, [r2]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	ldr r1, _08E59A6C @ =gUnk_03003F80
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08E59A70 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08E59A62:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E59A68: .4byte 0x040000D4
_08E59A6C: .4byte gUnk_03003F80
_08E59A70: .4byte gUnk_03002C20

	thumb_func_start sub_08E59A74
sub_08E59A74: @ 0x08E59A74
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
	ldr r0, _08E59AFC @ =gUnk_020027ED
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_08E626B8
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _08E59B00 @ =gUnk_0200DAB8
	mov ip, r0
	ldr r4, _08E59B04 @ =gUnk_03002C20
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
	beq _08E59B08
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _08E59B0E
	.align 2, 0
_08E59AFC: .4byte gUnk_020027ED
_08E59B00: .4byte gUnk_0200DAB8
_08E59B04: .4byte gUnk_03002C20
_08E59B08:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
_08E59B0E:
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
	ldr r5, _08E59F0C @ =0x000002AE
	adds r0, r1, r5
	movs r2, #0
	mov sl, r2
	strh r6, [r0]
	adds r5, #2
	adds r5, r1, r5
	str r5, [sp, #0x3c]
	mov r0, r8
	strb r0, [r5]
	ldr r2, _08E59F10 @ =0x000002B1
	adds r2, r2, r1
	mov r8, r2
	mov r5, sb
	strb r5, [r2]
	ldr r0, _08E59F14 @ =0x000002B2
	adds r5, r1, r0
	movs r0, #1
	strb r0, [r5]
	ldr r2, _08E59F18 @ =0x000002B3
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
	ldr r0, _08E59F1C @ =0x000002B6
	adds r0, r0, r1
	mov sb, r0
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _08E59B7A
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_08E59B7A:
	ldr r1, _08E59F20 @ =0x040000D4
	ldrb r0, [r5]
	lsls r0, r0, #5
	add r0, ip
	str r0, [r1]
	ldr r5, [sp, #0x3c]
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r2, _08E59F24 @ =gUnk_03003440
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r3, _08E59F28 @ =0x80000010
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
	ldr r5, _08E59F24 @ =gUnk_03003440
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
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E59F30 @ =0x06010000
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
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r1, _08E59F30 @ =0x06010000
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
	ldr r0, _08E59F34 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	str r6, [sp, #0xc]
	adds r5, #0x88
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r2, _08E59F30 @ =0x06010000
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
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r1, _08E59F30 @ =0x06010000
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
	ldr r0, _08E59F34 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [sp, #0x50]
	adds r1, r5, #0
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r2, _08E59F30 @ =0x06010000
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
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r2, _08E59F30 @ =0x06010000
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
	ldr r0, _08E59F34 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E59F30 @ =0x06010000
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
	ldr r2, _08E59F2C @ =0x05000011
	bl sub_08E648E4
	ldr r2, _08E59F30 @ =0x06010000
	str r2, [r4]
	b _08E59F38
	.align 2, 0
_08E59F0C: .4byte 0x000002AE
_08E59F10: .4byte 0x000002B1
_08E59F14: .4byte 0x000002B2
_08E59F18: .4byte 0x000002B3
_08E59F1C: .4byte 0x000002B6
_08E59F20: .4byte 0x040000D4
_08E59F24: .4byte gUnk_03003440
_08E59F28: .4byte 0x80000010
_08E59F2C: .4byte 0x05000011
_08E59F30: .4byte 0x06010000
_08E59F34: .4byte 0x0000FFEF
_08E59F38:
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
	ldr r0, _08E5A078 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x24]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	ldr r2, _08E5A07C @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5A080 @ =0x06010000
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
	ldr r2, _08E5A07C @ =0x05000011
	bl sub_08E648E4
	ldr r2, _08E5A080 @ =0x06010000
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
	ldr r2, _08E5A078 @ =0x0000FFEF
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
_08E5A078: .4byte 0x0000FFEF
_08E5A07C: .4byte 0x05000011
_08E5A080: .4byte 0x06010000

	thumb_func_start sub_08E5A084
sub_08E5A084: @ 0x08E5A084
	ldr r0, _08E5A090 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5A094 @ =gUnk_02002801
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08E5A090: .4byte gUnk_03003DB0
_08E5A094: .4byte gUnk_02002801

	thumb_func_start sub_08E5A098
sub_08E5A098: @ 0x08E5A098
	push {r4, r5, r6, lr}
	ldr r6, _08E5A0B4 @ =gUnk_03003DB0
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5A0B8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5A0BC
	.align 2, 0
_08E5A0B4: .4byte gUnk_03003DB0
_08E5A0B8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5A0BC:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5A0D4
	movs r1, #0
	b _08E5A0D8
_08E5A0D4:
	ldr r0, _08E5A0F8 @ =gUnk_03000AB0
	ldrh r1, [r0, #0x10]
_08E5A0D8:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r3, [r2]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08E5A150
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5A0FC
	movs r0, #1
	orrs r0, r3
	strb r0, [r2]
	b _08E5A1EC
	.align 2, 0
_08E5A0F8: .4byte gUnk_03000AB0
_08E5A0FC:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08E5A114
	movs r0, #0xfb
	ands r0, r3
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _08E5A1EC
_08E5A114:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08E5A134
	ldr r1, _08E5A12C @ =0x000002AE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r1, [r6]
	ldr r0, _08E5A130 @ =gUnk_020030F9
	b _08E5A1EA
	.align 2, 0
_08E5A12C: .4byte 0x000002AE
_08E5A130: .4byte gUnk_020030F9
_08E5A134:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08E5A1EC
	ldr r1, _08E5A148 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08E5A14C @ =gUnk_02002E09
	b _08E5A1EA
	.align 2, 0
_08E5A148: .4byte 0x000002AE
_08E5A14C: .4byte gUnk_02002E09
_08E5A150:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08E5A1B8
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08E5A194
	ldr r1, _08E5A174 @ =0x000002AD
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E5A17C
	ldr r0, _08E5A178 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #1
	b _08E5A192
	.align 2, 0
_08E5A174: .4byte 0x000002AD
_08E5A178: .4byte 0x000002B2
_08E5A17C:
	cmp r0, #1
	bne _08E5A18C
	ldr r0, _08E5A188 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #3
	b _08E5A192
	.align 2, 0
_08E5A188: .4byte 0x000002B2
_08E5A18C:
	ldr r0, _08E5A1AC @ =0x000002B2
	adds r1, r4, r0
	movs r0, #5
_08E5A192:
	strb r0, [r1]
_08E5A194:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E5A1B0
	movs r0, #4
	orrs r0, r1
	movs r1, #0x40
	b _08E5A1B2
	.align 2, 0
_08E5A1AC: .4byte 0x000002B2
_08E5A1B0:
	movs r0, #1
_08E5A1B2:
	orrs r0, r1
	strb r0, [r2]
	b _08E5A1EC
_08E5A1B8:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08E5A1D8
	ldr r1, _08E5A1D0 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08E5A1D4 @ =gUnk_02002A49
	b _08E5A1EA
	.align 2, 0
_08E5A1D0: .4byte 0x000002AE
_08E5A1D4: .4byte gUnk_02002A49
_08E5A1D8:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08E5A1EC
	ldr r1, _08E5A22C @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _08E5A230 @ =gUnk_02002C29
_08E5A1EA:
	str r0, [r1, #8]
_08E5A1EC:
	adds r0, r4, #0
	bl sub_08E5A248
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E5A242
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E5A234
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E59364
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E59364
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E59364
	b _08E5A242
	.align 2, 0
_08E5A22C: .4byte 0x000002AE
_08E5A230: .4byte gUnk_02002C29
_08E5A234:
	adds r0, r4, #4
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E59364
_08E5A242:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E5A248
sub_08E5A248: @ 0x08E5A248
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08E5A280 @ =0x000002B3
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08E5A2CE
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	ldr r1, _08E5A284 @ =gUnk_0200DAB8
	ldr r6, _08E5A288 @ =gUnk_03003440
	ldr r5, _08E5A28C @ =gUnk_03002C20
	cmp r0, #0
	beq _08E5A294
	ldr r2, _08E5A290 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _08E5A29C
	.align 2, 0
_08E5A280: .4byte 0x000002B3
_08E5A284: .4byte gUnk_0200DAB8
_08E5A288: .4byte gUnk_03003440
_08E5A28C: .4byte gUnk_03002C20
_08E5A290: .4byte 0x000002B2
_08E5A294:
	ldr r2, _08E5A2D4 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
_08E5A29C:
	lsls r0, r0, #5
	adds r4, r0, r1
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	eors r0, r1
	strb r0, [r2]
	ldr r1, _08E5A2D8 @ =0x040000D4
	str r4, [r1]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08E5A2DC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_08E5A2CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E5A2D4: .4byte 0x000002B2
_08E5A2D8: .4byte 0x040000D4
_08E5A2DC: .4byte 0x80000010

	thumb_func_start sub_08E5A2E0
sub_08E5A2E0: @ 0x08E5A2E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08E5A304 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5A308
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5A30C
	.align 2, 0
_08E5A304: .4byte gUnk_03003DB0
_08E5A308:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5A30C:
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
	beq _08E5A3B8
	adds r0, #8
	str r0, [r5, #0x2c]
	adds r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08E5A3B0 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	ldr r0, _08E5A3B4 @ =0x000002B1
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
	b _08E5A40E
	.align 2, 0
_08E5A3B0: .4byte 0x0000F83F
_08E5A3B4: .4byte 0x000002B1
_08E5A3B8:
	subs r0, #8
	str r0, [r5, #0x2c]
	subs r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08E5A440 @ =0x0000F83F
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
	ldr r4, _08E5A444 @ =0x000002B1
_08E5A40E:
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
	beq _08E5A44C
	ldr r0, _08E5A448 @ =0x000002B2
	adds r1, r5, r0
	movs r0, #1
	b _08E5A452
	.align 2, 0
_08E5A440: .4byte 0x0000F83F
_08E5A444: .4byte 0x000002B1
_08E5A448: .4byte 0x000002B2
_08E5A44C:
	ldr r4, _08E5A4B0 @ =0x000002B2
	adds r1, r5, r4
	movs r0, #3
_08E5A452:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08E5A248
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E5A478
	adds r0, r5, #4
	bl sub_08E59364
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08E59364
_08E5A478:
	ldr r0, _08E5A4B4 @ =0x000002AE
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E5A49E
	ldr r0, _08E5A4B8 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5A4BC @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r0, [r4]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r4]
_08E5A49E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5A4B0: .4byte 0x000002B2
_08E5A4B4: .4byte 0x000002AE
_08E5A4B8: .4byte gUnk_03003DB0
_08E5A4BC: .4byte gUnk_02002801

	thumb_func_start sub_08E5A4C0
sub_08E5A4C0: @ 0x08E5A4C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08E5A4E0 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5A4E4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5A4E8
	.align 2, 0
_08E5A4E0: .4byte gUnk_03003DB0
_08E5A4E4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5A4E8:
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
	beq _08E5A554
	adds r0, #8
	str r0, [r4, #0x2c]
	adds r0, r5, #4
	str r0, [r4, #0x30]
	ldr r0, _08E5A550 @ =0x000002B1
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
	b _08E5A586
	.align 2, 0
_08E5A550: .4byte 0x000002B1
_08E5A554:
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
	ldr r2, _08E5A5A0 @ =0x000002B1
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	mov r7, r8
_08E5A586:
	strb r0, [r7]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E5A5A8
	ldr r2, _08E5A5A4 @ =0x000002B2
	adds r1, r4, r2
	movs r0, #1
	b _08E5A5AE
	.align 2, 0
_08E5A5A0: .4byte 0x000002B1
_08E5A5A4: .4byte 0x000002B2
_08E5A5A8:
	ldr r3, _08E5A630 @ =0x000002B2
	adds r1, r4, r3
	movs r0, #3
_08E5A5AE:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08E5A248
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E5A5D4
	adds r0, r4, #4
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E59364
_08E5A5D4:
	ldr r0, _08E5A634 @ =0x000002AE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E5A690
	ldrb r0, [r5]
	movs r1, #0x10
	ands r1, r0
	ldr r2, _08E5A638 @ =gUnk_03003DB0
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0
	adds r7, r4, #0
	adds r7, #0xe4
	ldr r0, _08E5A63C @ =gUnk_02002801
	mov r8, r0
	cmp r1, #0
	beq _08E5A644
	ldr r1, _08E5A640 @ =0x0000F83F
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
	b _08E5A668
	.align 2, 0
_08E5A630: .4byte 0x000002B2
_08E5A634: .4byte 0x000002AE
_08E5A638: .4byte gUnk_03003DB0
_08E5A63C: .4byte gUnk_02002801
_08E5A640: .4byte 0x0000F83F
_08E5A644:
	ldr r1, _08E5A69C @ =0x0000F83F
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
_08E5A668:
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
_08E5A690:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5A69C: .4byte 0x0000F83F

	thumb_func_start sub_08E5A6A0
sub_08E5A6A0: @ 0x08E5A6A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E5A6C8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E5A6CC @ =gUnk_0200DEA8
	cmp r0, #0
	beq _08E5A6D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5A6D4
	.align 2, 0
_08E5A6C8: .4byte gUnk_03003DB0
_08E5A6CC: .4byte gUnk_0200DEA8
_08E5A6D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5A6D4:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08E5A8E8 @ =0x000002AD
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
	ldr r0, _08E5A8EC @ =0x0000F83F
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
	ldr r1, _08E5A8F0 @ =0x000002B1
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	ldr r2, _08E5A8F4 @ =0x00000133
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
	ldr r1, _08E5A8EC @ =0x0000F83F
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
	ldr r1, _08E5A8EC @ =0x0000F83F
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
	ldr r1, _08E5A8EC @ =0x0000F83F
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
	ldr r1, _08E5A8EC @ =0x0000F83F
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
	ldr r3, _08E5A8EC @ =0x0000F83F
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
	bne _08E5A8FC
	ldr r3, _08E5A8F8 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #1
	b _08E5A912
	.align 2, 0
_08E5A8E8: .4byte 0x000002AD
_08E5A8EC: .4byte 0x0000F83F
_08E5A8F0: .4byte 0x000002B1
_08E5A8F4: .4byte 0x00000133
_08E5A8F8: .4byte 0x000002B2
_08E5A8FC:
	cmp r0, #1
	bne _08E5A90C
	ldr r0, _08E5A908 @ =0x000002B2
	adds r1, r7, r0
	movs r0, #3
	b _08E5A912
	.align 2, 0
_08E5A908: .4byte 0x000002B2
_08E5A90C:
	ldr r2, _08E5A97C @ =0x000002B2
	adds r1, r7, r2
	movs r0, #5
_08E5A912:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08E5A248
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E5A948
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08E59364
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08E59364
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08E59364
_08E5A948:
	ldr r0, _08E5A980 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E5A96A
	ldr r0, _08E5A984 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5A988 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _08E5A98C @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08E5A96A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5A97C: .4byte 0x000002B2
_08E5A980: .4byte 0x000002AE
_08E5A984: .4byte gUnk_03003DB0
_08E5A988: .4byte gUnk_02002801
_08E5A98C: .4byte 0x000002AD

	thumb_func_start sub_08E5A990
sub_08E5A990: @ 0x08E5A990
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E5A9B8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E5A9BC @ =gUnk_0200DEA8
	cmp r0, #0
	beq _08E5A9C0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5A9C4
	.align 2, 0
_08E5A9B8: .4byte gUnk_03003DB0
_08E5A9BC: .4byte gUnk_0200DEA8
_08E5A9C0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5A9C4:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08E5ABD4 @ =0x000002AD
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
	ldr r5, _08E5ABD8 @ =0x0000F83F
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
	ldr r1, _08E5ABDC @ =0x000002B1
	adds r5, r7, r1
	ldrb r1, [r5]
	ldr r2, _08E5ABE0 @ =0x00000133
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
	bne _08E5ABE8
	ldr r2, _08E5ABE4 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #1
	b _08E5ABFE
	.align 2, 0
_08E5ABD4: .4byte 0x000002AD
_08E5ABD8: .4byte 0x0000F83F
_08E5ABDC: .4byte 0x000002B1
_08E5ABE0: .4byte 0x00000133
_08E5ABE4: .4byte 0x000002B2
_08E5ABE8:
	cmp r0, #1
	bne _08E5ABF8
	ldr r3, _08E5ABF4 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #3
	b _08E5ABFE
	.align 2, 0
_08E5ABF4: .4byte 0x000002B2
_08E5ABF8:
	ldr r5, _08E5AC68 @ =0x000002B2
	adds r1, r7, r5
	movs r0, #5
_08E5ABFE:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08E5A248
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E5AC34
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08E59364
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08E59364
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08E59364
_08E5AC34:
	ldr r0, _08E5AC6C @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E5AC56
	ldr r0, _08E5AC70 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5AC74 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r6, #2]
	ldr r2, _08E5AC78 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08E5AC56:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5AC68: .4byte 0x000002B2
_08E5AC6C: .4byte 0x000002AE
_08E5AC70: .4byte gUnk_03003DB0
_08E5AC74: .4byte gUnk_02002801
_08E5AC78: .4byte 0x000002AD

	thumb_func_start sub_08E5AC7C
sub_08E5AC7C: @ 0x08E5AC7C
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E5AC92
	movs r0, #0
	b _08E5AC94
_08E5AC92:
	movs r0, #1
_08E5AC94:
	pop {r1}
	bx r1

	thumb_func_start sub_08E5AC98
sub_08E5AC98: @ 0x08E5AC98
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
	ldr r0, _08E5ADB0 @ =gUnk_03000A5C
	adds r1, r4, #0
	adds r1, #0x94
	ldr r2, _08E5ADB4 @ =gUnk_03000A68
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
	bhs _08E5ADB8
	movs r0, #0
	b _08E5ADBA
	.align 2, 0
_08E5ADB0: .4byte gUnk_03000A5C
_08E5ADB4: .4byte gUnk_03000A68
_08E5ADB8:
	movs r0, #1
_08E5ADBA:
	strh r0, [r1]
	ldrb r2, [r2]
	cmp r6, r2
	bne _08E5ADCE
	adds r2, r4, #0
	adds r2, #0x94
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08E5ADCE:
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
	beq _08E5AE66
	cmp r6, #1
	bgt _08E5AE52
	cmp r6, #0
	beq _08E5AE5C
	b _08E5AE84
_08E5AE52:
	cmp r6, #2
	beq _08E5AE70
	cmp r6, #3
	beq _08E5AE7A
	b _08E5AE84
_08E5AE5C:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xe8
	lsls r0, r0, #2
	b _08E5AE82
_08E5AE66:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xc8
	lsls r0, r0, #2
	b _08E5AE82
_08E5AE70:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xa8
	lsls r0, r0, #2
	b _08E5AE82
_08E5AE7A:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0x88
	lsls r0, r0, #2
_08E5AE82:
	str r0, [r1]
_08E5AE84:
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
	ldr r2, _08E5B028 @ =gUnk_020183E8
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
	ldr r0, _08E5B02C @ =gUnk_030070B8
	ldr r1, [r0]
	ldr r0, _08E5B030 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E5B034 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r2, _08E5B02C @ =gUnk_030070B8
	str r0, [r2]
	ldr r3, [sp, #0x8c]
	str r0, [r3]
	str r5, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _08E5B038 @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5B03C @ =0x06010000
	str r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	ldr r1, _08E5B040 @ =gUnk_0200EF64
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
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
	ldr r0, _08E5B044 @ =gUnk_03000A68
	ldrb r0, [r0]
	cmp r6, r0
	bne _08E5AF48
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
_08E5AF48:
	str r5, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, _08E5B038 @ =0x05000011
	bl sub_08E648E4
	ldr r1, _08E5B03C @ =0x06010000
	str r1, [r4, #0x44]
	movs r3, #0x88
	lsls r3, r3, #3
	ldr r2, [sp, #0x98]
	strh r3, [r2]
	ldr r1, _08E5B048 @ =gUnk_0200F0E8
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	ldrb r0, [r2]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
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
	ldr r0, _08E5B04C @ =0x0000FFEC
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
	ldr r0, _08E5B050 @ =0x00001010
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
	ldr r0, _08E5B054 @ =0x0000FFEF
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
	beq _08E5B016
	adds r0, r4, #0
	bl sub_08E5EB40
	ldr r1, [sp, #0xd4]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08E5EBD0
	ldr r2, [sp, #0xd8]
	str r0, [r2]
	adds r0, r4, #0
	bl sub_08E5E418
	adds r1, r4, #0
	adds r1, #0x90
	str r0, [r1]
_08E5B016:
	add sp, #0xdc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5B028: .4byte gUnk_020183E8
_08E5B02C: .4byte gUnk_030070B8
_08E5B030: .4byte 0x00196225
_08E5B034: .4byte 0x3C6EF35F
_08E5B038: .4byte 0x05000011
_08E5B03C: .4byte 0x06010000
_08E5B040: .4byte gUnk_0200EF64
_08E5B044: .4byte gUnk_03000A68
_08E5B048: .4byte gUnk_0200F0E8
_08E5B04C: .4byte 0x0000FFEC
_08E5B050: .4byte 0x00001010
_08E5B054: .4byte 0x0000FFEF

	thumb_func_start sub_08E5B058
sub_08E5B058: @ 0x08E5B058
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

	thumb_func_start sub_08E5B090
sub_08E5B090: @ 0x08E5B090
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
	ldr r2, _08E5B3D4 @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5B3D8 @ =0x06010000
	str r0, [r7]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	ldr r0, _08E5B3DC @ =gUnk_0200F088
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #2]
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
	ldr r2, _08E5B3D4 @ =0x05000011
	bl sub_08E648E4
	ldr r1, _08E5B3D8 @ =0x06010000
	str r1, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r2, _08E5B3E0 @ =gUnk_0200EF64
	ldrh r1, [r2]
	subs r0, #8
	strh r1, [r0]
	ldrb r0, [r2, #2]
	adds r1, r7, #0
	adds r1, #0x5e
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
	bl sub_08E5DC84
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	adds r4, r7, #0
	adds r4, #0x88
	adds r1, r4, #0
	ldr r2, _08E5B3D4 @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5B3D8 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	ldr r0, _08E5B3E4 @ =gUnk_0200F0E8
	mov r8, r0
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
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
	ldr r2, _08E5B3D4 @ =0x05000011
	bl sub_08E648E4
	ldr r1, _08E5B3D8 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
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
	ldr r2, _08E5B3D4 @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5B3D8 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r1, r8
	ldrh r0, [r1, #0x28]
	strh r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x2a
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
	ldr r2, _08E5B3D4 @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5B3D8 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
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
	ldr r2, _08E5B3D4 @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5B3D8 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
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
_08E5B3D4: .4byte 0x05000011
_08E5B3D8: .4byte 0x06010000
_08E5B3DC: .4byte gUnk_0200F088
_08E5B3E0: .4byte gUnk_0200EF64
_08E5B3E4: .4byte gUnk_0200F0E8

	thumb_func_start sub_08E5B3E8
sub_08E5B3E8: @ 0x08E5B3E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0xcc
	bl sub_08E59364
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E59364
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E59364
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E59364
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E5B42C
sub_08E5B42C: @ 0x08E5B42C
	ldr r1, _08E5B448 @ =0x040000D4
	ldr r0, _08E5B44C @ =gUnk_0200F2E8
	str r0, [r1]
	ldr r0, _08E5B450 @ =gUnk_03003F80
	str r0, [r1, #4]
	ldr r0, _08E5B454 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08E5B458 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08E5B448: .4byte 0x040000D4
_08E5B44C: .4byte gUnk_0200F2E8
_08E5B450: .4byte gUnk_03003F80
_08E5B454: .4byte 0x80000100
_08E5B458: .4byte gUnk_03002C20

	thumb_func_start sub_08E5B45C
sub_08E5B45C: @ 0x08E5B45C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08E5B4BC @ =gUnk_030070B8
	movs r2, #0
	str r2, [r0]
	ldr r1, _08E5B4C0 @ =gUnk_03003E70
	movs r3, #0x9a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08E5B4C4 @ =gUnk_03003690
	ldr r0, _08E5B4C8 @ =0x00001C01
	strh r0, [r1]
	ldr r0, _08E5B4CC @ =0x00001D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _08E5B4D0 @ =gUnk_03002CC8
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _08E5B4D4 @ =gUnk_03003E60
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _08E5B4D8 @ =gUnk_02003CCD
	movs r1, #0xb0
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08E5B4DC @ =gUnk_02005145
	str r3, [sp]
	movs r3, #0
	bl sub_08E626B8
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _08E5B4E0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5B4E4
	.align 2, 0
_08E5B4BC: .4byte gUnk_030070B8
_08E5B4C0: .4byte gUnk_03003E70
_08E5B4C4: .4byte gUnk_03003690
_08E5B4C8: .4byte 0x00001C01
_08E5B4CC: .4byte 0x00001D01
_08E5B4D0: .4byte gUnk_03002CC8
_08E5B4D4: .4byte gUnk_03003E60
_08E5B4D8: .4byte gUnk_02003CCD
_08E5B4DC: .4byte gUnk_02005145
_08E5B4E0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5B4E4:
	adds r5, r1, r0
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08E5B540 @ =0x010002C0
	adds r1, r5, #0
	bl sub_08E648E4
	ldr r0, _08E5B544 @ =gUnk_03000A44
	ldrb r1, [r0]
	ldr r2, _08E5B548 @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08E5B54C @ =gUnk_02018488
	bl sub_08E5989C
	str r0, [r5, #0x10]
	ldr r0, _08E5B550 @ =gUnk_0201849C
	bl sub_08E59974
	str r0, [r5, #0x14]
	ldr r0, _08E5B554 @ =gUnk_020185A8
	bl sub_08E59974
	str r0, [r5, #0x18]
	ldr r0, _08E5B558 @ =gUnk_0201881C
	bl sub_08E59974
	str r0, [r5, #0x1c]
	movs r3, #0xa5
	lsls r3, r3, #3
	adds r0, r5, r3
	strb r4, [r0]
	ldr r1, _08E5B55C @ =0x00000529
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _08E5B560 @ =0x0000052A
	adds r0, r5, r2
	strb r4, [r0]
	bl sub_08E60454
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E5B540: .4byte 0x010002C0
_08E5B544: .4byte gUnk_03000A44
_08E5B548: .4byte 0x0000057C
_08E5B54C: .4byte gUnk_02018488
_08E5B550: .4byte gUnk_0201849C
_08E5B554: .4byte gUnk_020185A8
_08E5B558: .4byte gUnk_0201881C
_08E5B55C: .4byte 0x00000529
_08E5B560: .4byte 0x0000052A

	thumb_func_start sub_08E5B564
sub_08E5B564: @ 0x08E5B564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x130
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E59578
	ldr r4, _08E5B5AC @ =gUnk_03003DB0
	ldr r2, [r4]
	ldrh r0, [r2, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldrh r3, [r2, #6]
	ldr r6, _08E5B5B0 @ =gUnk_020040F1
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
	beq _08E5B5B4
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #0x124]
	b _08E5B5BC
	.align 2, 0
_08E5B5AC: .4byte gUnk_03003DB0
_08E5B5B0: .4byte gUnk_020040F1
_08E5B5B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	str r3, [sp, #0x124]
_08E5B5BC:
	ldr r1, [sp, #0x124]
	str r1, [sp, #0x11c]
	ldr r0, [r4]
	str r6, [r0, #8]
	ldr r3, _08E5B930 @ =0x06010000
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
	bl sub_08E62F2C
	ldr r3, _08E5B930 @ =0x06010000
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
	bl sub_08E62F2C
	ldr r1, _08E5B930 @ =0x06010000
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
	bl sub_08E62F2C
	ldr r1, _08E5B930 @ =0x06010000
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
	bl sub_08E62F2C
	ldr r2, _08E5B930 @ =0x06010000
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
	bl sub_08E62F2C
	ldr r1, _08E5B930 @ =0x06010000
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
	bl sub_08E62F2C
	ldr r0, _08E5B930 @ =0x06010000
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
	bl sub_08E62F2C
	ldr r0, _08E5B934 @ =gUnk_020101E8
	ldr r1, _08E5B938 @ =0x0600E000
	ldr r4, _08E5B93C @ =0x04000200
	adds r2, r4, #0
	bl sub_08E648E4
	ldr r0, _08E5B940 @ =gUnk_0200F9E8
	ldr r1, _08E5B944 @ =0x0600E800
	adds r2, r4, #0
	bl sub_08E648E4
	ldr r0, _08E5B948 @ =gUnk_0200F4E8
	ldr r1, _08E5B94C @ =0x0600F000
	ldr r2, _08E5B950 @ =0x04000140
	bl sub_08E648E4
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
	ldr r1, _08E5B954 @ =0x000003D2
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r3, [sp, #0x11c]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _08E5B958 @ =0x0000057A
	adds r0, r3, r2
	mov r3, sl
	strh r3, [r0]
	ldr r0, [sp, #0x11c]
	ldr r1, _08E5B95C @ =0x0000052A
	adds r4, r0, r1
	ldrb r6, [r4]
	adds r7, r6, #0
	movs r2, #0
	strb r2, [r4]
	movs r3, #0xa5
	lsls r3, r3, #3
	adds r5, r0, r3
	ldrh r1, [r5]
	ldr r0, _08E5B960 @ =0x00000A05
	cmp r1, r0
	bne _08E5B7A4
	ldr r0, _08E5B964 @ =0x00000235
	bl sub_08E60320
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_08E5B7A4:
	movs r2, #1
	ands r6, r2
	cmp r6, #0
	beq _08E5B7B2
	ldrb r0, [r4]
	orrs r0, r2
	strb r0, [r4]
_08E5B7B2:
	movs r3, #2
	ands r7, r3
	cmp r7, #0
	beq _08E5B7C2
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_08E5B7C2:
	movs r0, #0
	strb r0, [r5]
	ldr r1, [sp, #0x124]
	ldr r2, _08E5B968 @ =0x00000529
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08E5B96C @ =gUnk_03000A68
	ldrb r1, [r0]
	ldr r0, [sp, #0x124]
	adds r2, #0x50
	adds r6, r0, r2
	strb r1, [r6]
	ldr r3, _08E5B970 @ =0x0000057D
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [sp, #0x124]
	adds r2, #5
	adds r0, r1, r2
	mov r3, sl
	strh r3, [r0]
	ldr r0, [sp, #0x124]
	bl sub_08E5CB20
	ldr r0, [sp, #0x124]
	adds r0, #0x20
	ldr r7, [sp, #0x124]
	adds r7, #8
	ldr r1, [sp, #0x124]
	ldr r2, _08E5B974 @ =0x0000052C
	adds r4, r1, r2
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08E5AC98
	ldr r3, [sp, #0x124]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08E5AC98
	ldr r2, [sp, #0x124]
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_08E5AC98
	ldr r1, [sp, #0x124]
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08E5AC98
	ldr r0, [sp, #0x124]
	bl sub_08E5CC14
	ldr r0, [sp, #0x124]
	bl sub_08E5DCEC
	ldr r0, _08E5B978 @ =0xFFFF0000
	ldr r3, [sp, #0x120]
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _08E5B97C @ =0xFF00FFFF
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
	ldr r2, _08E5B980 @ =0x05000011
	adds r1, r4, #0
	bl sub_08E648E4
	ldr r0, _08E5B930 @ =0x06010000
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
	ldr r0, _08E5B984 @ =0x00000574
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
	bl sub_08E60320
	add sp, #0x130
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5B930: .4byte 0x06010000
_08E5B934: .4byte gUnk_020101E8
_08E5B938: .4byte 0x0600E000
_08E5B93C: .4byte 0x04000200
_08E5B940: .4byte gUnk_0200F9E8
_08E5B944: .4byte 0x0600E800
_08E5B948: .4byte gUnk_0200F4E8
_08E5B94C: .4byte 0x0600F000
_08E5B950: .4byte 0x04000140
_08E5B954: .4byte 0x000003D2
_08E5B958: .4byte 0x0000057A
_08E5B95C: .4byte 0x0000052A
_08E5B960: .4byte 0x00000A05
_08E5B964: .4byte 0x00000235
_08E5B968: .4byte 0x00000529
_08E5B96C: .4byte gUnk_03000A68
_08E5B970: .4byte 0x0000057D
_08E5B974: .4byte 0x0000052C
_08E5B978: .4byte 0xFFFF0000
_08E5B97C: .4byte 0xFF00FFFF
_08E5B980: .4byte 0x05000011
_08E5B984: .4byte 0x00000574

	thumb_func_start sub_08E5B988
sub_08E5B988: @ 0x08E5B988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E5B9B0 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r4, _08E5B9B4 @ =gUnk_030070B8
	cmp r0, #0
	beq _08E5B9B8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5B9BC
	.align 2, 0
_08E5B9B0: .4byte gUnk_03003DB0
_08E5B9B4: .4byte gUnk_030070B8
_08E5B9B8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5B9BC:
	adds r0, r1, r0
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r0, [r4]
	ldr r2, _08E5BDA0 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08E5BDA4 @ =0x3C6EF35F
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
	bl sub_08E5DA70
	strb r0, [r4]
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	ldr r2, _08E5BDA8 @ =0x000001BF
	adds r1, r7, r2
	strb r0, [r1]
	movs r5, #0x86
	lsls r5, r5, #1
	adds r5, r5, r7
	mov r8, r5
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	strb r0, [r4]
	ldr r0, _08E5BDAC @ =0x000002AA
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _08E5BDB0 @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r6, r7, r5
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	strb r0, [r4]
	ldr r0, _08E5BDB4 @ =0x00000396
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _08E5BDB8 @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	strb r0, [r4]
	mov r0, sb
	bl sub_08E5D004
	mov r0, r8
	bl sub_08E5D004
	adds r0, r6, #0
	bl sub_08E5D004
	adds r0, r5, #0
	bl sub_08E5D004
	mov r0, sb
	bl sub_08E5D0CC
	mov r0, r8
	bl sub_08E5D0CC
	adds r0, r6, #0
	bl sub_08E5D0CC
	adds r0, r5, #0
	bl sub_08E5D0CC
	mov r0, sb
	bl sub_08E5D0F4
	mov r0, r8
	bl sub_08E5D0F4
	adds r0, r6, #0
	bl sub_08E5D0F4
	adds r0, r5, #0
	bl sub_08E5D0F4
	mov r0, sb
	bl sub_08E5D134
	mov r0, r8
	bl sub_08E5D134
	adds r0, r6, #0
	bl sub_08E5D134
	adds r0, r5, #0
	bl sub_08E5D134
	mov r0, sb
	bl sub_08E5D36C
	mov r0, r8
	bl sub_08E5D36C
	adds r0, r6, #0
	bl sub_08E5D36C
	adds r0, r5, #0
	bl sub_08E5D36C
	ldr r2, _08E5BDBC @ =0x0000045C
	adds r1, r7, r2
	adds r2, #0xc8
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, sb
	bl sub_08E5D418
	mov r0, sb
	bl sub_08E5D710
	mov r0, r8
	bl sub_08E5D710
	adds r0, r6, #0
	bl sub_08E5D710
	adds r0, r5, #0
	bl sub_08E5D710
	mov r0, sb
	bl sub_08E5D8A8
	mov r0, r8
	bl sub_08E5D8A8
	adds r0, r6, #0
	bl sub_08E5D8A8
	adds r0, r5, #0
	bl sub_08E5D8A8
	adds r4, r7, #0
	adds r4, #8
	mov r0, sb
	adds r1, r4, #0
	bl sub_08E5D90C
	mov r0, r8
	adds r1, r4, #0
	bl sub_08E5D90C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08E5D90C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E5D90C
	ldr r5, _08E5BDC0 @ =0x00000579
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
	bne _08E5BC9C
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
	bgt _08E5BC0E
	ldr r1, _08E5BDC4 @ =0xFFFFFE80
	cmp r0, r1
	bge _08E5BC10
_08E5BC0E:
	str r1, [r7, #0xc]
_08E5BC10:
	movs r0, #0xae
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, _08E5BDC0 @ =0x00000579
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
	ldr r5, _08E5BDC8 @ =0x00000574
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
	ldr r2, _08E5BDCC @ =gUnk_03003E60
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
	ldr r0, _08E5BDD0 @ =gUnk_03000D70
	str r7, [r0]
	ldr r3, _08E5BDD4 @ =gUnk_03002C50
	ldr r2, _08E5BDD8 @ =gUnk_03006850
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08E5BDDC @ =gUnk_02006639
	str r1, [r0]
	ldr r2, _08E5BDE0 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
_08E5BC9C:
	adds r0, r7, #0
	bl sub_08E5DD60
	mov r0, sb
	bl sub_08E5D964
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08E5D964
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08E5D964
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r7, r2
	bl sub_08E5D964
	adds r0, r7, #0
	bl sub_08E5D9D4
	movs r5, #0xad
	lsls r5, r5, #3
	adds r0, r7, r5
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r0]
	cmp r1, r2
	ble _08E5BD8C
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _08E5BD8C
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, r2
	ble _08E5BD8C
	movs r5, #0xe9
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _08E5BD8C
	ldr r1, _08E5BDE4 @ =0x0000052A
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5BD44
	adds r3, r7, #0
	adds r3, #0x98
	ldrh r2, [r3]
	ldr r1, _08E5BDE8 @ =0x0000EFFF
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
_08E5BD44:
	adds r3, r7, #0
	adds r3, #0xb4
	ldrh r2, [r3]
	ldr r1, _08E5BDEC @ =0x0000FFEF
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
	bl sub_08E5F2F4
	ldr r0, _08E5BDF0 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5BDF4 @ =gUnk_02004561
	str r0, [r1, #8]
	movs r0, #0x1d
	bl sub_08E60320
_08E5BD8C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E5BD9C
sub_08E5BD9C: @ 0x08E5BD9C
	b _08E5BDF8
	.align 2, 0
_08E5BDA0: .4byte 0x00196225
_08E5BDA4: .4byte 0x3C6EF35F
_08E5BDA8: .4byte 0x000001BF
_08E5BDAC: .4byte 0x000002AA
_08E5BDB0: .4byte 0x000002AB
_08E5BDB4: .4byte 0x00000396
_08E5BDB8: .4byte 0x00000397
_08E5BDBC: .4byte 0x0000045C
_08E5BDC0: .4byte 0x00000579
_08E5BDC4: .4byte 0xFFFFFE80
_08E5BDC8: .4byte 0x00000574
_08E5BDCC: .4byte gUnk_03003E60
_08E5BDD0: .4byte gUnk_03000D70
_08E5BDD4: .4byte gUnk_03002C50
_08E5BDD8: .4byte gUnk_03006850
_08E5BDDC: .4byte gUnk_02006639
_08E5BDE0: .4byte gUnk_03002C20
_08E5BDE4: .4byte 0x0000052A
_08E5BDE8: .4byte 0x0000EFFF
_08E5BDEC: .4byte 0x0000FFEF
_08E5BDF0: .4byte gUnk_03003DB0
_08E5BDF4: .4byte gUnk_02004561
_08E5BDF8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08E5BE20 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r4, _08E5BE24 @ =gUnk_030070B8
	cmp r0, #0
	beq _08E5BE28
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5BE2C
	.align 2, 0
_08E5BE20: .4byte gUnk_03003DB0
_08E5BE24: .4byte gUnk_030070B8
_08E5BE28:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5BE2C:
	adds r0, r1, r0
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r0, [r4]
	ldr r2, _08E5C11C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08E5C120 @ =0x3C6EF35F
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
	ldr r4, _08E5C124 @ =0x00000524
	adds r1, r7, r4
	ldrb r1, [r1]
	bl sub_08E5CD04
	adds r0, r7, #0
	bl sub_08E5CA6C
	movs r5, #0x20
	adds r5, r5, r7
	mov sl, r5
	mov r0, sl
	bl sub_08E5CD74
	movs r0, #0x86
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	bl sub_08E5CD74
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r6, r7, r1
	adds r0, r6, #0
	bl sub_08E5CD74
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl sub_08E5CD74
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
	bl sub_08E5DA70
	strb r0, [r4]
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	ldr r2, _08E5C128 @ =0x000001BF
	adds r1, r7, r2
	strb r0, [r1]
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	strb r0, [r4]
	ldr r3, _08E5C12C @ =0x000002AA
	adds r4, r7, r3
	ldrb r1, [r4]
	ldr r2, _08E5C130 @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	strb r0, [r4]
	ldr r3, _08E5C134 @ =0x00000396
	adds r4, r7, r3
	ldrb r1, [r4]
	ldr r2, _08E5C138 @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	strb r0, [r4]
	mov r0, sl
	bl sub_08E5CE24
	mov r0, r8
	bl sub_08E5CE24
	adds r0, r6, #0
	bl sub_08E5CE24
	adds r0, r5, #0
	bl sub_08E5CE24
	mov r0, sl
	bl sub_08E5CF9C
	mov r0, r8
	bl sub_08E5CF9C
	adds r0, r6, #0
	bl sub_08E5CF9C
	adds r0, r5, #0
	bl sub_08E5CF9C
	mov r0, sl
	bl sub_08E5D004
	mov r0, r8
	bl sub_08E5D004
	adds r0, r6, #0
	bl sub_08E5D004
	adds r0, r5, #0
	bl sub_08E5D004
	mov r0, sl
	bl sub_08E5D0CC
	mov r0, r8
	bl sub_08E5D0CC
	adds r0, r6, #0
	bl sub_08E5D0CC
	adds r0, r5, #0
	bl sub_08E5D0CC
	mov r0, sl
	bl sub_08E5D0F4
	mov r0, r8
	bl sub_08E5D0F4
	adds r0, r6, #0
	bl sub_08E5D0F4
	adds r0, r5, #0
	bl sub_08E5D0F4
	ldr r3, _08E5C13C @ =0x0000056C
	adds r2, r7, r3
	ldr r4, [sp]
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E5C016
	adds r0, r7, #0
	adds r0, #0xc8
	mov r1, sb
	strh r1, [r0]
_08E5C016:
	ldr r3, [sp, #8]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E5C02A
	movs r4, #0xda
	lsls r4, r4, #1
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_08E5C02A:
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E5C03E
	movs r4, #0xa8
	lsls r4, r4, #2
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_08E5C03E:
	ldr r3, [sp, #0x10]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08E5C052
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_08E5C052:
	mov r0, sl
	bl sub_08E5D134
	mov r0, r8
	bl sub_08E5D134
	adds r0, r6, #0
	bl sub_08E5D134
	adds r0, r5, #0
	bl sub_08E5D134
	ldr r2, _08E5C140 @ =0x00000579
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
	beq _08E5C09C
	movs r3, #0x83
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _08E5C09C
	bl sub_08E5F464
	str r0, [r7]
	movs r0, #0x1f
	bl sub_08E60320
_08E5C09C:
	ldr r5, _08E5C144 @ =0x0000057A
	adds r4, r7, r5
	ldrh r1, [r4]
	mov r0, sl
	bl sub_08E5D348
	movs r0, #0x86
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldrh r1, [r4]
	bl sub_08E5D348
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r6, r7, r1
	ldrh r1, [r4]
	adds r0, r6, #0
	bl sub_08E5D348
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r5, r7, r2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_08E5D348
	mov r0, sl
	bl sub_08E5D36C
	mov r0, r8
	bl sub_08E5D36C
	adds r0, r6, #0
	bl sub_08E5D36C
	adds r0, r5, #0
	bl sub_08E5D36C
	ldr r3, _08E5C140 @ =0x00000579
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
	beq _08E5C14C
	ldr r5, _08E5C148 @ =0x0000045C
	adds r1, r7, r5
	ldr r2, _08E5C124 @ =0x00000524
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, sl
	bl sub_08E5D534
	b _08E5C15C
	.align 2, 0
_08E5C11C: .4byte 0x00196225
_08E5C120: .4byte 0x3C6EF35F
_08E5C124: .4byte 0x00000524
_08E5C128: .4byte 0x000001BF
_08E5C12C: .4byte 0x000002AA
_08E5C130: .4byte 0x000002AB
_08E5C134: .4byte 0x00000396
_08E5C138: .4byte 0x00000397
_08E5C13C: .4byte 0x0000056C
_08E5C140: .4byte 0x00000579
_08E5C144: .4byte 0x0000057A
_08E5C148: .4byte 0x0000045C
_08E5C14C:
	ldr r3, _08E5C2AC @ =0x0000045C
	adds r1, r7, r3
	ldr r4, _08E5C2B0 @ =0x00000524
	adds r0, r7, r4
	ldrb r2, [r0]
	mov r0, sl
	bl sub_08E5D418
_08E5C15C:
	ldr r0, _08E5C2AC @ =0x0000045C
	adds r5, r7, r0
	ldr r1, _08E5C2B0 @ =0x00000524
	adds r4, r7, r1
	ldrb r2, [r4]
	mov r0, sl
	adds r1, r5, #0
	bl sub_08E5D640
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	ldrb r2, [r4]
	mov r0, sb
	adds r1, r5, #0
	bl sub_08E5D640
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	ldrb r2, [r4]
	mov r0, r8
	adds r1, r5, #0
	bl sub_08E5D640
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08E5D640
	mov r0, sl
	bl sub_08E5D710
	mov r0, sb
	bl sub_08E5D710
	mov r0, r8
	bl sub_08E5D710
	adds r0, r6, #0
	bl sub_08E5D710
	mov r0, sl
	bl sub_08E5D838
	mov r0, sb
	bl sub_08E5D838
	mov r0, r8
	bl sub_08E5D838
	adds r0, r6, #0
	bl sub_08E5D838
	mov r0, sl
	bl sub_08E5D8A8
	mov r0, sb
	bl sub_08E5D8A8
	mov r0, r8
	bl sub_08E5D8A8
	adds r0, r6, #0
	bl sub_08E5D8A8
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl sub_08E5D90C
	mov r0, sb
	ldr r1, [sp, #0x18]
	bl sub_08E5D90C
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_08E5D90C
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	bl sub_08E5D90C
	ldr r1, _08E5C2B4 @ =0x00000579
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
	ldr r6, _08E5C2B8 @ =gUnk_03003E60
	ldr r1, _08E5C2BC @ =gUnk_03006850
	mov sb, r1
	cmp r0, #0
	bne _08E5C242
	b _08E5C3B4
_08E5C242:
	adds r0, r2, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5C27E
	ldr r2, _08E5C2C0 @ =0x0000057D
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08E5C268
	movs r0, #0
	strb r0, [r1]
_08E5C268:
	ldrb r0, [r1]
	muls r0, r5, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08E5C2F4
	ldr r0, _08E5C2C4 @ =0xFFFFFE80
	str r0, [r7, #0xc]
_08E5C27E:
	ldr r3, _08E5C2C0 @ =0x0000057D
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
	beq _08E5C2F4
	ldr r4, _08E5C2C8 @ =0x0000057C
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E5C2DC
	cmp r0, #1
	bgt _08E5C2CC
	cmp r0, #0
	beq _08E5C2D2
	b _08E5C32C
	.align 2, 0
_08E5C2AC: .4byte 0x0000045C
_08E5C2B0: .4byte 0x00000524
_08E5C2B4: .4byte 0x00000579
_08E5C2B8: .4byte gUnk_03003E60
_08E5C2BC: .4byte gUnk_03006850
_08E5C2C0: .4byte 0x0000057D
_08E5C2C4: .4byte 0xFFFFFE80
_08E5C2C8: .4byte 0x0000057C
_08E5C2CC:
	cmp r0, #2
	beq _08E5C2E8
	b _08E5C32C
_08E5C2D2:
	ldr r0, _08E5C2D8 @ =0xFFFF738B
	str r0, [r7, #8]
	b _08E5C32C
	.align 2, 0
_08E5C2D8: .4byte 0xFFFF738B
_08E5C2DC:
	ldr r0, _08E5C2E4 @ =0xFFFF4B90
	str r0, [r7, #8]
	b _08E5C32C
	.align 2, 0
_08E5C2E4: .4byte 0xFFFF4B90
_08E5C2E8:
	ldr r0, _08E5C2F0 @ =0xFFFF238C
	str r0, [r7, #8]
	b _08E5C32C
	.align 2, 0
_08E5C2F0: .4byte 0xFFFF238C
_08E5C2F4:
	ldr r5, _08E5C3A4 @ =0x0000057D
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
_08E5C32C:
	ldr r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08E5C33C
	ldr r1, _08E5C3A8 @ =0xFFFFFE80
	cmp r0, r1
	bge _08E5C33E
_08E5C33C:
	str r1, [r7, #0xc]
_08E5C33E:
	movs r4, #0xae
	lsls r4, r4, #3
	adds r4, r4, r7
	mov r8, r4
	ldr r5, _08E5C3A4 @ =0x0000057D
	adds r2, r7, r5
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _08E5C3AC @ =0x00000574
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
	beq _08E5C39E
	ldr r1, _08E5C3B0 @ =gUnk_020183E8
	ldr r0, [r1, #0x2c]
	mov r2, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r4]
	movs r0, #0x24
	strb r0, [r3]
_08E5C39E:
	ldrb r1, [r3]
	b _08E5C42C
	.align 2, 0
_08E5C3A4: .4byte 0x0000057D
_08E5C3A8: .4byte 0xFFFFFE80
_08E5C3AC: .4byte 0x00000574
_08E5C3B0: .4byte gUnk_020183E8
_08E5C3B4:
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
	bgt _08E5C3F0
	ldr r1, _08E5C58C @ =0xFFFFFE80
	cmp r0, r1
	bge _08E5C3F2
_08E5C3F0:
	str r1, [r7, #0xc]
_08E5C3F2:
	movs r0, #0xae
	lsls r0, r0, #3
	adds r3, r7, r0
	ldr r1, _08E5C590 @ =0x00000579
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r3]
	ldr r4, _08E5C594 @ =0x00000574
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
_08E5C42C:
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
	ldr r3, _08E5C598 @ =gUnk_03000D70
	str r7, [r3]
	mov r4, sb
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r5, _08E5C59C @ =gUnk_03002C50
	adds r0, r0, r5
	ldr r1, _08E5C5A0 @ =gUnk_02006639
	str r1, [r0]
	ldr r2, _08E5C5A4 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	adds r0, r7, #0
	bl sub_08E5DAE4
	mov r0, sl
	bl sub_08E5D99C
	movs r3, #0x86
	lsls r3, r3, #1
	adds r6, r7, r3
	adds r0, r6, #0
	bl sub_08E5D99C
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r5, r7, r4
	adds r0, r5, #0
	bl sub_08E5D99C
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_08E5D99C
	adds r0, r7, #0
	bl sub_08E5DD60
	mov r0, sl
	bl sub_08E5D964
	adds r0, r6, #0
	bl sub_08E5D964
	adds r0, r5, #0
	bl sub_08E5D964
	adds r0, r4, #0
	bl sub_08E5D964
	adds r0, r7, #0
	bl sub_08E5D9D4
	ldr r1, _08E5C5A8 @ =0x0000056C
	adds r0, r7, r1
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	ldr r2, [r0]
	cmp r1, r2
	ble _08E5C572
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, r2
	ble _08E5C572
	movs r4, #0xae
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, r2
	ble _08E5C572
	movs r5, #0xe9
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _08E5C572
	ldr r0, [r7]
	bl sub_08E627D4
	movs r0, #0
	mov sl, r0
	str r0, [r7]
	ldr r1, _08E5C590 @ =0x00000579
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
	bl sub_08E627D4
	mov r3, sb
	ldrb r0, [r3]
	muls r0, r6, r0
	adds r5, r7, #0
	adds r5, #0xac
	adds r0, r5, r0
	ldr r0, [r0]
	bl sub_08E627D4
	mov r4, sb
	ldrb r0, [r4]
	muls r0, r6, r0
	adds r4, r7, #0
	adds r4, #0xb0
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_08E627D4
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
	bl sub_08E59578
	ldr r0, _08E5C5AC @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5C5B0 @ =gUnk_02004D21
	str r0, [r1, #8]
	bl sub_08E60454
_08E5C572:
	ldr r4, _08E5C5B4 @ =0x0000057A
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
_08E5C58C: .4byte 0xFFFFFE80
_08E5C590: .4byte 0x00000579
_08E5C594: .4byte 0x00000574
_08E5C598: .4byte gUnk_03000D70
_08E5C59C: .4byte gUnk_03002C50
_08E5C5A0: .4byte gUnk_02006639
_08E5C5A4: .4byte gUnk_03002C20
_08E5C5A8: .4byte 0x0000056C
_08E5C5AC: .4byte gUnk_03003DB0
_08E5C5B0: .4byte gUnk_02004D21
_08E5C5B4: .4byte 0x0000057A

	thumb_func_start sub_08E5C5B8
sub_08E5C5B8: @ 0x08E5C5B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08E5C5D8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5C5DC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5C5E0
	.align 2, 0
_08E5C5D8: .4byte gUnk_03003DB0
_08E5C5DC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5C5E0:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_08E59878
	adds r6, r0, #0
	cmp r6, #0
	beq _08E5C5F0
	b _08E5C74E
_08E5C5F0:
	ldr r1, _08E5C6E8 @ =gUnk_03003E60
	movs r4, #0
	strh r6, [r1, #4]
	movs r0, #0x50
	strh r0, [r1, #6]
	subs r0, #0x60
	movs r1, #1
	bl sub_08E59578
	ldr r0, _08E5C6EC @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5C6F0 @ =gUnk_02004EC5
	str r0, [r1, #8]
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r0, _08E5C6F4 @ =gUnk_020183E8
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
	ldr r1, _08E5C6F8 @ =0x00000579
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r4]
	ldr r4, _08E5C6FC @ =0x00000574
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
	ldr r0, _08E5C700 @ =gUnk_03000D70
	str r7, [r0]
	ldr r3, _08E5C704 @ =gUnk_03002C50
	ldr r2, _08E5C708 @ =gUnk_03006850
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08E5C70C @ =gUnk_02006639
	str r1, [r0]
	ldr r1, _08E5C710 @ =gUnk_03002C20
	ldr r0, [r1]
	movs r4, #0x10
	orrs r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl sub_08E5DB70
	ldr r0, _08E5C714 @ =gUnk_020066F5
	movs r1, #0x84
	lsls r1, r1, #4
	str r6, [sp]
	mov r2, r8
	movs r3, #0
	bl sub_08E626B8
	str r0, [r7]
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _08E5C718
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5C71C
	.align 2, 0
_08E5C6E8: .4byte gUnk_03003E60
_08E5C6EC: .4byte gUnk_03003DB0
_08E5C6F0: .4byte gUnk_02004EC5
_08E5C6F4: .4byte gUnk_020183E8
_08E5C6F8: .4byte 0x00000579
_08E5C6FC: .4byte 0x00000574
_08E5C700: .4byte gUnk_03000D70
_08E5C704: .4byte gUnk_03002C50
_08E5C708: .4byte gUnk_03006850
_08E5C70C: .4byte gUnk_02006639
_08E5C710: .4byte gUnk_03002C20
_08E5C714: .4byte gUnk_020066F5
_08E5C718:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5C71C:
	adds r1, r1, r0
	str r7, [r1]
	ldr r1, _08E5C740 @ =0x00000579
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	ldr r2, _08E5C744 @ =0x00000105
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E5C748
	movs r0, #0x21
	bl sub_08E60320
	b _08E5C74E
	.align 2, 0
_08E5C740: .4byte 0x00000579
_08E5C744: .4byte 0x00000105
_08E5C748:
	movs r0, #0x20
	bl sub_08E60320
_08E5C74E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5C75C
sub_08E5C75C: @ 0x08E5C75C
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08E5C778 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5C77C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5C780
	.align 2, 0
_08E5C778: .4byte gUnk_03003DB0
_08E5C77C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5C780:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08E59878
	cmp r0, #0
	bne _08E5C876
	ldr r3, [r5, #4]
	cmp r3, #0
	bne _08E5C810
	ldr r0, _08E5C7B8 @ =gUnk_03000AB0
	ldrh r2, [r0, #0x10]
	adds r4, r2, #0
	ldrh r1, [r0, #8]
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08E5C7DA
	ldr r0, _08E5C7BC @ =gUnk_03000A68
	ldrb r0, [r0]
	ldr r1, _08E5C7C0 @ =gUnk_0200EED4
	cmp r0, #0
	beq _08E5C7C4
	movs r0, #0x50
	str r0, [sp]
	str r6, [sp, #4]
	b _08E5C7CA
	.align 2, 0
_08E5C7B8: .4byte gUnk_03000AB0
_08E5C7BC: .4byte gUnk_03000A68
_08E5C7C0: .4byte gUnk_0200EED4
_08E5C7C4:
	movs r0, #0x50
	str r0, [sp]
	str r3, [sp, #4]
_08E5C7CA:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08E59A74
	str r0, [r5, #4]
	b _08E5C876
_08E5C7DA:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08E5C876
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08E5C7F4
	movs r0, #0xa5
	lsls r0, r0, #3
	adds r1, r5, r0
	b _08E5C802
_08E5C7F4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08E5C876
	ldr r2, _08E5C80C @ =0x00000529
	adds r1, r5, r2
_08E5C802:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08E5C876
	.align 2, 0
_08E5C80C: .4byte 0x00000529
_08E5C810:
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	cmp r0, #0
	beq _08E5C824
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5C828
_08E5C824:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5C828:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E5AC7C
	cmp r0, #0
	beq _08E5C876
	movs r0, #0x10
	movs r1, #1
	bl sub_08E59578
	ldr r1, _08E5C860 @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08E5C864 @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _08E5C868 @ =gUnk_03003DB0
	cmp r0, #0
	beq _08E5C870
	ldr r1, [r1]
	ldr r0, _08E5C86C @ =gUnk_02004FED
	b _08E5C874
	.align 2, 0
_08E5C860: .4byte 0x000002AD
_08E5C864: .4byte 0x0000057C
_08E5C868: .4byte gUnk_03003DB0
_08E5C86C: .4byte gUnk_02004FED
_08E5C870:
	ldr r1, [r1]
	ldr r0, _08E5C880 @ =gUnk_02005049
_08E5C874:
	str r0, [r1, #8]
_08E5C876:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E5C880: .4byte gUnk_02005049

	thumb_func_start sub_08E5C884
sub_08E5C884: @ 0x08E5C884
	push {r4, r5, lr}
	ldr r0, _08E5C8A0 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5C8A4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5C8A8
	.align 2, 0
_08E5C8A0: .4byte gUnk_03003DB0
_08E5C8A4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5C8A8:
	adds r4, r1, r0
	bl sub_08E59878
	adds r5, r0, #0
	cmp r5, #0
	bne _08E5C8D0
	bl sub_08E60454
	ldr r0, _08E5C8D8 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5C8DC @ =gUnk_02003CCD
	str r0, [r1, #8]
	ldr r0, [r4]
	bl sub_08E627D4
	str r5, [r4]
	ldr r0, [r4, #4]
	bl sub_08E627D4
	str r5, [r4, #4]
_08E5C8D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E5C8D8: .4byte gUnk_03003DB0
_08E5C8DC: .4byte gUnk_02003CCD

	thumb_func_start sub_08E5C8E0
sub_08E5C8E0: @ 0x08E5C8E0
	push {r4, r5, lr}
	ldr r0, _08E5C8FC @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5C900
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5C904
	.align 2, 0
_08E5C8FC: .4byte gUnk_03003DB0
_08E5C900:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5C904:
	adds r4, r1, r0
	bl sub_08E59878
	adds r5, r0, #0
	cmp r5, #0
	bne _08E5C960
	ldr r0, [r4]
	bl sub_08E627D4
	str r5, [r4]
	ldr r0, [r4, #4]
	bl sub_08E627D4
	str r5, [r4, #4]
	ldr r0, _08E5C968 @ =gUnk_03000A40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5C936
	ldr r2, _08E5C96C @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	ldr r0, _08E5C970 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_08E5C936:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E59578
	ldr r2, _08E5C96C @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	ldr r0, _08E5C970 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	ldr r2, _08E5C974 @ =gUnk_03003E70
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08E5C978 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _08E5C97C @ =gUnk_020050E9
	str r0, [r1, #8]
_08E5C960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E5C968: .4byte gUnk_03000A40
_08E5C96C: .4byte gUnk_03000AB0
_08E5C970: .4byte 0x0000FFFD
_08E5C974: .4byte gUnk_03003E70
_08E5C978: .4byte gUnk_03003DB0
_08E5C97C: .4byte gUnk_020050E9

	thumb_func_start sub_08E5C980
sub_08E5C980: @ 0x08E5C980
	push {lr}
	bl sub_08E59878
	cmp r0, #0
	bne _08E5C98E
	bl sub_08E57C04
_08E5C98E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5C994
sub_08E5C994: @ 0x08E5C994
	push {lr}
	ldr r3, _08E5C9B0 @ =gUnk_03003DB0
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5C9B4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5C9B8
	.align 2, 0
_08E5C9B0: .4byte gUnk_03003DB0
_08E5C9B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5C9B8:
	adds r0, r1, r0
	ldr r1, _08E5C9D8 @ =0x0000057E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _08E5C9D2
	ldr r0, [r3]
	bl sub_08E627D4
_08E5C9D2:
	pop {r0}
	bx r0
	.align 2, 0
_08E5C9D8: .4byte 0x0000057E

	thumb_func_start sub_08E5C9DC
sub_08E5C9DC: @ 0x08E5C9DC
	push {r4, r5, lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5C9F4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _08E5C9FA
_08E5C9F4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
_08E5C9FA:
	ldr r0, [r5, #0x10]
	bl sub_08E627D4
	movs r4, #0
	str r4, [r5, #0x10]
	ldr r0, [r5, #0x14]
	bl sub_08E627D4
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl sub_08E627D4
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl sub_08E627D4
	str r4, [r5, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5CA24
sub_08E5CA24: @ 0x08E5CA24
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	movs r5, #0
	ldr r4, _08E5CA5C @ =gUnk_030070B8
	ldr r3, [r4]
	ldr r2, _08E5CA60 @ =0x00196225
	muls r2, r3, r2
	ldr r3, _08E5CA64 @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r4]
	lsrs r2, r2, #0x10
	movs r3, #0xf
	ands r2, r3
	ldr r3, _08E5CA68 @ =gUnk_0200F250
	adds r0, #0xb2
	lsrs r1, r1, #0x14
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	cmp r2, r1
	bhs _08E5CA52
	movs r5, #1
_08E5CA52:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08E5CA5C: .4byte gUnk_030070B8
_08E5CA60: .4byte 0x00196225
_08E5CA64: .4byte 0x3C6EF35F
_08E5CA68: .4byte gUnk_0200F250

	thumb_func_start sub_08E5CA6C
sub_08E5CA6C: @ 0x08E5CA6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r3, #0
_08E5CA7C:
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
	beq _08E5CAD8
	ldrh r0, [r6]
	movs r3, #0
	mov sl, r3
	strh r0, [r5]
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r4, r0
	ldr r2, _08E5CAD4 @ =0x0000057C
	adds r1, r4, r2
	ldrb r1, [r1]
	bl sub_08E5CA24
	strh r0, [r6]
	ldrh r1, [r5]
	eors r1, r0
	ands r1, r0
	mov r3, r8
	strh r1, [r3]
	mov r1, sl
	mov r0, sb
	strh r1, [r0]
	b _08E5CB02
	.align 2, 0
_08E5CAD4: .4byte 0x0000057C
_08E5CAD8:
	ldrh r0, [r6]
	strh r0, [r5]
	ldr r2, _08E5CB1C @ =gUnk_03000AB0
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
_08E5CB02:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08E5CA7C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5CB1C: .4byte gUnk_03000AB0

	thumb_func_start sub_08E5CB20
sub_08E5CB20: @ 0x08E5CB20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08E5CB50 @ =0x0000052C
	adds r1, r6, r0
	ldr r2, _08E5CB54 @ =0x0500000F
	mov r0, sp
	bl sub_08E648E4
	movs r7, #0xa
	ldr r1, _08E5CB58 @ =0x0000057C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E5CB66
	cmp r0, #1
	bgt _08E5CB5C
	cmp r0, #0
	beq _08E5CB62
	b _08E5CB6C
	.align 2, 0
_08E5CB50: .4byte 0x0000052C
_08E5CB54: .4byte 0x0500000F
_08E5CB58: .4byte 0x0000057C
_08E5CB5C:
	cmp r0, #2
	beq _08E5CB6A
	b _08E5CB6C
_08E5CB62:
	movs r7, #0x24
	b _08E5CB6C
_08E5CB66:
	movs r7, #0x2e
	b _08E5CB6C
_08E5CB6A:
	movs r7, #0x38
_08E5CB6C:
	movs r0, #9
	mov r8, r0
	movs r5, #0
	cmp r5, r7
	bhs _08E5CB9E
_08E5CB76:
	ldr r2, _08E5CBFC @ =gUnk_030070B8
	ldr r1, [r2]
	ldr r0, _08E5CC00 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E5CC04 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ldr r1, _08E5CC08 @ =0x0000052C
	adds r4, r6, r1
	adds r4, r4, r5
	mov r1, r8
	bl sub_08E64A4C
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08E5CB76
_08E5CB9E:
	movs r5, #0
	cmp r5, r7
	bhs _08E5CBB8
_08E5CBA4:
	ldr r1, _08E5CC08 @ =0x0000052C
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #9
	strb r1, [r0]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08E5CBA4
_08E5CBB8:
	ldr r0, _08E5CC08 @ =0x0000052C
	adds r2, r6, r0
	movs r3, #0
	movs r0, #0xa
	strb r0, [r2]
	ldr r1, _08E5CC0C @ =0x0000052D
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
	ldr r0, _08E5CC10 @ =0x0000056C
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
_08E5CBFC: .4byte gUnk_030070B8
_08E5CC00: .4byte 0x00196225
_08E5CC04: .4byte 0x3C6EF35F
_08E5CC08: .4byte 0x0000052C
_08E5CC0C: .4byte 0x0000052D
_08E5CC10: .4byte 0x0000056C

	thumb_func_start sub_08E5CC14
sub_08E5CC14: @ 0x08E5CC14
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
	ldr r1, _08E5CC3C @ =0x0000057C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E5CC4A
	cmp r0, #1
	bgt _08E5CC40
	cmp r0, #0
	beq _08E5CC46
	b _08E5CC54
	.align 2, 0
_08E5CC3C: .4byte 0x0000057C
_08E5CC40:
	cmp r0, #2
	beq _08E5CC50
	b _08E5CC54
_08E5CC46:
	movs r0, #0x24
	b _08E5CC52
_08E5CC4A:
	movs r1, #0x2e
	mov r8, r1
	b _08E5CC54
_08E5CC50:
	movs r0, #0x38
_08E5CC52:
	mov r8, r0
_08E5CC54:
	ldr r0, _08E5CCEC @ =0x00000524
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	cmp r6, r8
	bhs _08E5CCC2
_08E5CC62:
	ldr r1, _08E5CCF0 @ =0x0000052C
	adds r0, r4, r1
	adds r0, r0, r6
	ldrb r1, [r0]
	ldr r0, _08E5CCF4 @ =gUnk_02018450
	adds r0, r1, r0
	ldrb r7, [r0]
	ldr r0, _08E5CCF8 @ =gUnk_0201845D
	adds r1, r1, r0
	ldrb r1, [r1]
	mov sb, r1
	movs r5, #0
	cmp r5, r7
	bhs _08E5CCB8
_08E5CC7E:
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E5CCFC @ =0x0000045C
	adds r0, r0, r1
	adds r0, r4, r0
	mov r1, sb
	adds r2, r1, r5
	lsls r2, r2, #2
	ldr r1, _08E5CD00 @ =gUnk_0201846C
	adds r2, r2, r1
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	bl sub_08E5B058
	mov r0, sl
	cmp r0, #9
	bhi _08E5CCC2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08E5CC7E
_08E5CCB8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r8
	blo _08E5CC62
_08E5CCC2:
	ldr r1, _08E5CCEC @ =0x00000524
	adds r2, r4, r1
	movs r0, #0
	strb r0, [r2]
	adds r1, #6
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5CCDC
	mov r0, sl
	strb r0, [r2]
_08E5CCDC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5CCEC: .4byte 0x00000524
_08E5CCF0: .4byte 0x0000052C
_08E5CCF4: .4byte gUnk_02018450
_08E5CCF8: .4byte gUnk_0201845D
_08E5CCFC: .4byte 0x0000045C
_08E5CD00: .4byte gUnk_0201846C

	thumb_func_start sub_08E5CD04
sub_08E5CD04: @ 0x08E5CD04
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r3, #0
	cmp r3, r7
	bhs _08E5CD6E
_08E5CD12:
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
	beq _08E5CD4C
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _08E5CD38
	rsbs r1, r1, #0
_08E5CD38:
	subs r1, r5, r1
	str r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	bge _08E5CD66
	ldr r0, _08E5CD48 @ =0x0000FEFF
	ands r0, r4
	b _08E5CD64
	.align 2, 0
_08E5CD48: .4byte 0x0000FEFF
_08E5CD4C:
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _08E5CD56
	rsbs r1, r1, #0
_08E5CD56:
	adds r1, r5, r1
	str r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	ble _08E5CD66
	adds r0, r6, #0
	orrs r0, r4
_08E5CD64:
	strh r0, [r2, #0x12]
_08E5CD66:
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r7
	blo _08E5CD12
_08E5CD6E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E5CD74
sub_08E5CD74: @ 0x08E5CD74
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
	beq _08E5CD94
	ldr r0, _08E5CE1C @ =0x0000FFDF
	ands r1, r0
	strh r1, [r3]
_08E5CD94:
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r4, #0x20
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08E5CDAC
	ldrh r1, [r3]
	ldr r0, _08E5CE1C @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
_08E5CDAC:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08E5CE16
	adds r0, r2, #0
	adds r0, #0x98
	ldrh r1, [r0]
	movs r6, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5CE16
	adds r1, r2, #0
	adds r1, #0xe4
	ldrb r0, [r1]
	cmp r0, #1
	bhi _08E5CE16
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
	bne _08E5CE16
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
	beq _08E5CE16
	ldr r0, _08E5CE20 @ =0x0000022D
	bl sub_08E60320
_08E5CE16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5CE1C: .4byte 0x0000FFDF
_08E5CE20: .4byte 0x0000022D

	thumb_func_start sub_08E5CE24
sub_08E5CE24: @ 0x08E5CE24
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
	bne _08E5CE50
	ldrh r1, [r2]
	ldr r0, _08E5CE4C @ =0x0000EFFF
	ands r0, r1
	b _08E5CE60
	.align 2, 0
_08E5CE4C: .4byte 0x0000EFFF
_08E5CE50:
	subs r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
_08E5CE60:
	strh r0, [r2]
	adds r6, r4, #0
	adds r6, #0xa4
	ldrh r2, [r6]
	movs r7, #2
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _08E5CE74
	b _08E5CF8A
_08E5CE74:
	ldr r1, _08E5CECC @ =0x0000FFFD
	ands r1, r2
	strh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08E5CE86
	b _08E5CF8A
_08E5CE86:
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08E5CE94
	cmp r0, #0xb
	bne _08E5CED0
_08E5CE94:
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
	bl sub_08E5ED80
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E5CF78
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	b _08E5CF5E
	.align 2, 0
_08E5CECC: .4byte 0x0000FFFD
_08E5CED0:
	cmp r0, #9
	beq _08E5CED8
	cmp r0, #0xc
	bne _08E5CF10
_08E5CED8:
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
	bl sub_08E5ED80
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E5CF78
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	b _08E5CF5E
_08E5CF10:
	cmp r0, #0xa
	beq _08E5CF18
	cmp r0, #0xd
	bne _08E5CF8A
_08E5CF18:
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
	bl sub_08E5ED80
	ldr r0, _08E5CF94 @ =gUnk_0200EF64
	ldrh r1, [r0, #0x20]
	strh r1, [r4, #0xc]
	adds r0, #0x22
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
	beq _08E5CF78
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #2
_08E5CF5E:
	bl sub_08E5EF04
	adds r0, r4, #0
	bl sub_08E5E2A4
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E5CF78
	ldr r0, _08E5CF98 @ =0x00000232
	bl sub_08E60320
_08E5CF78:
	ldrh r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r6]
	movs r0, #0xa
	mov r3, r8
	strb r0, [r3]
_08E5CF8A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5CF94: .4byte gUnk_0200EF64
_08E5CF98: .4byte 0x00000232

	thumb_func_start sub_08E5CF9C
sub_08E5CF9C: @ 0x08E5CF9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xa4
	ldrh r3, [r6]
	movs r2, #1
	ands r2, r3
	cmp r2, #0
	bne _08E5CFFA
	ldr r5, _08E5D000 @ =gUnk_0200F1F0
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
	bls _08E5CFFA
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
	bl sub_08E5DA70
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
_08E5CFFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E5D000: .4byte gUnk_0200F1F0

	thumb_func_start sub_08E5D004
sub_08E5D004: @ 0x08E5D004
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
	beq _08E5D094
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
	bge _08E5D078
	ldr r0, _08E5D070 @ =0x0000FFFE
	ands r0, r6
	movs r2, #0
	ldr r1, _08E5D074 @ =0x0000FFEF
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
	b _08E5D0C0
	.align 2, 0
_08E5D070: .4byte 0x0000FFFE
_08E5D074: .4byte 0x0000FFEF
_08E5D078:
	adds r1, r3, #0
	adds r1, #0xaa
	cmp r0, #0x1f
	ble _08E5D088
	ldr r0, _08E5D084 @ =0x0000FFE0
	b _08E5D08A
	.align 2, 0
_08E5D084: .4byte 0x0000FFE0
_08E5D088:
	rsbs r0, r0, #0
_08E5D08A:
	strh r0, [r1]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _08E5D0C0
_08E5D094:
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
	ble _08E5D0B8
	movs r0, #0x10
	strh r0, [r1]
	b _08E5D0C0
_08E5D0B8:
	strh r2, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08E5D0C0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5D0CC
sub_08E5D0CC: @ 0x08E5D0CC
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

	thumb_func_start sub_08E5D0F4
sub_08E5D0F4: @ 0x08E5D0F4
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa8
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _08E5D130 @ =0x000002FF
	cmp r1, r0
	bgt _08E5D10A
	adds r0, r3, #4
	strh r0, [r2]
_08E5D10A:
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _08E5D11C
	subs r0, r3, #3
	strh r0, [r2]
_08E5D11C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _08E5D12A
	strh r1, [r2]
_08E5D12A:
	pop {r0}
	bx r0
	.align 2, 0
_08E5D130: .4byte 0x000002FF

	thumb_func_start sub_08E5D134
sub_08E5D134: @ 0x08E5D134
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xb0
	ldrh r0, [r4]
	ldr r1, _08E5D2BC @ =0x0000FFE0
	ands r1, r0
	strh r1, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E5D188
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08E5D178
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08E5D180
_08E5D178:
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
_08E5D180:
	ldrh r1, [r4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4]
_08E5D188:
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E5D1A8
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08E5D1A8:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E5D1F4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08E5D1DC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08E5D1E8
_08E5D1DC:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
_08E5D1E8:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
_08E5D1F4:
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	adds r6, r5, #0
	adds r6, #0x94
	cmp r0, #0
	beq _08E5D214
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
_08E5D214:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08E5D320
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08E5D248
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08E5D254
_08E5D248:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
_08E5D254:
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
	beq _08E5D2CA
	subs r2, #0xc
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E5D2C8
	ldr r0, _08E5D2C0 @ =0x0000FFBF
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
	bgt _08E5D2CA
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
	beq _08E5D340
	ldr r0, _08E5D2C4 @ =0x0000022E
	bl sub_08E60320
	b _08E5D2CA
	.align 2, 0
_08E5D2BC: .4byte 0x0000FFE0
_08E5D2C0: .4byte 0x0000FFBF
_08E5D2C4: .4byte 0x0000022E
_08E5D2C8:
	str r0, [r3]
_08E5D2CA:
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5D340
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x90
	cmp r0, #1
	bne _08E5D310
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #1
	bne _08E5D308
	ldr r0, [r4]
	bl sub_08E5E598
	ldr r0, [r4]
	movs r1, #1
	bl sub_08E5E5F8
	b _08E5D340
_08E5D308:
	ldr r0, [r4]
	bl sub_08E5E5C8
	b _08E5D340
_08E5D310:
	ldr r0, [r4]
	bl sub_08E5E598
	ldr r0, [r4]
	movs r1, #0
	bl sub_08E5E5F8
	b _08E5D340
_08E5D320:
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
	beq _08E5D340
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_08E5E5C8
_08E5D340:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5D348
sub_08E5D348: @ 0x08E5D348
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E5D368
	adds r1, r2, #0
	adds r1, #0xe6
	ldrh r0, [r1]
	cmp r0, #0
	bne _08E5D368
	strh r3, [r1]
_08E5D368:
	pop {r0}
	bx r0

	thumb_func_start sub_08E5D36C
sub_08E5D36C: @ 0x08E5D36C
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
	bne _08E5D3A6
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08E5D402
	b _08E5D3A6
_08E5D39A:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08E5D3A6
	movs r1, #0
_08E5D3A6:
	ldr r0, _08E5D410 @ =gUnk_0200F200
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
	bl sub_08E5DA9C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E5D39A
	mov r1, r8
	str r5, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08E5DA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r2, [r0]
	ldr r3, _08E5D414 @ =gUnk_0200F210
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
_08E5D402:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5D410: .4byte gUnk_0200F200
_08E5D414: .4byte gUnk_0200F210

	thumb_func_start sub_08E5D418
sub_08E5D418: @ 0x08E5D418
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
	b _08E5D516
_08E5D432:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #2
	ldr r4, [sp]
	adds r2, r0, r4
	ldrh r0, [r2, #0x12]
	ldr r6, _08E5D52C @ =0x0000FF0E
	ands r6, r0
	strh r6, [r2, #0x12]
	movs r1, #0
	mov r0, ip
	adds r0, #0xc0
	ldr r3, [r0]
	ldr r5, _08E5D530 @ =0xFFFFFF00
	mov r8, r5
	adds r0, r3, r5
	ldr r4, [r2]
	cmp r0, r4
	bgt _08E5D45C
	movs r1, #1
_08E5D45C:
	movs r5, #0
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r3, r7
	cmp r4, r0
	bgt _08E5D46A
	movs r5, #1
_08E5D46A:
	ands r1, r5
	cmp r1, #0
	beq _08E5D47C
	movs r0, #1
	adds r1, r6, #0
	orrs r1, r0
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r2, #0x12]
_08E5D47C:
	movs r3, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _08E5D490
	movs r3, #1
_08E5D490:
	movs r5, #0
	adds r0, r1, r7
	cmp r4, r0
	bgt _08E5D49A
	movs r5, #1
_08E5D49A:
	ands r3, r5
	cmp r3, #0
	beq _08E5D4AC
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x12]
_08E5D4AC:
	movs r3, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _08E5D4C0
	movs r3, #1
_08E5D4C0:
	movs r5, #0
	adds r0, r1, r7
	cmp r4, r0
	bgt _08E5D4CA
	movs r5, #1
_08E5D4CA:
	ands r3, r5
	cmp r3, #0
	beq _08E5D4DC
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2, #0x12]
_08E5D4DC:
	movs r3, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _08E5D4F0
	movs r3, #1
_08E5D4F0:
	movs r4, #0
	adds r1, r1, r7
	ldr r0, [r2]
	cmp r0, r1
	bgt _08E5D4FC
	movs r4, #1
_08E5D4FC:
	ands r3, r4
	cmp r3, #0
	beq _08E5D50E
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r1, r0
	movs r0, #0x80
	orrs r1, r0
	strh r1, [r2, #0x12]
_08E5D50E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08E5D516:
	mov sb, r0
	cmp sb, sl
	blo _08E5D432
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5D52C: .4byte 0x0000FF0E
_08E5D530: .4byte 0xFFFFFF00

	thumb_func_start sub_08E5D534
sub_08E5D534: @ 0x08E5D534
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
	b _08E5D622
_08E5D54E:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #2
	ldr r2, [sp]
	adds r3, r0, r2
	ldrh r0, [r3, #0x12]
	ldr r6, _08E5D638 @ =0x0000FF0E
	ands r6, r0
	strh r6, [r3, #0x12]
	movs r4, #0
	mov r0, ip
	adds r0, #0xc0
	ldr r1, [r0]
	ldr r5, _08E5D63C @ =0xFFFFFF00
	mov r8, r5
	adds r0, r1, r5
	ldr r2, [r3]
	cmp r0, r2
	bgt _08E5D578
	movs r4, #1
_08E5D578:
	movs r5, #0
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r1, r7
	cmp r2, r0
	bgt _08E5D586
	movs r5, #1
_08E5D586:
	ands r4, r5
	cmp r4, #0
	beq _08E5D594
	movs r1, #0xf1
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E5D594:
	movs r4, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _08E5D5A8
	movs r4, #1
_08E5D5A8:
	movs r5, #0
	adds r0, r1, r7
	cmp r2, r0
	bgt _08E5D5B2
	movs r5, #1
_08E5D5B2:
	ands r4, r5
	cmp r4, #0
	beq _08E5D5C0
	ldrh r0, [r3, #0x12]
	movs r1, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E5D5C0:
	movs r4, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _08E5D5D4
	movs r4, #1
_08E5D5D4:
	movs r5, #0
	adds r0, r1, r7
	cmp r2, r0
	bgt _08E5D5DE
	movs r5, #1
_08E5D5DE:
	ands r4, r5
	cmp r4, #0
	beq _08E5D5EC
	ldrh r0, [r3, #0x12]
	movs r1, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E5D5EC:
	movs r4, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _08E5D600
	movs r4, #1
_08E5D600:
	movs r5, #0
	adds r1, r1, r7
	ldr r0, [r3]
	cmp r0, r1
	bgt _08E5D60C
	movs r5, #1
_08E5D60C:
	ands r4, r5
	cmp r4, #0
	beq _08E5D61A
	ldrh r1, [r3, #0x12]
	movs r0, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_08E5D61A:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08E5D622:
	mov sb, r0
	cmp sb, sl
	blo _08E5D54E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5D638: .4byte 0x0000FF0E
_08E5D63C: .4byte 0xFFFFFF00

	thumb_func_start sub_08E5D640
sub_08E5D640: @ 0x08E5D640
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
	bhs _08E5D6FE
_08E5D658:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r3, r0, r1
	ldrh r1, [r3, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5D6F4
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
	bgt _08E5D684
	movs r5, #1
_08E5D684:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xe
	cmp r2, r0
	bgt _08E5D690
	movs r1, #1
_08E5D690:
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
	bgt _08E5D6AC
	movs r4, #1
_08E5D6AC:
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0xe
	cmp r3, r0
	bgt _08E5D6B8
	movs r1, #1
_08E5D6B8:
	ands r4, r1
	ands r2, r4
	cmp r2, #0
	beq _08E5D6F4
	adds r4, r6, #0
	adds r4, #0xa4
	ldrh r1, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08E5D6F4
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5D6E6
	ldr r0, _08E5D70C @ =0x00000235
	bl sub_08E60320
_08E5D6E6:
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	orrs r0, r5
	strh r0, [r4]
_08E5D6F4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, r8
	blo _08E5D658
_08E5D6FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5D70C: .4byte 0x00000235

	thumb_func_start sub_08E5D710
sub_08E5D710: @ 0x08E5D710
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08E5D798
	adds r6, r4, #0
	adds r6, #0xb2
	ldrb r2, [r6]
	cmp r2, #0
	beq _08E5D77E
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E5D75C
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5D74C
	cmp r2, #1
	bne _08E5D74C
	adds r0, r4, #0
	bl sub_08E5E67C
_08E5D74C:
	ldrh r0, [r5]
	ldr r1, _08E5D7FC @ =0x0000FF7F
	ands r1, r0
	strh r1, [r5]
	adds r1, r4, #0
	adds r1, #0xbf
	movs r0, #5
	strb r0, [r1]
_08E5D75C:
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _08E5D77E
	cmp r1, #4
	beq _08E5D772
	adds r0, #1
	strb r0, [r2]
_08E5D772:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xa
	ble _08E5D77E
	movs r0, #0
	strb r0, [r2]
_08E5D77E:
	adds r0, r4, #0
	adds r0, #0xa4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08E5D798
	ldrb r1, [r6]
	cmp r1, #0
	beq _08E5D798
	adds r0, r4, #0
	adds r0, #0xbc
	strb r1, [r0]
_08E5D798:
	movs r0, #0xbd
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0xbe
	strb r0, [r5]
	ldr r3, _08E5D800 @ =gUnk_0200F064
	adds r0, r4, #0
	adds r0, #0xbf
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _08E5D804 @ =gUnk_0200F054
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
	beq _08E5D80C
	adds r2, r4, #0
	adds r2, #0xb4
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08E5D82E
	ldrh r1, [r3]
	ldr r0, _08E5D808 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	strh r0, [r2]
	b _08E5D812
	.align 2, 0
_08E5D7FC: .4byte 0x0000FF7F
_08E5D800: .4byte gUnk_0200F064
_08E5D804: .4byte gUnk_0200F054
_08E5D808: .4byte 0x0000FBFF
_08E5D80C:
	ldrb r0, [r5]
	cmp r0, r2
	beq _08E5D82E
_08E5D812:
	ldr r1, _08E5D834 @ =gUnk_0200EF64
	mov r2, ip
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08E5D82E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E5D834: .4byte gUnk_0200EF64

	thumb_func_start sub_08E5D838
sub_08E5D838: @ 0x08E5D838
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5D8A0
	ldr r0, _08E5D874 @ =0x0000FEFF
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
	beq _08E5D878
	adds r0, r4, #0
	bl sub_08E5EFDC
	b _08E5D87C
	.align 2, 0
_08E5D874: .4byte 0x0000FEFF
_08E5D878:
	bl sub_08E5F0A8
_08E5D87C:
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
_08E5D8A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5D8A8
sub_08E5D8A8: @ 0x08E5D8A8
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r5, ip
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r6, _08E5D904 @ =0xFFFFFF00
	adds r0, r0, r6
	asrs r0, r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08E5D8C2
	movs r1, #0
_08E5D8C2:
	mov r3, ip
	adds r3, #0xd8
	ldr r4, _08E5D908 @ =gUnk_020183E8
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
_08E5D904: .4byte 0xFFFFFF00
_08E5D908: .4byte gUnk_020183E8

	thumb_func_start sub_08E5D90C
sub_08E5D90C: @ 0x08E5D90C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x94
	ldrh r0, [r4]
	ldr r6, _08E5D960 @ =0x0000FFFB
	ands r6, r0
	strh r6, [r4]
	movs r5, #0
	ldr r1, [r1]
	adds r2, r1, #0
	cmp r1, #0
	bge _08E5D928
	rsbs r2, r1, #0
_08E5D928:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r3, [r0]
	cmp r2, r3
	bgt _08E5D934
	movs r5, #1
_08E5D934:
	movs r2, #0
	adds r0, r1, #0
	cmp r0, #0
	bge _08E5D93E
	rsbs r0, r0, #0
_08E5D93E:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	cmp r3, r0
	bgt _08E5D94A
	movs r2, #1
_08E5D94A:
	ands r5, r2
	cmp r5, #0
	beq _08E5D958
	movs r1, #4
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4]
_08E5D958:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E5D960: .4byte 0x0000FFFB

	thumb_func_start sub_08E5D964
sub_08E5D964: @ 0x08E5D964
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
	beq _08E5D994
	adds r0, r3, #0
	bl sub_08E59364
_08E5D994:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5D99C
sub_08E5D99C: @ 0x08E5D99C
	adds r3, r0, #0
	ldr r2, _08E5D9D0 @ =gUnk_0200F0E8
	movs r0, #0xe5
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	adds r1, r3, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bx lr
	.align 2, 0
_08E5D9D0: .4byte gUnk_0200F0E8

	thumb_func_start sub_08E5D9D4
sub_08E5D9D4: @ 0x08E5D9D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08E5D9E8 @ =0x0000044C
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _08E5D9EC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r5, #0
	b _08E5DA4C
	.align 2, 0
_08E5D9E8: .4byte 0x0000044C
_08E5D9EC: .4byte 0x0000FEFF
_08E5D9F0:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r3, r0, #2
	adds r0, r4, r3
	ldr r2, _08E5DA5C @ =0x0000046E
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08E5DA60 @ =0x00000579
	adds r2, r4, r0
	movs r0, #0x10
	ldrb r2, [r2]
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	beq _08E5DA46
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r4, r2
	adds r2, #0x1c
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08E5DA64 @ =0x00000444
	adds r1, r4, r0
	adds r2, #4
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	bl sub_08E59364
	ldr r0, _08E5DA68 @ =0x0000044C
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08E5DA46:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08E5DA4C:
	ldr r1, _08E5DA6C @ =0x00000524
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r5, r0
	blo _08E5D9F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E5DA5C: .4byte 0x0000046E
_08E5DA60: .4byte 0x00000579
_08E5DA64: .4byte 0x00000444
_08E5DA68: .4byte 0x0000044C
_08E5DA6C: .4byte 0x00000524

	thumb_func_start sub_08E5DA70
sub_08E5DA70: @ 0x08E5DA70
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
	bl sub_08E5DA9C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_08E5DA9C
sub_08E5DA9C: @ 0x08E5DA9C
	push {r4, lr}
	ldr r3, _08E5DAD4 @ =0x000003FF
	adds r4, r3, #0
	adds r3, r0, #0
	ands r3, r4
	ands r1, r4
	ldr r4, _08E5DAD8 @ =gUnk_0201841C
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
	beq _08E5DADC
	movs r0, #0xf
	ands r0, r1
	b _08E5DADE
	.align 2, 0
_08E5DAD4: .4byte 0x000003FF
_08E5DAD8: .4byte gUnk_0201841C
_08E5DADC:
	lsrs r0, r1, #4
_08E5DADE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08E5DAE4
sub_08E5DAE4: @ 0x08E5DAE4
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
_08E5DB0E:
	movs r6, #0
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r2, r0
	bge _08E5DB1A
	adds r2, r0, #0
_08E5DB1A:
	ldr r0, [sp, #4]
	cmp r2, r0
	bge _08E5DB22
	adds r2, r0, #0
_08E5DB22:
	ldr r0, [sp]
	cmp r2, r0
	bge _08E5DB2A
	adds r2, r0, #0
_08E5DB2A:
	movs r3, #0
_08E5DB2C:
	movs r0, #0xec
	adds r1, r3, #0
	muls r1, r0, r1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r2, r0
	bne _08E5DB50
	adds r0, r4, r1
	ldr r1, _08E5DB6C @ =0x00000105
	adds r0, r0, r1
	movs r1, #0
	strb r5, [r0]
	lsls r0, r3, #2
	add r0, sp
	str r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08E5DB50:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08E5DB2C
	adds r0, r5, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08E5DB0E
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5DB6C: .4byte 0x00000105

	thumb_func_start sub_08E5DB70
sub_08E5DB70: @ 0x08E5DB70
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
	ldr r2, _08E5DBBC @ =0x000002DE
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r7, _08E5DBC0 @ =0x000003CA
	adds r0, r4, r7
	ldrh r0, [r0]
	strh r0, [r1, #6]
	movs r5, #0
_08E5DB9E:
	movs r6, #0
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _08E5DBC4
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r3, r0
	blt _08E5DBCC
	b _08E5DBD2
	.align 2, 0
_08E5DBBC: .4byte 0x000002DE
_08E5DBC0: .4byte 0x000003CA
_08E5DBC4:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r3, r0
	bge _08E5DBD2
_08E5DBCC:
	mov r0, sp
	ldrh r0, [r0, #2]
	b _08E5DBE2
_08E5DBD2:
	mov r0, sp
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _08E5DBE8
	mov r0, sp
	ldrh r0, [r0, #4]
_08E5DBE2:
	cmp r2, r0
	blt _08E5DBF0
	b _08E5DBF6
_08E5DBE8:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r2, r0
	bge _08E5DBF6
_08E5DBF0:
	mov r0, sp
	ldrh r0, [r0]
	b _08E5DC2A
_08E5DBF6:
	mov r0, sp
	ldrh r2, [r0, #2]
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _08E5DC0E
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _08E5DC16
	b _08E5DC1C
_08E5DC0E:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r2, r0
	bge _08E5DC1C
_08E5DC16:
	mov r0, sp
	ldrh r0, [r0, #2]
	b _08E5DC2A
_08E5DC1C:
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #6]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bls _08E5DC2A
	adds r0, r1, #0
_08E5DC2A:
	adds r3, r0, #0
	movs r2, #0
_08E5DC2E:
	movs r0, #0xec
	muls r0, r2, r0
	adds r1, r4, r0
	movs r7, #0x83
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r3, r0
	bne _08E5DC62
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
	ldr r0, _08E5DC80 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08E5DC62:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08E5DC2E
	adds r0, r5, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08E5DB9E
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5DC80: .4byte 0x0000FFFF

	thumb_func_start sub_08E5DC84
sub_08E5DC84: @ 0x08E5DC84
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08E5DCE8 @ =0x0000176F
	cmp r4, r0
	bls _08E5DC94
	adds r4, r0, #0
_08E5DC94:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08E649D4
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
	bl sub_08E649D4
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
	bl sub_08E649D4
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
_08E5DCE8: .4byte 0x0000176F

	thumb_func_start sub_08E5DCEC
sub_08E5DCEC: @ 0x08E5DCEC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	str r5, [sp]
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r2, _08E5DD54 @ =0x05000011
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E648E4
	ldr r0, _08E5DD58 @ =0x06010000
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _08E5DD5C @ =gUnk_0200F0E8
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
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
_08E5DD54: .4byte 0x05000011
_08E5DD58: .4byte 0x06010000
_08E5DD5C: .4byte gUnk_0200F0E8

	thumb_func_start sub_08E5DD60
sub_08E5DD60: @ 0x08E5DD60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E5DDB4 @ =0x0000052A
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E5DD7E
	b _08E5DEAC
_08E5DD7E:
	ldr r0, _08E5DDB8 @ =gUnk_03000A68
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
	beq _08E5DDD4
	ldr r1, _08E5DDBC @ =0x0000057D
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
	beq _08E5DDC0
	adds r3, #0xe6
	adds r0, r2, r3
	b _08E5DDC4
	.align 2, 0
_08E5DDB4: .4byte 0x0000052A
_08E5DDB8: .4byte gUnk_03000A68
_08E5DDBC: .4byte 0x0000057D
_08E5DDC0:
	ldr r1, _08E5DDD0 @ =0x0000057A
	adds r0, r5, r1
_08E5DDC4:
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08E5DC84
	b _08E5DDE0
	.align 2, 0
_08E5DDD0: .4byte 0x0000057A
_08E5DDD4:
	ldr r2, _08E5DEBC @ =0x0000057A
	adds r0, r5, r2
	ldrh r1, [r0]
	mov r0, sp
	bl sub_08E5DC84
_08E5DDE0:
	movs r4, #0
_08E5DDE2:
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r6, _08E5DEC0 @ =gUnk_0200F0E8
	movs r1, #3
	subs r1, r1, r4
	mov r3, sp
	adds r2, r3, r1
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r2, r5, r3
	ldr r1, _08E5DEC4 @ =gUnk_0200F280
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
	bl sub_08E59364
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08E5DDE2
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrh r0, [r6, #0x28]
	strh r0, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0x2a
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
	bl sub_08E59364
	ldr r0, _08E5DEC8 @ =0xFFFF0000
	ands r7, r0
	movs r0, #4
	orrs r7, r0
	ldr r0, _08E5DECC @ =0xFF00FFFF
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
	bl sub_08E59364
_08E5DEAC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5DEBC: .4byte 0x0000057A
_08E5DEC0: .4byte gUnk_0200F0E8
_08E5DEC4: .4byte gUnk_0200F280
_08E5DEC8: .4byte 0xFFFF0000
_08E5DECC: .4byte 0xFF00FFFF

	thumb_func_start sub_08E5DED0
sub_08E5DED0: @ 0x08E5DED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E5DF78 @ =gUnk_03000D70
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0
	str r0, [sp]
	ldr r4, _08E5DF7C @ =0x0600E000
	ldr r2, _08E5DF80 @ =0x05000200
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E648E4
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
	ldr r0, _08E5DF84 @ =0x00000574
	add r0, r8
	ldr r6, [r0]
	mov sb, r4
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, r4
	movs r0, #0
	mov sl, r0
_08E5DF1C:
	movs r4, #0xaf
	lsls r4, r4, #3
	add r4, r8
	ldrb r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	movs r2, #0x40
	subs r2, r2, r0
	asrs r2, r2, #1
	ldr r1, _08E5DF88 @ =0x001FFFFF
	ands r2, r1
	adds r0, r7, #0
	mov r1, sb
	bl sub_08E648E4
	ldrb r0, [r4]
	lsrs r2, r0, #3
	cmp r2, #0
	beq _08E5DF4E
	ldr r0, _08E5DF88 @ =0x001FFFFF
	ands r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08E648E4
_08E5DF4E:
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
	bls _08E5DF1C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5DF78: .4byte gUnk_03000D70
_08E5DF7C: .4byte 0x0600E000
_08E5DF80: .4byte 0x05000200
_08E5DF84: .4byte 0x00000574
_08E5DF88: .4byte 0x001FFFFF

	thumb_func_start sub_08E5DF8C
sub_08E5DF8C: @ 0x08E5DF8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r3, _08E5DFB8 @ =gUnk_03003DB0
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E5DFBC @ =gUnk_020069A1
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x18]
	cmp r0, #0
	beq _08E5DFC0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5DFC4
	.align 2, 0
_08E5DFB8: .4byte gUnk_03003DB0
_08E5DFBC: .4byte gUnk_020069A1
_08E5DFC0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5DFC4:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r0, [r3]
	str r2, [r0, #8]
	adds r1, r7, #0
	ldm r1!, {r0}
	str r0, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r2, _08E5E164 @ =0xFFFF0000
	ands r6, r2
	movs r3, #4
	mov sl, r3
	orrs r6, r3
	ldr r4, _08E5E168 @ =0xFF00FFFF
	mov r8, r4
	ands r6, r4
	movs r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _08E5E16C @ =0x05000011
	bl sub_08E648E4
	ldr r0, _08E5E170 @ =0x06010000
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
	ldr r1, _08E5E164 @ =0xFFFF0000
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
	ldr r2, _08E5E16C @ =0x05000011
	bl sub_08E648E4
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
_08E5E0CE:
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
	bl sub_08E5B090
	ldr r0, [sp, #0x10]
	ldr r2, _08E5E174 @ =0x00000579
	adds r1, r0, r2
	ldrb r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E5E206
	adds r2, r7, r5
	movs r4, #0x94
	lsls r4, r4, #1
	adds r3, r2, r4
	ldrh r0, [r3]
	ldr r4, _08E5E178 @ =0x0000F83F
	adds r1, r4, #0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08E5E17C @ =0x00000177
	adds r0, r2, r1
	movs r1, #5
	strb r1, [r0]
	ldr r3, _08E5E180 @ =0x000001BB
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _08E5E184 @ =0x000001FF
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
	beq _08E5E188
	cmp r0, #1
	ble _08E5E198
	cmp r0, #2
	beq _08E5E18E
	cmp r0, #3
	beq _08E5E194
	b _08E5E198
	.align 2, 0
_08E5E164: .4byte 0xFFFF0000
_08E5E168: .4byte 0xFF00FFFF
_08E5E16C: .4byte 0x05000011
_08E5E170: .4byte 0x06010000
_08E5E174: .4byte 0x00000579
_08E5E178: .4byte 0x0000F83F
_08E5E17C: .4byte 0x00000177
_08E5E180: .4byte 0x000001BB
_08E5E184: .4byte 0x000001FF
_08E5E188:
	movs r3, #0x8c
	lsls r3, r3, #1
	b _08E5E198
_08E5E18E:
	movs r3, #0xcc
	lsls r3, r3, #1
	b _08E5E198
_08E5E194:
	movs r3, #0x86
	lsls r3, r3, #2
_08E5E198:
	ldr r0, _08E5E228 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E5E22C @ =0xFF00FFFF
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
	ldr r2, _08E5E230 @ =0x05000011
	str r3, [sp, #0x1c]
	bl sub_08E648E4
	ldr r0, _08E5E234 @ =0x06010000
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
_08E5E206:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08E5E216
	b _08E5E0CE
_08E5E216:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5E228: .4byte 0xFFFF0000
_08E5E22C: .4byte 0xFF00FFFF
_08E5E230: .4byte 0x05000011
_08E5E234: .4byte 0x06010000

	thumb_func_start sub_08E5E238
sub_08E5E238: @ 0x08E5E238
	push {r4, lr}
	ldr r0, _08E5E254 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5E258
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5E25C
	.align 2, 0
_08E5E254: .4byte gUnk_03003DB0
_08E5E258:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5E25C:
	adds r4, r1, r0
	adds r0, r4, #4
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0x48
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E59364
	adds r0, r4, #0
	adds r0, #0xd0
	bl sub_08E5B3E8
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08E5B3E8
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_08E5B3E8
	ldr r1, _08E5E2A0 @ =0x00000664
	adds r0, r4, r1
	bl sub_08E5B3E8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E5E2A0: .4byte 0x00000664

	thumb_func_start sub_08E5E2A4
sub_08E5E2A4: @ 0x08E5E2A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08E5E2DC @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5E2E0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E5E2E6
	.align 2, 0
_08E5E2DC: .4byte gUnk_02001C69
_08E5E2E0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E5E2E6:
	adds r5, r0, #0
	ldr r0, _08E5E398 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E5E39C @ =0xFF00FFFF
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
	beq _08E5E3A8
	str r7, [sp, #4]
	ldr r2, _08E5E3A0 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E3A4 @ =0x06010000
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
	b _08E5E3FA
	.align 2, 0
_08E5E398: .4byte 0xFFFF0000
_08E5E39C: .4byte 0xFF00FFFF
_08E5E3A0: .4byte 0x05000011
_08E5E3A4: .4byte 0x06010000
_08E5E3A8:
	str r4, [sp, #4]
	ldr r2, _08E5E410 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E414 @ =0x06010000
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
_08E5E3FA:
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
_08E5E410: .4byte 0x05000011
_08E5E414: .4byte 0x06010000

	thumb_func_start sub_08E5E418
sub_08E5E418: @ 0x08E5E418
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	ldr r0, _08E5E450 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5E454
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5E458
	.align 2, 0
_08E5E450: .4byte gUnk_02001C69
_08E5E454:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5E458:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _08E5E510 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E5E514 @ =0xFF00FFFF
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
	beq _08E5E520
	str r7, [sp, #4]
	ldr r2, _08E5E518 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E51C @ =0x06010000
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
	b _08E5E576
	.align 2, 0
_08E5E510: .4byte 0xFFFF0000
_08E5E514: .4byte 0xFF00FFFF
_08E5E518: .4byte 0x05000011
_08E5E51C: .4byte 0x06010000
_08E5E520:
	str r5, [sp, #4]
	ldr r2, _08E5E590 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E594 @ =0x06010000
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
_08E5E576:
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
_08E5E590: .4byte 0x05000011
_08E5E594: .4byte 0x06010000

	thumb_func_start sub_08E5E598
sub_08E5E598: @ 0x08E5E598
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5E5B0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08E5E5B6
_08E5E5B0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08E5E5B6:
	ldrh r1, [r2, #0x38]
	ldr r0, _08E5E5C4 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_08E5E5C4: .4byte 0x0000EFFF

	thumb_func_start sub_08E5E5C8
sub_08E5E5C8: @ 0x08E5E5C8
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5E5E0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08E5E5E6
_08E5E5E0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08E5E5E6:
	ldrh r1, [r2, #0x38]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5E5F8
sub_08E5E5F8: @ 0x08E5E5F8
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5E614
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E5E61A
_08E5E614:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E5E61A:
	adds r2, r1, #0
	cmp r4, #0
	beq _08E5E63C
	ldr r0, _08E5E634 @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _08E5E638 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _08E5E64C
	.align 2, 0
_08E5E634: .4byte 0xFFFF0000
_08E5E638: .4byte 0xFF00FFFF
_08E5E63C:
	ldr r0, _08E5E674 @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _08E5E678 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
_08E5E64C:
	orrs r3, r0
	ldrh r1, [r2, #0x10]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08E5E664
	lsrs r0, r3, #0x10
	ldrb r1, [r2, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08E5E66E
_08E5E664:
	strh r3, [r2, #0x10]
	lsrs r0, r3, #0x10
	strb r0, [r2, #0x1e]
	movs r0, #0xff
	strb r0, [r2, #0x1f]
_08E5E66E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E5E674: .4byte 0xFFFF0000
_08E5E678: .4byte 0xFF00FFFF

	thumb_func_start sub_08E5E67C
sub_08E5E67C: @ 0x08E5E67C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08E5E6B4 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5E6B8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E5E6BE
	.align 2, 0
_08E5E6B4: .4byte gUnk_02001C69
_08E5E6B8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E5E6BE:
	adds r5, r0, #0
	ldr r0, _08E5E770 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E5E774 @ =0xFF00FFFF
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
	beq _08E5E780
	str r7, [sp, #4]
	ldr r2, _08E5E778 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E77C @ =0x06010000
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
	b _08E5E7D2
	.align 2, 0
_08E5E770: .4byte 0xFFFF0000
_08E5E774: .4byte 0xFF00FFFF
_08E5E778: .4byte 0x05000011
_08E5E77C: .4byte 0x06010000
_08E5E780:
	str r4, [sp, #4]
	ldr r2, _08E5E7E8 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E7EC @ =0x06010000
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
_08E5E7D2:
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
_08E5E7E8: .4byte 0x05000011
_08E5E7EC: .4byte 0x06010000

	thumb_func_start sub_08E5E7F0
sub_08E5E7F0: @ 0x08E5E7F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08E5E82C @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r0, _08E5E830 @ =gUnk_0200F28C
	mov r8, r0
	ldr r5, _08E5E834 @ =gUnk_030070B8
	cmp r1, #0
	beq _08E5E838
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E5E83E
	.align 2, 0
_08E5E82C: .4byte gUnk_02001C69
_08E5E830: .4byte gUnk_0200F28C
_08E5E834: .4byte gUnk_030070B8
_08E5E838:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E5E83E:
	adds r4, r1, #0
	ldr r0, _08E5E914 @ =0xFFFF0000
	ands r6, r0
	movs r2, #1
	orrs r6, r2
	ldr r0, _08E5E918 @ =0xFF00FFFF
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
	ldr r0, _08E5E91C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E5E920 @ =0x3C6EF35F
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
	beq _08E5E92C
	str r7, [sp, #4]
	ldr r2, _08E5E924 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E928 @ =0x06010000
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
	b _08E5E982
	.align 2, 0
_08E5E914: .4byte 0xFFFF0000
_08E5E918: .4byte 0xFF00FFFF
_08E5E91C: .4byte 0x00196225
_08E5E920: .4byte 0x3C6EF35F
_08E5E924: .4byte 0x05000011
_08E5E928: .4byte 0x06010000
_08E5E92C:
	str r5, [sp, #4]
	ldr r2, _08E5E998 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5E99C @ =0x06010000
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
_08E5E982:
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
_08E5E998: .4byte 0x05000011
_08E5E99C: .4byte 0x06010000

	thumb_func_start sub_08E5E9A0
sub_08E5E9A0: @ 0x08E5E9A0
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
	ldr r0, _08E5E9E0 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #2
	lsls r5, r5, #2
	cmp r1, #0
	beq _08E5E9E4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E5E9EA
	.align 2, 0
_08E5E9E0: .4byte gUnk_02001C69
_08E5E9E4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E5E9EA:
	adds r4, r1, #0
	ldr r0, _08E5EAA8 @ =0xFFFF0000
	ands r6, r0
	movs r2, #1
	orrs r6, r2
	ldr r0, _08E5EAAC @ =0xFF00FFFF
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
	beq _08E5EAB8
	str r7, [sp, #4]
	ldr r2, _08E5EAB0 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5EAB4 @ =0x06010000
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
	b _08E5EB0E
	.align 2, 0
_08E5EAA8: .4byte 0xFFFF0000
_08E5EAAC: .4byte 0xFF00FFFF
_08E5EAB0: .4byte 0x05000011
_08E5EAB4: .4byte 0x06010000
_08E5EAB8:
	str r5, [sp, #4]
	ldr r2, _08E5EB34 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5EB38 @ =0x06010000
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
_08E5EB0E:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	movs r0, #4
	strh r0, [r4, #0x34]
	ldr r0, _08E5EB3C @ =gUnk_0200F28C
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
_08E5EB34: .4byte 0x05000011
_08E5EB38: .4byte 0x06010000
_08E5EB3C: .4byte gUnk_0200F28C

	thumb_func_start sub_08E5EB40
sub_08E5EB40: @ 0x08E5EB40
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E5EB70 @ =gUnk_020072F5
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_08E626B8
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, [r4, #0x28]
	cmp r0, #0
	beq _08E5EB74
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5EB78
	.align 2, 0
_08E5EB70: .4byte gUnk_020072F5
_08E5EB74:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5EB78:
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

	thumb_func_start sub_08E5EB8C
sub_08E5EB8C: @ 0x08E5EB8C
	push {r4, lr}
	ldr r0, _08E5EBA8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5EBAC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5EBB0
	.align 2, 0
_08E5EBA8: .4byte gUnk_03003DB0
_08E5EBAC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5EBB0:
	adds r4, r1, r0
	ldrb r0, [r4, #6]
	adds r1, r0, #1
	strb r1, [r4, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08E5EBCA
	ldr r0, [r4]
	bl sub_08E5E7F0
	movs r0, #0
	strb r0, [r4, #6]
_08E5EBCA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E5EBD0
sub_08E5EBD0: @ 0x08E5EBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	ldr r0, _08E5EC08 @ =gUnk_020074B9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5EC0C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5EC10
	.align 2, 0
_08E5EC08: .4byte gUnk_020074B9
_08E5EC0C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5EC10:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _08E5ECC8 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E5ECCC @ =0xFF00FFFF
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
	beq _08E5ECD8
	str r7, [sp, #4]
	ldr r2, _08E5ECD0 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5ECD4 @ =0x06010000
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
	b _08E5ED2E
	.align 2, 0
_08E5ECC8: .4byte 0xFFFF0000
_08E5ECCC: .4byte 0xFF00FFFF
_08E5ECD0: .4byte 0x05000011
_08E5ECD4: .4byte 0x06010000
_08E5ECD8:
	str r5, [sp, #4]
	ldr r2, _08E5ED48 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5ED4C @ =0x06010000
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
_08E5ED2E:
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
_08E5ED48: .4byte 0x05000011
_08E5ED4C: .4byte 0x06010000

	thumb_func_start sub_08E5ED50
sub_08E5ED50: @ 0x08E5ED50
	push {lr}
	ldr r0, _08E5ED6C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5ED70
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5ED74
	.align 2, 0
_08E5ED6C: .4byte gUnk_03003DB0
_08E5ED70:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5ED74:
	adds r0, r1, r0
	bl sub_08E594BC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5ED80
sub_08E5ED80: @ 0x08E5ED80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _08E5EDBC @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5EDC0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E5EDC6
	.align 2, 0
_08E5EDBC: .4byte gUnk_02001C69
_08E5EDC0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E5EDC6:
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
	beq _08E5EE7C
	str r6, [sp, #4]
	ldr r2, _08E5EE70 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5EE74 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08E5EE78 @ =gUnk_0200F2A0
	adds r0, r7, r0
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #2]
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
	b _08E5EED6
	.align 2, 0
_08E5EE70: .4byte 0x05000011
_08E5EE74: .4byte 0x06010000
_08E5EE78: .4byte gUnk_0200F2A0
_08E5EE7C:
	str r5, [sp, #4]
	ldr r2, _08E5EEF4 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5EEF8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08E5EEFC @ =gUnk_0200F2A0
	adds r0, r7, r0
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #2]
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
_08E5EED6:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r0, _08E5EF00 @ =0x0000FFFE
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
_08E5EEF4: .4byte 0x05000011
_08E5EEF8: .4byte 0x06010000
_08E5EEFC: .4byte gUnk_0200F2A0
_08E5EF00: .4byte 0x0000FFFE

	thumb_func_start sub_08E5EF04
sub_08E5EF04: @ 0x08E5EF04
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r2, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08E5EF3C @ =gUnk_020076CD
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, [r4, #0x28]
	ldr r5, _08E5EF40 @ =gUnk_0200F293
	cmp r1, #0
	beq _08E5EF44
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E5EF4A
	.align 2, 0
_08E5EF3C: .4byte gUnk_020076CD
_08E5EF40: .4byte gUnk_0200F293
_08E5EF44:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E5EF4A:
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

	thumb_func_start sub_08E5EF64
sub_08E5EF64: @ 0x08E5EF64
	push {r4, lr}
	ldr r0, _08E5EF80 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5EF84
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5EF88
	.align 2, 0
_08E5EF80: .4byte gUnk_03003DB0
_08E5EF84:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5EF88:
	adds r4, r1, r0
	ldr r0, [r4]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0x1a
	movs r3, #0
	bl sub_08E5E9A0
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #0
	movs r3, #1
	bl sub_08E5E9A0
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #8
	movs r3, #2
	bl sub_08E5E9A0
	ldr r0, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	movs r1, #0x1e
	movs r3, #3
	bl sub_08E5E9A0
	ldr r0, [r4]
	movs r1, #0x1e
	movs r2, #4
	movs r3, #4
	bl sub_08E5E9A0
	ldr r0, _08E5EFD8 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E5EFD8: .4byte gUnk_03003DB0

	thumb_func_start sub_08E5EFDC
sub_08E5EFDC: @ 0x08E5EFDC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	ldr r0, _08E5F09C @ =gUnk_030070B8
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _08E5F0A0 @ =0x00196225
	muls r0, r6, r0
	ldr r4, _08E5F0A4 @ =0x3C6EF35F
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
	bl sub_08E5F0E0
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
	bl sub_08E5F0E0
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
	bl sub_08E5F0E0
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
	bl sub_08E5F0E0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E5F09C: .4byte gUnk_030070B8
_08E5F0A0: .4byte 0x00196225
_08E5F0A4: .4byte 0x3C6EF35F

	thumb_func_start sub_08E5F0A8
sub_08E5F0A8: @ 0x08E5F0A8
	ldr r3, _08E5F0D4 @ =gUnk_030070B8
	ldr r0, [r3]
	ldr r2, _08E5F0D8 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08E5F0DC @ =0x3C6EF35F
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
_08E5F0D4: .4byte gUnk_030070B8
_08E5F0D8: .4byte 0x00196225
_08E5F0DC: .4byte 0x3C6EF35F

	thumb_func_start sub_08E5F0E0
sub_08E5F0E0: @ 0x08E5F0E0
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
	ldr r0, _08E5F124 @ =gUnk_020079DD
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E5F128
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E5F12E
	.align 2, 0
_08E5F124: .4byte gUnk_020079DD
_08E5F128:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E5F12E:
	adds r4, r1, #0
	ldr r0, _08E5F1E4 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _08E5F1E8 @ =0xFF00FFFF
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
	beq _08E5F1F4
	str r7, [sp, #4]
	ldr r2, _08E5F1EC @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5F1F0 @ =0x06010000
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
	b _08E5F24A
	.align 2, 0
_08E5F1E4: .4byte 0xFFFF0000
_08E5F1E8: .4byte 0xFF00FFFF
_08E5F1EC: .4byte 0x05000011
_08E5F1F0: .4byte 0x06010000
_08E5F1F4:
	str r5, [sp, #4]
	ldr r2, _08E5F26C @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5F270 @ =0x06010000
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
_08E5F24A:
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
_08E5F26C: .4byte 0x05000011
_08E5F270: .4byte 0x06010000

	thumb_func_start sub_08E5F274
sub_08E5F274: @ 0x08E5F274
	push {r4, lr}
	ldr r0, _08E5F290 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5F294
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5F298
	.align 2, 0
_08E5F290: .4byte gUnk_03003DB0
_08E5F294:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5F298:
	adds r4, r1, r0
	ldrh r0, [r4, #0x36]
	adds r0, #2
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08E594BC
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E5F2D4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E5F2C4
	subs r0, #1
	strh r0, [r1]
	b _08E5F2E8
_08E5F2C4:
	ldr r0, _08E5F2D0 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
	b _08E5F2E8
	.align 2, 0
_08E5F2D0: .4byte gUnk_03003DB0
_08E5F2D4:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E5F2E8
	ldr r0, _08E5F2F0 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_08E627D4
_08E5F2E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E5F2F0: .4byte gUnk_03003DB0

	thumb_func_start sub_08E5F2F4
sub_08E5F2F4: @ 0x08E5F2F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08E5F328 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _08E5F32C
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E5F332
	.align 2, 0
_08E5F328: .4byte gUnk_02001C69
_08E5F32C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
_08E5F332:
	ldr r0, _08E5F3E4 @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _08E5F3E8 @ =0xFF00FFFF
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
	beq _08E5F3F4
	str r7, [sp, #4]
	ldr r2, _08E5F3EC @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5F3F0 @ =0x06010000
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
	b _08E5F44A
	.align 2, 0
_08E5F3E4: .4byte 0xFFFF0000
_08E5F3E8: .4byte 0xFF00FFFF
_08E5F3EC: .4byte 0x05000011
_08E5F3F0: .4byte 0x06010000
_08E5F3F4:
	str r5, [sp, #4]
	ldr r2, _08E5F45C @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5F460 @ =0x06010000
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
_08E5F44A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E5F45C: .4byte 0x05000011
_08E5F460: .4byte 0x06010000

	thumb_func_start sub_08E5F464
sub_08E5F464: @ 0x08E5F464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08E5F49C @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E626B8
	str r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #8]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E5F4A0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E5F4A4
	.align 2, 0
_08E5F49C: .4byte gUnk_02001C69
_08E5F4A0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E5F4A4:
	adds r4, r1, r0
	ldr r0, _08E5F55C @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _08E5F560 @ =0xFF00FFFF
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
	beq _08E5F56C
	str r7, [sp, #4]
	ldr r2, _08E5F564 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5F568 @ =0x06010000
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
	b _08E5F5C2
	.align 2, 0
_08E5F55C: .4byte 0xFFFF0000
_08E5F560: .4byte 0xFF00FFFF
_08E5F564: .4byte 0x05000011
_08E5F568: .4byte 0x06010000
_08E5F56C:
	str r5, [sp, #4]
	ldr r2, _08E5F5D4 @ =0x05000011
	add r0, sp, #4
	bl sub_08E648E4
	ldr r0, _08E5F5D8 @ =0x06010000
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
_08E5F5C2:
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
_08E5F5D4: .4byte 0x05000011
_08E5F5D8: .4byte 0x06010000
