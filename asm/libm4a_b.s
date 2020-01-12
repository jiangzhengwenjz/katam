	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E8C674
sub_08E8C674: @ 0x08E8C674
	add r2, pc, #0x0 @ =sub_08E8C678
	bx r2

	arm_func_start sub_08E8C678
sub_08E8C678: @ 0x08E8C678
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_08E8C684
sub_08E8C684: @ 0x08E8C684
	ldr r0, _08E8C6F0 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08E8C6F4 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08E8C692
	bx lr
_08E8C692:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08E8C6B6
	ldr r2, _08E8C6FC @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08E8C6B4
	adds r2, #0xe4
_08E8C6B4:
	adds r1, r1, r2
_08E8C6B6:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08E8C6C6
	ldr r0, [r0, #0x24]
	bl sub_08E8CAA6
	ldr r0, [sp, #0x18]
_08E8C6C6:
	ldr r3, [r0, #0x28]
	bl sub_08E8CAA6
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08E8C700 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08E8C6E6
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08E8C6E6:
	str r5, [sp, #8]
	ldr r6, _08E8C704 @ =0x00000630
	ldr r3, _08E8C6F8 @ =gUnk_03000641
	bx r3
	.align 2, 0
_08E8C6F0: .4byte gUnk_03007FF0
_08E8C6F4: .4byte 0x68736D53
_08E8C6F8: .4byte gUnk_03000641
_08E8C6FC: .4byte 0x04000006
_08E8C700: .4byte 0x00000350
_08E8C704: .4byte 0x00000630

	thumb_func_start sub_08E8C708
sub_08E8C708: @ 0x08E8C708
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08E8C768
	add r1, pc, #0x4 @ =sub_08E8C714
	bx r1
	.align 2, 0

	arm_func_start sub_08E8C714
sub_08E8C714: @ 0x08E8C714
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08E8C724:
	ldrsb r0, [r5, r6]
	ldrsb r1, [r5]
	add r0, r0, r1
	ldrsb r1, [r7, r6]
	add r0, r0, r1
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #9
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5, r6]
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _08E8C724
	add r0, pc, #0x2F @ =sub_08E8C796
	bx r0

	thumb_func_start sub_08E8C768
sub_08E8C768: @ 0x08E8C768
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08E8C776
	stm r5!, {r0}
	stm r6!, {r0}
_08E8C776:
	lsrs r1, r1, #1
	blo _08E8C782
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08E8C782:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08E8C782

	non_word_aligned_thumb_func_start sub_08E8C796
sub_08E8C796: @ 0x08E8C796
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08E8C7A0:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08E8C7C0
	ldr r1, _08E8C7BC @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08E8C7B4
	adds r1, #0xe4
_08E8C7B4:
	cmp r1, r0
	blo _08E8C7C0
	b _08E8CA92
	.align 2, 0
_08E8C7BC: .4byte 0x04000006
_08E8C7C0:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08E8C7CA
	b sub_08E8CA88
_08E8C7CA:
	movs r0, #0x80
	tst r0, r6
	beq _08E8C7FA
	movs r0, #0x40
	tst r0, r6
	bne _08E8C80A
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _08E8C852
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08E8C852
_08E8C7FA:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08E8C810
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08E8C860
_08E8C80A:
	movs r0, #0
	strb r0, [r4]
	b sub_08E8CA88
_08E8C810:
	movs r0, #0x40
	tst r0, r6
	beq _08E8C830
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08E8C860
_08E8C822:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08E8C80A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08E8C860
_08E8C830:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08E8C84E
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08E8C860
	adds r5, r0, #0
	beq _08E8C822
	subs r6, #1
	strb r6, [r4]
	b _08E8C860
_08E8C84E:
	cmp r2, #3
	bne _08E8C860
_08E8C852:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08E8C860
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08E8C860:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _08E8C894
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08E8C894:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08E8C8A0
	bx r0
	.align 2, 0

	arm_func_start sub_08E8C8A0
sub_08E8C8A0: @ 0x08E8C8A0
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08E8C9E0
_08E8C8C0:
	cmp r2, #4
	ble _08E8C930
	subs r2, r2, r8
	movgt lr, #0
	bgt _08E8C8EC
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08E8C8EC:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E8C8F4:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08E8C8F4
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E8C8EC
	adds r8, r8, lr
	beq _08E8CA74
_08E8C930:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E8C938:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08E8C9A8
_08E8C95C:
	adds r5, r5, #0x40000000
	blo _08E8C938
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E8C8C0
	b _08E8CA74
_08E8C978:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08E8C99C
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08E8C98C:
	adds r2, r0, r2
	bgt _08E8CA44
	sub sb, sb, r0
	b _08E8C98C
_08E8C99C:
	pop {r4, ip}
	mov r2, #0
	b _08E8C9B8
_08E8C9A8:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08E8C95C
_08E8C9B8:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _08E8CA7C
_08E8C9E0:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08E8C9FC:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E8CA04:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	mul ip, fp, sb
	bic ip, ip, #0xff0000
	add r7, ip, r7, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _08E8CA50
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08E8C978
	subs sb, sb, #1
	addeq r0, r0, r1
_08E8CA44:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08E8CA50:
	adds r5, r5, #0x40000000
	blo _08E8CA04
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E8C9FC
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08E8CA74:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08E8CA7C:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08E8CA88
	bx r0

	thumb_func_start sub_08E8CA88
sub_08E8CA88: @ 0x08E8CA88
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08E8CA92
	adds r4, #0x40
	b _08E8C7A0
_08E8CA92:
	ldr r0, [sp, #0x18]
	ldr r3, _08E8CAA8 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_08E8CAA6
sub_08E8CAA6: @ 0x08E8CAA6
	bx r3
	.align 2, 0
_08E8CAA8: .4byte 0x68736D53

	thumb_func_start sub_08E8CAAC
sub_08E8CAAC: @ 0x08E8CAAC
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8CAC4
sub_08E8CAC4: @ 0x08E8CAC4
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08E8CAE2
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08E8CAD6
	str r1, [r2, #0x34]
	b _08E8CAD8
_08E8CAD6:
	str r1, [r3, #0x20]
_08E8CAD8:
	cmp r1, #0
	beq _08E8CADE
	str r2, [r1, #0x30]
_08E8CADE:
	movs r1, #0
	str r1, [r0, #0x2c]
_08E8CAE2:
	bx lr
_08E8CAE4:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E8CB08
_08E8CAEE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E8CAFC
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08E8CAFC:
	adds r0, r4, #0
	bl sub_08E8CAC4
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E8CAEE
_08E8CB08:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8CB14
sub_08E8CB14: @ 0x08E8CB14
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08E8CB44 @ =gUnk_02019EE4
_08E8CB1A:
	ldr r3, [r2]
	bl _08E8CB2E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08E8CB1A
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8CB2C
sub_08E8CB2C: @ 0x08E8CB2C
	ldrb r3, [r2]
_08E8CB2E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08E8CB40
	ldr r0, _08E8CB44 @ =gUnk_02019EE4
	cmp r2, r0
	blo _08E8CB3E
	lsrs r0, r2, #0xe
	beq _08E8CB40
_08E8CB3E:
	movs r3, #0
_08E8CB40:
	pop {r0}
	bx lr
	.align 2, 0
_08E8CB44: .4byte gUnk_02019EE4

	thumb_func_start sub_08E8CB48
sub_08E8CB48: @ 0x08E8CB48
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_08E8CB4A
sub_08E8CB4A: @ 0x08E8CB4A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08E8CB2E
	.align 2, 0
_08E8CB54:
	push {lr}
_08E8CB56:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_08E8CB2C
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_08E8CB74
sub_08E8CB74: @ 0x08E8CB74
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08E8CB8C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08E8CB54
_08E8CB8C:
	b _08E8CAE4
	.align 2, 0

	thumb_func_start sub_08E8CB90
sub_08E8CB90: @ 0x08E8CB90
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08E8CBA2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08E8CBA2:
	bx lr

	thumb_func_start sub_08E8CBA4
sub_08E8CBA4: @ 0x08E8CBA4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08E8CBB4
	adds r2, #1
	str r2, [r1, #0x40]
	b _08E8CB56
_08E8CBB4:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_08E8CB48
	cmp ip, r3
	bhs _08E8CBC6
	b _08E8CB56
_08E8CBC6:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8CBD4
sub_08E8CBD4: @ 0x08E8CBD4
	mov ip, lr
	bl sub_08E8CB48
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8CBE0
sub_08E8CBE0: @ 0x08E8CBE0
	mov ip, lr
	bl sub_08E8CB48
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_08E8CBF4
sub_08E8CBF4: @ 0x08E8CBF4
	mov ip, lr
	bl sub_08E8CB48
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8CC08
sub_08E8CC08: @ 0x08E8CC08
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _08E8CB2E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08E8CB2E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08E8CB2E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8CC38
sub_08E8CC38: @ 0x08E8CC38
	mov ip, lr
	bl sub_08E8CB48
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8CC4C
sub_08E8CC4C: @ 0x08E8CC4C
	mov ip, lr
	bl sub_08E8CB48
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E8CC60
sub_08E8CC60: @ 0x08E8CC60
	mov ip, lr
	bl sub_08E8CB48
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E8CC74
sub_08E8CC74: @ 0x08E8CC74
	mov ip, lr
	bl sub_08E8CB48
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8CC88
sub_08E8CC88: @ 0x08E8CC88
	mov ip, lr
	bl sub_08E8CB48
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8CC94
sub_08E8CC94: @ 0x08E8CC94
	mov ip, lr
	bl sub_08E8CB48
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08E8CCAA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08E8CCAA:
	bx ip

	thumb_func_start sub_08E8CCAC
sub_08E8CCAC: @ 0x08E8CCAC
	mov ip, lr
	bl sub_08E8CB48
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E8CCC0
sub_08E8CCC0: @ 0x08E8CCC0
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08E8CCD4 @ =0x04000060
	adds r0, r0, r3
	bl sub_08E8CB4A
	strb r3, [r0]
	bx ip
	.align 2, 0
_08E8CCD4: .4byte 0x04000060

	thumb_func_start sub_08E8CCD8
sub_08E8CCD8: @ 0x08E8CCD8
	ldr r0, _08E8CF84 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08E8CF88 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08E8CD18
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08E8CD18
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08E8CD1C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08E8CCFE
	ldr r1, _08E8CD20 @ =0x84400004
	str r1, [r2, #8]
_08E8CCFE:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08E8CD08
	ldr r1, _08E8CD20 @ =0x84400004
	str r1, [r2, #0x14]
_08E8CD08:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08E8CD18:
	bx lr
	.align 2, 0
_08E8CD1C: .4byte 0x040000BC
_08E8CD20: .4byte 0x84400004

	thumb_func_start sub_08E8CD24
sub_08E8CD24: @ 0x08E8CD24
	ldr r2, _08E8CF88 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08E8CD2E
	bx lr
_08E8CD2E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08E8CD40
	ldr r0, [r0, #0x3c]
	bl sub_08E8CF7C
_08E8CD40:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08E8CD58
	b _08E8CF6C
_08E8CD58:
	ldr r0, _08E8CF84 @ =gUnk_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_08E8DC10
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08E8CD6C
	b _08E8CF6C
_08E8CD6C:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08E8CEBC
_08E8CD74:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08E8CD7C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08E8CD86
	b _08E8CE98
_08E8CD86:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E8CDBA
_08E8CD92:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E8CDAE
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08E8CDB4
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08E8CDB4
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08E8CDB4
_08E8CDAE:
	adds r0, r4, #0
	bl sub_08E8D70C
_08E8CDB4:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E8CD92
_08E8CDBA:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08E8CE38
	adds r0, r5, #0
	bl sub_08E8D720
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _08E8CE38
_08E8CDE0:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08E8CDEC
	ldrb r1, [r5, #7]
	b _08E8CDF6
_08E8CDEC:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08E8CDF6
	strb r1, [r5, #7]
_08E8CDF6:
	cmp r1, #0xcf
	blo _08E8CE0C
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08E8CF7C
	b _08E8CE38
_08E8CE0C:
	cmp r1, #0xb0
	bls _08E8CE2E
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08E8CF7C
	ldrb r0, [r5]
	cmp r0, #0
	beq _08E8CE94
	b _08E8CE38
_08E8CE2E:
	ldr r0, _08E8CF80 @ =gUnk_0201A158
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08E8CE38:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08E8CDE0
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08E8CE94
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08E8CE94
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08E8CE5A
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08E8CE94
_08E8CE5A:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08E8CE6E
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08E8CE72
_08E8CE6E:
	movs r0, #0x80
	subs r2, r0, r1
_08E8CE72:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08E8CE94
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08E8CE8E
	movs r1, #0xc
	b _08E8CE90
_08E8CE8E:
	movs r1, #3
_08E8CE90:
	orrs r0, r1
	strb r0, [r5]
_08E8CE94:
	mov r3, sl
	mov r4, fp
_08E8CE98:
	subs r6, #1
	ble _08E8CEA4
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08E8CD7C
_08E8CEA4:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08E8CEB6
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08E8CF6C
_08E8CEB6:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08E8CEBC:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08E8CEC4
	b _08E8CD74
_08E8CEC4:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08E8CEC8:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08E8CF62
	movs r1, #0xf
	tst r1, r0
	beq _08E8CF62
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08E8DCD8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E8CF58
_08E8CEE6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08E8CEF6
	adds r0, r4, #0
	bl sub_08E8D70C
	b _08E8CF52
_08E8CEF6:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08E8CF14
	bl sub_08E8CFD0
	cmp r6, #0
	beq _08E8CF14
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08E8CF14:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08E8CF52
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08E8CF28
	movs r2, #0
_08E8CF28:
	cmp r6, #0
	beq _08E8CF46
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_08E8CF7C
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08E8CF52
_08E8CF46:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_08E8D290
	str r0, [r4, #0x20]
_08E8CF52:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E8CEE6
_08E8CF58:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08E8CF62:
	subs r2, #1
	ble _08E8CF6C
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08E8CEC8
_08E8CF6C:
	ldr r0, _08E8CF88 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_08E8CF7C
sub_08E8CF7C: @ 0x08E8CF7C
	bx r3
	.align 2, 0
_08E8CF80: .4byte gUnk_0201A158
_08E8CF84: .4byte gUnk_03007FF0
_08E8CF88: .4byte 0x68736D53

	thumb_func_start sub_08E8CF8C
sub_08E8CF8C: @ 0x08E8CF8C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08E8CFC4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E8CFC2
	movs r6, #0
_08E8CFA0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E8CFBA
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08E8CFB8
	ldr r3, _08E8CFCC @ =gUnk_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_08E8CF7C
_08E8CFB8:
	strb r6, [r4]
_08E8CFBA:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E8CFA0
_08E8CFC2:
	str r4, [r5, #0x20]
_08E8CFC4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8CFCC: .4byte gUnk_03007FF0

	thumb_func_start sub_08E8CFD0
sub_08E8CFD0: @ 0x08E8CFD0
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08E8CFE8
	movs r0, #0xff
_08E8CFE8:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08E8CFFC
	movs r0, #0xff
_08E8CFFC:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_08E8D000
sub_08E8D000: @ 0x08E8D000
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08E8D1F8 @ =gUnk_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08E8D1FC @ =gUnk_0201A158
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E8D046
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E8D044
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E8D044
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08E8D044:
	str r3, [r5, #0x40]
_08E8D046:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08E8D098
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08E8D066
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08E8D068
_08E8D066:
	adds r0, r3, #0
_08E8D068:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08E8D080
	b _08E8D1E6
_08E8D080:
	movs r0, #0x80
	tst r0, r2
	beq _08E8D09C
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08E8D094
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08E8D094:
	ldrb r3, [r6, #1]
	b _08E8D09C
_08E8D098:
	mov sb, r4
	ldrb r3, [r5, #5]
_08E8D09C:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08E8D0AC
	movs r0, #0xff
_08E8D0AC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08E8D0EC
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08E8D0C4
	b _08E8D1E6
_08E8D0C4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E8D140
	movs r0, #0x40
	tst r0, r1
	bne _08E8D140
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08E8D140
	beq _08E8D0E4
	b _08E8D1E6
_08E8D0E4:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08E8D140
	b _08E8D1E6
_08E8D0EC:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08E8D0FA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E8D140
	movs r0, #0x40
	tst r0, r1
	beq _08E8D114
	cmp r2, #0
	bne _08E8D118
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08E8D132
_08E8D114:
	cmp r2, #0
	bne _08E8D134
_08E8D118:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08E8D124
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08E8D132
_08E8D124:
	bhi _08E8D134
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08E8D130
	adds r7, r0, #0
	b _08E8D132
_08E8D130:
	blo _08E8D134
_08E8D132:
	mov r8, r4
_08E8D134:
	adds r4, #0x40
	subs r3, #1
	bgt _08E8D0FA
	mov r4, r8
	cmp r4, #0
	beq _08E8D1E6
_08E8D140:
	adds r0, r4, #0
	bl sub_08E8D70C
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08E8D154
	str r4, [r3, #0x30]
_08E8D154:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08E8D166
	adds r1, r5, #0
	bl sub_08E8D240
_08E8D166:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_08E8DCD8
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_08E8CFD0
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08E8D1A0
	movs r3, #0
_08E8D1A0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08E8D1CE
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08E8D1BA
	movs r0, #0x70
	tst r0, r1
	bne _08E8D1BC
_08E8D1BA:
	movs r1, #8
_08E8D1BC:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_08E8CF7C
	b _08E8D1D8
_08E8D1CE:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_08E8D290
_08E8D1D8:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08E8D1E6:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08E8D1F8: .4byte gUnk_03007FF0
_08E8D1FC: .4byte gUnk_0201A158

	thumb_func_start sub_08E8D200
sub_08E8D200: @ 0x08E8D200
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08E8D212
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08E8D214
_08E8D212:
	ldrb r3, [r1, #5]
_08E8D214:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08E8D23C
	movs r4, #0x83
	movs r5, #0x40
_08E8D21E:
	ldrb r2, [r1]
	tst r2, r4
	beq _08E8D236
	tst r2, r5
	bne _08E8D236
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08E8D236
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08E8D23C
_08E8D236:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08E8D21E
_08E8D23C:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_08E8D240
sub_08E8D240: @ 0x08E8D240
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08E8D250
	movs r2, #0xc
	b _08E8D252
_08E8D250:
	movs r2, #3
_08E8D252:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8D25C
sub_08E8D25C: @ 0x08E8D25C
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8D268
sub_08E8D268: @ 0x08E8D268
	mov ip, lr
	bl sub_08E8D25C
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08E8D278
	bl sub_08E8D240
_08E8D278:
	bx ip
	.align 2, 0

	thumb_func_start sub_08E8D27C
sub_08E8D27C: @ 0x08E8D27C
	mov ip, lr
	bl sub_08E8D25C
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08E8D28C
	bl sub_08E8D240
_08E8D28C:
	bx ip
	.align 2, 0
