	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D9FB4C
sub_08D9FB4C: @ 0x08D9FB4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08D9FB70 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _08D9FB74 @ =gUnk_030059F0
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08D9FBE8
	cmp r0, #1
	bgt _08D9FB78
	cmp r0, #0
	beq _08D9FB7E
	b _08D9FC32
	.align 2, 0
_08D9FB70: .4byte 0x04000128
_08D9FB74: .4byte gUnk_030059F0
_08D9FB78:
	cmp r0, #2
	beq _08D9FC24
	b _08D9FC32
_08D9FB7E:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08D9FBE4
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _08D9FC32
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08D9FBE4
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08D9FBE4
	ldr r3, _08D9FC08 @ =0x04000208
	strh r2, [r3]
	ldr r2, _08D9FC0C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D9FC10 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _08D9FC14 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08D9FC18 @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08D9FBE4:
	movs r0, #1
	strb r0, [r6, #1]
_08D9FBE8:
	ldr r2, _08D9FC1C @ =gUnk_030059F0
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08D9FC24
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08D9FC24
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _08D9FC20
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08D9FC24
	.align 2, 0
_08D9FC08: .4byte 0x04000208
_08D9FC0C: .4byte 0x04000200
_08D9FC10: .4byte 0x0000FF7F
_08D9FC14: .4byte 0x04000202
_08D9FC18: .4byte 0x0000BBBC
_08D9FC1C: .4byte gUnk_030059F0
_08D9FC20:
	movs r0, #2
	strb r0, [r2, #1]
_08D9FC24:
	mov r0, ip
	bl sub_08D9FD74
	mov r0, sb
	mov r1, r8
	bl sub_08D9FCA4
_08D9FC32:
	ldr r3, _08D9FC64 @ =gUnk_030059F0
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
	ldrb r2, [r3, #3]
	ldrb r1, [r3, #8]
	movs r0, #0x10
	ands r0, r1
	orrs r2, r0
	movs r0, #0x20
	ands r0, r1
	orrs r2, r0
	movs r0, #0x40
	ands r0, r1
	orrs r2, r0
	ldrb r0, [r3, #2]
	lsls r1, r0, #8
	ldrb r0, [r3]
	cmp r0, #8
	bne _08D9FC68
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _08D9FC6C
	.align 2, 0
_08D9FC64: .4byte gUnk_030059F0
_08D9FC68:
	adds r0, r2, #0
	orrs r0, r1
_08D9FC6C:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _08D9FC7A
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_08D9FC7A:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08D9FC92
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _08D9FC96
_08D9FC92:
	adds r0, r1, #0
	orrs r0, r2
_08D9FC96:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9FCA4
sub_08D9FCA4: @ 0x08D9FCA4
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08D9FD64 @ =gUnk_030059F0
	ldr r4, [r5, #0x28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x28]
	ldr r1, _08D9FD68 @ =gUnk_03005C20
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x28]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x28]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x28]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x28]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x28]
	adds r1, #4
	ldr r2, _08D9FD6C @ =0x04000005
	bl sub_08DA048C
	movs r1, #0
_08D9FD1E:
	ldr r3, _08D9FD64 @ =gUnk_030059F0
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _08D9FD1E
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _08D9FD42
	ldr r1, _08D9FD70 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08D9FD42:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _08D9FD5C
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08D9FD5C
	ldr r1, _08D9FD70 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08D9FD5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9FD64: .4byte gUnk_030059F0
_08D9FD68: .4byte gUnk_03005C20
_08D9FD6C: .4byte 0x04000005
_08D9FD70: .4byte 0x0400010E

	thumb_func_start sub_08D9FD74
sub_08D9FD74: @ 0x08D9FD74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08D9FE7C @ =gUnk_03005BE0
	movs r4, #0
	str r4, [sp]
	bl sub_08DA04AC
	str r0, [sp, #4]
	ldr r1, _08D9FE80 @ =gUnk_030059F0
	strb r4, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #8]
	movs r7, #0
	movs r0, #0
	mov r8, r0
	adds r6, r5, #0
_08D9FDA0:
	movs r3, #0
	movs r2, #0
_08D9FDA4:
	ldr r5, _08D9FE80 @ =gUnk_030059F0
	adds r0, r5, #0
	adds r0, #0x50
	mov r1, r8
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r3, r0
	adds r2, #1
	cmp r2, #0xb
	bls _08D9FDA4
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08D9FE08
	lsls r1, r3, #0x10
	ldr r0, _08D9FE84 @ =0xFFF10000
	cmp r1, r0
	bne _08D9FE08
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r5, #3]
	orrs r0, r1
	strb r0, [r5, #3]
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r7
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #8]
	ldr r0, [r4]
	adds r0, #4
	adds r1, r6, #0
	ldr r2, _08D9FE88 @ =0x04000005
	bl sub_08DA048C
_08D9FE08:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _08D9FE80 @ =gUnk_030059F0
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _08D9FE8C @ =0x05000005
	bl sub_08DA048C
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _08D9FDA0
	adds r4, r5, #0
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	adds r3, r0, #0
	orrs r3, r2
	strb r3, [r4, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08D9FEC0
	ldrb r0, [r4]
	cmp r0, #8
	bne _08D9FE90
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08D9FE60
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08D9FE60
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_08D9FE60:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08D9FEA8
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _08D9FEA8
	.align 2, 0
_08D9FE7C: .4byte gUnk_03005BE0
_08D9FE80: .4byte gUnk_030059F0
_08D9FE84: .4byte 0xFFF10000
_08D9FE88: .4byte 0x04000005
_08D9FE8C: .4byte 0x05000005
_08D9FE90:
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #8]
_08D9FEA8:
	ldr r3, _08D9FED0 @ =gUnk_030059F0
	ldr r0, [r3, #0x50]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_08D9FEC0:
	ldr r0, _08D9FED0 @ =gUnk_030059F0
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D9FED0: .4byte gUnk_030059F0

	thumb_func_start sub_08D9FED4
sub_08D9FED4: @ 0x08D9FED4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08D9FF50 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08D9FF54 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D9FF58 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _08D9FF5C @ =gUnk_03005C20
	ldr r2, _08D9FF60 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl sub_08DA048C
	ldr r1, _08D9FF64 @ =0x04000128
	ldr r0, _08D9FF68 @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _08D9FF42
	ldr r0, _08D9FF6C @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08D9FF22:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08D9FF22
	ldr r1, _08D9FF5C @ =gUnk_03005C20
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _08D9FF64 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08D9FF42:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9FF50: .4byte 0x04000208
_08D9FF54: .4byte 0x04000200
_08D9FF58: .4byte 0x0000FF3F
_08D9FF5C: .4byte gUnk_03005C20
_08D9FF60: .4byte 0x05000006
_08D9FF64: .4byte 0x04000128
_08D9FF68: .4byte 0x00002003
_08D9FF6C: .4byte 0x0400010C

	thumb_func_start sub_08D9FF70
sub_08D9FF70: @ 0x08D9FF70
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08D9FF88 @ =gUnk_03005C20
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08D9FF7E
	b _08DA014A
_08D9FF7E:
	lsls r0, r0, #2
	ldr r1, _08D9FF8C @ =gUnk_0200B3F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08D9FF88: .4byte gUnk_03005C20
_08D9FF8C: .4byte gUnk_0200B3F4
_08D9FF90: @ jump table
	.4byte 0x0200B408 @ case 0
	.4byte 0x0200B420 @ case 1
	.4byte 0x0200B4BC @ case 2
	.4byte 0x0200B538 @ case 3
	.4byte 0x0200B5A4 @ case 4
sub_08D9FFA4:
	ldr r0, [r5]
	ldr r1, _08D9FFB8 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08D9FFB0
	b _08DA014A
_08D9FFB0:
	movs r0, #1
	strb r0, [r5, #1]
	b _08DA014A
	.align 2, 0
_08D9FFB8: .4byte 0x00FF00FF
_08D9FFBC:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08D9FFCC
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08D9FFCA
	b _08DA014A
_08D9FFCA:
	b _08D9FFD6
_08D9FFCC:
	ldr r1, _08DA000C @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08D9FFD6:
	ldr r0, _08DA0010 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08DA0014 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08DA0024
	ldr r2, _08DA000C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08DA0018 @ =0x0400010C
	ldr r0, _08DA001C @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08DA0020 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08DA0044
	.align 2, 0
_08DA000C: .4byte 0x04000128
_08DA0010: .4byte 0x04000120
_08DA0014: .4byte 0x04000202
_08DA0018: .4byte 0x0400010C
_08DA001C: .4byte 0x00C0F318
_08DA0020: .4byte 0x04000208
_08DA0024:
	ldr r2, _08DA0050 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08DA0054 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08DA0044:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08DA014A
	.align 2, 0
_08DA0050: .4byte 0x04000128
_08DA0054: .4byte 0x04000208
_08DA0058:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08DA0068
	adds r3, r0, #0
	b _08DA006E
_08DA0068:
	cmp r6, #0
	bge _08DA006E
	movs r3, #0
_08DA006E:
	cmp r2, #0
	beq _08DA0074
	str r3, [r2]
_08DA0074:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08DA00B6
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _08DA009A
_08DA0082:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, #1
	str r2, [r4, #0x14]
	cmp r2, r3
	blt _08DA0082
_08DA009A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08DA00BE
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08DA00B6
	movs r0, #1
	strb r0, [r5, #3]
_08DA00B6:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08DA00C6
_08DA00BE:
	ldr r0, _08DA00D0 @ =gUnk_03005C20
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _08DA014A
_08DA00C6:
	ldr r1, _08DA00D0 @ =gUnk_03005C20
	movs r0, #3
	strb r0, [r1, #1]
	b _08DA014A
	.align 2, 0
_08DA00D0: .4byte gUnk_03005C20
_08DA00D4:
	ldr r3, _08DA0124 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08DA0128 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08DA012C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08DA0130 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08DA0134 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _08DA0112
	ldr r1, _08DA0138 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08DA0112:
	ldr r1, _08DA013C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _08DA0146
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08DA014A
	.align 2, 0
_08DA0124: .4byte 0x04000208
_08DA0128: .4byte 0x04000200
_08DA012C: .4byte 0x0000FF3F
_08DA0130: .4byte 0x04000128
_08DA0134: .4byte 0x04000120
_08DA0138: .4byte 0x0400010C
_08DA013C: .4byte 0x04000202
_08DA0140:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08DA014A
_08DA0146:
	movs r0, #1
	b _08DA0154
_08DA014A:
	ldr r1, _08DA015C @ =gUnk_03005C20
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_08DA0154:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08DA015C: .4byte gUnk_03005C20

	thumb_func_start sub_08DA0160
sub_08DA0160: @ 0x08DA0160
	push {r4, r5, lr}
	ldr r2, _08DA0184 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _08DA0188 @ =gUnk_03005C20
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _08DA0190
	ldr r0, _08DA018C @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _08DA01D8
	b _08DA01C6
	.align 2, 0
_08DA0184: .4byte 0x04000120
_08DA0188: .4byte gUnk_03005C20
_08DA018C: .4byte 0x04000128
_08DA0190:
	ldr r1, _08DA01A0 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _08DA01A8
	ldr r0, _08DA01A4 @ =0xFEFEFEFE
	str r0, [r2]
	b _08DA01EE
	.align 2, 0
_08DA01A0: .4byte 0x0400010E
_08DA01A4: .4byte 0xFEFEFEFE
_08DA01A8:
	ldr r0, _08DA01BC @ =0x00001FFF
	cmp r3, r0
	bgt _08DA01C0
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08DA01EE
	.align 2, 0
_08DA01BC: .4byte 0x00001FFF
_08DA01C0:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _08DA01EE
_08DA01C6:
	ldr r0, _08DA01D4 @ =0xFEFEFEFE
	cmp r4, r0
	beq _08DA01EE
	subs r0, r1, #1
	str r0, [r5, #8]
	b _08DA01EE
	.align 2, 0
_08DA01D4: .4byte 0xFEFEFEFE
_08DA01D8:
	ldr r0, _08DA01E8 @ =0x00001FFF
	cmp r3, r0
	bgt _08DA01EC
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _08DA01EE
	.align 2, 0
_08DA01E8: .4byte 0x00001FFF
_08DA01EC:
	str r4, [r5, #0xc]
_08DA01EE:
	ldr r1, [r5, #8]
	ldr r0, _08DA0218 @ =0x00002002
	cmp r1, r0
	bgt _08DA0210
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08DA0210
	ldr r2, _08DA021C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08DA0220 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08DA0210:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08DA0218: .4byte 0x00002002
_08DA021C: .4byte 0x04000128
_08DA0220: .4byte 0x0400010E

	thumb_func_start sub_08DA0224
sub_08DA0224: @ 0x08DA0224
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08DA0260 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08DA0264 @ =gUnk_03002640
	str r1, [r0, #4]
	ldr r1, _08DA0268 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08DA026C @ =gUnk_03001420
	str r1, [r0, #4]
	ldr r1, _08DA0270 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08DA0274 @ =gUnk_030014E4
	str r2, [r0]
	ldr r0, _08DA0278 @ =gUnk_030014E8
	strb r2, [r0]
	movs r0, #0
	bl sub_08D9F9F0
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08DA0260: .4byte 0x040000D4
_08DA0264: .4byte gUnk_03002640
_08DA0268: .4byte 0x85000005
_08DA026C: .4byte gUnk_03001420
_08DA0270: .4byte 0x85000014
_08DA0274: .4byte gUnk_030014E4
_08DA0278: .4byte gUnk_030014E8

	thumb_func_start sub_08DA027C
sub_08DA027C: @ 0x08DA027C
	push {r4, lr}
	ldr r0, _08DA02BC @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08DA02B0
	ldr r3, _08DA02C0 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08DA02C4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08DA02C8 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _08DA02CC @ =gUnk_03000740
	ldr r0, _08DA02D0 @ =gUnk_03005870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_08D9F9F0
_08DA02B0:
	ldr r1, _08DA02D4 @ =gUnk_030014E8
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08DA02BC: .4byte gUnk_030013D0
_08DA02C0: .4byte 0x04000208
_08DA02C4: .4byte 0x04000200
_08DA02C8: .4byte 0x0000FFBF
_08DA02CC: .4byte gUnk_03000740
_08DA02D0: .4byte gUnk_03005870
_08DA02D4: .4byte gUnk_030014E8

	thumb_func_start sub_08DA02D8
sub_08DA02D8: @ 0x08DA02D8
	push {r4, lr}
	ldr r1, _08DA030C @ =gUnk_030014E8
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08DA0310 @ =gUnk_030013D0
	ldr r0, [r4]
	ldr r1, _08DA0314 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_08D9FAFC
	movs r0, #0
	bl sub_08D9F9F0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08DA0304
	bl nullsub_19
_08DA0304:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08DA030C: .4byte gUnk_030014E8
_08DA0310: .4byte gUnk_030013D0
_08DA0314: .4byte 0xFFEFFFFF

	thumb_func_start nullsub_084
nullsub_084: @ 0x08DA0318
	bx lr
	.align 2, 0

	thumb_func_start nullsub_19
nullsub_19: @ 0x08DA031C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_085
nullsub_085: @ 0x08DA0320
	bx lr
	.align 2, 0

	thumb_func_start sub_08DA0324
sub_08DA0324: @ 0x08DA0324
	movs r0, #1
	bx lr
