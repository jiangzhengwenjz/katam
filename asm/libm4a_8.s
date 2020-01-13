	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E28104
sub_08E28104: @ 0x08E28104
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08E28118
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08E28118:
	ldr r3, _08E28160 @ =gUnk_020143D8
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08E28164 @ =gUnk_0201448C
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
	bl sub_08E274E8
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_08E274E8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E28160: .4byte gUnk_020143D8
_08E28164: .4byte gUnk_0201448C

	thumb_func_start nullsub_63
nullsub_63: @ 0x08E28168
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2816C
sub_08E2816C: @ 0x08E2816C
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08E28180 @ =0x68736D53
	cmp r3, r0
	bne _08E2817E
	ldr r0, [r2, #4]
	ldr r1, _08E28184 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08E2817E:
	bx lr
	.align 2, 0
_08E28180: .4byte 0x68736D53
_08E28184: .4byte 0x7FFFFFFF

	thumb_func_start sub_08E28188
sub_08E28188: @ 0x08E28188
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E281A4 @ =0x68736D53
	cmp r3, r0
	bne _08E281A0
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08E281A0:
	bx lr
	.align 2, 0
_08E281A4: .4byte 0x68736D53

	thumb_func_start sub_08E281A8
sub_08E281A8: @ 0x08E281A8
	push {r4, r5, r6, lr}
	ldr r0, _08E281FC @ =gUnk_02007755
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08E28200 @ =gUnk_03000000
	ldr r2, _08E28204 @ =0x04000100
	bl sub_08E2C7F0
	ldr r0, _08E28208 @ =gUnk_02022E20
	bl sub_08E285A8
	ldr r0, _08E2820C @ =gUnk_02023E60
	bl sub_08E28464
	ldr r0, _08E28210 @ =0x0095FA00
	bl sub_08E28744
	ldr r0, _08E28214 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E281F6
	ldr r5, _08E28218 @ =gUnk_02015200
	adds r6, r0, #0
_08E281DA:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08E288E8
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08E2821C @ =gUnk_02024020
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08E281DA
_08E281F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E281FC: .4byte gUnk_02007755
_08E28200: .4byte gUnk_03000000
_08E28204: .4byte 0x04000100
_08E28208: .4byte gUnk_02022E20
_08E2820C: .4byte gUnk_02023E60
_08E28210: .4byte 0x0095FA00
_08E28214: .4byte 0x00000003
_08E28218: .4byte gUnk_02015200
_08E2821C: .4byte gUnk_02024020

	thumb_func_start sub_08E28220
sub_08E28220: @ 0x08E28220
	push {lr}
	bl sub_08E274F8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E2822C
sub_08E2822C: @ 0x08E2822C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E28250 @ =gUnk_02015200
	ldr r1, _08E28254 @ =gUnk_02015224
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
	bl sub_08E28960
	pop {r0}
	bx r0
	.align 2, 0
_08E28250: .4byte gUnk_02015200
_08E28254: .4byte gUnk_02015224

	thumb_func_start sub_08E28258
sub_08E28258: @ 0x08E28258
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E28284 @ =gUnk_02015200
	ldr r1, _08E28288 @ =gUnk_02015224
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
	beq _08E2828C
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08E28960
	b _08E282A0
	.align 2, 0
_08E28284: .4byte gUnk_02015200
_08E28288: .4byte gUnk_02015224
_08E2828C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08E28298
	cmp r2, #0
	bge _08E282A0
_08E28298:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08E28960
_08E282A0:
	pop {r0}
	bx r0

	thumb_func_start sub_08E282A4
sub_08E282A4: @ 0x08E282A4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E282D0 @ =gUnk_02015200
	ldr r1, _08E282D4 @ =gUnk_02015224
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
	beq _08E282D8
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08E28960
	b _08E282F4
	.align 2, 0
_08E282D0: .4byte gUnk_02015200
_08E282D4: .4byte gUnk_02015224
_08E282D8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08E282EA
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08E28960
	b _08E282F4
_08E282EA:
	cmp r2, #0
	bge _08E282F4
	adds r0, r1, #0
	bl sub_08E2816C
_08E282F4:
	pop {r0}
	bx r0

	thumb_func_start sub_08E282F8
sub_08E282F8: @ 0x08E282F8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E28324 @ =gUnk_02015200
	ldr r1, _08E28328 @ =gUnk_02015224
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
	bne _08E2831E
	adds r0, r2, #0
	bl sub_08E28A44
_08E2831E:
	pop {r0}
	bx r0
	.align 2, 0
_08E28324: .4byte gUnk_02015200
_08E28328: .4byte gUnk_02015224

	thumb_func_start sub_08E2832C
sub_08E2832C: @ 0x08E2832C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E28358 @ =gUnk_02015200
	ldr r1, _08E2835C @ =gUnk_02015224
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
	bne _08E28352
	adds r0, r2, #0
	bl sub_08E2816C
_08E28352:
	pop {r0}
	bx r0
	.align 2, 0
_08E28358: .4byte gUnk_02015200
_08E2835C: .4byte gUnk_02015224

	thumb_func_start sub_08E28360
sub_08E28360: @ 0x08E28360
	push {r4, r5, lr}
	ldr r0, _08E28384 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E2837E
	ldr r5, _08E28388 @ =gUnk_02015200
	adds r4, r0, #0
_08E28370:
	ldr r0, [r5]
	bl sub_08E28A44
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08E28370
_08E2837E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E28384: .4byte 0x00000003
_08E28388: .4byte gUnk_02015200

	thumb_func_start sub_08E2838C
sub_08E2838C: @ 0x08E2838C
	push {lr}
	bl sub_08E2816C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E28398
sub_08E28398: @ 0x08E28398
	push {r4, r5, lr}
	ldr r0, _08E283BC @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E283B6
	ldr r5, _08E283C0 @ =gUnk_02015200
	adds r4, r0, #0
_08E283A8:
	ldr r0, [r5]
	bl sub_08E2816C
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08E283A8
_08E283B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E283BC: .4byte 0x00000003
_08E283C0: .4byte gUnk_02015200

	thumb_func_start sub_08E283C4
sub_08E283C4: @ 0x08E283C4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08E28188
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E283D4
sub_08E283D4: @ 0x08E283D4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E283EC @ =0x68736D53
	cmp r3, r0
	bne _08E283EA
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08E283F0 @ =0x00000101
	strh r0, [r2, #0x28]
_08E283EA:
	bx lr
	.align 2, 0
_08E283EC: .4byte 0x68736D53
_08E283F0: .4byte 0x00000101

	thumb_func_start sub_08E283F4
sub_08E283F4: @ 0x08E283F4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E28414 @ =0x68736D53
	cmp r3, r0
	bne _08E28412
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08E28418 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08E28412:
	bx lr
	.align 2, 0
_08E28414: .4byte 0x68736D53
_08E28418: .4byte 0x7FFFFFFF

	thumb_func_start sub_08E2841C
sub_08E2841C: @ 0x08E2841C
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _08E2845E
	movs r7, #0x80
_08E28428:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E28456
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08E28456
	adds r0, r4, #0
	bl sub_08E28594
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
_08E28456:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E28428
_08E2845E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E28464
sub_08E28464: @ 0x08E28464
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E2852C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08E28530 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08E28534 @ =0x04000063
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
	ldr r0, _08E28538 @ =SOUND_INFO_PTR
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08E2853C @ =0x68736D53
	cmp r6, r0
	bne _08E28524
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08E28540 @ =gUnk_02023DD0
	ldr r0, _08E28544 @ =gUnk_020095F9
	str r0, [r1, #0x20]
	ldr r0, _08E28548 @ =gUnk_020082B5
	str r0, [r1, #0x44]
	ldr r0, _08E2854C @ =gUnk_020082C9
	str r0, [r1, #0x4c]
	ldr r0, _08E28550 @ =gUnk_02009751
	str r0, [r1, #0x70]
	ldr r0, _08E28554 @ =gUnk_0200824D
	str r0, [r1, #0x74]
	ldr r0, _08E28558 @ =gUnk_02008879
	str r0, [r1, #0x78]
	ldr r0, _08E2855C @ =gUnk_02007FD9
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08E28560 @ =gUnk_02008C5D
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08E28564 @ =gUnk_02008D25
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08E28568 @ =gUnk_02008F39
	str r0, [r4, #0x28]
	ldr r0, _08E2856C @ =gUnk_02008E81
	str r0, [r4, #0x2c]
	ldr r0, _08E28570 @ =gUnk_02008DD9
	str r0, [r4, #0x30]
	ldr r0, _08E28574 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08E28578 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E2C7F0
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
_08E28524:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E2852C: .4byte 0x04000084
_08E28530: .4byte 0x04000080
_08E28534: .4byte 0x04000063
_08E28538: .4byte SOUND_INFO_PTR
_08E2853C: .4byte 0x68736D53
_08E28540: .4byte gUnk_02023DD0
_08E28544: .4byte gUnk_020095F9
_08E28548: .4byte gUnk_020082B5
_08E2854C: .4byte gUnk_020082C9
_08E28550: .4byte gUnk_02009751
_08E28554: .4byte gUnk_0200824D
_08E28558: .4byte gUnk_02008879
_08E2855C: .4byte gUnk_02007FD9
_08E28560: .4byte gUnk_02008C5D
_08E28564: .4byte gUnk_02008D25
_08E28568: .4byte gUnk_02008F39
_08E2856C: .4byte gUnk_02008E81
_08E28570: .4byte gUnk_02008DD9
_08E28574: .4byte 0x00000000
_08E28578: .4byte 0x05000040

	thumb_func_start sub_08E2857C
sub_08E2857C: @ 0x08E2857C
	svc #0x2a
	bx lr

	thumb_func_start sub_08E28580
sub_08E28580: @ 0x08E28580
	push {lr}
	ldr r1, _08E28590 @ =gUnk_02023E58
	ldr r1, [r1]
	bl sub_08E2C810
	pop {r0}
	bx r0
	.align 2, 0
_08E28590: .4byte gUnk_02023E58

	thumb_func_start sub_08E28594
sub_08E28594: @ 0x08E28594
	push {lr}
	ldr r1, _08E285A4 @ =gUnk_02023E5C
	ldr r1, [r1]
	bl sub_08E2C810
	pop {r0}
	bx r0
	.align 2, 0
_08E285A4: .4byte gUnk_02023E5C

	thumb_func_start sub_08E285A8
sub_08E285A8: @ 0x08E285A8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08E28660 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08E285C4
	ldr r0, _08E28664 @ =0x84400004
	str r0, [r1]
_08E285C4:
	ldr r1, _08E28668 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08E285D2
	ldr r0, _08E28664 @ =0x84400004
	str r0, [r1]
_08E285D2:
	ldr r0, _08E2866C @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08E28670 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08E28674 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E28678 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08E2867C @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08E28680 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08E28684 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08E28688 @ =SOUND_INFO_PTR
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08E2868C @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E2C7F0
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08E28690 @ =gUnk_0200804D
	str r0, [r5, #0x38]
	ldr r0, _08E28694 @ =gUnk_02009871
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08E28698 @ =gUnk_02023DD0
	adds r0, r4, #0
	bl sub_08E27988
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08E286A0
	ldr r0, _08E2869C @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E28660: .4byte 0x040000C4
_08E28664: .4byte 0x84400004
_08E28668: .4byte 0x040000D0
_08E2866C: .4byte 0x040000C6
_08E28670: .4byte 0x04000084
_08E28674: .4byte 0x0000A90E
_08E28678: .4byte 0x04000089
_08E2867C: .4byte 0x040000BC
_08E28680: .4byte 0x040000A0
_08E28684: .4byte 0x040000A4
_08E28688: .4byte SOUND_INFO_PTR
_08E2868C: .4byte 0x050003EC
_08E28690: .4byte gUnk_0200804D
_08E28694: .4byte gUnk_02009871
_08E28698: .4byte gUnk_02023DD0
_08E2869C: .4byte 0x68736D53

	thumb_func_start sub_08E286A0
sub_08E286A0: @ 0x08E286A0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08E28720 @ =SOUND_INFO_PTR
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08E28724 @ =gUnk_020144BC
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_08E2C848
	strb r0, [r4, #0xb]
	ldr r0, _08E28728 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08E2872C @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08E28730 @ =0x00002710
	bl sub_08E2C848
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08E2C848
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08E28734 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08E28738 @ =0x04000100
	ldr r0, _08E2873C @ =0x00044940
	adds r1, r5, #0
	bl sub_08E2C848
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_08E288AC
	ldr r1, _08E28740 @ =0x04000006
_08E28704:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08E28704
	ldr r1, _08E28740 @ =0x04000006
_08E2870C:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08E2870C
	ldr r1, _08E28734 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E28720: .4byte SOUND_INFO_PTR
_08E28724: .4byte gUnk_020144BC
_08E28728: .4byte 0x00091D1B
_08E2872C: .4byte 0x00001388
_08E28730: .4byte 0x00002710
_08E28734: .4byte 0x04000102
_08E28738: .4byte 0x04000100
_08E2873C: .4byte 0x00044940
_08E28740: .4byte 0x04000006

	thumb_func_start sub_08E28744
sub_08E28744: @ 0x08E28744
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08E287D0 @ =SOUND_INFO_PTR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08E287D4 @ =0x68736D53
	cmp r1, r0
	bne _08E287CA
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08E28766
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08E28766:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08E28786
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08E2877C:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08E2877C
_08E28786:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08E28794
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08E28794:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08E287B2
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08E287D8 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08E287B2:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08E287C6
	bl sub_08E28830
	adds r0, r4, #0
	bl sub_08E286A0
_08E287C6:
	ldr r0, _08E287D4 @ =0x68736D53
	str r0, [r5]
_08E287CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E287D0: .4byte SOUND_INFO_PTR
_08E287D4: .4byte 0x68736D53
_08E287D8: .4byte 0x04000089

	thumb_func_start sub_08E287DC
sub_08E287DC: @ 0x08E287DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E28828 @ =SOUND_INFO_PTR
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08E2882C @ =0x68736D53
	cmp r1, r0
	bne _08E28822
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08E287F6:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08E287F6
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _08E2881E
	movs r5, #1
	movs r7, #0
_08E2880A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_08E2C810
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _08E2880A
_08E2881E:
	ldr r0, _08E2882C @ =0x68736D53
	str r0, [r6]
_08E28822:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E28828: .4byte SOUND_INFO_PTR
_08E2882C: .4byte 0x68736D53

	thumb_func_start sub_08E28830
sub_08E28830: @ 0x08E28830
	push {lr}
	sub sp, #4
	ldr r0, _08E28890 @ =SOUND_INFO_PTR
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08E28894 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08E28888
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08E28898 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08E2885A
	ldr r0, _08E2889C @ =0x84400004
	str r0, [r1]
_08E2885A:
	ldr r1, _08E288A0 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08E28868
	ldr r0, _08E2889C @ =0x84400004
	str r0, [r1]
_08E28868:
	ldr r0, _08E288A4 @ =0x040000C6
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
	ldr r2, _08E288A8 @ =0x05000318
	mov r0, sp
	bl sub_08E2C7F0
_08E28888:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E28890: .4byte SOUND_INFO_PTR
_08E28894: .4byte 0x978C92AD
_08E28898: .4byte 0x040000C4
_08E2889C: .4byte 0x84400004
_08E288A0: .4byte 0x040000D0
_08E288A4: .4byte 0x040000C6
_08E288A8: .4byte 0x05000318

	thumb_func_start sub_08E288AC
sub_08E288AC: @ 0x08E288AC
	push {r4, lr}
	ldr r0, _08E288DC @ =SOUND_INFO_PTR
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08E288E0 @ =0x68736D53
	cmp r3, r0
	beq _08E288D4
	ldr r0, _08E288E4 @ =0x040000C6
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
_08E288D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E288DC: .4byte SOUND_INFO_PTR
_08E288E0: .4byte 0x68736D53
_08E288E4: .4byte 0x040000C6

	thumb_func_start sub_08E288E8
sub_08E288E8: @ 0x08E288E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08E2894C
	cmp r4, #0x10
	bls _08E288FC
	movs r4, #0x10
_08E288FC:
	ldr r0, _08E28954 @ =SOUND_INFO_PTR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08E28958 @ =0x68736D53
	cmp r1, r0
	bne _08E2894C
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_08E28594
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08E28930
	movs r1, #0
_08E28922:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08E28922
_08E28930:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08E28940
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08E28940:
	str r7, [r5, #0x24]
	ldr r0, _08E2895C @ =gUnk_02007D71
	str r0, [r5, #0x20]
	ldr r0, _08E28958 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08E2894C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E28954: .4byte SOUND_INFO_PTR
_08E28958: .4byte 0x68736D53
_08E2895C: .4byte gUnk_02007D71

	thumb_func_start sub_08E28960
sub_08E28960: @ 0x08E28960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08E28A40 @ =0x68736D53
	cmp r1, r0
	bne _08E28A36
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08E289A2
	ldr r0, [r5]
	cmp r0, #0
	beq _08E2898C
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08E28998
_08E2898C:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08E289A2
	cmp r1, #0
	blt _08E289A2
_08E28998:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08E28A36
_08E289A2:
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
	bge _08E28A02
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08E28A22
	mov r8, r6
_08E289D6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E27E00
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
	bge _08E28A02
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08E289D6
_08E28A02:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08E28A22
	movs r1, #0
	mov r8, r1
_08E28A0C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E27E00
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08E28A0C
_08E28A22:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08E28A32
	ldrb r0, [r7, #3]
	bl sub_08E28744
_08E28A32:
	ldr r0, _08E28A40 @ =0x68736D53
	str r0, [r5, #0x34]
_08E28A36:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E28A40: .4byte 0x68736D53

	thumb_func_start sub_08E28A44
sub_08E28A44: @ 0x08E28A44
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08E28A80 @ =0x68736D53
	cmp r1, r0
	bne _08E28A7A
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
	ble _08E28A76
_08E28A66:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08E27E00
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08E28A66
_08E28A76:
	ldr r0, _08E28A80 @ =0x68736D53
	str r0, [r6, #0x34]
_08E28A7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E28A80: .4byte 0x68736D53

	thumb_func_start sub_08E28A84
sub_08E28A84: @ 0x08E28A84
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08E28B46
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08E28AC4 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08E28B46
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E28AC8
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08E28B1A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08E28B1A
	.align 2, 0
_08E28AC4: .4byte 0x0000FFFF
_08E28AC8:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08E28B1A
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08E28AFA
_08E28ADE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08E27E00
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08E28AF2
	strb r0, [r4]
_08E28AF2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E28ADE
_08E28AFA:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08E28B0E
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08E28B12
_08E28B0E:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08E28B12:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08E28B46
_08E28B1A:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08E28B46
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08E28B28:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08E28B3E
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08E28B3E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E28B28
_08E28B46:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E28B4C
sub_08E28B4C: @ 0x08E28B4C
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08E28BB0
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08E28B74
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08E28B74:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08E28B8A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08E28B8A:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08E28B96
	adds r1, r0, #0
	b _08E28B9C
_08E28B96:
	cmp r1, #0x7f
	ble _08E28B9C
	movs r1, #0x7f
_08E28B9C:
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
_08E28BB0:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08E28BF4
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
	bne _08E28BEE
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08E28BEE:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08E28BF4:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E28C00
sub_08E28C00: @ 0x08E28C00
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08E28C38
	cmp r5, #0x14
	bhi _08E28C1C
	movs r5, #0
	b _08E28C2A
_08E28C1C:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08E28C2A
	movs r5, #0x3b
_08E28C2A:
	ldr r0, _08E28C34 @ =gUnk_02014570
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08E28C9A
	.align 2, 0
_08E28C34: .4byte gUnk_02014570
_08E28C38:
	cmp r5, #0x23
	bhi _08E28C44
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08E28C56
_08E28C44:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08E28C56
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08E28C56:
	ldr r3, _08E28CA0 @ =gUnk_020144D4
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08E28CA4 @ =gUnk_02014558
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
_08E28C9A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E28CA0: .4byte gUnk_020144D4
_08E28CA4: .4byte gUnk_02014558

	thumb_func_start sub_08E28CA8
sub_08E28CA8: @ 0x08E28CA8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08E28CD0
	cmp r0, #2
	bgt _08E28CBC
	cmp r0, #1
	beq _08E28CC2
	b _08E28CE4
_08E28CBC:
	cmp r1, #3
	beq _08E28CD8
	b _08E28CE4
_08E28CC2:
	ldr r1, _08E28CCC @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08E28CEC
	.align 2, 0
_08E28CCC: .4byte 0x04000063
_08E28CD0:
	ldr r1, _08E28CD4 @ =0x04000069
	b _08E28CE6
	.align 2, 0
_08E28CD4: .4byte 0x04000069
_08E28CD8:
	ldr r1, _08E28CE0 @ =0x04000070
	movs r0, #0
	b _08E28CEE
	.align 2, 0
_08E28CE0: .4byte 0x04000070
_08E28CE4:
	ldr r1, _08E28CF4 @ =0x04000079
_08E28CE6:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08E28CEC:
	movs r0, #0x80
_08E28CEE:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08E28CF4: .4byte 0x04000079

	thumb_func_start sub_08E28CF8
sub_08E28CF8: @ 0x08E28CF8
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08E28D18
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08E28D24
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08E28D32
_08E28D18:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08E28D24
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08E28D32
_08E28D24:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08E28D42
_08E28D32:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08E28D44
	movs r0, #0xf
_08E28D42:
	strb r0, [r1, #0xa]
_08E28D44:
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

	thumb_func_start sub_08E28D60
sub_08E28D60: @ 0x08E28D60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08E28D80 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08E28D84
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08E28D8A
	.align 2, 0
_08E28D80: .4byte SOUND_INFO_PTR
_08E28D84:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08E28D8A:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08E28D90:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08E28DA6
	b _08E29190
_08E28DA6:
	cmp r6, #2
	beq _08E28DD8
	cmp r6, #2
	bgt _08E28DB4
	cmp r6, #1
	beq _08E28DBA
	b _08E28E10
_08E28DB4:
	cmp r6, #3
	beq _08E28DF0
	b _08E28E10
_08E28DBA:
	ldr r0, _08E28DCC @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08E28DD0 @ =0x04000062
	ldr r2, _08E28DD4 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08E28E20
	.align 2, 0
_08E28DCC: .4byte 0x04000060
_08E28DD0: .4byte 0x04000062
_08E28DD4: .4byte 0x04000063
_08E28DD8:
	ldr r0, _08E28DE4 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08E28DE8 @ =0x04000068
	ldr r2, _08E28DEC @ =0x04000069
	b _08E28E18
	.align 2, 0
_08E28DE4: .4byte 0x04000061
_08E28DE8: .4byte 0x04000068
_08E28DEC: .4byte 0x04000069
_08E28DF0:
	ldr r0, _08E28E04 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08E28E08 @ =0x04000072
	ldr r2, _08E28E0C @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08E28E20
	.align 2, 0
_08E28E04: .4byte 0x04000070
_08E28E08: .4byte 0x04000072
_08E28E0C: .4byte 0x04000073
_08E28E10:
	ldr r0, _08E28E70 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08E28E74 @ =0x04000078
	ldr r2, _08E28E78 @ =0x04000079
_08E28E18:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08E28E20:
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
	beq _08E28F16
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
	bne _08E28F3A
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_08E28CF8
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08E28E88
	cmp r6, #2
	bgt _08E28E7C
	cmp r6, #1
	beq _08E28E82
	b _08E28EDC
	.align 2, 0
_08E28E70: .4byte 0x04000071
_08E28E74: .4byte 0x04000078
_08E28E78: .4byte 0x04000079
_08E28E7C:
	cmp r6, #3
	beq _08E28E94
	b _08E28EDC
_08E28E82:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08E28E88:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08E28EE8
_08E28E94:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08E28EBC
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08E28ED0 @ =0x04000090
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
_08E28EBC:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08E28ED4
	movs r0, #0xc0
	b _08E28EF6
	.align 2, 0
_08E28ED0: .4byte 0x04000090
_08E28ED4:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08E28EF8
_08E28EDC:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08E28EE8:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08E28EF6
	movs r0, #0x40
_08E28EF6:
	strb r0, [r4, #0x1a]
_08E28EF8:
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
	bne _08E28F12
	b _08E2904E
_08E28F12:
	strb r2, [r4, #9]
	b _08E2907C
_08E28F16:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08E28F48
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
	ble _08E28F3A
	b _08E2908E
_08E28F3A:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08E28CA8
	movs r0, #0
	strb r0, [r4]
	b _08E2918C
_08E28F48:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08E28F88
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08E28F88
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08E28FBA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E2907C
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08E2907C
_08E28F88:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08E2907C
	cmp r6, #3
	bne _08E28F9A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08E28F9A:
	adds r0, r4, #0
	bl sub_08E28CF8
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08E28FEE
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08E28FEA
_08E28FBA:
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
	beq _08E28F3A
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E2908E
	movs r2, #8
	mov r8, r2
	b _08E2908E
_08E28FEA:
	ldrb r0, [r4, #7]
	b _08E2907A
_08E28FEE:
	cmp r0, #1
	bne _08E28FFA
_08E28FF2:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08E2907A
_08E28FFA:
	cmp r0, #2
	bne _08E2903E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08E2903A
_08E29012:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08E29022
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08E28FBA
_08E29022:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E28FF2
	movs r0, #8
	mov r8, r0
	b _08E28FF2
_08E2903A:
	ldrb r0, [r4, #5]
	b _08E2907A
_08E2903E:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08E29078
_08E2904E:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08E29012
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08E2907C
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08E2907C
_08E29078:
	ldrb r0, [r4, #4]
_08E2907A:
	strb r0, [r4, #0xb]
_08E2907C:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08E2908E
	subs r0, #1
	str r0, [sp]
	b _08E28F88
_08E2908E:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08E29106
	cmp r6, #3
	bgt _08E290CE
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08E290CE
	ldr r0, _08E290B8 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08E290C0
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08E290BC @ =0x000007FC
	b _08E290CA
	.align 2, 0
_08E290B8: .4byte 0x04000089
_08E290BC: .4byte 0x000007FC
_08E290C0:
	cmp r0, #0x7f
	bgt _08E290CE
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08E290DC @ =0x000007FE
_08E290CA:
	ands r0, r1
	str r0, [r4, #0x20]
_08E290CE:
	cmp r6, #4
	beq _08E290E0
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08E290EE
	.align 2, 0
_08E290DC: .4byte 0x000007FE
_08E290E0:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08E290EE:
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
_08E29106:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08E2918C
	ldr r1, _08E29150 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08E29158
	ldr r0, _08E29154 @ =gUnk_020145AC
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
	beq _08E2918C
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08E2918C
	.align 2, 0
_08E29150: .4byte 0x04000081
_08E29154: .4byte gUnk_020145AC
_08E29158:
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
	bne _08E2918C
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08E2918C
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08E2918C:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08E29190:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08E2919A
	b _08E28D90
_08E2919A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E291AC
sub_08E291AC: @ 0x08E291AC
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E291D0 @ =0x68736D53
	cmp r3, r0
	bne _08E291C8
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08E291C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E291D0: .4byte 0x68736D53

	thumb_func_start sub_08E291D4
sub_08E291D4: @ 0x08E291D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08E29238 @ =0x68736D53
	cmp r3, r0
	bne _08E2922C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E29228
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08E29204:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08E2921E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08E2921E
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08E2921E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E29204
_08E29228:
	ldr r0, _08E29238 @ =0x68736D53
	str r0, [r4, #0x34]
_08E2922C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E29238: .4byte 0x68736D53

	thumb_func_start sub_08E2923C
sub_08E2923C: @ 0x08E2923C
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
	ldr r0, _08E292AC @ =0x68736D53
	cmp r3, r0
	bne _08E2929E
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E2929A
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08E29274:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08E29290
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08E29290
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08E29290:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E29274
_08E2929A:
	ldr r0, _08E292AC @ =0x68736D53
	str r0, [r4, #0x34]
_08E2929E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E292AC: .4byte 0x68736D53

	thumb_func_start sub_08E292B0
sub_08E292B0: @ 0x08E292B0
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
	ldr r0, _08E29314 @ =0x68736D53
	cmp r3, r0
	bne _08E29308
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E29304
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08E292E0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08E292FA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08E292FA
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08E292FA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E292E0
_08E29304:
	ldr r0, _08E29314 @ =0x68736D53
	str r0, [r4, #0x34]
_08E29308:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E29314: .4byte 0x68736D53

	thumb_func_start sub_08E29318
sub_08E29318: @ 0x08E29318
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08E2932C
	movs r0, #0xc
	b _08E2932E
_08E2932C:
	movs r0, #3
_08E2932E:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E29338
sub_08E29338: @ 0x08E29338
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
	ldr r0, _08E293A8 @ =0x68736D53
	cmp r1, r0
	bne _08E29398
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08E29394
	mov sb, r8
_08E29368:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08E2938A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08E2938A
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08E2938A
	adds r0, r4, #0
	bl sub_08E29318
_08E2938A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08E29368
_08E29394:
	ldr r0, _08E293A8 @ =0x68736D53
	str r0, [r6, #0x34]
_08E29398:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E293A8: .4byte 0x68736D53

	thumb_func_start sub_08E293AC
sub_08E293AC: @ 0x08E293AC
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
	ldr r0, _08E2941C @ =0x68736D53
	cmp r1, r0
	bne _08E2940C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08E29408
	mov sb, r8
_08E293DC:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08E293FE
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08E293FE
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08E293FE
	adds r0, r4, #0
	bl sub_08E29318
_08E293FE:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08E293DC
_08E29408:
	ldr r0, _08E2941C @ =0x68736D53
	str r0, [r6, #0x34]
_08E2940C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2941C: .4byte 0x68736D53

	thumb_func_start sub_08E29420
sub_08E29420: @ 0x08E29420
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
	bls _08E29444
	b _08E29572
_08E29444:
	lsls r0, r5, #2
	ldr r1, _08E29450 @ =gUnk_0200962C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08E29450: .4byte gUnk_0200962C
_08E29454: @ jump table
	.4byte 0x02009674 @ case 0
	.4byte 0x02009678 @ case 1
	.4byte 0x02009680 @ case 2
	.4byte 0x02009688 @ case 3
	.4byte 0x02009692 @ case 4
	.4byte 0x020096A0 @ case 5
	.4byte 0x020096AE @ case 6
	.4byte 0x020096B6 @ case 7
	.4byte 0x020096BE @ case 8
	.4byte 0x020096C6 @ case 9
	.4byte 0x020096CE @ case 10
	.4byte 0x020096D6 @ case 11
	.4byte 0x020096DE @ case 12
	.4byte 0x020096EC @ case 13
	.4byte 0x020096FA @ case 14
	.4byte 0x02009708 @ case 15
	.4byte 0x02009716 @ case 16
	.4byte 0x02009724 @ case 17
_08E2949C:
	strb r2, [r3]
	b _08E29572
_08E294A0:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08E29572
_08E294A8:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08E29572
_08E294B0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08E29572
_08E294BA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08E29572
_08E294C8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08E29572
_08E294D6:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08E29558
	b _08E2956C
_08E294DE:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08E29558
	b _08E2956C
_08E294E6:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08E29558
	b _08E2956C
_08E294EE:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08E29558
	b _08E2956C
_08E294F6:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08E29558
	b _08E2956C
_08E294FE:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08E29558
	b _08E2956C
_08E29506:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08E29558
	b _08E2956C
_08E29514:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08E29558
	b _08E2956C
_08E29522:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08E29558
	b _08E2956C
_08E29530:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08E29558
	b _08E2956C
_08E2953E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08E29558
	b _08E2956C
_08E2954C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08E2956C
_08E29558:
	ldr r0, _08E29568 @ =gUnk_02023DD4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08E2C814
	b _08E29572
	.align 2, 0
_08E29568: .4byte gUnk_02023DD4
_08E2956C:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08E29572:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E29578
sub_08E29578: @ 0x08E29578
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08E29594 @ =gUnk_020145F0
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_08E2C814
	pop {r0}
	bx r0
	.align 2, 0
_08E29594: .4byte gUnk_020145F0

	thumb_func_start sub_08E29598
sub_08E29598: @ 0x08E29598
	push {lr}
	ldr r2, _08E295A8 @ =gUnk_02023DD0
	ldr r2, [r2]
	bl sub_08E2C814
	pop {r0}
	bx r0
	.align 2, 0
_08E295A8: .4byte gUnk_02023DD0

	thumb_func_start sub_08E295AC
sub_08E295AC: @ 0x08E295AC
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08E295E4 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08E295E8 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08E295EC @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08E295F0 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E295E4: .4byte 0xFFFFFF00
_08E295E8: .4byte 0xFFFF00FF
_08E295EC: .4byte 0xFF00FFFF
_08E295F0: .4byte 0x00FFFFFF

	thumb_func_start sub_08E295F4
sub_08E295F4: @ 0x08E295F4
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

	thumb_func_start sub_08E29608
sub_08E29608: @ 0x08E29608
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

	thumb_func_start sub_08E2961C
sub_08E2961C: @ 0x08E2961C
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

	thumb_func_start sub_08E29630
sub_08E29630: @ 0x08E29630
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

	thumb_func_start sub_08E29644
sub_08E29644: @ 0x08E29644
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

	thumb_func_start sub_08E29658
sub_08E29658: @ 0x08E29658
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08E29664
sub_08E29664: @ 0x08E29664
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08E29670
sub_08E29670: @ 0x08E29670
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

	thumb_func_start sub_08E29684
sub_08E29684: @ 0x08E29684
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

	thumb_func_start nullsub_64
nullsub_64: @ 0x08E29698
	bx lr
	.align 2, 0
