	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start umul3232H32
umul3232H32: @ 0x0814F3D8
	add r2, pc, #0x0 @ =__umul3232H32
	bx r2

	arm_func_start __umul3232H32
__umul3232H32: @ 0x0814F3DC
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x0814F3E8
	ldr r0, _0814F454 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	ldr r2, _0814F458 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _0814F3F6
	bx lr
_0814F3F6:
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
	beq _0814F41A
	ldr r2, _0814F460 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _0814F418
	adds r2, #0xe4
_0814F418:
	adds r1, r1, r2
_0814F41A:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0814F42A
	ldr r0, [r0, #0x24]
	bl sub_0814F80A
	ldr r0, [sp, #0x18]
_0814F42A:
	ldr r3, [r0, #0x28]
	bl sub_0814F80A
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _0814F464 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _0814F44A
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_0814F44A:
	str r5, [sp, #8]
	ldr r6, _0814F468 @ =0x00000630
	ldr r3, _0814F45C @ =SoundMainRAM_Buffer + 1
	bx r3
	.align 2, 0
_0814F454: .4byte SOUND_INFO_PTR
_0814F458: .4byte 0x68736D53
_0814F45C: .4byte SoundMainRAM_Buffer + 1
_0814F460: .4byte 0x04000006
_0814F464: .4byte 0x00000350
_0814F468: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x0814F46C
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq SoundMainRAM_NoReverb
	add r1, pc, #0x4 @ =SoundMainRAM_Reverb
	bx r1
	.align 2, 0

	arm_func_start SoundMainRAM_Reverb
SoundMainRAM_Reverb: @ 0x0814F478
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_0814F488:
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
	bgt _0814F488
	add r0, pc, #0x2F @ =SoundMainRAM_ChanLoop
	bx r0

	thumb_func_start SoundMainRAM_NoReverb
SoundMainRAM_NoReverb: @ 0x0814F4CC
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo SoundMainRAM_NoReverb_Ok
	stm r5!, {r0}
	stm r6!, {r0}
SoundMainRAM_NoReverb_Ok:
	lsrs r1, r1, #1
	blo SoundMainRAM_NoReverb_Loop
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
SoundMainRAM_NoReverb_Loop:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt SoundMainRAM_NoReverb_Loop

	non_word_aligned_thumb_func_start SoundMainRAM_ChanLoop
SoundMainRAM_ChanLoop: @ 0x0814F4FA
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_0814F504:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0814F524
	ldr r1, _0814F520 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _0814F518
	adds r1, #0xe4
_0814F518:
	cmp r1, r0
	blo _0814F524
	b _0814F7F6
	.align 2, 0
_0814F520: .4byte 0x04000006
_0814F524:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0814F52E
	b sub_0814F7EC
_0814F52E:
	movs r0, #0x80
	tst r0, r6
	beq _0814F55E
	movs r0, #0x40
	tst r0, r6
	bne _0814F56E
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
	beq _0814F5B6
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0814F5B6
_0814F55E:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _0814F574
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _0814F5C4
_0814F56E:
	movs r0, #0
	strb r0, [r4]
	b sub_0814F7EC
_0814F574:
	movs r0, #0x40
	tst r0, r6
	beq _0814F594
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _0814F5C4
_0814F586:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0814F56E
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _0814F5C4
_0814F594:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0814F5B2
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _0814F5C4
	adds r5, r0, #0
	beq _0814F586
	subs r6, #1
	strb r6, [r4]
	b _0814F5C4
_0814F5B2:
	cmp r2, #3
	bne _0814F5C4
_0814F5B6:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _0814F5C4
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_0814F5C4:
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
	beq _0814F5F8
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_0814F5F8:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_0814F604
	bx r0
	.align 2, 0

	arm_func_start sub_0814F604
sub_0814F604: @ 0x0814F604
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _0814F744
_0814F624:
	cmp r2, #4
	ble _0814F694
	subs r2, r2, r8
	movgt lr, #0
	bgt _0814F650
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_0814F650:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0814F658:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _0814F658
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0814F650
	adds r8, r8, lr
	beq _0814F7D8
_0814F694:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0814F69C:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _0814F70C
_0814F6C0:
	adds r5, r5, #0x40000000
	blo _0814F69C
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0814F624
	b _0814F7D8
_0814F6DC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0814F700
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_0814F6F0:
	adds r2, r0, r2
	bgt _0814F7A8
	sub sb, sb, r0
	b _0814F6F0
_0814F700:
	pop {r4, ip}
	mov r2, #0
	b _0814F71C
_0814F70C:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _0814F6C0
_0814F71C:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _0814F7E0
_0814F744:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0814F760:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0814F768:
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
	beq _0814F7B4
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _0814F6DC
	subs sb, sb, #1
	addeq r0, r0, r1
_0814F7A8:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0814F7B4:
	adds r5, r5, #0x40000000
	blo _0814F768
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0814F760
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_0814F7D8:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_0814F7E0:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_0814F7EC
	bx r0

	thumb_func_start sub_0814F7EC
sub_0814F7EC: @ 0x0814F7EC
	ldr r0, [sp, #4]
	subs r0, #1
	ble _0814F7F6
	adds r4, #0x40
	b _0814F504
_0814F7F6:
	ldr r0, [sp, #0x18]
	ldr r3, _0814F80C @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_0814F80A
sub_0814F80A: @ 0x0814F80A
	bx r3
	.align 2, 0
_0814F80C: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x0814F810
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

	thumb_func_start RealClearChain
RealClearChain: @ 0x0814F828
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0814F846
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0814F83A
	str r1, [r2, #0x34]
	b _0814F83C
_0814F83A:
	str r1, [r3, #0x20]
_0814F83C:
	cmp r1, #0
	beq _0814F842
	str r2, [r1, #0x30]
_0814F842:
	movs r1, #0
	str r1, [r0, #0x2c]
_0814F846:
	bx lr

	thumb_func_start ply_fine
ply_fine:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0814F86C
_0814F852:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0814F860
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_0814F860:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0814F852
_0814F86C:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x0814F878
	mov ip, lr
	movs r1, #0x24
	ldr r2, _0814F8A8 @ =gMPlayJumpTableTemplate
_0814F87E:
	ldr r3, [r2]
	bl _0814F892
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0814F87E
	bx ip
	.align 2, 0

	thumb_func_start sub_0814F890
sub_0814F890: @ 0x0814F890
	ldrb r3, [r2]
_0814F892:
	push {r0}
	lsrs r0, r2, #0x19
	bne _0814F8A4
	ldr r0, _0814F8A8 @ =gMPlayJumpTableTemplate
	cmp r2, r0
	blo _0814F8A2
	lsrs r0, r2, #0xe
	beq _0814F8A4
_0814F8A2:
	movs r3, #0
_0814F8A4:
	pop {r0}
	bx lr
	.align 2, 0
_0814F8A8: .4byte gMPlayJumpTableTemplate

	thumb_func_start sub_0814F8AC
sub_0814F8AC: @ 0x0814F8AC
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_0814F8AE
sub_0814F8AE: @ 0x0814F8AE
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _0814F892
	.align 2, 0

	thumb_func_start ply_goto
ply_goto:
	push {lr}
_0814F8BA:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_0814F890
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x0814F8D8
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _0814F8F0
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_0814F8F0:
	b ply_fine
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x0814F8F4
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _0814F906
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_0814F906:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x0814F908
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _0814F918
	adds r2, #1
	str r2, [r1, #0x40]
	b _0814F8BA
_0814F918:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_0814F8AC
	cmp ip, r3
	bhs _0814F92A
	b _0814F8BA
_0814F92A:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x0814F938
	mov ip, lr
	bl sub_0814F8AC
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x0814F944
	mov ip, lr
	bl sub_0814F8AC
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x0814F958
	mov ip, lr
	bl sub_0814F8AC
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x0814F96C
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
	bl _0814F892
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _0814F892
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _0814F892
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x0814F99C
	mov ip, lr
	bl sub_0814F8AC
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x0814F9B0
	mov ip, lr
	bl sub_0814F8AC
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x0814F9C4
	mov ip, lr
	bl sub_0814F8AC
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x0814F9D8
	mov ip, lr
	bl sub_0814F8AC
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x0814F9EC
	mov ip, lr
	bl sub_0814F8AC
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x0814F9F8
	mov ip, lr
	bl sub_0814F8AC
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0814FA0E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0814FA0E:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x0814FA10
	mov ip, lr
	bl sub_0814F8AC
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x0814FA24
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _0814FA38 @ =0x04000060
	adds r0, r0, r3
	bl sub_0814F8AE

	thumb_func_start sub_0814FA34
sub_0814FA34: @ 0x0814FA34
	strb r3, [r0]
	bx ip
	.align 2, 0
_0814FA38: .4byte 0x04000060

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x0814FA3C
	ldr r0, _0814FCE8 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	ldr r2, _0814FCEC @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _0814FA7C
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _0814FA7C
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _0814FA80 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _0814FA62
	ldr r1, _0814FA84 @ =0x84400004
	str r1, [r2, #8]
_0814FA62:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _0814FA6C
	ldr r1, _0814FA84 @ =0x84400004
	str r1, [r2, #0x14]
_0814FA6C:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_0814FA7C:
	bx lr
	.align 2, 0
_0814FA80: .4byte 0x040000BC
_0814FA84: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x0814FA88
	ldr r2, _0814FCEC @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _0814FA92
	bx lr
_0814FA92:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _0814FAA4
	ldr r0, [r0, #0x3c]
	bl sub_0814FCE0
_0814FAA4:
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
	bge _0814FABC
	b _0814FCD0
_0814FABC:
	ldr r0, _0814FCE8 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0814FAD0
	b _0814FCD0
_0814FAD0:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _0814FC20
_0814FAD8:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_0814FAE0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _0814FAEA
	b _0814FBFC
_0814FAEA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0814FB1E
_0814FAF6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0814FB12
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0814FB18
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _0814FB18
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _0814FB18
_0814FB12:
	adds r0, r4, #0
	bl ClearChain
_0814FB18:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0814FAF6
_0814FB1E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0814FB9C
	adds r0, r5, #0
	bl Clear64byte
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
	b _0814FB9C
_0814FB44:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _0814FB50
	ldrb r1, [r5, #7]
	b _0814FB5A
_0814FB50:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _0814FB5A
	strb r1, [r5, #7]
_0814FB5A:
	cmp r1, #0xcf
	blo _0814FB70
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0814FCE0
	b _0814FB9C
_0814FB70:
	cmp r1, #0xb0
	bls _0814FB92
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0814FCE0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0814FBF8
	b _0814FB9C
_0814FB92:
	ldr r0, _0814FCE4 @ =gClockTable
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0814FB9C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0814FB44
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _0814FBF8
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _0814FBF8
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0814FBBE
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _0814FBF8
_0814FBBE:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _0814FBD2
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _0814FBD6
_0814FBD2:
	movs r0, #0x80
	subs r2, r0, r1
_0814FBD6:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _0814FBF8
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _0814FBF2
	movs r1, #0xc
	b _0814FBF4
_0814FBF2:
	movs r1, #3
_0814FBF4:
	orrs r0, r1
	strb r0, [r5]
_0814FBF8:
	mov r3, sl
	mov r4, fp
_0814FBFC:
	subs r6, #1
	ble _0814FC08
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _0814FAE0
_0814FC08:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _0814FC1A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _0814FCD0
_0814FC1A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_0814FC20:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _0814FC28
	b _0814FAD8
_0814FC28:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_0814FC2C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _0814FCC6
	movs r1, #0xf
	tst r1, r0
	beq _0814FCC6
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0814FCBC
_0814FC4A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _0814FC5A
	adds r0, r4, #0
	bl ClearChain
	b _0814FCB6
_0814FC5A:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _0814FC78
	bl ChnVolSetAsm
	cmp r6, #0
	beq _0814FC78
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0814FC78:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _0814FCB6
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0814FC8C
	movs r2, #0
_0814FC8C:
	cmp r6, #0
	beq _0814FCAA
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_0814FCE0
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _0814FCB6
_0814FCAA:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_0814FCB6:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0814FC4A
_0814FCBC:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_0814FCC6:
	subs r2, #1
	ble _0814FCD0
	movs r0, #0x50
	adds r5, r5, r0
	bgt _0814FC2C
_0814FCD0:
	ldr r0, _0814FCEC @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_0814FCE0
sub_0814FCE0: @ 0x0814FCE0
	bx r3
	.align 2, 0
_0814FCE4: .4byte gClockTable
_0814FCE8: .4byte SOUND_INFO_PTR
_0814FCEC: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x0814FCF0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _0814FD28
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0814FD26
	movs r6, #0
_0814FD04:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0814FD1E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _0814FD1C
	ldr r3, _0814FD30 @ =SOUND_INFO_PTR
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_0814FCE0
_0814FD1C:
	strb r6, [r4]
_0814FD1E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0814FD04
_0814FD26:
	str r4, [r5, #0x20]
_0814FD28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814FD30: .4byte SOUND_INFO_PTR

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x0814FD34
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
	bls _0814FD4C
	movs r0, #0xff
_0814FD4C:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0814FD60
	movs r0, #0xff
_0814FD60:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note
ply_note: @ 0x0814FD64
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0814FF5C @ =SOUND_INFO_PTR
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0814FF60 @ =gClockTable
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0814FDAA
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0814FDA8
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0814FDA8
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_0814FDA8:
	str r3, [r5, #0x40]
_0814FDAA:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _0814FDFC
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0814FDCA
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0814FDCC
_0814FDCA:
	adds r0, r3, #0
_0814FDCC:
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
	beq _0814FDE4
	b _0814FF4A
_0814FDE4:
	movs r0, #0x80
	tst r0, r2
	beq _0814FE00
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _0814FDF8
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_0814FDF8:
	ldrb r3, [r6, #1]
	b _0814FE00
_0814FDFC:
	mov sb, r4
	ldrb r3, [r5, #5]
_0814FE00:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0814FE10
	movs r0, #0xff
_0814FE10:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0814FE50
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _0814FE28
	b _0814FF4A
_0814FE28:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0814FEA4
	movs r0, #0x40
	tst r0, r1
	bne _0814FEA4
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _0814FEA4
	beq _0814FE48
	b _0814FF4A
_0814FE48:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _0814FEA4
	b _0814FF4A
_0814FE50:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0814FE5E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0814FEA4
	movs r0, #0x40
	tst r0, r1
	beq _0814FE78
	cmp r2, #0
	bne _0814FE7C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _0814FE96
_0814FE78:
	cmp r2, #0
	bne _0814FE98
_0814FE7C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _0814FE88
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _0814FE96
_0814FE88:
	bhi _0814FE98
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _0814FE94
	adds r7, r0, #0
	b _0814FE96
_0814FE94:
	blo _0814FE98
_0814FE96:
	mov r8, r4
_0814FE98:
	adds r4, #0x40
	subs r3, #1
	bgt _0814FE5E
	mov r4, r8
	cmp r4, #0
	beq _0814FF4A
_0814FEA4:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _0814FEB8
	str r4, [r3, #0x30]
_0814FEB8:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0814FECA
	adds r1, r5, #0
	bl clear_modM
_0814FECA:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
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
	bpl _0814FF04
	movs r3, #0
_0814FF04:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0814FF32
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0814FF1E
	movs r0, #0x70
	tst r0, r1
	bne _0814FF20
_0814FF1E:
	movs r1, #8
_0814FF20:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_0814FCE0
	b _0814FF3C
_0814FF32:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_0814FF3C:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0814FF4A:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0814FF5C: .4byte SOUND_INFO_PTR
_0814FF60: .4byte gClockTable

	thumb_func_start ply_endtie
ply_endtie: @ 0x0814FF64
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _0814FF76
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _0814FF78
_0814FF76:
	ldrb r3, [r1, #5]
_0814FF78:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _0814FFA0
	movs r4, #0x83
	movs r5, #0x40
_0814FF82:
	ldrb r2, [r1]
	tst r2, r4
	beq _0814FF9A
	tst r2, r5
	bne _0814FF9A
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0814FF9A
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _0814FFA0
_0814FF9A:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _0814FF82
_0814FFA0:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x0814FFA4
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _0814FFB4
	movs r2, #0xc
	b _0814FFB6
_0814FFB4:
	movs r2, #3
_0814FFB6:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0814FFC0
sub_0814FFC0: @ 0x0814FFC0
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x0814FFCC
	mov ip, lr
	bl sub_0814FFC0
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0814FFDC
	bl clear_modM
_0814FFDC:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x0814FFE0
	mov ip, lr
	bl sub_0814FFC0
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0814FFF0
	bl clear_modM
_0814FFF0:
	bx ip
	.align 2, 0
