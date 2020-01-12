	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E5F5DC
sub_08E5F5DC: @ 0x08E5F5DC
	add r2, pc, #0x0 @ =sub_08E5F5E0
	bx r2

	arm_func_start sub_08E5F5E0
sub_08E5F5E0: @ 0x08E5F5E0
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_08E5F5EC
sub_08E5F5EC: @ 0x08E5F5EC
	ldr r0, _08E5F658 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08E5F65C @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08E5F5FA
	bx lr
_08E5F5FA:
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
	beq _08E5F61E
	ldr r2, _08E5F664 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08E5F61C
	adds r2, #0xe4
_08E5F61C:
	adds r1, r1, r2
_08E5F61E:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08E5F62E
	ldr r0, [r0, #0x24]
	bl sub_08E5FA0E
	ldr r0, [sp, #0x18]
_08E5F62E:
	ldr r3, [r0, #0x28]
	bl sub_08E5FA0E
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08E5F668 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08E5F64E
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08E5F64E:
	str r5, [sp, #8]
	ldr r6, _08E5F66C @ =0x00000630
	ldr r3, _08E5F660 @ =gUnk_03000641
	bx r3
	.align 2, 0
_08E5F658: .4byte gUnk_03007FF0
_08E5F65C: .4byte 0x68736D53
_08E5F660: .4byte gUnk_03000641
_08E5F664: .4byte 0x04000006
_08E5F668: .4byte 0x00000350
_08E5F66C: .4byte 0x00000630

	thumb_func_start sub_08E5F670
sub_08E5F670: @ 0x08E5F670
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08E5F6D0
	add r1, pc, #0x4 @ =sub_08E5F67C
	bx r1
	.align 2, 0

	arm_func_start sub_08E5F67C
sub_08E5F67C: @ 0x08E5F67C
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08E5F68C:
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
	bgt _08E5F68C
	add r0, pc, #0x2F @ =sub_08E5F6FE
	bx r0

	thumb_func_start sub_08E5F6D0
sub_08E5F6D0: @ 0x08E5F6D0
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08E5F6DE
	stm r5!, {r0}
	stm r6!, {r0}
_08E5F6DE:
	lsrs r1, r1, #1
	blo _08E5F6EA
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08E5F6EA:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08E5F6EA

	non_word_aligned_thumb_func_start sub_08E5F6FE
sub_08E5F6FE: @ 0x08E5F6FE
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08E5F708:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08E5F728
	ldr r1, _08E5F724 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08E5F71C
	adds r1, #0xe4
_08E5F71C:
	cmp r1, r0
	blo _08E5F728
	b _08E5F9FA
	.align 2, 0
_08E5F724: .4byte 0x04000006
_08E5F728:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08E5F732
	b sub_08E5F9F0
_08E5F732:
	movs r0, #0x80
	tst r0, r6
	beq _08E5F762
	movs r0, #0x40
	tst r0, r6
	bne _08E5F772
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
	beq _08E5F7BA
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08E5F7BA
_08E5F762:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08E5F778
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08E5F7C8
_08E5F772:
	movs r0, #0
	strb r0, [r4]
	b sub_08E5F9F0
_08E5F778:
	movs r0, #0x40
	tst r0, r6
	beq _08E5F798
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08E5F7C8
_08E5F78A:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08E5F772
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08E5F7C8
_08E5F798:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08E5F7B6
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08E5F7C8
	adds r5, r0, #0
	beq _08E5F78A
	subs r6, #1
	strb r6, [r4]
	b _08E5F7C8
_08E5F7B6:
	cmp r2, #3
	bne _08E5F7C8
_08E5F7BA:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08E5F7C8
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08E5F7C8:
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
	beq _08E5F7FC
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08E5F7FC:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08E5F808
	bx r0
	.align 2, 0

	arm_func_start sub_08E5F808
sub_08E5F808: @ 0x08E5F808
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08E5F948
_08E5F828:
	cmp r2, #4
	ble _08E5F898
	subs r2, r2, r8
	movgt lr, #0
	bgt _08E5F854
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08E5F854:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E5F85C:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08E5F85C
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E5F854
	adds r8, r8, lr
	beq _08E5F9DC
_08E5F898:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E5F8A0:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08E5F910
_08E5F8C4:
	adds r5, r5, #0x40000000
	blo _08E5F8A0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E5F828
	b _08E5F9DC
_08E5F8E0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08E5F904
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08E5F8F4:
	adds r2, r0, r2
	bgt _08E5F9AC
	sub sb, sb, r0
	b _08E5F8F4
_08E5F904:
	pop {r4, ip}
	mov r2, #0
	b _08E5F920
_08E5F910:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08E5F8C4
_08E5F920:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _08E5F9E4
_08E5F948:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08E5F964:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E5F96C:
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
	beq _08E5F9B8
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08E5F8E0
	subs sb, sb, #1
	addeq r0, r0, r1
_08E5F9AC:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08E5F9B8:
	adds r5, r5, #0x40000000
	blo _08E5F96C
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E5F964
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08E5F9DC:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08E5F9E4:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08E5F9F0
	bx r0

	thumb_func_start sub_08E5F9F0
sub_08E5F9F0: @ 0x08E5F9F0
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08E5F9FA
	adds r4, #0x40
	b _08E5F708
_08E5F9FA:
	ldr r0, [sp, #0x18]
	ldr r3, _08E5FA10 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_08E5FA0E
sub_08E5FA0E: @ 0x08E5FA0E
	bx r3
	.align 2, 0
_08E5FA10: .4byte 0x68736D53

	thumb_func_start sub_08E5FA14
sub_08E5FA14: @ 0x08E5FA14
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

	thumb_func_start sub_08E5FA2C
sub_08E5FA2C: @ 0x08E5FA2C
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08E5FA4A
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08E5FA3E
	str r1, [r2, #0x34]
	b _08E5FA40
_08E5FA3E:
	str r1, [r3, #0x20]
_08E5FA40:
	cmp r1, #0
	beq _08E5FA46
	str r2, [r1, #0x30]
_08E5FA46:
	movs r1, #0
	str r1, [r0, #0x2c]
_08E5FA4A:
	bx lr
_08E5FA4C:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E5FA70
_08E5FA56:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E5FA64
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08E5FA64:
	adds r0, r4, #0
	bl sub_08E5FA2C
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E5FA56
_08E5FA70:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5FA7C
sub_08E5FA7C: @ 0x08E5FA7C
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08E5FAAC @ =gUnk_02019ED8
_08E5FA82:
	ldr r3, [r2]
	bl _08E5FA96
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08E5FA82
	bx ip
	.align 2, 0

	thumb_func_start sub_08E5FA94
sub_08E5FA94: @ 0x08E5FA94
	ldrb r3, [r2]
_08E5FA96:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08E5FAA8
	ldr r0, _08E5FAAC @ =gUnk_02019ED8
	cmp r2, r0
	blo _08E5FAA6
	lsrs r0, r2, #0xe
	beq _08E5FAA8
_08E5FAA6:
	movs r3, #0
_08E5FAA8:
	pop {r0}
	bx lr
	.align 2, 0
_08E5FAAC: .4byte gUnk_02019ED8

	thumb_func_start sub_08E5FAB0
sub_08E5FAB0: @ 0x08E5FAB0
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_08E5FAB2
sub_08E5FAB2: @ 0x08E5FAB2
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08E5FA96
	.align 2, 0
_08E5FABC:
	push {lr}
_08E5FABE:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_08E5FA94
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_08E5FADC
sub_08E5FADC: @ 0x08E5FADC
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08E5FAF4
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08E5FABC
_08E5FAF4:
	b _08E5FA4C
	.align 2, 0

	thumb_func_start sub_08E5FAF8
sub_08E5FAF8: @ 0x08E5FAF8
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08E5FB0A
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08E5FB0A:
	bx lr

	thumb_func_start sub_08E5FB0C
sub_08E5FB0C: @ 0x08E5FB0C
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08E5FB1C
	adds r2, #1
	str r2, [r1, #0x40]
	b _08E5FABE
_08E5FB1C:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_08E5FAB0
	cmp ip, r3
	bhs _08E5FB2E
	b _08E5FABE
_08E5FB2E:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E5FB3C
sub_08E5FB3C: @ 0x08E5FB3C
	mov ip, lr
	bl sub_08E5FAB0
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E5FB48
sub_08E5FB48: @ 0x08E5FB48
	mov ip, lr
	bl sub_08E5FAB0
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_08E5FB5C
sub_08E5FB5C: @ 0x08E5FB5C
	mov ip, lr
	bl sub_08E5FAB0
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E5FB70
sub_08E5FB70: @ 0x08E5FB70
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
	bl _08E5FA96
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08E5FA96
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08E5FA96
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E5FBA0
sub_08E5FBA0: @ 0x08E5FBA0
	mov ip, lr
	bl sub_08E5FAB0
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E5FBB4
sub_08E5FBB4: @ 0x08E5FBB4
	mov ip, lr
	bl sub_08E5FAB0
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E5FBC8
sub_08E5FBC8: @ 0x08E5FBC8
	mov ip, lr
	bl sub_08E5FAB0
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E5FBDC
sub_08E5FBDC: @ 0x08E5FBDC
	mov ip, lr
	bl sub_08E5FAB0
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E5FBF0
sub_08E5FBF0: @ 0x08E5FBF0
	mov ip, lr
	bl sub_08E5FAB0
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E5FBFC
sub_08E5FBFC: @ 0x08E5FBFC
	mov ip, lr
	bl sub_08E5FAB0
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08E5FC12
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08E5FC12:
	bx ip

	thumb_func_start sub_08E5FC14
sub_08E5FC14: @ 0x08E5FC14
	mov ip, lr
	bl sub_08E5FAB0
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E5FC28
sub_08E5FC28: @ 0x08E5FC28
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08E5FC3C @ =0x04000060
	adds r0, r0, r3
	bl sub_08E5FAB2
	strb r3, [r0]
	bx ip
	.align 2, 0
_08E5FC3C: .4byte 0x04000060

	thumb_func_start sub_08E5FC40
sub_08E5FC40: @ 0x08E5FC40
	ldr r0, _08E5FEEC @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08E5FEF0 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08E5FC80
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08E5FC80
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08E5FC84 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08E5FC66
	ldr r1, _08E5FC88 @ =0x84400004
	str r1, [r2, #8]
_08E5FC66:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08E5FC70
	ldr r1, _08E5FC88 @ =0x84400004
	str r1, [r2, #0x14]
_08E5FC70:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08E5FC80:
	bx lr
	.align 2, 0
_08E5FC84: .4byte 0x040000BC
_08E5FC88: .4byte 0x84400004

	thumb_func_start sub_08E5FC8C
sub_08E5FC8C: @ 0x08E5FC8C
	ldr r2, _08E5FEF0 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08E5FC96
	bx lr
_08E5FC96:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08E5FCA8
	ldr r0, [r0, #0x3c]
	bl sub_08E5FEE4
_08E5FCA8:
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
	bge _08E5FCC0
	b _08E5FED4
_08E5FCC0:
	ldr r0, _08E5FEEC @ =gUnk_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_08E60B78
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08E5FCD4
	b _08E5FED4
_08E5FCD4:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08E5FE24
_08E5FCDC:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08E5FCE4:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08E5FCEE
	b _08E5FE00
_08E5FCEE:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E5FD22
_08E5FCFA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E5FD16
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08E5FD1C
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08E5FD1C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08E5FD1C
_08E5FD16:
	adds r0, r4, #0
	bl sub_08E60674
_08E5FD1C:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E5FCFA
_08E5FD22:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08E5FDA0
	adds r0, r5, #0
	bl sub_08E60688
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
	b _08E5FDA0
_08E5FD48:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08E5FD54
	ldrb r1, [r5, #7]
	b _08E5FD5E
_08E5FD54:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08E5FD5E
	strb r1, [r5, #7]
_08E5FD5E:
	cmp r1, #0xcf
	blo _08E5FD74
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08E5FEE4
	b _08E5FDA0
_08E5FD74:
	cmp r1, #0xb0
	bls _08E5FD96
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08E5FEE4
	ldrb r0, [r5]
	cmp r0, #0
	beq _08E5FDFC
	b _08E5FDA0
_08E5FD96:
	ldr r0, _08E5FEE8 @ =gUnk_0201A14C
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08E5FDA0:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08E5FD48
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08E5FDFC
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08E5FDFC
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08E5FDC2
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08E5FDFC
_08E5FDC2:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08E5FDD6
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08E5FDDA
_08E5FDD6:
	movs r0, #0x80
	subs r2, r0, r1
_08E5FDDA:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08E5FDFC
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08E5FDF6
	movs r1, #0xc
	b _08E5FDF8
_08E5FDF6:
	movs r1, #3
_08E5FDF8:
	orrs r0, r1
	strb r0, [r5]
_08E5FDFC:
	mov r3, sl
	mov r4, fp
_08E5FE00:
	subs r6, #1
	ble _08E5FE0C
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08E5FCE4
_08E5FE0C:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08E5FE1E
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08E5FED4
_08E5FE1E:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08E5FE24:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08E5FE2C
	b _08E5FCDC
_08E5FE2C:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08E5FE30:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08E5FECA
	movs r1, #0xf
	tst r1, r0
	beq _08E5FECA
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08E60C40
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E5FEC0
_08E5FE4E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08E5FE5E
	adds r0, r4, #0
	bl sub_08E60674
	b _08E5FEBA
_08E5FE5E:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08E5FE7C
	bl sub_08E5FF38
	cmp r6, #0
	beq _08E5FE7C
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08E5FE7C:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08E5FEBA
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08E5FE90
	movs r2, #0
_08E5FE90:
	cmp r6, #0
	beq _08E5FEAE
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_08E5FEE4
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08E5FEBA
_08E5FEAE:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_08E601F8
	str r0, [r4, #0x20]
_08E5FEBA:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E5FE4E
_08E5FEC0:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08E5FECA:
	subs r2, #1
	ble _08E5FED4
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08E5FE30
_08E5FED4:
	ldr r0, _08E5FEF0 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_08E5FEE4
sub_08E5FEE4: @ 0x08E5FEE4
	bx r3
	.align 2, 0
_08E5FEE8: .4byte gUnk_0201A14C
_08E5FEEC: .4byte gUnk_03007FF0
_08E5FEF0: .4byte 0x68736D53

	thumb_func_start sub_08E5FEF4
sub_08E5FEF4: @ 0x08E5FEF4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08E5FF2C
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E5FF2A
	movs r6, #0
_08E5FF08:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E5FF22
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08E5FF20
	ldr r3, _08E5FF34 @ =gUnk_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_08E5FEE4
_08E5FF20:
	strb r6, [r4]
_08E5FF22:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E5FF08
_08E5FF2A:
	str r4, [r5, #0x20]
_08E5FF2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E5FF34: .4byte gUnk_03007FF0

	thumb_func_start sub_08E5FF38
sub_08E5FF38: @ 0x08E5FF38
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
	bls _08E5FF50
	movs r0, #0xff
_08E5FF50:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08E5FF64
	movs r0, #0xff
_08E5FF64:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_08E5FF68
sub_08E5FF68: @ 0x08E5FF68
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08E60160 @ =gUnk_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08E60164 @ =gUnk_0201A14C
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E5FFAE
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E5FFAC
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E5FFAC
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08E5FFAC:
	str r3, [r5, #0x40]
_08E5FFAE:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08E60000
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08E5FFCE
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08E5FFD0
_08E5FFCE:
	adds r0, r3, #0
_08E5FFD0:
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
	beq _08E5FFE8
	b _08E6014E
_08E5FFE8:
	movs r0, #0x80
	tst r0, r2
	beq _08E60004
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08E5FFFC
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08E5FFFC:
	ldrb r3, [r6, #1]
	b _08E60004
_08E60000:
	mov sb, r4
	ldrb r3, [r5, #5]
_08E60004:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08E60014
	movs r0, #0xff
_08E60014:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08E60054
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08E6002C
	b _08E6014E
_08E6002C:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E600A8
	movs r0, #0x40
	tst r0, r1
	bne _08E600A8
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08E600A8
	beq _08E6004C
	b _08E6014E
_08E6004C:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08E600A8
	b _08E6014E
_08E60054:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08E60062:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E600A8
	movs r0, #0x40
	tst r0, r1
	beq _08E6007C
	cmp r2, #0
	bne _08E60080
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08E6009A
_08E6007C:
	cmp r2, #0
	bne _08E6009C
_08E60080:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08E6008C
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08E6009A
_08E6008C:
	bhi _08E6009C
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08E60098
	adds r7, r0, #0
	b _08E6009A
_08E60098:
	blo _08E6009C
_08E6009A:
	mov r8, r4
_08E6009C:
	adds r4, #0x40
	subs r3, #1
	bgt _08E60062
	mov r4, r8
	cmp r4, #0
	beq _08E6014E
_08E600A8:
	adds r0, r4, #0
	bl sub_08E60674
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08E600BC
	str r4, [r3, #0x30]
_08E600BC:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08E600CE
	adds r1, r5, #0
	bl sub_08E601A8
_08E600CE:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_08E60C40
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
	bl sub_08E5FF38
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08E60108
	movs r3, #0
_08E60108:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08E60136
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08E60122
	movs r0, #0x70
	tst r0, r1
	bne _08E60124
_08E60122:
	movs r1, #8
_08E60124:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_08E5FEE4
	b _08E60140
_08E60136:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_08E601F8
_08E60140:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08E6014E:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08E60160: .4byte gUnk_03007FF0
_08E60164: .4byte gUnk_0201A14C

	thumb_func_start sub_08E60168
sub_08E60168: @ 0x08E60168
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08E6017A
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08E6017C
_08E6017A:
	ldrb r3, [r1, #5]
_08E6017C:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08E601A4
	movs r4, #0x83
	movs r5, #0x40
_08E60186:
	ldrb r2, [r1]
	tst r2, r4
	beq _08E6019E
	tst r2, r5
	bne _08E6019E
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08E6019E
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08E601A4
_08E6019E:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08E60186
_08E601A4:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_08E601A8
sub_08E601A8: @ 0x08E601A8
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08E601B8
	movs r2, #0xc
	b _08E601BA
_08E601B8:
	movs r2, #3
_08E601BA:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E601C4
sub_08E601C4: @ 0x08E601C4
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E601D0
sub_08E601D0: @ 0x08E601D0
	mov ip, lr
	bl sub_08E601C4
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08E601E0
	bl sub_08E601A8
_08E601E0:
	bx ip
	.align 2, 0

	thumb_func_start sub_08E601E4
sub_08E601E4: @ 0x08E601E4
	mov ip, lr
	bl sub_08E601C4
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08E601F4
	bl sub_08E601A8
_08E601F4:
	bx ip
	.align 2, 0
