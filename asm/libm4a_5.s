	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D9B184
sub_08D9B184: @ 0x08D9B184
	add r2, pc, #0x0 @ =sub_08D9B188
	bx r2

	arm_func_start sub_08D9B188
sub_08D9B188: @ 0x08D9B188
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_08D9B194
sub_08D9B194: @ 0x08D9B194
	ldr r0, _08D9B200 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08D9B204 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08D9B1A2
	bx lr
_08D9B1A2:
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
	beq _08D9B1C6
	ldr r2, _08D9B20C @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08D9B1C4
	adds r2, #0xe4
_08D9B1C4:
	adds r1, r1, r2
_08D9B1C6:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08D9B1D6
	ldr r0, [r0, #0x24]
	bl sub_08D9B5B6
	ldr r0, [sp, #0x18]
_08D9B1D6:
	ldr r3, [r0, #0x28]
	bl sub_08D9B5B6
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08D9B210 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08D9B1F6
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08D9B1F6:
	str r5, [sp, #8]
	ldr r6, _08D9B214 @ =0x00000630
	ldr r3, _08D9B208 @ =gUnk_03000001
	bx r3
	.align 2, 0
_08D9B200: .4byte gUnk_03007FF0
_08D9B204: .4byte 0x68736D53
_08D9B208: .4byte gUnk_03000001
_08D9B20C: .4byte 0x04000006
_08D9B210: .4byte 0x00000350
_08D9B214: .4byte 0x00000630

	thumb_func_start sub_08D9B218
sub_08D9B218: @ 0x08D9B218
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08D9B278
	add r1, pc, #0x4 @ =sub_08D9B224
	bx r1
	.align 2, 0

	arm_func_start sub_08D9B224
sub_08D9B224: @ 0x08D9B224
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08D9B234:
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
	bgt _08D9B234
	add r0, pc, #0x2F @ =sub_08D9B2A6
	bx r0

	thumb_func_start sub_08D9B278
sub_08D9B278: @ 0x08D9B278
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08D9B286
	stm r5!, {r0}
	stm r6!, {r0}
_08D9B286:
	lsrs r1, r1, #1
	blo _08D9B292
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08D9B292:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08D9B292

	non_word_aligned_thumb_func_start sub_08D9B2A6
sub_08D9B2A6: @ 0x08D9B2A6
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08D9B2B0:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08D9B2D0
	ldr r1, _08D9B2CC @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08D9B2C4
	adds r1, #0xe4
_08D9B2C4:
	cmp r1, r0
	blo _08D9B2D0
	b _08D9B5A2
	.align 2, 0
_08D9B2CC: .4byte 0x04000006
_08D9B2D0:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08D9B2DA
	b sub_08D9B598
_08D9B2DA:
	movs r0, #0x80
	tst r0, r6
	beq _08D9B30A
	movs r0, #0x40
	tst r0, r6
	bne _08D9B31A
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
	beq _08D9B362
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08D9B362
_08D9B30A:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08D9B320
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08D9B370
_08D9B31A:
	movs r0, #0
	strb r0, [r4]
	b sub_08D9B598
_08D9B320:
	movs r0, #0x40
	tst r0, r6
	beq _08D9B340
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08D9B370
_08D9B332:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08D9B31A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08D9B370
_08D9B340:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08D9B35E
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08D9B370
	adds r5, r0, #0
	beq _08D9B332
	subs r6, #1
	strb r6, [r4]
	b _08D9B370
_08D9B35E:
	cmp r2, #3
	bne _08D9B370
_08D9B362:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08D9B370
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08D9B370:
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
	beq _08D9B3A4
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08D9B3A4:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08D9B3B0
	bx r0
	.align 2, 0

	arm_func_start sub_08D9B3B0
sub_08D9B3B0: @ 0x08D9B3B0
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08D9B4F0
_08D9B3D0:
	cmp r2, #4
	ble _08D9B440
	subs r2, r2, r8
	movgt lr, #0
	bgt _08D9B3FC
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08D9B3FC:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08D9B404:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08D9B404
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08D9B3FC
	adds r8, r8, lr
	beq _08D9B584
_08D9B440:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08D9B448:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08D9B4B8
_08D9B46C:
	adds r5, r5, #0x40000000
	blo _08D9B448
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08D9B3D0
	b _08D9B584
_08D9B488:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08D9B4AC
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08D9B49C:
	adds r2, r0, r2
	bgt _08D9B554
	sub sb, sb, r0
	b _08D9B49C
_08D9B4AC:
	pop {r4, ip}
	mov r2, #0
	b _08D9B4C8
_08D9B4B8:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08D9B46C
_08D9B4C8:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _08D9B58C
_08D9B4F0:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08D9B50C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08D9B514:
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
	beq _08D9B560
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08D9B488
	subs sb, sb, #1
	addeq r0, r0, r1
_08D9B554:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08D9B560:
	adds r5, r5, #0x40000000
	blo _08D9B514
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08D9B50C
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08D9B584:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08D9B58C:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08D9B598
	bx r0

	thumb_func_start sub_08D9B598
sub_08D9B598: @ 0x08D9B598
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08D9B5A2
	adds r4, #0x40
	b _08D9B2B0
_08D9B5A2:
	ldr r0, [sp, #0x18]
	ldr r3, _08D9B5B8 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_08D9B5B6
sub_08D9B5B6: @ 0x08D9B5B6
	bx r3
	.align 2, 0
_08D9B5B8: .4byte 0x68736D53

	thumb_func_start sub_08D9B5BC
sub_08D9B5BC: @ 0x08D9B5BC
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

	thumb_func_start sub_08D9B5D4
sub_08D9B5D4: @ 0x08D9B5D4
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08D9B5F2
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08D9B5E6
	str r1, [r2, #0x34]
	b _08D9B5E8
_08D9B5E6:
	str r1, [r3, #0x20]
_08D9B5E8:
	cmp r1, #0
	beq _08D9B5EE
	str r2, [r1, #0x30]
_08D9B5EE:
	movs r1, #0
	str r1, [r0, #0x2c]
_08D9B5F2:
	bx lr
_08D9B5F4:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D9B618
_08D9B5FE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D9B60C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08D9B60C:
	adds r0, r4, #0
	bl sub_08D9B5D4
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D9B5FE
_08D9B618:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9B624
sub_08D9B624: @ 0x08D9B624
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08D9B654 @ =gUnk_02010110
_08D9B62A:
	ldr r3, [r2]
	bl _08D9B63E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08D9B62A
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9B63C
sub_08D9B63C: @ 0x08D9B63C
	ldrb r3, [r2]
_08D9B63E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08D9B650
	ldr r0, _08D9B654 @ =gUnk_02010110
	cmp r2, r0
	blo _08D9B64E
	lsrs r0, r2, #0xe
	beq _08D9B650
_08D9B64E:
	movs r3, #0
_08D9B650:
	pop {r0}
	bx lr
	.align 2, 0
_08D9B654: .4byte gUnk_02010110

	thumb_func_start sub_08D9B658
sub_08D9B658: @ 0x08D9B658
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_08D9B65A
sub_08D9B65A: @ 0x08D9B65A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08D9B63E
	.align 2, 0
_08D9B664:
	push {lr}
_08D9B666:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_08D9B63C
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_08D9B684
sub_08D9B684: @ 0x08D9B684
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08D9B69C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08D9B664
_08D9B69C:
	b _08D9B5F4
	.align 2, 0

	thumb_func_start sub_08D9B6A0
sub_08D9B6A0: @ 0x08D9B6A0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08D9B6B2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08D9B6B2:
	bx lr

	thumb_func_start sub_08D9B6B4
sub_08D9B6B4: @ 0x08D9B6B4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08D9B6C4
	adds r2, #1
	str r2, [r1, #0x40]
	b _08D9B666
_08D9B6C4:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_08D9B658
	cmp ip, r3
	bhs _08D9B6D6
	b _08D9B666
_08D9B6D6:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9B6E4
sub_08D9B6E4: @ 0x08D9B6E4
	mov ip, lr
	bl sub_08D9B658
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9B6F0
sub_08D9B6F0: @ 0x08D9B6F0
	mov ip, lr
	bl sub_08D9B658
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_08D9B704
sub_08D9B704: @ 0x08D9B704
	mov ip, lr
	bl sub_08D9B658
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9B718
sub_08D9B718: @ 0x08D9B718
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
	bl _08D9B63E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08D9B63E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08D9B63E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9B748
sub_08D9B748: @ 0x08D9B748
	mov ip, lr
	bl sub_08D9B658
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9B75C
sub_08D9B75C: @ 0x08D9B75C
	mov ip, lr
	bl sub_08D9B658
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08D9B770
sub_08D9B770: @ 0x08D9B770
	mov ip, lr
	bl sub_08D9B658
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08D9B784
sub_08D9B784: @ 0x08D9B784
	mov ip, lr
	bl sub_08D9B658
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9B798
sub_08D9B798: @ 0x08D9B798
	mov ip, lr
	bl sub_08D9B658
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9B7A4
sub_08D9B7A4: @ 0x08D9B7A4
	mov ip, lr
	bl sub_08D9B658
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08D9B7BA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08D9B7BA:
	bx ip

	thumb_func_start sub_08D9B7BC
sub_08D9B7BC: @ 0x08D9B7BC
	mov ip, lr
	bl sub_08D9B658
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08D9B7D0
sub_08D9B7D0: @ 0x08D9B7D0
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08D9B7E4 @ =0x04000060
	adds r0, r0, r3
	bl sub_08D9B65A
	strb r3, [r0]
	bx ip
	.align 2, 0
_08D9B7E4: .4byte 0x04000060

	thumb_func_start sub_08D9B7E8
sub_08D9B7E8: @ 0x08D9B7E8
	ldr r0, _08D9BA94 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08D9BA98 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08D9B828
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08D9B828
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08D9B82C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08D9B80E
	ldr r1, _08D9B830 @ =0x84400004
	str r1, [r2, #8]
_08D9B80E:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08D9B818
	ldr r1, _08D9B830 @ =0x84400004
	str r1, [r2, #0x14]
_08D9B818:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08D9B828:
	bx lr
	.align 2, 0
_08D9B82C: .4byte 0x040000BC
_08D9B830: .4byte 0x84400004

	thumb_func_start sub_08D9B834
sub_08D9B834: @ 0x08D9B834
	ldr r2, _08D9BA98 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08D9B83E
	bx lr
_08D9B83E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08D9B850
	ldr r0, [r0, #0x3c]
	bl sub_08D9BA8C
_08D9B850:
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
	bge _08D9B868
	b _08D9BA7C
_08D9B868:
	ldr r0, _08D9BA94 @ =gUnk_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_08D9C720
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08D9B87C
	b _08D9BA7C
_08D9B87C:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08D9B9CC
_08D9B884:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08D9B88C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08D9B896
	b _08D9B9A8
_08D9B896:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D9B8CA
_08D9B8A2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D9B8BE
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08D9B8C4
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08D9B8C4
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08D9B8C4
_08D9B8BE:
	adds r0, r4, #0
	bl sub_08D9C21C
_08D9B8C4:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D9B8A2
_08D9B8CA:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08D9B948
	adds r0, r5, #0
	bl sub_08D9C230
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
	b _08D9B948
_08D9B8F0:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08D9B8FC
	ldrb r1, [r5, #7]
	b _08D9B906
_08D9B8FC:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08D9B906
	strb r1, [r5, #7]
_08D9B906:
	cmp r1, #0xcf
	blo _08D9B91C
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08D9BA8C
	b _08D9B948
_08D9B91C:
	cmp r1, #0xb0
	bls _08D9B93E
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08D9BA8C
	ldrb r0, [r5]
	cmp r0, #0
	beq _08D9B9A4
	b _08D9B948
_08D9B93E:
	ldr r0, _08D9BA90 @ =gUnk_02010384
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08D9B948:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08D9B8F0
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08D9B9A4
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08D9B9A4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08D9B96A
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08D9B9A4
_08D9B96A:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08D9B97E
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08D9B982
_08D9B97E:
	movs r0, #0x80
	subs r2, r0, r1
_08D9B982:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08D9B9A4
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08D9B99E
	movs r1, #0xc
	b _08D9B9A0
_08D9B99E:
	movs r1, #3
_08D9B9A0:
	orrs r0, r1
	strb r0, [r5]
_08D9B9A4:
	mov r3, sl
	mov r4, fp
_08D9B9A8:
	subs r6, #1
	ble _08D9B9B4
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08D9B88C
_08D9B9B4:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08D9B9C6
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08D9BA7C
_08D9B9C6:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08D9B9CC:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08D9B9D4
	b _08D9B884
_08D9B9D4:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08D9B9D8:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08D9BA72
	movs r1, #0xf
	tst r1, r0
	beq _08D9BA72
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08D9C7E8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D9BA68
_08D9B9F6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08D9BA06
	adds r0, r4, #0
	bl sub_08D9C21C
	b _08D9BA62
_08D9BA06:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08D9BA24
	bl sub_08D9BAE0
	cmp r6, #0
	beq _08D9BA24
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08D9BA24:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08D9BA62
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08D9BA38
	movs r2, #0
_08D9BA38:
	cmp r6, #0
	beq _08D9BA56
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_08D9BA8C
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08D9BA62
_08D9BA56:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_08D9BDA0
	str r0, [r4, #0x20]
_08D9BA62:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D9B9F6
_08D9BA68:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08D9BA72:
	subs r2, #1
	ble _08D9BA7C
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08D9B9D8
_08D9BA7C:
	ldr r0, _08D9BA98 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_08D9BA8C
sub_08D9BA8C: @ 0x08D9BA8C
	bx r3
	.align 2, 0
_08D9BA90: .4byte gUnk_02010384
_08D9BA94: .4byte gUnk_03007FF0
_08D9BA98: .4byte 0x68736D53

	thumb_func_start sub_08D9BA9C
sub_08D9BA9C: @ 0x08D9BA9C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08D9BAD4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D9BAD2
	movs r6, #0
_08D9BAB0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08D9BACA
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08D9BAC8
	ldr r3, _08D9BADC @ =gUnk_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_08D9BA8C
_08D9BAC8:
	strb r6, [r4]
_08D9BACA:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D9BAB0
_08D9BAD2:
	str r4, [r5, #0x20]
_08D9BAD4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9BADC: .4byte gUnk_03007FF0

	thumb_func_start sub_08D9BAE0
sub_08D9BAE0: @ 0x08D9BAE0
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
	bls _08D9BAF8
	movs r0, #0xff
_08D9BAF8:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08D9BB0C
	movs r0, #0xff
_08D9BB0C:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_08D9BB10
sub_08D9BB10: @ 0x08D9BB10
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08D9BD08 @ =gUnk_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08D9BD0C @ =gUnk_02010384
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08D9BB56
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08D9BB54
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08D9BB54
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08D9BB54:
	str r3, [r5, #0x40]
_08D9BB56:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08D9BBA8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08D9BB76
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08D9BB78
_08D9BB76:
	adds r0, r3, #0
_08D9BB78:
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
	beq _08D9BB90
	b _08D9BCF6
_08D9BB90:
	movs r0, #0x80
	tst r0, r2
	beq _08D9BBAC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08D9BBA4
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08D9BBA4:
	ldrb r3, [r6, #1]
	b _08D9BBAC
_08D9BBA8:
	mov sb, r4
	ldrb r3, [r5, #5]
_08D9BBAC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08D9BBBC
	movs r0, #0xff
_08D9BBBC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08D9BBFC
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08D9BBD4
	b _08D9BCF6
_08D9BBD4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D9BC50
	movs r0, #0x40
	tst r0, r1
	bne _08D9BC50
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08D9BC50
	beq _08D9BBF4
	b _08D9BCF6
_08D9BBF4:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08D9BC50
	b _08D9BCF6
_08D9BBFC:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08D9BC0A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D9BC50
	movs r0, #0x40
	tst r0, r1
	beq _08D9BC24
	cmp r2, #0
	bne _08D9BC28
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08D9BC42
_08D9BC24:
	cmp r2, #0
	bne _08D9BC44
_08D9BC28:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08D9BC34
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08D9BC42
_08D9BC34:
	bhi _08D9BC44
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08D9BC40
	adds r7, r0, #0
	b _08D9BC42
_08D9BC40:
	blo _08D9BC44
_08D9BC42:
	mov r8, r4
_08D9BC44:
	adds r4, #0x40
	subs r3, #1
	bgt _08D9BC0A
	mov r4, r8
	cmp r4, #0
	beq _08D9BCF6
_08D9BC50:
	adds r0, r4, #0
	bl sub_08D9C21C
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08D9BC64
	str r4, [r3, #0x30]
_08D9BC64:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08D9BC76
	adds r1, r5, #0
	bl sub_08D9BD50
_08D9BC76:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_08D9C7E8
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
	bl sub_08D9BAE0
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08D9BCB0
	movs r3, #0
_08D9BCB0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08D9BCDE
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08D9BCCA
	movs r0, #0x70
	tst r0, r1
	bne _08D9BCCC
_08D9BCCA:
	movs r1, #8
_08D9BCCC:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_08D9BA8C
	b _08D9BCE8
_08D9BCDE:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_08D9BDA0
_08D9BCE8:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08D9BCF6:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08D9BD08: .4byte gUnk_03007FF0
_08D9BD0C: .4byte gUnk_02010384

	thumb_func_start sub_08D9BD10
sub_08D9BD10: @ 0x08D9BD10
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08D9BD22
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08D9BD24
_08D9BD22:
	ldrb r3, [r1, #5]
_08D9BD24:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08D9BD4C
	movs r4, #0x83
	movs r5, #0x40
_08D9BD2E:
	ldrb r2, [r1]
	tst r2, r4
	beq _08D9BD46
	tst r2, r5
	bne _08D9BD46
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08D9BD46
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08D9BD4C
_08D9BD46:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08D9BD2E
_08D9BD4C:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_08D9BD50
sub_08D9BD50: @ 0x08D9BD50
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08D9BD60
	movs r2, #0xc
	b _08D9BD62
_08D9BD60:
	movs r2, #3
_08D9BD62:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9BD6C
sub_08D9BD6C: @ 0x08D9BD6C
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9BD78
sub_08D9BD78: @ 0x08D9BD78
	mov ip, lr
	bl sub_08D9BD6C
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08D9BD88
	bl sub_08D9BD50
_08D9BD88:
	bx ip
	.align 2, 0

	thumb_func_start sub_08D9BD8C
sub_08D9BD8C: @ 0x08D9BD8C
	mov ip, lr
	bl sub_08D9BD6C
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08D9BD9C
	bl sub_08D9BD50
_08D9BD9C:
	bx ip
	.align 2, 0
