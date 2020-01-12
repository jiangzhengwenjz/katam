	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D9BDA0
sub_08D9BDA0: @ 0x08D9BDA0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08D9BDB4
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08D9BDB4:
	ldr r3, _08D9BDFC @ =gUnk_020101A0
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08D9BE00 @ =gUnk_02010254
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
	bl sub_08D9B184
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_08D9B184
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D9BDFC: .4byte gUnk_020101A0
_08D9BE00: .4byte gUnk_02010254

	thumb_func_start nullsub_77
nullsub_77: @ 0x08D9BE04
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9BE08
sub_08D9BE08: @ 0x08D9BE08
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08D9BE1C @ =0x68736D53
	cmp r3, r0
	bne _08D9BE1A
	ldr r0, [r2, #4]
	ldr r1, _08D9BE20 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08D9BE1A:
	bx lr
	.align 2, 0
_08D9BE1C: .4byte 0x68736D53
_08D9BE20: .4byte 0x7FFFFFFF

	thumb_func_start sub_08D9BE24
sub_08D9BE24: @ 0x08D9BE24
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D9BE40 @ =0x68736D53
	cmp r3, r0
	bne _08D9BE3C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08D9BE3C:
	bx lr
	.align 2, 0
_08D9BE40: .4byte 0x68736D53

	thumb_func_start sub_08D9BE44
sub_08D9BE44: @ 0x08D9BE44
	push {r4, r5, r6, lr}
	ldr r0, _08D9BE98 @ =gUnk_0200667D
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08D9BE9C @ =gUnk_03000000
	ldr r2, _08D9BEA0 @ =0x04000100
	bl sub_08DA048C
	ldr r0, _08D9BEA4 @ =gUnk_0201F0B0
	bl sub_08D9C244
	ldr r0, _08D9BEA8 @ =gUnk_020200F0
	bl sub_08D9C100
	ldr r0, _08D9BEAC @ =0x0095FA00
	bl sub_08D9C3E0
	ldr r0, _08D9BEB0 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08D9BE92
	ldr r5, _08D9BEB4 @ =gUnk_02011130
	adds r6, r0, #0
_08D9BE76:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08D9C584
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08D9BEB8 @ =gUnk_020202B0
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08D9BE76
_08D9BE92:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9BE98: .4byte gUnk_0200667D
_08D9BE9C: .4byte gUnk_03000000
_08D9BEA0: .4byte 0x04000100
_08D9BEA4: .4byte gUnk_0201F0B0
_08D9BEA8: .4byte gUnk_020200F0
_08D9BEAC: .4byte 0x0095FA00
_08D9BEB0: .4byte 0x00000003
_08D9BEB4: .4byte gUnk_02011130
_08D9BEB8: .4byte gUnk_020202B0

	thumb_func_start sub_08D9BEBC
sub_08D9BEBC: @ 0x08D9BEBC
	push {lr}
	bl sub_08D9B194
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9BEC8
sub_08D9BEC8: @ 0x08D9BEC8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D9BEEC @ =gUnk_02011130
	ldr r1, _08D9BEF0 @ =gUnk_02011154
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
	bl sub_08D9C5FC
	pop {r0}
	bx r0
	.align 2, 0
_08D9BEEC: .4byte gUnk_02011130
_08D9BEF0: .4byte gUnk_02011154

	thumb_func_start sub_08D9BEF4
sub_08D9BEF4: @ 0x08D9BEF4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D9BF20 @ =gUnk_02011130
	ldr r1, _08D9BF24 @ =gUnk_02011154
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
	beq _08D9BF28
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08D9C5FC
	b _08D9BF3C
	.align 2, 0
_08D9BF20: .4byte gUnk_02011130
_08D9BF24: .4byte gUnk_02011154
_08D9BF28:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08D9BF34
	cmp r2, #0
	bge _08D9BF3C
_08D9BF34:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08D9C5FC
_08D9BF3C:
	pop {r0}
	bx r0

	thumb_func_start sub_08D9BF40
sub_08D9BF40: @ 0x08D9BF40
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D9BF6C @ =gUnk_02011130
	ldr r1, _08D9BF70 @ =gUnk_02011154
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
	beq _08D9BF74
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08D9C5FC
	b _08D9BF90
	.align 2, 0
_08D9BF6C: .4byte gUnk_02011130
_08D9BF70: .4byte gUnk_02011154
_08D9BF74:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08D9BF86
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08D9C5FC
	b _08D9BF90
_08D9BF86:
	cmp r2, #0
	bge _08D9BF90
	adds r0, r1, #0
	bl sub_08D9BE08
_08D9BF90:
	pop {r0}
	bx r0

	thumb_func_start sub_08D9BF94
sub_08D9BF94: @ 0x08D9BF94
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D9BFC0 @ =gUnk_02011130
	ldr r1, _08D9BFC4 @ =gUnk_02011154
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
	bne _08D9BFBA
	adds r0, r2, #0
	bl sub_08D9C6E0
_08D9BFBA:
	pop {r0}
	bx r0
	.align 2, 0
_08D9BFC0: .4byte gUnk_02011130
_08D9BFC4: .4byte gUnk_02011154

	thumb_func_start sub_08D9BFC8
sub_08D9BFC8: @ 0x08D9BFC8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08D9BFF4 @ =gUnk_02011130
	ldr r1, _08D9BFF8 @ =gUnk_02011154
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
	bne _08D9BFEE
	adds r0, r2, #0
	bl sub_08D9BE08
_08D9BFEE:
	pop {r0}
	bx r0
	.align 2, 0
_08D9BFF4: .4byte gUnk_02011130
_08D9BFF8: .4byte gUnk_02011154

	thumb_func_start sub_08D9BFFC
sub_08D9BFFC: @ 0x08D9BFFC
	push {r4, r5, lr}
	ldr r0, _08D9C020 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08D9C01A
	ldr r5, _08D9C024 @ =gUnk_02011130
	adds r4, r0, #0
_08D9C00C:
	ldr r0, [r5]
	bl sub_08D9C6E0
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08D9C00C
_08D9C01A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C020: .4byte 0x00000003
_08D9C024: .4byte gUnk_02011130

	thumb_func_start sub_08D9C028
sub_08D9C028: @ 0x08D9C028
	push {lr}
	bl sub_08D9BE08
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9C034
sub_08D9C034: @ 0x08D9C034
	push {r4, r5, lr}
	ldr r0, _08D9C058 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08D9C052
	ldr r5, _08D9C05C @ =gUnk_02011130
	adds r4, r0, #0
_08D9C044:
	ldr r0, [r5]
	bl sub_08D9BE08
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08D9C044
_08D9C052:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C058: .4byte 0x00000003
_08D9C05C: .4byte gUnk_02011130

	thumb_func_start sub_08D9C060
sub_08D9C060: @ 0x08D9C060
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08D9BE24
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9C070
sub_08D9C070: @ 0x08D9C070
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D9C088 @ =0x68736D53
	cmp r3, r0
	bne _08D9C086
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08D9C08C @ =0x00000101
	strh r0, [r2, #0x28]
_08D9C086:
	bx lr
	.align 2, 0
_08D9C088: .4byte 0x68736D53
_08D9C08C: .4byte 0x00000101

	thumb_func_start sub_08D9C090
sub_08D9C090: @ 0x08D9C090
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D9C0B0 @ =0x68736D53
	cmp r3, r0
	bne _08D9C0AE
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08D9C0B4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08D9C0AE:
	bx lr
	.align 2, 0
_08D9C0B0: .4byte 0x68736D53
_08D9C0B4: .4byte 0x7FFFFFFF

	thumb_func_start sub_08D9C0B8
sub_08D9C0B8: @ 0x08D9C0B8
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _08D9C0FA
	movs r7, #0x80
_08D9C0C4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08D9C0F2
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08D9C0F2
	adds r0, r4, #0
	bl sub_08D9C230
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
_08D9C0F2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08D9C0C4
_08D9C0FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9C100
sub_08D9C100: @ 0x08D9C100
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08D9C1C8 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08D9C1CC @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08D9C1D0 @ =0x04000063
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
	ldr r0, _08D9C1D4 @ =gUnk_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08D9C1D8 @ =0x68736D53
	cmp r6, r0
	bne _08D9C1C0
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08D9C1DC @ =gUnk_02020060
	ldr r0, _08D9C1E0 @ =gUnk_02008521
	str r0, [r1, #0x20]
	ldr r0, _08D9C1E4 @ =gUnk_020071DD
	str r0, [r1, #0x44]
	ldr r0, _08D9C1E8 @ =gUnk_020071F1
	str r0, [r1, #0x4c]
	ldr r0, _08D9C1EC @ =gUnk_02008679
	str r0, [r1, #0x70]
	ldr r0, _08D9C1F0 @ =gUnk_02007175
	str r0, [r1, #0x74]
	ldr r0, _08D9C1F4 @ =gUnk_020077A1
	str r0, [r1, #0x78]
	ldr r0, _08D9C1F8 @ =gUnk_02006F01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08D9C1FC @ =gUnk_02007B85
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08D9C200 @ =gUnk_02007C4D
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08D9C204 @ =gUnk_02007E61
	str r0, [r4, #0x28]
	ldr r0, _08D9C208 @ =gUnk_02007DA9
	str r0, [r4, #0x2c]
	ldr r0, _08D9C20C @ =gUnk_02007D01
	str r0, [r4, #0x30]
	ldr r0, _08D9C210 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08D9C214 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_08DA048C
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
_08D9C1C0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C1C8: .4byte 0x04000084
_08D9C1CC: .4byte 0x04000080
_08D9C1D0: .4byte 0x04000063
_08D9C1D4: .4byte gUnk_03007FF0
_08D9C1D8: .4byte 0x68736D53
_08D9C1DC: .4byte gUnk_02020060
_08D9C1E0: .4byte gUnk_02008521
_08D9C1E4: .4byte gUnk_020071DD
_08D9C1E8: .4byte gUnk_020071F1
_08D9C1EC: .4byte gUnk_02008679
_08D9C1F0: .4byte gUnk_02007175
_08D9C1F4: .4byte gUnk_020077A1
_08D9C1F8: .4byte gUnk_02006F01
_08D9C1FC: .4byte gUnk_02007B85
_08D9C200: .4byte gUnk_02007C4D
_08D9C204: .4byte gUnk_02007E61
_08D9C208: .4byte gUnk_02007DA9
_08D9C20C: .4byte gUnk_02007D01
_08D9C210: .4byte 0x00000000
_08D9C214: .4byte 0x05000040

	thumb_func_start sub_08D9C218
sub_08D9C218: @ 0x08D9C218
	svc #0x2a
	bx lr

	thumb_func_start sub_08D9C21C
sub_08D9C21C: @ 0x08D9C21C
	push {lr}
	ldr r1, _08D9C22C @ =gUnk_020200E8
	ldr r1, [r1]
	bl sub_08DA04B0
	pop {r0}
	bx r0
	.align 2, 0
_08D9C22C: .4byte gUnk_020200E8

	thumb_func_start sub_08D9C230
sub_08D9C230: @ 0x08D9C230
	push {lr}
	ldr r1, _08D9C240 @ =gUnk_020200EC
	ldr r1, [r1]
	bl sub_08DA04B0
	pop {r0}
	bx r0
	.align 2, 0
_08D9C240: .4byte gUnk_020200EC

	thumb_func_start sub_08D9C244
sub_08D9C244: @ 0x08D9C244
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08D9C2FC @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08D9C260
	ldr r0, _08D9C300 @ =0x84400004
	str r0, [r1]
_08D9C260:
	ldr r1, _08D9C304 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08D9C26E
	ldr r0, _08D9C300 @ =0x84400004
	str r0, [r1]
_08D9C26E:
	ldr r0, _08D9C308 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08D9C30C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08D9C310 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08D9C314 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08D9C318 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08D9C31C @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08D9C320 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08D9C324 @ =gUnk_03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08D9C328 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_08DA048C
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08D9C32C @ =gUnk_02006F75
	str r0, [r5, #0x38]
	ldr r0, _08D9C330 @ =gUnk_02008799
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08D9C334 @ =gUnk_02020060
	adds r0, r4, #0
	bl sub_08D9B624
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08D9C33C
	ldr r0, _08D9C338 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C2FC: .4byte 0x040000C4
_08D9C300: .4byte 0x84400004
_08D9C304: .4byte 0x040000D0
_08D9C308: .4byte 0x040000C6
_08D9C30C: .4byte 0x04000084
_08D9C310: .4byte 0x0000A90E
_08D9C314: .4byte 0x04000089
_08D9C318: .4byte 0x040000BC
_08D9C31C: .4byte 0x040000A0
_08D9C320: .4byte 0x040000A4
_08D9C324: .4byte gUnk_03007FF0
_08D9C328: .4byte 0x050003EC
_08D9C32C: .4byte gUnk_02006F75
_08D9C330: .4byte gUnk_02008799
_08D9C334: .4byte gUnk_02020060
_08D9C338: .4byte 0x68736D53

	thumb_func_start sub_08D9C33C
sub_08D9C33C: @ 0x08D9C33C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08D9C3BC @ =gUnk_03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08D9C3C0 @ =gUnk_02010284
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_08DA04E8
	strb r0, [r4, #0xb]
	ldr r0, _08D9C3C4 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08D9C3C8 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08D9C3CC @ =0x00002710
	bl sub_08DA04E8
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08DA04E8
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08D9C3D0 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08D9C3D4 @ =0x04000100
	ldr r0, _08D9C3D8 @ =0x00044940
	adds r1, r5, #0
	bl sub_08DA04E8
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_08D9C548
	ldr r1, _08D9C3DC @ =0x04000006
_08D9C3A0:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08D9C3A0
	ldr r1, _08D9C3DC @ =0x04000006
_08D9C3A8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08D9C3A8
	ldr r1, _08D9C3D0 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C3BC: .4byte gUnk_03007FF0
_08D9C3C0: .4byte gUnk_02010284
_08D9C3C4: .4byte 0x00091D1B
_08D9C3C8: .4byte 0x00001388
_08D9C3CC: .4byte 0x00002710
_08D9C3D0: .4byte 0x04000102
_08D9C3D4: .4byte 0x04000100
_08D9C3D8: .4byte 0x00044940
_08D9C3DC: .4byte 0x04000006

	thumb_func_start sub_08D9C3E0
sub_08D9C3E0: @ 0x08D9C3E0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08D9C46C @ =gUnk_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08D9C470 @ =0x68736D53
	cmp r1, r0
	bne _08D9C466
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08D9C402
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08D9C402:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08D9C422
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08D9C418:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08D9C418
_08D9C422:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08D9C430
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08D9C430:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08D9C44E
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08D9C474 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08D9C44E:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08D9C462
	bl sub_08D9C4CC
	adds r0, r4, #0
	bl sub_08D9C33C
_08D9C462:
	ldr r0, _08D9C470 @ =0x68736D53
	str r0, [r5]
_08D9C466:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C46C: .4byte gUnk_03007FF0
_08D9C470: .4byte 0x68736D53
_08D9C474: .4byte 0x04000089

	thumb_func_start sub_08D9C478
sub_08D9C478: @ 0x08D9C478
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D9C4C4 @ =gUnk_03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08D9C4C8 @ =0x68736D53
	cmp r1, r0
	bne _08D9C4BE
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08D9C492:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08D9C492
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _08D9C4BA
	movs r5, #1
	movs r7, #0
_08D9C4A6:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_08DA04B0
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _08D9C4A6
_08D9C4BA:
	ldr r0, _08D9C4C8 @ =0x68736D53
	str r0, [r6]
_08D9C4BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C4C4: .4byte gUnk_03007FF0
_08D9C4C8: .4byte 0x68736D53

	thumb_func_start sub_08D9C4CC
sub_08D9C4CC: @ 0x08D9C4CC
	push {lr}
	sub sp, #4
	ldr r0, _08D9C52C @ =gUnk_03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08D9C530 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08D9C524
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08D9C534 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08D9C4F6
	ldr r0, _08D9C538 @ =0x84400004
	str r0, [r1]
_08D9C4F6:
	ldr r1, _08D9C53C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08D9C504
	ldr r0, _08D9C538 @ =0x84400004
	str r0, [r1]
_08D9C504:
	ldr r0, _08D9C540 @ =0x040000C6
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
	ldr r2, _08D9C544 @ =0x05000318
	mov r0, sp
	bl sub_08DA048C
_08D9C524:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08D9C52C: .4byte gUnk_03007FF0
_08D9C530: .4byte 0x978C92AD
_08D9C534: .4byte 0x040000C4
_08D9C538: .4byte 0x84400004
_08D9C53C: .4byte 0x040000D0
_08D9C540: .4byte 0x040000C6
_08D9C544: .4byte 0x05000318

	thumb_func_start sub_08D9C548
sub_08D9C548: @ 0x08D9C548
	push {r4, lr}
	ldr r0, _08D9C578 @ =gUnk_03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08D9C57C @ =0x68736D53
	cmp r3, r0
	beq _08D9C570
	ldr r0, _08D9C580 @ =0x040000C6
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
_08D9C570:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C578: .4byte gUnk_03007FF0
_08D9C57C: .4byte 0x68736D53
_08D9C580: .4byte 0x040000C6

	thumb_func_start sub_08D9C584
sub_08D9C584: @ 0x08D9C584
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08D9C5E8
	cmp r4, #0x10
	bls _08D9C598
	movs r4, #0x10
_08D9C598:
	ldr r0, _08D9C5F0 @ =gUnk_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08D9C5F4 @ =0x68736D53
	cmp r1, r0
	bne _08D9C5E8
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_08D9C230
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08D9C5CC
	movs r1, #0
_08D9C5BE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08D9C5BE
_08D9C5CC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08D9C5DC
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08D9C5DC:
	str r7, [r5, #0x24]
	ldr r0, _08D9C5F8 @ =gUnk_02006C99
	str r0, [r5, #0x20]
	ldr r0, _08D9C5F4 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08D9C5E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C5F0: .4byte gUnk_03007FF0
_08D9C5F4: .4byte 0x68736D53
_08D9C5F8: .4byte gUnk_02006C99

	thumb_func_start sub_08D9C5FC
sub_08D9C5FC: @ 0x08D9C5FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08D9C6DC @ =0x68736D53
	cmp r1, r0
	bne _08D9C6D2
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08D9C63E
	ldr r0, [r5]
	cmp r0, #0
	beq _08D9C628
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08D9C634
_08D9C628:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08D9C63E
	cmp r1, #0
	blt _08D9C63E
_08D9C634:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08D9C6D2
_08D9C63E:
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
	bge _08D9C69E
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08D9C6BE
	mov r8, r6
_08D9C672:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08D9BA9C
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
	bge _08D9C69E
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08D9C672
_08D9C69E:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08D9C6BE
	movs r1, #0
	mov r8, r1
_08D9C6A8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08D9BA9C
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08D9C6A8
_08D9C6BE:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08D9C6CE
	ldrb r0, [r7, #3]
	bl sub_08D9C3E0
_08D9C6CE:
	ldr r0, _08D9C6DC @ =0x68736D53
	str r0, [r5, #0x34]
_08D9C6D2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C6DC: .4byte 0x68736D53

	thumb_func_start sub_08D9C6E0
sub_08D9C6E0: @ 0x08D9C6E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08D9C71C @ =0x68736D53
	cmp r1, r0
	bne _08D9C716
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
	ble _08D9C712
_08D9C702:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08D9BA9C
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08D9C702
_08D9C712:
	ldr r0, _08D9C71C @ =0x68736D53
	str r0, [r6, #0x34]
_08D9C716:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9C71C: .4byte 0x68736D53

	thumb_func_start sub_08D9C720
sub_08D9C720: @ 0x08D9C720
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08D9C7E2
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08D9C760 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08D9C7E2
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D9C764
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08D9C7B6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08D9C7B6
	.align 2, 0
_08D9C760: .4byte 0x0000FFFF
_08D9C764:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08D9C7B6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08D9C796
_08D9C77A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08D9BA9C
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08D9C78E
	strb r0, [r4]
_08D9C78E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08D9C77A
_08D9C796:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08D9C7AA
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08D9C7AE
_08D9C7AA:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08D9C7AE:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08D9C7E2
_08D9C7B6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08D9C7E2
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08D9C7C4:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D9C7DA
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08D9C7DA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08D9C7C4
_08D9C7E2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9C7E8
sub_08D9C7E8: @ 0x08D9C7E8
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08D9C84C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08D9C810
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08D9C810:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08D9C826
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08D9C826:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08D9C832
	adds r1, r0, #0
	b _08D9C838
_08D9C832:
	cmp r1, #0x7f
	ble _08D9C838
	movs r1, #0x7f
_08D9C838:
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
_08D9C84C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08D9C890
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
	bne _08D9C88A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08D9C88A:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08D9C890:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9C89C
sub_08D9C89C: @ 0x08D9C89C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08D9C8D4
	cmp r5, #0x14
	bhi _08D9C8B8
	movs r5, #0
	b _08D9C8C6
_08D9C8B8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08D9C8C6
	movs r5, #0x3b
_08D9C8C6:
	ldr r0, _08D9C8D0 @ =gUnk_02010338
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08D9C936
	.align 2, 0
_08D9C8D0: .4byte gUnk_02010338
_08D9C8D4:
	cmp r5, #0x23
	bhi _08D9C8E0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08D9C8F2
_08D9C8E0:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08D9C8F2
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08D9C8F2:
	ldr r3, _08D9C93C @ =gUnk_0201029C
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08D9C940 @ =gUnk_02010320
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
_08D9C936:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D9C93C: .4byte gUnk_0201029C
_08D9C940: .4byte gUnk_02010320

	thumb_func_start sub_08D9C944
sub_08D9C944: @ 0x08D9C944
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08D9C96C
	cmp r0, #2
	bgt _08D9C958
	cmp r0, #1
	beq _08D9C95E
	b _08D9C980
_08D9C958:
	cmp r1, #3
	beq _08D9C974
	b _08D9C980
_08D9C95E:
	ldr r1, _08D9C968 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08D9C988
	.align 2, 0
_08D9C968: .4byte 0x04000063
_08D9C96C:
	ldr r1, _08D9C970 @ =0x04000069
	b _08D9C982
	.align 2, 0
_08D9C970: .4byte 0x04000069
_08D9C974:
	ldr r1, _08D9C97C @ =0x04000070
	movs r0, #0
	b _08D9C98A
	.align 2, 0
_08D9C97C: .4byte 0x04000070
_08D9C980:
	ldr r1, _08D9C990 @ =0x04000079
_08D9C982:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08D9C988:
	movs r0, #0x80
_08D9C98A:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08D9C990: .4byte 0x04000079

	thumb_func_start sub_08D9C994
sub_08D9C994: @ 0x08D9C994
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08D9C9B4
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08D9C9C0
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08D9C9CE
_08D9C9B4:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08D9C9C0
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08D9C9CE
_08D9C9C0:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08D9C9DE
_08D9C9CE:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08D9C9E0
	movs r0, #0xf
_08D9C9DE:
	strb r0, [r1, #0xa]
_08D9C9E0:
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

	thumb_func_start sub_08D9C9FC
sub_08D9C9FC: @ 0x08D9C9FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08D9CA1C @ =gUnk_03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08D9CA20
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08D9CA26
	.align 2, 0
_08D9CA1C: .4byte gUnk_03007FF0
_08D9CA20:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08D9CA26:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08D9CA2C:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08D9CA42
	b _08D9CE2C
_08D9CA42:
	cmp r6, #2
	beq _08D9CA74
	cmp r6, #2
	bgt _08D9CA50
	cmp r6, #1
	beq _08D9CA56
	b _08D9CAAC
_08D9CA50:
	cmp r6, #3
	beq _08D9CA8C
	b _08D9CAAC
_08D9CA56:
	ldr r0, _08D9CA68 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08D9CA6C @ =0x04000062
	ldr r2, _08D9CA70 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08D9CABC
	.align 2, 0
_08D9CA68: .4byte 0x04000060
_08D9CA6C: .4byte 0x04000062
_08D9CA70: .4byte 0x04000063
_08D9CA74:
	ldr r0, _08D9CA80 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08D9CA84 @ =0x04000068
	ldr r2, _08D9CA88 @ =0x04000069
	b _08D9CAB4
	.align 2, 0
_08D9CA80: .4byte 0x04000061
_08D9CA84: .4byte 0x04000068
_08D9CA88: .4byte 0x04000069
_08D9CA8C:
	ldr r0, _08D9CAA0 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08D9CAA4 @ =0x04000072
	ldr r2, _08D9CAA8 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08D9CABC
	.align 2, 0
_08D9CAA0: .4byte 0x04000070
_08D9CAA4: .4byte 0x04000072
_08D9CAA8: .4byte 0x04000073
_08D9CAAC:
	ldr r0, _08D9CB0C @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08D9CB10 @ =0x04000078
	ldr r2, _08D9CB14 @ =0x04000079
_08D9CAB4:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08D9CABC:
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
	beq _08D9CBB2
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
	bne _08D9CBD6
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_08D9C994
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08D9CB24
	cmp r6, #2
	bgt _08D9CB18
	cmp r6, #1
	beq _08D9CB1E
	b _08D9CB78
	.align 2, 0
_08D9CB0C: .4byte 0x04000071
_08D9CB10: .4byte 0x04000078
_08D9CB14: .4byte 0x04000079
_08D9CB18:
	cmp r6, #3
	beq _08D9CB30
	b _08D9CB78
_08D9CB1E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08D9CB24:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08D9CB84
_08D9CB30:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08D9CB58
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08D9CB6C @ =0x04000090
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
_08D9CB58:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08D9CB70
	movs r0, #0xc0
	b _08D9CB92
	.align 2, 0
_08D9CB6C: .4byte 0x04000090
_08D9CB70:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08D9CB94
_08D9CB78:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08D9CB84:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08D9CB92
	movs r0, #0x40
_08D9CB92:
	strb r0, [r4, #0x1a]
_08D9CB94:
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
	bne _08D9CBAE
	b _08D9CCEA
_08D9CBAE:
	strb r2, [r4, #9]
	b _08D9CD18
_08D9CBB2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08D9CBE4
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
	ble _08D9CBD6
	b _08D9CD2A
_08D9CBD6:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08D9C944
	movs r0, #0
	strb r0, [r4]
	b _08D9CE28
_08D9CBE4:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08D9CC24
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D9CC24
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08D9CC56
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08D9CD18
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08D9CD18
_08D9CC24:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08D9CD18
	cmp r6, #3
	bne _08D9CC36
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08D9CC36:
	adds r0, r4, #0
	bl sub_08D9C994
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08D9CC8A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08D9CC86
_08D9CC56:
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
	beq _08D9CBD6
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08D9CD2A
	movs r2, #8
	mov r8, r2
	b _08D9CD2A
_08D9CC86:
	ldrb r0, [r4, #7]
	b _08D9CD16
_08D9CC8A:
	cmp r0, #1
	bne _08D9CC96
_08D9CC8E:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08D9CD16
_08D9CC96:
	cmp r0, #2
	bne _08D9CCDA
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08D9CCD6
_08D9CCAE:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08D9CCBE
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08D9CC56
_08D9CCBE:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08D9CC8E
	movs r0, #8
	mov r8, r0
	b _08D9CC8E
_08D9CCD6:
	ldrb r0, [r4, #5]
	b _08D9CD16
_08D9CCDA:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08D9CD14
_08D9CCEA:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08D9CCAE
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08D9CD18
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08D9CD18
_08D9CD14:
	ldrb r0, [r4, #4]
_08D9CD16:
	strb r0, [r4, #0xb]
_08D9CD18:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08D9CD2A
	subs r0, #1
	str r0, [sp]
	b _08D9CC24
_08D9CD2A:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08D9CDA2
	cmp r6, #3
	bgt _08D9CD6A
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08D9CD6A
	ldr r0, _08D9CD54 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08D9CD5C
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08D9CD58 @ =0x000007FC
	b _08D9CD66
	.align 2, 0
_08D9CD54: .4byte 0x04000089
_08D9CD58: .4byte 0x000007FC
_08D9CD5C:
	cmp r0, #0x7f
	bgt _08D9CD6A
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08D9CD78 @ =0x000007FE
_08D9CD66:
	ands r0, r1
	str r0, [r4, #0x20]
_08D9CD6A:
	cmp r6, #4
	beq _08D9CD7C
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08D9CD8A
	.align 2, 0
_08D9CD78: .4byte 0x000007FE
_08D9CD7C:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08D9CD8A:
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
_08D9CDA2:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08D9CE28
	ldr r1, _08D9CDEC @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08D9CDF4
	ldr r0, _08D9CDF0 @ =gUnk_02010374
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
	beq _08D9CE28
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08D9CE28
	.align 2, 0
_08D9CDEC: .4byte 0x04000081
_08D9CDF0: .4byte gUnk_02010374
_08D9CDF4:
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
	bne _08D9CE28
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08D9CE28
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08D9CE28:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08D9CE2C:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08D9CE36
	b _08D9CA2C
_08D9CE36:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9CE48
sub_08D9CE48: @ 0x08D9CE48
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08D9CE6C @ =0x68736D53
	cmp r3, r0
	bne _08D9CE64
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08D9CE64:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9CE6C: .4byte 0x68736D53

	thumb_func_start sub_08D9CE70
sub_08D9CE70: @ 0x08D9CE70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08D9CED4 @ =0x68736D53
	cmp r3, r0
	bne _08D9CEC8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08D9CEC4
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08D9CEA0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08D9CEBA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08D9CEBA
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08D9CEBA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08D9CEA0
_08D9CEC4:
	ldr r0, _08D9CED4 @ =0x68736D53
	str r0, [r4, #0x34]
_08D9CEC8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9CED4: .4byte 0x68736D53

	thumb_func_start sub_08D9CED8
sub_08D9CED8: @ 0x08D9CED8
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
	ldr r0, _08D9CF48 @ =0x68736D53
	cmp r3, r0
	bne _08D9CF3A
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08D9CF36
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08D9CF10:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08D9CF2C
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08D9CF2C
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08D9CF2C:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08D9CF10
_08D9CF36:
	ldr r0, _08D9CF48 @ =0x68736D53
	str r0, [r4, #0x34]
_08D9CF3A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9CF48: .4byte 0x68736D53

	thumb_func_start sub_08D9CF4C
sub_08D9CF4C: @ 0x08D9CF4C
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
	ldr r0, _08D9CFB0 @ =0x68736D53
	cmp r3, r0
	bne _08D9CFA4
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08D9CFA0
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08D9CF7C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08D9CF96
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08D9CF96
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08D9CF96:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08D9CF7C
_08D9CFA0:
	ldr r0, _08D9CFB0 @ =0x68736D53
	str r0, [r4, #0x34]
_08D9CFA4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9CFB0: .4byte 0x68736D53

	thumb_func_start sub_08D9CFB4
sub_08D9CFB4: @ 0x08D9CFB4
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08D9CFC8
	movs r0, #0xc
	b _08D9CFCA
_08D9CFC8:
	movs r0, #3
_08D9CFCA:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9CFD4
sub_08D9CFD4: @ 0x08D9CFD4
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
	ldr r0, _08D9D044 @ =0x68736D53
	cmp r1, r0
	bne _08D9D034
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08D9D030
	mov sb, r8
_08D9D004:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08D9D026
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08D9D026
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08D9D026
	adds r0, r4, #0
	bl sub_08D9CFB4
_08D9D026:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08D9D004
_08D9D030:
	ldr r0, _08D9D044 @ =0x68736D53
	str r0, [r6, #0x34]
_08D9D034:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9D044: .4byte 0x68736D53

	thumb_func_start sub_08D9D048
sub_08D9D048: @ 0x08D9D048
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
	ldr r0, _08D9D0B8 @ =0x68736D53
	cmp r1, r0
	bne _08D9D0A8
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08D9D0A4
	mov sb, r8
_08D9D078:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08D9D09A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08D9D09A
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08D9D09A
	adds r0, r4, #0
	bl sub_08D9CFB4
_08D9D09A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08D9D078
_08D9D0A4:
	ldr r0, _08D9D0B8 @ =0x68736D53
	str r0, [r6, #0x34]
_08D9D0A8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9D0B8: .4byte 0x68736D53

	thumb_func_start sub_08D9D0BC
sub_08D9D0BC: @ 0x08D9D0BC
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
	bls _08D9D0E0
	b _08D9D20E
_08D9D0E0:
	lsls r0, r5, #2
	ldr r1, _08D9D0EC @ =gUnk_02008554
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08D9D0EC: .4byte gUnk_02008554
_08D9D0F0: @ jump table
	.4byte 0x0200859C @ case 0
	.4byte 0x020085A0 @ case 1
	.4byte 0x020085A8 @ case 2
	.4byte 0x020085B0 @ case 3
	.4byte 0x020085BA @ case 4
	.4byte 0x020085C8 @ case 5
	.4byte 0x020085D6 @ case 6
	.4byte 0x020085DE @ case 7
	.4byte 0x020085E6 @ case 8
	.4byte 0x020085EE @ case 9
	.4byte 0x020085F6 @ case 10
	.4byte 0x020085FE @ case 11
	.4byte 0x02008606 @ case 12
	.4byte 0x02008614 @ case 13
	.4byte 0x02008622 @ case 14
	.4byte 0x02008630 @ case 15
	.4byte 0x0200863E @ case 16
	.4byte 0x0200864C @ case 17
_08D9D138:
	strb r2, [r3]
	b _08D9D20E
_08D9D13C:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08D9D20E
_08D9D144:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08D9D20E
_08D9D14C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08D9D20E
_08D9D156:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08D9D20E
_08D9D164:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08D9D20E
_08D9D172:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08D9D1F4
	b _08D9D208
_08D9D17A:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08D9D1F4
	b _08D9D208
_08D9D182:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08D9D1F4
	b _08D9D208
_08D9D18A:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08D9D1F4
	b _08D9D208
_08D9D192:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08D9D1F4
	b _08D9D208
_08D9D19A:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08D9D1F4
	b _08D9D208
_08D9D1A2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08D9D1F4
	b _08D9D208
_08D9D1B0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08D9D1F4
	b _08D9D208
_08D9D1BE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08D9D1F4
	b _08D9D208
_08D9D1CC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08D9D1F4
	b _08D9D208
_08D9D1DA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08D9D1F4
	b _08D9D208
_08D9D1E8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08D9D208
_08D9D1F4:
	ldr r0, _08D9D204 @ =gUnk_02020064
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08DA04B4
	b _08D9D20E
	.align 2, 0
_08D9D204: .4byte gUnk_02020064
_08D9D208:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08D9D20E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9D214
sub_08D9D214: @ 0x08D9D214
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08D9D230 @ =gUnk_020103B8
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_08DA04B4
	pop {r0}
	bx r0
	.align 2, 0
_08D9D230: .4byte gUnk_020103B8

	thumb_func_start sub_08D9D234
sub_08D9D234: @ 0x08D9D234
	push {lr}
	ldr r2, _08D9D244 @ =gUnk_02020060
	ldr r2, [r2]
	bl sub_08DA04B4
	pop {r0}
	bx r0
	.align 2, 0
_08D9D244: .4byte gUnk_02020060

	thumb_func_start sub_08D9D248
sub_08D9D248: @ 0x08D9D248
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08D9D280 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08D9D284 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08D9D288 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08D9D28C @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9D280: .4byte 0xFFFFFF00
_08D9D284: .4byte 0xFFFF00FF
_08D9D288: .4byte 0xFF00FFFF
_08D9D28C: .4byte 0x00FFFFFF

	thumb_func_start sub_08D9D290
sub_08D9D290: @ 0x08D9D290
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

	thumb_func_start sub_08D9D2A4
sub_08D9D2A4: @ 0x08D9D2A4
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

	thumb_func_start sub_08D9D2B8
sub_08D9D2B8: @ 0x08D9D2B8
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

	thumb_func_start sub_08D9D2CC
sub_08D9D2CC: @ 0x08D9D2CC
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

	thumb_func_start sub_08D9D2E0
sub_08D9D2E0: @ 0x08D9D2E0
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

	thumb_func_start sub_08D9D2F4
sub_08D9D2F4: @ 0x08D9D2F4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08D9D300
sub_08D9D300: @ 0x08D9D300
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08D9D30C
sub_08D9D30C: @ 0x08D9D30C
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

	thumb_func_start sub_08D9D320
sub_08D9D320: @ 0x08D9D320
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

	thumb_func_start nullsub_78
nullsub_78: @ 0x08D9D334
	bx lr
	.align 2, 0
