	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E274E8
sub_08E274E8: @ 0x08E274E8
	add r2, pc, #0x0 @ =sub_08E274EC
	bx r2

	arm_func_start sub_08E274EC
sub_08E274EC: @ 0x08E274EC
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_08E274F8
sub_08E274F8: @ 0x08E274F8
	ldr r0, _08E27564 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08E27568 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08E27506
	bx lr
_08E27506:
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
	beq _08E2752A
	ldr r2, _08E27570 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08E27528
	adds r2, #0xe4
_08E27528:
	adds r1, r1, r2
_08E2752A:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08E2753A
	ldr r0, [r0, #0x24]
	bl sub_08E2791A
	ldr r0, [sp, #0x18]
_08E2753A:
	ldr r3, [r0, #0x28]
	bl sub_08E2791A
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08E27574 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08E2755A
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08E2755A:
	str r5, [sp, #8]
	ldr r6, _08E27578 @ =0x00000630
	ldr r3, _08E2756C @ =gUnk_03000001
	bx r3
	.align 2, 0
_08E27564: .4byte gUnk_03007FF0
_08E27568: .4byte 0x68736D53
_08E2756C: .4byte gUnk_03000001
_08E27570: .4byte 0x04000006
_08E27574: .4byte 0x00000350
_08E27578: .4byte 0x00000630

	thumb_func_start sub_08E2757C
sub_08E2757C: @ 0x08E2757C
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08E275DC
	add r1, pc, #0x4 @ =sub_08E27588
	bx r1
	.align 2, 0

	arm_func_start sub_08E27588
sub_08E27588: @ 0x08E27588
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08E27598:
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
	bgt _08E27598
	add r0, pc, #0x2F @ =sub_08E2760A
	bx r0

	thumb_func_start sub_08E275DC
sub_08E275DC: @ 0x08E275DC
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08E275EA
	stm r5!, {r0}
	stm r6!, {r0}
_08E275EA:
	lsrs r1, r1, #1
	blo _08E275F6
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08E275F6:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08E275F6

	non_word_aligned_thumb_func_start sub_08E2760A
sub_08E2760A: @ 0x08E2760A
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08E27614:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08E27634
	ldr r1, _08E27630 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08E27628
	adds r1, #0xe4
_08E27628:
	cmp r1, r0
	blo _08E27634
	b _08E27906
	.align 2, 0
_08E27630: .4byte 0x04000006
_08E27634:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08E2763E
	b sub_08E278FC
_08E2763E:
	movs r0, #0x80
	tst r0, r6
	beq _08E2766E
	movs r0, #0x40
	tst r0, r6
	bne _08E2767E
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
	beq _08E276C6
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08E276C6
_08E2766E:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08E27684
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08E276D4
_08E2767E:
	movs r0, #0
	strb r0, [r4]
	b sub_08E278FC
_08E27684:
	movs r0, #0x40
	tst r0, r6
	beq _08E276A4
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08E276D4
_08E27696:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08E2767E
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08E276D4
_08E276A4:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08E276C2
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08E276D4
	adds r5, r0, #0
	beq _08E27696
	subs r6, #1
	strb r6, [r4]
	b _08E276D4
_08E276C2:
	cmp r2, #3
	bne _08E276D4
_08E276C6:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08E276D4
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08E276D4:
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
	beq _08E27708
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08E27708:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08E27714
	bx r0
	.align 2, 0

	arm_func_start sub_08E27714
sub_08E27714: @ 0x08E27714
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08E27854
_08E27734:
	cmp r2, #4
	ble _08E277A4
	subs r2, r2, r8
	movgt lr, #0
	bgt _08E27760
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08E27760:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E27768:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08E27768
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E27760
	adds r8, r8, lr
	beq _08E278E8
_08E277A4:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E277AC:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08E2781C
_08E277D0:
	adds r5, r5, #0x40000000
	blo _08E277AC
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E27734
	b _08E278E8
_08E277EC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08E27810
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08E27800:
	adds r2, r0, r2
	bgt _08E278B8
	sub sb, sb, r0
	b _08E27800
_08E27810:
	pop {r4, ip}
	mov r2, #0
	b _08E2782C
_08E2781C:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08E277D0
_08E2782C:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _08E278F0
_08E27854:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08E27870:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08E27878:
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
	beq _08E278C4
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08E277EC
	subs sb, sb, #1
	addeq r0, r0, r1
_08E278B8:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08E278C4:
	adds r5, r5, #0x40000000
	blo _08E27878
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08E27870
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08E278E8:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08E278F0:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08E278FC
	bx r0

	thumb_func_start sub_08E278FC
sub_08E278FC: @ 0x08E278FC
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08E27906
	adds r4, #0x40
	b _08E27614
_08E27906:
	ldr r0, [sp, #0x18]
	ldr r3, _08E2791C @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_08E2791A
sub_08E2791A: @ 0x08E2791A
	bx r3
	.align 2, 0
_08E2791C: .4byte 0x68736D53

	thumb_func_start sub_08E27920
sub_08E27920: @ 0x08E27920
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

	thumb_func_start sub_08E27938
sub_08E27938: @ 0x08E27938
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08E27956
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08E2794A
	str r1, [r2, #0x34]
	b _08E2794C
_08E2794A:
	str r1, [r3, #0x20]
_08E2794C:
	cmp r1, #0
	beq _08E27952
	str r2, [r1, #0x30]
_08E27952:
	movs r1, #0
	str r1, [r0, #0x2c]
_08E27956:
	bx lr
_08E27958:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E2797C
_08E27962:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E27970
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08E27970:
	adds r0, r4, #0
	bl sub_08E27938
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E27962
_08E2797C:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E27988
sub_08E27988: @ 0x08E27988
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08E279B8 @ =gUnk_02014348
_08E2798E:
	ldr r3, [r2]
	bl _08E279A2
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08E2798E
	bx ip
	.align 2, 0

	thumb_func_start sub_08E279A0
sub_08E279A0: @ 0x08E279A0
	ldrb r3, [r2]
_08E279A2:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08E279B4
	ldr r0, _08E279B8 @ =gUnk_02014348
	cmp r2, r0
	blo _08E279B2
	lsrs r0, r2, #0xe
	beq _08E279B4
_08E279B2:
	movs r3, #0
_08E279B4:
	pop {r0}
	bx lr
	.align 2, 0
_08E279B8: .4byte gUnk_02014348

	thumb_func_start sub_08E279BC
sub_08E279BC: @ 0x08E279BC
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_08E279BE
sub_08E279BE: @ 0x08E279BE
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08E279A2
	.align 2, 0
_08E279C8:
	push {lr}
_08E279CA:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_08E279A0
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_08E279E8
sub_08E279E8: @ 0x08E279E8
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08E27A00
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08E279C8
_08E27A00:
	b _08E27958
	.align 2, 0

	thumb_func_start sub_08E27A04
sub_08E27A04: @ 0x08E27A04
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08E27A16
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08E27A16:
	bx lr

	thumb_func_start sub_08E27A18
sub_08E27A18: @ 0x08E27A18
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08E27A28
	adds r2, #1
	str r2, [r1, #0x40]
	b _08E279CA
_08E27A28:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_08E279BC
	cmp ip, r3
	bhs _08E27A3A
	b _08E279CA
_08E27A3A:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E27A48
sub_08E27A48: @ 0x08E27A48
	mov ip, lr
	bl sub_08E279BC
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E27A54
sub_08E27A54: @ 0x08E27A54
	mov ip, lr
	bl sub_08E279BC
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_08E27A68
sub_08E27A68: @ 0x08E27A68
	mov ip, lr
	bl sub_08E279BC
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E27A7C
sub_08E27A7C: @ 0x08E27A7C
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
	bl _08E279A2
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08E279A2
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08E279A2
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E27AAC
sub_08E27AAC: @ 0x08E27AAC
	mov ip, lr
	bl sub_08E279BC
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E27AC0
sub_08E27AC0: @ 0x08E27AC0
	mov ip, lr
	bl sub_08E279BC
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E27AD4
sub_08E27AD4: @ 0x08E27AD4
	mov ip, lr
	bl sub_08E279BC
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E27AE8
sub_08E27AE8: @ 0x08E27AE8
	mov ip, lr
	bl sub_08E279BC
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E27AFC
sub_08E27AFC: @ 0x08E27AFC
	mov ip, lr
	bl sub_08E279BC
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_08E27B08
sub_08E27B08: @ 0x08E27B08
	mov ip, lr
	bl sub_08E279BC
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08E27B1E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08E27B1E:
	bx ip

	thumb_func_start sub_08E27B20
sub_08E27B20: @ 0x08E27B20
	mov ip, lr
	bl sub_08E279BC
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08E27B34
sub_08E27B34: @ 0x08E27B34
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08E27B48 @ =0x04000060
	adds r0, r0, r3
	bl sub_08E279BE

	thumb_func_start sub_08E27B44
sub_08E27B44: @ 0x08E27B44
	strb r3, [r0]
	bx ip
	.align 2, 0
_08E27B48: .4byte 0x04000060

	thumb_func_start sub_08E27B4C
sub_08E27B4C: @ 0x08E27B4C
	ldr r0, _08E27DF8 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08E27DFC @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08E27B8C
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08E27B8C
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08E27B90 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08E27B72
	ldr r1, _08E27B94 @ =0x84400004
	str r1, [r2, #8]
_08E27B72:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08E27B7C
	ldr r1, _08E27B94 @ =0x84400004
	str r1, [r2, #0x14]
_08E27B7C:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08E27B8C:
	bx lr
	.align 2, 0
_08E27B90: .4byte 0x040000BC
_08E27B94: .4byte 0x84400004

	thumb_func_start sub_08E27B98
sub_08E27B98: @ 0x08E27B98
	ldr r2, _08E27DFC @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08E27BA2
	bx lr
_08E27BA2:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08E27BB4
	ldr r0, [r0, #0x3c]
	bl sub_08E27DF0
_08E27BB4:
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
	bge _08E27BCC
	b _08E27DE0
_08E27BCC:
	ldr r0, _08E27DF8 @ =gUnk_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_08E28A84
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08E27BE0
	b _08E27DE0
_08E27BE0:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08E27D30
_08E27BE8:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08E27BF0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08E27BFA
	b _08E27D0C
_08E27BFA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E27C2E
_08E27C06:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E27C22
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08E27C28
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08E27C28
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08E27C28
_08E27C22:
	adds r0, r4, #0
	bl sub_08E28580
_08E27C28:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E27C06
_08E27C2E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08E27CAC
	adds r0, r5, #0
	bl sub_08E28594
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
	b _08E27CAC
_08E27C54:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08E27C60
	ldrb r1, [r5, #7]
	b _08E27C6A
_08E27C60:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08E27C6A
	strb r1, [r5, #7]
_08E27C6A:
	cmp r1, #0xcf
	blo _08E27C80
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08E27DF0
	b _08E27CAC
_08E27C80:
	cmp r1, #0xb0
	bls _08E27CA2
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08E27DF0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08E27D08
	b _08E27CAC
_08E27CA2:
	ldr r0, _08E27DF4 @ =gUnk_020145BC
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08E27CAC:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08E27C54
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08E27D08
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08E27D08
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08E27CCE
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08E27D08
_08E27CCE:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08E27CE2
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08E27CE6
_08E27CE2:
	movs r0, #0x80
	subs r2, r0, r1
_08E27CE6:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08E27D08
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08E27D02
	movs r1, #0xc
	b _08E27D04
_08E27D02:
	movs r1, #3
_08E27D04:
	orrs r0, r1
	strb r0, [r5]
_08E27D08:
	mov r3, sl
	mov r4, fp
_08E27D0C:
	subs r6, #1
	ble _08E27D18
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08E27BF0
_08E27D18:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08E27D2A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08E27DE0
_08E27D2A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08E27D30:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08E27D38
	b _08E27BE8
_08E27D38:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08E27D3C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08E27DD6
	movs r1, #0xf
	tst r1, r0
	beq _08E27DD6
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08E28B4C
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E27DCC
_08E27D5A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08E27D6A
	adds r0, r4, #0
	bl sub_08E28580
	b _08E27DC6
_08E27D6A:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08E27D88
	bl sub_08E27E44
	cmp r6, #0
	beq _08E27D88
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08E27D88:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08E27DC6
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08E27D9C
	movs r2, #0
_08E27D9C:
	cmp r6, #0
	beq _08E27DBA
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_08E27DF0
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08E27DC6
_08E27DBA:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_08E28104
	str r0, [r4, #0x20]
_08E27DC6:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E27D5A
_08E27DCC:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08E27DD6:
	subs r2, #1
	ble _08E27DE0
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08E27D3C
_08E27DE0:
	ldr r0, _08E27DFC @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_08E27DF0
sub_08E27DF0: @ 0x08E27DF0
	bx r3
	.align 2, 0
_08E27DF4: .4byte gUnk_020145BC
_08E27DF8: .4byte gUnk_03007FF0
_08E27DFC: .4byte 0x68736D53

	thumb_func_start sub_08E27E00
sub_08E27E00: @ 0x08E27E00
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08E27E38
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08E27E36
	movs r6, #0
_08E27E14:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E27E2E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08E27E2C
	ldr r3, _08E27E40 @ =gUnk_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_08E27DF0
_08E27E2C:
	strb r6, [r4]
_08E27E2E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08E27E14
_08E27E36:
	str r4, [r5, #0x20]
_08E27E38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E27E40: .4byte gUnk_03007FF0

	thumb_func_start sub_08E27E44
sub_08E27E44: @ 0x08E27E44
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
	bls _08E27E5C
	movs r0, #0xff
_08E27E5C:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08E27E70
	movs r0, #0xff
_08E27E70:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_08E27E74
sub_08E27E74: @ 0x08E27E74
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08E2806C @ =gUnk_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08E28070 @ =gUnk_020145BC
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E27EBA
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E27EB8
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08E27EB8
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08E27EB8:
	str r3, [r5, #0x40]
_08E27EBA:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08E27F0C
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08E27EDA
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08E27EDC
_08E27EDA:
	adds r0, r3, #0
_08E27EDC:
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
	beq _08E27EF4
	b _08E2805A
_08E27EF4:
	movs r0, #0x80
	tst r0, r2
	beq _08E27F10
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08E27F08
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08E27F08:
	ldrb r3, [r6, #1]
	b _08E27F10
_08E27F0C:
	mov sb, r4
	ldrb r3, [r5, #5]
_08E27F10:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08E27F20
	movs r0, #0xff
_08E27F20:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08E27F60
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08E27F38
	b _08E2805A
_08E27F38:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E27FB4
	movs r0, #0x40
	tst r0, r1
	bne _08E27FB4
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08E27FB4
	beq _08E27F58
	b _08E2805A
_08E27F58:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08E27FB4
	b _08E2805A
_08E27F60:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08E27F6E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08E27FB4
	movs r0, #0x40
	tst r0, r1
	beq _08E27F88
	cmp r2, #0
	bne _08E27F8C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08E27FA6
_08E27F88:
	cmp r2, #0
	bne _08E27FA8
_08E27F8C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08E27F98
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08E27FA6
_08E27F98:
	bhi _08E27FA8
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08E27FA4
	adds r7, r0, #0
	b _08E27FA6
_08E27FA4:
	blo _08E27FA8
_08E27FA6:
	mov r8, r4
_08E27FA8:
	adds r4, #0x40
	subs r3, #1
	bgt _08E27F6E
	mov r4, r8
	cmp r4, #0
	beq _08E2805A
_08E27FB4:
	adds r0, r4, #0
	bl sub_08E28580
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08E27FC8
	str r4, [r3, #0x30]
_08E27FC8:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08E27FDA
	adds r1, r5, #0
	bl sub_08E280B4
_08E27FDA:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_08E28B4C
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
	bl sub_08E27E44
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08E28014
	movs r3, #0
_08E28014:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08E28042
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08E2802E
	movs r0, #0x70
	tst r0, r1
	bne _08E28030
_08E2802E:
	movs r1, #8
_08E28030:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_08E27DF0
	b _08E2804C
_08E28042:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_08E28104
_08E2804C:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08E2805A:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08E2806C: .4byte gUnk_03007FF0
_08E28070: .4byte gUnk_020145BC

	thumb_func_start sub_08E28074
sub_08E28074: @ 0x08E28074
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08E28086
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08E28088
_08E28086:
	ldrb r3, [r1, #5]
_08E28088:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08E280B0
	movs r4, #0x83
	movs r5, #0x40
_08E28092:
	ldrb r2, [r1]
	tst r2, r4
	beq _08E280AA
	tst r2, r5
	bne _08E280AA
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08E280AA
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08E280B0
_08E280AA:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08E28092
_08E280B0:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_08E280B4
sub_08E280B4: @ 0x08E280B4
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08E280C4
	movs r2, #0xc
	b _08E280C6
_08E280C4:
	movs r2, #3
_08E280C6:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E280D0
sub_08E280D0: @ 0x08E280D0
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08E280DC
sub_08E280DC: @ 0x08E280DC
	mov ip, lr
	bl sub_08E280D0
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08E280EC
	bl sub_08E280B4
_08E280EC:
	bx ip
	.align 2, 0

	thumb_func_start sub_08E280F0
sub_08E280F0: @ 0x08E280F0
	mov ip, lr
	bl sub_08E280D0
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08E28100
	bl sub_08E280B4
_08E28100:
	bx ip
	.align 2, 0
