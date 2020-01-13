	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E8D290
sub_08E8D290: @ 0x08E8D290
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08E8D2A4
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08E8D2A4:
	ldr r3, _08E8D2EC @ =gUnk_02019F74
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08E8D2F0 @ =gUnk_0201A028
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
	bl sub_08E8C674
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_08E8C674
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E8D2EC: .4byte gUnk_02019F74
_08E8D2F0: .4byte gUnk_0201A028

	thumb_func_start nullsub_48
nullsub_48: @ 0x08E8D2F4
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8D2F8
sub_08E8D2F8: @ 0x08E8D2F8
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08E8D30C @ =0x68736D53
	cmp r3, r0
	bne _08E8D30A
	ldr r0, [r2, #4]
	ldr r1, _08E8D310 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08E8D30A:
	bx lr
	.align 2, 0
_08E8D30C: .4byte 0x68736D53
_08E8D310: .4byte 0x7FFFFFFF

	thumb_func_start sub_08E8D314
sub_08E8D314: @ 0x08E8D314
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E8D330 @ =0x68736D53
	cmp r3, r0
	bne _08E8D32C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08E8D32C:
	bx lr
	.align 2, 0
_08E8D330: .4byte 0x68736D53

	thumb_func_start sub_08E8D334
sub_08E8D334: @ 0x08E8D334
	push {r4, r5, r6, lr}
	ldr r0, _08E8D388 @ =gUnk_02007DFD
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08E8D38C @ =gUnk_03000640
	ldr r2, _08E8D390 @ =0x04000100
	bl sub_08E9197C
	ldr r0, _08E8D394 @ =gUnk_03000D80
	bl sub_08E8D734
	ldr r0, _08E8D398 @ =gUnk_03001DC0
	bl sub_08E8D5F0
	ldr r0, _08E8D39C @ =0x0095FA00
	bl sub_08E8D8D0
	ldr r0, _08E8D3A0 @ =0x00000003
	lsls r0, r0, #0x10

	thumb_func_start sub_08E8D35C
sub_08E8D35C: @ 0x08E8D35C
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E8D382
	ldr r5, _08E8D3A4 @ =gUnk_0201AF28
	adds r6, r0, #0
_08E8D366:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08E8DA74
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08E8D3A8 @ =gUnk_03001F80
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08E8D366
_08E8D382:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D388: .4byte gUnk_02007DFD
_08E8D38C: .4byte gUnk_03000640
_08E8D390: .4byte 0x04000100
_08E8D394: .4byte gUnk_03000D80
_08E8D398: .4byte gUnk_03001DC0
_08E8D39C: .4byte 0x0095FA00
_08E8D3A0: .4byte 0x00000003
_08E8D3A4: .4byte gUnk_0201AF28
_08E8D3A8: .4byte gUnk_03001F80

	thumb_func_start sub_08E8D3AC
sub_08E8D3AC: @ 0x08E8D3AC
	push {lr}
	bl sub_08E8C684
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8D3B8
sub_08E8D3B8: @ 0x08E8D3B8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E8D3DC @ =gUnk_0201AF28
	ldr r1, _08E8D3E0 @ =gUnk_0201AF4C
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
	bl sub_08E8DAEC
	pop {r0}
	bx r0
	.align 2, 0
_08E8D3DC: .4byte gUnk_0201AF28
_08E8D3E0: .4byte gUnk_0201AF4C

	thumb_func_start sub_08E8D3E4
sub_08E8D3E4: @ 0x08E8D3E4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E8D410 @ =gUnk_0201AF28
	ldr r1, _08E8D414 @ =gUnk_0201AF4C
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
	beq _08E8D418
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08E8DAEC
	b _08E8D42C
	.align 2, 0
_08E8D410: .4byte gUnk_0201AF28
_08E8D414: .4byte gUnk_0201AF4C
_08E8D418:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08E8D424
	cmp r2, #0
	bge _08E8D42C
_08E8D424:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08E8DAEC
_08E8D42C:
	pop {r0}
	bx r0

	thumb_func_start sub_08E8D430
sub_08E8D430: @ 0x08E8D430
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E8D45C @ =gUnk_0201AF28
	ldr r1, _08E8D460 @ =gUnk_0201AF4C
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
	beq _08E8D464
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08E8DAEC
	b _08E8D480
	.align 2, 0
_08E8D45C: .4byte gUnk_0201AF28
_08E8D460: .4byte gUnk_0201AF4C
_08E8D464:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08E8D476
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08E8DAEC
	b _08E8D480
_08E8D476:
	cmp r2, #0
	bge _08E8D480
	adds r0, r1, #0
	bl sub_08E8D2F8
_08E8D480:
	pop {r0}
	bx r0

	thumb_func_start sub_08E8D484
sub_08E8D484: @ 0x08E8D484
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E8D4B0 @ =gUnk_0201AF28
	ldr r1, _08E8D4B4 @ =gUnk_0201AF4C
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
	bne _08E8D4AA
	adds r0, r2, #0
	bl sub_08E8DBD0
_08E8D4AA:
	pop {r0}
	bx r0
	.align 2, 0
_08E8D4B0: .4byte gUnk_0201AF28
_08E8D4B4: .4byte gUnk_0201AF4C

	thumb_func_start sub_08E8D4B8
sub_08E8D4B8: @ 0x08E8D4B8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08E8D4E4 @ =gUnk_0201AF28
	ldr r1, _08E8D4E8 @ =gUnk_0201AF4C
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
	bne _08E8D4DE
	adds r0, r2, #0
	bl sub_08E8D2F8
_08E8D4DE:
	pop {r0}
	bx r0
	.align 2, 0
_08E8D4E4: .4byte gUnk_0201AF28
_08E8D4E8: .4byte gUnk_0201AF4C

	thumb_func_start sub_08E8D4EC
sub_08E8D4EC: @ 0x08E8D4EC
	push {r4, r5, lr}
	ldr r0, _08E8D510 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E8D50A
	ldr r5, _08E8D514 @ =gUnk_0201AF28
	adds r4, r0, #0
_08E8D4FC:
	ldr r0, [r5]
	bl sub_08E8DBD0
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08E8D4FC
_08E8D50A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D510: .4byte 0x00000003
_08E8D514: .4byte gUnk_0201AF28

	thumb_func_start sub_08E8D518
sub_08E8D518: @ 0x08E8D518
	push {lr}
	bl sub_08E8D2F8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8D524
sub_08E8D524: @ 0x08E8D524
	push {r4, r5, lr}
	ldr r0, _08E8D548 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08E8D542
	ldr r5, _08E8D54C @ =gUnk_0201AF28
	adds r4, r0, #0
_08E8D534:
	ldr r0, [r5]
	bl sub_08E8D2F8
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08E8D534
_08E8D542:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D548: .4byte 0x00000003
_08E8D54C: .4byte gUnk_0201AF28

	thumb_func_start sub_08E8D550
sub_08E8D550: @ 0x08E8D550
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08E8D314
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8D560
sub_08E8D560: @ 0x08E8D560
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E8D578 @ =0x68736D53
	cmp r3, r0
	bne _08E8D576
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08E8D57C @ =0x00000101
	strh r0, [r2, #0x28]
_08E8D576:
	bx lr
	.align 2, 0
_08E8D578: .4byte 0x68736D53
_08E8D57C: .4byte 0x00000101

	thumb_func_start sub_08E8D580
sub_08E8D580: @ 0x08E8D580
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E8D5A0 @ =0x68736D53
	cmp r3, r0
	bne _08E8D59E
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08E8D5A4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08E8D59E:
	bx lr
	.align 2, 0
_08E8D5A0: .4byte 0x68736D53
_08E8D5A4: .4byte 0x7FFFFFFF

	thumb_func_start sub_08E8D5A8
sub_08E8D5A8: @ 0x08E8D5A8
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _08E8D5EA
	movs r7, #0x80
_08E8D5B4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8D5E2
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8D5E2
	adds r0, r4, #0
	bl sub_08E8D720
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
_08E8D5E2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E8D5B4
_08E8D5EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E8D5F0
sub_08E8D5F0: @ 0x08E8D5F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E8D6B8 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08E8D6BC @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08E8D6C0 @ =0x04000063
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
	ldr r0, _08E8D6C4 @ =SOUND_INFO_PTR
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08E8D6C8 @ =0x68736D53
	cmp r6, r0
	bne _08E8D6B0
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08E8D6CC @ =gUnk_03001D30
	ldr r0, _08E8D6D0 @ =gUnk_02009CA1
	str r0, [r1, #0x20]
	ldr r0, _08E8D6D4 @ =gUnk_0200895D
	str r0, [r1, #0x44]
	ldr r0, _08E8D6D8 @ =gUnk_02008971
	str r0, [r1, #0x4c]
	ldr r0, _08E8D6DC @ =gUnk_02009DF9
	str r0, [r1, #0x70]
	ldr r0, _08E8D6E0 @ =gUnk_020088F5
	str r0, [r1, #0x74]
	ldr r0, _08E8D6E4 @ =gUnk_02008F21
	str r0, [r1, #0x78]
	ldr r0, _08E8D6E8 @ =gUnk_02008681
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08E8D6EC @ =gUnk_02009305
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08E8D6F0 @ =gUnk_020093CD
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08E8D6F4 @ =gUnk_020095E1
	str r0, [r4, #0x28]
	ldr r0, _08E8D6F8 @ =gUnk_02009529
	str r0, [r4, #0x2c]
	ldr r0, _08E8D6FC @ =gUnk_02009481
	str r0, [r4, #0x30]
	ldr r0, _08E8D700 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08E8D704 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E9197C
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
_08E8D6B0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D6B8: .4byte 0x04000084
_08E8D6BC: .4byte 0x04000080
_08E8D6C0: .4byte 0x04000063
_08E8D6C4: .4byte SOUND_INFO_PTR
_08E8D6C8: .4byte 0x68736D53
_08E8D6CC: .4byte gUnk_03001D30
_08E8D6D0: .4byte gUnk_02009CA1
_08E8D6D4: .4byte gUnk_0200895D
_08E8D6D8: .4byte gUnk_02008971
_08E8D6DC: .4byte gUnk_02009DF9
_08E8D6E0: .4byte gUnk_020088F5
_08E8D6E4: .4byte gUnk_02008F21
_08E8D6E8: .4byte gUnk_02008681
_08E8D6EC: .4byte gUnk_02009305
_08E8D6F0: .4byte gUnk_020093CD
_08E8D6F4: .4byte gUnk_020095E1
_08E8D6F8: .4byte gUnk_02009529
_08E8D6FC: .4byte gUnk_02009481
_08E8D700: .4byte 0x00000000
_08E8D704: .4byte 0x05000040

	thumb_func_start sub_08E8D708
sub_08E8D708: @ 0x08E8D708
	svc #0x2a
	bx lr

	thumb_func_start sub_08E8D70C
sub_08E8D70C: @ 0x08E8D70C
	push {lr}
	ldr r1, _08E8D71C @ =gUnk_03001DB8
	ldr r1, [r1]
	bl sub_08E9199C
	pop {r0}
	bx r0
	.align 2, 0
_08E8D71C: .4byte gUnk_03001DB8

	thumb_func_start sub_08E8D720
sub_08E8D720: @ 0x08E8D720
	push {lr}
	ldr r1, _08E8D730 @ =gUnk_03001DBC
	ldr r1, [r1]
	bl sub_08E9199C
	pop {r0}
	bx r0
	.align 2, 0
_08E8D730: .4byte gUnk_03001DBC

	thumb_func_start sub_08E8D734
sub_08E8D734: @ 0x08E8D734
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08E8D7EC @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08E8D750
	ldr r0, _08E8D7F0 @ =0x84400004
	str r0, [r1]
_08E8D750:
	ldr r1, _08E8D7F4 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08E8D75E
	ldr r0, _08E8D7F0 @ =0x84400004
	str r0, [r1]
_08E8D75E:
	ldr r0, _08E8D7F8 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08E8D7FC @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08E8D800 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E8D804 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08E8D808 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08E8D80C @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08E8D810 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08E8D814 @ =SOUND_INFO_PTR
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08E8D818 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E9197C
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08E8D81C @ =gUnk_020086F5
	str r0, [r5, #0x38]
	ldr r0, _08E8D820 @ =gUnk_02009F19
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08E8D824 @ =gUnk_03001D30
	adds r0, r4, #0
	bl sub_08E8CB14
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08E8D82C
	ldr r0, _08E8D828 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D7EC: .4byte 0x040000C4
_08E8D7F0: .4byte 0x84400004
_08E8D7F4: .4byte 0x040000D0
_08E8D7F8: .4byte 0x040000C6
_08E8D7FC: .4byte 0x04000084
_08E8D800: .4byte 0x0000A90E
_08E8D804: .4byte 0x04000089
_08E8D808: .4byte 0x040000BC
_08E8D80C: .4byte 0x040000A0
_08E8D810: .4byte 0x040000A4
_08E8D814: .4byte SOUND_INFO_PTR
_08E8D818: .4byte 0x050003EC
_08E8D81C: .4byte gUnk_020086F5
_08E8D820: .4byte gUnk_02009F19
_08E8D824: .4byte gUnk_03001D30
_08E8D828: .4byte 0x68736D53

	thumb_func_start sub_08E8D82C
sub_08E8D82C: @ 0x08E8D82C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08E8D8AC @ =SOUND_INFO_PTR
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08E8D8B0 @ =gUnk_0201A058
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_08E919D4
	strb r0, [r4, #0xb]
	ldr r0, _08E8D8B4 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08E8D8B8 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08E8D8BC @ =0x00002710
	bl sub_08E919D4
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08E919D4
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08E8D8C0 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08E8D8C4 @ =0x04000100
	ldr r0, _08E8D8C8 @ =0x00044940
	adds r1, r5, #0
	bl sub_08E919D4
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_08E8DA38
	ldr r1, _08E8D8CC @ =0x04000006
_08E8D890:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08E8D890
	ldr r1, _08E8D8CC @ =0x04000006
_08E8D898:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08E8D898
	ldr r1, _08E8D8C0 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D8AC: .4byte SOUND_INFO_PTR
_08E8D8B0: .4byte gUnk_0201A058
_08E8D8B4: .4byte 0x00091D1B
_08E8D8B8: .4byte 0x00001388
_08E8D8BC: .4byte 0x00002710
_08E8D8C0: .4byte 0x04000102
_08E8D8C4: .4byte 0x04000100
_08E8D8C8: .4byte 0x00044940
_08E8D8CC: .4byte 0x04000006

	thumb_func_start sub_08E8D8D0
sub_08E8D8D0: @ 0x08E8D8D0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08E8D95C @ =SOUND_INFO_PTR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08E8D960 @ =0x68736D53
	cmp r1, r0
	bne _08E8D956
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08E8D8F2
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08E8D8F2:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08E8D912
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08E8D908:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08E8D908
_08E8D912:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08E8D920
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08E8D920:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08E8D93E
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08E8D964 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08E8D93E:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08E8D952
	bl sub_08E8D9BC
	adds r0, r4, #0
	bl sub_08E8D82C
_08E8D952:
	ldr r0, _08E8D960 @ =0x68736D53
	str r0, [r5]
_08E8D956:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D95C: .4byte SOUND_INFO_PTR
_08E8D960: .4byte 0x68736D53
_08E8D964: .4byte 0x04000089

	thumb_func_start sub_08E8D968
sub_08E8D968: @ 0x08E8D968
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E8D9B4 @ =SOUND_INFO_PTR
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08E8D9B8 @ =0x68736D53
	cmp r1, r0
	bne _08E8D9AE
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08E8D982:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08E8D982
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _08E8D9AA
	movs r5, #1
	movs r7, #0
_08E8D996:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_08E9199C
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _08E8D996
_08E8D9AA:
	ldr r0, _08E8D9B8 @ =0x68736D53
	str r0, [r6]
_08E8D9AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8D9B4: .4byte SOUND_INFO_PTR
_08E8D9B8: .4byte 0x68736D53

	thumb_func_start sub_08E8D9BC
sub_08E8D9BC: @ 0x08E8D9BC
	push {lr}
	sub sp, #4
	ldr r0, _08E8DA1C @ =SOUND_INFO_PTR
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08E8DA20 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08E8DA14
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08E8DA24 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08E8D9E6
	ldr r0, _08E8DA28 @ =0x84400004
	str r0, [r1]
_08E8D9E6:
	ldr r1, _08E8DA2C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08E8D9F4
	ldr r0, _08E8DA28 @ =0x84400004
	str r0, [r1]
_08E8D9F4:
	ldr r0, _08E8DA30 @ =0x040000C6
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
	ldr r2, _08E8DA34 @ =0x05000318
	mov r0, sp
	bl sub_08E9197C
_08E8DA14:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E8DA1C: .4byte SOUND_INFO_PTR
_08E8DA20: .4byte 0x978C92AD
_08E8DA24: .4byte 0x040000C4
_08E8DA28: .4byte 0x84400004
_08E8DA2C: .4byte 0x040000D0
_08E8DA30: .4byte 0x040000C6
_08E8DA34: .4byte 0x05000318

	thumb_func_start sub_08E8DA38
sub_08E8DA38: @ 0x08E8DA38
	push {r4, lr}
	ldr r0, _08E8DA68 @ =SOUND_INFO_PTR
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08E8DA6C @ =0x68736D53
	cmp r3, r0
	beq _08E8DA60
	ldr r0, _08E8DA70 @ =0x040000C6
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
_08E8DA60:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8DA68: .4byte SOUND_INFO_PTR
_08E8DA6C: .4byte 0x68736D53
_08E8DA70: .4byte 0x040000C6

	thumb_func_start sub_08E8DA74
sub_08E8DA74: @ 0x08E8DA74
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08E8DAD8
	cmp r4, #0x10
	bls _08E8DA88
	movs r4, #0x10
_08E8DA88:
	ldr r0, _08E8DAE0 @ =SOUND_INFO_PTR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08E8DAE4 @ =0x68736D53
	cmp r1, r0
	bne _08E8DAD8
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_08E8D720
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08E8DABC
	movs r1, #0
_08E8DAAE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08E8DAAE
_08E8DABC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08E8DACC
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08E8DACC:
	str r7, [r5, #0x24]
	ldr r0, _08E8DAE8 @ =gUnk_02008419
	str r0, [r5, #0x20]
	ldr r0, _08E8DAE4 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08E8DAD8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8DAE0: .4byte SOUND_INFO_PTR
_08E8DAE4: .4byte 0x68736D53
_08E8DAE8: .4byte gUnk_02008419

	thumb_func_start sub_08E8DAEC
sub_08E8DAEC: @ 0x08E8DAEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08E8DBCC @ =0x68736D53
	cmp r1, r0
	bne _08E8DBC2
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08E8DB2E
	ldr r0, [r5]
	cmp r0, #0
	beq _08E8DB18
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08E8DB24
_08E8DB18:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08E8DB2E
	cmp r1, #0
	blt _08E8DB2E
_08E8DB24:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08E8DBC2
_08E8DB2E:
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
	bge _08E8DB8E
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08E8DBAE
	mov r8, r6
_08E8DB62:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E8CF8C
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
	bge _08E8DB8E
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08E8DB62
_08E8DB8E:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08E8DBAE
	movs r1, #0
	mov r8, r1
_08E8DB98:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E8CF8C
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08E8DB98
_08E8DBAE:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08E8DBBE
	ldrb r0, [r7, #3]
	bl sub_08E8D8D0
_08E8DBBE:
	ldr r0, _08E8DBCC @ =0x68736D53
	str r0, [r5, #0x34]
_08E8DBC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8DBCC: .4byte 0x68736D53

	thumb_func_start sub_08E8DBD0
sub_08E8DBD0: @ 0x08E8DBD0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08E8DC0C @ =0x68736D53
	cmp r1, r0
	bne _08E8DC06
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
	ble _08E8DC02
_08E8DBF2:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08E8CF8C
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08E8DBF2
_08E8DC02:
	ldr r0, _08E8DC0C @ =0x68736D53
	str r0, [r6, #0x34]
_08E8DC06:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8DC0C: .4byte 0x68736D53

	thumb_func_start sub_08E8DC10
sub_08E8DC10: @ 0x08E8DC10
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08E8DCD2
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08E8DC50 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08E8DCD2
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E8DC54
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08E8DCA6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08E8DCA6
	.align 2, 0
_08E8DC50: .4byte 0x0000FFFF
_08E8DC54:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08E8DCA6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08E8DC86
_08E8DC6A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08E8CF8C
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08E8DC7E
	strb r0, [r4]
_08E8DC7E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E8DC6A
_08E8DC86:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08E8DC9A
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08E8DC9E
_08E8DC9A:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08E8DC9E:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08E8DCD2
_08E8DCA6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08E8DCD2
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08E8DCB4:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08E8DCCA
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08E8DCCA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08E8DCB4
_08E8DCD2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E8DCD8
sub_08E8DCD8: @ 0x08E8DCD8
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08E8DD3C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08E8DD00
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08E8DD00:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08E8DD16
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08E8DD16:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08E8DD22
	adds r1, r0, #0
	b _08E8DD28
_08E8DD22:
	cmp r1, #0x7f
	ble _08E8DD28
	movs r1, #0x7f
_08E8DD28:
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
_08E8DD3C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08E8DD80
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
	bne _08E8DD7A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08E8DD7A:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08E8DD80:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E8DD8C
sub_08E8DD8C: @ 0x08E8DD8C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08E8DDC4
	cmp r5, #0x14
	bhi _08E8DDA8
	movs r5, #0
	b _08E8DDB6
_08E8DDA8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08E8DDB6
	movs r5, #0x3b
_08E8DDB6:
	ldr r0, _08E8DDC0 @ =gUnk_0201A10C
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08E8DE26
	.align 2, 0
_08E8DDC0: .4byte gUnk_0201A10C
_08E8DDC4:
	cmp r5, #0x23
	bhi _08E8DDD0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08E8DDE2
_08E8DDD0:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08E8DDE2
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08E8DDE2:
	ldr r3, _08E8DE2C @ =gUnk_0201A070
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08E8DE30 @ =gUnk_0201A0F4
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
_08E8DE26:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E8DE2C: .4byte gUnk_0201A070
_08E8DE30: .4byte gUnk_0201A0F4

	thumb_func_start sub_08E8DE34
sub_08E8DE34: @ 0x08E8DE34
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08E8DE5C
	cmp r0, #2
	bgt _08E8DE48
	cmp r0, #1
	beq _08E8DE4E
	b _08E8DE70
_08E8DE48:
	cmp r1, #3
	beq _08E8DE64
	b _08E8DE70
_08E8DE4E:
	ldr r1, _08E8DE58 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08E8DE78
	.align 2, 0
_08E8DE58: .4byte 0x04000063
_08E8DE5C:
	ldr r1, _08E8DE60 @ =0x04000069
	b _08E8DE72
	.align 2, 0
_08E8DE60: .4byte 0x04000069
_08E8DE64:
	ldr r1, _08E8DE6C @ =0x04000070
	movs r0, #0
	b _08E8DE7A
	.align 2, 0
_08E8DE6C: .4byte 0x04000070
_08E8DE70:
	ldr r1, _08E8DE80 @ =0x04000079
_08E8DE72:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08E8DE78:
	movs r0, #0x80
_08E8DE7A:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08E8DE80: .4byte 0x04000079

	thumb_func_start sub_08E8DE84
sub_08E8DE84: @ 0x08E8DE84
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08E8DEA4
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08E8DEB0
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08E8DEBE
_08E8DEA4:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08E8DEB0
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08E8DEBE
_08E8DEB0:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08E8DECE
_08E8DEBE:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08E8DED0
	movs r0, #0xf
_08E8DECE:
	strb r0, [r1, #0xa]
_08E8DED0:
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

	thumb_func_start sub_08E8DEEC
sub_08E8DEEC: @ 0x08E8DEEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08E8DF0C @ =SOUND_INFO_PTR
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08E8DF10
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08E8DF16
	.align 2, 0
_08E8DF0C: .4byte SOUND_INFO_PTR
_08E8DF10:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08E8DF16:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08E8DF1C:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08E8DF32
	b _08E8E31C
_08E8DF32:
	cmp r6, #2
	beq _08E8DF64
	cmp r6, #2
	bgt _08E8DF40
	cmp r6, #1
	beq _08E8DF46
	b _08E8DF9C
_08E8DF40:
	cmp r6, #3
	beq _08E8DF7C
	b _08E8DF9C
_08E8DF46:
	ldr r0, _08E8DF58 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08E8DF5C @ =0x04000062
	ldr r2, _08E8DF60 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08E8DFAC
	.align 2, 0
_08E8DF58: .4byte 0x04000060
_08E8DF5C: .4byte 0x04000062
_08E8DF60: .4byte 0x04000063
_08E8DF64:
	ldr r0, _08E8DF70 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08E8DF74 @ =0x04000068
	ldr r2, _08E8DF78 @ =0x04000069
	b _08E8DFA4
	.align 2, 0
_08E8DF70: .4byte 0x04000061
_08E8DF74: .4byte 0x04000068
_08E8DF78: .4byte 0x04000069
_08E8DF7C:
	ldr r0, _08E8DF90 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08E8DF94 @ =0x04000072
	ldr r2, _08E8DF98 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08E8DFAC
	.align 2, 0
_08E8DF90: .4byte 0x04000070
_08E8DF94: .4byte 0x04000072
_08E8DF98: .4byte 0x04000073
_08E8DF9C:
	ldr r0, _08E8DFFC @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08E8E000 @ =0x04000078
	ldr r2, _08E8E004 @ =0x04000079
_08E8DFA4:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08E8DFAC:
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
	beq _08E8E0A2
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
	bne _08E8E0C6
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_08E8DE84
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08E8E014
	cmp r6, #2
	bgt _08E8E008
	cmp r6, #1
	beq _08E8E00E
	b _08E8E068
	.align 2, 0
_08E8DFFC: .4byte 0x04000071
_08E8E000: .4byte 0x04000078
_08E8E004: .4byte 0x04000079
_08E8E008:
	cmp r6, #3
	beq _08E8E020
	b _08E8E068
_08E8E00E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08E8E014:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08E8E074
_08E8E020:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08E8E048
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08E8E05C @ =0x04000090
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
_08E8E048:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08E8E060
	movs r0, #0xc0
	b _08E8E082
	.align 2, 0
_08E8E05C: .4byte 0x04000090
_08E8E060:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08E8E084
_08E8E068:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08E8E074:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08E8E082
	movs r0, #0x40
_08E8E082:
	strb r0, [r4, #0x1a]
_08E8E084:
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
	bne _08E8E09E
	b _08E8E1DA
_08E8E09E:
	strb r2, [r4, #9]
	b _08E8E208
_08E8E0A2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08E8E0D4
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
	ble _08E8E0C6
	b _08E8E21A
_08E8E0C6:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08E8DE34
	movs r0, #0
	strb r0, [r4]
	b _08E8E318
_08E8E0D4:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08E8E114
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08E8E114
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08E8E146
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E8E208
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08E8E208
_08E8E114:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08E8E208
	cmp r6, #3
	bne _08E8E126
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08E8E126:
	adds r0, r4, #0
	bl sub_08E8DE84
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08E8E17A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08E8E176
_08E8E146:
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
	beq _08E8E0C6
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E8E21A
	movs r2, #8
	mov r8, r2
	b _08E8E21A
_08E8E176:
	ldrb r0, [r4, #7]
	b _08E8E206
_08E8E17A:
	cmp r0, #1
	bne _08E8E186
_08E8E17E:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08E8E206
_08E8E186:
	cmp r0, #2
	bne _08E8E1CA
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08E8E1C6
_08E8E19E:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08E8E1AE
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08E8E146
_08E8E1AE:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08E8E17E
	movs r0, #8
	mov r8, r0
	b _08E8E17E
_08E8E1C6:
	ldrb r0, [r4, #5]
	b _08E8E206
_08E8E1CA:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08E8E204
_08E8E1DA:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08E8E19E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08E8E208
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08E8E208
_08E8E204:
	ldrb r0, [r4, #4]
_08E8E206:
	strb r0, [r4, #0xb]
_08E8E208:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08E8E21A
	subs r0, #1
	str r0, [sp]
	b _08E8E114
_08E8E21A:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08E8E292
	cmp r6, #3
	bgt _08E8E25A
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08E8E25A
	ldr r0, _08E8E244 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08E8E24C
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08E8E248 @ =0x000007FC
	b _08E8E256
	.align 2, 0
_08E8E244: .4byte 0x04000089
_08E8E248: .4byte 0x000007FC
_08E8E24C:
	cmp r0, #0x7f
	bgt _08E8E25A
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08E8E268 @ =0x000007FE
_08E8E256:
	ands r0, r1
	str r0, [r4, #0x20]
_08E8E25A:
	cmp r6, #4
	beq _08E8E26C
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08E8E27A
	.align 2, 0
_08E8E268: .4byte 0x000007FE
_08E8E26C:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08E8E27A:
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
_08E8E292:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08E8E318
	ldr r1, _08E8E2DC @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08E8E2E4
	ldr r0, _08E8E2E0 @ =gUnk_0201A148
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
	beq _08E8E318
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08E8E318
	.align 2, 0
_08E8E2DC: .4byte 0x04000081
_08E8E2E0: .4byte gUnk_0201A148
_08E8E2E4:
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
	bne _08E8E318
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08E8E318
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08E8E318:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08E8E31C:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08E8E326
	b _08E8DF1C
_08E8E326:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8E338
sub_08E8E338: @ 0x08E8E338
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08E8E35C @ =0x68736D53
	cmp r3, r0
	bne _08E8E354
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08E8E354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8E35C: .4byte 0x68736D53

	thumb_func_start sub_08E8E360
sub_08E8E360: @ 0x08E8E360
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08E8E3C4 @ =0x68736D53
	cmp r3, r0
	bne _08E8E3B8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E8E3B4
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08E8E390:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08E8E3AA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08E8E3AA
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08E8E3AA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E8E390
_08E8E3B4:
	ldr r0, _08E8E3C4 @ =0x68736D53
	str r0, [r4, #0x34]
_08E8E3B8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8E3C4: .4byte 0x68736D53

	thumb_func_start sub_08E8E3C8
sub_08E8E3C8: @ 0x08E8E3C8
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
	ldr r0, _08E8E438 @ =0x68736D53
	cmp r3, r0
	bne _08E8E42A
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E8E426
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08E8E400:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08E8E41C
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08E8E41C
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08E8E41C:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E8E400
_08E8E426:
	ldr r0, _08E8E438 @ =0x68736D53
	str r0, [r4, #0x34]
_08E8E42A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8E438: .4byte 0x68736D53

	thumb_func_start sub_08E8E43C
sub_08E8E43C: @ 0x08E8E43C
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
	ldr r0, _08E8E4A0 @ =0x68736D53
	cmp r3, r0
	bne _08E8E494
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08E8E490
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08E8E46C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08E8E486
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08E8E486
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08E8E486:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08E8E46C
_08E8E490:
	ldr r0, _08E8E4A0 @ =0x68736D53
	str r0, [r4, #0x34]
_08E8E494:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8E4A0: .4byte 0x68736D53

	thumb_func_start sub_08E8E4A4
sub_08E8E4A4: @ 0x08E8E4A4
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08E8E4B8
	movs r0, #0xc
	b _08E8E4BA
_08E8E4B8:
	movs r0, #3
_08E8E4BA:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8E4C4
sub_08E8E4C4: @ 0x08E8E4C4
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
	ldr r0, _08E8E534 @ =0x68736D53
	cmp r1, r0
	bne _08E8E524
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08E8E520
	mov sb, r8
_08E8E4F4:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08E8E516
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08E8E516
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08E8E516
	adds r0, r4, #0
	bl sub_08E8E4A4
_08E8E516:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08E8E4F4
_08E8E520:
	ldr r0, _08E8E534 @ =0x68736D53
	str r0, [r6, #0x34]
_08E8E524:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8E534: .4byte 0x68736D53

	thumb_func_start sub_08E8E538
sub_08E8E538: @ 0x08E8E538
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
	ldr r0, _08E8E5A8 @ =0x68736D53
	cmp r1, r0
	bne _08E8E598
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08E8E594
	mov sb, r8
_08E8E568:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08E8E58A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08E8E58A
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08E8E58A
	adds r0, r4, #0
	bl sub_08E8E4A4
_08E8E58A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08E8E568
_08E8E594:
	ldr r0, _08E8E5A8 @ =0x68736D53
	str r0, [r6, #0x34]
_08E8E598:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8E5A8: .4byte 0x68736D53

	thumb_func_start sub_08E8E5AC
sub_08E8E5AC: @ 0x08E8E5AC
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
	bls _08E8E5D0
	b _08E8E6FE
_08E8E5D0:
	lsls r0, r5, #2
	ldr r1, _08E8E5DC @ =gUnk_02009CD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08E8E5DC: .4byte gUnk_02009CD4
_08E8E5E0: @ jump table
	.4byte 0x02009D1C @ case 0
	.4byte 0x02009D20 @ case 1
	.4byte 0x02009D28 @ case 2
	.4byte 0x02009D30 @ case 3
	.4byte 0x02009D3A @ case 4
	.4byte 0x02009D48 @ case 5
	.4byte 0x02009D56 @ case 6
	.4byte 0x02009D5E @ case 7
	.4byte 0x02009D66 @ case 8
	.4byte 0x02009D6E @ case 9
	.4byte 0x02009D76 @ case 10
	.4byte 0x02009D7E @ case 11
	.4byte 0x02009D86 @ case 12
	.4byte 0x02009D94 @ case 13
	.4byte 0x02009DA2 @ case 14
	.4byte 0x02009DB0 @ case 15
	.4byte 0x02009DBE @ case 16
	.4byte 0x02009DCC @ case 17
_08E8E628:
	strb r2, [r3]
	b _08E8E6FE
_08E8E62C:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08E8E6FE
_08E8E634:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08E8E6FE
_08E8E63C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08E8E6FE
_08E8E646:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08E8E6FE
_08E8E654:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08E8E6FE
_08E8E662:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08E8E6E4
	b _08E8E6F8
_08E8E66A:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08E8E6E4
	b _08E8E6F8
_08E8E672:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08E8E6E4
	b _08E8E6F8
_08E8E67A:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08E8E6E4
	b _08E8E6F8
_08E8E682:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08E8E6E4
	b _08E8E6F8
_08E8E68A:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08E8E6E4
	b _08E8E6F8
_08E8E692:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08E8E6E4
	b _08E8E6F8
_08E8E6A0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08E8E6E4
	b _08E8E6F8
_08E8E6AE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08E8E6E4
	b _08E8E6F8
_08E8E6BC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08E8E6E4
	b _08E8E6F8
_08E8E6CA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08E8E6E4
	b _08E8E6F8
_08E8E6D8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08E8E6F8
_08E8E6E4:
	ldr r0, _08E8E6F4 @ =gUnk_03001D34
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08E919A0
	b _08E8E6FE
	.align 2, 0
_08E8E6F4: .4byte gUnk_03001D34
_08E8E6F8:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08E8E6FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E8E704
sub_08E8E704: @ 0x08E8E704
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08E8E720 @ =gUnk_0201A18C
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_08E919A0
	pop {r0}
	bx r0
	.align 2, 0
_08E8E720: .4byte gUnk_0201A18C

	thumb_func_start sub_08E8E724
sub_08E8E724: @ 0x08E8E724
	push {lr}
	ldr r2, _08E8E734 @ =gUnk_03001D30
	ldr r2, [r2]
	bl sub_08E919A0
	pop {r0}
	bx r0
	.align 2, 0
_08E8E734: .4byte gUnk_03001D30

	thumb_func_start sub_08E8E738
sub_08E8E738: @ 0x08E8E738
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08E8E770 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08E8E774 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08E8E778 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08E8E77C @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8E770: .4byte 0xFFFFFF00
_08E8E774: .4byte 0xFFFF00FF
_08E8E778: .4byte 0xFF00FFFF
_08E8E77C: .4byte 0x00FFFFFF

	thumb_func_start sub_08E8E780
sub_08E8E780: @ 0x08E8E780
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

	thumb_func_start sub_08E8E794
sub_08E8E794: @ 0x08E8E794
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

	thumb_func_start sub_08E8E7A8
sub_08E8E7A8: @ 0x08E8E7A8
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

	thumb_func_start sub_08E8E7BC
sub_08E8E7BC: @ 0x08E8E7BC
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

	thumb_func_start sub_08E8E7D0
sub_08E8E7D0: @ 0x08E8E7D0
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

	thumb_func_start sub_08E8E7E4
sub_08E8E7E4: @ 0x08E8E7E4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08E8E7F0
sub_08E8E7F0: @ 0x08E8E7F0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08E8E7FC
sub_08E8E7FC: @ 0x08E8E7FC
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

	thumb_func_start sub_08E8E810
sub_08E8E810: @ 0x08E8E810
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

	thumb_func_start nullsub_49
nullsub_49: @ 0x08E8E824
	bx lr
	.align 2, 0
