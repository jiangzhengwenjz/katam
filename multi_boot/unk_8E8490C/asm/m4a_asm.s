	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_02007D68
sub_02007D68: @ 0x02007D68
	add r2, pc, #0x0 @ =sub_02007D6C
	bx r2

	arm_func_start sub_02007D6C
sub_02007D6C: @ 0x02007D6C
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x02007D78
	ldr r0, _02007DE4 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _02007DE8 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _02007D86
	bx lr
_02007D86:
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
	beq _02007DAA
	ldr r2, _02007DF0 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _02007DA8
	adds r2, #0xe4
_02007DA8:
	adds r1, r1, r2
_02007DAA:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _02007DBA
	ldr r0, [r0, #0x24]
	bl sub_0200819A
	ldr r0, [sp, #0x18]
_02007DBA:
	ldr r3, [r0, #0x28]
	bl sub_0200819A
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _02007DF4 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _02007DDA
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_02007DDA:
	str r5, [sp, #8]
	ldr r6, _02007DF8 @ =0x00000630
	ldr r3, _02007DEC @ =gUnk_03000641
	bx r3
	.align 2, 0
_02007DE4: .4byte 0x03007FF0
_02007DE8: .4byte 0x68736D53
_02007DEC: .4byte gUnk_03000641
_02007DF0: .4byte 0x04000006
_02007DF4: .4byte 0x00000350
_02007DF8: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x02007DFC
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_02007E5C
	add r1, pc, #0x4 @ =sub_02007E08
	bx r1
	.align 2, 0

	arm_func_start sub_02007E08
sub_02007E08: @ 0x02007E08
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_02007E18:
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
	bgt _02007E18
	add r0, pc, #0x2F @ =sub_02007E8A
	bx r0

	thumb_func_start sub_02007E5C
sub_02007E5C: @ 0x02007E5C
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _02007E6A
	stm r5!, {r0}
	stm r6!, {r0}
_02007E6A:
	lsrs r1, r1, #1
	blo _02007E76
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_02007E76:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _02007E76

	non_word_aligned_thumb_func_start sub_02007E8A
sub_02007E8A: @ 0x02007E8A
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_02007E94:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02007EB4
	ldr r1, _02007EB0 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _02007EA8
	adds r1, #0xe4
_02007EA8:
	cmp r1, r0
	blo _02007EB4
	b _02008186
	.align 2, 0
_02007EB0: .4byte 0x04000006
_02007EB4:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _02007EBE
	b sub_0200817C
_02007EBE:
	movs r0, #0x80
	tst r0, r6
	beq _02007EEE
	movs r0, #0x40
	tst r0, r6
	bne _02007EFE
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
	beq _02007F46
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _02007F46
_02007EEE:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _02007F04
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _02007F54
_02007EFE:
	movs r0, #0
	strb r0, [r4]
	b sub_0200817C
_02007F04:
	movs r0, #0x40
	tst r0, r6
	beq _02007F24
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _02007F54
_02007F16:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _02007EFE
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _02007F54
_02007F24:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _02007F42
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _02007F54
	adds r5, r0, #0
	beq _02007F16
	subs r6, #1
	strb r6, [r4]
	b _02007F54
_02007F42:
	cmp r2, #3
	bne _02007F54
_02007F46:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _02007F54
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_02007F54:
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
	beq _02007F88
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_02007F88:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_02007F94
	bx r0
	.align 2, 0

	arm_func_start sub_02007F94
sub_02007F94: @ 0x02007F94
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _020080D4
_02007FB4:
	cmp r2, #4
	ble _02008024
	subs r2, r2, r8
	movgt lr, #0
	bgt _02007FE0
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_02007FE0:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_02007FE8:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _02007FE8
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _02007FE0
	adds r8, r8, lr
	beq _02008168
_02008024:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0200802C:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _0200809C
_02008050:
	adds r5, r5, #0x40000000
	blo _0200802C
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _02007FB4
	b _02008168
_0200806C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02008090
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_02008080:
	adds r2, r0, r2
	bgt _02008138
	sub sb, sb, r0
	b _02008080
_02008090:
	pop {r4, ip}
	mov r2, #0
	b _020080AC
_0200809C:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _02008050
_020080AC:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _02008170
_020080D4:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_020080F0:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_020080F8:
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
	beq _02008144
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _0200806C
	subs sb, sb, #1
	addeq r0, r0, r1
_02008138:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_02008144:
	adds r5, r5, #0x40000000
	blo _020080F8
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _020080F0
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_02008168:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_02008170:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_0200817C
	bx r0

	thumb_func_start sub_0200817C
sub_0200817C: @ 0x0200817C
	ldr r0, [sp, #4]
	subs r0, #1
	ble _02008186
	adds r4, #0x40
	b _02007E94
_02008186:
	ldr r0, [sp, #0x18]
	ldr r3, _0200819C @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_0200819A
sub_0200819A: @ 0x0200819A
	bx r3
	.align 2, 0
_0200819C: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x020081A0
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
ClearChain: @ 0x020081B8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _020081D6
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _020081CA
	str r1, [r2, #0x34]
	b _020081CC
_020081CA:
	str r1, [r3, #0x20]
_020081CC:
	cmp r1, #0
	beq _020081D2
	str r2, [r1, #0x30]
_020081D2:
	movs r1, #0
	str r1, [r0, #0x2c]
_020081D6:
	bx lr
_020081D8:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _020081FC
_020081E2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _020081F0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_020081F0:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _020081E2
_020081FC:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x02008208
	mov ip, lr
	movs r1, #0x24
	ldr r2, _02008238 @ =gUnk_02019EE4
_0200820E:
	ldr r3, [r2]
	bl _02008222
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0200820E
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x02008220
	ldrb r3, [r2]
_02008222:
	push {r0}
	lsrs r0, r2, #0x19
	bne _02008234
	ldr r0, _02008238 @ =gUnk_02019EE4
	cmp r2, r0
	blo _02008232
	lsrs r0, r2, #0xe
	beq _02008234
_02008232:
	movs r3, #0
_02008234:
	pop {r0}
	bx lr
	.align 2, 0
_02008238: .4byte gUnk_02019EE4

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x0200823C
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_0200823E
sub_0200823E: @ 0x0200823E
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _02008222
	.align 2, 0
_02008248:
	push {lr}
_0200824A:
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
ply_patt: @ 0x02008268
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _02008280
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _02008248
_02008280:
	b _020081D8
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x02008284
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _02008296
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_02008296:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x02008298
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _020082A8
	adds r2, #1
	str r2, [r1, #0x40]
	b _0200824A
_020082A8:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _020082BA
	b _0200824A
_020082BA:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x020082C8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x020082D4
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
ply_keysh: @ 0x020082E8
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
ply_voice: @ 0x020082FC
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
	bl _02008222
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _02008222
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _02008222
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x0200832C
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
ply_pan: @ 0x02008340
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
ply_bend: @ 0x02008354
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
ply_bendr: @ 0x02008368
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
ply_lfodl: @ 0x0200837C
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x02008388
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0200839E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0200839E:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x020083A0
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
ply_port: @ 0x020083B4
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _020083C8 @ =0x04000060
	adds r0, r0, r3
	bl sub_0200823E

	thumb_func_start sub_020083C4
sub_020083C4: @ 0x020083C4
	strb r3, [r0]
	bx ip
	.align 2, 0
_020083C8: .4byte 0x04000060

	thumb_func_start SoundVSync_rev01
SoundVSync_rev01: @ 0x020083CC
	ldr r0, _02008678 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _0200867C @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _0200840C
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _0200840C
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _02008410 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _020083F2
	ldr r1, _02008414 @ =0x84400004
	str r1, [r2, #8]
_020083F2:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _020083FC
	ldr r1, _02008414 @ =0x84400004
	str r1, [r2, #0x14]
_020083FC:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_0200840C:
	bx lr
	.align 2, 0
_02008410: .4byte 0x040000BC
_02008414: .4byte 0x84400004

	thumb_func_start MPlayMain_rev01
MPlayMain_rev01: @ 0x02008418
	ldr r2, _0200867C @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _02008422
	bx lr
_02008422:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _02008434
	ldr r0, [r0, #0x3c]
	bl sub_02008670
_02008434:
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
	bge _0200844C
	b _02008660
_0200844C:
	ldr r0, _02008678 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _02008460
	b _02008660
_02008460:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _020085B0
_02008468:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_02008470:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _0200847A
	b _0200858C
_0200847A:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _020084AE
_02008486:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _020084A2
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _020084A8
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _020084A8
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _020084A8
_020084A2:
	adds r0, r4, #0
	bl ClearChain_rev
_020084A8:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02008486
_020084AE:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0200852C
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
	b _0200852C
_020084D4:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _020084E0
	ldrb r1, [r5, #7]
	b _020084EA
_020084E0:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _020084EA
	strb r1, [r5, #7]
_020084EA:
	cmp r1, #0xcf
	blo _02008500
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_02008670
	b _0200852C
_02008500:
	cmp r1, #0xb0
	bls _02008522
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_02008670
	ldrb r0, [r5]
	cmp r0, #0
	beq _02008588
	b _0200852C
_02008522:
	ldr r0, _02008674 @ =gUnk_0201A158
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0200852C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _020084D4
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _02008588
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _02008588
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0200854E
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _02008588
_0200854E:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _02008562
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _02008566
_02008562:
	movs r0, #0x80
	subs r2, r0, r1
_02008566:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _02008588
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _02008582
	movs r1, #0xc
	b _02008584
_02008582:
	movs r1, #3
_02008584:
	orrs r0, r1
	strb r0, [r5]
_02008588:
	mov r3, sl
	mov r4, fp
_0200858C:
	subs r6, #1
	ble _02008598
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _02008470
_02008598:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _020085AA
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _02008660
_020085AA:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_020085B0:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _020085B8
	b _02008468
_020085B8:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_020085BC:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _02008656
	movs r1, #0xf
	tst r1, r0
	beq _02008656
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0200864C
_020085DA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _020085EA
	adds r0, r4, #0
	bl ClearChain_rev
	b _02008646
_020085EA:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _02008608
	bl ChnVolSetAsm
	cmp r6, #0
	beq _02008608
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_02008608:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _02008646
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0200861C
	movs r2, #0
_0200861C:
	cmp r6, #0
	beq _0200863A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_02008670
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _02008646
_0200863A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_02008646:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _020085DA
_0200864C:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_02008656:
	subs r2, #1
	ble _02008660
	movs r0, #0x50
	adds r5, r5, r0
	bgt _020085BC
_02008660:
	ldr r0, _0200867C @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_02008670
sub_02008670: @ 0x02008670
	bx r3
	.align 2, 0
_02008674: .4byte gUnk_0201A158
_02008678: .4byte 0x03007FF0
_0200867C: .4byte 0x68736D53

	thumb_func_start TrackStop_rev01
TrackStop_rev01: @ 0x02008680
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _020086B8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _020086B6
	movs r6, #0
_02008694:
	ldrb r0, [r4]
	cmp r0, #0
	beq _020086AE
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _020086AC
	ldr r3, _020086C0 @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_02008670
_020086AC:
	strb r6, [r4]
_020086AE:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _02008694
_020086B6:
	str r4, [r5, #0x20]
_020086B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020086C0: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x020086C4
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
	bls _020086DC
	movs r0, #0xff
_020086DC:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _020086F0
	movs r0, #0xff
_020086F0:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note_rev01
ply_note_rev01: @ 0x020086F4
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _020088EC @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _020088F0 @ =gUnk_0201A158
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0200873A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02008738
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _02008738
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_02008738:
	str r3, [r5, #0x40]
_0200873A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _0200878C
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0200875A
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0200875C
_0200875A:
	adds r0, r3, #0
_0200875C:
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
	beq _02008774
	b _020088DA
_02008774:
	movs r0, #0x80
	tst r0, r2
	beq _02008790
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _02008788
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_02008788:
	ldrb r3, [r6, #1]
	b _02008790
_0200878C:
	mov sb, r4
	ldrb r3, [r5, #5]
_02008790:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _020087A0
	movs r0, #0xff
_020087A0:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _020087E0
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _020087B8
	b _020088DA
_020087B8:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _02008834
	movs r0, #0x40
	tst r0, r1
	bne _02008834
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _02008834
	beq _020087D8
	b _020088DA
_020087D8:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _02008834
	b _020088DA
_020087E0:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_020087EE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _02008834
	movs r0, #0x40
	tst r0, r1
	beq _02008808
	cmp r2, #0
	bne _0200880C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _02008826
_02008808:
	cmp r2, #0
	bne _02008828
_0200880C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _02008818
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _02008826
_02008818:
	bhi _02008828
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _02008824
	adds r7, r0, #0
	b _02008826
_02008824:
	blo _02008828
_02008826:
	mov r8, r4
_02008828:
	adds r4, #0x40
	subs r3, #1
	bgt _020087EE
	mov r4, r8
	cmp r4, #0
	beq _020088DA
_02008834:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _02008848
	str r4, [r3, #0x30]
_02008848:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0200885A
	adds r1, r5, #0
	bl clear_modM
_0200885A:
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
	bpl _02008894
	movs r3, #0
_02008894:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _020088C2
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _020088AE
	movs r0, #0x70
	tst r0, r1
	bne _020088B0
_020088AE:
	movs r1, #8
_020088B0:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_02008670
	b _020088CC
_020088C2:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_020088CC:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_020088DA:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_020088EC: .4byte 0x03007FF0
_020088F0: .4byte gUnk_0201A158

	thumb_func_start ply_endtie_rev01
ply_endtie_rev01: @ 0x020088F4
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _02008906
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _02008908
_02008906:
	ldrb r3, [r1, #5]
_02008908:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _02008930
	movs r4, #0x83
	movs r5, #0x40
_02008912:
	ldrb r2, [r1]
	tst r2, r4
	beq _0200892A
	tst r2, r5
	bne _0200892A
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0200892A
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _02008930
_0200892A:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _02008912
_02008930:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x02008934
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _02008944
	movs r2, #0xc
	b _02008946
_02008944:
	movs r2, #3
_02008946:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x02008950
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos_rev01
ply_lfos_rev01: @ 0x0200895C
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0200896C
	bl clear_modM
_0200896C:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod_rev01
ply_mod_rev01: @ 0x02008970
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _02008980
	bl clear_modM
_02008980:
	bx ip
	.align 2, 0
