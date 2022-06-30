	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_020076C0
sub_020076C0: @ 0x020076C0
	add r2, pc, #0x0 @ =sub_020076C4
	bx r2

	arm_func_start sub_020076C4
sub_020076C4: @ 0x020076C4
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x020076D0
	ldr r0, _0200773C @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _02007740 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _020076DE
	bx lr
_020076DE:
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
	beq _02007702
	ldr r2, _02007748 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _02007700
	adds r2, #0xe4
_02007700:
	adds r1, r1, r2
_02007702:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _02007712
	ldr r0, [r0, #0x24]
	bl sub_02007AF2
	ldr r0, [sp, #0x18]
_02007712:
	ldr r3, [r0, #0x28]
	bl sub_02007AF2
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _0200774C @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _02007732
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_02007732:
	str r5, [sp, #8]
	ldr r6, _02007750 @ =0x00000630
	ldr r3, _02007744 @ =gUnk_03000001
	bx r3
	.align 2, 0
_0200773C: .4byte 0x03007FF0
_02007740: .4byte 0x68736D53
_02007744: .4byte gUnk_03000001
_02007748: .4byte 0x04000006
_0200774C: .4byte 0x00000350
_02007750: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x02007754
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_020077B4
	add r1, pc, #0x4 @ =sub_02007760
	bx r1
	.align 2, 0

	arm_func_start sub_02007760
sub_02007760: @ 0x02007760
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_02007770:
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
	bgt _02007770
	add r0, pc, #0x2F @ =sub_020077E2
	bx r0

	thumb_func_start sub_020077B4
sub_020077B4: @ 0x020077B4
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _020077C2
	stm r5!, {r0}
	stm r6!, {r0}
_020077C2:
	lsrs r1, r1, #1
	blo _020077CE
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_020077CE:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _020077CE

	non_word_aligned_thumb_func_start sub_020077E2
sub_020077E2: @ 0x020077E2
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_020077EC:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0200780C
	ldr r1, _02007808 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _02007800
	adds r1, #0xe4
_02007800:
	cmp r1, r0
	blo _0200780C
	b _02007ADE
	.align 2, 0
_02007808: .4byte 0x04000006
_0200780C:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _02007816
	b sub_02007AD4
_02007816:
	movs r0, #0x80
	tst r0, r6
	beq _02007846
	movs r0, #0x40
	tst r0, r6
	bne _02007856
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
	beq _0200789E
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0200789E
_02007846:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _0200785C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _020078AC
_02007856:
	movs r0, #0
	strb r0, [r4]
	b sub_02007AD4
_0200785C:
	movs r0, #0x40
	tst r0, r6
	beq _0200787C
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _020078AC
_0200786E:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _02007856
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _020078AC
_0200787C:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0200789A
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _020078AC
	adds r5, r0, #0
	beq _0200786E
	subs r6, #1
	strb r6, [r4]
	b _020078AC
_0200789A:
	cmp r2, #3
	bne _020078AC
_0200789E:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _020078AC
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_020078AC:
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
	beq _020078E0
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_020078E0:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_020078EC
	bx r0
	.align 2, 0

	arm_func_start sub_020078EC
sub_020078EC: @ 0x020078EC
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _02007A2C
_0200790C:
	cmp r2, #4
	ble _0200797C
	subs r2, r2, r8
	movgt lr, #0
	bgt _02007938
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_02007938:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_02007940:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _02007940
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _02007938
	adds r8, r8, lr
	beq _02007AC0
_0200797C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_02007984:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _020079F4
_020079A8:
	adds r5, r5, #0x40000000
	blo _02007984
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0200790C
	b _02007AC0
_020079C4:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _020079E8
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_020079D8:
	adds r2, r0, r2
	bgt _02007A90
	sub sb, sb, r0
	b _020079D8
_020079E8:
	pop {r4, ip}
	mov r2, #0
	b _02007A04
_020079F4:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _020079A8
_02007A04:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _02007AC8
_02007A2C:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_02007A48:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_02007A50:
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
	beq _02007A9C
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _020079C4
	subs sb, sb, #1
	addeq r0, r0, r1
_02007A90:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_02007A9C:
	adds r5, r5, #0x40000000
	blo _02007A50
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _02007A48
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_02007AC0:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_02007AC8:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_02007AD4
	bx r0

	thumb_func_start sub_02007AD4
sub_02007AD4: @ 0x02007AD4
	ldr r0, [sp, #4]
	subs r0, #1
	ble _02007ADE
	adds r4, #0x40
	b _020077EC
_02007ADE:
	ldr r0, [sp, #0x18]
	ldr r3, _02007AF4 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_02007AF2
sub_02007AF2: @ 0x02007AF2
	bx r3
	.align 2, 0
_02007AF4: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x02007AF8
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

	thumb_func_start ClearChain
ClearChain: @ 0x02007B10
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _02007B2E
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _02007B22
	str r1, [r2, #0x34]
	b _02007B24
_02007B22:
	str r1, [r3, #0x20]
_02007B24:
	cmp r1, #0
	beq _02007B2A
	str r2, [r1, #0x30]
_02007B2A:
	movs r1, #0
	str r1, [r0, #0x2c]
_02007B2E:
	bx lr
_02007B30:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02007B54
_02007B3A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _02007B48
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_02007B48:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02007B3A
_02007B54:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x02007B60
	mov ip, lr
	movs r1, #0x24
	ldr r2, _02007B90 @ =gUnk_02014348
_02007B66:
	ldr r3, [r2]
	bl _02007B7A
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _02007B66
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x02007B78
	ldrb r3, [r2]
_02007B7A:
	push {r0}
	lsrs r0, r2, #0x19
	bne _02007B8C
	ldr r0, _02007B90 @ =gUnk_02014348
	cmp r2, r0
	blo _02007B8A
	lsrs r0, r2, #0xe
	beq _02007B8C
_02007B8A:
	movs r3, #0
_02007B8C:
	pop {r0}
	bx lr
	.align 2, 0
_02007B90: .4byte gUnk_02014348

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x02007B94
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_02007B96
sub_02007B96: @ 0x02007B96
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _02007B7A
	.align 2, 0
_02007BA0:
	push {lr}
_02007BA2:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x02007BC0
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _02007BD8
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _02007BA0
_02007BD8:
	b _02007B30
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x02007BDC
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _02007BEE
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_02007BEE:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x02007BF0
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _02007C00
	adds r2, #1
	str r2, [r1, #0x40]
	b _02007BA2
_02007C00:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _02007C12
	b _02007BA2
_02007C12:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x02007C20
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x02007C2C
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x02007C40
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x02007C54
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
	bl _02007B7A
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _02007B7A
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _02007B7A
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x02007C84
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x02007C98
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x02007CAC
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x02007CC0
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x02007CD4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x02007CE0
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _02007CF6
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_02007CF6:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x02007CF8
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x02007D0C
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _02007D20 @ =0x04000060
	adds r0, r0, r3
	bl sub_02007B96

	thumb_func_start sub_02007D1C
sub_02007D1C: @ 0x02007D1C
	strb r3, [r0]
	bx ip
	.align 2, 0
_02007D20: .4byte 0x04000060

	thumb_func_start SoundVSync_rev01
SoundVSync_rev01: @ 0x02007D24
	ldr r0, _02007FD0 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _02007FD4 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _02007D64
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _02007D64
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _02007D68 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _02007D4A
	ldr r1, _02007D6C @ =0x84400004
	str r1, [r2, #8]
_02007D4A:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _02007D54
	ldr r1, _02007D6C @ =0x84400004
	str r1, [r2, #0x14]
_02007D54:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_02007D64:
	bx lr
	.align 2, 0
_02007D68: .4byte 0x040000BC
_02007D6C: .4byte 0x84400004

	thumb_func_start MPlayMain_rev01
MPlayMain_rev01: @ 0x02007D70
	ldr r2, _02007FD4 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _02007D7A
	bx lr
_02007D7A:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _02007D8C
	ldr r0, [r0, #0x3c]
	bl sub_02007FC8
_02007D8C:
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
	bge _02007DA4
	b _02007FB8
_02007DA4:
	ldr r0, _02007FD0 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _02007DB8
	b _02007FB8
_02007DB8:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _02007F08
_02007DC0:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_02007DC8:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _02007DD2
	b _02007EE4
_02007DD2:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02007E06
_02007DDE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _02007DFA
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02007E00
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _02007E00
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _02007E00
_02007DFA:
	adds r0, r4, #0
	bl ClearChain_rev
_02007E00:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02007DDE
_02007E06:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _02007E84
	adds r0, r5, #0
	bl Clear64byte_rev
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
	b _02007E84
_02007E2C:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _02007E38
	ldrb r1, [r5, #7]
	b _02007E42
_02007E38:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _02007E42
	strb r1, [r5, #7]
_02007E42:
	cmp r1, #0xcf
	blo _02007E58
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_02007FC8
	b _02007E84
_02007E58:
	cmp r1, #0xb0
	bls _02007E7A
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_02007FC8
	ldrb r0, [r5]
	cmp r0, #0
	beq _02007EE0
	b _02007E84
_02007E7A:
	ldr r0, _02007FCC @ =gUnk_020145BC
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_02007E84:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02007E2C
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _02007EE0
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _02007EE0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _02007EA6
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _02007EE0
_02007EA6:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _02007EBA
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _02007EBE
_02007EBA:
	movs r0, #0x80
	subs r2, r0, r1
_02007EBE:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _02007EE0
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _02007EDA
	movs r1, #0xc
	b _02007EDC
_02007EDA:
	movs r1, #3
_02007EDC:
	orrs r0, r1
	strb r0, [r5]
_02007EE0:
	mov r3, sl
	mov r4, fp
_02007EE4:
	subs r6, #1
	ble _02007EF0
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _02007DC8
_02007EF0:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _02007F02
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _02007FB8
_02007F02:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_02007F08:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _02007F10
	b _02007DC0
_02007F10:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_02007F14:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _02007FAE
	movs r1, #0xf
	tst r1, r0
	beq _02007FAE
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02007FA4
_02007F32:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _02007F42
	adds r0, r4, #0
	bl ClearChain_rev
	b _02007F9E
_02007F42:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _02007F60
	bl ChnVolSetAsm
	cmp r6, #0
	beq _02007F60
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_02007F60:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _02007F9E
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _02007F74
	movs r2, #0
_02007F74:
	cmp r6, #0
	beq _02007F92
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_02007FC8
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _02007F9E
_02007F92:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_02007F9E:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02007F32
_02007FA4:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_02007FAE:
	subs r2, #1
	ble _02007FB8
	movs r0, #0x50
	adds r5, r5, r0
	bgt _02007F14
_02007FB8:
	ldr r0, _02007FD4 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_02007FC8
sub_02007FC8: @ 0x02007FC8
	bx r3
	.align 2, 0
_02007FCC: .4byte gUnk_020145BC
_02007FD0: .4byte 0x03007FF0
_02007FD4: .4byte 0x68736D53

	thumb_func_start TrackStop_rev01
TrackStop_rev01: @ 0x02007FD8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _02008010
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0200800E
	movs r6, #0
_02007FEC:
	ldrb r0, [r4]
	cmp r0, #0
	beq _02008006
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _02008004
	ldr r3, _02008018 @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_02007FC8
_02008004:
	strb r6, [r4]
_02008006:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02007FEC
_0200800E:
	str r4, [r5, #0x20]
_02008010:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02008018: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x0200801C
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
	bls _02008034
	movs r0, #0xff
_02008034:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _02008048
	movs r0, #0xff
_02008048:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note_rev01
ply_note_rev01: @ 0x0200804C
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _02008244 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _02008248 @ =gUnk_020145BC
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02008092
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02008090
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02008090
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_02008090:
	str r3, [r5, #0x40]
_02008092:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _020080E4
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _020080B2
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _020080B4
_020080B2:
	adds r0, r3, #0
_020080B4:
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
	beq _020080CC
	b _02008232
_020080CC:
	movs r0, #0x80
	tst r0, r2
	beq _020080E8
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _020080E0
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_020080E0:
	ldrb r3, [r6, #1]
	b _020080E8
_020080E4:
	mov sb, r4
	ldrb r3, [r5, #5]
_020080E8:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _020080F8
	movs r0, #0xff
_020080F8:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _02008138
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _02008110
	b _02008232
_02008110:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0200818C
	movs r0, #0x40
	tst r0, r1
	bne _0200818C
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _0200818C
	beq _02008130
	b _02008232
_02008130:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _0200818C
	b _02008232
_02008138:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_02008146:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0200818C
	movs r0, #0x40
	tst r0, r1
	beq _02008160
	cmp r2, #0
	bne _02008164
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _0200817E
_02008160:
	cmp r2, #0
	bne _02008180
_02008164:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _02008170
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _0200817E
_02008170:
	bhi _02008180
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _0200817C
	adds r7, r0, #0
	b _0200817E
_0200817C:
	blo _02008180
_0200817E:
	mov r8, r4
_02008180:
	adds r4, #0x40
	subs r3, #1
	bgt _02008146
	mov r4, r8
	cmp r4, #0
	beq _02008232
_0200818C:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _020081A0
	str r4, [r3, #0x30]
_020081A0:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _020081B2
	adds r1, r5, #0
	bl clear_modM
_020081B2:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
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
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _020081EC
	movs r3, #0
_020081EC:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0200821A
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _02008206
	movs r0, #0x70
	tst r0, r1
	bne _02008208
_02008206:
	movs r1, #8
_02008208:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_02007FC8
	b _02008224
_0200821A:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_02008224:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_02008232:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_02008244: .4byte 0x03007FF0
_02008248: .4byte gUnk_020145BC

	thumb_func_start ply_endtie_rev01
ply_endtie_rev01: @ 0x0200824C
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _0200825E
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _02008260
_0200825E:
	ldrb r3, [r1, #5]
_02008260:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _02008288
	movs r4, #0x83
	movs r5, #0x40
_0200826A:
	ldrb r2, [r1]
	tst r2, r4
	beq _02008282
	tst r2, r5
	bne _02008282
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _02008282
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _02008288
_02008282:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _0200826A
_02008288:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x0200828C
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _0200829C
	movs r2, #0xc
	b _0200829E
_0200829C:
	movs r2, #3
_0200829E:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x020082A8
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos_rev01
ply_lfos_rev01: @ 0x020082B4
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _020082C4
	bl clear_modM
_020082C4:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod_rev01
ply_mod_rev01: @ 0x020082C8
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _020082D8
	bl clear_modM
_020082D8:
	bx ip
	.align 2, 0
