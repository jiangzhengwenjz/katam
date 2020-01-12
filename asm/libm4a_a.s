	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E601F8
sub_08E601F8: @ 0x08E601F8
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08E6020C
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08E6020C:
	ldr r3, _08E60254 @ =gUnk_02019F68
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08E60258 @ =gUnk_0201A01C
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
	bl sub_08E5F5DC
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_08E5F5DC
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E60254: .4byte gUnk_02019F68
_08E60258: .4byte gUnk_0201A01C

	thumb_func_start nullsub_36
nullsub_36: @ 0x08E6025C
	bx lr
	.align 2, 0

	thumb_func_start sub_08E60260
sub_08E60260: @ 0x08E60260
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08E60274 @ =0x68736D53
	cmp r3, r0
	bne _08E60272
	ldr r0, [r2, #4]
	ldr r1, _08E60278 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08E60272:
	bx lr
	.align 2, 0
_08E60274: .4byte 0x68736D53
_08E60278: .4byte 0x7FFFFFFF

	thumb_func_start sub_08E6027C
sub_08E6027C: @ 0x08E6027C
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E60298 @ =0x68736D53
	cmp r3, r0
	bne _08E60294
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08E60294:
	bx lr
	.align 2, 0
_08E60298: .4byte 0x68736D53

	thumb_func_start sub_08E6029C
sub_08E6029C: @ 0x08E6029C
	push {r4, r5, r6, lr}
	ldr r0, _08E602F0 @ =gUnk_02007DD9
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08E602F4 @ =gUnk_03000640
	ldr r2, _08E602F8 @ =0x04000100
	bl sub_08E648E4
	ldr r0, _08E602FC @ =gUnk_03000D80
	bl sub_08E6069C
	ldr r0, _08E60300 @ =gUnk_03001DC0
	bl sub_08E60558
	ldr r0, _08E60304 @ =0x0095FA00
	bl sub_08E60838
	ldr r0, _08E60308 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E602EA
	ldr r5, _08E6030C @ =gUnk_0201AF1C
	adds r6, r0, #0
_08E602CE:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08E609DC
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08E60310 @ =gUnk_03001F80
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08E602CE
_08E602EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E602F0: .4byte gUnk_02007DD9
_08E602F4: .4byte gUnk_03000640
_08E602F8: .4byte 0x04000100
_08E602FC: .4byte gUnk_03000D80
_08E60300: .4byte gUnk_03001DC0
_08E60304: .4byte 0x0095FA00
_08E60308: .4byte 0x00000003
_08E6030C: .4byte gUnk_0201AF1C
_08E60310: .4byte gUnk_03001F80

	thumb_func_start sub_08E60314
sub_08E60314: @ 0x08E60314
	push {lr}
	bl sub_08E5F5EC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E60320
sub_08E60320: @ 0x08E60320
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E60344 @ =gUnk_0201AF1C
	ldr r1, _08E60348 @ =gUnk_0201AF40
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
	bl sub_08E60A54
	pop {r0}
	bx r0
	.align 2, 0
_08E60344: .4byte gUnk_0201AF1C
_08E60348: .4byte gUnk_0201AF40

	thumb_func_start sub_08E6034C
sub_08E6034C: @ 0x08E6034C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E60378 @ =gUnk_0201AF1C
	ldr r1, _08E6037C @ =gUnk_0201AF40
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
	beq _08E60380
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08E60A54
	b _08E60394
	.align 2, 0
_08E60378: .4byte gUnk_0201AF1C
_08E6037C: .4byte gUnk_0201AF40
_08E60380:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08E6038C
	cmp r2, #0
	bge _08E60394
_08E6038C:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08E60A54
_08E60394:
	pop {r0}
	bx r0

	thumb_func_start sub_08E60398
sub_08E60398: @ 0x08E60398
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E603C4 @ =gUnk_0201AF1C
	ldr r1, _08E603C8 @ =gUnk_0201AF40
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
	beq _08E603CC
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08E60A54
	b _08E603E8
	.align 2, 0
_08E603C4: .4byte gUnk_0201AF1C
_08E603C8: .4byte gUnk_0201AF40
_08E603CC:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08E603DE
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08E60A54
	b _08E603E8
_08E603DE:
	cmp r2, #0
	bge _08E603E8
	adds r0, r1, #0
	bl sub_08E60260
_08E603E8:
	pop {r0}
	bx r0

	thumb_func_start sub_08E603EC
sub_08E603EC: @ 0x08E603EC
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E60418 @ =gUnk_0201AF1C
	ldr r1, _08E6041C @ =gUnk_0201AF40
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
	bne _08E60412
	adds r0, r2, #0
	bl sub_08E60B38
_08E60412:
	pop {r0}
	bx r0
	.align 2, 0
_08E60418: .4byte gUnk_0201AF1C
_08E6041C: .4byte gUnk_0201AF40

	thumb_func_start sub_08E60420
sub_08E60420: @ 0x08E60420
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E6044C @ =gUnk_0201AF1C
	ldr r1, _08E60450 @ =gUnk_0201AF40
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
	bne _08E60446
	adds r0, r2, #0
	bl sub_08E60260
_08E60446:
	pop {r0}
	bx r0
	.align 2, 0
_08E6044C: .4byte gUnk_0201AF1C
_08E60450: .4byte gUnk_0201AF40

	thumb_func_start sub_08E60454
sub_08E60454: @ 0x08E60454
	push {r4, r5, lr}
	ldr r0, _08E60478 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E60472
	ldr r5, _08E6047C @ =gUnk_0201AF1C
	adds r4, r0, #0
_08E60464:
	ldr r0, [r5]
	bl sub_08E60B38
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08E60464
_08E60472:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E60478: .4byte 0x00000003
_08E6047C: .4byte gUnk_0201AF1C

	thumb_func_start sub_08E60480
sub_08E60480: @ 0x08E60480
	push {lr}
	bl sub_08E60260
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E6048C
sub_08E6048C: @ 0x08E6048C
	push {r4, r5, lr}
	ldr r0, _08E604B0 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E604AA
	ldr r5, _08E604B4 @ =gUnk_0201AF1C
	adds r4, r0, #0
_08E6049C:
	ldr r0, [r5]
	bl sub_08E60260
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08E6049C
_08E604AA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E604B0: .4byte 0x00000003
_08E604B4: .4byte gUnk_0201AF1C

	thumb_func_start sub_08E604B8
sub_08E604B8: @ 0x08E604B8
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08E6027C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E604C8
sub_08E604C8: @ 0x08E604C8
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E604E0 @ =0x68736D53
	cmp r3, r0
	bne _08E604DE
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08E604E4 @ =0x00000101
	strh r0, [r2, #0x28]
_08E604DE:
	bx lr
	.align 2, 0
_08E604E0: .4byte 0x68736D53
_08E604E4: .4byte 0x00000101

	thumb_func_start sub_08E604E8
sub_08E604E8: @ 0x08E604E8
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E60508 @ =0x68736D53
	cmp r3, r0
	bne _08E60506
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08E6050C @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08E60506:
	bx lr
	.align 2, 0
_08E60508: .4byte 0x68736D53
_08E6050C: .4byte 0x7FFFFFFF

	thumb_func_start sub_08E60510
sub_08E60510: @ 0x08E60510
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _08E60552
	movs r7, #0x80
_08E6051C:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E6054A
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08E6054A
	adds r0, r4, #0
	bl sub_08E60688
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
_08E6054A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E6051C
_08E60552:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E60558
sub_08E60558: @ 0x08E60558
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E60620 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08E60624 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08E60628 @ =0x04000063
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
	ldr r0, _08E6062C @ =gUnk_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08E60630 @ =0x68736D53
	cmp r6, r0
	bne _08E60618
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08E60634 @ =gUnk_03001D30
	ldr r0, _08E60638 @ =gUnk_02009C7D
	str r0, [r1, #0x20]
	ldr r0, _08E6063C @ =gUnk_02008939
	str r0, [r1, #0x44]
	ldr r0, _08E60640 @ =gUnk_0200894D
	str r0, [r1, #0x4c]
	ldr r0, _08E60644 @ =gUnk_02009DD5
	str r0, [r1, #0x70]
	ldr r0, _08E60648 @ =gUnk_020088D1
	str r0, [r1, #0x74]
	ldr r0, _08E6064C @ =gUnk_02008EFD
	str r0, [r1, #0x78]
	ldr r0, _08E60650 @ =gUnk_0200865D
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08E60654 @ =gUnk_020092E1
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08E60658 @ =gUnk_020093A9
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08E6065C @ =gUnk_020095BD
	str r0, [r4, #0x28]
	ldr r0, _08E60660 @ =gUnk_02009505
	str r0, [r4, #0x2c]
	ldr r0, _08E60664 @ =gUnk_0200945D
	str r0, [r4, #0x30]
	ldr r0, _08E60668 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08E6066C @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E648E4
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
_08E60618:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E60620: .4byte 0x04000084
_08E60624: .4byte 0x04000080
_08E60628: .4byte 0x04000063
_08E6062C: .4byte gUnk_03007FF0
_08E60630: .4byte 0x68736D53
_08E60634: .4byte gUnk_03001D30
_08E60638: .4byte gUnk_02009C7D
_08E6063C: .4byte gUnk_02008939
_08E60640: .4byte gUnk_0200894D
_08E60644: .4byte gUnk_02009DD5
_08E60648: .4byte gUnk_020088D1
_08E6064C: .4byte gUnk_02008EFD
_08E60650: .4byte gUnk_0200865D
_08E60654: .4byte gUnk_020092E1
_08E60658: .4byte gUnk_020093A9
_08E6065C: .4byte gUnk_020095BD
_08E60660: .4byte gUnk_02009505
_08E60664: .4byte gUnk_0200945D
_08E60668: .4byte 0x00000000
_08E6066C: .4byte 0x05000040

	thumb_func_start sub_08E60670
sub_08E60670: @ 0x08E60670
	svc #0x2a
	bx lr

	thumb_func_start sub_08E60674
sub_08E60674: @ 0x08E60674
	push {lr}
	ldr r1, _08E60684 @ =gUnk_03001DB8
	ldr r1, [r1]
	bl sub_08E64904
	pop {r0}
	bx r0
	.align 2, 0
_08E60684: .4byte gUnk_03001DB8

	thumb_func_start sub_08E60688
sub_08E60688: @ 0x08E60688
	push {lr}
	ldr r1, _08E60698 @ =gUnk_03001DBC
	ldr r1, [r1]
	bl sub_08E64904
	pop {r0}
	bx r0
	.align 2, 0
_08E60698: .4byte gUnk_03001DBC

	thumb_func_start sub_08E6069C
sub_08E6069C: @ 0x08E6069C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08E60754 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08E606B8
	ldr r0, _08E60758 @ =0x84400004
	str r0, [r1]
_08E606B8:
	ldr r1, _08E6075C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08E606C6
	ldr r0, _08E60758 @ =0x84400004
	str r0, [r1]
_08E606C6:
	ldr r0, _08E60760 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08E60764 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08E60768 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E6076C @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08E60770 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08E60774 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08E60778 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08E6077C @ =gUnk_03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08E60780 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E648E4
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08E60784 @ =gUnk_020086D1
	str r0, [r5, #0x38]
	ldr r0, _08E60788 @ =gUnk_02009EF5
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08E6078C @ =gUnk_03001D30
	adds r0, r4, #0
	bl sub_08E5FA7C
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08E60794
	ldr r0, _08E60790 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E60754: .4byte 0x040000C4
_08E60758: .4byte 0x84400004
_08E6075C: .4byte 0x040000D0
_08E60760: .4byte 0x040000C6
_08E60764: .4byte 0x04000084
_08E60768: .4byte 0x0000A90E
_08E6076C: .4byte 0x04000089
_08E60770: .4byte 0x040000BC
_08E60774: .4byte 0x040000A0
_08E60778: .4byte 0x040000A4
_08E6077C: .4byte gUnk_03007FF0
_08E60780: .4byte 0x050003EC
_08E60784: .4byte gUnk_020086D1
_08E60788: .4byte gUnk_02009EF5
_08E6078C: .4byte gUnk_03001D30
_08E60790: .4byte 0x68736D53

	thumb_func_start sub_08E60794
sub_08E60794: @ 0x08E60794
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08E60814 @ =gUnk_03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08E60818 @ =gUnk_0201A04C
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_08E6493C
	strb r0, [r4, #0xb]
	ldr r0, _08E6081C @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08E60820 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08E60824 @ =0x00002710
	bl sub_08E6493C
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08E6493C
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08E60828 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08E6082C @ =0x04000100
	ldr r0, _08E60830 @ =0x00044940
	adds r1, r5, #0
	bl sub_08E6493C
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_08E609A0
	ldr r1, _08E60834 @ =0x04000006
_08E607F8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08E607F8
	ldr r1, _08E60834 @ =0x04000006
_08E60800:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08E60800
	ldr r1, _08E60828 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E60814: .4byte gUnk_03007FF0
_08E60818: .4byte gUnk_0201A04C
_08E6081C: .4byte 0x00091D1B
_08E60820: .4byte 0x00001388
_08E60824: .4byte 0x00002710
_08E60828: .4byte 0x04000102
_08E6082C: .4byte 0x04000100
_08E60830: .4byte 0x00044940
_08E60834: .4byte 0x04000006

	thumb_func_start sub_08E60838
sub_08E60838: @ 0x08E60838
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08E608C4 @ =gUnk_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08E608C8 @ =0x68736D53
	cmp r1, r0
	bne _08E608BE
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08E6085A
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08E6085A:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08E6087A
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08E60870:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08E60870
_08E6087A:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08E60888
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08E60888:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08E608A6
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08E608CC @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08E608A6:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08E608BA
	bl sub_08E60924
	adds r0, r4, #0
	bl sub_08E60794
_08E608BA:
	ldr r0, _08E608C8 @ =0x68736D53
	str r0, [r5]
_08E608BE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E608C4: .4byte gUnk_03007FF0
_08E608C8: .4byte 0x68736D53
_08E608CC: .4byte 0x04000089

	thumb_func_start sub_08E608D0
sub_08E608D0: @ 0x08E608D0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E6091C @ =gUnk_03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08E60920 @ =0x68736D53
	cmp r1, r0
	bne _08E60916
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08E608EA:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08E608EA
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _08E60912
	movs r5, #1
	movs r7, #0
_08E608FE:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_08E64904
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _08E608FE
_08E60912:
	ldr r0, _08E60920 @ =0x68736D53
	str r0, [r6]
_08E60916:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E6091C: .4byte gUnk_03007FF0
_08E60920: .4byte 0x68736D53

	thumb_func_start sub_08E60924
sub_08E60924: @ 0x08E60924
	push {lr}
	sub sp, #4
	ldr r0, _08E60984 @ =gUnk_03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08E60988 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08E6097C
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08E6098C @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08E6094E
	ldr r0, _08E60990 @ =0x84400004
	str r0, [r1]
_08E6094E:
	ldr r1, _08E60994 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08E6095C
	ldr r0, _08E60990 @ =0x84400004
	str r0, [r1]
_08E6095C:
	ldr r0, _08E60998 @ =0x040000C6
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
	ldr r2, _08E6099C @ =0x05000318
	mov r0, sp
	bl sub_08E648E4
_08E6097C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E60984: .4byte gUnk_03007FF0
_08E60988: .4byte 0x978C92AD
_08E6098C: .4byte 0x040000C4
_08E60990: .4byte 0x84400004
_08E60994: .4byte 0x040000D0
_08E60998: .4byte 0x040000C6
_08E6099C: .4byte 0x05000318

	thumb_func_start sub_08E609A0
sub_08E609A0: @ 0x08E609A0
	push {r4, lr}
	ldr r0, _08E609D0 @ =gUnk_03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08E609D4 @ =0x68736D53
	cmp r3, r0
	beq _08E609C8
	ldr r0, _08E609D8 @ =0x040000C6
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
_08E609C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E609D0: .4byte gUnk_03007FF0
_08E609D4: .4byte 0x68736D53
_08E609D8: .4byte 0x040000C6

	thumb_func_start sub_08E609DC
sub_08E609DC: @ 0x08E609DC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08E60A40
	cmp r4, #0x10
	bls _08E609F0
	movs r4, #0x10
_08E609F0:
	ldr r0, _08E60A48 @ =gUnk_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08E60A4C @ =0x68736D53
	cmp r1, r0
	bne _08E60A40
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_08E60688
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08E60A24
	movs r1, #0
_08E60A16:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18

	thumb_func_start sub_08E60A1C
sub_08E60A1C: @ 0x08E60A1C
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08E60A16
_08E60A24:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08E60A34
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08E60A34:
	str r7, [r5, #0x24]
	ldr r0, _08E60A50 @ =gUnk_020083F5
	str r0, [r5, #0x20]
	ldr r0, _08E60A4C @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08E60A40:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E60A48: .4byte gUnk_03007FF0
_08E60A4C: .4byte 0x68736D53
_08E60A50: .4byte gUnk_020083F5

	thumb_func_start sub_08E60A54
sub_08E60A54: @ 0x08E60A54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08E60B34 @ =0x68736D53
	cmp r1, r0
	bne _08E60B2A
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08E60A96
	ldr r0, [r5]
	cmp r0, #0
	beq _08E60A80
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08E60A8C
_08E60A80:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08E60A96
	cmp r1, #0
	blt _08E60A96
_08E60A8C:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08E60B2A
_08E60A96:
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
	bge _08E60AF6
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08E60B16
	mov r8, r6
_08E60ACA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E5FEF4
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
	bge _08E60AF6
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08E60ACA
_08E60AF6:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08E60B16
	movs r1, #0
	mov r8, r1
_08E60B00:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E5FEF4
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08E60B00
_08E60B16:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08E60B26
	ldrb r0, [r7, #3]
	bl sub_08E60838
_08E60B26:
	ldr r0, _08E60B34 @ =0x68736D53
	str r0, [r5, #0x34]
_08E60B2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E60B34: .4byte 0x68736D53

	thumb_func_start sub_08E60B38
sub_08E60B38: @ 0x08E60B38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08E60B74 @ =0x68736D53
	cmp r1, r0
	bne _08E60B6E
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
	ble _08E60B6A
_08E60B5A:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08E5FEF4
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08E60B5A
_08E60B6A:
	ldr r0, _08E60B74 @ =0x68736D53
	str r0, [r6, #0x34]
_08E60B6E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E60B74: .4byte 0x68736D53

	thumb_func_start sub_08E60B78
sub_08E60B78: @ 0x08E60B78
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08E60C3A
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08E60BB8 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08E60C3A
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E60BBC
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08E60C0E
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08E60C0E
	.align 2, 0
_08E60BB8: .4byte 0x0000FFFF
_08E60BBC:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08E60C0E
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08E60BEE
_08E60BD2:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08E5FEF4
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08E60BE6
	strb r0, [r4]
_08E60BE6:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E60BD2
_08E60BEE:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08E60C02
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08E60C06
_08E60C02:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08E60C06:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08E60C3A
_08E60C0E:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08E60C3A
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08E60C1C:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08E60C32
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08E60C32:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E60C1C
_08E60C3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E60C40
sub_08E60C40: @ 0x08E60C40
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08E60CA4
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08E60C68
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08E60C68:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08E60C7E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08E60C7E:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08E60C8A
	adds r1, r0, #0
	b _08E60C90
_08E60C8A:
	cmp r1, #0x7f
	ble _08E60C90
	movs r1, #0x7f
_08E60C90:
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
_08E60CA4:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08E60CE8
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
	bne _08E60CE2
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08E60CE2:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08E60CE8:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E60CF4
sub_08E60CF4: @ 0x08E60CF4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08E60D2C
	cmp r5, #0x14
	bhi _08E60D10
	movs r5, #0
	b _08E60D1E
_08E60D10:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08E60D1E
	movs r5, #0x3b
_08E60D1E:
	ldr r0, _08E60D28 @ =gUnk_0201A100
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08E60D8E
	.align 2, 0
_08E60D28: .4byte gUnk_0201A100
_08E60D2C:
	cmp r5, #0x23
	bhi _08E60D38
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08E60D4A
_08E60D38:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08E60D4A
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08E60D4A:
	ldr r3, _08E60D94 @ =gUnk_0201A064
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08E60D98 @ =gUnk_0201A0E8
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
_08E60D8E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E60D94: .4byte gUnk_0201A064
_08E60D98: .4byte gUnk_0201A0E8

	thumb_func_start sub_08E60D9C
sub_08E60D9C: @ 0x08E60D9C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08E60DC4
	cmp r0, #2
	bgt _08E60DB0
	cmp r0, #1
	beq _08E60DB6
	b _08E60DD8
_08E60DB0:
	cmp r1, #3
	beq _08E60DCC
	b _08E60DD8
_08E60DB6:
	ldr r1, _08E60DC0 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08E60DE0
	.align 2, 0
_08E60DC0: .4byte 0x04000063
_08E60DC4:
	ldr r1, _08E60DC8 @ =0x04000069
	b _08E60DDA
	.align 2, 0
_08E60DC8: .4byte 0x04000069
_08E60DCC:
	ldr r1, _08E60DD4 @ =0x04000070
	movs r0, #0
	b _08E60DE2
	.align 2, 0
_08E60DD4: .4byte 0x04000070
_08E60DD8:
	ldr r1, _08E60DE8 @ =0x04000079
_08E60DDA:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08E60DE0:
	movs r0, #0x80
_08E60DE2:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08E60DE8: .4byte 0x04000079

	thumb_func_start sub_08E60DEC
sub_08E60DEC: @ 0x08E60DEC
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08E60E0C
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08E60E18
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08E60E26
_08E60E0C:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08E60E18
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08E60E26
_08E60E18:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08E60E36
_08E60E26:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08E60E38
	movs r0, #0xf
_08E60E36:
	strb r0, [r1, #0xa]
_08E60E38:
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

	thumb_func_start sub_08E60E54
sub_08E60E54: @ 0x08E60E54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08E60E74 @ =gUnk_03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08E60E78
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08E60E7E
	.align 2, 0
_08E60E74: .4byte gUnk_03007FF0
_08E60E78:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08E60E7E:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08E60E84:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08E60E9A
	b _08E61284
_08E60E9A:
	cmp r6, #2
	beq _08E60ECC
	cmp r6, #2
	bgt _08E60EA8
	cmp r6, #1
	beq _08E60EAE
	b _08E60F04
_08E60EA8:
	cmp r6, #3
	beq _08E60EE4
	b _08E60F04
_08E60EAE:
	ldr r0, _08E60EC0 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08E60EC4 @ =0x04000062
	ldr r2, _08E60EC8 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08E60F14
	.align 2, 0
_08E60EC0: .4byte 0x04000060
_08E60EC4: .4byte 0x04000062
_08E60EC8: .4byte 0x04000063
_08E60ECC:
	ldr r0, _08E60ED8 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08E60EDC @ =0x04000068
	ldr r2, _08E60EE0 @ =0x04000069
	b _08E60F0C
	.align 2, 0
_08E60ED8: .4byte 0x04000061
_08E60EDC: .4byte 0x04000068
_08E60EE0: .4byte 0x04000069
_08E60EE4:
	ldr r0, _08E60EF8 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08E60EFC @ =0x04000072
	ldr r2, _08E60F00 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08E60F14
	.align 2, 0
_08E60EF8: .4byte 0x04000070
_08E60EFC: .4byte 0x04000072
_08E60F00: .4byte 0x04000073
_08E60F04:
	ldr r0, _08E60F64 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08E60F68 @ =0x04000078
	ldr r2, _08E60F6C @ =0x04000079
_08E60F0C:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08E60F14:
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
	beq _08E6100A
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
	bne _08E6102E
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_08E60DEC
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08E60F7C
	cmp r6, #2
	bgt _08E60F70
	cmp r6, #1
	beq _08E60F76
	b _08E60FD0
	.align 2, 0
_08E60F64: .4byte 0x04000071
_08E60F68: .4byte 0x04000078
_08E60F6C: .4byte 0x04000079
_08E60F70:
	cmp r6, #3
	beq _08E60F88
	b _08E60FD0
_08E60F76:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08E60F7C:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08E60FDC
_08E60F88:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08E60FB0
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08E60FC4 @ =0x04000090
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
_08E60FB0:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08E60FC8
	movs r0, #0xc0
	b _08E60FEA
	.align 2, 0
_08E60FC4: .4byte 0x04000090
_08E60FC8:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08E60FEC
_08E60FD0:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08E60FDC:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08E60FEA
	movs r0, #0x40
_08E60FEA:
	strb r0, [r4, #0x1a]
_08E60FEC:
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
	bne _08E61006
	b _08E61142
_08E61006:
	strb r2, [r4, #9]
	b _08E61170
_08E6100A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08E6103C
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
	ble _08E6102E
	b _08E61182
_08E6102E:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08E60D9C
	movs r0, #0
	strb r0, [r4]
	b _08E61280
_08E6103C:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08E6107C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08E6107C
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08E610AE
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E61170
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08E61170
_08E6107C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08E61170
	cmp r6, #3
	bne _08E6108E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08E6108E:
	adds r0, r4, #0
	bl sub_08E60DEC
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08E610E2
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08E610DE
_08E610AE:
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
	beq _08E6102E
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E61182
	movs r2, #8
	mov r8, r2
	b _08E61182
_08E610DE:
	ldrb r0, [r4, #7]
	b _08E6116E
_08E610E2:
	cmp r0, #1
	bne _08E610EE
_08E610E6:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08E6116E
_08E610EE:
	cmp r0, #2
	bne _08E61132
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08E6112E
_08E61106:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08E61116
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08E610AE
_08E61116:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E610E6
	movs r0, #8
	mov r8, r0
	b _08E610E6
_08E6112E:
	ldrb r0, [r4, #5]
	b _08E6116E
_08E61132:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08E6116C
_08E61142:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08E61106
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08E61170
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08E61170
_08E6116C:
	ldrb r0, [r4, #4]
_08E6116E:
	strb r0, [r4, #0xb]
_08E61170:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08E61182
	subs r0, #1
	str r0, [sp]
	b _08E6107C
_08E61182:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08E611FA
	cmp r6, #3
	bgt _08E611C2
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08E611C2
	ldr r0, _08E611AC @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08E611B4
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08E611B0 @ =0x000007FC
	b _08E611BE
	.align 2, 0
_08E611AC: .4byte 0x04000089
_08E611B0: .4byte 0x000007FC
_08E611B4:
	cmp r0, #0x7f
	bgt _08E611C2
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08E611D0 @ =0x000007FE
_08E611BE:
	ands r0, r1
	str r0, [r4, #0x20]
_08E611C2:
	cmp r6, #4
	beq _08E611D4
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08E611E2
	.align 2, 0
_08E611D0: .4byte 0x000007FE
_08E611D4:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08E611E2:
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
_08E611FA:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08E61280
	ldr r1, _08E61244 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08E6124C
	ldr r0, _08E61248 @ =gUnk_0201A13C
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
	beq _08E61280
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08E61280
	.align 2, 0
_08E61244: .4byte 0x04000081
_08E61248: .4byte gUnk_0201A13C
_08E6124C:
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
	bne _08E61280
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08E61280
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08E61280:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08E61284:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08E6128E
	b _08E60E84
_08E6128E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E612A0
sub_08E612A0: @ 0x08E612A0
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E612C4 @ =0x68736D53
	cmp r3, r0
	bne _08E612BC
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08E612BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E612C4: .4byte 0x68736D53

	thumb_func_start sub_08E612C8
sub_08E612C8: @ 0x08E612C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08E6132C @ =0x68736D53
	cmp r3, r0
	bne _08E61320
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E6131C
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08E612F8:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08E61312
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08E61312
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08E61312:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E612F8
_08E6131C:
	ldr r0, _08E6132C @ =0x68736D53
	str r0, [r4, #0x34]
_08E61320:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E6132C: .4byte 0x68736D53

	thumb_func_start sub_08E61330
sub_08E61330: @ 0x08E61330
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
	ldr r0, _08E613A0 @ =0x68736D53
	cmp r3, r0
	bne _08E61392
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E6138E
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08E61368:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08E61384
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08E61384
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08E61384:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E61368
_08E6138E:
	ldr r0, _08E613A0 @ =0x68736D53
	str r0, [r4, #0x34]
_08E61392:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E613A0: .4byte 0x68736D53

	thumb_func_start sub_08E613A4
sub_08E613A4: @ 0x08E613A4
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
	ldr r0, _08E61408 @ =0x68736D53
	cmp r3, r0
	bne _08E613FC
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E613F8
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08E613D4:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08E613EE
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08E613EE
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08E613EE:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E613D4
_08E613F8:
	ldr r0, _08E61408 @ =0x68736D53
	str r0, [r4, #0x34]
_08E613FC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E61408: .4byte 0x68736D53

	thumb_func_start sub_08E6140C
sub_08E6140C: @ 0x08E6140C
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08E61420
	movs r0, #0xc
	b _08E61422
_08E61420:
	movs r0, #3
_08E61422:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E6142C
sub_08E6142C: @ 0x08E6142C
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
	ldr r0, _08E6149C @ =0x68736D53
	cmp r1, r0
	bne _08E6148C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08E61488
	mov sb, r8
_08E6145C:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08E6147E
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08E6147E
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08E6147E
	adds r0, r4, #0
	bl sub_08E6140C
_08E6147E:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08E6145C
_08E61488:
	ldr r0, _08E6149C @ =0x68736D53
	str r0, [r6, #0x34]
_08E6148C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E6149C: .4byte 0x68736D53

	thumb_func_start sub_08E614A0
sub_08E614A0: @ 0x08E614A0
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
	ldr r0, _08E61510 @ =0x68736D53
	cmp r1, r0
	bne _08E61500
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08E614FC
	mov sb, r8
_08E614D0:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08E614F2
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08E614F2
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08E614F2
	adds r0, r4, #0
	bl sub_08E6140C
_08E614F2:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08E614D0
_08E614FC:
	ldr r0, _08E61510 @ =0x68736D53
	str r0, [r6, #0x34]
_08E61500:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E61510: .4byte 0x68736D53

	thumb_func_start sub_08E61514
sub_08E61514: @ 0x08E61514
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
	bls _08E61538
	b _08E61666
_08E61538:
	lsls r0, r5, #2
	ldr r1, _08E61544 @ =gUnk_02009CB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08E61544: .4byte gUnk_02009CB0
_08E61548: @ jump table
	.4byte 0x02009CF8 @ case 0
	.4byte 0x02009CFC @ case 1
	.4byte 0x02009D04 @ case 2
	.4byte 0x02009D0C @ case 3
	.4byte 0x02009D16 @ case 4
	.4byte 0x02009D24 @ case 5
	.4byte 0x02009D32 @ case 6
	.4byte 0x02009D3A @ case 7
	.4byte 0x02009D42 @ case 8
	.4byte 0x02009D4A @ case 9
	.4byte 0x02009D52 @ case 10
	.4byte 0x02009D5A @ case 11
	.4byte 0x02009D62 @ case 12
	.4byte 0x02009D70 @ case 13
	.4byte 0x02009D7E @ case 14
	.4byte 0x02009D8C @ case 15
	.4byte 0x02009D9A @ case 16
	.4byte 0x02009DA8 @ case 17
_08E61590:
	strb r2, [r3]
	b _08E61666
_08E61594:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08E61666
_08E6159C:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08E61666
_08E615A4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08E61666
_08E615AE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08E61666
_08E615BC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08E61666
_08E615CA:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08E6164C
	b _08E61660
_08E615D2:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08E6164C
	b _08E61660
_08E615DA:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08E6164C
	b _08E61660
_08E615E2:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08E6164C
	b _08E61660
_08E615EA:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08E6164C
	b _08E61660
_08E615F2:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08E6164C
	b _08E61660
_08E615FA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08E6164C
	b _08E61660
_08E61608:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08E6164C
	b _08E61660
_08E61616:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08E6164C
	b _08E61660
_08E61624:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08E6164C
	b _08E61660
_08E61632:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08E6164C
	b _08E61660
_08E61640:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08E61660
_08E6164C:
	ldr r0, _08E6165C @ =gUnk_03001D34
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08E64908
	b _08E61666
	.align 2, 0
_08E6165C: .4byte gUnk_03001D34
_08E61660:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08E61666:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E6166C
sub_08E6166C: @ 0x08E6166C
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08E61688 @ =gUnk_0201A180
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_08E64908
	pop {r0}
	bx r0
	.align 2, 0
_08E61688: .4byte gUnk_0201A180

	thumb_func_start sub_08E6168C
sub_08E6168C: @ 0x08E6168C
	push {lr}
	ldr r2, _08E6169C @ =gUnk_03001D30
	ldr r2, [r2]
	bl sub_08E64908
	pop {r0}
	bx r0
	.align 2, 0
_08E6169C: .4byte gUnk_03001D30

	thumb_func_start sub_08E616A0
sub_08E616A0: @ 0x08E616A0
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08E616D8 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08E616DC @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08E616E0 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08E616E4 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E616D8: .4byte 0xFFFFFF00
_08E616DC: .4byte 0xFFFF00FF
_08E616E0: .4byte 0xFF00FFFF
_08E616E4: .4byte 0x00FFFFFF

	thumb_func_start sub_08E616E8
sub_08E616E8: @ 0x08E616E8
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

	thumb_func_start sub_08E616FC
sub_08E616FC: @ 0x08E616FC
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

	thumb_func_start sub_08E61710
sub_08E61710: @ 0x08E61710
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

	thumb_func_start sub_08E61724
sub_08E61724: @ 0x08E61724
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

	thumb_func_start sub_08E61738
sub_08E61738: @ 0x08E61738
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

	thumb_func_start sub_08E6174C
sub_08E6174C: @ 0x08E6174C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08E61758
sub_08E61758: @ 0x08E61758
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08E61764
sub_08E61764: @ 0x08E61764
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

	thumb_func_start sub_08E61778
sub_08E61778: @ 0x08E61778
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

	thumb_func_start nullsub_37
nullsub_37: @ 0x08E6178C
	bx lr
	.align 2, 0
