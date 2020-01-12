	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D78594
sub_08D78594: @ 0x08D78594
	add r2, pc, #0x0 @ =sub_08D78598
	bx r2

	arm_func_start sub_08D78598
sub_08D78598: @ 0x08D78598
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_08D785A4
sub_08D785A4: @ 0x08D785A4
	ldr r0, _08D78610 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08D78614 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08D785B2
	bx lr
_08D785B2:
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
	beq _08D785D6
	ldr r2, _08D7861C @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08D785D4
	adds r2, #0xe4
_08D785D4:
	adds r1, r1, r2
_08D785D6:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08D785E6
	ldr r0, [r0, #0x24]
	bl sub_08D789C6
	ldr r0, [sp, #0x18]
_08D785E6:
	ldr r3, [r0, #0x28]
	bl sub_08D789C6
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08D78620 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08D78606
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08D78606:
	str r5, [sp, #8]
	ldr r6, _08D78624 @ =0x00000630
	ldr r3, _08D78618 @ =gUnk_03000001
	bx r3
	.align 2, 0
_08D78610: .4byte gUnk_03007FF0
_08D78614: .4byte 0x68736D53
_08D78618: .4byte gUnk_03000001
_08D7861C: .4byte 0x04000006
_08D78620: .4byte 0x00000350
_08D78624: .4byte 0x00000630

	thumb_func_start sub_08D78628
sub_08D78628: @ 0x08D78628
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08D78688
	add r1, pc, #0x4 @ =sub_08D78634
	bx r1
	.align 2, 0

	arm_func_start sub_08D78634
sub_08D78634: @ 0x08D78634
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08D78644:
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
	bgt _08D78644
	add r0, pc, #0x2F @ =sub_08D786B6
	bx r0

	thumb_func_start sub_08D78688
sub_08D78688: @ 0x08D78688
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08D78696
	stm r5!, {r0}
	stm r6!, {r0}
_08D78696:
	lsrs r1, r1, #1
	blo _08D786A2
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08D786A2:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08D786A2

	non_word_aligned_thumb_func_start sub_08D786B6
sub_08D786B6: @ 0x08D786B6
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08D786C0:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08D786E0
	ldr r1, _08D786DC @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08D786D4
	adds r1, #0xe4
_08D786D4:
	cmp r1, r0
	blo _08D786E0
	b _08D789B2
	.align 2, 0
_08D786DC: .4byte 0x04000006
_08D786E0:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08D786EA
	b sub_08D789A8
_08D786EA:
	movs r0, #0x80
	tst r0, r6
	beq _08D7871A
	movs r0, #0x40
	tst r0, r6
	bne _08D7872A
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
	beq _08D78772
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08D78772
_08D7871A:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08D78730
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08D78780
_08D7872A:
	movs r0, #0
	strb r0, [r4]
	b sub_08D789A8
_08D78730:
	movs r0, #0x40
	tst r0, r6
	beq _08D78750
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08D78780
_08D78742:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08D7872A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08D78780
_08D78750:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08D7876E
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08D78780
	adds r5, r0, #0
	beq _08D78742
	subs r6, #1
	strb r6, [r4]
	b _08D78780
_08D7876E:
	cmp r2, #3
	bne _08D78780
_08D78772:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08D78780
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08D78780:
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
	beq _08D787B4
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08D787B4:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08D787C0
	bx r0
	.align 2, 0

	arm_func_start sub_08D787C0
sub_08D787C0: @ 0x08D787C0
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08D78900
_08D787E0:
	cmp r2, #4
	ble _08D78850
	subs r2, r2, r8
	movgt lr, #0
	bgt _08D7880C
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08D7880C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08D78814:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08D78814
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08D7880C
	adds r8, r8, lr
	beq _08D78994
_08D78850:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08D78858:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08D788C8
_08D7887C:
	adds r5, r5, #0x40000000
	blo _08D78858
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08D787E0
	b _08D78994
_08D78898:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08D788BC
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08D788AC:
	adds r2, r0, r2
	bgt _08D78964
	sub sb, sb, r0
	b _08D788AC
_08D788BC:
	pop {r4, ip}
	mov r2, #0
	b _08D788D8
_08D788C8:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08D7887C
_08D788D8:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _08D7899C
_08D78900:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08D7891C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08D78924:
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
	beq _08D78970
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08D78898
	subs sb, sb, #1
	addeq r0, r0, r1
_08D78964:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08D78970:
	adds r5, r5, #0x40000000
	blo _08D78924
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08D7891C
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08D78994:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08D7899C:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08D789A8
	bx r0

	thumb_func_start sub_08D789A8
sub_08D789A8: @ 0x08D789A8
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08D789B2
	adds r4, #0x40
	b _08D786C0
_08D789B2:
	ldr r0, [sp, #0x18]
	ldr r3, _08D789C8 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_08D789C6
sub_08D789C6: @ 0x08D789C6
	bx r3
	.align 2, 0
_08D789C8: .4byte 0x68736D53

	thumb_func_start sub_08D789CC
sub_08D789CC: @ 0x08D789CC
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

	thumb_func_start sub_08D789E4
sub_08D789E4: @ 0x08D789E4
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08D78A02
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08D789F6
	str r1, [r2, #0x34]
	b _08D789F8
_08D789F6:
	str r1, [r3, #0x20]
_08D789F8:
	cmp r1, #0
	beq _08D789FE
	str r2, [r1, #0x30]
_08D789FE:
	movs r1, #0
	str r1, [r0, #0x2c]
_08D78A02:
	bx lr
_08D78A04:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D78A28
_08D78A0E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D78A1C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08D78A1C:
	adds r0, r4, #0
	bl sub_08D789E4
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D78A0E
_08D78A28:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D78A34
sub_08D78A34: @ 0x08D78A34
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08D78A64 @ =gUnk_02010148
_08D78A3A:
	ldr r3, [r2]
	bl _08D78A4E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08D78A3A
	bx ip
	.align 2, 0

	thumb_func_start sub_08D78A4C
sub_08D78A4C: @ 0x08D78A4C
	ldrb r3, [r2]
_08D78A4E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08D78A60
	ldr r0, _08D78A64 @ =gUnk_02010148
	cmp r2, r0
	blo _08D78A5E
	lsrs r0, r2, #0xe
	beq _08D78A60
_08D78A5E:
	movs r3, #0
_08D78A60:
	pop {r0}
	bx lr
	.align 2, 0
_08D78A64: .4byte gUnk_02010148

	thumb_func_start sub_08D78A68
sub_08D78A68: @ 0x08D78A68
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_08D78A6A
sub_08D78A6A: @ 0x08D78A6A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08D78A4E
	.align 2, 0
_08D78A74:
	push {lr}
_08D78A76:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_08D78A4C
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_08D78A94
sub_08D78A94: @ 0x08D78A94
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08D78AAC
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08D78A74
_08D78AAC:
	b _08D78A04
	.align 2, 0

	thumb_func_start sub_08D78AB0
sub_08D78AB0: @ 0x08D78AB0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08D78AC2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08D78AC2:
	bx lr

	thumb_func_start sub_08D78AC4
sub_08D78AC4: @ 0x08D78AC4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08D78AD4
	adds r2, #1
	str r2, [r1, #0x40]
	b _08D78A76
_08D78AD4:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_08D78A68
	cmp ip, r3
	bhs _08D78AE6
	b _08D78A76
_08D78AE6:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D78AF4
sub_08D78AF4: @ 0x08D78AF4
	mov ip, lr
	bl sub_08D78A68
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D78B00
sub_08D78B00: @ 0x08D78B00
	mov ip, lr
	bl sub_08D78A68
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_08D78B14
sub_08D78B14: @ 0x08D78B14
	mov ip, lr
	bl sub_08D78A68
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D78B28
sub_08D78B28: @ 0x08D78B28
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
	bl _08D78A4E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08D78A4E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08D78A4E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D78B58
sub_08D78B58: @ 0x08D78B58
	mov ip, lr
	bl sub_08D78A68
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D78B6C
sub_08D78B6C: @ 0x08D78B6C
	mov ip, lr
	bl sub_08D78A68
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08D78B80
sub_08D78B80: @ 0x08D78B80
	mov ip, lr
	bl sub_08D78A68
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08D78B94
sub_08D78B94: @ 0x08D78B94
	mov ip, lr
	bl sub_08D78A68
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D78BA8
sub_08D78BA8: @ 0x08D78BA8
	mov ip, lr
	bl sub_08D78A68
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_08D78BB4
sub_08D78BB4: @ 0x08D78BB4
	mov ip, lr
	bl sub_08D78A68
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08D78BCA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08D78BCA:
	bx ip

	thumb_func_start sub_08D78BCC
sub_08D78BCC: @ 0x08D78BCC
	mov ip, lr
	bl sub_08D78A68
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08D78BE0
sub_08D78BE0: @ 0x08D78BE0
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08D78BF4 @ =0x04000060
	adds r0, r0, r3
	bl sub_08D78A6A

	thumb_func_start sub_08D78BF0
sub_08D78BF0: @ 0x08D78BF0
	strb r3, [r0]
	bx ip
	.align 2, 0
_08D78BF4: .4byte 0x04000060

	thumb_func_start sub_08D78BF8
sub_08D78BF8: @ 0x08D78BF8
	ldr r0, _08D78EA4 @ =gUnk_03007FF0
	ldr r0, [r0]
	ldr r2, _08D78EA8 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08D78C38
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08D78C38
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08D78C3C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08D78C1E
	ldr r1, _08D78C40 @ =0x84400004
	str r1, [r2, #8]
_08D78C1E:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08D78C28
	ldr r1, _08D78C40 @ =0x84400004
	str r1, [r2, #0x14]
_08D78C28:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08D78C38:
	bx lr
	.align 2, 0
_08D78C3C: .4byte 0x040000BC
_08D78C40: .4byte 0x84400004

	thumb_func_start sub_08D78C44
sub_08D78C44: @ 0x08D78C44
	ldr r2, _08D78EA8 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08D78C4E
	bx lr
_08D78C4E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08D78C60
	ldr r0, [r0, #0x3c]
	bl sub_08D78E9C
_08D78C60:
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
	bge _08D78C78
	b _08D78E8C
_08D78C78:
	ldr r0, _08D78EA4 @ =gUnk_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_08D79B30
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08D78C8C
	b _08D78E8C
_08D78C8C:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08D78DDC
_08D78C94:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08D78C9C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08D78CA6
	b _08D78DB8
_08D78CA6:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D78CDA
_08D78CB2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D78CCE
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08D78CD4
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08D78CD4
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08D78CD4
_08D78CCE:
	adds r0, r4, #0
	bl sub_08D7962C
_08D78CD4:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D78CB2
_08D78CDA:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08D78D58
	adds r0, r5, #0
	bl sub_08D79640
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
	b _08D78D58
_08D78D00:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08D78D0C
	ldrb r1, [r5, #7]
	b _08D78D16
_08D78D0C:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08D78D16
	strb r1, [r5, #7]
_08D78D16:
	cmp r1, #0xcf
	blo _08D78D2C
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08D78E9C
	b _08D78D58
_08D78D2C:
	cmp r1, #0xb0
	bls _08D78D4E
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08D78E9C
	ldrb r0, [r5]
	cmp r0, #0
	beq _08D78DB4
	b _08D78D58
_08D78D4E:
	ldr r0, _08D78EA0 @ =gUnk_020103BC
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08D78D58:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08D78D00
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08D78DB4
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08D78DB4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08D78D7A
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08D78DB4
_08D78D7A:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08D78D8E
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08D78D92
_08D78D8E:
	movs r0, #0x80
	subs r2, r0, r1
_08D78D92:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08D78DB4
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08D78DAE
	movs r1, #0xc
	b _08D78DB0
_08D78DAE:
	movs r1, #3
_08D78DB0:
	orrs r0, r1
	strb r0, [r5]
_08D78DB4:
	mov r3, sl
	mov r4, fp
_08D78DB8:
	subs r6, #1
	ble _08D78DC4
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08D78C9C
_08D78DC4:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08D78DD6
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08D78E8C
_08D78DD6:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08D78DDC:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08D78DE4
	b _08D78C94
_08D78DE4:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08D78DE8:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08D78E82
	movs r1, #0xf
	tst r1, r0
	beq _08D78E82
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08D79BF8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D78E78
_08D78E06:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08D78E16
	adds r0, r4, #0
	bl sub_08D7962C
	b _08D78E72
_08D78E16:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08D78E34
	bl sub_08D78EF0
	cmp r6, #0
	beq _08D78E34
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08D78E34:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08D78E72
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08D78E48
	movs r2, #0
_08D78E48:
	cmp r6, #0
	beq _08D78E66
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_08D78E9C
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08D78E72
_08D78E66:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_08D791B0
	str r0, [r4, #0x20]
_08D78E72:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D78E06
_08D78E78:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08D78E82:
	subs r2, #1
	ble _08D78E8C
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08D78DE8
_08D78E8C:
	ldr r0, _08D78EA8 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_08D78E9C
sub_08D78E9C: @ 0x08D78E9C
	bx r3
	.align 2, 0
_08D78EA0: .4byte gUnk_020103BC
_08D78EA4: .4byte gUnk_03007FF0
_08D78EA8: .4byte 0x68736D53

	thumb_func_start sub_08D78EAC
sub_08D78EAC: @ 0x08D78EAC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08D78EE4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08D78EE2
	movs r6, #0
_08D78EC0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08D78EDA
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08D78ED8
	ldr r3, _08D78EEC @ =gUnk_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_08D78E9C
_08D78ED8:
	strb r6, [r4]
_08D78EDA:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08D78EC0
_08D78EE2:
	str r4, [r5, #0x20]
_08D78EE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D78EEC: .4byte gUnk_03007FF0

	thumb_func_start sub_08D78EF0
sub_08D78EF0: @ 0x08D78EF0
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
	bls _08D78F08
	movs r0, #0xff
_08D78F08:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08D78F1C
	movs r0, #0xff
_08D78F1C:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_08D78F20
sub_08D78F20: @ 0x08D78F20
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08D79118 @ =gUnk_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08D7911C @ =gUnk_020103BC
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08D78F66
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08D78F64
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08D78F64
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08D78F64:
	str r3, [r5, #0x40]
_08D78F66:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08D78FB8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08D78F86
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08D78F88
_08D78F86:
	adds r0, r3, #0
_08D78F88:
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
	beq _08D78FA0
	b _08D79106
_08D78FA0:
	movs r0, #0x80
	tst r0, r2
	beq _08D78FBC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08D78FB4
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08D78FB4:
	ldrb r3, [r6, #1]
	b _08D78FBC
_08D78FB8:
	mov sb, r4
	ldrb r3, [r5, #5]
_08D78FBC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08D78FCC
	movs r0, #0xff
_08D78FCC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08D7900C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08D78FE4
	b _08D79106
_08D78FE4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D79060
	movs r0, #0x40
	tst r0, r1
	bne _08D79060
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08D79060
	beq _08D79004
	b _08D79106
_08D79004:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08D79060
	b _08D79106
_08D7900C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08D7901A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08D79060
	movs r0, #0x40
	tst r0, r1
	beq _08D79034
	cmp r2, #0
	bne _08D79038
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08D79052
_08D79034:
	cmp r2, #0
	bne _08D79054
_08D79038:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08D79044
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08D79052
_08D79044:
	bhi _08D79054
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08D79050
	adds r7, r0, #0
	b _08D79052
_08D79050:
	blo _08D79054
_08D79052:
	mov r8, r4
_08D79054:
	adds r4, #0x40
	subs r3, #1
	bgt _08D7901A
	mov r4, r8
	cmp r4, #0
	beq _08D79106
_08D79060:
	adds r0, r4, #0
	bl sub_08D7962C
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08D79074
	str r4, [r3, #0x30]
_08D79074:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08D79086
	adds r1, r5, #0
	bl sub_08D79160
_08D79086:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_08D79BF8
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
	bl sub_08D78EF0
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08D790C0
	movs r3, #0
_08D790C0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08D790EE
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08D790DA
	movs r0, #0x70
	tst r0, r1
	bne _08D790DC
_08D790DA:
	movs r1, #8
_08D790DC:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_08D78E9C
	b _08D790F8
_08D790EE:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_08D791B0
_08D790F8:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08D79106:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08D79118: .4byte gUnk_03007FF0
_08D7911C: .4byte gUnk_020103BC

	thumb_func_start sub_08D79120
sub_08D79120: @ 0x08D79120
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08D79132
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08D79134
_08D79132:
	ldrb r3, [r1, #5]
_08D79134:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08D7915C
	movs r4, #0x83
	movs r5, #0x40
_08D7913E:
	ldrb r2, [r1]
	tst r2, r4
	beq _08D79156
	tst r2, r5
	bne _08D79156
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08D79156
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08D7915C
_08D79156:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08D7913E
_08D7915C:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_08D79160
sub_08D79160: @ 0x08D79160
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08D79170
	movs r2, #0xc
	b _08D79172
_08D79170:
	movs r2, #3
_08D79172:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7917C
sub_08D7917C: @ 0x08D7917C
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08D79188
sub_08D79188: @ 0x08D79188
	mov ip, lr
	bl sub_08D7917C
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08D79198
	bl sub_08D79160
_08D79198:
	bx ip
	.align 2, 0

	thumb_func_start sub_08D7919C
sub_08D7919C: @ 0x08D7919C
	mov ip, lr
	bl sub_08D7917C
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08D791AC
	bl sub_08D79160
_08D791AC:
	bx ip
	.align 2, 0
