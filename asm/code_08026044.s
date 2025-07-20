	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08028B5C
sub_08028B5C: @ 0x08028B5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r3, #0
	mov sl, r3
	movs r7, #0x84
	lsls r7, r7, #0xb
	movs r5, #0xfc
	lsls r5, r5, #8
	ldr r0, _08028BE4 @ =0x00042400
	mov r8, r0
	movs r1, #0x10
	mov ip, r1
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r2, r2, r4
	mov sb, r2
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r6, r4, r6
	str r6, [sp]
_08028B8E:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r4, r0
	ldrb r1, [r2, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	movs r0, #4
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	mov r6, sl
	strh r6, [r2, #0x16]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2, #0x1b]
	mov r0, ip
	strb r0, [r2, #0x1c]
	strb r3, [r2, #0x1f]
	lsls r1, r3, #3
	mov r6, sb
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	movs r6, #0xba
	lsls r6, r6, #2
	adds r0, r4, r6
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	str r7, [r2, #8]
	cmp r3, #1
	beq _08028C08
	cmp r3, #1
	bgt _08028BE8
	cmp r3, #0
	beq _08028BF2
	b _08028C52
	.align 2, 0
_08028BE4: .4byte 0x00042400
_08028BE8:
	cmp r3, #2
	beq _08028C24
	cmp r3, #3
	beq _08028C40
	b _08028C52
_08028BF2:
	str r7, [r2, #8]
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _08028C04 @ =0x00000306
	adds r0, r4, r2
	b _08028C50
	.align 2, 0
_08028C04: .4byte 0x00000306
_08028C08:
	mov r6, r8
	str r6, [r2, #8]
	movs r1, #0xc2
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08028C1C @ =0x0000FFC0
	strh r1, [r0]
	ldr r2, _08028C20 @ =0x0000030A
	adds r0, r4, r2
	b _08028C50
	.align 2, 0
_08028C1C: .4byte 0x0000FFC0
_08028C20: .4byte 0x0000030A
_08028C24:
	mov r6, r8
	str r6, [r2, #8]
	movs r1, #0xc3
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08028C38 @ =0x0000FF80
	strh r1, [r0]
	ldr r2, _08028C3C @ =0x0000030E
	adds r0, r4, r2
	b _08028C50
	.align 2, 0
_08028C38: .4byte 0x0000FF80
_08028C3C: .4byte 0x0000030E
_08028C40:
	str r7, [r2, #8]
	movs r6, #0xc4
	lsls r6, r6, #2
	adds r0, r4, r6
	movs r1, #0x80
	strh r1, [r0]
	ldr r1, _08028C88 @ =0x00000312
	adds r0, r4, r1
_08028C50:
	strh r5, [r0]
_08028C52:
	lsls r0, r3, #1
	adds r0, r0, r3
	mov r1, ip
	lsls r1, r0
	ldr r2, [sp]
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08028B8E
	ldr r0, _08028C8C @ =0x00000269
	bl m4aSongNumStart
	ldr r0, _08028C90 @ =sub_08028C94
	str r0, [r4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028C88: .4byte 0x00000312
_08028C8C: .4byte 0x00000269
_08028C90: .4byte sub_08028C94

	thumb_func_start sub_08028C94
sub_08028C94: @ 0x08028C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	mov ip, r0
	movs r7, #0
	ldr r1, _08028D38 @ =0x00000306
	adds r1, r6, r1
	str r1, [sp]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r1, r1, r6
	mov sb, r1
	movs r0, #0xba
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r8, r0
_08028CC6:
	lsls r5, r7, #2
	ldr r1, [sp]
	adds r4, r1, r5
	ldrh r0, [r4]
	adds r0, #0x26
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08028CE0
	movs r0, #0
	strh r0, [r4]
	movs r1, #1
	mov ip, r1
_08028CE0:
	lsls r2, r7, #3
	mov r0, sl
	adds r3, r0, r2
	mov r1, sb
	adds r1, r1, r5
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	add r2, r8
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r1, r5, r7
	lsls r1, r1, #3
	adds r1, r6, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08028CC6
	mov r1, ip
	cmp r1, #0
	beq _08028D26
	ldr r0, _08028D3C @ =sub_08028D40
	str r0, [r6]
_08028D26:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028D38: .4byte 0x00000306
_08028D3C: .4byte sub_08028D40

	thumb_func_start sub_08028D40
sub_08028D40: @ 0x08028D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r5, #0
	mov sl, r5
	movs r0, #0x10
	mov sb, r0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r6, r7, r1
_08028D5C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r7, r0
	lsls r2, r5, #3
	movs r3, #0xb9
	lsls r3, r3, #2
	adds r4, r7, r3
	adds r4, r4, r2
	adds r3, #0x30
	adds r1, r7, r3
	ldr r1, [r1]
	str r1, [r4]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r3, r7, r1
	adds r3, r3, r2
	movs r2, #0xc6
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r1, [r1]
	str r1, [r3]
	ldrb r2, [r0, #0x1b]
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x14]
	movs r1, #0x2d
	strh r1, [r0, #0xc]
	strb r5, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	movs r1, #0xff
	orrs r1, r2
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	ldr r1, [r4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x84
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	lsls r0, r5, #1
	adds r0, r0, r5
	mov r1, sb
	lsls r1, r0
	ldr r0, [r6]
	bics r0, r1
	str r0, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08028D5C
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r2, #0
	movs r4, #0
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r1, _08028E6C @ =0x000002DE
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #0xe
	strb r1, [r0, #0x1f]
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r6, r7, r2
	ldr r1, [r6]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	movs r3, #0xc6
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r1, [r5]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x7e
	bl m4aSongNumStart
	ldr r1, _08028E70 @ =0x00000292
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r3, [r0]
	ldr r0, [r6]
	str r0, [sp]
	ldr r0, [r5]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08029B14
	ldr r0, _08028E74 @ =sub_08029E44
	str r0, [r7]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028E6C: .4byte 0x000002DE
_08028E70: .4byte 0x00000292
_08028E74: .4byte sub_08029E44

	thumb_func_start sub_08028E78
sub_08028E78: @ 0x08028E78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r6, r5, r0
	ldr r0, [r6]
	adds r0, #0x28
	str r0, [r6]
	ldr r1, _08028F04 @ =0x000073FF
	cmp r0, r1
	ble _08028E9C
	ldr r0, _08028F08 @ =0x00000246
	bl m4aSongNumStart
	ldr r0, _08028F0C @ =sub_08028F10
	str r0, [r5]
_08028E9C:
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r2, r5, r1
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r1, r5, r3
	strh r0, [r1]
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r3, #2
	adds r1, r5, r3
	strh r0, [r1]
	movs r4, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	mov ip, r2
	movs r1, #0xba
	lsls r1, r1, #2
	adds r7, r5, r1
_08028ECA:
	lsls r2, r4, #3
	mov r0, r8
	adds r3, r0, r2
	mov r1, ip
	ldr r0, [r1]
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r6]
	str r0, [r2]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08028ECA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028F04: .4byte 0x000073FF
_08028F08: .4byte 0x00000246
_08028F0C: .4byte sub_08028F10

	thumb_func_start sub_08028F10
sub_08028F10: @ 0x08028F10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r2, r4, r0
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r5, r4, r1
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r3, r4, r6
	ldr r1, _08028F54 @ =0x00000322
	adds r0, r4, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [r2]
	ldr r0, _08028F58 @ =0x000095FF
	cmp r1, r0
	bgt _08028F5C
	ldrh r0, [r5]
	adds r0, #0xc
	strh r0, [r5]
	b _08028F6E
	.align 2, 0
_08028F54: .4byte 0x00000322
_08028F58: .4byte 0x000095FF
_08028F5C:
	ldr r1, _08028FEC @ =0x00000362
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08028FF0 @ =0x00000363
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08028FF4 @ =sub_08028FFC
	str r0, [r4]
_08028F6E:
	ldr r3, _08028FF8 @ =0x00000322
	adds r1, r4, r3
	ldrh r0, [r1]
	subs r0, #3
	strh r0, [r1]
	movs r5, #0xc5
	lsls r5, r5, #2
	adds r2, r4, r5
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r6, #0xaa
	lsls r6, r6, #1
	adds r1, r4, r6
	strh r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	asrs r0, r0, #8
	movs r5, #0xab
	lsls r5, r5, #1
	adds r3, r4, r5
	strh r0, [r3]
	movs r5, #0
	movs r6, #0xb9
	lsls r6, r6, #2
	adds r6, r6, r4
	mov r8, r6
	mov ip, r2
	movs r0, #0xba
	lsls r0, r0, #2
	adds r7, r4, r0
	adds r6, r1, #0
_08028FB0:
	lsls r2, r5, #3
	mov r1, r8
	adds r3, r1, r2
	mov r1, ip
	ldr r0, [r1]
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r6]
	str r0, [r2]
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r4, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08028FB0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028FEC: .4byte 0x00000362
_08028FF0: .4byte 0x00000363
_08028FF4: .4byte sub_08028FFC
_08028FF8: .4byte 0x00000322

	thumb_func_start sub_08028FFC
sub_08028FFC: @ 0x08028FFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x60
	adds r5, r0, #0
	ldr r1, _0802912C @ =gUnk_082EB3E4
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r7, r5, r0
	ldr r1, _08029130 @ =0x00000362
	adds r4, r5, r1
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sp
	ldr r1, [r0]
	ldrh r0, [r7]
	adds r0, r0, r1
	movs r2, #0
	mov r8, r2
	strh r0, [r7]
	ldr r3, _08029134 @ =0x00000322
	adds r6, r5, r3
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r3, r5, r0
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r1, r5, r3
	strh r0, [r1]
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r2, #0xab
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	ldr r0, _08029138 @ =0x00000363
	adds r3, r5, r0
	ldrb r2, [r3]
	adds r2, #1
	strb r2, [r3]
	movs r1, #0xff
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blt _080290C0
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	mov r2, ip
	ands r0, r2
	cmp r0, #8
	blo _080290C0
	mov r3, r8
	strh r3, [r7]
	strh r3, [r6]
	ldr r0, _0802913C @ =sub_08029E5C
	str r0, [r5]
_080290C0:
	movs r4, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r1, r1, r5
	mov ip, r1
	movs r2, #0xba
	lsls r2, r2, #2
	adds r7, r5, r2
	movs r3, #0xc6
	lsls r3, r3, #2
	adds r6, r5, r3
_080290DE:
	lsls r2, r4, #3
	mov r0, r8
	adds r3, r0, r2
	mov r1, ip
	ldr r0, [r1]
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r6]
	str r0, [r2]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _080290DE
	movs r2, #0xc6
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r1, [r0]
	ldr r0, _08029140 @ =0xFFFFE000
	cmp r1, r0
	bge _08029120
	ldr r0, _0802913C @ =sub_08029E5C
	str r0, [r5]
_08029120:
	add sp, #0x60
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802912C: .4byte gUnk_082EB3E4
_08029130: .4byte 0x00000362
_08029134: .4byte 0x00000322
_08029138: .4byte 0x00000363
_0802913C: .4byte sub_08029E5C
_08029140: .4byte 0xFFFFE000

	thumb_func_start sub_08029144
sub_08029144: @ 0x08029144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	ldr r2, _080291A0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080291A4 @ =gUnk_082EB2B4
	ldr r2, [r0]
	ldr r1, [r2]
	lsrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsrs r4, r1, #0x10
	ldr r1, [r2, #4]
	ldr r0, _080291A8 @ =0x0000035E
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r5, r0, #2
	ldr r7, _080291AC @ =gMainFlags
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080291B0
	adds r1, r6, #0
	adds r1, #0x60
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl LoadBgPaletteWithTransformation
	b _080291CC
	.align 2, 0
_080291A0: .4byte gDispCnt
_080291A4: .4byte gUnk_082EB2B4
_080291A8: .4byte 0x0000035E
_080291AC: .4byte gMainFlags
_080291B0:
	ldr r2, _08029450 @ =0x040000D4
	str r5, [r2]
	lsls r0, r6, #1
	ldr r1, _08029454 @ =gBgPalette + 0xC0
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r7]
_080291CC:
	ldr r0, _08029458 @ =gBgPalette
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r1, _0802945C @ =gRoomBackgroundTiles
	ldr r0, _08029460 @ =gRoomProps
	ldr r2, _08029464 @ =0x00008E4E
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08029468 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0802946C @ =gBgCntRegs
	ldr r0, _08029470 @ =0x00001E07
	strh r0, [r1, #4]
	mov r3, r8
	ldr r0, [r3, #8]
	ldr r1, _08029474 @ =0x06004000
	bl LZ77UnCompVram
	mov r0, r8
	ldr r4, [r0, #0x18]
	ldr r6, _08029478 @ =0x0600F000
	movs r5, #0
	mov r7, sl
	adds r7, #0xf4
	movs r1, #0xa4
	add r1, sl
	mov sb, r1
	mov r2, sl
	adds r2, #0xcc
	str r2, [sp]
_0802921C:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0802921C
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0xc5
	lsls r3, r3, #2
	add r3, sl
	movs r1, #0xf0
	lsls r1, r1, #7
	mov r8, r1
	str r1, [r3]
	movs r4, #0xc6
	lsls r4, r4, #2
	add r4, sl
	movs r1, #0xbe
	lsls r1, r1, #8
	str r1, [r4]
	movs r1, #0xc7
	lsls r1, r1, #2
	add r1, sl
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [r1]
	movs r2, #0xc8
	lsls r2, r2, #2
	add r2, sl
	movs r1, #0xfd
	lsls r1, r1, #8
	strh r1, [r2]
	ldr r1, _0802947C @ =0x00000322
	add r1, sl
	ldr r2, _08029480 @ =0xFFFFFE60
	strh r2, [r1]
	movs r1, #0xc9
	lsls r1, r1, #2
	add r1, sl
	adds r2, #0x20
	strh r2, [r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	adds r1, #0x9f
	strh r1, [r0, #0xc]
	movs r2, #0
	strb r2, [r0, #0x1a]
	movs r1, #0
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #0xe
	strb r1, [r0, #0x1f]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _08029484 @ =0x00002023
	str r1, [r0, #8]
	bl sub_08155128
	movs r5, #0xd5
	lsls r5, r5, #2
	add r5, sl
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5]
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r7, #0x14]
	ldr r6, _08029488 @ =0x0000039E
	strh r6, [r7, #0xc]
	movs r0, #2
	strb r0, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r4, #5
	strb r4, [r7, #0x1f]
	movs r2, #0
	strh r2, [r7, #0x10]
	strh r2, [r7, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r1, #0xcf
	lsls r1, r1, #2
	add r1, sl
	mov r3, r8
	str r3, [r1]
	movs r2, #0xd0
	lsls r2, r2, #2
	add r2, sl
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [r2]
	movs r0, #0xd1
	lsls r0, r0, #2
	add r0, sl
	movs r3, #0x80
	lsls r3, r3, #9
	str r3, [r0]
	movs r0, #0xd2
	lsls r0, r0, #2
	add r0, sl
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r0]
	ldr r0, _0802948C @ =0x0000034A
	add r0, sl
	ldr r3, _08029480 @ =0xFFFFFE60
	strh r3, [r0]
	movs r0, #0xd3
	lsls r0, r0, #2
	add r0, sl
	adds r3, #0x20
	strh r3, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r6, [r7, #0xc]
	movs r3, #0
	strb r3, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	ldr r0, _08029490 @ =0x00042022
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r5]
	ldr r1, _08029494 @ =0xFFFEFFFF
	ands r0, r1
	movs r1, #0xd0
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5]
	subs r6, #0x76
	add r6, sl
	mov r0, r8
	str r0, [r6]
	movs r1, #0xcb
	lsls r1, r1, #2
	add r1, sl
	mov r8, r1
	movs r2, #0xa0
	lsls r2, r2, #7
	str r2, [r1]
	movs r1, #0xcc
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r1]
	movs r1, #0xce
	lsls r1, r1, #2
	add r1, sl
	ldr r0, _08029498 @ =0x0000FFE0
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r3, sb
	strh r0, [r3, #0x14]
	ldr r1, _0802949C @ =0x0000039D
	strh r1, [r3, #0xc]
	strb r4, [r3, #0x1a]
	movs r2, #0
	strh r2, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r4, #4
	strb r4, [r3, #0x1f]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	ldr r7, _080294A0 @ =0x00002020
	str r7, [r3, #8]
	mov r0, sb
	bl sub_08155128
	movs r3, #0xc0
	lsls r3, r3, #2
	ldr r2, [sp]
	strh r3, [r2, #0x14]
	ldr r0, _0802949C @ =0x0000039D
	strh r0, [r2, #0xc]
	strb r4, [r2, #0x1a]
	movs r1, #0
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	strb r4, [r2, #0x1f]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	str r7, [r2, #8]
	ldr r0, [sp]
	bl sub_08155128
	ldr r0, [r5]
	ldr r1, _080294A4 @ =0xFFFFDFFF
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r5]
	movs r0, #0x91
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _080294A8 @ =0x0000035A
	add r0, sl
	movs r3, #0
	strh r3, [r0]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080294AC @ =sub_080294B0
	mov r1, sl
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029450: .4byte 0x040000D4
_08029454: .4byte gBgPalette + 0xC0
_08029458: .4byte gBgPalette
_0802945C: .4byte gRoomBackgroundTiles
_08029460: .4byte gRoomProps
_08029464: .4byte 0x00008E4E
_08029468: .4byte gBgScrollRegs
_0802946C: .4byte gBgCntRegs
_08029470: .4byte 0x00001E07
_08029474: .4byte 0x06004000
_08029478: .4byte 0x0600F000
_0802947C: .4byte 0x00000322
_08029480: .4byte 0xFFFFFE60
_08029484: .4byte 0x00002023
_08029488: .4byte 0x0000039E
_0802948C: .4byte 0x0000034A
_08029490: .4byte 0x00042022
_08029494: .4byte 0xFFFEFFFF
_08029498: .4byte 0x0000FFE0
_0802949C: .4byte 0x0000039D
_080294A0: .4byte 0x00002020
_080294A4: .4byte 0xFFFFDFFF
_080294A8: .4byte 0x0000035A
_080294AC: .4byte sub_080294B0

	thumb_func_start sub_080294B0
sub_080294B0: @ 0x080294B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	bge _080294D2
	movs r0, #0
	str r0, [r2]
_080294D2:
	ldr r1, _08029604 @ =0x0000035A
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0x78
	bls _0802955A
	movs r3, #0xc5
	lsls r3, r3, #2
	adds r2, r5, r3
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _08029608 @ =0x00000322
	adds r3, r5, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r6, r5, r1
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldrh r0, [r4]
	adds r0, #9
	movs r7, #0
	strh r0, [r4]
	ldrh r0, [r3]
	adds r0, #6
	strh r0, [r3]
	ldrh r0, [r2]
	adds r0, #4
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802953A
	strh r7, [r4]
_0802953A:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08029544
	strh r7, [r3]
_08029544:
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	ble _08029552
	strh r1, [r2]
_08029552:
	ldr r0, [r6]
	cmp r0, #0
	bge _0802955A
	str r7, [r6]
_0802955A:
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r4, r5, r1
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _0802960C @ =0x0000034A
	adds r3, r5, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r6, r5, r1
	movs r0, #0xd3
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldrh r0, [r4]
	subs r0, #9
	movs r7, #0
	strh r0, [r4]
	ldrh r0, [r3]
	adds r0, #5
	strh r0, [r3]
	ldrh r0, [r2]
	adds r0, #4
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080295B8
	strh r7, [r4]
_080295B8:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _080295C2
	strh r7, [r3]
_080295C2:
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080295D0
	strh r1, [r2]
_080295D0:
	ldr r0, [r6]
	cmp r0, #0
	bge _080295D8
	str r7, [r6]
_080295D8:
	ldr r0, _08029604 @ =0x0000035A
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, #0x64
	bne _080295E8
	ldr r0, _08029610 @ =0x0000026A
	bl m4aSongNumStart
_080295E8:
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080295FC
	ldr r0, _08029614 @ =sub_08029E74
	str r0, [r5]
_080295FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029604: .4byte 0x0000035A
_08029608: .4byte 0x00000322
_0802960C: .4byte 0x0000034A
_08029610: .4byte 0x0000026A
_08029614: .4byte sub_08029E74

	thumb_func_start sub_08029618
sub_08029618: @ 0x08029618
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _080296A8 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _080296AC @ =gBldRegs
	movs r7, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _080296B0 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _080296B4 @ =gBgPalette
	ldr r5, _080296B8 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _080296BC @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _080296C0 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r1, _080296C4 @ =gRgbMap
	ldr r2, _080296C8 @ =0x04000030
	adds r0, r6, #0
	bl CpuSet
	ldr r1, _080296CC @ =gUnk_03000008
	movs r0, #1
	strh r0, [r1]
	ldr r1, _080296D0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080296D4 @ =gUnk_03003A04
	ldr r0, _080296D8 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080296DC @ =gUnk_030068B0
	strb r7, [r0]
	ldr r1, _080296E0 @ =gUnk_03006078
	ldr r0, _080296E4 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080296E8 @ =gUnk_03000554
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802969C
	strb r7, [r1]
_0802969C:
	bl CreateTitleScreen
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080296A8: .4byte gDispCnt
_080296AC: .4byte gBldRegs
_080296B0: .4byte 0x00007FFF
_080296B4: .4byte gBgPalette
_080296B8: .4byte 0x01000100
_080296BC: .4byte gObjPalette
_080296C0: .4byte gMainFlags
_080296C4: .4byte gRgbMap
_080296C8: .4byte 0x04000030
_080296CC: .4byte gUnk_03000008
_080296D0: .4byte 0x0000FFFF
_080296D4: .4byte gUnk_03003A04
_080296D8: .4byte gUnk_03003790
_080296DC: .4byte gUnk_030068B0
_080296E0: .4byte gUnk_03006078
_080296E4: .4byte gUnk_030039A4
_080296E8: .4byte gUnk_03000554

	thumb_func_start sub_080296EC
sub_080296EC: @ 0x080296EC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r5, [r0]
	movs r7, #0x80
	lsls r7, r7, #0x16
	ands r5, r7
	cmp r5, #0
	bne _080297C8
	ldr r2, _080297D0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080297D4 @ =gBldRegs
	movs r3, #0
	ldr r0, _080297D8 @ =0x00000641
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	adds r4, r6, #4
	adds r0, r6, #0
	adds r0, #0x52
	ldrh r0, [r0]
	ldr r1, [r6, #0x48]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080297DC @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r1, _080297E0 @ =gBgCntRegs
	ldr r0, _080297E4 @ =0x00001D0D
	strh r0, [r1]
	ldr r0, _080297E8 @ =0x0600C000
	str r0, [r4, #4]
	strh r5, [r4, #0xa]
	ldr r0, _080297EC @ =0x0600E800
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	movs r1, #0xa
	strh r1, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	strh r1, [r4, #0x28]
	adds r0, r6, #0
	adds r0, #0x2e
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	movs r0, #8
	strh r0, [r4, #0x2e]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	ldr r0, _080297F0 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _080297F4 @ =gUnk_082D7850
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	str r5, [sp]
	ldr r1, [r4, #4]
	movs r0, #0xff
	lsls r0, r0, #5
	adds r1, r1, r0
	ldr r2, _080297F8 @ =0x05000008
	mov r0, sp
	bl CpuSet
	add r0, sp, #4
	movs r1, #0xff
	strh r1, [r0]
	ldr r1, [r4, #0xc]
	ldr r2, _080297FC @ =0x01000400
	bl CpuSet
	adds r0, r4, #0
	bl sub_08153060
	adds r0, r6, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r1, [r6, #0x44]
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r0, [r1]
	orrs r0, r7
	str r0, [r1]
	ldr r0, _08029800 @ =sub_08029804
	str r0, [r6]
_080297C8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080297D0: .4byte gDispCnt
_080297D4: .4byte gBldRegs
_080297D8: .4byte 0x00000641
_080297DC: .4byte gBgScrollRegs
_080297E0: .4byte gBgCntRegs
_080297E4: .4byte 0x00001D0D
_080297E8: .4byte 0x0600C000
_080297EC: .4byte 0x0600E800
_080297F0: .4byte 0x00007FFF
_080297F4: .4byte gUnk_082D7850
_080297F8: .4byte 0x05000008
_080297FC: .4byte 0x01000400
_08029800: .4byte sub_08029804

	thumb_func_start sub_08029804
sub_08029804: @ 0x08029804
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08029848
	ldr r1, _0802983C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	ldr r1, [r3, #0x44]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08029840 @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _08029844 @ =sub_0802A3D0
	str r0, [r3]
	b _08029854
	.align 2, 0
_0802983C: .4byte gBldRegs
_08029840: .4byte 0xDFFFFFFF
_08029844: .4byte sub_0802A3D0
_08029848:
	ldr r1, _08029858 @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	orrs r2, r0
	strh r2, [r1, #2]
_08029854:
	pop {r0}
	bx r0
	.align 2, 0
_08029858: .4byte gBldRegs

	thumb_func_start sub_0802985C
sub_0802985C: @ 0x0802985C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080298B4
	ldr r2, _080298A0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080298A4 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080298A8 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldr r1, [r3, #0x44]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _080298AC @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _080298B0 @ =sub_0802A468
	str r0, [r3]
	b _080298C0
	.align 2, 0
_080298A0: .4byte gDispCnt
_080298A4: .4byte 0x0000FEFF
_080298A8: .4byte gBldRegs
_080298AC: .4byte 0xDFFFFFFF
_080298B0: .4byte sub_0802A468
_080298B4:
	ldr r0, _080298C4 @ =gBldRegs
	movs r1, #0x10
	subs r1, r1, r2
	lsls r2, r2, #8
	orrs r1, r2
	strh r1, [r0, #2]
_080298C0:
	pop {r0}
	bx r0
	.align 2, 0
_080298C4: .4byte gBldRegs

	thumb_func_start sub_080298C8
sub_080298C8: @ 0x080298C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0802999C @ =gBldRegs
	movs r3, #0
	movs r5, #0
	movs r0, #0xae
	strh r0, [r1]
	strh r5, [r1, #4]
	adds r1, r2, #0
	adds r1, #0xa4
	adds r2, #0xcc
	movs r7, #0xc0
	lsls r7, r7, #2
	strh r7, [r1, #0x14]
	ldr r0, _080299A0 @ =0x0000039D
	mov sl, r0
	mov r0, sl
	strh r0, [r1, #0xc]
	strb r3, [r1, #0x1a]
	strh r5, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r3, #0x10
	mov ip, r3
	mov r0, ip
	strb r0, [r1, #0x1c]
	movs r3, #4
	mov sb, r3
	mov r0, sb
	strb r0, [r1, #0x1f]
	ldr r0, [r4, #4]
	movs r3, #0xca
	lsls r3, r3, #2
	mov r8, r3
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #4]
	movs r6, #0xcb
	lsls r6, r6, #2
	adds r0, r0, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r3, _080299A4 @ =0x00002020
	str r3, [r1, #8]
	strh r7, [r2, #0x14]
	mov r0, sl
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	strh r5, [r2, #0x16]
	subs r0, #2
	strb r0, [r2, #0x1b]
	mov r0, ip
	strb r0, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	ldr r0, [r4, #4]
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #4]
	adds r0, r0, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	str r3, [r2, #8]
	ldr r1, [r4, #4]
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r2, _080299A8 @ =0xFFFF9FFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _080299AC @ =0x0000023E
	bl m4aSongNumStart
	strh r5, [r4, #0xa]
	ldr r0, _080299B0 @ =sub_0802A4F0
	str r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802999C: .4byte gBldRegs
_080299A0: .4byte 0x0000039D
_080299A4: .4byte 0x00002020
_080299A8: .4byte 0xFFFF9FFF
_080299AC: .4byte 0x0000023E
_080299B0: .4byte sub_0802A4F0

	thumb_func_start sub_080299B4
sub_080299B4: @ 0x080299B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _08029A0C @ =sub_08029A88
	ldr r2, _08029A10 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029A14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08029A1C
	.align 2, 0
_08029A0C: .4byte sub_08029A88
_08029A10: .4byte 0x00000101
_08029A14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08029A1C:
	mov r0, r8
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r0, [sp, #4]
	str r0, [r4]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029A88
sub_08029A88: @ 0x08029A88
	push {r4, lr}
	ldr r2, _08029AA4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029AA8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08029AB0
	.align 2, 0
_08029AA4: .4byte gCurTask
_08029AA8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08029AB0:
	adds r4, r0, #0
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _08029AD6
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029AEA
_08029AD6:
	ldr r0, [r4, #0x28]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08029AF2
_08029AEA:
	ldr r0, [r2]
	bl TaskDestroy
	b _08029B0E
_08029AF2:
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	bl sub_0815604C
_08029B0E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08029B14
sub_08029B14: @ 0x08029B14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _08029B6C @ =sub_08029BE4
	ldr r2, _08029B70 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029B74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08029B7C
	.align 2, 0
_08029B6C: .4byte sub_08029BE4
_08029B70: .4byte 0x00000101
_08029B74:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08029B7C:
	mov r0, sb
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r0, [sp, #4]
	str r0, [r4]
	movs r0, #0x40
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029BE4
sub_08029BE4: @ 0x08029BE4
	push {r4, r5, lr}
	ldr r0, _08029C00 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029C04
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08029C0C
	.align 2, 0
_08029C00: .4byte gCurTask
_08029C04:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08029C0C:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08029C4C
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _08029C48
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08029C48
	ldr r0, _08029C40 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029C44 @ =sub_08029EE0
	str r0, [r1, #8]
	b _08029C4C
	.align 2, 0
_08029C40: .4byte gCurTask
_08029C44: .4byte sub_08029EE0
_08029C48:
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08029C4C:
	adds r0, r5, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08029C84
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08029C84
	cmp r1, #0xe0
	ble _08029C8C
_08029C84:
	ldr r0, _08029CB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029CB4 @ =sub_08029EE0
	str r0, [r1, #8]
_08029C8C:
	ldr r0, [r4, #0x28]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08029CA8
	ldr r0, _08029CB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029CB4 @ =sub_08029EE0
	str r0, [r1, #8]
_08029CA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029CB0: .4byte gCurTask
_08029CB4: .4byte sub_08029EE0

	thumb_func_start sub_08029CB8
sub_08029CB8: @ 0x08029CB8
	ldr r1, _08029CC8 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029CCC @ =sub_08029EF4
	str r1, [r0]
	bx lr
	.align 2, 0
_08029CC8: .4byte 0x0000035A
_08029CCC: .4byte sub_08029EF4

	thumb_func_start sub_08029CD0
sub_08029CD0: @ 0x08029CD0
	ldr r1, _08029CE0 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029CE4 @ =sub_08029F1C
	str r1, [r0]
	bx lr
	.align 2, 0
_08029CE0: .4byte 0x0000035A
_08029CE4: .4byte sub_08029F1C

	thumb_func_start sub_08029CE8
sub_08029CE8: @ 0x08029CE8
	ldr r1, _08029CF8 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029CFC @ =sub_0802A008
	str r1, [r0]
	bx lr
	.align 2, 0
_08029CF8: .4byte 0x0000035A
_08029CFC: .4byte sub_0802A008

	thumb_func_start sub_08029D00
sub_08029D00: @ 0x08029D00
	ldr r1, _08029D10 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029D14 @ =sub_0802A030
	str r1, [r0]
	bx lr
	.align 2, 0
_08029D10: .4byte 0x0000035A
_08029D14: .4byte sub_0802A030

	thumb_func_start sub_08029D18
sub_08029D18: @ 0x08029D18
	push {lr}
	ldr r1, _08029D30 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029D34 @ =sub_0802A058
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08029D30: .4byte 0x0000035A
_08029D34: .4byte sub_0802A058

	thumb_func_start sub_08029D38
sub_08029D38: @ 0x08029D38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08029D8C @ =gBldRegs
	movs r5, #0
	movs r0, #0xfe
	strh r0, [r1]
	strh r5, [r1, #4]
	ldr r0, _08029D90 @ =gMPlayInfo_0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029D94 @ =gMPlayInfo_1
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029D98 @ =gMPlayInfo_2
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029D9C @ =gMPlayInfo_3
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r1, _08029DA0 @ =0x0000035A
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _08029DA4 @ =0xFFFF7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08029DA8 @ =sub_080273B0
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029D8C: .4byte gBldRegs
_08029D90: .4byte gMPlayInfo_0
_08029D94: .4byte gMPlayInfo_1
_08029D98: .4byte gMPlayInfo_2
_08029D9C: .4byte gMPlayInfo_3
_08029DA0: .4byte 0x0000035A
_08029DA4: .4byte 0xFFFF7FFF
_08029DA8: .4byte sub_080273B0

	thumb_func_start sub_08029DAC
sub_08029DAC: @ 0x08029DAC
	push {lr}
	ldr r1, _08029DC4 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029DC8 @ =sub_0802A0A8
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08029DC4: .4byte 0x0000035A
_08029DC8: .4byte sub_0802A0A8

	thumb_func_start sub_08029DCC
sub_08029DCC: @ 0x08029DCC
	ldr r1, _08029DDC @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029DE0 @ =sub_0802A0E8
	str r1, [r0]
	bx lr
	.align 2, 0
_08029DDC: .4byte 0x0000035A
_08029DE0: .4byte sub_0802A0E8

	thumb_func_start sub_08029DE4
sub_08029DE4: @ 0x08029DE4
	ldr r1, _08029DF4 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029DF8 @ =sub_0802A18C
	str r1, [r0]
	bx lr
	.align 2, 0
_08029DF4: .4byte 0x0000035A
_08029DF8: .4byte sub_0802A18C

	thumb_func_start sub_08029DFC
sub_08029DFC: @ 0x08029DFC
	ldr r1, _08029E0C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E10 @ =sub_0802A234
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E0C: .4byte 0x0000035A
_08029E10: .4byte sub_0802A234

	thumb_func_start sub_08029E14
sub_08029E14: @ 0x08029E14
	ldr r1, _08029E24 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E28 @ =sub_0802A2D4
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E24: .4byte 0x0000035A
_08029E28: .4byte sub_0802A2D4

	thumb_func_start sub_08029E2C
sub_08029E2C: @ 0x08029E2C
	ldr r1, _08029E3C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E40 @ =sub_0802A2FC
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E3C: .4byte 0x0000035A
_08029E40: .4byte sub_0802A2FC

	thumb_func_start sub_08029E44
sub_08029E44: @ 0x08029E44
	ldr r1, _08029E54 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E58 @ =sub_0802A324
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E54: .4byte 0x0000035A
_08029E58: .4byte sub_0802A324

	thumb_func_start sub_08029E5C
sub_08029E5C: @ 0x08029E5C
	ldr r1, _08029E6C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E70 @ =sub_0802A34C
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E6C: .4byte 0x0000035A
_08029E70: .4byte sub_0802A34C

	thumb_func_start sub_08029E74
sub_08029E74: @ 0x08029E74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08029EC4 @ =gBldRegs
	movs r5, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r5, [r1, #4]
	ldr r0, _08029EC8 @ =gMPlayInfo_0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029ECC @ =gMPlayInfo_1
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029ED0 @ =gMPlayInfo_2
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029ED4 @ =gMPlayInfo_3
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r1, _08029ED8 @ =0x0000035A
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08029EDC @ =sub_0802A394
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029EC4: .4byte gBldRegs
_08029EC8: .4byte gMPlayInfo_0
_08029ECC: .4byte gMPlayInfo_1
_08029ED0: .4byte gMPlayInfo_2
_08029ED4: .4byte gMPlayInfo_3
_08029ED8: .4byte 0x0000035A
_08029EDC: .4byte sub_0802A394

	thumb_func_start sub_08029EE0
sub_08029EE0: @ 0x08029EE0
	push {lr}
	ldr r0, _08029EF0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08029EF0: .4byte gCurTask

	thumb_func_start sub_08029EF4
sub_08029EF4: @ 0x08029EF4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08029F14 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _08029F0E
	ldr r0, _08029F18 @ =sub_0802A610
	str r0, [r3]
_08029F0E:
	pop {r0}
	bx r0
	.align 2, 0
_08029F14: .4byte 0x0000035A
_08029F18: .4byte sub_0802A610

	thumb_func_start sub_08029F1C
sub_08029F1C: @ 0x08029F1C
	push {lr}
	adds r3, r0, #0
	ldr r1, _08029F3C @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _08029F36
	ldr r0, _08029F40 @ =sub_0802A634
	str r0, [r3]
_08029F36:
	pop {r0}
	bx r0
	.align 2, 0
_08029F3C: .4byte 0x0000035A
_08029F40: .4byte sub_0802A634

	thumb_func_start sub_08029F44
sub_08029F44: @ 0x08029F44
	push {lr}
	adds r3, r0, #0
	ldr r0, _08029F74 @ =0x0000035A
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08029F84
	ldr r1, _08029F78 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _08029F7C @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08029F80 @ =sub_08026CC0
	str r0, [r3]
	b _08029F8A
	.align 2, 0
_08029F74: .4byte 0x0000035A
_08029F78: .4byte gBldRegs
_08029F7C: .4byte 0xDFFFFFFF
_08029F80: .4byte sub_08026CC0
_08029F84:
	ldr r1, _08029F90 @ =gBldRegs
	lsls r0, r2, #2
	strh r0, [r1, #4]
_08029F8A:
	pop {r0}
	bx r0
	.align 2, 0
_08029F90: .4byte gBldRegs

	thumb_func_start sub_08029F94
sub_08029F94: @ 0x08029F94
	ldr r1, _08029FA4 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029FA8 @ =sub_08029FAC
	str r1, [r0]
	bx lr
	.align 2, 0
_08029FA4: .4byte 0x0000035A
_08029FA8: .4byte sub_08029FAC

	thumb_func_start sub_08029FAC
sub_08029FAC: @ 0x08029FAC
	push {lr}
	adds r3, r0, #0
	ldr r1, _08029FCC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08029FC6
	ldr r0, _08029FD0 @ =sub_08029FD4
	str r0, [r3]
_08029FC6:
	pop {r0}
	bx r0
	.align 2, 0
_08029FCC: .4byte 0x0000035A
_08029FD0: .4byte sub_08029FD4

	thumb_func_start sub_08029FD4
sub_08029FD4: @ 0x08029FD4
	ldr r2, _08029FFC @ =gBldRegs
	movs r3, #0
	movs r1, #0xaf
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #4]
	ldr r2, _0802A000 @ =0x0000035A
	adds r1, r0, r2
	strh r3, [r1]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #0x16
	orrs r1, r2
	str r1, [r3]
	ldr r1, _0802A004 @ =sub_08026DC0
	str r1, [r0]
	bx lr
	.align 2, 0
_08029FFC: .4byte gBldRegs
_0802A000: .4byte 0x0000035A
_0802A004: .4byte sub_08026DC0

	thumb_func_start sub_0802A008
sub_0802A008: @ 0x0802A008
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A028 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bls _0802A022
	ldr r0, _0802A02C @ =sub_0802A660
	str r0, [r3]
_0802A022:
	pop {r0}
	bx r0
	.align 2, 0
_0802A028: .4byte 0x0000035A
_0802A02C: .4byte sub_0802A660

	thumb_func_start sub_0802A030
sub_0802A030: @ 0x0802A030
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A050 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A04A
	ldr r0, _0802A054 @ =sub_0802A69C
	str r0, [r3]
_0802A04A:
	pop {r0}
	bx r0
	.align 2, 0
_0802A050: .4byte 0x0000035A
_0802A054: .4byte sub_0802A69C

	thumb_func_start sub_0802A058
sub_0802A058: @ 0x0802A058
	push {lr}
	adds r3, r0, #0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	ldr r0, _0802A0A0 @ =0x0000035A
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0802A09C
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A09C
	ldr r0, _0802A0A4 @ =sub_0802A6D4
	str r0, [r3]
_0802A09C:
	pop {r0}
	bx r0
	.align 2, 0
_0802A0A0: .4byte 0x0000035A
_0802A0A4: .4byte sub_0802A6D4

	thumb_func_start sub_0802A0A8
sub_0802A0A8: @ 0x0802A0A8
	push {lr}
	adds r3, r0, #0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	ldr r0, _0802A0E0 @ =0x0000035A
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0802A0DA
	ldr r0, _0802A0E4 @ =sub_0802A6E8
	str r0, [r3]
_0802A0DA:
	pop {r0}
	bx r0
	.align 2, 0
_0802A0E0: .4byte 0x0000035A
_0802A0E4: .4byte sub_0802A6E8

	thumb_func_start sub_0802A0E8
sub_0802A0E8: @ 0x0802A0E8
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A108 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A102
	ldr r0, _0802A10C @ =sub_08027590
	str r0, [r3]
_0802A102:
	pop {r0}
	bx r0
	.align 2, 0
_0802A108: .4byte 0x0000035A
_0802A10C: .4byte sub_08027590

	thumb_func_start sub_0802A110
sub_0802A110: @ 0x0802A110
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A130 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #5
	bls _0802A12A
	ldr r0, _0802A134 @ =sub_080279F4
	str r0, [r3]
_0802A12A:
	pop {r0}
	bx r0
	.align 2, 0
_0802A130: .4byte 0x0000035A
_0802A134: .4byte sub_080279F4

	thumb_func_start sub_0802A138
sub_0802A138: @ 0x0802A138
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A158 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #4
	bls _0802A152
	ldr r0, _0802A15C @ =sub_08027AC0
	str r0, [r3]
_0802A152:
	pop {r0}
	bx r0
	.align 2, 0
_0802A158: .4byte 0x0000035A
_0802A15C: .4byte sub_08027AC0

	thumb_func_start sub_0802A160
sub_0802A160: @ 0x0802A160
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _0802A184 @ =0xFFEEFFFD
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	bl ResetRgbMap
	ldr r0, _0802A188 @ =sub_08027C80
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A184: .4byte 0xFFEEFFFD
_0802A188: .4byte sub_08027C80

	thumb_func_start sub_0802A18C
sub_0802A18C: @ 0x0802A18C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A1AC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0802A1A6
	ldr r0, _0802A1B0 @ =sub_0802801C
	str r0, [r3]
_0802A1A6:
	pop {r0}
	bx r0
	.align 2, 0
_0802A1AC: .4byte 0x0000035A
_0802A1B0: .4byte sub_0802801C

	thumb_func_start sub_0802A1B4
sub_0802A1B4: @ 0x0802A1B4
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, r1
	bne _0802A1CE
	ldr r0, _0802A1D4 @ =sub_080280DC
	str r0, [r2]
_0802A1CE:
	pop {r0}
	bx r0
	.align 2, 0
_0802A1D4: .4byte sub_080280DC

	thumb_func_start sub_0802A1D8
sub_0802A1D8: @ 0x0802A1D8
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r4, r3, r0
	ldr r0, [r4]
	ldr r1, _0802A220 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0802A224 @ =0xFFFFE000
	cmp r0, r1
	bge _0802A206
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802A228 @ =0xFFFC7FFF
	ands r0, r1
	ldr r1, _0802A22C @ =0xFFC7FFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802A230 @ =sub_0802A714
	str r0, [r3]
_0802A206:
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A220: .4byte 0xFFFFF800
_0802A224: .4byte 0xFFFFE000
_0802A228: .4byte 0xFFFC7FFF
_0802A22C: .4byte 0xFFC7FFFF
_0802A230: .4byte sub_0802A714

	thumb_func_start sub_0802A234
sub_0802A234: @ 0x0802A234
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A254 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A24E
	ldr r0, _0802A258 @ =sub_080283F8
	str r0, [r3]
_0802A24E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A254: .4byte 0x0000035A
_0802A258: .4byte sub_080283F8

	thumb_func_start sub_0802A25C
sub_0802A25C: @ 0x0802A25C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A27C @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A276
	ldr r0, _0802A280 @ =sub_08028528
	str r0, [r3]
_0802A276:
	pop {r0}
	bx r0
	.align 2, 0
_0802A27C: .4byte 0x0000035A
_0802A280: .4byte sub_08028528

	thumb_func_start sub_0802A284
sub_0802A284: @ 0x0802A284
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A2A4 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #5
	bls _0802A29E
	ldr r0, _0802A2A8 @ =sub_08028608
	str r0, [r3]
_0802A29E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A2A4: .4byte 0x0000035A
_0802A2A8: .4byte sub_08028608

	thumb_func_start sub_0802A2AC
sub_0802A2AC: @ 0x0802A2AC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A2CC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802A2C6
	ldr r0, _0802A2D0 @ =sub_080286C4
	str r0, [r3]
_0802A2C6:
	pop {r0}
	bx r0
	.align 2, 0
_0802A2CC: .4byte 0x0000035A
_0802A2D0: .4byte sub_080286C4

	thumb_func_start sub_0802A2D4
sub_0802A2D4: @ 0x0802A2D4
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A2F4 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x14
	bls _0802A2EE
	ldr r0, _0802A2F8 @ =sub_08028A1C
	str r0, [r3]
_0802A2EE:
	pop {r0}
	bx r0
	.align 2, 0
_0802A2F4: .4byte 0x0000035A
_0802A2F8: .4byte sub_08028A1C

	thumb_func_start sub_0802A2FC
sub_0802A2FC: @ 0x0802A2FC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A31C @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802A316
	ldr r0, _0802A320 @ =sub_08028B5C
	str r0, [r3]
_0802A316:
	pop {r0}
	bx r0
	.align 2, 0
_0802A31C: .4byte 0x0000035A
_0802A320: .4byte sub_08028B5C

	thumb_func_start sub_0802A324
sub_0802A324: @ 0x0802A324
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A344 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A33E
	ldr r0, _0802A348 @ =sub_0802A72C
	str r0, [r3]
_0802A33E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A344: .4byte 0x0000035A
_0802A348: .4byte sub_0802A72C

	thumb_func_start sub_0802A34C
sub_0802A34C: @ 0x0802A34C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A384 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A380
	ldr r2, _0802A388 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802A38C @ =0x0000F9FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802A390 @ =sub_08029144
	str r0, [r3]
_0802A380:
	pop {r0}
	bx r0
	.align 2, 0
_0802A384: .4byte 0x0000035A
_0802A388: .4byte gDispCnt
_0802A38C: .4byte 0x0000F9FF
_0802A390: .4byte sub_08029144

	thumb_func_start sub_0802A394
sub_0802A394: @ 0x0802A394
	push {lr}
	adds r3, r0, #0
	ldr r0, _0802A3B8 @ =0x0000035A
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802A3C4
	ldr r0, _0802A3BC @ =gBldRegs
	movs r1, #0x10
	strh r1, [r0, #4]
	ldr r0, _0802A3C0 @ =sub_0802A74C
	str r0, [r3]
	b _0802A3C8
	.align 2, 0
_0802A3B8: .4byte 0x0000035A
_0802A3BC: .4byte gBldRegs
_0802A3C0: .4byte sub_0802A74C
_0802A3C4:
	ldr r0, _0802A3CC @ =gBldRegs
	strh r2, [r0, #4]
_0802A3C8:
	pop {r0}
	bx r0
	.align 2, 0
_0802A3CC: .4byte gBldRegs

	thumb_func_start sub_0802A3D0
sub_0802A3D0: @ 0x0802A3D0
	adds r2, r0, #0
	adds r2, #0x50
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A3E0 @ =sub_0802A3E4
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A3E0: .4byte sub_0802A3E4

	thumb_func_start sub_0802A3E4
sub_0802A3E4: @ 0x0802A3E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x52
	ldrh r2, [r0]
	ldr r0, [r4, #0x48]
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r3, r4, #0
	adds r3, #0x50
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	ldrh r1, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _0802A424
	ldr r0, [r4, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _0802A424
	ldr r1, _0802A42C @ =sub_0802A430
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0802A424:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A42C: .4byte sub_0802A430

	thumb_func_start sub_0802A430
sub_0802A430: @ 0x0802A430
	ldr r2, _0802A45C @ =gBldRegs
	movs r3, #0
	ldr r1, _0802A460 @ =0x00000641
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #2]
	adds r1, r0, #0
	adds r1, #0x50
	strh r3, [r1]
	ldr r2, [r0, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r2, r2, r1
	ldr r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x16
	orrs r1, r3
	str r1, [r2]
	ldr r1, _0802A464 @ =sub_0802985C
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A45C: .4byte gBldRegs
_0802A460: .4byte 0x00000641
_0802A464: .4byte sub_0802985C

	thumb_func_start sub_0802A468
sub_0802A468: @ 0x0802A468
	adds r2, r0, #0
	adds r2, #0x50
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A478 @ =sub_0802A47C
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A478: .4byte sub_0802A47C

	thumb_func_start sub_0802A47C
sub_0802A47C: @ 0x0802A47C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A494
	ldr r0, _0802A498 @ =sub_0802A49C
	str r0, [r3]
_0802A494:
	pop {r0}
	bx r0
	.align 2, 0
_0802A498: .4byte sub_0802A49C

	thumb_func_start sub_0802A49C
sub_0802A49C: @ 0x0802A49C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	subs r1, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bhs _0802A4C0
	ldr r0, _0802A4BC @ =sub_080296EC
	b _0802A4C2
	.align 2, 0
_0802A4BC: .4byte sub_080296EC
_0802A4C0:
	ldr r0, _0802A4C8 @ =sub_0802A4CC
_0802A4C2:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0802A4C8: .4byte sub_0802A4CC

	thumb_func_start sub_0802A4CC
sub_0802A4CC: @ 0x0802A4CC
	push {lr}
	ldr r1, [r0, #0x44]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0802A4EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802A4EC: .4byte gCurTask

	thumb_func_start sub_0802A4F0
sub_0802A4F0: @ 0x0802A4F0
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0xa]
	adds r2, r0, #1
	strh r2, [r3, #0xa]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0802A518
	ldr r0, _0802A510 @ =gBldRegs
	movs r1, #0x10
	strh r1, [r0, #4]
	ldr r0, _0802A514 @ =sub_0802A528
	str r0, [r3]
	b _0802A51E
	.align 2, 0
_0802A510: .4byte gBldRegs
_0802A514: .4byte sub_0802A528
_0802A518:
	ldr r1, _0802A524 @ =gBldRegs
	lsls r0, r2, #2
	strh r0, [r1, #4]
_0802A51E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A524: .4byte gBldRegs

	thumb_func_start sub_0802A528
sub_0802A528: @ 0x0802A528
	movs r1, #0
	strh r1, [r0, #0xa]
	ldr r1, _0802A534 @ =sub_0802A538
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A534: .4byte sub_0802A538

	thumb_func_start sub_0802A538
sub_0802A538: @ 0x0802A538
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xa]
	adds r1, r0, #1
	strh r1, [r2, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0802A54E
	ldr r0, _0802A554 @ =sub_0802A558
	str r0, [r2]
_0802A54E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A554: .4byte sub_0802A558

	thumb_func_start sub_0802A558
sub_0802A558: @ 0x0802A558
	ldr r2, _0802A56C @ =gBldRegs
	movs r3, #0
	movs r1, #0xae
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #4]
	strh r3, [r0, #0xa]
	ldr r1, _0802A570 @ =sub_0802A574
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A56C: .4byte gBldRegs
_0802A570: .4byte sub_0802A574

	thumb_func_start sub_0802A574
sub_0802A574: @ 0x0802A574
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0xa]
	adds r1, r0, #1
	movs r2, #0
	strh r1, [r3, #0xa]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0802A5B0
	ldr r0, _0802A5A4 @ =gBldRegs
	strh r2, [r0]
	strh r2, [r0, #4]
	ldr r1, [r3, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0802A5A8 @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0802A5AC @ =sub_0802A5C4
	str r0, [r3]
	b _0802A5BC
	.align 2, 0
_0802A5A4: .4byte gBldRegs
_0802A5A8: .4byte 0xDFFFFFFF
_0802A5AC: .4byte sub_0802A5C4
_0802A5B0:
	ldr r2, _0802A5C0 @ =gBldRegs
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x11
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2, #4]
_0802A5BC:
	pop {r0}
	bx r0
	.align 2, 0
_0802A5C0: .4byte gBldRegs

	thumb_func_start sub_0802A5C4
sub_0802A5C4: @ 0x0802A5C4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _0802A5E0
	ldr r0, _0802A5DC @ =sub_0802A9E8
	b _0802A5E2
	.align 2, 0
_0802A5DC: .4byte sub_0802A9E8
_0802A5E0:
	ldr r0, _0802A5E8 @ =sub_0802A5EC
_0802A5E2:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802A5E8: .4byte sub_0802A5EC

	thumb_func_start sub_0802A5EC
sub_0802A5EC: @ 0x0802A5EC
	push {lr}
	ldr r1, [r0, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0802A60C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802A60C: .4byte gCurTask

	thumb_func_start sub_0802A610
sub_0802A610: @ 0x0802A610
	ldr r2, _0802A628 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #4]
	ldr r2, _0802A62C @ =0x0000035A
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _0802A630 @ =sub_08026B78
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A628: .4byte gBldRegs
_0802A62C: .4byte 0x0000035A
_0802A630: .4byte sub_08026B78

	thumb_func_start sub_0802A634
sub_0802A634: @ 0x0802A634
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A654 @ =gLanguage
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A658 @ =gUnk_082EB2B8
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	ldr r0, _0802A65C @ =sub_0802A864
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A654: .4byte gLanguage
_0802A658: .4byte gUnk_082EB2B8
_0802A65C: .4byte sub_0802A864

	thumb_func_start sub_0802A660
sub_0802A660: @ 0x0802A660
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A690 @ =gLanguage
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A694 @ =gUnk_082EB2D0
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	adds r0, r4, #0
	bl sub_0802A7EC
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, _0802A698 @ =sub_0802A888
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A690: .4byte gLanguage
_0802A694: .4byte gUnk_082EB2D0
_0802A698: .4byte sub_0802A888

	thumb_func_start sub_0802A69C
sub_0802A69C: @ 0x0802A69C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A6C4 @ =0x0000023F
	bl m4aSongNumStart
	ldr r0, _0802A6C8 @ =gLanguage
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A6CC @ =gUnk_082EB2E8
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	ldr r0, _0802A6D0 @ =sub_0802A8AC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A6C4: .4byte 0x0000023F
_0802A6C8: .4byte gLanguage
_0802A6CC: .4byte gUnk_082EB2E8
_0802A6D0: .4byte sub_0802A8AC

	thumb_func_start sub_0802A6D4
sub_0802A6D4: @ 0x0802A6D4
	push {lr}
	ldr r1, _0802A6E4 @ =sub_08027350
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0802A6E4: .4byte sub_08027350

	thumb_func_start sub_0802A6E8
sub_0802A6E8: @ 0x0802A6E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A708 @ =gLanguage
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A70C @ =gUnk_082EB300
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	ldr r0, _0802A710 @ =sub_0802A8B8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A708: .4byte gLanguage
_0802A70C: .4byte gUnk_082EB300
_0802A710: .4byte sub_0802A8B8

	thumb_func_start sub_0802A714
sub_0802A714: @ 0x0802A714
	ldr r1, _0802A724 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A728 @ =sub_0802A8DC
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A724: .4byte 0x0000035A
_0802A728: .4byte sub_0802A8DC

	thumb_func_start sub_0802A72C
sub_0802A72C: @ 0x0802A72C
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	strh r2, [r1]
	ldr r3, _0802A744 @ =0x00000322
	adds r1, r0, r3
	strh r2, [r1]
	ldr r1, _0802A748 @ =sub_08028E78
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A744: .4byte 0x00000322
_0802A748: .4byte sub_08028E78

	thumb_func_start sub_0802A74C
sub_0802A74C: @ 0x0802A74C
	ldr r1, _0802A75C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A760 @ =sub_0802A904
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A75C: .4byte 0x0000035A
_0802A760: .4byte sub_0802A904

	thumb_func_start sub_0802A764
sub_0802A764: @ 0x0802A764
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _0802A7A8 @ =0xFBFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802A7AC @ =sub_0802A92C
	ldr r2, _0802A7B0 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A7B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802A7BC
	.align 2, 0
_0802A7A8: .4byte 0xFBFFFFFF
_0802A7AC: .4byte sub_0802A92C
_0802A7B0: .4byte 0x00000101
_0802A7B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802A7BC:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0802A7E4 @ =0x0100002A
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	str r5, [r4, #0x44]
	str r7, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x4c
	strh r6, [r0]
	ldr r0, _0802A7E8 @ =sub_0802A984
	str r0, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A7E4: .4byte 0x0100002A
_0802A7E8: .4byte sub_0802A984

	thumb_func_start sub_0802A7EC
sub_0802A7EC: @ 0x0802A7EC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _0802A828 @ =0xFBFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802A82C @ =sub_0802A990
	ldr r2, _0802A830 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A834
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802A83C
	.align 2, 0
_0802A828: .4byte 0xFBFFFFFF
_0802A82C: .4byte sub_0802A990
_0802A830: .4byte 0x00000101
_0802A834:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802A83C:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0802A85C @ =0x01000006
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	str r5, [r4, #4]
	ldr r0, _0802A860 @ =sub_0802A9DC
	str r0, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802A85C: .4byte 0x01000006
_0802A860: .4byte sub_0802A9DC

	thumb_func_start sub_0802A864
sub_0802A864: @ 0x0802A864
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A87E
	ldr r0, _0802A884 @ =sub_08026BD0
	str r0, [r2]
_0802A87E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A884: .4byte sub_08026BD0

	thumb_func_start sub_0802A888
sub_0802A888: @ 0x0802A888
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A8A2
	ldr r0, _0802A8A8 @ =sub_08026EF0
	str r0, [r2]
_0802A8A2:
	pop {r0}
	bx r0
	.align 2, 0
_0802A8A8: .4byte sub_08026EF0

	thumb_func_start sub_0802A8AC
sub_0802A8AC: @ 0x0802A8AC
	ldr r1, _0802A8B4 @ =sub_0802AA40
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A8B4: .4byte sub_0802AA40

	thumb_func_start sub_0802A8B8
sub_0802A8B8: @ 0x0802A8B8
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A8D2
	ldr r0, _0802A8D8 @ =sub_0802AA58
	str r0, [r2]
_0802A8D2:
	pop {r0}
	bx r0
	.align 2, 0
_0802A8D8: .4byte sub_0802AA58

	thumb_func_start sub_0802A8DC
sub_0802A8DC: @ 0x0802A8DC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A8FC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802A8F6
	ldr r0, _0802A900 @ =sub_0802AA78
	str r0, [r3]
_0802A8F6:
	pop {r0}
	bx r0
	.align 2, 0
_0802A8FC: .4byte 0x0000035A
_0802A900: .4byte sub_0802AA78

	thumb_func_start sub_0802A904
sub_0802A904: @ 0x0802A904
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A924 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A91E
	ldr r0, _0802A928 @ =sub_08029618
	str r0, [r3]
_0802A91E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A924: .4byte 0x0000035A
_0802A928: .4byte sub_08029618

	thumb_func_start sub_0802A92C
sub_0802A92C: @ 0x0802A92C
	push {r4, lr}
	ldr r0, _0802A948 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A94C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802A954
	.align 2, 0
_0802A948: .4byte gCurTask
_0802A94C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802A954:
	ldr r0, [r4, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _0802A976
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0802A97C
_0802A976:
	adds r0, r4, #0
	bl sub_0802A4CC
_0802A97C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A984
sub_0802A984: @ 0x0802A984
	ldr r1, _0802A98C @ =sub_080296EC
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A98C: .4byte sub_080296EC

	thumb_func_start sub_0802A990
sub_0802A990: @ 0x0802A990
	push {lr}
	ldr r0, _0802A9AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A9B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0802A9B8
	.align 2, 0
_0802A9AC: .4byte gCurTask
_0802A9B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0802A9B8:
	ldr r0, [r2, #4]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _0802A9D0
	ldr r1, [r2]
	adds r0, r2, #0
	bl _call_via_r1
	b _0802A9D6
_0802A9D0:
	adds r0, r2, #0
	bl sub_0802A5EC
_0802A9D6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A9DC
sub_0802A9DC: @ 0x0802A9DC
	ldr r1, _0802A9E4 @ =sub_0802A9E8
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A9E4: .4byte sub_0802A9E8

	thumb_func_start sub_0802A9E8
sub_0802A9E8: @ 0x0802A9E8
	movs r1, #0
	strh r1, [r0, #0xa]
	ldr r1, _0802A9F4 @ =sub_0802A9F8
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A9F4: .4byte sub_0802A9F8

	thumb_func_start sub_0802A9F8
sub_0802A9F8: @ 0x0802A9F8
	push {lr}
	adds r3, r0, #0
	ldr r0, _0802AA38 @ =gUnk_082EB318
	ldrh r1, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r3, #0xa]
	adds r2, r0, #1
	strh r2, [r3, #0xa]
	ldrh r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _0802AA32
	ldr r0, [r3, #4]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _0802AA32
	ldr r1, _0802AA3C @ =sub_080298C8
	str r1, [r3]
	adds r0, r3, #0
	bl _call_via_r1
_0802AA32:
	pop {r0}
	bx r0
	.align 2, 0
_0802AA38: .4byte gUnk_082EB318
_0802AA3C: .4byte sub_080298C8

	thumb_func_start sub_0802AA40
sub_0802AA40: @ 0x0802AA40
	ldr r1, _0802AA50 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802AA54 @ =sub_0802AA90
	str r1, [r0]
	bx lr
	.align 2, 0
_0802AA50: .4byte 0x0000035A
_0802AA54: .4byte sub_0802AA90

	thumb_func_start sub_0802AA58
sub_0802AA58: @ 0x0802AA58
	push {lr}
	ldr r1, _0802AA70 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802AA74 @ =sub_0802AAB8
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0802AA70: .4byte 0x0000035A
_0802AA74: .4byte sub_0802AAB8

	thumb_func_start sub_0802AA78
sub_0802AA78: @ 0x0802AA78
	ldr r1, _0802AA88 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802AA8C @ =sub_08028194
	str r1, [r0]
	bx lr
	.align 2, 0
_0802AA88: .4byte 0x0000035A
_0802AA8C: .4byte sub_08028194

	thumb_func_start sub_0802AA90
sub_0802AA90: @ 0x0802AA90
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802AAB0 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802AAAA
	ldr r0, _0802AAB4 @ =sub_08027208
	str r0, [r3]
_0802AAAA:
	pop {r0}
	bx r0
	.align 2, 0
_0802AAB0: .4byte 0x0000035A
_0802AAB4: .4byte sub_08027208

	thumb_func_start sub_0802AAB8
sub_0802AAB8: @ 0x0802AAB8
	push {lr}
	adds r3, r0, #0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	ldr r0, _0802AAF0 @ =0x0000035A
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0802AAEA
	ldr r0, _0802AAF4 @ =sub_08027444
	str r0, [r3]
_0802AAEA:
	pop {r0}
	bx r0
	.align 2, 0
_0802AAF0: .4byte 0x0000035A
_0802AAF4: .4byte sub_08027444
