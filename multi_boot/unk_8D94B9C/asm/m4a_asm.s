	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_020065E8
sub_020065E8: @ 0x020065E8
	add r2, pc, #0x0 @ =sub_020065EC
	bx r2

	arm_func_start sub_020065EC
sub_020065EC: @ 0x020065EC
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x020065F8
	ldr r0, _02006664 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _02006668 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _02006606
	bx lr
_02006606:
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
	beq _0200662A
	ldr r2, _02006670 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _02006628
	adds r2, #0xe4
_02006628:
	adds r1, r1, r2
_0200662A:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0200663A
	ldr r0, [r0, #0x24]
	bl sub_02006A1A
	ldr r0, [sp, #0x18]
_0200663A:
	ldr r3, [r0, #0x28]
	bl sub_02006A1A
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _02006674 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _0200665A
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_0200665A:
	str r5, [sp, #8]
	ldr r6, _02006678 @ =0x00000630
	ldr r3, _0200666C @ =gUnk_03000001
	bx r3
	.align 2, 0
_02006664: .4byte 0x03007FF0
_02006668: .4byte 0x68736D53
_0200666C: .4byte gUnk_03000001
_02006670: .4byte 0x04000006
_02006674: .4byte 0x00000350
_02006678: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x0200667C
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_020066DC
	add r1, pc, #0x4 @ =sub_02006688
	bx r1
	.align 2, 0

	arm_func_start sub_02006688
sub_02006688: @ 0x02006688
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_02006698:
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
	bgt _02006698
	add r0, pc, #0x2F @ =sub_0200670A
	bx r0

	thumb_func_start sub_020066DC
sub_020066DC: @ 0x020066DC
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _020066EA
	stm r5!, {r0}
	stm r6!, {r0}
_020066EA:
	lsrs r1, r1, #1
	blo _020066F6
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_020066F6:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _020066F6

	non_word_aligned_thumb_func_start sub_0200670A
sub_0200670A: @ 0x0200670A
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_02006714:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02006734
	ldr r1, _02006730 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _02006728
	adds r1, #0xe4
_02006728:
	cmp r1, r0
	blo _02006734
	b _02006A06
	.align 2, 0
_02006730: .4byte 0x04000006
_02006734:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0200673E
	b sub_020069FC
_0200673E:
	movs r0, #0x80
	tst r0, r6
	beq _0200676E
	movs r0, #0x40
	tst r0, r6
	bne _0200677E
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
	beq _020067C6
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _020067C6
_0200676E:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _02006784
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _020067D4
_0200677E:
	movs r0, #0
	strb r0, [r4]
	b sub_020069FC
_02006784:
	movs r0, #0x40
	tst r0, r6
	beq _020067A4
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _020067D4
_02006796:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0200677E
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _020067D4
_020067A4:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _020067C2
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _020067D4
	adds r5, r0, #0
	beq _02006796
	subs r6, #1
	strb r6, [r4]
	b _020067D4
_020067C2:
	cmp r2, #3
	bne _020067D4
_020067C6:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _020067D4
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_020067D4:
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
	beq _02006808
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_02006808:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_02006814
	bx r0
	.align 2, 0

	arm_func_start sub_02006814
sub_02006814: @ 0x02006814
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _02006954
_02006834:
	cmp r2, #4
	ble _020068A4
	subs r2, r2, r8
	movgt lr, #0
	bgt _02006860
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_02006860:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_02006868:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _02006868
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _02006860
	adds r8, r8, lr
	beq _020069E8
_020068A4:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_020068AC:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _0200691C
_020068D0:
	adds r5, r5, #0x40000000
	blo _020068AC
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _02006834
	b _020069E8
_020068EC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02006910
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_02006900:
	adds r2, r0, r2
	bgt _020069B8
	sub sb, sb, r0
	b _02006900
_02006910:
	pop {r4, ip}
	mov r2, #0
	b _0200692C
_0200691C:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _020068D0
_0200692C:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _020069F0
_02006954:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_02006970:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_02006978:
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
	beq _020069C4
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _020068EC
	subs sb, sb, #1
	addeq r0, r0, r1
_020069B8:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_020069C4:
	adds r5, r5, #0x40000000
	blo _02006978
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _02006970
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_020069E8:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_020069F0:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_020069FC
	bx r0

	thumb_func_start sub_020069FC
sub_020069FC: @ 0x020069FC
	ldr r0, [sp, #4]
	subs r0, #1
	ble _02006A06
	adds r4, #0x40
	b _02006714
_02006A06:
	ldr r0, [sp, #0x18]
	ldr r3, _02006A1C @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_02006A1A
sub_02006A1A: @ 0x02006A1A
	bx r3
	.align 2, 0
_02006A1C: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x02006A20
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
ClearChain: @ 0x02006A38
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _02006A56
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _02006A4A
	str r1, [r2, #0x34]
	b _02006A4C
_02006A4A:
	str r1, [r3, #0x20]
_02006A4C:
	cmp r1, #0
	beq _02006A52
	str r2, [r1, #0x30]
_02006A52:
	movs r1, #0
	str r1, [r0, #0x2c]
_02006A56:
	bx lr
_02006A58:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02006A7C
_02006A62:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _02006A70
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_02006A70:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02006A62
_02006A7C:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x02006A88
	mov ip, lr
	movs r1, #0x24
	ldr r2, _02006AB8 @ =gUnk_02010110
_02006A8E:
	ldr r3, [r2]
	bl _02006AA2
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _02006A8E
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x02006AA0
	ldrb r3, [r2]
_02006AA2:
	push {r0}
	lsrs r0, r2, #0x19
	bne _02006AB4
	ldr r0, _02006AB8 @ =gUnk_02010110
	cmp r2, r0
	blo _02006AB2
	lsrs r0, r2, #0xe
	beq _02006AB4
_02006AB2:
	movs r3, #0
_02006AB4:
	pop {r0}
	bx lr
	.align 2, 0
_02006AB8: .4byte gUnk_02010110

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x02006ABC
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_02006ABE
sub_02006ABE: @ 0x02006ABE
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _02006AA2
	.align 2, 0
_02006AC8:
	push {lr}
_02006ACA:
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
ply_patt: @ 0x02006AE8
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _02006B00
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _02006AC8
_02006B00:
	b _02006A58
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x02006B04
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _02006B16
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_02006B16:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x02006B18
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _02006B28
	adds r2, #1
	str r2, [r1, #0x40]
	b _02006ACA
_02006B28:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _02006B3A
	b _02006ACA
_02006B3A:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x02006B48
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x02006B54
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
ply_keysh: @ 0x02006B68
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
ply_voice: @ 0x02006B7C
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
	bl _02006AA2
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _02006AA2
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _02006AA2
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x02006BAC
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
ply_pan: @ 0x02006BC0
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
ply_bend: @ 0x02006BD4
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
ply_bendr: @ 0x02006BE8
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
ply_lfodl: @ 0x02006BFC
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x02006C08
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _02006C1E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_02006C1E:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x02006C20
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
ply_port: @ 0x02006C34
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _02006C48 @ =0x04000060
	adds r0, r0, r3
	bl sub_02006ABE

	thumb_func_start sub_2006C44
sub_2006C44: @ 0x02006C44
	strb r3, [r0]
	bx ip
	.align 2, 0
_02006C48: .4byte 0x04000060

	thumb_func_start SoundVSync_rev01
SoundVSync_rev01: @ 0x02006C4C
	ldr r0, _02006EF8 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _02006EFC @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _02006C8C
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _02006C8C
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _02006C90 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _02006C72
	ldr r1, _02006C94 @ =0x84400004
	str r1, [r2, #8]
_02006C72:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _02006C7C
	ldr r1, _02006C94 @ =0x84400004
	str r1, [r2, #0x14]
_02006C7C:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_02006C8C:
	bx lr
	.align 2, 0
_02006C90: .4byte 0x040000BC
_02006C94: .4byte 0x84400004

	thumb_func_start MPlayMain_rev01
MPlayMain_rev01: @ 0x02006C98
	ldr r2, _02006EFC @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _02006CA2
	bx lr
_02006CA2:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _02006CB4
	ldr r0, [r0, #0x3c]
	bl sub_02006EF0
_02006CB4:
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
	bge _02006CCC
	b _02006EE0
_02006CCC:
	ldr r0, _02006EF8 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _02006CE0
	b _02006EE0
_02006CE0:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _02006E30
_02006CE8:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_02006CF0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _02006CFA
	b _02006E0C
_02006CFA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02006D2E
_02006D06:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _02006D22
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02006D28
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _02006D28
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _02006D28
_02006D22:
	adds r0, r4, #0
	bl ClearChain_rev
_02006D28:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02006D06
_02006D2E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _02006DAC
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
	b _02006DAC
_02006D54:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _02006D60
	ldrb r1, [r5, #7]
	b _02006D6A
_02006D60:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _02006D6A
	strb r1, [r5, #7]
_02006D6A:
	cmp r1, #0xcf
	blo _02006D80
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_02006EF0
	b _02006DAC
_02006D80:
	cmp r1, #0xb0
	bls _02006DA2
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_02006EF0
	ldrb r0, [r5]
	cmp r0, #0
	beq _02006E08
	b _02006DAC
_02006DA2:
	ldr r0, _02006EF4 @ =gUnk_02010384
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_02006DAC:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02006D54
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _02006E08
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _02006E08
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _02006DCE
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _02006E08
_02006DCE:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _02006DE2
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _02006DE6
_02006DE2:
	movs r0, #0x80
	subs r2, r0, r1
_02006DE6:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _02006E08
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _02006E02
	movs r1, #0xc
	b _02006E04
_02006E02:
	movs r1, #3
_02006E04:
	orrs r0, r1
	strb r0, [r5]
_02006E08:
	mov r3, sl
	mov r4, fp
_02006E0C:
	subs r6, #1
	ble _02006E18
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _02006CF0
_02006E18:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _02006E2A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _02006EE0
_02006E2A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_02006E30:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _02006E38
	b _02006CE8
_02006E38:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_02006E3C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _02006ED6
	movs r1, #0xf
	tst r1, r0
	beq _02006ED6
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02006ECC
_02006E5A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _02006E6A
	adds r0, r4, #0
	bl ClearChain_rev
	b _02006EC6
_02006E6A:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _02006E88
	bl ChnVolSetAsm
	cmp r6, #0
	beq _02006E88
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_02006E88:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _02006EC6
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _02006E9C
	movs r2, #0
_02006E9C:
	cmp r6, #0
	beq _02006EBA
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_02006EF0
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _02006EC6
_02006EBA:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_02006EC6:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02006E5A
_02006ECC:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_02006ED6:
	subs r2, #1
	ble _02006EE0
	movs r0, #0x50
	adds r5, r5, r0
	bgt _02006E3C
_02006EE0:
	ldr r0, _02006EFC @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_02006EF0
sub_02006EF0: @ 0x02006EF0
	bx r3
	.align 2, 0
_02006EF4: .4byte gUnk_02010384
_02006EF8: .4byte 0x03007FF0
_02006EFC: .4byte 0x68736D53

	thumb_func_start TrackStop_rev01
TrackStop_rev01: @ 0x02006F00
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _02006F38
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02006F36
	movs r6, #0
_02006F14:
	ldrb r0, [r4]
	cmp r0, #0
	beq _02006F2E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _02006F2C
	ldr r3, _02006F40 @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_02006EF0
_02006F2C:
	strb r6, [r4]
_02006F2E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02006F14
_02006F36:
	str r4, [r5, #0x20]
_02006F38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02006F40: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x02006F44
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
	bls _02006F5C
	movs r0, #0xff
_02006F5C:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _02006F70
	movs r0, #0xff
_02006F70:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note_rev01
ply_note_rev01: @ 0x02006F74
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0200716C @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _02007170 @ =gUnk_02010384
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02006FBA
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02006FB8
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02006FB8
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_02006FB8:
	str r3, [r5, #0x40]
_02006FBA:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _0200700C
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _02006FDA
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _02006FDC
_02006FDA:
	adds r0, r3, #0
_02006FDC:
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
	beq _02006FF4
	b _0200715A
_02006FF4:
	movs r0, #0x80
	tst r0, r2
	beq _02007010
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _02007008
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_02007008:
	ldrb r3, [r6, #1]
	b _02007010
_0200700C:
	mov sb, r4
	ldrb r3, [r5, #5]
_02007010:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _02007020
	movs r0, #0xff
_02007020:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _02007060
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _02007038
	b _0200715A
_02007038:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _020070B4
	movs r0, #0x40
	tst r0, r1
	bne _020070B4
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _020070B4
	beq _02007058
	b _0200715A
_02007058:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _020070B4
	b _0200715A
_02007060:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0200706E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _020070B4
	movs r0, #0x40
	tst r0, r1
	beq _02007088
	cmp r2, #0
	bne _0200708C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _020070A6
_02007088:
	cmp r2, #0
	bne _020070A8
_0200708C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _02007098
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _020070A6
_02007098:
	bhi _020070A8
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _020070A4
	adds r7, r0, #0
	b _020070A6
_020070A4:
	blo _020070A8
_020070A6:
	mov r8, r4
_020070A8:
	adds r4, #0x40
	subs r3, #1
	bgt _0200706E
	mov r4, r8
	cmp r4, #0
	beq _0200715A
_020070B4:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _020070C8
	str r4, [r3, #0x30]
_020070C8:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _020070DA
	adds r1, r5, #0
	bl clear_modM
_020070DA:
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
	bpl _02007114
	movs r3, #0
_02007114:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _02007142
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0200712E
	movs r0, #0x70
	tst r0, r1
	bne _02007130
_0200712E:
	movs r1, #8
_02007130:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_02006EF0
	b _0200714C
_02007142:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_0200714C:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0200715A:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0200716C: .4byte 0x03007FF0
_02007170: .4byte gUnk_02010384

	thumb_func_start ply_endtie_rev01
ply_endtie_rev01: @ 0x02007174
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _02007186
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _02007188
_02007186:
	ldrb r3, [r1, #5]
_02007188:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _020071B0
	movs r4, #0x83
	movs r5, #0x40
_02007192:
	ldrb r2, [r1]
	tst r2, r4
	beq _020071AA
	tst r2, r5
	bne _020071AA
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _020071AA
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _020071B0
_020071AA:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _02007192
_020071B0:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x020071B4
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _020071C4
	movs r2, #0xc
	b _020071C6
_020071C4:
	movs r2, #3
_020071C6:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x020071D0
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos_rev01
ply_lfos_rev01: @ 0x020071DC
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _020071EC
	bl clear_modM
_020071EC:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod_rev01
ply_mod_rev01: @ 0x020071F0
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _02007200
	bl clear_modM
_02007200:
	bx ip
	.align 2, 0
