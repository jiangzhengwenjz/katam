	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D791B0
sub_08D791B0: @ 0x08D791B0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08D791C4
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08D791C4:
	ldr r3, _08D7920C @ =gUnk_020101D8
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08D79210 @ =gUnk_0201028C
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_08D78594
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_08D78594
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D7920C: .4byte gUnk_020101D8
_08D79210: .4byte gUnk_0201028C

	thumb_func_start nullsub_90
nullsub_90: @ 0x08D79214
	bx lr
	.align 2, 0

	thumb_func_start sub_08D79218
sub_08D79218: @ 0x08D79218
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08D7922C @ =0x68736D53
	cmp r3, r0
	bne _08D7922A
	ldr r0, [r2, #4]
	ldr r1, _08D79230 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08D7922A:
	bx lr
	.align 2, 0
_08D7922C: .4byte 0x68736D53
_08D79230: .4byte 0x7FFFFFFF

	thumb_func_start sub_08D79234
sub_08D79234: @ 0x08D79234
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D79250 @ =0x68736D53
	cmp r3, r0
	bne _08D7924C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08D7924C:
	bx lr
	.align 2, 0
_08D79250: .4byte 0x68736D53

	thumb_func_start sub_08D79254
sub_08D79254: @ 0x08D79254
	push {r4, r5, r6, lr}
	ldr r0, _08D792A8 @ =gUnk_02006661
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08D792AC @ =gUnk_03000000
	ldr r2, _08D792B0 @ =0x04000100
	bl sub_08D7D89C
	ldr r0, _08D792B4 @ =gUnk_0201F0F0
	bl sub_08D79654
	ldr r0, _08D792B8 @ =gUnk_02020130
	bl sub_08D79510
	ldr r0, _08D792BC @ =0x0095FA00
	bl sub_08D797F0
	ldr r0, _08D792C0 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08D792A2
	ldr r5, _08D792C4 @ =gUnk_02011168
	adds r6, r0, #0
_08D79286:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08D79994
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08D792C8 @ =gUnk_020202F0
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08D79286
_08D792A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D792A8: .4byte gUnk_02006661
_08D792AC: .4byte gUnk_03000000
_08D792B0: .4byte 0x04000100
_08D792B4: .4byte gUnk_0201F0F0
_08D792B8: .4byte gUnk_02020130
_08D792BC: .4byte 0x0095FA00
_08D792C0: .4byte 0x00000003
_08D792C4: .4byte gUnk_02011168
_08D792C8: .4byte gUnk_020202F0

	thumb_func_start sub_08D792CC
sub_08D792CC: @ 0x08D792CC
	push {lr}
	bl sub_08D785A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D792D8
sub_08D792D8: @ 0x08D792D8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D792FC @ =gUnk_02011168
	ldr r1, _08D79300 @ =gUnk_0201118C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08D79A0C
	pop {r0}
	bx r0
	.align 2, 0
_08D792FC: .4byte gUnk_02011168
_08D79300: .4byte gUnk_0201118C

	thumb_func_start sub_08D79304
sub_08D79304: @ 0x08D79304
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D79330 @ =gUnk_02011168
	ldr r1, _08D79334 @ =gUnk_0201118C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08D79338
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08D79A0C
	b _08D7934C
	.align 2, 0
_08D79330: .4byte gUnk_02011168
_08D79334: .4byte gUnk_0201118C
_08D79338:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08D79344
	cmp r2, #0
	bge _08D7934C
_08D79344:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08D79A0C
_08D7934C:
	pop {r0}
	bx r0

	thumb_func_start sub_08D79350
sub_08D79350: @ 0x08D79350
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D7937C @ =gUnk_02011168
	ldr r1, _08D79380 @ =gUnk_0201118C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08D79384
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08D79A0C
	b _08D793A0
	.align 2, 0
_08D7937C: .4byte gUnk_02011168
_08D79380: .4byte gUnk_0201118C
_08D79384:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08D79396
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08D79A0C
	b _08D793A0
_08D79396:
	cmp r2, #0
	bge _08D793A0
	adds r0, r1, #0
	bl sub_08D79218
_08D793A0:
	pop {r0}
	bx r0

	thumb_func_start sub_08D793A4
sub_08D793A4: @ 0x08D793A4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D793D0 @ =gUnk_02011168
	ldr r1, _08D793D4 @ =gUnk_0201118C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _08D793CA
	adds r0, r2, #0
	bl sub_08D79AF0
_08D793CA:
	pop {r0}
	bx r0
	.align 2, 0
_08D793D0: .4byte gUnk_02011168
_08D793D4: .4byte gUnk_0201118C

	thumb_func_start sub_08D793D8
sub_08D793D8: @ 0x08D793D8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D79404 @ =gUnk_02011168
	ldr r1, _08D79408 @ =gUnk_0201118C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _08D793FE
	adds r0, r2, #0
	bl sub_08D79218
_08D793FE:
	pop {r0}
	bx r0
	.align 2, 0
_08D79404: .4byte gUnk_02011168
_08D79408: .4byte gUnk_0201118C

	thumb_func_start sub_08D7940C
sub_08D7940C: @ 0x08D7940C
	push {r4, r5, lr}
	ldr r0, _08D79430 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08D7942A
	ldr r5, _08D79434 @ =gUnk_02011168
	adds r4, r0, #0
_08D7941C:
	ldr r0, [r5]
	bl sub_08D79AF0
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08D7941C
_08D7942A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D79430: .4byte 0x00000003
_08D79434: .4byte gUnk_02011168

	thumb_func_start sub_08D79438
sub_08D79438: @ 0x08D79438
	push {lr}
	bl sub_08D79218
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D79444
sub_08D79444: @ 0x08D79444
	push {r4, r5, lr}
	ldr r0, _08D79468 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08D79462
	ldr r5, _08D7946C @ =gUnk_02011168
	adds r4, r0, #0
_08D79454:
	ldr r0, [r5]
	bl sub_08D79218
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08D79454
_08D79462:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D79468: .4byte 0x00000003
_08D7946C: .4byte gUnk_02011168

	thumb_func_start sub_08D79470
sub_08D79470: @ 0x08D79470
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08D79234
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D79480
sub_08D79480: @ 0x08D79480
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D79498 @ =0x68736D53
	cmp r3, r0
	bne _08D79496
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08D7949C @ =0x00000101
	strh r0, [r2, #0x28]
_08D79496:
	bx lr
	.align 2, 0
_08D79498: .4byte 0x68736D53
_08D7949C: .4byte 0x00000101

	thumb_func_start sub_08D794A0
sub_08D794A0: @ 0x08D794A0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D794C0 @ =0x68736D53
	cmp r3, r0
	bne _08D794BE
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08D794C4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08D794BE:
	bx lr
	.align 2, 0
_08D794C0: .4byte 0x68736D53
_08D794C4: .4byte 0x7FFFFFFF

	thumb_func_start sub_08D794C8
sub_08D794C8: @ 0x08D794C8
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _08D7950A
	movs r7, #0x80
_08D794D4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08D79502
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08D79502
	adds r0, r4, #0
	bl sub_08D79640
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_08D79502:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08D794D4
_08D7950A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D79510
sub_08D79510: @ 0x08D79510
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08D795D8 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08D795DC @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08D795E0 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08D795E4 @ =gUnk_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08D795E8 @ =0x68736D53
	cmp r6, r0
	bne _08D795D0
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08D795EC @ =gUnk_020200A0
	ldr r0, _08D795F0 @ =gUnk_02008505
	str r0, [r1, #0x20]
	ldr r0, _08D795F4 @ =gUnk_020071C1
	str r0, [r1, #0x44]
	ldr r0, _08D795F8 @ =gUnk_020071D5
	str r0, [r1, #0x4c]
	ldr r0, _08D795FC @ =gUnk_0200865D
	str r0, [r1, #0x70]
	ldr r0, _08D79600 @ =gUnk_02007159
	str r0, [r1, #0x74]
	ldr r0, _08D79604 @ =gUnk_02007785
	str r0, [r1, #0x78]
	ldr r0, _08D79608 @ =gUnk_02006EE5
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08D7960C @ =gUnk_02007B69
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08D79610 @ =gUnk_02007C31
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08D79614 @ =gUnk_02007E45
	str r0, [r4, #0x28]
	ldr r0, _08D79618 @ =gUnk_02007D8D
	str r0, [r4, #0x2c]
	ldr r0, _08D7961C @ =gUnk_02007CE5
	str r0, [r4, #0x30]
	ldr r0, _08D79620 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08D79624 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_08D7D89C
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08D795D0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D795D8: .4byte 0x04000084
_08D795DC: .4byte 0x04000080
_08D795E0: .4byte 0x04000063
_08D795E4: .4byte gUnk_03007FF0
_08D795E8: .4byte 0x68736D53
_08D795EC: .4byte gUnk_020200A0
_08D795F0: .4byte gUnk_02008505
_08D795F4: .4byte gUnk_020071C1
_08D795F8: .4byte gUnk_020071D5
_08D795FC: .4byte gUnk_0200865D
_08D79600: .4byte gUnk_02007159
_08D79604: .4byte gUnk_02007785
_08D79608: .4byte gUnk_02006EE5
_08D7960C: .4byte gUnk_02007B69
_08D79610: .4byte gUnk_02007C31
_08D79614: .4byte gUnk_02007E45
_08D79618: .4byte gUnk_02007D8D
_08D7961C: .4byte gUnk_02007CE5
_08D79620: .4byte 0x00000000
_08D79624: .4byte 0x05000040

	thumb_func_start sub_08D79628
sub_08D79628: @ 0x08D79628
	svc #0x2a
	bx lr

	thumb_func_start sub_08D7962C
sub_08D7962C: @ 0x08D7962C
	push {lr}
	ldr r1, _08D7963C @ =gUnk_02020128
	ldr r1, [r1]
	bl sub_08D7D8C0
	pop {r0}
	bx r0
	.align 2, 0
_08D7963C: .4byte gUnk_02020128

	thumb_func_start sub_08D79640
sub_08D79640: @ 0x08D79640
	push {lr}
	ldr r1, _08D79650 @ =gUnk_0202012C
	ldr r1, [r1]
	bl sub_08D7D8C0
	pop {r0}
	bx r0
	.align 2, 0
_08D79650: .4byte gUnk_0202012C

	thumb_func_start sub_08D79654
sub_08D79654: @ 0x08D79654
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08D7970C @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08D79670
	ldr r0, _08D79710 @ =0x84400004
	str r0, [r1]
_08D79670:
	ldr r1, _08D79714 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08D7967E
	ldr r0, _08D79710 @ =0x84400004
	str r0, [r1]
_08D7967E:
	ldr r0, _08D79718 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08D7971C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08D79720 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08D79724 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08D79728 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08D7972C @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08D79730 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08D79734 @ =gUnk_03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08D79738 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_08D7D89C
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08D7973C @ =gUnk_02006F59
	str r0, [r5, #0x38]
	ldr r0, _08D79740 @ =gUnk_0200877D
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08D79744 @ =gUnk_020200A0
	adds r0, r4, #0
	bl sub_08D78A34
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08D7974C
	ldr r0, _08D79748 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7970C: .4byte 0x040000C4
_08D79710: .4byte 0x84400004
_08D79714: .4byte 0x040000D0
_08D79718: .4byte 0x040000C6
_08D7971C: .4byte 0x04000084
_08D79720: .4byte 0x0000A90E
_08D79724: .4byte 0x04000089
_08D79728: .4byte 0x040000BC
_08D7972C: .4byte 0x040000A0
_08D79730: .4byte 0x040000A4
_08D79734: .4byte gUnk_03007FF0
_08D79738: .4byte 0x050003EC
_08D7973C: .4byte gUnk_02006F59
_08D79740: .4byte gUnk_0200877D
_08D79744: .4byte gUnk_020200A0
_08D79748: .4byte 0x68736D53

	thumb_func_start sub_08D7974C
sub_08D7974C: @ 0x08D7974C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08D797CC @ =gUnk_03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08D797D0 @ =gUnk_020102BC
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_08D7D8F8
	strb r0, [r4, #0xb]
	ldr r0, _08D797D4 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08D797D8 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08D797DC @ =0x00002710
	bl sub_08D7D8F8
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08D7D8F8
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08D797E0 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08D797E4 @ =0x04000100
	ldr r0, _08D797E8 @ =0x00044940
	adds r1, r5, #0
	bl sub_08D7D8F8
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_08D79958
	ldr r1, _08D797EC @ =0x04000006
_08D797B0:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08D797B0
	ldr r1, _08D797EC @ =0x04000006
_08D797B8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08D797B8
	ldr r1, _08D797E0 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D797CC: .4byte gUnk_03007FF0
_08D797D0: .4byte gUnk_020102BC
_08D797D4: .4byte 0x00091D1B
_08D797D8: .4byte 0x00001388
_08D797DC: .4byte 0x00002710
_08D797E0: .4byte 0x04000102
_08D797E4: .4byte 0x04000100
_08D797E8: .4byte 0x00044940
_08D797EC: .4byte 0x04000006

	thumb_func_start sub_08D797F0
sub_08D797F0: @ 0x08D797F0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08D7987C @ =gUnk_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08D79880 @ =0x68736D53
	cmp r1, r0
	bne _08D79876
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08D79812
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08D79812:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08D79832
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08D79828:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08D79828
_08D79832:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08D79840
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08D79840:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08D7985E
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08D79884 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08D7985E:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08D79872
	bl sub_08D798DC
	adds r0, r4, #0
	bl sub_08D7974C
_08D79872:
	ldr r0, _08D79880 @ =0x68736D53
	str r0, [r5]
_08D79876:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7987C: .4byte gUnk_03007FF0
_08D79880: .4byte 0x68736D53
_08D79884: .4byte 0x04000089

	thumb_func_start sub_08D79888
sub_08D79888: @ 0x08D79888
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D798D4 @ =gUnk_03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08D798D8 @ =0x68736D53
	cmp r1, r0
	bne _08D798CE
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08D798A2:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08D798A2
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _08D798CA
	movs r5, #1
	movs r7, #0
_08D798B6:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_08D7D8C0
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _08D798B6
_08D798CA:
	ldr r0, _08D798D8 @ =0x68736D53
	str r0, [r6]
_08D798CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D798D4: .4byte gUnk_03007FF0
_08D798D8: .4byte 0x68736D53

	thumb_func_start sub_08D798DC
sub_08D798DC: @ 0x08D798DC
	push {lr}
	sub sp, #4
	ldr r0, _08D7993C @ =gUnk_03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08D79940 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08D79934
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08D79944 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08D79906
	ldr r0, _08D79948 @ =0x84400004
	str r0, [r1]
_08D79906:
	ldr r1, _08D7994C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08D79914
	ldr r0, _08D79948 @ =0x84400004
	str r0, [r1]
_08D79914:
	ldr r0, _08D79950 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08D79954 @ =0x05000318
	mov r0, sp
	bl sub_08D7D89C
_08D79934:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08D7993C: .4byte gUnk_03007FF0
_08D79940: .4byte 0x978C92AD
_08D79944: .4byte 0x040000C4
_08D79948: .4byte 0x84400004
_08D7994C: .4byte 0x040000D0
_08D79950: .4byte 0x040000C6
_08D79954: .4byte 0x05000318

	thumb_func_start sub_08D79958
sub_08D79958: @ 0x08D79958
	push {r4, lr}
	ldr r0, _08D79988 @ =gUnk_03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08D7998C @ =0x68736D53
	cmp r3, r0
	beq _08D79980
	ldr r0, _08D79990 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_08D79980:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D79988: .4byte gUnk_03007FF0
_08D7998C: .4byte 0x68736D53
_08D79990: .4byte 0x040000C6

	thumb_func_start sub_08D79994
sub_08D79994: @ 0x08D79994
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08D799F8
	cmp r4, #0x10
	bls _08D799A8
	movs r4, #0x10
_08D799A8:
	ldr r0, _08D79A00 @ =gUnk_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08D79A04 @ =0x68736D53
	cmp r1, r0
	bne _08D799F8
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_08D79640
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08D799DC
	movs r1, #0
_08D799CE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08D799CE
_08D799DC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08D799EC
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08D799EC:
	str r7, [r5, #0x24]
	ldr r0, _08D79A08 @ =gUnk_02006C7D
	str r0, [r5, #0x20]
	ldr r0, _08D79A04 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08D799F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D79A00: .4byte gUnk_03007FF0
_08D79A04: .4byte 0x68736D53
_08D79A08: .4byte gUnk_02006C7D

	thumb_func_start sub_08D79A0C
sub_08D79A0C: @ 0x08D79A0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08D79AEC @ =0x68736D53
	cmp r1, r0
	bne _08D79AE2
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08D79A4E
	ldr r0, [r5]
	cmp r0, #0
	beq _08D79A38
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08D79A44
_08D79A38:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08D79A4E
	cmp r1, #0
	blt _08D79A4E
_08D79A44:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08D79AE2
_08D79A4E:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _08D79AAE
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08D79ACE
	mov r8, r6
_08D79A82:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08D78EAC
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _08D79AAE
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08D79A82
_08D79AAE:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08D79ACE
	movs r1, #0
	mov r8, r1
_08D79AB8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08D78EAC
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08D79AB8
_08D79ACE:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08D79ADE
	ldrb r0, [r7, #3]
	bl sub_08D797F0
_08D79ADE:
	ldr r0, _08D79AEC @ =0x68736D53
	str r0, [r5, #0x34]
_08D79AE2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D79AEC: .4byte 0x68736D53

	thumb_func_start sub_08D79AF0
sub_08D79AF0: @ 0x08D79AF0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08D79B2C @ =0x68736D53
	cmp r1, r0
	bne _08D79B26
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08D79B22
_08D79B12:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08D78EAC
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08D79B12
_08D79B22:
	ldr r0, _08D79B2C @ =0x68736D53
	str r0, [r6, #0x34]
_08D79B26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D79B2C: .4byte 0x68736D53

	thumb_func_start sub_08D79B30
sub_08D79B30: @ 0x08D79B30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08D79BF2
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08D79B70 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08D79BF2
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D79B74
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08D79BC6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08D79BC6
	.align 2, 0
_08D79B70: .4byte 0x0000FFFF
_08D79B74:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08D79BC6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08D79BA6
_08D79B8A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08D78EAC
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08D79B9E
	strb r0, [r4]
_08D79B9E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08D79B8A
_08D79BA6:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08D79BBA
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08D79BBE
_08D79BBA:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08D79BBE:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08D79BF2
_08D79BC6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08D79BF2
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08D79BD4:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D79BEA
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08D79BEA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08D79BD4
_08D79BF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D79BF8
sub_08D79BF8: @ 0x08D79BF8
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08D79C5C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08D79C20
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08D79C20:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08D79C36
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08D79C36:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08D79C42
	adds r1, r0, #0
	b _08D79C48
_08D79C42:
	cmp r1, #0x7f
	ble _08D79C48
	movs r1, #0x7f
_08D79C48:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08D79C5C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08D79CA0
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08D79C9A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08D79C9A:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08D79CA0:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D79CAC
sub_08D79CAC: @ 0x08D79CAC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08D79CE4
	cmp r5, #0x14
	bhi _08D79CC8
	movs r5, #0
	b _08D79CD6
_08D79CC8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08D79CD6
	movs r5, #0x3b
_08D79CD6:
	ldr r0, _08D79CE0 @ =gUnk_02010370
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08D79D46
	.align 2, 0
_08D79CE0: .4byte gUnk_02010370
_08D79CE4:
	cmp r5, #0x23
	bhi _08D79CF0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08D79D02
_08D79CF0:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08D79D02
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08D79D02:
	ldr r3, _08D79D4C @ =gUnk_020102D4
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08D79D50 @ =gUnk_02010358
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08D79D46:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D79D4C: .4byte gUnk_020102D4
_08D79D50: .4byte gUnk_02010358

	thumb_func_start sub_08D79D54
sub_08D79D54: @ 0x08D79D54
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08D79D7C
	cmp r0, #2
	bgt _08D79D68
	cmp r0, #1
	beq _08D79D6E
	b _08D79D90
_08D79D68:
	cmp r1, #3
	beq _08D79D84
	b _08D79D90
_08D79D6E:
	ldr r1, _08D79D78 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08D79D98
	.align 2, 0
_08D79D78: .4byte 0x04000063
_08D79D7C:
	ldr r1, _08D79D80 @ =0x04000069
	b _08D79D92
	.align 2, 0
_08D79D80: .4byte 0x04000069
_08D79D84:
	ldr r1, _08D79D8C @ =0x04000070
	movs r0, #0
	b _08D79D9A
	.align 2, 0
_08D79D8C: .4byte 0x04000070
_08D79D90:
	ldr r1, _08D79DA0 @ =0x04000079
_08D79D92:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08D79D98:
	movs r0, #0x80
_08D79D9A:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08D79DA0: .4byte 0x04000079

	thumb_func_start sub_08D79DA4
sub_08D79DA4: @ 0x08D79DA4
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08D79DC4
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08D79DD0
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08D79DDE
_08D79DC4:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08D79DD0
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08D79DDE
_08D79DD0:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08D79DEE
_08D79DDE:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08D79DF0
	movs r0, #0xf
_08D79DEE:
	strb r0, [r1, #0xa]
_08D79DF0:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D79E0C
sub_08D79E0C: @ 0x08D79E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08D79E2C @ =gUnk_03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08D79E30
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08D79E36
	.align 2, 0
_08D79E2C: .4byte gUnk_03007FF0
_08D79E30:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08D79E36:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08D79E3C:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08D79E52
	b _08D7A23C
_08D79E52:
	cmp r6, #2
	beq _08D79E84
	cmp r6, #2
	bgt _08D79E60
	cmp r6, #1
	beq _08D79E66
	b _08D79EBC
_08D79E60:
	cmp r6, #3
	beq _08D79E9C
	b _08D79EBC
_08D79E66:
	ldr r0, _08D79E78 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08D79E7C @ =0x04000062
	ldr r2, _08D79E80 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08D79ECC
	.align 2, 0
_08D79E78: .4byte 0x04000060
_08D79E7C: .4byte 0x04000062
_08D79E80: .4byte 0x04000063
_08D79E84:
	ldr r0, _08D79E90 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08D79E94 @ =0x04000068
	ldr r2, _08D79E98 @ =0x04000069
	b _08D79EC4
	.align 2, 0
_08D79E90: .4byte 0x04000061
_08D79E94: .4byte 0x04000068
_08D79E98: .4byte 0x04000069
_08D79E9C:
	ldr r0, _08D79EB0 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08D79EB4 @ =0x04000072
	ldr r2, _08D79EB8 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08D79ECC
	.align 2, 0
_08D79EB0: .4byte 0x04000070
_08D79EB4: .4byte 0x04000072
_08D79EB8: .4byte 0x04000073
_08D79EBC:
	ldr r0, _08D79F1C @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08D79F20 @ =0x04000078
	ldr r2, _08D79F24 @ =0x04000079
_08D79EC4:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08D79ECC:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08D79FC2
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _08D79FE6
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_08D79DA4
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08D79F34
	cmp r6, #2
	bgt _08D79F28
	cmp r6, #1
	beq _08D79F2E
	b _08D79F88
	.align 2, 0
_08D79F1C: .4byte 0x04000071
_08D79F20: .4byte 0x04000078
_08D79F24: .4byte 0x04000079
_08D79F28:
	cmp r6, #3
	beq _08D79F40
	b _08D79F88
_08D79F2E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08D79F34:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08D79F94
_08D79F40:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08D79F68
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08D79F7C @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_08D79F68:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08D79F80
	movs r0, #0xc0
	b _08D79FA2
	.align 2, 0
_08D79F7C: .4byte 0x04000090
_08D79F80:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08D79FA4
_08D79F88:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08D79F94:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08D79FA2
	movs r0, #0x40
_08D79FA2:
	strb r0, [r4, #0x1a]
_08D79FA4:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _08D79FBE
	b _08D7A0FA
_08D79FBE:
	strb r2, [r4, #9]
	b _08D7A128
_08D79FC2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08D79FF4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _08D79FE6
	b _08D7A13A
_08D79FE6:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08D79D54
	movs r0, #0
	strb r0, [r4]
	b _08D7A238
_08D79FF4:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08D7A034
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D7A034
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08D7A066
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08D7A128
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08D7A128
_08D7A034:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08D7A128
	cmp r6, #3
	bne _08D7A046
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08D7A046:
	adds r0, r4, #0
	bl sub_08D79DA4
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08D7A09A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08D7A096
_08D7A066:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08D79FE6
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08D7A13A
	movs r2, #8
	mov r8, r2
	b _08D7A13A
_08D7A096:
	ldrb r0, [r4, #7]
	b _08D7A126
_08D7A09A:
	cmp r0, #1
	bne _08D7A0A6
_08D7A09E:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08D7A126
_08D7A0A6:
	cmp r0, #2
	bne _08D7A0EA
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08D7A0E6
_08D7A0BE:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08D7A0CE
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08D7A066
_08D7A0CE:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08D7A09E
	movs r0, #8
	mov r8, r0
	b _08D7A09E
_08D7A0E6:
	ldrb r0, [r4, #5]
	b _08D7A126
_08D7A0EA:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08D7A124
_08D7A0FA:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08D7A0BE
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08D7A128
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08D7A128
_08D7A124:
	ldrb r0, [r4, #4]
_08D7A126:
	strb r0, [r4, #0xb]
_08D7A128:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08D7A13A
	subs r0, #1
	str r0, [sp]
	b _08D7A034
_08D7A13A:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08D7A1B2
	cmp r6, #3
	bgt _08D7A17A
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08D7A17A
	ldr r0, _08D7A164 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08D7A16C
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08D7A168 @ =0x000007FC
	b _08D7A176
	.align 2, 0
_08D7A164: .4byte 0x04000089
_08D7A168: .4byte 0x000007FC
_08D7A16C:
	cmp r0, #0x7f
	bgt _08D7A17A
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08D7A188 @ =0x000007FE
_08D7A176:
	ands r0, r1
	str r0, [r4, #0x20]
_08D7A17A:
	cmp r6, #4
	beq _08D7A18C
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08D7A19A
	.align 2, 0
_08D7A188: .4byte 0x000007FE
_08D7A18C:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08D7A19A:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08D7A1B2:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08D7A238
	ldr r1, _08D7A1FC @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08D7A204
	ldr r0, _08D7A200 @ =gUnk_020103AC
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _08D7A238
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08D7A238
	.align 2, 0
_08D7A1FC: .4byte 0x04000081
_08D7A200: .4byte gUnk_020103AC
_08D7A204:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _08D7A238
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08D7A238
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08D7A238:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08D7A23C:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08D7A246
	b _08D79E3C
_08D7A246:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D7A258
sub_08D7A258: @ 0x08D7A258
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D7A27C @ =0x68736D53
	cmp r3, r0
	bne _08D7A274
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08D7A274:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7A27C: .4byte 0x68736D53

	thumb_func_start sub_08D7A280
sub_08D7A280: @ 0x08D7A280
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08D7A2E4 @ =0x68736D53
	cmp r3, r0
	bne _08D7A2D8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08D7A2D4
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08D7A2B0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08D7A2CA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08D7A2CA
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08D7A2CA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08D7A2B0
_08D7A2D4:
	ldr r0, _08D7A2E4 @ =0x68736D53
	str r0, [r4, #0x34]
_08D7A2D8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7A2E4: .4byte 0x68736D53

	thumb_func_start sub_08D7A2E8
sub_08D7A2E8: @ 0x08D7A2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08D7A358 @ =0x68736D53
	cmp r3, r0
	bne _08D7A34A
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08D7A346
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08D7A320:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08D7A33C
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08D7A33C
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08D7A33C:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08D7A320
_08D7A346:
	ldr r0, _08D7A358 @ =0x68736D53
	str r0, [r4, #0x34]
_08D7A34A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7A358: .4byte 0x68736D53

	thumb_func_start sub_08D7A35C
sub_08D7A35C: @ 0x08D7A35C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08D7A3C0 @ =0x68736D53
	cmp r3, r0
	bne _08D7A3B4
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08D7A3B0
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08D7A38C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08D7A3A6
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08D7A3A6
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08D7A3A6:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08D7A38C
_08D7A3B0:
	ldr r0, _08D7A3C0 @ =0x68736D53
	str r0, [r4, #0x34]
_08D7A3B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7A3C0: .4byte 0x68736D53

	thumb_func_start sub_08D7A3C4
sub_08D7A3C4: @ 0x08D7A3C4
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08D7A3D8
	movs r0, #0xc
	b _08D7A3DA
_08D7A3D8:
	movs r0, #3
_08D7A3DA:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7A3E4
sub_08D7A3E4: @ 0x08D7A3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08D7A454 @ =0x68736D53
	cmp r1, r0
	bne _08D7A444
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08D7A440
	mov sb, r8
_08D7A414:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08D7A436
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08D7A436
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08D7A436
	adds r0, r4, #0
	bl sub_08D7A3C4
_08D7A436:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08D7A414
_08D7A440:
	ldr r0, _08D7A454 @ =0x68736D53
	str r0, [r6, #0x34]
_08D7A444:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7A454: .4byte 0x68736D53

	thumb_func_start sub_08D7A458
sub_08D7A458: @ 0x08D7A458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08D7A4C8 @ =0x68736D53
	cmp r1, r0
	bne _08D7A4B8
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08D7A4B4
	mov sb, r8
_08D7A488:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08D7A4AA
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08D7A4AA
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08D7A4AA
	adds r0, r4, #0
	bl sub_08D7A3C4
_08D7A4AA:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08D7A488
_08D7A4B4:
	ldr r0, _08D7A4C8 @ =0x68736D53
	str r0, [r6, #0x34]
_08D7A4B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7A4C8: .4byte 0x68736D53

	thumb_func_start sub_08D7A4CC
sub_08D7A4CC: @ 0x08D7A4CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08D7A4F0
	b _08D7A61E
_08D7A4F0:
	lsls r0, r5, #2
	ldr r1, _08D7A4FC @ =gUnk_02008538
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08D7A4FC: .4byte gUnk_02008538
_08D7A500: @ jump table
	.4byte 0x02008580 @ case 0
	.4byte 0x02008584 @ case 1
	.4byte 0x0200858C @ case 2
	.4byte 0x02008594 @ case 3
	.4byte 0x0200859E @ case 4
	.4byte 0x020085AC @ case 5
	.4byte 0x020085BA @ case 6
	.4byte 0x020085C2 @ case 7
	.4byte 0x020085CA @ case 8
	.4byte 0x020085D2 @ case 9
	.4byte 0x020085DA @ case 10
	.4byte 0x020085E2 @ case 11
	.4byte 0x020085EA @ case 12
	.4byte 0x020085F8 @ case 13
	.4byte 0x02008606 @ case 14
	.4byte 0x02008614 @ case 15
	.4byte 0x02008622 @ case 16
	.4byte 0x02008630 @ case 17
_08D7A548:
	strb r2, [r3]
	b _08D7A61E
_08D7A54C:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08D7A61E
_08D7A554:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08D7A61E
_08D7A55C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08D7A61E
_08D7A566:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08D7A61E
_08D7A574:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08D7A61E
_08D7A582:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08D7A604
	b _08D7A618
_08D7A58A:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08D7A604
	b _08D7A618
_08D7A592:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08D7A604
	b _08D7A618
_08D7A59A:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08D7A604
	b _08D7A618
_08D7A5A2:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08D7A604
	b _08D7A618
_08D7A5AA:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08D7A604
	b _08D7A618
_08D7A5B2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08D7A604
	b _08D7A618
_08D7A5C0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08D7A604
	b _08D7A618
_08D7A5CE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08D7A604
	b _08D7A618
_08D7A5DC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08D7A604
	b _08D7A618
_08D7A5EA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08D7A604
	b _08D7A618
_08D7A5F8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08D7A618
_08D7A604:
	ldr r0, _08D7A614 @ =gUnk_020200A4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08D7D8C4
	b _08D7A61E
	.align 2, 0
_08D7A614: .4byte gUnk_020200A4
_08D7A618:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08D7A61E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D7A624
sub_08D7A624: @ 0x08D7A624
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08D7A640 @ =gUnk_020103F0
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_08D7D8C4
	pop {r0}
	bx r0
	.align 2, 0
_08D7A640: .4byte gUnk_020103F0

	thumb_func_start sub_08D7A644
sub_08D7A644: @ 0x08D7A644
	push {lr}
	ldr r2, _08D7A654 @ =gUnk_020200A0
	ldr r2, [r2]
	bl sub_08D7D8C4
	pop {r0}
	bx r0
	.align 2, 0
_08D7A654: .4byte gUnk_020200A0

	thumb_func_start sub_08D7A658
sub_08D7A658: @ 0x08D7A658
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08D7A690 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08D7A694 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08D7A698 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08D7A69C @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7A690: .4byte 0xFFFFFF00
_08D7A694: .4byte 0xFFFF00FF
_08D7A698: .4byte 0xFF00FFFF
_08D7A69C: .4byte 0x00FFFFFF

	thumb_func_start sub_08D7A6A0
sub_08D7A6A0: @ 0x08D7A6A0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7A6B4
sub_08D7A6B4: @ 0x08D7A6B4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7A6C8
sub_08D7A6C8: @ 0x08D7A6C8
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7A6DC
sub_08D7A6DC: @ 0x08D7A6DC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7A6F0
sub_08D7A6F0: @ 0x08D7A6F0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7A704
sub_08D7A704: @ 0x08D7A704
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08D7A710
sub_08D7A710: @ 0x08D7A710
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08D7A71C
sub_08D7A71C: @ 0x08D7A71C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7A730
sub_08D7A730: @ 0x08D7A730
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_91
nullsub_91: @ 0x08D7A744
	bx lr
	.align 2, 0
