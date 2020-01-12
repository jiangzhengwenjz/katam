	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E2BEB0
sub_08E2BEB0: @ 0x08E2BEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08E2BED4 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _08E2BED8 @ =gUnk_030059F0
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08E2BF4C
	cmp r0, #1
	bgt _08E2BEDC
	cmp r0, #0
	beq _08E2BEE2
	b _08E2BF96
	.align 2, 0
_08E2BED4: .4byte 0x04000128
_08E2BED8: .4byte gUnk_030059F0
_08E2BEDC:
	cmp r0, #2
	beq _08E2BF88
	b _08E2BF96
_08E2BEE2:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08E2BF48
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _08E2BF96
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08E2BF48
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E2BF48
	ldr r3, _08E2BF6C @ =0x04000208
	strh r2, [r3]
	ldr r2, _08E2BF70 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2BF74 @ =0x0000FF7F
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
	ldr r1, _08E2BF78 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08E2BF7C @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08E2BF48:
	movs r0, #1
	strb r0, [r6, #1]
_08E2BF4C:
	ldr r2, _08E2BF80 @ =gUnk_030059F0
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08E2BF88
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08E2BF88
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _08E2BF84
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08E2BF88
	.align 2, 0
_08E2BF6C: .4byte 0x04000208
_08E2BF70: .4byte 0x04000200
_08E2BF74: .4byte 0x0000FF7F
_08E2BF78: .4byte 0x04000202
_08E2BF7C: .4byte 0x0000BBBC
_08E2BF80: .4byte gUnk_030059F0
_08E2BF84:
	movs r0, #2
	strb r0, [r2, #1]
_08E2BF88:
	mov r0, ip
	bl sub_08E2C0D8
	mov r0, sb
	mov r1, r8
	bl sub_08E2C008
_08E2BF96:
	ldr r3, _08E2BFC8 @ =gUnk_030059F0
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
	bne _08E2BFCC
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _08E2BFD0
	.align 2, 0
_08E2BFC8: .4byte gUnk_030059F0
_08E2BFCC:
	adds r0, r2, #0
	orrs r0, r1
_08E2BFD0:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _08E2BFDE
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_08E2BFDE:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08E2BFF6
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _08E2BFFA
_08E2BFF6:
	adds r0, r1, #0
	orrs r0, r2
_08E2BFFA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2C008
sub_08E2C008: @ 0x08E2C008
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08E2C0C8 @ =gUnk_030059F0
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
	ldr r1, _08E2C0CC @ =gUnk_03005C20
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
	ldr r2, _08E2C0D0 @ =0x04000005
	bl sub_08E2C7F0
	movs r1, #0
_08E2C082:
	ldr r3, _08E2C0C8 @ =gUnk_030059F0
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _08E2C082
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _08E2C0A6
	ldr r1, _08E2C0D4 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08E2C0A6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _08E2C0C0
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E2C0C0
	ldr r1, _08E2C0D4 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E2C0C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C0C8: .4byte gUnk_030059F0
_08E2C0CC: .4byte gUnk_03005C20
_08E2C0D0: .4byte 0x04000005
_08E2C0D4: .4byte 0x0400010E

	thumb_func_start sub_08E2C0D8
sub_08E2C0D8: @ 0x08E2C0D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08E2C1E0 @ =gUnk_03005BE0
	movs r4, #0
	str r4, [sp]
	bl sub_08E2C80C
	str r0, [sp, #4]
	ldr r1, _08E2C1E4 @ =gUnk_030059F0
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
_08E2C104:
	movs r3, #0
	movs r2, #0
_08E2C108:
	ldr r5, _08E2C1E4 @ =gUnk_030059F0
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
	bls _08E2C108
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E2C16C
	lsls r1, r3, #0x10
	ldr r0, _08E2C1E8 @ =0xFFF10000
	cmp r1, r0
	bne _08E2C16C
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
	ldr r2, _08E2C1EC @ =0x04000005
	bl sub_08E2C7F0
_08E2C16C:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _08E2C1E4 @ =gUnk_030059F0
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _08E2C1F0 @ =0x05000005
	bl sub_08E2C7F0
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _08E2C104
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
	beq _08E2C224
	ldrb r0, [r4]
	cmp r0, #8
	bne _08E2C1F4
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08E2C1C4
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08E2C1C4
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_08E2C1C4:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08E2C20C
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _08E2C20C
	.align 2, 0
_08E2C1E0: .4byte gUnk_03005BE0
_08E2C1E4: .4byte gUnk_030059F0
_08E2C1E8: .4byte 0xFFF10000
_08E2C1EC: .4byte 0x04000005
_08E2C1F0: .4byte 0x05000005
_08E2C1F4:
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
_08E2C20C:
	ldr r3, _08E2C234 @ =gUnk_030059F0
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
_08E2C224:
	ldr r0, _08E2C234 @ =gUnk_030059F0
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E2C234: .4byte gUnk_030059F0

	thumb_func_start sub_08E2C238
sub_08E2C238: @ 0x08E2C238
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08E2C2B4 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08E2C2B8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2C2BC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _08E2C2C0 @ =gUnk_03005C20
	ldr r2, _08E2C2C4 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E2C7F0
	ldr r1, _08E2C2C8 @ =0x04000128
	ldr r0, _08E2C2CC @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _08E2C2A6
	ldr r0, _08E2C2D0 @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08E2C286:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08E2C286
	ldr r1, _08E2C2C0 @ =gUnk_03005C20
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _08E2C2C8 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08E2C2A6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C2B4: .4byte 0x04000208
_08E2C2B8: .4byte 0x04000200
_08E2C2BC: .4byte 0x0000FF3F
_08E2C2C0: .4byte gUnk_03005C20
_08E2C2C4: .4byte 0x05000006
_08E2C2C8: .4byte 0x04000128
_08E2C2CC: .4byte 0x00002003
_08E2C2D0: .4byte 0x0400010C

	thumb_func_start sub_08E2C2D4
sub_08E2C2D4: @ 0x08E2C2D4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08E2C2EC @ =gUnk_03005C20
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08E2C2E2
	b _08E2C4AE
_08E2C2E2:
	lsls r0, r0, #2
	ldr r1, _08E2C2F0 @ =gUnk_0200C4CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08E2C2EC: .4byte gUnk_03005C20
_08E2C2F0: .4byte gUnk_0200C4CC
_08E2C2F4: @ jump table
	.4byte 0x0200C4E0 @ case 0
	.4byte 0x0200C4F8 @ case 1
	.4byte 0x0200C594 @ case 2
	.4byte 0x0200C610 @ case 3
	.4byte 0x0200C67C @ case 4
_08E2C308:
	ldr r0, [r5]
	ldr r1, _08E2C31C @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08E2C314
	b _08E2C4AE
_08E2C314:
	movs r0, #1
	strb r0, [r5, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C31C: .4byte 0x00FF00FF
_08E2C320:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E2C330
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08E2C32E
	b _08E2C4AE
_08E2C32E:
	b _08E2C33A
_08E2C330:
	ldr r1, _08E2C370 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08E2C33A:
	ldr r0, _08E2C374 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08E2C378 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08E2C388
	ldr r2, _08E2C370 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E2C37C @ =0x0400010C
	ldr r0, _08E2C380 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08E2C384 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08E2C3A8
	.align 2, 0
_08E2C370: .4byte 0x04000128
_08E2C374: .4byte 0x04000120
_08E2C378: .4byte 0x04000202
_08E2C37C: .4byte 0x0400010C
_08E2C380: .4byte 0x00C0F318
_08E2C384: .4byte 0x04000208
_08E2C388:
	ldr r2, _08E2C3B4 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08E2C3B8 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08E2C3A8:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C3B4: .4byte 0x04000128
_08E2C3B8: .4byte 0x04000208
_08E2C3BC:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E2C3CC
	adds r3, r0, #0
	b _08E2C3D2
_08E2C3CC:
	cmp r6, #0
	bge _08E2C3D2
	movs r3, #0
_08E2C3D2:
	cmp r2, #0
	beq _08E2C3D8
	str r3, [r2]
_08E2C3D8:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08E2C41A
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _08E2C3FE
_08E2C3E6:
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
	blt _08E2C3E6
_08E2C3FE:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E2C422
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08E2C41A
	movs r0, #1
	strb r0, [r5, #3]
_08E2C41A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08E2C42A
_08E2C422:
	ldr r0, _08E2C434 @ =gUnk_03005C20
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _08E2C4AE
_08E2C42A:
	ldr r1, _08E2C434 @ =gUnk_03005C20
	movs r0, #3
	strb r0, [r1, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C434: .4byte gUnk_03005C20
_08E2C438:
	ldr r3, _08E2C488 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E2C48C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2C490 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08E2C494 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08E2C498 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _08E2C476
	ldr r1, _08E2C49C @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08E2C476:
	ldr r1, _08E2C4A0 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _08E2C4AA
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C488: .4byte 0x04000208
_08E2C48C: .4byte 0x04000200
_08E2C490: .4byte 0x0000FF3F
_08E2C494: .4byte 0x04000128
_08E2C498: .4byte 0x04000120
_08E2C49C: .4byte 0x0400010C
_08E2C4A0: .4byte 0x04000202
_08E2C4A4:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08E2C4AE
_08E2C4AA:
	movs r0, #1
	b _08E2C4B8
_08E2C4AE:
	ldr r1, _08E2C4C0 @ =gUnk_03005C20
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_08E2C4B8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E2C4C0: .4byte gUnk_03005C20

	thumb_func_start sub_08E2C4C4
sub_08E2C4C4: @ 0x08E2C4C4
	push {r4, r5, lr}
	ldr r2, _08E2C4E8 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _08E2C4EC @ =gUnk_03005C20
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _08E2C4F4
	ldr r0, _08E2C4F0 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _08E2C53C
	b _08E2C52A
	.align 2, 0
_08E2C4E8: .4byte 0x04000120
_08E2C4EC: .4byte gUnk_03005C20
_08E2C4F0: .4byte 0x04000128
_08E2C4F4:
	ldr r1, _08E2C504 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _08E2C50C
	ldr r0, _08E2C508 @ =0xFEFEFEFE
	str r0, [r2]
	b _08E2C552
	.align 2, 0
_08E2C504: .4byte 0x0400010E
_08E2C508: .4byte 0xFEFEFEFE
_08E2C50C:
	ldr r0, _08E2C520 @ =0x00001FFF
	cmp r3, r0
	bgt _08E2C524
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08E2C552
	.align 2, 0
_08E2C520: .4byte 0x00001FFF
_08E2C524:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _08E2C552
_08E2C52A:
	ldr r0, _08E2C538 @ =0xFEFEFEFE
	cmp r4, r0
	beq _08E2C552
	subs r0, r1, #1
	str r0, [r5, #8]
	b _08E2C552
	.align 2, 0
_08E2C538: .4byte 0xFEFEFEFE
_08E2C53C:
	ldr r0, _08E2C54C @ =0x00001FFF
	cmp r3, r0
	bgt _08E2C550
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _08E2C552
	.align 2, 0
_08E2C54C: .4byte 0x00001FFF
_08E2C550:
	str r4, [r5, #0xc]
_08E2C552:
	ldr r1, [r5, #8]
	ldr r0, _08E2C57C @ =0x00002002
	cmp r1, r0
	bgt _08E2C574
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E2C574
	ldr r2, _08E2C580 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E2C584 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E2C574:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C57C: .4byte 0x00002002
_08E2C580: .4byte 0x04000128
_08E2C584: .4byte 0x0400010E

	thumb_func_start sub_08E2C588
sub_08E2C588: @ 0x08E2C588
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08E2C5C4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E2C5C8 @ =gUnk_03002640
	str r1, [r0, #4]
	ldr r1, _08E2C5CC @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E2C5D0 @ =gUnk_03001420
	str r1, [r0, #4]
	ldr r1, _08E2C5D4 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08E2C5D8 @ =gUnk_030014E4
	str r2, [r0]
	ldr r0, _08E2C5DC @ =gUnk_030014E8
	strb r2, [r0]
	movs r0, #0
	bl sub_08E2BD54
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E2C5C4: .4byte 0x040000D4
_08E2C5C8: .4byte gUnk_03002640
_08E2C5CC: .4byte 0x85000005
_08E2C5D0: .4byte gUnk_03001420
_08E2C5D4: .4byte 0x85000014
_08E2C5D8: .4byte gUnk_030014E4
_08E2C5DC: .4byte gUnk_030014E8

	thumb_func_start sub_08E2C5E0
sub_08E2C5E0: @ 0x08E2C5E0
	push {r4, lr}
	ldr r0, _08E2C620 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E2C614
	ldr r3, _08E2C624 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E2C628 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2C62C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _08E2C630 @ =gUnk_03000740
	ldr r0, _08E2C634 @ =gUnk_03005870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_08E2BD54
_08E2C614:
	ldr r1, _08E2C638 @ =gUnk_030014E8
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C620: .4byte gUnk_030013D0
_08E2C624: .4byte 0x04000208
_08E2C628: .4byte 0x04000200
_08E2C62C: .4byte 0x0000FFBF
_08E2C630: .4byte gUnk_03000740
_08E2C634: .4byte gUnk_03005870
_08E2C638: .4byte gUnk_030014E8

	thumb_func_start sub_08E2C63C
sub_08E2C63C: @ 0x08E2C63C
	push {r4, lr}
	ldr r1, _08E2C670 @ =gUnk_030014E8
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08E2C674 @ =gUnk_030013D0
	ldr r0, [r4]
	ldr r1, _08E2C678 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_08E2BE60
	movs r0, #0
	bl sub_08E2BD54
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E2C668
	bl nullsub_9
_08E2C668:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C670: .4byte gUnk_030014E8
_08E2C674: .4byte gUnk_030013D0
_08E2C678: .4byte 0xFFEFFFFF

	thumb_func_start nullsub_70
nullsub_70: @ 0x08E2C67C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_9
nullsub_9: @ 0x08E2C680
	bx lr
	.align 2, 0

	thumb_func_start nullsub_71
nullsub_71: @ 0x08E2C684
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2C688
sub_08E2C688: @ 0x08E2C688
	movs r0, #1
	bx lr
