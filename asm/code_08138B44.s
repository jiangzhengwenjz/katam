	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08138B44
sub_08138B44: @ 0x08138B44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	add r1, sp, #4
	ldr r0, _08138C0C @ =gUnk_08386518
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r1, _08138C10 @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08138C14 @ =gUnk_03002540
	ldr r0, _08138C18 @ =0x06010000
	str r0, [r1]
	ldr r1, _08138C1C @ =gDispCnt
	movs r3, #0x82
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	movs r4, #0
	ldr r6, _08138C20 @ =gBldRegs
	ldr r0, _08138C24 @ =sub_08141E74
	mov sb, r0
	ldr r1, _08138C28 @ =sub_08139218
	mov ip, r1
	add r2, sp, #0x10
	mov r8, r2
	ldr r7, _08138C2C @ =gBgCntRegs
	movs r5, #0x1f
_08138B84:
	lsls r2, r4, #1
	adds r2, r2, r7
	lsls r3, r4, #2
	mov r0, sp
	adds r0, r0, r3
	adds r0, #4
	ldr r1, [r0]
	subs r0, r5, r4
	lsls r0, r0, #8
	orrs r1, r0
	orrs r1, r3
	strh r1, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _08138B84
	movs r4, #0
	ldr r3, _08138C30 @ =gBgScrollRegs
	movs r2, #0
	adds r5, r3, #2
_08138BAE:
	lsls r1, r4, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, r1, r5
	strh r2, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08138BAE
	movs r0, #0
	movs r1, #0xbf
	strh r1, [r6]
	strh r0, [r6, #2]
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r4, #0
	ldr r2, _08138C34 @ =gUnk_030036A0
	movs r1, #6
_08138BD4:
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #9
	bls _08138BD4
	ldr r1, _08138C38 @ =0x00000BF4
	movs r2, #0x80
	lsls r2, r2, #5
	mov r3, ip
	str r3, [sp]
	mov r0, sb
	movs r3, #0
	bl CreateState
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138C3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138C44
	.align 2, 0
_08138C0C: .4byte gUnk_08386518
_08138C10: .4byte gUnk_03002488
_08138C14: .4byte gUnk_03002540
_08138C18: .4byte 0x06010000
_08138C1C: .4byte gDispCnt
_08138C20: .4byte gBldRegs
_08138C24: .4byte sub_08141E74
_08138C28: .4byte sub_08139218
_08138C2C: .4byte gBgCntRegs
_08138C30: .4byte gBgScrollRegs
_08138C34: .4byte gUnk_030036A0
_08138C38: .4byte 0x00000BF4
_08138C3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138C44:
	adds r5, r1, #0
	movs r4, #0
	mov r0, r8
	strh r4, [r0]
	ldr r2, _08138CD4 @ =0x010005FA
	bl CpuSet
	ldr r2, _08138CD8 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _08138CDC @ =sub_08141EC0
	str r0, [r1]
	ldr r3, _08138CE0 @ =0x00000BDC
	adds r1, r5, r3
	ldr r0, _08138CE4 @ =sub_0813BDDC
	str r0, [r1]
	strb r4, [r5]
	strb r4, [r5, #1]
	ldr r4, _08138CE8 @ =0x00000BE3
	adds r1, r5, r4
	movs r0, #0xa
	strb r0, [r1]
	ldr r2, _08138CEC @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08138CF0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08138CF4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0xff
	ands r0, r2
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r4, #3
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _08138CF8 @ =gUnk_0203AD48
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #2
	bhi _08138C98
	adds r1, r0, #0
_08138C98:
	strb r1, [r5, #0xb]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r5, #0xa]
	movs r4, #0
	adds r6, r5, #7
	adds r7, r5, #4
	ldr r0, _08138CFC @ =gUnk_0203ACB0
	mov r8, r0
_08138CAA:
	ldr r0, _08138CF8 @ =gUnk_0203AD48
	strh r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08138D00
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0813914C
	lsls r2, r4, #1
	add r2, r8
	adds r1, r6, r4
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r2]
	b _08138D1C
	.align 2, 0
_08138CD4: .4byte 0x010005FA
_08138CD8: .4byte 0x000009CC
_08138CDC: .4byte sub_08141EC0
_08138CE0: .4byte 0x00000BDC
_08138CE4: .4byte sub_0813BDDC
_08138CE8: .4byte 0x00000BE3
_08138CEC: .4byte gUnk_030068D8
_08138CF0: .4byte 0x00196225
_08138CF4: .4byte 0x3C6EF35F
_08138CF8: .4byte gUnk_0203AD48
_08138CFC: .4byte gUnk_0203ACB0
_08138D00:
	lsls r1, r4, #1
	add r1, r8
	adds r2, r6, r4
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _08138D30 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	bl sub_0800AC00
	movs r0, #1
	adds r1, r4, #0
	bl sub_0800ACD4
_08138D1C:
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x64
	bne _08138D34
	adds r1, r7, r4
	movs r0, #1
	b _08138D38
	.align 2, 0
_08138D30: .4byte 0x0000FFFF
_08138D34:
	adds r1, r7, r4
	movs r0, #0
_08138D38:
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _08138CAA
	ldr r1, _08138D60 @ =gUnk_0203AD48
	ldrb r0, [r5, #0xa]
	strh r0, [r1]
	movs r0, #2
	bl m4aSongNumStartOrChange
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138D60: .4byte gUnk_0203AD48

	thumb_func_start sub_08138D64
sub_08138D64: @ 0x08138D64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _08138E30 @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08138E34 @ =gUnk_03002540
	ldr r0, _08138E38 @ =0x06010000
	str r0, [r1]
	ldr r1, _08138E3C @ =gDispCnt
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08138E40 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	add r1, sp, #4
	ldr r0, _08138E44 @ =gUnk_08386518
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r4, #0
	add r7, sp, #0x10
	ldr r6, _08138E48 @ =gBgCntRegs
	movs r5, #0x1f
_08138DAA:
	lsls r2, r4, #1
	adds r2, r2, r6
	lsls r3, r4, #2
	mov r0, sp
	adds r0, r0, r3
	adds r0, #4
	ldr r1, [r0]
	subs r0, r5, r4
	lsls r0, r0, #8
	orrs r1, r0
	orrs r1, r3
	strh r1, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08138DAA
	movs r4, #0
	mov r0, r8
	lsls r6, r0, #0x18
	ldr r3, _08138E4C @ =gBgScrollRegs
	movs r2, #0
	adds r5, r3, #2
_08138DD8:
	lsls r1, r4, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, r1, r5
	strh r2, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08138DD8
	movs r4, #0
	ldr r2, _08138E50 @ =gUnk_030036A0
	movs r1, #6
_08138DF2:
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _08138DF2
	movs r0, #2
	bl m4aSongNumStartOrChange
	ldr r0, _08138E54 @ =sub_08141E74
	ldr r1, _08138E58 @ =0x00000BF4
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _08138E5C @ =sub_08139218
	str r3, [sp]
	movs r3, #0
	bl CreateState
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138E60
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138E68
	.align 2, 0
_08138E30: .4byte gUnk_03002488
_08138E34: .4byte gUnk_03002540
_08138E38: .4byte 0x06010000
_08138E3C: .4byte gDispCnt
_08138E40: .4byte gBldRegs
_08138E44: .4byte gUnk_08386518
_08138E48: .4byte gBgCntRegs
_08138E4C: .4byte gBgScrollRegs
_08138E50: .4byte gUnk_030036A0
_08138E54: .4byte sub_08141E74
_08138E58: .4byte 0x00000BF4
_08138E5C: .4byte sub_08139218
_08138E60:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138E68:
	adds r5, r1, #0
	movs r4, #0
	strh r4, [r7]
	ldr r2, _08138F0C @ =0x010005FA
	adds r0, r7, #0
	bl CpuSet
	ldr r2, _08138F10 @ =0x00000BDC
	adds r1, r5, r2
	ldr r0, _08138F14 @ =sub_0813BDDC
	str r0, [r1]
	strb r4, [r5, #0xb]
	strb r4, [r5, #0xa]
	movs r0, #8
	strb r0, [r5]
	strb r0, [r5, #1]
	ldr r3, _08138F18 @ =0x000009CB
	adds r0, r5, r3
	mov r4, r8
	strb r4, [r0]
	movs r3, #0xff
	lsrs r1, r6, #0x18
	ldr r2, _08138F1C @ =0x000009CA
	adds r0, r5, r2
	strb r1, [r0]
	ldr r4, _08138F20 @ =0x000003A5
	adds r0, r5, r4
	movs r1, #1
	strb r1, [r0]
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldr r4, _08138F24 @ =0x00000BE3
	adds r1, r5, r4
	movs r0, #0xf
	strb r0, [r1]
	ldr r2, _08138F28 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08138F2C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08138F30 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ands r0, r3
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r4, #3
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _08138F34 @ =gUnk_0203AD48
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #2
	bhi _08138EDA
	adds r1, r0, #0
_08138EDA:
	strb r1, [r5, #0xb]
	ands r3, r1
	strb r3, [r5, #0xa]
	movs r4, #0
	ldr r0, _08138F38 @ =sub_08141EC0
	mov r8, r0
	adds r3, r5, #7
	ldr r1, _08138F3C @ =gUnk_0203ACB0
	mov ip, r1
	movs r7, #0
	adds r2, r5, #4
	movs r6, #1
_08138EF2:
	adds r0, r3, r4
	lsls r1, r4, #1
	add r1, ip
	ldrh r1, [r1]
	strb r1, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0x64
	bne _08138F40
	adds r0, r2, r4
	strb r6, [r0]
	b _08138F44
	.align 2, 0
_08138F0C: .4byte 0x010005FA
_08138F10: .4byte 0x00000BDC
_08138F14: .4byte sub_0813BDDC
_08138F18: .4byte 0x000009CB
_08138F1C: .4byte 0x000009CA
_08138F20: .4byte 0x000003A5
_08138F24: .4byte 0x00000BE3
_08138F28: .4byte gUnk_030068D8
_08138F2C: .4byte 0x00196225
_08138F30: .4byte 0x3C6EF35F
_08138F34: .4byte gUnk_0203AD48
_08138F38: .4byte sub_08141EC0
_08138F3C: .4byte gUnk_0203ACB0
_08138F40:
	adds r0, r2, r4
	strb r7, [r0]
_08138F44:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08138EF2
	ldr r2, _08138F64 @ =0x000009CC
	adds r0, r5, r2
	mov r3, r8
	str r3, [r0]
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138F64: .4byte 0x000009CC

	thumb_func_start sub_08138F68
sub_08138F68: @ 0x08138F68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	ldr r1, _0813902C @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08139030 @ =gUnk_03002540
	ldr r0, _08139034 @ =0x06010000
	str r0, [r1]
	ldr r1, _08139038 @ =gDispCnt
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0813903C @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	add r1, sp, #4
	ldr r0, _08139040 @ =gUnk_08386518
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r4, #0
	add r7, sp, #0x10
	ldr r6, _08139044 @ =gBgCntRegs
	movs r5, #0x1f
_08138FA8:
	lsls r2, r4, #1
	adds r2, r2, r6
	lsls r3, r4, #2
	mov r0, sp
	adds r0, r0, r3
	adds r0, #4
	ldr r1, [r0]
	subs r0, r5, r4
	lsls r0, r0, #8
	orrs r1, r0
	orrs r1, r3
	strh r1, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08138FA8
	movs r4, #0
	ldr r3, _08139048 @ =gBgScrollRegs
	movs r2, #0
	adds r5, r3, #2
_08138FD2:
	lsls r1, r4, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, r1, r5
	strh r2, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08138FD2
	movs r0, #2
	bl m4aSongNumStartOrChange
	movs r4, #0
	ldr r2, _0813904C @ =gUnk_030036A0
	movs r1, #6
_08138FF2:
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _08138FF2
	ldr r0, _08139050 @ =sub_08141E74
	ldr r1, _08139054 @ =0x00000BF4
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _08139058 @ =sub_08139218
	str r3, [sp]
	movs r3, #0
	bl CreateState
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813905C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08139064
	.align 2, 0
_0813902C: .4byte gUnk_03002488
_08139030: .4byte gUnk_03002540
_08139034: .4byte 0x06010000
_08139038: .4byte gDispCnt
_0813903C: .4byte gBldRegs
_08139040: .4byte gUnk_08386518
_08139044: .4byte gBgCntRegs
_08139048: .4byte gBgScrollRegs
_0813904C: .4byte gUnk_030036A0
_08139050: .4byte sub_08141E74
_08139054: .4byte 0x00000BF4
_08139058: .4byte sub_08139218
_0813905C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08139064:
	adds r5, r1, #0
	movs r4, #0
	strh r4, [r7]
	ldr r2, _081390F8 @ =0x010005FA
	adds r0, r7, #0
	bl CpuSet
	ldr r0, _081390FC @ =0x00000BDC
	adds r1, r5, r0
	ldr r0, _08139100 @ =sub_0813BDDC
	str r0, [r1]
	strb r4, [r5, #0xb]
	strb r4, [r5, #0xa]
	movs r2, #0xa
	strb r2, [r5]
	strb r2, [r5, #1]
	ldr r1, _08139104 @ =0x000003A5
	adds r0, r5, r1
	movs r1, #2
	strb r1, [r0]
	movs r3, #0xe9
	lsls r3, r3, #2
	adds r0, r5, r3
	strb r1, [r0]
	ldr r4, _08139108 @ =0x00000BE3
	adds r0, r5, r4
	strb r2, [r0]
	ldr r2, _0813910C @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08139110 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08139114 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0xff
	ands r0, r2
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r4, #3
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _08139118 @ =gUnk_0203AD48
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #2
	bhi _081390C4
	adds r1, r0, #0
_081390C4:
	strb r1, [r5, #0xb]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r5, #0xa]
	movs r4, #0
	ldr r0, _0813911C @ =sub_08141EC0
	mov r8, r0
	adds r3, r5, #7
	ldr r1, _08139120 @ =gUnk_0203ACB0
	mov ip, r1
	movs r7, #0
	adds r2, r5, #4
	movs r6, #1
_081390DE:
	adds r0, r3, r4
	lsls r1, r4, #1
	add r1, ip
	ldrh r1, [r1]
	strb r1, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0x64
	bne _08139124
	adds r0, r2, r4
	strb r6, [r0]
	b _08139128
	.align 2, 0
_081390F8: .4byte 0x010005FA
_081390FC: .4byte 0x00000BDC
_08139100: .4byte sub_0813BDDC
_08139104: .4byte 0x000003A5
_08139108: .4byte 0x00000BE3
_0813910C: .4byte gUnk_030068D8
_08139110: .4byte 0x00196225
_08139114: .4byte 0x3C6EF35F
_08139118: .4byte gUnk_0203AD48
_0813911C: .4byte sub_08141EC0
_08139120: .4byte gUnk_0203ACB0
_08139124:
	adds r0, r2, r4
	strb r7, [r0]
_08139128:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _081390DE
	ldr r2, _08139148 @ =0x000009CC
	adds r0, r5, r2
	mov r3, r8
	str r3, [r0]
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08139148: .4byte 0x000009CC

	thumb_func_start sub_0813914C
sub_0813914C: @ 0x0813914C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08019CDC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	adds r0, r1, #0
	movs r1, #0x54
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r5, #0
	movs r4, #0
	ldr r0, _08139208 @ =gUnk_08932F8C
	mov r8, r0
	ldr r7, _0813920C @ =0x0000010F
_08139178:
	lsls r0, r4, #1
	add r0, r8
	ldrh r0, [r0]
	bl sub_08002A5C
	cmp r0, #0
	beq _0813918C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0813918C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	bls _08139178
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0x88
	lsls r1, r1, #1
	bl __divsi3
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r5, #0
	movs r4, #1
_081391B4:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #2
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _081391CC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_081391CC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _081391B4
	adds r0, r6, r5
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08019D5C
	adds r0, r0, r6
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08139210 @ =gUnk_0203AD2C
	ldrh r1, [r0]
	ldr r0, _08139214 @ =0x0000270E
	cmp r1, r0
	bls _081391FA
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
_081391FA:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08139208: .4byte gUnk_08932F8C
_0813920C: .4byte 0x0000010F
_08139210: .4byte gUnk_0203AD2C
_08139214: .4byte 0x0000270E

	thumb_func_start sub_08139218
sub_08139218: @ 0x08139218
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08139232
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0813923A
_08139232:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0813923A:
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813924E
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813924E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0813925C
	bl sub_08157190
	movs r0, #0
	str r0, [r4, #0xc]
_0813925C:
	adds r0, r4, #0
	bl sub_0813A908
	adds r0, r4, #0
	bl sub_0813AA4C
	adds r0, r4, #0
	bl sub_0813A9DC
	adds r0, r4, #0
	bl sub_0813AB40
	adds r0, r4, #0
	bl sub_0813ACA0
	adds r0, r4, #0
	bl sub_0813AD2C
	movs r1, #0
	ldr r3, _0813929C @ =gUnk_030036A0
	movs r2, #8
_08139286:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08139286
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813929C: .4byte gUnk_030036A0

	thumb_func_start sub_081392A0
sub_081392A0: @ 0x081392A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r7, sb
	adds r7, #0xc
	ldr r5, _08139358 @ =gUnk_08385CD4
	ldr r4, _0813935C @ =gUnk_08D60A80
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #4]
	bl sub_081570B0
	mov r1, sb
	str r0, [r1, #0xc]
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	strb r0, [r7, #0x1a]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r4, #0x10
	strb r4, [r7, #0x1c]
	mov r1, r8
	strb r1, [r7, #0x1f]
	ldr r0, _08139360 @ =0x0000FF64
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	str r6, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r7, #0xa3
	lsls r7, r7, #2
	add r7, sb
	movs r0, #0x10
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	adds r0, #0xd5
	strh r0, [r7, #0xc]
	movs r0, #2
	strb r0, [r7, #0x1a]
	strh r6, [r7, #0x16]
	subs r0, #3
	strb r0, [r7, #0x1b]
	strb r4, [r7, #0x1c]
	movs r0, #1
	strb r0, [r7, #0x1f]
	ldr r0, _08139364 @ =0x0000FFE0
	strh r0, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r6, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08139358: .4byte gUnk_08385CD4
_0813935C: .4byte gUnk_08D60A80
_08139360: .4byte 0x0000FF64
_08139364: .4byte 0x0000FFE0

	thumb_func_start sub_08139368
sub_08139368: @ 0x08139368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #0x50]
	movs r2, #0
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x54]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x58]
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x5c]
	mov r4, sp
	adds r4, #0x18
	str r4, [sp, #0x64]
	add r0, sp, #0x40
	mov r8, r0
	add r1, sp, #0x1c
	mov sl, r1
	ldr r3, [sp, #0x50]
	ldrb r3, [r3, #0xa]
	mov sb, r3
	mov ip, r2
	movs r7, #2
	ldr r6, [sp, #0x54]
	ldr r5, [sp, #0x5c]
	ldr r4, [sp, #0x58]
	movs r3, #3
_081393AA:
	cmp sb, r2
	bne _081393C6
	mov r1, sp
	adds r0, r1, r2
	strb r7, [r0]
	adds r0, r6, r2
	strb r7, [r0]
	adds r1, r4, r2
	adds r0, r2, #4
	strb r0, [r1]
	lsls r0, r2, #2
	adds r0, r5, r0
	mov r1, ip
	b _081393DE
_081393C6:
	mov r1, sp
	adds r0, r1, r2
	strb r3, [r0]
	adds r0, r6, r2
	strb r3, [r0]
	adds r1, r4, r2
	movs r0, #7
	strb r0, [r1]
	lsls r0, r2, #2
	adds r0, r5, r0
	movs r1, #0x80
	lsls r1, r1, #0xb
_081393DE:
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _081393AA
	ldr r0, [sp, #0x64]
	ldr r1, _0813959C @ =gUnk_08386524
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	mov r0, r8
	ldr r1, _081395A0 @ =gUnk_0838654C
	movs r2, #5
	bl memcpy
	movs r2, #0
	ldr r0, [sp, #0x50]
	adds r0, #7
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x50]
	movs r3, #0xad
	lsls r3, r3, #2
	adds r7, r1, r3
	movs r4, #0
	ldr r5, _081395A4 @ =0x0000FFC0
_0813941C:
	str r4, [r7]
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	lsls r1, r2, #3
	ldr r0, [sp, #0x64]
	adds r1, r0, r1
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x68]
	bl sub_08155128
	ldr r2, [sp, #0x68]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0813941C
	ldr r1, _081395A8 @ =gUnk_08386551
	ldr r0, [sp, #0x64]
	movs r2, #3
	bl memcpy
	ldr r1, _081395AC @ =gUnk_08386554
	mov r0, sl
	movs r2, #6
	bl memcpy
	movs r2, #0
	ldr r3, _081395B0 @ =gUnk_08385CD4
	mov r8, r3
	ldr r6, _081395B4 @ =gUnk_08D60A80
	mov sb, r2
_0813947C:
	lsls r5, r2, #2
	adds r0, r5, r2
	lsls r0, r0, #3
	adds r0, #0x34
	ldr r4, [sp, #0x50]
	adds r7, r4, r0
	adds r4, r2, #6
	lsls r4, r4, #3
	ldrh r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, r8
	ldrh r0, [r0, #4]
	str r2, [sp, #0x68]
	bl sub_081570B0
	str r0, [r7]
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x64]
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldrh r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r4, r0
	add r4, r8
	ldrh r0, [r4, #2]
	strb r0, [r7, #0x1a]
	mov r3, sb
	strh r3, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	mov r4, sp
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	movs r0, #0xf0
	strh r0, [r7, #0x10]
	lsls r0, r2, #1
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r7, #0x12]
	ldr r0, [sp, #0x5c]
	adds r5, r0, r5
	ldr r0, [r5]
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x68]
	bl sub_08155128
	ldr r2, [sp, #0x68]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0813947C
	ldr r1, _081395B8 @ =gUnk_0838655A
	ldr r0, [sp, #0x64]
	movs r2, #6
	bl memcpy
	movs r2, #0
_08139522:
	ldr r1, [sp, #0x60]
	adds r1, r1, r2
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _081395C0
	lsls r4, r2, #4
	subs r4, r4, r2
	lsls r4, r4, #3
	movs r3, #0x92
	lsls r3, r3, #1
	adds r4, r4, r3
	ldr r0, [sp, #0x50]
	adds r4, r0, r4
	adds r7, r4, #0
	adds r7, #0x50
	ldr r1, _081395BC @ =gUnk_083864B4
	ldrh r0, [r1, #4]
	str r2, [sp, #0x68]
	bl sub_081570B0
	str r0, [r4, #0x50]
	ldr r2, [sp, #0x68]
	lsls r1, r2, #2
	adds r0, r1, r2
	adds r0, #0xf
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldr r3, _081395BC @ =gUnk_083864B4
	ldrh r0, [r3]
	strh r0, [r7, #0xc]
	ldrh r0, [r3, #2]
	strb r0, [r7, #0x1a]
	movs r4, #0
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r3, [sp, #0x54]
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	movs r0, #0xd4
	lsls r0, r0, #1
	strh r0, [r7, #0x10]
	lsls r0, r2, #1
	ldr r4, [sp, #0x64]
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x12]
	ldr r0, [sp, #0x5c]
	adds r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x68]
	bl sub_08155128
	b _08139742
	.align 2, 0
_0813959C: .4byte gUnk_08386524
_081395A0: .4byte gUnk_0838654C
_081395A4: .4byte 0x0000FFC0
_081395A8: .4byte gUnk_08386551
_081395AC: .4byte gUnk_08386554
_081395B0: .4byte gUnk_08385CD4
_081395B4: .4byte gUnk_08D60A80
_081395B8: .4byte gUnk_0838655A
_081395BC: .4byte gUnk_083864B4
_081395C0:
	lsls r1, r2, #2
	mov r8, r1
	lsls r3, r2, #4
	mov sl, r3
	cmp r0, #0x64
	bne _08139632
	subs r0, r3, r2
	lsls r0, r0, #3
	movs r4, #0x92
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r1, [sp, #0x50]
	adds r7, r1, r0
	ldr r3, _081397F0 @ =gUnk_083864B4
	ldrh r0, [r3, #0xc]
	str r2, [sp, #0x68]
	bl sub_081570B0
	str r0, [r7]
	ldr r2, [sp, #0x68]
	mov r4, r8
	adds r0, r4, r2
	adds r0, #0xf
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldr r1, _081397F0 @ =gUnk_083864B4
	ldrh r0, [r1, #8]
	strh r0, [r7, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r7, #0x1a]
	movs r3, #0
	strh r3, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r4, [sp, #0x54]
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	movs r0, #0xcc
	lsls r0, r0, #1
	strh r0, [r7, #0x10]
	lsls r0, r2, #1
	ldr r1, [sp, #0x64]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x12]
	ldr r0, [sp, #0x5c]
	add r0, r8
	ldr r0, [r0]
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x68]
	bl sub_08155128
	ldr r2, [sp, #0x68]
_08139632:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #9
	ble _081396C2
	movs r1, #0xa
	str r2, [sp, #0x68]
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r2, [sp, #0x68]
	mov r0, sl
	subs r4, r0, r2
	lsls r4, r4, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r3, [sp, #0x50]
	adds r4, r3, r4
	adds r7, r4, #0
	adds r7, #0x28
	lsls r5, r6, #3
	ldr r0, _081397F0 @ =gUnk_083864B4
	adds r5, r5, r0
	ldrh r0, [r5, #4]
	bl sub_081570B0
	str r0, [r4, #0x28]
	ldr r2, [sp, #0x68]
	mov r1, r8
	adds r0, r1, r2
	adds r0, #0xf
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrh r0, [r5, #2]
	strb r0, [r7, #0x1a]
	movs r3, #0
	strh r3, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r4, [sp, #0x54]
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r7, #0x10]
	lsls r6, r6, #1
	ldr r0, [sp, #0x64]
	adds r6, r0, r6
	ldrh r0, [r6]
	strh r0, [r7, #0x12]
	ldr r0, [sp, #0x5c]
	add r0, r8
	ldr r0, [r0]
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x68]
	bl sub_08155128
	ldr r2, [sp, #0x68]
_081396C2:
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #0xa
	str r2, [sp, #0x68]
	bl __modsi3
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r2, [sp, #0x68]
	mov r3, sl
	subs r4, r3, r2
	lsls r4, r4, #3
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [sp, #0x50]
	adds r4, r1, r4
	adds r7, r4, #0
	adds r7, #0x50
	lsls r5, r6, #3
	ldr r3, _081397F0 @ =gUnk_083864B4
	adds r5, r5, r3
	ldrh r0, [r5, #4]
	bl sub_081570B0
	str r0, [r4, #0x50]
	ldr r2, [sp, #0x68]
	mov r4, r8
	adds r0, r4, r2
	adds r0, #0xf
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrh r0, [r5, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r1, [sp, #0x54]
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	movs r0, #0xd4
	lsls r0, r0, #1
	strh r0, [r7, #0x10]
	lsls r6, r6, #1
	ldr r3, [sp, #0x64]
	adds r6, r3, r6
	ldrh r0, [r6]
	strh r0, [r7, #0x12]
	ldr r0, [sp, #0x5c]
	add r0, r8
	ldr r0, [r0]
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x68]
	bl sub_08155128
_08139742:
	ldr r2, [sp, #0x68]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bhi _08139750
	b _08139522
_08139750:
	ldr r1, _081397F4 @ =gUnk_08386560
	ldr r0, [sp, #0x64]
	movs r2, #6
	bl memcpy
	movs r2, #0
	add r5, sp, #0x48
	movs r6, #0
_08139760:
	ldr r0, [sp, #0x60]
	adds r4, r0, r2
	movs r0, #0
	ldrsb r0, [r4, r0]
	str r2, [sp, #0x68]
	bl sub_08143498
	ldr r2, [sp, #0x68]
	cmp r0, #0
	beq _081397D4
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	bl sub_0813AF5C
	ldr r2, [sp, #0x68]
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r0, r4, #3
	adds r0, #0xac
	ldr r1, [sp, #0x50]
	adds r7, r1, r0
	ldrh r0, [r5, #4]
	bl sub_081570B0
	str r0, [r7]
	adds r4, #0xf
	lsls r4, r4, #6
	strh r4, [r7, #0x14]
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrh r0, [r5, #2]
	strb r0, [r7, #0x1a]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x58]
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	ldr r0, _081397F8 @ =0x00000143
	strh r0, [r7, #0x10]
	lsls r0, r2, #1
	ldr r4, [sp, #0x64]
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x68]
	bl sub_08155128
	ldr r2, [sp, #0x68]
_081397D4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _08139760
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081397F0: .4byte gUnk_083864B4
_081397F4: .4byte gUnk_08386560
_081397F8: .4byte 0x00000143

	thumb_func_start sub_081397FC
sub_081397FC: @ 0x081397FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #0x30]
	movs r7, #0
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x38]
	add r1, sp, #0x14
	mov sl, r1
	ldr r2, _0813984C @ =gUnk_08386568
	mov r8, r2
	add r3, sp, #0x2c
	mov sb, r3
	ldr r4, _08139850 @ =gUnk_08386580
	mov ip, r4
	adds r0, #0x14
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x30]
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r3, [r0]
	movs r6, #0
	ldr r2, [sp, #0x38]
	movs r5, #2
	movs r4, #3
_08139838:
	cmp r3, r7
	bne _08139854
	mov r1, sp
	adds r0, r1, r7
	strb r5, [r0]
	lsls r0, r7, #2
	adds r0, r2, r0
	str r6, [r0]
	b _08139864
	.align 2, 0
_0813984C: .4byte gUnk_08386568
_08139850: .4byte gUnk_08386580
_08139854:
	mov r1, sp
	adds r0, r1, r7
	strb r4, [r0]
	lsls r0, r7, #2
	adds r0, r2, r0
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0]
_08139864:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08139838
	mov r1, sl
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r0, sb
	mov r1, ip
	movs r2, #3
	bl memcpy
	movs r7, #0
	ldr r0, [sp, #0x30]
	movs r1, #0xad
	lsls r1, r1, #2
	adds r6, r0, r1
	movs r2, #0
	mov r8, r2
	ldr r5, _08139A28 @ =0x0000FFC0
_08139894:
	lsls r4, r7, #3
	add r4, sl
	ldrh r0, [r4, #4]
	bl sub_081570B0
	str r0, [r6]
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r6, #0x14]
	ldrh r0, [r4]
	strh r0, [r6, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r6, #0x1a]
	mov r3, r8
	strh r3, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	mov r4, sb
	adds r0, r4, r7
	ldrb r0, [r0]
	strb r0, [r6, #0x1f]
	strh r5, [r6, #0x10]
	strh r5, [r6, #0x12]
	mov r0, r8
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _08139894
	ldr r1, _08139A2C @ =gUnk_08386583
	mov r0, sl
	movs r2, #4
	bl memcpy
	ldr r1, _08139A30 @ =gUnk_08386588
	ldr r0, [sp, #0x3c]
	movs r2, #8
	bl memcpy
	movs r7, #0
	ldr r1, _08139A34 @ =gUnk_08385CD4
	mov sb, r1
	ldr r2, _08139A38 @ =gUnk_08D60A80
	mov r8, r2
_081398F8:
	lsls r5, r7, #2
	adds r0, r5, r7
	lsls r0, r0, #3
	movs r3, #0xb7
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r4, [sp, #0x30]
	adds r6, r4, r0
	adds r4, r7, #0
	adds r4, #0x13
	lsls r4, r4, #3
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sb
	ldrh r0, [r0, #4]
	bl sub_081570B0
	str r0, [r6]
	mov r1, sl
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #6
	strh r0, [r6, #0x14]
	mov r2, r8
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r4, r0
	add r4, sb
	ldrh r0, [r4, #2]
	strb r0, [r6, #0x1a]
	movs r3, #0
	strh r3, [r6, #0x16]
	movs r4, #1
	rsbs r4, r4, #0
	add r0, sp, #0x34
	strb r4, [r0]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r1, #0x10
	strb r1, [r6, #0x1c]
	mov r2, sp
	adds r0, r2, r7
	ldrb r0, [r0]
	strb r0, [r6, #0x1f]
	movs r0, #0xf0
	strh r0, [r6, #0x10]
	lsls r0, r7, #1
	ldr r3, [sp, #0x3c]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r6, #0x12]
	ldr r4, [sp, #0x38]
	adds r5, r4, r5
	ldr r0, [r5]
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _081398F8
	ldr r0, [sp, #0x30]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r6, r0, r1
	ldr r5, _08139A34 @ =gUnk_08385CD4
	ldr r4, _08139A38 @ =gUnk_08D60A80
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xbc
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r6]
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xb8
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xba
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	ldrb r0, [r6, #0x1b]
	add r3, sp, #0x34
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r6, #0x1b]
	movs r4, #0x10
	strb r4, [r6, #0x1c]
	movs r0, #5
	strb r0, [r6, #0x1f]
	movs r0, #0x80
	strh r0, [r6, #0x10]
	ldr r0, _08139A28 @ =0x0000FFC0
	strh r0, [r6, #0x12]
	str r2, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08139A28: .4byte 0x0000FFC0
_08139A2C: .4byte gUnk_08386583
_08139A30: .4byte gUnk_08386588
_08139A34: .4byte gUnk_08385CD4
_08139A38: .4byte gUnk_08D60A80

	thumb_func_start sub_08139A3C
sub_08139A3C: @ 0x08139A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp, #0x38]
	ldrb r6, [r0, #0xa]
	movs r1, #0xad
	lsls r1, r1, #2
	adds r7, r0, r1
	movs r0, #0
	bl sub_081570B0
	str r0, [r7]
	movs r2, #0
	mov sb, r2
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	movs r0, #0xd7
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	movs r4, #3
	strb r4, [r7, #0x1a]
	mov r1, sb
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #6
	strb r0, [r7, #0x1f]
	subs r0, #0x46
	strh r0, [r7, #0x10]
	adds r1, r0, #0
	strh r1, [r7, #0x12]
	mov r2, sb
	str r2, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r0, #0
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldr r0, _08139E78 @ =0x00000355
	strh r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	mov r1, sb
	strh r1, [r7, #0x16]
	subs r0, #2
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	subs r0, #0x3f
	strh r0, [r7, #0x10]
	adds r1, r0, #0
	strh r1, [r7, #0x12]
	mov r2, sb
	str r2, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [sp, #0x38]
	movs r1, #0xea
	lsls r1, r1, #2
	adds r7, r0, r1
	ldr r5, _08139E7C @ =gUnk_08385CD4
	ldr r4, _08139E80 @ =gUnk_08D60A80
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xc4
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xc0
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xc2
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	mov r2, sb
	strh r2, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #5
	strb r0, [r7, #0x1f]
	movs r0, #0x78
	strh r0, [r7, #0x10]
	movs r0, #0x5c
	strh r0, [r7, #0x12]
	mov r1, sb
	str r1, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r2, [sp, #0x38]
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r7, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xd4
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xd0
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xd2
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	mov r1, sb
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #7
	strb r0, [r7, #0x1f]
	movs r0, #0x74
	strh r0, [r7, #0x10]
	movs r0, #0x56
	strh r0, [r7, #0x12]
	mov r0, sb
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #0x30]
	add r1, sp, #0x18
	strh r0, [r1]
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r2, [r0, #0x32]
	mov r0, sp
	adds r0, #0x1a
	strh r2, [r0]
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r2, [r0, #0x34]
	add r0, sp, #0x1c
	strh r2, [r0]
	add r3, sp, #0x20
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #0x38]
	strh r0, [r3]
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #0x3a]
	strh r0, [r3, #2]
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #0x3c]
	strh r0, [r3, #4]
	add r3, sp, #0x28
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r3]
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r3, #2]
	ldrh r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x44
	ldrh r0, [r0]
	strh r0, [r3, #4]
	mov r0, sp
	movs r2, #0x18
	bl memcpy
	lsls r1, r6, #2
	str r1, [sp, #0x40]
	adds r0, r1, r6
	lsls r0, r0, #3
	str r0, [sp, #0x44]
	adds r0, #0x34
	ldr r2, [sp, #0x38]
	adds r7, r2, r0
	lsls r0, r6, #3
	mov r1, sp
	adds r4, r1, r0
	ldrh r0, [r4, #4]
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r7, #0x1a]
	mov r2, sb
	strh r2, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	add r1, sp, #0x3c
	strb r0, [r1]
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #2
	mov sl, r0
	mov r1, sl
	strb r1, [r7, #0x1f]
	movs r0, #0xf0
	strh r0, [r7, #0x10]
	movs r0, #0x1b
	strh r0, [r7, #0x12]
	mov r2, sb
	str r2, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	mov r8, r0
	ldr r0, [sp, #0x38]
	add r0, r8
	ldr r2, _08139E84 @ =0x00000193
	adds r1, r0, r2
	mov r2, sl
	strb r2, [r1]
	ldr r2, _08139E88 @ =0x0000016B
	adds r1, r0, r2
	mov r2, sl
	strb r2, [r1]
	ldr r1, _08139E8C @ =0x00000143
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, [sp, #0x38]
	adds r0, #7
	adds r6, r0, r6
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0x64
	bne _08139D3E
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, r8
	ldr r2, [sp, #0x38]
	adds r7, r2, r0
	ldr r4, _08139E90 @ =gUnk_083864B4
	ldrh r0, [r4, #0xc]
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldrh r0, [r4, #8]
	strh r0, [r7, #0xc]
	ldrh r0, [r4, #0xa]
	strb r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	mov r0, sl
	strb r0, [r7, #0x1f]
	movs r0, #0xcc
	lsls r0, r0, #1
	strh r0, [r7, #0x10]
	movs r0, #0x23
	strh r0, [r7, #0x12]
	mov r1, sb
	str r1, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
_08139D3E:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #9
	ble _08139DAE
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	movs r5, #0x92
	lsls r5, r5, #1
	add r5, r8
	ldr r2, [sp, #0x38]
	adds r5, r2, r5
	adds r7, r5, #0
	adds r7, #0x28
	ldr r0, _08139E90 @ =gUnk_083864B4
	lsrs r4, r4, #0x15
	adds r4, r4, r0
	ldrh r0, [r4, #4]
	bl sub_081570B0
	str r0, [r5, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	mov r0, sl
	strb r0, [r7, #0x1f]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r7, #0x10]
	movs r0, #0x23
	strh r0, [r7, #0x12]
	mov r1, sb
	str r1, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
_08139DAE:
	movs r0, #0
	ldrsb r0, [r6, r0]
	movs r1, #0xa
	bl __modsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	movs r5, #0x92
	lsls r5, r5, #1
	add r5, r8
	ldr r2, [sp, #0x38]
	adds r5, r2, r5
	adds r7, r5, #0
	adds r7, #0x50
	ldr r0, _08139E90 @ =gUnk_083864B4
	lsrs r4, r4, #0x15
	adds r4, r4, r0
	ldrh r0, [r4, #4]
	bl sub_081570B0
	str r0, [r5, #0x50]
	movs r0, #0xa0
	lsls r0, r0, #3
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x14]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r7, #0x1a]
	mov r2, sb
	strh r2, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	mov r0, sl
	strb r0, [r7, #0x1f]
	movs r0, #0xd4
	lsls r0, r0, #1
	strh r0, [r7, #0x10]
	movs r0, #0x23
	strh r0, [r7, #0x12]
	mov r1, sb
	str r1, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r1, _08139E94 @ =gUnk_08386590
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	ldr r2, [sp, #0x38]
	movs r0, #0xad
	lsls r0, r0, #2
	adds r7, r2, r0
	mov r1, sb
	str r1, [r7]
	movs r2, #0xff
	lsls r2, r2, #6
	strh r2, [r7, #0x14]
	ldr r0, [sp, #0x40]
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	mov r0, sp
	adds r0, #2
	ldr r1, [sp, #0x40]
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	mov r2, sb
	strh r2, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r5, #4
	strb r5, [r7, #0x1f]
	movs r0, #0x40
	rsbs r0, r0, #0
	strh r0, [r7, #0x10]
	adds r1, r0, #0
	strh r1, [r7, #0x12]
	mov r2, sb
	str r2, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r0, #0
	ldrsb r0, [r6, r0]
	bl sub_08143498
	b _08139E98
	.align 2, 0
_08139E78: .4byte 0x00000355
_08139E7C: .4byte gUnk_08385CD4
_08139E80: .4byte gUnk_08D60A80
_08139E84: .4byte 0x00000193
_08139E88: .4byte 0x0000016B
_08139E8C: .4byte 0x00000143
_08139E90: .4byte gUnk_083864B4
_08139E94: .4byte gUnk_08386590
_08139E98:
	cmp r0, #0
	beq _08139EEC
	add r4, sp, #0x30
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r0, r4, #0
	bl sub_0813AF5C
	ldr r0, [sp, #0x44]
	adds r0, #0xac
	ldr r1, [sp, #0x38]
	adds r7, r1, r0
	ldrh r0, [r4, #4]
	bl sub_081570B0
	str r0, [r7]
	mov r2, r8
	strh r2, [r7, #0x14]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	ldr r0, _08139F50 @ =0x00000143
	strh r0, [r7, #0x10]
	movs r0, #0x27
	strh r0, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
_08139EEC:
	movs r4, #0
	movs r1, #0
	mov r8, r1
	movs r5, #0
	ldr r6, _08139F54 @ =0x0000035D
_08139EF6:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [sp, #0x38]
	adds r7, r1, r0
	movs r0, #0x90
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	strh r6, [r7, #0xc]
	mov r2, r8
	strb r2, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #8
	strb r0, [r7, #0x1f]
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08139EF6
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08139F50: .4byte 0x00000143
_08139F54: .4byte 0x0000035D

	thumb_func_start sub_08139F58
sub_08139F58: @ 0x08139F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r7, #0x8f
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0x54
	bl sub_081570B0
	str r0, [r7]
	movs r4, #0
	movs r5, #0
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r1, _0813A108 @ =0x0000035E
	mov r8, r1
	mov r0, r8
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	mov sb, r1
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #2
	strb r1, [r7, #0x1f]
	movs r6, #0x78
	strh r6, [r7, #0x10]
	movs r4, #0x3c
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	movs r7, #0x94
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0x10
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xc]
	movs r0, #3
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r0, #3
	strb r0, [r7, #0x1f]
	strh r6, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	movs r7, #0x99
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0x32
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	subs r0, #2
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #2
	strb r1, [r7, #0x1f]
	ldr r4, _0813A10C @ =0x0000FFC0
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	movs r7, #0x9e
	lsls r7, r7, #3
	add r7, sl
	movs r0, #8
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xc]
	movs r0, #4
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	subs r0, #5
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #3
	strb r1, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	movs r7, #0xa3
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0x28
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xc]
	movs r0, #2
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r0, #2
	strb r0, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	movs r7, #0xa8
	lsls r7, r7, #3
	add r7, sl
	movs r0, #8
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xc]
	movs r0, #5
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	subs r0, #6
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #3
	strb r1, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813A108: .4byte 0x0000035E
_0813A10C: .4byte 0x0000FFC0

	thumb_func_start sub_0813A110
sub_0813A110: @ 0x0813A110
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	movs r7, #0xad
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0x12
	bl sub_081570B0
	str r0, [r7]
	movs r6, #0
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r1, _0813A450 @ =0x0000035E
	strh r1, [r7, #0xc]
	movs r0, #6
	strb r0, [r7, #0x1a]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #2
	mov sb, r0
	mov r1, sb
	strb r1, [r7, #0x1f]
	movs r0, #0x82
	strh r0, [r7, #0x10]
	movs r0, #0x12
	strh r0, [r7, #0x12]
	str r6, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r3, #0x80
	lsls r3, r3, #0xc
	mov r8, r3
	orrs r0, r3
	str r0, [r7, #8]
	movs r7, #0xb2
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0x38
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r1, _0813A450 @ =0x0000035E
	strh r1, [r7, #0xc]
	movs r0, #7
	strb r0, [r7, #0x1a]
	strh r6, [r7, #0x16]
	subs r0, #8
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	movs r0, #0x7a
	strh r0, [r7, #0x10]
	movs r0, #0x30
	strh r0, [r7, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xb
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	mov r1, r8
	orrs r0, r1
	str r0, [r7, #8]
	movs r7, #0xb7
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0x93
	bl sub_081570B0
	str r0, [r7]
	movs r3, #0xf8
	lsls r3, r3, #3
	strh r3, [r7, #0x14]
	ldr r0, _0813A450 @ =0x0000035E
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	strh r6, [r7, #0x16]
	subs r0, #9
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	mov r3, sb
	strb r3, [r7, #0x1f]
	ldr r4, _0813A454 @ =0x0000FFC0
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	mov r1, r8
	orrs r0, r1
	str r0, [r7, #8]
	movs r7, #0xbc
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0xf0
	bl sub_081570B0
	str r0, [r7]
	movs r3, #0xf8
	lsls r3, r3, #3
	strh r3, [r7, #0x14]
	ldr r0, _0813A450 @ =0x0000035E
	strh r0, [r7, #0xc]
	movs r0, #9
	strb r0, [r7, #0x1a]
	strh r6, [r7, #0x16]
	subs r0, #0xa
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	mov r3, sb
	strb r3, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	mov r1, r8
	orrs r0, r1
	str r0, [r7, #8]
	ldr r3, _0813A458 @ =gUnk_08385CD4
	mov r8, r3
	ldr r5, _0813A45C @ =gUnk_08D60A80
_0813A234:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r3, sl
	adds r7, r3, r0
	adds r4, r6, #0
	adds r4, #0x1b
	lsls r4, r4, #3
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, r8
	ldrh r0, [r0, #4]
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r4, r0
	add r4, r8
	ldrh r0, [r4, #2]
	strb r0, [r7, #0x1a]
	movs r1, #0
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sp
	strb r0, [r3, #8]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r3, #4
	strb r3, [r7, #0x1f]
	movs r0, #0x9b
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r7, #0x10]
	ldr r0, _0813A460 @ =0x000004DA
	add r0, sl
	ldrh r0, [r0]
	adds r0, #0x10
	strh r0, [r7, #0x12]
	movs r0, #0
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	mov sb, r1
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813A234
	movs r7, #0xc1
	lsls r7, r7, #3
	add r7, sl
	ldr r4, _0813A458 @ =gUnk_08385CD4
	ldr r5, _0813A45C @ =gUnk_08D60A80
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0xfc
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r7]
	movs r2, #0
	movs r3, #0xf0
	lsls r3, r3, #2
	strh r3, [r7, #0x14]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0xf8
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0xfa
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	strh r2, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	mov r1, sp
	ldrb r1, [r1, #8]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #4
	strb r0, [r7, #0x1f]
	movs r0, #0xc4
	strh r0, [r7, #0x10]
	movs r0, #0x30
	strh r0, [r7, #0x12]
	str r2, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	mov r1, sb
	orrs r0, r1
	str r0, [r7, #8]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [sp]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [sp, #4]
	movs r3, #0
	mov sb, r4
	mov r8, r5
_0813A398:
	movs r6, #0
	lsls r0, r3, #2
	adds r5, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	movs r1, #0xda
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, sl
	adds r4, r1, r0
_0813A3AC:
	lsls r1, r6, #2
	adds r0, r1, r6
	lsls r0, r0, #3
	adds r7, r4, r0
	add r1, sp
	ldr r0, [r1]
	str r0, [r7]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	adds r2, r6, #0
	adds r2, #0x20
	lsls r2, r2, #3
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r2, r0
	add r2, sb
	ldrh r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r1, #0
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #4
	strb r0, [r7, #0x1f]
	lsls r0, r6, #6
	adds r0, #0xad
	strh r0, [r7, #0x10]
	movs r0, #0x5e
	strh r0, [r7, #0x12]
	movs r1, #0x20
	adds r0, r3, #0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #0xc]
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r6, #1
	bls _0813A3AC
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0813A398
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813A450: .4byte 0x0000035E
_0813A454: .4byte 0x0000FFC0
_0813A458: .4byte gUnk_08385CD4
_0813A45C: .4byte gUnk_08D60A80
_0813A460: .4byte 0x000004DA

	thumb_func_start sub_0813A464
sub_0813A464: @ 0x0813A464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp, #0x1c]
	mov r1, sp
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	add r1, sp, #4
	strb r0, [r1]
	str r2, [sp, #8]
	movs r2, #1
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x20]
	adds r1, #0x14
	str r1, [sp, #0x28]
	movs r1, #3
	add r5, sp, #4
	adds r4, r0, #0
	movs r3, #0x80
	lsls r3, r3, #0xb
_0813A496:
	mov r6, sp
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r5, r2
	strb r1, [r0]
	lsls r0, r2, #2
	adds r0, r4, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0813A496
	ldr r0, [sp, #0x1c]
	movs r1, #0xad
	lsls r1, r1, #2
	adds r7, r0, r1
	movs r0, #0
	bl sub_081570B0
	str r0, [r7]
	movs r1, #0
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldr r0, _0813A5B8 @ =0x0000035E
	strh r0, [r7, #0xc]
	movs r0, #0xa
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #3
	strb r0, [r7, #0x1f]
	ldr r0, _0813A5BC @ =0x0000FFC0
	strh r0, [r7, #0x10]
	strh r0, [r7, #0x12]
	str r1, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r2, #0
	ldr r3, _0813A5C0 @ =gUnk_08385CD4
	mov sb, r3
	ldr r6, _0813A5C4 @ =gUnk_08D60A80
	mov r8, r6
	mov sl, r2
_0813A4F8:
	lsls r6, r2, #2
	adds r5, r6, r2
	lsls r0, r5, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r7, r3, r0
	adds r4, r2, #0
	adds r4, #0x22
	lsls r4, r4, #3
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sb
	ldrh r0, [r0, #4]
	str r2, [sp, #0x30]
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r3, r8
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r4, r0
	add r4, sb
	ldrh r0, [r4, #2]
	strb r0, [r7, #0x1a]
	mov r0, sl
	strh r0, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r2, [sp, #0x30]
	mov r1, sp
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	movs r0, #0x58
	strh r0, [r7, #0x10]
	lsls r5, r5, #2
	adds r5, r5, r2
	adds r5, #0x1b
	strh r5, [r7, #0x12]
	ldr r3, [sp, #0x20]
	adds r6, r3, r6
	ldr r0, [r6]
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x30]
	bl sub_08155128
	ldr r2, [sp, #0x30]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0813A4F8
	movs r2, #0
	ldr r6, [sp, #0x28]
_0813A59C:
	ldr r1, [sp, #0x1c]
	ldr r3, _0813A5C8 @ =0x000009C4
	adds r0, r1, r3
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0
	bge _0813A5CC
	movs r0, #0
	strb r0, [r6, #2]
	strb r0, [r6, #1]
	strb r0, [r6]
	b _0813A600
	.align 2, 0
_0813A5B8: .4byte 0x0000035E
_0813A5BC: .4byte 0x0000FFC0
_0813A5C0: .4byte gUnk_08385CD4
_0813A5C4: .4byte gUnk_08D60A80
_0813A5C8: .4byte 0x000009C4
_0813A5CC:
	movs r4, #0x64
	adds r0, r5, #0
	movs r1, #0x64
	str r2, [sp, #0x30]
	bl __divsi3
	strb r0, [r6]
	ldrb r0, [r6]
	muls r4, r0, r4
	subs r4, r5, r4
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	strb r0, [r6, #1]
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r0, r4, #0x18
	strb r0, [r6, #2]
	ldr r2, [sp, #0x30]
_0813A600:
	movs r5, #0
	adds r1, r2, #1
	str r1, [sp, #0x24]
	lsls r0, r2, #4
	movs r3, #0xc8
	lsls r3, r3, #0x10
	str r3, [sp, #0x2c]
	subs r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0813A6C8 @ =0x000007E4
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r3, r3, r0
	mov sl, r3
	lsls r0, r2, #2
	mov r8, r0
	ldr r1, [sp, #0x20]
	add r1, r8
	mov sb, r1
_0813A626:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r3, sl
	adds r7, r3, r0
	ldr r0, [sp, #0x28]
	adds r4, r0, r5
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _0813A6CC @ =gUnk_083864B4
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	str r2, [sp, #0x30]
	bl sub_081570B0
	str r0, [r7]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r3, _0813A6CC @ =gUnk_083864B4
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r2, [sp, #0x30]
	mov r0, sp
	adds r0, r0, r2
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r7, #0x1f]
	lsls r1, r5, #3
	ldr r3, [sp, #0x2c]
	asrs r0, r3, #0x10
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, r8
	adds r0, r1, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x22
	strh r0, [r7, #0x12]
	mov r3, sb
	ldr r0, [r3]
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x30]
	bl sub_08155128
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #0x30]
	cmp r5, #2
	bls _0813A626
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0813A6B6
	b _0813A59C
_0813A6B6:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813A6C8: .4byte 0x000007E4
_0813A6CC: .4byte gUnk_083864B4

	thumb_func_start sub_0813A6D0
sub_0813A6D0: @ 0x0813A6D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sb, r0
	adds r0, #4
	mov r1, sb
	ldrb r1, [r1, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	mov r1, sp
	ldr r0, _0813A794 @ =gUnk_08386568
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x18
	ldr r1, _0813A798 @ =gUnk_08386580
	adds r0, r4, #0
	movs r2, #3
	bl memcpy
	movs r7, #0
	mov sl, r4
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x20]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x24]
	movs r6, #0xad
	lsls r6, r6, #2
	add r6, sb
	movs r2, #0
	mov r8, r2
	ldr r5, _0813A79C @ =0x0000FFC0
_0813A71E:
	lsls r0, r7, #3
	mov r3, sp
	adds r4, r3, r0
	ldrh r0, [r4, #4]
	bl sub_081570B0
	str r0, [r6]
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r6, #0x14]
	ldrh r0, [r4]
	strh r0, [r6, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r6, #0x1a]
	mov r4, r8
	strh r4, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	mov r1, sl
	adds r0, r1, r7
	ldrb r0, [r0]
	strb r0, [r6, #0x1f]
	strh r5, [r6, #0x10]
	strh r5, [r6, #0x12]
	mov r2, r8
	str r2, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0813A71E
	ldr r1, _0813A7A0 @ =gUnk_08386583
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r7, #0
	ldr r0, _0813A7A4 @ =0x000009CA
	add r0, sb
	ldrb r4, [r0]
	ldr r3, [sp, #0x20]
	movs r0, #0
	mov r8, r0
	ldr r2, [sp, #0x24]
	movs r6, #2
	movs r5, #3
_0813A784:
	cmp r4, r7
	bne _0813A7A8
	adds r0, r3, r7
	strb r6, [r0]
	lsls r0, r7, #2
	adds r0, r2, r0
	mov r1, r8
	b _0813A7B4
	.align 2, 0
_0813A794: .4byte gUnk_08386568
_0813A798: .4byte gUnk_08386580
_0813A79C: .4byte 0x0000FFC0
_0813A7A0: .4byte gUnk_08386583
_0813A7A4: .4byte 0x000009CA
_0813A7A8:
	adds r0, r3, r7
	strb r5, [r0]
	lsls r0, r7, #2
	adds r0, r2, r0
	movs r1, #0x80
	lsls r1, r1, #0xb
_0813A7B4:
	str r1, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0813A784
	movs r7, #0
	ldr r2, _0813A854 @ =gUnk_08385CD4
	mov sl, r2
	ldr r3, _0813A858 @ =gUnk_08D60A80
	mov r8, r3
_0813A7CA:
	lsls r5, r7, #2
	adds r0, r5, r7
	lsls r0, r0, #3
	movs r4, #0xb7
	lsls r4, r4, #2
	adds r0, r0, r4
	mov r1, sb
	adds r6, r1, r0
	adds r4, r7, #0
	adds r4, #0x26
	lsls r4, r4, #3
	mov r2, r8
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sl
	ldrh r0, [r0, #4]
	bl sub_081570B0
	str r0, [r6]
	mov r3, sp
	adds r0, r3, r7
	ldrb r0, [r0]
	lsls r0, r0, #6
	strh r0, [r6, #0x14]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	mov r2, r8
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r4, r0
	add r4, sl
	ldrh r0, [r4, #2]
	strb r0, [r6, #0x1a]
	movs r3, #0
	strh r3, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	ldr r4, [sp, #0x20]
	adds r0, r4, r7
	ldrb r0, [r0]
	strb r0, [r6, #0x1f]
	movs r0, #0xf0
	strh r0, [r6, #0x10]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0813A85C
	lsls r0, r7, #3
	adds r0, #0x2b
	b _0813A860
	.align 2, 0
_0813A854: .4byte gUnk_08385CD4
_0813A858: .4byte gUnk_08D60A80
_0813A85C:
	lsls r0, r7, #3
	adds r0, #0x1b
_0813A860:
	strh r0, [r6, #0x12]
	ldr r1, [sp, #0x24]
	adds r0, r1, r5
	ldr r0, [r0]
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0813A7CA
	movs r6, #0xdf
	lsls r6, r6, #2
	add r6, sb
	ldr r5, _0813A8FC @ =gUnk_08385CD4
	ldr r4, _0813A900 @ =gUnk_08D60A80
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xbc
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r6]
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xb8
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0xba
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r0, #5
	strb r0, [r6, #0x1f]
	movs r0, #0x80
	strh r0, [r6, #0x10]
	ldr r0, _0813A904 @ =0x0000FFC0
	strh r0, [r6, #0x12]
	str r2, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813A8FC: .4byte gUnk_08385CD4
_0813A900: .4byte gUnk_08D60A80
_0813A904: .4byte 0x0000FFC0

	thumb_func_start sub_0813A908
sub_0813A908: @ 0x0813A908
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r6, #0
	mov sb, r6
_0813A916:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r5, r0, #3
	adds r0, r7, #0
	adds r0, #0x34
	adds r4, r0, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0813A930
	bl sub_08157190
	mov r0, sb
	str r0, [r4]
_0813A930:
	adds r4, r7, #7
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_08143498
	mov r8, r4
	cmp r0, #0
	beq _0813A958
	adds r0, r7, #0
	adds r0, #0xac
	adds r4, r0, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0813A958
	bl sub_08157190
	mov r1, sb
	str r1, [r4]
_0813A958:
	mov r2, r8
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r5, r6, #4
	cmp r0, #0x64
	bne _0813A982
	subs r0, r5, r6
	lsls r0, r0, #3
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813A982
	bl sub_08157190
	mov r0, sb
	str r0, [r4]
_0813A982:
	mov r1, r8
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _0813A9AA
	subs r0, r5, r6
	lsls r0, r0, #3
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813A9AA
	bl sub_08157190
	mov r0, sb
	str r0, [r4]
_0813A9AA:
	subs r0, r5, r6
	lsls r0, r0, #3
	movs r2, #0xba
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813A9C4
	bl sub_08157190
	mov r0, sb
	str r0, [r4]
_0813A9C4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0813A916
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813A9DC
sub_0813A9DC: @ 0x0813A9DC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813A9F4
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813A9F4:
	movs r0, #0xc1
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AA08
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AA08:
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AA1C
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AA1C:
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AA30
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AA30:
	movs r0, #0xdf
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AA44
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AA44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813AA4C
sub_0813AA4C: @ 0x0813AA4C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r7, [r6, #0xa]
	movs r0, #0xea
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AA66
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AA66:
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AA7A
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AA7A:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #3
	adds r0, r6, #0
	adds r0, #0x34
	adds r4, r0, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AA94
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AA94:
	adds r0, r6, #0
	adds r0, #0xac
	adds r4, r0, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AAA8
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AAA8:
	ldr r2, _0813AB3C @ =0x00000472
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r5, r7, #4
	cmp r0, #0x64
	bne _0813AACE
	subs r0, r5, r7
	lsls r0, r0, #3
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AACE
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AACE:
	ldr r1, _0813AB3C @ =0x00000472
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #9
	bls _0813AAF2
	subs r0, r5, r7
	lsls r0, r0, #3
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AAF2
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AAF2:
	subs r0, r5, r7
	lsls r0, r0, #3
	movs r2, #0xba
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AB0C
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AB0C:
	movs r5, #0
_0813AB0E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AB2A
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AB2A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813AB0E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813AB3C: .4byte 0x00000472

	thumb_func_start sub_0813AB40
sub_0813AB40: @ 0x0813AB40
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x8f
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AB58
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AB58:
	movs r0, #0x94
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AB6C
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AB6C:
	movs r0, #0x99
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AB80
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AB80:
	movs r0, #0x9e
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AB94
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AB94:
	movs r0, #0xa3
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813ABA8
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813ABA8:
	movs r0, #0xa8
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813ABBC
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813ABBC:
	movs r0, #0xad
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813ABD0
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813ABD0:
	movs r0, #0xb2
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813ABE4
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813ABE4:
	movs r0, #0xb7
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813ABF8
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813ABF8:
	movs r0, #0xbc
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AC0C
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AC0C:
	movs r0, #0xc1
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AC20
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AC20:
	movs r0, #0xda
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AC34
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AC34:
	movs r0, #0xdf
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AC48
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AC48:
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AC5C
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AC5C:
	movs r0, #0xcb
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AC70
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AC70:
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0813AC84
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_0813AC84:
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AC98
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AC98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813ACA0
sub_0813ACA0: @ 0x0813ACA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
_0813ACAE:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813ACCA
	bl sub_08157190
	mov r0, r8
	str r0, [r4]
_0813ACCA:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r5, r0, #3
	ldr r1, _0813AD20 @ =0x000007E4
	adds r0, r6, r1
	adds r4, r0, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0813ACE4
	bl sub_08157190
	mov r2, r8
	str r2, [r4]
_0813ACE4:
	ldr r1, _0813AD24 @ =0x0000080C
	adds r0, r6, r1
	adds r4, r0, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0813ACF8
	bl sub_08157190
	mov r2, r8
	str r2, [r4]
_0813ACF8:
	ldr r1, _0813AD28 @ =0x00000834
	adds r0, r6, r1
	adds r4, r0, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AD0C
	bl sub_08157190
	mov r2, r8
	str r2, [r4]
_0813AD0C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0813ACAE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813AD20: .4byte 0x000007E4
_0813AD24: .4byte 0x0000080C
_0813AD28: .4byte 0x00000834

	thumb_func_start sub_0813AD2C
sub_0813AD2C: @ 0x0813AD2C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AD44
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AD44:
	movs r0, #0xc1
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AD58
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AD58:
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AD6C
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AD6C:
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AD80
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AD80:
	movs r0, #0xdf
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0813AD94
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0813AD94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813AD9C
sub_0813AD9C: @ 0x0813AD9C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_0815604C
	movs r6, #0
_0813ADB2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r7, r0
	bl sub_0815604C
	adds r0, r7, #7
	adds r5, r0, r6
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_08143498
	cmp r0, #0
	beq _0813ADDC
	adds r0, r4, #0
	adds r0, #0xac
	adds r0, r7, r0
	bl sub_0815604C
_0813ADDC:
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r4, r6, #4
	cmp r0, #0x64
	bne _0813ADF6
	subs r0, r4, r6
	lsls r0, r0, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r7, r0
	bl sub_0815604C
_0813ADF6:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #9
	ble _0813AE0E
	subs r0, r4, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0815604C
_0813AE0E:
	subs r0, r4, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0815604C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0813ADB2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813AE30
sub_0813AE30: @ 0x0813AE30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	mov r8, r4
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r7, r0, #3
	adds r0, r7, #0
	adds r0, #0x34
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r5, #7
	adds r6, r0, r4
	movs r0, #0
	ldrsb r0, [r6, r0]
	bl sub_08143498
	cmp r0, #0
	beq _0813AE76
	adds r0, r7, #0
	adds r0, #0xac
	adds r0, r5, r0
	bl sub_0815604C
_0813AE76:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0x64
	bne _0813AE90
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
_0813AE90:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #9
	ble _0813AEAA
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0815604C
_0813AEAA:
	mov r1, r8
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0813AEC8
sub_0813AEC8: @ 0x0813AEC8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r7, #0
	b _0813AF3A
_0813AEE0:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	ldr r1, _0813AF4C @ =0x000009C4
	adds r0, r5, r1
	adds r6, r0, r7
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r4, r7, #4
	cmp r0, #0x64
	bne _0813AF10
	subs r0, r4, r7
	lsls r0, r0, #3
	ldr r1, _0813AF50 @ =0x000007E4
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
_0813AF10:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #9
	ble _0813AF26
	subs r0, r4, r7
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _0813AF54 @ =0x0000080C
	adds r0, r0, r1
	bl sub_0815604C
_0813AF26:
	subs r0, r4, r7
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _0813AF58 @ =0x00000834
	adds r0, r0, r1
	bl sub_0815604C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0813AF3A:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r7, r0
	blo _0813AEE0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813AF4C: .4byte 0x000009C4
_0813AF50: .4byte 0x000007E4
_0813AF54: .4byte 0x0000080C
_0813AF58: .4byte 0x00000834

	thumb_func_start sub_0813AF5C
sub_0813AF5C: @ 0x0813AF5C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #9
	bgt _0813AF6C
	movs r0, #0
	b _0813B25E
_0813AF6C:
	cmp r1, #0x13
	bgt _0813AFB8
	ldr r3, _0813AFB0 @ =gUnk_08385CD4
	ldr r2, _0813AFB4 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x48
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x4c
	b _0813B258
	.align 2, 0
_0813AFB0: .4byte gUnk_08385CD4
_0813AFB4: .4byte gUnk_08D60A80
_0813AFB8:
	cmp r1, #0x1d
	bgt _0813B004
	ldr r3, _0813AFFC @ =gUnk_08385CD4
	ldr r2, _0813B000 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x54
	b _0813B258
	.align 2, 0
_0813AFFC: .4byte gUnk_08385CD4
_0813B000: .4byte gUnk_08D60A80
_0813B004:
	cmp r1, #0x27
	bgt _0813B050
	ldr r3, _0813B048 @ =gUnk_08385CD4
	ldr r2, _0813B04C @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x58
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x5a
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x5c
	b _0813B258
	.align 2, 0
_0813B048: .4byte gUnk_08385CD4
_0813B04C: .4byte gUnk_08D60A80
_0813B050:
	cmp r1, #0x31
	bgt _0813B09C
	ldr r3, _0813B094 @ =gUnk_08385CD4
	ldr r2, _0813B098 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x64
	b _0813B258
	.align 2, 0
_0813B094: .4byte gUnk_08385CD4
_0813B098: .4byte gUnk_08D60A80
_0813B09C:
	cmp r1, #0x3b
	bgt _0813B0E8
	ldr r3, _0813B0E0 @ =gUnk_08385CD4
	ldr r2, _0813B0E4 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x6c
	b _0813B258
	.align 2, 0
_0813B0E0: .4byte gUnk_08385CD4
_0813B0E4: .4byte gUnk_08D60A80
_0813B0E8:
	cmp r1, #0x45
	bgt _0813B134
	ldr r3, _0813B12C @ =gUnk_08385CD4
	ldr r2, _0813B130 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x74
	b _0813B258
	.align 2, 0
_0813B12C: .4byte gUnk_08385CD4
_0813B130: .4byte gUnk_08D60A80
_0813B134:
	cmp r1, #0x4f
	bgt _0813B180
	ldr r3, _0813B178 @ =gUnk_08385CD4
	ldr r2, _0813B17C @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x7c
	b _0813B258
	.align 2, 0
_0813B178: .4byte gUnk_08385CD4
_0813B17C: .4byte gUnk_08D60A80
_0813B180:
	cmp r1, #0x59
	bgt _0813B1CC
	ldr r3, _0813B1C4 @ =gUnk_08385CD4
	ldr r2, _0813B1C8 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x84
	b _0813B258
	.align 2, 0
_0813B1C4: .4byte gUnk_08385CD4
_0813B1C8: .4byte gUnk_08D60A80
_0813B1CC:
	cmp r1, #0x63
	bgt _0813B218
	ldr r3, _0813B210 @ =gUnk_08385CD4
	ldr r2, _0813B214 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x88
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x8a
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x8c
	b _0813B258
	.align 2, 0
_0813B210: .4byte gUnk_08385CD4
_0813B214: .4byte gUnk_08D60A80
_0813B218:
	cmp r1, #0x64
	bne _0813B25C
	ldr r3, _0813B264 @ =gUnk_08385CD4
	ldr r2, _0813B268 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x90
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x92
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x94
_0813B258:
	ldrh r0, [r0]
	strh r0, [r4, #4]
_0813B25C:
	movs r0, #1
_0813B25E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0813B264: .4byte gUnk_08385CD4
_0813B268: .4byte gUnk_08D60A80

	thumb_func_start sub_0813B26C
sub_0813B26C: @ 0x0813B26C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	mov sl, r4
	ldrb r7, [r5, #0xb]
	str r7, [sp]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	mov r8, r0
	adds r0, #0x34
	adds r1, r5, r0
	movs r0, #2
	mov sb, r0
	mov r2, sb
	strb r2, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	adds r0, r5, #7
	str r0, [sp, #4]
	adds r6, r0, r4
	movs r0, #0
	ldrsb r0, [r6, r0]
	movs r1, #1
	cmp r0, #9
	bgt _0813B2AE
	movs r1, #0
_0813B2AE:
	cmp r1, #0
	beq _0813B2C2
	mov r0, r8
	adds r0, #0xac
	adds r1, r5, r0
	adds r0, r4, #4
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_0813B2C2:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0x64
	bne _0813B2E2
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, r0
	mov r2, sb
	strb r2, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_0813B2E2:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #9
	ble _0813B302
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r0, r2
	mov r0, sb
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_0813B302:
	mov r1, sl
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0x92
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x50
	mov r0, sb
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r6, r0, #3
	adds r0, r6, #0
	adds r0, #0x34
	adds r1, r5, r0
	movs r2, #3
	mov r8, r2
	mov r0, r8
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	ldr r1, [sp, #4]
	adds r4, r1, r7
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #1
	cmp r0, #9
	bgt _0813B34C
	movs r1, #0
_0813B34C:
	cmp r1, #0
	beq _0813B360
	adds r0, r6, #0
	adds r0, #0xac
	adds r1, r5, r0
	movs r0, #7
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_0813B360:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x64
	bne _0813B37C
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #3
	add r0, sl
	adds r1, r5, r0
	mov r2, r8
	strb r2, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_0813B37C:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #9
	ble _0813B39C
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #3
	add r0, sl
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x28
	mov r0, r8
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_0813B39C:
	ldr r1, [sp]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x50
	mov r2, r8
	strb r2, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813B3C8
sub_0813B3C8: @ 0x0813B3C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r1, _0813B47C @ =0x000009C8
	adds r0, r6, r1
	ldrb r4, [r0]
	adds r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	mov r8, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	mov sl, r1
	add r0, sl
	adds r7, r6, r0
	movs r5, #2
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0813B480 @ =0x000007E4
	mov sb, r1
	add r0, sb
	adds r7, r6, r0
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	adds r4, r7, #0
	adds r7, #0x28
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	adds r7, r4, #0
	adds r7, #0x50
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	lsls r0, r0, #3
	add r0, sl
	adds r7, r6, r0
	movs r4, #3
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	mov r1, r8
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	adds r7, r6, r0
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	adds r5, r7, #0
	adds r7, #0x28
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	adds r7, r5, #0
	adds r7, #0x50
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl sub_08155128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813B47C: .4byte 0x000009C8
_0813B480: .4byte 0x000007E4

	thumb_func_start sub_0813B484
sub_0813B484: @ 0x0813B484
	push {lr}
	ldr r0, _0813B4A0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0813B49A
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0813B4A4
_0813B49A:
	movs r0, #1
	b _0813B4EA
	.align 2, 0
_0813B4A0: .4byte gPressedKeys
_0813B4A4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0813B4B0
	movs r0, #2
	b _0813B4EA
_0813B4B0:
	ldr r0, _0813B4C0 @ =gUnk_03002EB8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0813B4C4
	movs r0, #3
	b _0813B4EA
	.align 2, 0
_0813B4C0: .4byte gUnk_03002EB8
_0813B4C4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0813B4D0
	movs r0, #4
	b _0813B4EA
_0813B4D0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0813B4DC
	movs r0, #5
	b _0813B4EA
_0813B4DC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0813B4E8
	movs r0, #0
	b _0813B4EA
_0813B4E8:
	movs r0, #6
_0813B4EA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0813B4F0
sub_0813B4F0: @ 0x0813B4F0
	push {lr}
	adds r3, r0, #0
	ldr r0, _0813B524 @ =gPrevInput
	ldr r1, _0813B528 @ =gInput
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0813B538
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0813B52C @ =0x1C1F0000
	cmp r0, r1
	bls _0813B542
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0813B530 @ =0x000009CC
	adds r1, r3, r0
	ldr r0, _0813B534 @ =sub_081432B8
	str r0, [r1]
	movs r0, #1
	b _0813B544
	.align 2, 0
_0813B524: .4byte gPrevInput
_0813B528: .4byte gInput
_0813B52C: .4byte 0x1C1F0000
_0813B530: .4byte 0x000009CC
_0813B534: .4byte sub_081432B8
_0813B538:
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
_0813B542:
	movs r0, #0
_0813B544:
	pop {r1}
	bx r1

	thumb_func_start sub_0813B548
sub_0813B548: @ 0x0813B548
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0813B584 @ =0x000007D5
	adds r4, r3, r0
	ldrb r2, [r4]
	cmp r2, #0
	bne _0813B5A0
	ldr r1, _0813B588 @ =0x00000BE8
	adds r5, r3, r1
	ldr r0, [r5]
	movs r6, #0xfa
	lsls r6, r6, #3
	adds r1, r3, r6
	ldrb r0, [r0, #0x11]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0813B594
	movs r0, #1
	strb r0, [r4]
	ldr r1, _0813B58C @ =0x000007D6
	adds r0, r3, r1
	strb r2, [r0]
	ldr r0, [r5]
	ldrb r1, [r0, #0x11]
	ldr r2, _0813B590 @ =0x000007D4
	adds r0, r3, r2
	strb r1, [r0]
	b _0813B614
	.align 2, 0
_0813B584: .4byte 0x000007D5
_0813B588: .4byte 0x00000BE8
_0813B58C: .4byte 0x000007D6
_0813B590: .4byte 0x000007D4
_0813B594:
	ldr r4, _0813B59C @ =0x000007D6
	adds r0, r3, r4
	strb r2, [r0]
	b _0813B614
	.align 2, 0
_0813B59C: .4byte 0x000007D6
_0813B5A0:
	ldr r6, _0813B5C4 @ =0x00000BE8
	adds r0, r3, r6
	ldr r0, [r0]
	ldr r2, _0813B5C8 @ =0x000007D4
	adds r1, r3, r2
	ldrb r2, [r0, #0x11]
	ldrb r0, [r1]
	cmp r2, r0
	beq _0813B5D0
	cmp r0, r2
	bls _0813B5D0
	movs r1, #0
	strb r1, [r4]
	ldr r4, _0813B5CC @ =0x000007D6
	adds r0, r3, r4
	strb r1, [r0]
	b _0813B614
	.align 2, 0
_0813B5C4: .4byte 0x00000BE8
_0813B5C8: .4byte 0x000007D4
_0813B5CC: .4byte 0x000007D6
_0813B5D0:
	ldr r6, _0813B608 @ =0x000007D6
	adds r1, r3, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r5
	blo _0813B614
	ldr r0, _0813B60C @ =gUnk_03000490
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _0813B614
	ldr r0, _0813B610 @ =0x00000BE8
	adds r2, r3, r0
	ldr r0, [r2]
	ldrb r1, [r0, #0x11]
	movs r4, #0xfa
	lsls r4, r4, #3
	adds r0, r3, r4
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r1, [r0, #0x10]
	subs r6, #5
	adds r0, r3, r6
	strb r1, [r0]
	movs r0, #1
	b _0813B616
	.align 2, 0
_0813B608: .4byte 0x000007D6
_0813B60C: .4byte gUnk_03000490
_0813B610: .4byte 0x00000BE8
_0813B614:
	movs r0, #0
_0813B616:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0813B61C
sub_0813B61C: @ 0x0813B61C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0813B680 @ =0x000007DE
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0813B646
	movs r0, #0xfc
	lsls r0, r0, #3
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb3
	bls _0813B6A8
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	strh r0, [r1]
_0813B646:
	ldr r0, _0813B684 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0813B65C
	ldr r1, _0813B688 @ =0x00000BE8
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_08032BBC
_0813B65C:
	ldr r1, _0813B688 @ =0x00000BE8
	adds r0, r4, r1
	ldr r0, [r0]
	ldrh r5, [r0, #0xe]
	cmp r5, #7
	bne _0813B6A8
	bl sub_08032B84
	ldr r0, _0813B68C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813B690 @ =sub_08140198
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813B694
	movs r0, #2
	strb r0, [r4, #2]
	b _0813B69A
	.align 2, 0
_0813B680: .4byte 0x000007DE
_0813B684: .4byte gPressedKeys
_0813B688: .4byte 0x00000BE8
_0813B68C: .4byte 0x000009CC
_0813B690: .4byte sub_08140198
_0813B694:
	cmp r0, #5
	bne _0813B69A
	strb r5, [r4, #2]
_0813B69A:
	ldr r0, _0813B6A4 @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #1
	b _0813B6AA
	.align 2, 0
_0813B6A4: .4byte 0x0000021F
_0813B6A8:
	movs r0, #0
_0813B6AA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0813B6B0
sub_0813B6B0: @ 0x0813B6B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813B704 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813B718
	ldr r1, _0813B708 @ =0x00000BE8
	adds r0, r4, r1
	ldr r3, [r0]
	ldrh r1, [r3, #0xe]
	cmp r1, #1
	bne _0813B718
	ldr r0, _0813B70C @ =gPressedKeys
	ldrh r2, [r0]
	ands r1, r2
	cmp r1, #0
	bne _0813B6DC
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0813B718
_0813B6DC:
	adds r0, r3, #0
	bl sub_08032BA4
	ldr r0, _0813B710 @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _0813B714 @ =0x000007DE
	adds r1, r4, r0
	ldrb r2, [r1]
	cmp r2, #0
	bne _0813B6FE
	movs r0, #1
	strb r0, [r1]
	movs r1, #0xfc
	lsls r1, r1, #3
	adds r0, r4, r1
	strh r2, [r0]
_0813B6FE:
	movs r0, #1
	b _0813B71A
	.align 2, 0
_0813B704: .4byte 0x000007D1
_0813B708: .4byte 0x00000BE8
_0813B70C: .4byte gPressedKeys
_0813B710: .4byte 0x0000021E
_0813B714: .4byte 0x000007DE
_0813B718:
	movs r0, #0
_0813B71A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0813B720
sub_0813B720: @ 0x0813B720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, _0813B7D8 @ =gUnk_0838659C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	movs r7, #0
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x24]
	mov r1, sp
	adds r1, #2
	str r1, [sp, #0x20]
	mov r2, sp
	adds r2, #6
	str r2, [sp, #0x28]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r8, r4
_0813B75E:
	lsls r2, r7, #2
	movs r5, #0xf8
	lsls r5, r5, #3
	add r5, sl
	adds r5, r5, r2
	lsls r4, r7, #3
	mov r3, sp
	adds r6, r3, r4
	ldr r1, [sp, #0x24]
	adds r0, r1, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sb
	str r2, [sp, #0x2c]
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	strh r1, [r5]
	ldr r5, _0813B7DC @ =0x000007C2
	add r5, sl
	ldr r2, [sp, #0x2c]
	adds r5, r5, r2
	ldr r2, [sp, #0x20]
	adds r6, r2, r4
	ldr r3, [sp, #0x28]
	adds r4, r3, r4
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r1, sb
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	strh r1, [r5]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0813B75E
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813B7D8: .4byte gUnk_0838659C
_0813B7DC: .4byte 0x000007C2

	thumb_func_start sub_0813B7E0
sub_0813B7E0: @ 0x0813B7E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	lsls r1, r1, #0x18
	movs r2, #0x99
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [sp]
	str r0, [sp, #4]
	movs r3, #0x8f
	lsls r3, r3, #3
	adds r0, r7, r3
	str r0, [sp, #8]
	add r2, sp, #0xc
	movs r4, #0x9e
	lsls r4, r4, #3
	adds r0, r7, r4
	str r0, [sp, #0xc]
	str r0, [r2, #4]
	adds r3, #0x28
	adds r0, r7, r3
	str r0, [r2, #8]
	lsrs r1, r1, #0x16
	mov r4, sp
	adds r0, r4, r1
	ldr r5, [r0]
	adds r2, r2, r1
	ldr r4, [r2]
	movs r6, #0
_0813B81A:
	lsls r2, r6, #2
	movs r0, #0xf8
	lsls r0, r0, #3
	adds r1, r7, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r4, #0x10]
	ldrh r0, [r1]
	strh r0, [r5, #0x10]
	ldr r3, _0813B8A4 @ =0x000007C2
	adds r1, r7, r3
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r4, #0x12]
	ldrh r0, [r1]
	strh r0, [r5, #0x12]
	ldr r0, _0813B8A8 @ =gUnk_08386512
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r1, r0, #6
	strh r1, [r5, #0x14]
	subs r0, #1
	lsls r0, r0, #6
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0813B81A
	adds r0, r7, #0
	movs r1, #2
	bl sub_0813BCA0
	ldr r4, _0813B8AC @ =0x000007D1
	adds r3, r7, r4
	ldrb r0, [r3]
	lsls r2, r0, #2
	adds r0, r2, r0
	lsls r0, r0, #3
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r7, r0
	subs r4, #0x11
	adds r1, r7, r4
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	ldrb r2, [r3]
	lsls r2, r2, #2
	ldr r3, _0813B8A4 @ =0x000007C2
	adds r1, r7, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x10
	strh r1, [r0, #0x12]
	bl sub_0815604C
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813B8A4: .4byte 0x000007C2
_0813B8A8: .4byte gUnk_08386512
_0813B8AC: .4byte 0x000007D1

	thumb_func_start sub_0813B8B0
sub_0813B8B0: @ 0x0813B8B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sb, r0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _0813B98C @ =gUnk_083865BC
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	movs r7, #0
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x28]
	mov r1, sp
	adds r1, #2
	str r1, [sp, #0x24]
	mov r2, sp
	adds r2, #6
	str r2, [sp, #0x2c]
	lsls r4, r4, #0x10
	asrs r3, r4, #0x10
	mov sl, r3
	str r4, [sp, #0x20]
_0813B8F0:
	lsls r2, r7, #2
	movs r5, #0xf8
	lsls r5, r5, #3
	add r5, sb
	adds r5, r5, r2
	lsls r4, r7, #3
	mov r0, sp
	adds r6, r0, r4
	ldr r1, [sp, #0x28]
	adds r0, r1, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r8
	str r2, [sp, #0x30]
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	strh r1, [r5]
	ldr r5, _0813B990 @ =0x000007C2
	add r5, sb
	ldr r2, [sp, #0x30]
	adds r5, r5, r2
	ldr r2, [sp, #0x24]
	adds r6, r2, r4
	ldr r3, [sp, #0x2c]
	adds r4, r3, r4
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	mov r1, r8
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	strh r1, [r5]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0813B8F0
	ldr r0, [sp, #0x20]
	asrs r5, r0, #0x10
	cmp r5, r8
	beq _0813B998
	lsls r4, r5, #3
	subs r0, r4, r5
	lsls r0, r0, #2
	rsbs r0, r0, #0
	mov r1, r8
	bl __divsi3
	adds r0, #0x7a
	movs r1, #0xb4
	lsls r1, r1, #3
	add r1, sb
	strh r0, [r1]
	adds r4, r4, r5
	lsls r4, r4, #1
	adds r0, r4, #0
	mov r1, r8
	bl __divsi3
	adds r0, #0x30
	ldr r1, _0813B994 @ =0x000005A2
	add r1, sb
	b _0813B9A8
	.align 2, 0
_0813B98C: .4byte gUnk_083865BC
_0813B990: .4byte 0x000007C2
_0813B994: .4byte 0x000005A2
_0813B998:
	movs r1, #0xb9
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x79
	strh r0, [r1]
	ldr r1, _0813B9BC @ =0x000005CA
	add r1, sb
	movs r0, #0x3a
_0813B9A8:
	strh r0, [r1]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813B9BC: .4byte 0x000005CA

	thumb_func_start sub_0813B9C0
sub_0813B9C0: @ 0x0813B9C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r0, #0x99
	lsls r0, r0, #3
	adds r5, r6, r0
	movs r1, #0x9e
	lsls r1, r1, #3
	adds r4, r6, r1
	movs r7, #0
_0813B9DC:
	lsls r2, r7, #2
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r1, r6, r3
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r4, #0x10]
	ldrh r0, [r1]
	strh r0, [r5, #0x10]
	ldr r0, _0813BA70 @ =0x000007C2
	adds r1, r6, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r4, #0x12]
	ldrh r0, [r1]
	strh r0, [r5, #0x12]
	ldr r0, _0813BA74 @ =gUnk_08386512
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r1, r0, #6
	strh r1, [r5, #0x14]
	subs r0, #1
	lsls r0, r0, #6
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0813B9DC
	adds r0, r6, #0
	movs r1, #3
	bl sub_0813BCA0
	ldr r1, _0813BA78 @ =0x000007D1
	adds r3, r6, r1
	ldrb r0, [r3]
	lsls r2, r0, #2
	adds r0, r2, r0
	lsls r0, r0, #3
	movs r4, #0xc6
	lsls r4, r4, #3
	adds r0, r0, r4
	adds r0, r6, r0
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r6, r4
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	ldrb r2, [r3]
	lsls r2, r2, #2
	ldr r3, _0813BA70 @ =0x000007C2
	adds r1, r6, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x10
	strh r1, [r0, #0x12]
	bl sub_0815604C
	mov r4, r8
	cmp r4, #1
	bne _0813BA7C
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	b _0813BA86
	.align 2, 0
_0813BA70: .4byte 0x000007C2
_0813BA74: .4byte gUnk_08386512
_0813BA78: .4byte 0x000007D1
_0813BA7C:
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r0, r6, r3
	bl sub_0815604C
_0813BA86:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0813BA90
sub_0813BA90: @ 0x0813BA90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sb, r0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _0813BB6C @ =gUnk_083865DC
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	movs r7, #0
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x28]
	mov r1, sp
	adds r1, #2
	str r1, [sp, #0x24]
	mov r2, sp
	adds r2, #6
	str r2, [sp, #0x2c]
	lsls r4, r4, #0x10
	asrs r3, r4, #0x10
	mov sl, r3
	str r4, [sp, #0x20]
_0813BAD0:
	lsls r2, r7, #2
	movs r5, #0xf8
	lsls r5, r5, #3
	add r5, sb
	adds r5, r5, r2
	lsls r4, r7, #3
	mov r0, sp
	adds r6, r0, r4
	ldr r1, [sp, #0x28]
	adds r0, r1, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r8
	str r2, [sp, #0x30]
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	strh r1, [r5]
	ldr r5, _0813BB70 @ =0x000007C2
	add r5, sb
	ldr r2, [sp, #0x30]
	adds r5, r5, r2
	ldr r2, [sp, #0x24]
	adds r6, r2, r4
	ldr r3, [sp, #0x2c]
	adds r4, r3, r4
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	mov r1, r8
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r1, r0
	strh r1, [r5]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0813BAD0
	ldr r0, [sp, #0x20]
	asrs r4, r0, #0x10
	cmp r4, r8
	beq _0813BB78
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	rsbs r0, r0, #0
	mov r1, r8
	bl __divsi3
	adds r0, #0x79
	movs r1, #0xb9
	lsls r1, r1, #3
	add r1, sb
	strh r0, [r1]
	lsls r0, r4, #4
	mov r1, r8
	bl __divsi3
	adds r0, #0x3a
	ldr r1, _0813BB74 @ =0x000005CA
	add r1, sb
	b _0813BB88
	.align 2, 0
_0813BB6C: .4byte gUnk_083865DC
_0813BB70: .4byte 0x000007C2
_0813BB74: .4byte 0x000005CA
_0813BB78:
	movs r1, #0xbe
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x75
	strh r0, [r1]
	ldr r1, _0813BB9C @ =0x000005F2
	add r1, sb
	movs r0, #0x38
_0813BB88:
	strh r0, [r1]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813BB9C: .4byte 0x000005F2

	thumb_func_start sub_0813BBA0
sub_0813BBA0: @ 0x0813BBA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r1, #0xa3
	lsls r1, r1, #3
	adds r0, r6, r1
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #0x99
	lsls r2, r2, #3
	adds r0, r6, r2
	str r0, [sp, #8]
	add r1, sp, #0xc
	movs r3, #0xa8
	lsls r3, r3, #3
	adds r0, r6, r3
	str r0, [sp, #0xc]
	str r0, [r1, #4]
	movs r4, #0x9e
	lsls r4, r4, #3
	adds r0, r6, r4
	str r0, [r1, #8]
	mov r0, r8
	lsls r2, r0, #2
	mov r3, sp
	adds r0, r3, r2
	ldr r5, [r0]
	adds r1, r1, r2
	ldr r4, [r1]
	movs r7, #0
_0813BBE6:
	lsls r2, r7, #2
	movs r0, #0xf8
	lsls r0, r0, #3
	adds r1, r6, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r4, #0x10]
	ldrh r0, [r1]
	strh r0, [r5, #0x10]
	ldr r3, _0813BC40 @ =0x000007C2
	adds r1, r6, r3
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r4, #0x12]
	ldrh r0, [r1]
	strh r0, [r5, #0x12]
	ldr r0, _0813BC44 @ =gUnk_08386512
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r1, r0, #6
	strh r1, [r5, #0x14]
	subs r0, #1
	lsls r0, r0, #6
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0813BBE6
	mov r4, r8
	cmp r4, #1
	bne _0813BC48
	movs r1, #0xbc
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	b _0813BC52
	.align 2, 0
_0813BC40: .4byte 0x000007C2
_0813BC44: .4byte gUnk_08386512
_0813BC48:
	movs r2, #0xb7
	lsls r2, r2, #3
	adds r0, r6, r2
	bl sub_0815604C
_0813BC52:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0813BCA0
	ldr r4, _0813BC98 @ =0x000007D1
	adds r3, r6, r4
	ldrb r0, [r3]
	lsls r2, r0, #2
	adds r0, r2, r0
	lsls r0, r0, #3
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r6, r0
	subs r4, #0x11
	adds r1, r6, r4
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	ldrb r2, [r3]
	lsls r2, r2, #2
	ldr r3, _0813BC9C @ =0x000007C2
	adds r1, r6, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x10
	strh r1, [r0, #0x12]
	bl sub_0815604C
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813BC98: .4byte 0x000007D1
_0813BC9C: .4byte 0x000007C2

	thumb_func_start sub_0813BCA0
sub_0813BCA0: @ 0x0813BCA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	ldr r1, _0813BCC4 @ =0x000007D1
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0813BCC8
	movs r0, #0
	b _0813BDCA
	.align 2, 0
_0813BCC4: .4byte 0x000007D1
_0813BCC8:
	movs r2, #1
	mov sb, r2
	ldr r0, [sp, #0x18]
	cmp sb, r0
	bhs _0813BDC8
	add r1, sp, #0xc
	mov sl, r1
	mov r8, sp
_0813BCD8:
	movs r1, #0
	mov r2, sl
	strh r1, [r2]
	mov r0, sp
	adds r0, #0xe
	strh r1, [r0]
	add r0, sp, #0x10
	strh r1, [r0]
	mov r0, sb
	lsls r2, r0, #2
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, #3
	mov r1, sp
	adds r1, #0x12
	strh r0, [r1]
	ldr r1, _0813BD44 @ =0x000007C2
	adds r0, r7, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, #0x10
	add r1, sp, #0x14
	strh r0, [r1]
	mov r0, sp
	mov r1, sl
	movs r2, #0xc
	bl memcpy
	mov r0, sb
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, _0813BD48 @ =0x000007DB
	adds r0, r7, r2
	adds r5, r0, r6
	ldrb r0, [r5]
	cmp r0, #0
	beq _0813BDB8
	movs r1, #0xfb
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r4, r0, r6
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	ldrb r0, [r5]
	cmp r0, #1
	beq _0813BD4C
	cmp r0, #2
	beq _0813BD68
	b _0813BD8A
	.align 2, 0
_0813BD44: .4byte 0x000007C2
_0813BD48: .4byte 0x000007DB
_0813BD4C:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2, #4]
	strh r0, [r2, #2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813BD8A
	movs r0, #0
	strb r0, [r4]
	movs r0, #2
	strb r0, [r5]
	b _0813BD8A
_0813BD68:
	ldrb r1, [r4]
	movs r0, #0xa
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0xa
	bl __divsi3
	mov r1, r8
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldrb r0, [r4]
	adds r0, #1
	cmp r0, #9
	ble _0813BD8A
	movs r2, #0
	strb r2, [r4]
	strb r2, [r5]
_0813BD8A:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #4
	movs r0, #0xda
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r4, r7, r4
	adds r0, r4, #0
	mov r1, sp
	bl sub_08155604
	adds r5, r4, #0
	adds r5, #0x28
	adds r0, r5, #0
	mov r1, sp
	bl sub_08155604
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
_0813BDB8:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r1, [sp, #0x18]
	cmp sb, r1
	blo _0813BCD8
_0813BDC8:
	movs r0, #1
_0813BDCA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0813BDDC
sub_0813BDDC: @ 0x0813BDDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813BE34 @ =0x00000BE6
	adds r4, r5, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0813BE0E
	ldr r0, _0813BE38 @ =0x00000221
	bl m4aSongNumStartOrChange
	ldr r2, _0813BE3C @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _0813BE40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0813BE44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0813BE48 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #0xb4
	strh r0, [r4]
_0813BE0E:
	movs r0, #0xbe
	lsls r0, r0, #4
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0813BE4C @ =0x07070000
	cmp r0, r1
	ble _0813BE2E
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0813BE50 @ =0x00000BDC
	adds r1, r5, r0
	ldr r0, _0813BE54 @ =sub_0813BE58
	str r0, [r1]
_0813BE2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813BE34: .4byte 0x00000BE6
_0813BE38: .4byte 0x00000221
_0813BE3C: .4byte gUnk_030068D8
_0813BE40: .4byte 0x00196225
_0813BE44: .4byte 0x3C6EF35F
_0813BE48: .4byte 0x000003FF
_0813BE4C: .4byte 0x07070000
_0813BE50: .4byte 0x00000BDC
_0813BE54: .4byte sub_0813BE58

	thumb_func_start sub_0813BE58
sub_0813BE58: @ 0x0813BE58
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #4
	adds r6, r5, r0
	ldrh r0, [r6]
	adds r0, #1
	movs r7, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0813BED4 @ =gUnk_08385BF8
	ldrb r1, [r5, #3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	cmp r0, r1
	blt _0813BEFC
	strh r7, [r6]
	ldr r0, _0813BED8 @ =0x00000BE2
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _0813BEFC
	ldr r0, _0813BEDC @ =gUnk_03002E60
	ldr r0, [r0]
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x10]
	ldr r0, _0813BEE0 @ =0x000009DA
	adds r1, r5, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl CpuSet
	ldr r1, _0813BEE4 @ =0x040000D4
	str r4, [r1]
	ldr r0, _0813BEE8 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0813BEEC @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0813BEF0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	strh r7, [r6]
	ldr r0, _0813BEF4 @ =0x00000BDC
	adds r1, r5, r0
	ldr r0, _0813BEF8 @ =sub_0813BF18
	str r0, [r1]
	b _0813BF0C
	.align 2, 0
_0813BED4: .4byte gUnk_08385BF8
_0813BED8: .4byte 0x00000BE2
_0813BEDC: .4byte gUnk_03002E60
_0813BEE0: .4byte 0x000009DA
_0813BEE4: .4byte 0x040000D4
_0813BEE8: .4byte gBgPalette
_0813BEEC: .4byte 0x80000090
_0813BEF0: .4byte gUnk_03002440
_0813BEF4: .4byte 0x00000BDC
_0813BEF8: .4byte sub_0813BF18
_0813BEFC:
	ldr r1, _0813BF14 @ =0x00000BE2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813BF0C
	adds r0, r5, #0
	bl sub_0813C064
_0813BF0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813BF14: .4byte 0x00000BE2

	thumb_func_start sub_0813BF18
sub_0813BF18: @ 0x0813BF18
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813BF70 @ =0x00000BE6
	adds r4, r5, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0813BF4A
	ldr r0, _0813BF74 @ =0x00000222
	bl m4aSongNumStartOrChange
	ldr r2, _0813BF78 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _0813BF7C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0813BF80 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0813BF84 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #0xb4
	strh r0, [r4]
_0813BF4A:
	movs r0, #0xbe
	lsls r0, r0, #4
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0813BF88 @ =0x07070000
	cmp r0, r1
	ble _0813BF6A
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0813BF8C @ =0x00000BDC
	adds r1, r5, r0
	ldr r0, _0813BF90 @ =sub_0813BF94
	str r0, [r1]
_0813BF6A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813BF70: .4byte 0x00000BE6
_0813BF74: .4byte 0x00000222
_0813BF78: .4byte gUnk_030068D8
_0813BF7C: .4byte 0x00196225
_0813BF80: .4byte 0x3C6EF35F
_0813BF84: .4byte 0x000003FF
_0813BF88: .4byte 0x07070000
_0813BF8C: .4byte 0x00000BDC
_0813BF90: .4byte sub_0813BF94

	thumb_func_start sub_0813BF94
sub_0813BF94: @ 0x0813BF94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #4
	adds r6, r5, r0
	ldrh r0, [r6]
	adds r0, #1
	movs r7, #0
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0813C01C @ =gUnk_08385BF8
	ldrb r1, [r5, #3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	cmp r0, r1
	blt _0813C044
	mov r0, r8
	strh r0, [r6]
	ldr r1, _0813C020 @ =0x00000BE2
	adds r0, r5, r1
	strb r7, [r0]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bne _0813C044
	ldr r0, _0813C024 @ =gUnk_03002E60
	ldr r0, [r0]
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x10]
	ldr r0, _0813C028 @ =0x000009DA
	adds r1, r5, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl CpuSet
	ldr r1, _0813C02C @ =0x040000D4
	str r4, [r1]
	ldr r0, _0813C030 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0813C034 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0813C038 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	strb r7, [r5, #3]
	mov r1, r8
	strh r1, [r6]
	ldr r0, _0813C03C @ =0x00000BDC
	adds r1, r5, r0
	ldr r0, _0813C040 @ =sub_0813BDDC
	str r0, [r1]
	b _0813C054
	.align 2, 0
_0813C01C: .4byte gUnk_08385BF8
_0813C020: .4byte 0x00000BE2
_0813C024: .4byte gUnk_03002E60
_0813C028: .4byte 0x000009DA
_0813C02C: .4byte 0x040000D4
_0813C030: .4byte gBgPalette
_0813C034: .4byte 0x80000090
_0813C038: .4byte gUnk_03002440
_0813C03C: .4byte 0x00000BDC
_0813C040: .4byte sub_0813BDDC
_0813C044:
	ldr r1, _0813C060 @ =0x00000BE2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813C054
	adds r0, r5, #0
	bl sub_0813C064
_0813C054:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813C060: .4byte 0x00000BE2

	thumb_func_start sub_0813C064
sub_0813C064: @ 0x0813C064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #0x60]
	ldr r1, _0813C19C @ =gUnk_083865FC
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	add r5, sp, #0x1c
	ldr r1, _0813C1A0 @ =gUnk_08386618
	adds r0, r5, #0
	movs r2, #0x41
	bl memcpy
	movs r0, #0
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x60]
	ldr r2, _0813C1A4 @ =0x000009D4
	adds r0, r1, r2
	ldr r0, [r0]
	movs r1, #4
	bl __umodsi3
	movs r1, #0x25
	muls r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r2, [sp, #0x60]
	ldrb r0, [r2, #3]
	ldr r1, _0813C1A8 @ =gUnk_03002E60
	ldr r4, [r1]
	adds r0, #1
	movs r1, #0xe
	bl __modsi3
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x60]
	ldr r2, _0813C1AC @ =0x000009DA
	adds r1, r1, r2
	mov sb, r1
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x64]
	mov r7, sl
	adds r0, r7, #0
	adds r0, #0x25
	cmp r7, r0
	bge _0813C160
	mov ip, r5
_0813C0D8:
	lsls r0, r7, #1
	adds r1, r0, #0
	add r1, sb
	mov r8, r1
	ldrh r6, [r1]
	ldr r2, [sp, #0x64]
	adds r0, r0, r2
	ldrh r3, [r0]
	adds r0, r6, #0
	movs r1, #0x1f
	ands r0, r1
	adds r4, r3, #0
	ands r4, r1
	subs r4, r4, r0
	adds r4, #0x1f
	add r4, ip
	movs r5, #0
	ldrsb r5, [r4, r5]
	adds r5, r5, r0
	adds r1, r6, #0
	movs r2, #0xf8
	lsls r2, r2, #2
	ands r1, r2
	lsrs r1, r1, #5
	adds r2, r3, #0
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r2, r0
	lsrs r2, r2, #5
	subs r2, r2, r1
	adds r2, #0x1f
	add r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #5
	orrs r5, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	ands r6, r1
	lsrs r6, r6, #0xa
	ands r3, r1
	lsrs r3, r3, #0xa
	subs r3, r3, r6
	adds r3, #0x1f
	add r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r6
	lsls r0, r0, #0xa
	orrs r5, r0
	mov r0, r8
	strh r5, [r0]
	ldrb r1, [r4]
	ldrb r0, [r2]
	orrs r1, r0
	ldrb r0, [r3]
	orrs r1, r0
	ldr r2, [sp, #0x68]
	orrs r2, r1
	str r2, [sp, #0x68]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, sl
	adds r0, #0x25
	cmp r7, r0
	blt _0813C0D8
_0813C160:
	ldr r0, [sp, #0x68]
	cmp r0, #0
	bne _0813C170
	ldr r2, [sp, #0x60]
	ldr r0, _0813C1B0 @ =0x00000BE2
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0813C170:
	ldr r1, _0813C1B4 @ =0x040000D4
	mov r2, sb
	str r2, [r1]
	ldr r0, _0813C1B8 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0813C1BC @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0813C1C0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813C19C: .4byte gUnk_083865FC
_0813C1A0: .4byte gUnk_08386618
_0813C1A4: .4byte 0x000009D4
_0813C1A8: .4byte gUnk_03002E60
_0813C1AC: .4byte 0x000009DA
_0813C1B0: .4byte 0x00000BE2
_0813C1B4: .4byte 0x040000D4
_0813C1B8: .4byte gBgPalette
_0813C1BC: .4byte 0x80000090
_0813C1C0: .4byte gUnk_03002440

	thumb_func_start sub_0813C1C4
sub_0813C1C4: @ 0x0813C1C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0813C244 @ =gUnk_082D7850
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r7, [r0, #0x18]
	ldrh r5, [r0, #2]
	ldr r3, _0813C248 @ =0x0600E800
	mov r8, r3
	movs r4, #0
	cmp r4, r5
	bhs _0813C200
_0813C1E4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813C1E4
_0813C200:
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0813C230
	ldr r0, _0813C24C @ =0x00000BE4
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _0813C250 @ =0x00000BE3
	adds r2, r6, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bhi _0813C230
	ldr r4, _0813C254 @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C230:
	ldr r0, _0813C258 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _0813C25C @ =sub_0813C260
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813C244: .4byte gUnk_082D7850
_0813C248: .4byte 0x0600E800
_0813C24C: .4byte 0x00000BE4
_0813C250: .4byte 0x00000BE3
_0813C254: .4byte gBldRegs
_0813C258: .4byte 0x000009CC
_0813C25C: .4byte sub_0813C260

	thumb_func_start sub_0813C260
sub_0813C260: @ 0x0813C260
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r2, _0813C358 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0813C35C @ =gUnk_08385C14
	ldr r0, _0813C360 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813C364 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0813C368 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813C2BE
_0813C2A2:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813C2A2
_0813C2BE:
	ldr r2, _0813C358 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0813C364 @ =gUnk_082D7850
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r3, _0813C36C @ =0x0600F000
	mov r8, r3
	ldr r1, _0813C370 @ =0x06004000
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813C308
_0813C2EC:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813C2EC
_0813C308:
	ldr r2, _0813C358 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r7, #1]
	cmp r0, #0
	bne _0813C346
	ldr r0, _0813C374 @ =0x00000BE4
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _0813C378 @ =0x00000BE3
	adds r2, r7, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bhi _0813C346
	ldr r4, _0813C37C @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C346:
	ldr r0, _0813C380 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _0813C384 @ =sub_08141FA4
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813C358: .4byte gDispCnt
_0813C35C: .4byte gUnk_08385C14
_0813C360: .4byte gUnk_08D60A80
_0813C364: .4byte gUnk_082D7850
_0813C368: .4byte 0x0600FD40
_0813C36C: .4byte 0x0600F000
_0813C370: .4byte 0x06004000
_0813C374: .4byte 0x00000BE4
_0813C378: .4byte 0x00000BE3
_0813C37C: .4byte gBldRegs
_0813C380: .4byte 0x000009CC
_0813C384: .4byte sub_08141FA4

	thumb_func_start sub_0813C388
sub_0813C388: @ 0x0813C388
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0802E57C
	ldr r2, _0813C3D8 @ =0x00000BEC
	adds r1, r5, r2
	str r0, [r1]
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0813C3C6
	ldr r3, _0813C3DC @ =0x00000BE4
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r3, #1
	adds r2, r5, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bhi _0813C3C6
	ldr r4, _0813C3E0 @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C3C6:
	ldrb r0, [r5, #1]
	cmp r0, #8
	beq _0813C3EC
	cmp r0, #0xa
	beq _0813C3FC
	ldr r0, _0813C3E4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813C3E8 @ =sub_0813C414
	b _0813C402
	.align 2, 0
_0813C3D8: .4byte 0x00000BEC
_0813C3DC: .4byte 0x00000BE4
_0813C3E0: .4byte gBldRegs
_0813C3E4: .4byte 0x000009CC
_0813C3E8: .4byte sub_0813C414
_0813C3EC:
	ldr r2, _0813C3F4 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813C3F8 @ =sub_08140E40
	b _0813C402
	.align 2, 0
_0813C3F4: .4byte 0x000009CC
_0813C3F8: .4byte sub_08140E40
_0813C3FC:
	ldr r3, _0813C40C @ =0x000009CC
	adds r1, r5, r3
	ldr r0, _0813C410 @ =sub_0813CDE4
_0813C402:
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813C40C: .4byte 0x000009CC
_0813C410: .4byte sub_0813CDE4

	thumb_func_start sub_0813C414
sub_0813C414: @ 0x0813C414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl sub_08139368
	ldrb r0, [r7, #1]
	movs r1, #0
	strb r0, [r7]
	movs r0, #1
	strb r0, [r7, #1]
	ldr r2, _0813C574 @ =0x000009D8
	adds r0, r7, r2
	strh r1, [r0]
	ldr r3, _0813C578 @ =0x000009CC
	adds r1, r7, r3
	ldr r0, _0813C57C @ =sub_0813C5D0
	str r0, [r1]
	ldr r1, _0813C580 @ =gUnk_08386504
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r4, _0813C584 @ =0x0000029E
	adds r0, r7, r4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #0x1b
	strh r0, [r1]
	adds r1, #0x28
	movs r0, #0x23
	strh r0, [r1]
	adds r1, #0x28
	movs r0, #0x2b
	strh r0, [r1]
	movs r3, #0
_0813C45E:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r7, r0
	adds r2, r0, #0
	adds r2, #0x46
	ldrh r1, [r2]
	adds r1, #0xc
	adds r0, #0xbe
	strh r1, [r0]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r1, r7, r0
	ldrh r0, [r2]
	adds r0, #8
	movs r4, #0xc3
	lsls r4, r4, #1
	adds r2, r1, r4
	strh r0, [r2]
	subs r4, #0x28
	adds r2, r1, r4
	strh r0, [r2]
	subs r4, #0x28
	adds r2, r1, r4
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0813C45E
	ldrb r0, [r7]
	cmp r0, #0
	bne _0813C4CC
	ldr r0, _0813C588 @ =0x00000BE4
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _0813C58C @ =0x00000BE3
	adds r2, r7, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r4, [r2]
	cmp r0, r4
	bhi _0813C4CC
	ldr r4, _0813C590 @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C4CC:
	ldrb r0, [r7]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0813C5AC
	adds r0, r7, #0
	adds r0, #0xc
	movs r6, #0
	movs r5, #0
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	ldr r3, _0813C594 @ =gUnk_08385CD4
	ldr r4, _0813C598 @ =gUnk_08D60A80
	ldrh r2, [r4]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r2, [r4]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #2]
	strb r1, [r0, #0x1a]
	strh r5, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	ldr r1, _0813C59C @ =0x0000FF64
	strh r1, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	ldr r1, _0813C5A0 @ =gUnk_08385C14
	ldrh r0, [r4]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813C5A4 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0813C5A8 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813C5B2
_0813C554:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813C554
	b _0813C5B2
	.align 2, 0
_0813C574: .4byte 0x000009D8
_0813C578: .4byte 0x000009CC
_0813C57C: .4byte sub_0813C5D0
_0813C580: .4byte gUnk_08386504
_0813C584: .4byte 0x0000029E
_0813C588: .4byte 0x00000BE4
_0813C58C: .4byte 0x00000BE3
_0813C590: .4byte gBldRegs
_0813C594: .4byte gUnk_08385CD4
_0813C598: .4byte gUnk_08D60A80
_0813C59C: .4byte 0x0000FF64
_0813C5A0: .4byte gUnk_08385C14
_0813C5A4: .4byte gUnk_082D7850
_0813C5A8: .4byte 0x0600FD40
_0813C5AC:
	ldr r1, _0813C5C8 @ =gBgScrollRegs
	movs r0, #0x18
	strh r0, [r1, #6]
_0813C5B2:
	ldr r2, _0813C5CC @ =0x00000BDC
	adds r0, r7, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813C5C8: .4byte gBgScrollRegs
_0813C5CC: .4byte 0x00000BDC

	thumb_func_start sub_0813C5D0
sub_0813C5D0: @ 0x0813C5D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0813C67C @ =0x000009D8
	adds r6, r5, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0813C60E
	ldr r4, _0813C680 @ =gBgScrollRegs
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x18
	strh r0, [r4, #6]
_0813C60E:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #4
	ble _0813C61E
	ldr r3, _0813C684 @ =0x000009CC
	adds r1, r5, r3
	ldr r0, _0813C688 @ =sub_0813C6A0
	str r0, [r1]
_0813C61E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0813C64E
	ldr r0, _0813C68C @ =0x00000BE4
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _0813C690 @ =0x00000BE3
	adds r2, r5, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bhi _0813C64E
	ldr r4, _0813C694 @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C64E:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0813C664
	ldr r3, _0813C698 @ =0x000002A7
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
_0813C664:
	adds r0, r5, #0
	bl sub_0813AD9C
	ldr r1, _0813C69C @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813C67C: .4byte 0x000009D8
_0813C680: .4byte gBgScrollRegs
_0813C684: .4byte 0x000009CC
_0813C688: .4byte sub_0813C6A0
_0813C68C: .4byte 0x00000BE4
_0813C690: .4byte 0x00000BE3
_0813C694: .4byte gBldRegs
_0813C698: .4byte 0x000002A7
_0813C69C: .4byte 0x00000BDC

	thumb_func_start sub_0813C6A0
sub_0813C6A0: @ 0x0813C6A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813C714 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r3, _0813C718 @ =0x000009CC
	adds r1, r5, r3
	ldr r0, _0813C71C @ =sub_0813C734
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0813C6CA
	ldr r3, _0813C720 @ =0x000002A7
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
_0813C6CA:
	adds r0, r5, #0
	bl sub_0813AD9C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0813C700
	ldr r0, _0813C724 @ =0x00000BE4
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _0813C728 @ =0x00000BE3
	adds r2, r5, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bhi _0813C700
	ldr r4, _0813C72C @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C700:
	ldr r1, _0813C730 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813C714: .4byte 0x000009D8
_0813C718: .4byte 0x000009CC
_0813C71C: .4byte sub_0813C734
_0813C720: .4byte 0x000002A7
_0813C724: .4byte 0x00000BE4
_0813C728: .4byte 0x00000BE3
_0813C72C: .4byte gBldRegs
_0813C730: .4byte 0x00000BDC

	thumb_func_start sub_0813C734
sub_0813C734: @ 0x0813C734
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0813C820 @ =0x000009D8
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0
_0813C744:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, r5, r4
	ldr r1, _0813C820 @ =0x000009D8
	adds r0, r5, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r1, r0, #0
	adds r0, #0xf0
	adds r2, r4, #0
	adds r2, #0x44
	strh r0, [r2]
	ldr r3, _0813C824 @ =0x00000143
	adds r0, r1, r3
	adds r4, #0xbc
	strh r0, [r4]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r3, r5, r0
	ldrh r0, [r2]
	adds r0, #0xa8
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb0
	adds r4, #0x28
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb8
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0813C744
	ldr r3, _0813C820 @ =0x000009D8
	adds r0, r5, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #4
	ble _0813C7C0
	ldr r0, _0813C828 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813C82C @ =sub_0813C844
	str r0, [r1]
_0813C7C0:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0813C7F0
	ldr r2, _0813C830 @ =0x00000BE4
	adds r1, r5, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _0813C834 @ =0x00000BE3
	adds r2, r5, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r4, [r2]
	cmp r0, r4
	bhi _0813C7F0
	ldr r4, _0813C838 @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C7F0:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0813C806
	ldr r2, _0813C83C @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0813C806:
	adds r0, r5, #0
	bl sub_0813AD9C
	ldr r3, _0813C840 @ =0x00000BDC
	adds r0, r5, r3
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813C820: .4byte 0x000009D8
_0813C824: .4byte 0x00000143
_0813C828: .4byte 0x000009CC
_0813C82C: .4byte sub_0813C844
_0813C830: .4byte 0x00000BE4
_0813C834: .4byte 0x00000BE3
_0813C838: .4byte gBldRegs
_0813C83C: .4byte 0x000002A7
_0813C840: .4byte 0x00000BDC

	thumb_func_start sub_0813C844
sub_0813C844: @ 0x0813C844
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813C8B8 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r3, _0813C8BC @ =0x000009CC
	adds r1, r5, r3
	ldr r0, _0813C8C0 @ =sub_0813C8D8
	str r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0813C888
	ldr r0, _0813C8C4 @ =0x00000BE4
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _0813C8C8 @ =0x00000BE3
	adds r2, r5, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bhi _0813C888
	ldr r4, _0813C8CC @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C888:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0813C89E
	ldr r3, _0813C8D0 @ =0x000002A7
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
_0813C89E:
	adds r0, r5, #0
	bl sub_0813AD9C
	ldr r1, _0813C8D4 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813C8B8: .4byte 0x000009D8
_0813C8BC: .4byte 0x000009CC
_0813C8C0: .4byte sub_0813C8D8
_0813C8C4: .4byte 0x00000BE4
_0813C8C8: .4byte 0x00000BE3
_0813C8CC: .4byte gBldRegs
_0813C8D0: .4byte 0x000002A7
_0813C8D4: .4byte 0x00000BDC

	thumb_func_start sub_0813C8D8
sub_0813C8D8: @ 0x0813C8D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0813CA00 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0x1b
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	adds r0, #0x23
	adds r1, r5, #0
	adds r1, #0x6e
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #5
	movs r1, #5
	bl __divsi3
	adds r0, #0x2b
	adds r1, r5, #0
	adds r1, #0x96
	strh r0, [r1]
	movs r4, #0
	ldr r6, _0813CA04 @ =gBgScrollRegs
_0813C91A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r3, r0, #0
	adds r3, #0x46
	ldrh r1, [r3]
	adds r1, #0xc
	adds r0, #0xbe
	strh r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r0, [r3]
	adds r0, #8
	movs r7, #0x9b
	lsls r7, r7, #1
	adds r1, r2, r7
	strh r0, [r1]
	ldrh r0, [r3]
	adds r0, #8
	adds r7, #0x28
	adds r1, r2, r7
	strh r0, [r1]
	ldrh r0, [r3]
	adds r0, #8
	movs r1, #0xc3
	lsls r1, r1, #1
	adds r2, r2, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0813C91A
	ldr r2, _0813CA00 @ =0x000009D8
	adds r4, r5, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	subs r0, #0x20
	movs r7, #0xa7
	lsls r7, r7, #2
	adds r1, r5, r7
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #5
	bl __divsi3
	strh r0, [r6, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0813C9A2
	ldr r2, _0813CA08 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813CA0C @ =sub_08141FC4
	str r0, [r1]
_0813C9A2:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0813C9D2
	ldr r3, _0813CA10 @ =0x00000BE4
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r7, _0813CA14 @ =0x00000BE3
	adds r2, r5, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bhi _0813C9D2
	ldr r4, _0813CA18 @ =gBldRegs
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrb r1, [r2]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
_0813C9D2:
	movs r7, #0xa3
	lsls r7, r7, #2
	adds r0, r5, r7
	bl sub_08155128
	cmp r0, #0
	bne _0813C9E8
	ldr r0, _0813CA1C @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0813C9E8:
	adds r0, r5, #0
	bl sub_0813AD9C
	ldr r1, _0813CA20 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813CA00: .4byte 0x000009D8
_0813CA04: .4byte gBgScrollRegs
_0813CA08: .4byte 0x000009CC
_0813CA0C: .4byte sub_08141FC4
_0813CA10: .4byte 0x00000BE4
_0813CA14: .4byte 0x00000BE3
_0813CA18: .4byte gBldRegs
_0813CA1C: .4byte 0x000002A7
_0813CA20: .4byte 0x00000BDC

	thumb_func_start sub_0813CA24
sub_0813CA24: @ 0x0813CA24
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0813B4F0
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0813CB10
	lsls r0, r0, #2
	ldr r1, _0813CA48 @ =_0813CA4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813CA48: .4byte _0813CA4C
_0813CA4C: @ jump table
	.4byte _0813CB10 @ case 0
	.4byte _0813CA60 @ case 1
	.4byte _0813CAC4 @ case 2
	.4byte _0813CAE0 @ case 3
	.4byte _0813CAF8 @ case 4
_0813CA60:
	adds r0, r4, #7
	ldrb r2, [r4, #0xa]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0813CA98
	movs r2, #0
	strb r2, [r1]
	ldr r1, _0813CAB0 @ =gUnk_0203ACB0
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r2, [r0]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0813CA98
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_0813CA98:
	ldr r1, _0813CAB4 @ =gUnk_0203AD48
	ldrb r0, [r4, #0xa]
	strh r0, [r1]
	ldr r0, _0813CAB8 @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _0813CABC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813CAC0 @ =sub_08142018
	str r0, [r1]
	b _0813CB10
	.align 2, 0
_0813CAB0: .4byte gUnk_0203ACB0
_0813CAB4: .4byte gUnk_0203AD48
_0813CAB8: .4byte 0x0000021E
_0813CABC: .4byte 0x000009CC
_0813CAC0: .4byte sub_08142018
_0813CAC4:
	ldr r0, _0813CAD4 @ =0x0000021F
	bl m4aSongNumStart
	ldr r2, _0813CAD8 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813CADC @ =sub_0814207C
	str r0, [r1]
	b _0813CB10
	.align 2, 0
_0813CAD4: .4byte 0x0000021F
_0813CAD8: .4byte 0x000009CC
_0813CADC: .4byte sub_0814207C
_0813CAE0:
	ldr r0, _0813CAF0 @ =0x0000021D
	bl m4aSongNumStart
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0813CAF4
	movs r0, #2
	b _0813CB0E
	.align 2, 0
_0813CAF0: .4byte 0x0000021D
_0813CAF4:
	subs r0, #1
	b _0813CB0E
_0813CAF8:
	ldr r0, _0813CB08 @ =0x0000021D
	bl m4aSongNumStart
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0813CB0C
	movs r0, #0
	b _0813CB0E
	.align 2, 0
_0813CB08: .4byte 0x0000021D
_0813CB0C:
	adds r0, #1
_0813CB0E:
	strb r0, [r4, #0xa]
_0813CB10:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	cmp r0, r1
	beq _0813CB38
	adds r0, r4, #0
	bl sub_0813B26C
	ldr r1, _0813CB68 @ =gUnk_08386504
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0813CB6C @ =0x0000029E
	adds r0, r4, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
_0813CB38:
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_08155128
	cmp r0, #0
	bne _0813CB4E
	ldr r0, _0813CB70 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_0813CB4E:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _0813CB74 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813CB68: .4byte gUnk_08386504
_0813CB6C: .4byte 0x0000029E
_0813CB70: .4byte 0x000002A7
_0813CB74: .4byte 0x00000BDC

	thumb_func_start sub_0813CB78
sub_0813CB78: @ 0x0813CB78
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0813CC5C @ =0x000009D8
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0
	ldr r7, _0813CC60 @ =gBgScrollRegs
_0813CB8A:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, r5, r4
	ldr r1, _0813CC5C @ =0x000009D8
	adds r0, r5, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xd0
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x20
	adds r2, r4, #0
	adds r2, #0x44
	strh r1, [r2]
	adds r0, #0x73
	adds r4, #0xbc
	strh r0, [r4]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r3, r5, r0
	ldrh r0, [r2]
	adds r0, #0xa8
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb0
	adds r4, #0x28
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb8
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0813CB8A
	ldr r0, _0813CC5C @ =0x000009D8
	adds r4, r5, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x10
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	strh r0, [r5, #0x1c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x18
	strh r0, [r7, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0813CC70
	adds r0, r5, #0
	bl sub_0813A908
	ldr r2, _0813CC64 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813CC68 @ =sub_0813CDE4
	str r0, [r1]
	ldr r4, _0813CC6C @ =0x00000BDC
	adds r0, r5, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	b _0813CC98
	.align 2, 0
_0813CC5C: .4byte 0x000009D8
_0813CC60: .4byte gBgScrollRegs
_0813CC64: .4byte 0x000009CC
_0813CC68: .4byte sub_0813CDE4
_0813CC6C: .4byte 0x00000BDC
_0813CC70:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0813CC86
	ldr r2, _0813CCA0 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0813CC86:
	adds r0, r5, #0
	bl sub_0813AD9C
	ldr r4, _0813CCA4 @ =0x00000BDC
	adds r0, r5, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0813CC98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813CCA0: .4byte 0x000002A7
_0813CCA4: .4byte 0x00000BDC

	thumb_func_start sub_0813CCA8
sub_0813CCA8: @ 0x0813CCA8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0813CDC8 @ =0x000009D8
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, _0813CDCC @ =gBldRegs
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	strh r0, [r4, #4]
	movs r5, #0
	ldr r7, _0813CDD0 @ =gBgScrollRegs
_0813CCCA:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r1, _0813CDC8 @ =0x000009D8
	adds r0, r6, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xd0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x20
	adds r2, r4, #0
	adds r2, #0x44
	strh r1, [r2]
	adds r0, #0x73
	adds r4, #0xbc
	strh r0, [r4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r3, r6, r0
	ldrh r0, [r2]
	adds r0, #0xa8
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb0
	adds r4, #0x28
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb8
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813CCCA
	ldr r0, _0813CDC8 @ =0x000009D8
	adds r4, r6, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0xa
	bl __divsi3
	adds r0, #0x10
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0xa
	bl __divsi3
	strh r0, [r6, #0x1c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0xa
	bl __divsi3
	adds r0, #0x18
	strh r0, [r7, #2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xa
	bl __divsi3
	strh r0, [r7, #6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #9
	ble _0813CD98
	ldr r2, _0813CDD4 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _0813CDD8 @ =sub_081420EC
	str r0, [r1]
_0813CD98:
	movs r4, #0xa3
	lsls r4, r4, #2
	adds r0, r6, r4
	bl sub_08155128
	cmp r0, #0
	bne _0813CDAE
	ldr r0, _0813CDDC @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_0813CDAE:
	adds r0, r6, #0
	bl sub_0813AD9C
	ldr r1, _0813CDE0 @ =0x00000BDC
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813CDC8: .4byte 0x000009D8
_0813CDCC: .4byte gBldRegs
_0813CDD0: .4byte gBgScrollRegs
_0813CDD4: .4byte 0x000009CC
_0813CDD8: .4byte sub_081420EC
_0813CDDC: .4byte 0x000002A7
_0813CDE0: .4byte 0x00000BDC

	thumb_func_start sub_0813CDE4
sub_0813CDE4: @ 0x0813CDE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	bl sub_081397FC
	ldrb r0, [r7, #1]
	movs r4, #0
	strb r0, [r7]
	movs r0, #2
	strb r0, [r7, #1]
	ldr r1, _0813CE88 @ =0x000009D8
	adds r0, r7, r1
	movs r6, #0
	strh r4, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	ldr r5, _0813CE8C @ =gUnk_08385CD4
	ldr r3, _0813CE90 @ =gUnk_08D60A80
	ldrh r2, [r3]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r5
	ldrh r1, [r1, #8]
	strh r1, [r0, #0xc]
	ldrh r2, [r3]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r5
	ldrh r1, [r1, #0xa]
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	ldr r1, _0813CE94 @ =0x0000FF64
	strh r1, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	ldr r2, _0813CE98 @ =0x000002EE
	adds r1, r7, r2
	movs r0, #0x1b
	strh r0, [r1]
	ldr r0, _0813CE9C @ =0x00000316
	adds r1, r7, r0
	movs r0, #0x23
	strh r0, [r1]
	adds r2, #0x50
	adds r1, r7, r2
	movs r0, #0x2b
	strh r0, [r1]
	ldr r0, _0813CEA0 @ =0x00000366
	adds r1, r7, r0
	movs r0, #0x33
	strh r0, [r1]
	ldrb r0, [r7]
	subs r0, #1
	cmp r0, #9
	bls _0813CE7C
	b _0813D0B8
_0813CE7C:
	lsls r0, r0, #2
	ldr r1, _0813CEA4 @ =_0813CEA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813CE88: .4byte 0x000009D8
_0813CE8C: .4byte gUnk_08385CD4
_0813CE90: .4byte gUnk_08D60A80
_0813CE94: .4byte 0x0000FF64
_0813CE98: .4byte 0x000002EE
_0813CE9C: .4byte 0x00000316
_0813CEA0: .4byte 0x00000366
_0813CEA4: .4byte _0813CEA8
_0813CEA8: @ jump table
	.4byte _0813CED0 @ case 0
	.4byte _0813D0B8 @ case 1
	.4byte _0813CF9C @ case 2
	.4byte _0813CFD4 @ case 3
	.4byte _0813D0B8 @ case 4
	.4byte _0813D0B8 @ case 5
	.4byte _0813D01C @ case 6
	.4byte _0813D0B8 @ case 7
	.4byte _0813D0B8 @ case 8
	.4byte _0813D0B0 @ case 9
_0813CED0:
	ldr r1, _0813CF7C @ =gUnk_08385C14
	ldr r0, _0813CF80 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813CF84 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0813CF88 @ =0x0600FD40
	mov sb, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r2, r2, r7
	mov r8, r2
	cmp r4, r5
	bhs _0813CF22
_0813CF06:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, sb
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813CF06
_0813CF22:
	ldr r1, _0813CF8C @ =0x000003A5
	adds r0, r7, r1
	movs r1, #0
	strb r1, [r0]
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	mov r1, r8
	movs r0, #2
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	movs r4, #1
_0813CF40:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813CF40
	ldr r2, _0813CF90 @ =0x0000029E
	adds r1, r7, r2
	movs r0, #0x10
	strh r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08155128
	ldr r2, _0813CF94 @ =0x000009CC
	adds r1, r7, r2
	ldr r0, _0813CF98 @ =sub_081421B8
	b _0813D0B6
	.align 2, 0
_0813CF7C: .4byte gUnk_08385C14
_0813CF80: .4byte gUnk_08D60A80
_0813CF84: .4byte gUnk_082D7850
_0813CF88: .4byte 0x0600FD40
_0813CF8C: .4byte 0x000003A5
_0813CF90: .4byte 0x0000029E
_0813CF94: .4byte 0x000009CC
_0813CF98: .4byte sub_081421B8
_0813CF9C:
	ldr r1, _0813CFC4 @ =gUnk_0838650A
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0813CFC8 @ =0x0000029E
	adds r0, r7, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08155128
	ldr r2, _0813CFCC @ =0x000009CC
	adds r1, r7, r2
	ldr r0, _0813CFD0 @ =sub_081421B8
	b _0813D0B6
	.align 2, 0
_0813CFC4: .4byte gUnk_0838650A
_0813CFC8: .4byte 0x0000029E
_0813CFCC: .4byte 0x000009CC
_0813CFD0: .4byte sub_081421B8
_0813CFD4:
	bl sub_0802E57C
	ldr r2, _0813D008 @ =0x00000BEC
	adds r1, r7, r2
	str r0, [r1]
	ldr r1, _0813D00C @ =gUnk_0838650A
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0813D010 @ =0x0000029E
	adds r0, r7, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08155128
	ldr r2, _0813D014 @ =0x000009CC
	adds r1, r7, r2
	ldr r0, _0813D018 @ =sub_0813D364
	b _0813D0B6
	.align 2, 0
_0813D008: .4byte 0x00000BEC
_0813D00C: .4byte gUnk_0838650A
_0813D010: .4byte 0x0000029E
_0813D014: .4byte 0x000009CC
_0813D018: .4byte sub_0813D364
_0813D01C:
	ldr r1, _0813D090 @ =gUnk_08385C14
	ldr r0, _0813D094 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813D098 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0813D09C @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813D066
_0813D04A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813D04A
_0813D066:
	ldr r1, _0813D0A0 @ =gUnk_0838650A
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0813D0A4 @ =0x0000029E
	adds r0, r7, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08155128
	ldr r2, _0813D0A8 @ =0x000009CC
	adds r1, r7, r2
	ldr r0, _0813D0AC @ =sub_081421B8
	b _0813D0B6
	.align 2, 0
_0813D090: .4byte gUnk_08385C14
_0813D094: .4byte gUnk_08D60A80
_0813D098: .4byte gUnk_082D7850
_0813D09C: .4byte 0x0600FD40
_0813D0A0: .4byte gUnk_0838650A
_0813D0A4: .4byte 0x0000029E
_0813D0A8: .4byte 0x000009CC
_0813D0AC: .4byte sub_081421B8
_0813D0B0:
	ldr r0, _0813D0D0 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _0813D0D4 @ =sub_0813D550
_0813D0B6:
	str r0, [r1]
_0813D0B8:
	ldr r1, _0813D0D8 @ =0x00000BDC
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813D0D0: .4byte 0x000009CC
_0813D0D4: .4byte sub_0813D550
_0813D0D8: .4byte 0x00000BDC

	thumb_func_start sub_0813D0DC
sub_0813D0DC: @ 0x0813D0DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813D164 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0813D10C
	ldr r0, _0813D168 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813D16C @ =sub_08142228
	str r0, [r1]
_0813D10C:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0813D124
	ldr r0, _0813D170 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0813D124:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0813D134:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813D134
	ldr r1, _0813D174 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813D164: .4byte 0x000009D8
_0813D168: .4byte 0x000009CC
_0813D16C: .4byte sub_08142228
_0813D170: .4byte 0x000002A7
_0813D174: .4byte 0x00000BDC

	thumb_func_start sub_0813D178
sub_0813D178: @ 0x0813D178
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813D220 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0xf0
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	subs r2, #0x28
	adds r1, r5, r2
	strh r0, [r1]
	subs r2, #0x28
	adds r1, r5, r2
	strh r0, [r1]
	subs r2, #0x28
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0813D1C8
	ldr r2, _0813D224 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813D228 @ =sub_081422A8
	str r0, [r1]
_0813D1C8:
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0813D1E0
	ldr r2, _0813D22C @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0813D1E0:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0813D1F0:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813D1F0
	ldr r2, _0813D230 @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813D220: .4byte 0x000009D8
_0813D224: .4byte 0x000009CC
_0813D228: .4byte sub_081422A8
_0813D22C: .4byte 0x000002A7
_0813D230: .4byte 0x00000BDC

	thumb_func_start sub_0813D234
sub_0813D234: @ 0x0813D234
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0813D33C @ =0x000009D8
	adds r6, r5, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	ldr r2, _0813D340 @ =0x000002EE
	adds r1, r5, r2
	movs r0, #0x1b
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #0xd
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r0, #0x23
	ldr r2, _0813D344 @ =0x00000316
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #0x1a
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r0, #0x2b
	ldr r2, _0813D348 @ =0x0000033E
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #5
	bl __divsi3
	adds r0, #0x33
	ldr r2, _0813D34C @ =0x00000366
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	subs r0, #0x20
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #1
	beq _0813D2B4
	cmp r0, #7
	bne _0813D2C8
_0813D2B4:
	ldr r4, _0813D350 @ =gBgScrollRegs
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #5
	bl __divsi3
	strh r0, [r4, #2]
_0813D2C8:
	ldr r1, _0813D33C @ =0x000009D8
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #4
	ble _0813D2E6
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0813D354 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813D358 @ =sub_0813D784
	str r0, [r1]
_0813D2E6:
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0813D2FE
	ldr r2, _0813D35C @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0813D2FE:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0813D30E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813D30E
	ldr r2, _0813D360 @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813D33C: .4byte 0x000009D8
_0813D340: .4byte 0x000002EE
_0813D344: .4byte 0x00000316
_0813D348: .4byte 0x0000033E
_0813D34C: .4byte 0x00000366
_0813D350: .4byte gBgScrollRegs
_0813D354: .4byte 0x000009CC
_0813D358: .4byte sub_0813D784
_0813D35C: .4byte 0x000002A7
_0813D360: .4byte 0x00000BDC

	thumb_func_start sub_0813D364
sub_0813D364: @ 0x0813D364
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r2, _0813D490 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0813D494 @ =gUnk_08385C14
	ldr r0, _0813D498 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813D49C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0813D4A0 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813D3C4
_0813D3A8:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813D3A8
_0813D3C4:
	ldr r1, _0813D4A4 @ =0x040000D4
	ldr r2, _0813D4A8 @ =0x000009DA
	adds r0, r6, r2
	str r0, [r1]
	ldr r0, _0813D4AC @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0813D4B0 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0813D4B4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r5, #0
	strh r5, [r6, #0x1c]
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0x20
	strh r1, [r0]
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	subs r3, #0x50
	adds r0, r6, r3
	strh r1, [r0]
	subs r2, #0x50
	adds r0, r6, r2
	strh r1, [r0]
	subs r3, #0x26
	adds r1, r6, r3
	movs r0, #0x1b
	strh r0, [r1]
	ldr r0, _0813D4B8 @ =0x00000316
	adds r1, r6, r0
	movs r0, #0x30
	strh r0, [r1]
	adds r2, #0x52
	adds r1, r6, r2
	movs r0, #0x45
	strh r0, [r1]
	adds r3, #0x78
	adds r1, r6, r3
	movs r0, #0x5a
	strh r0, [r1]
	movs r0, #0xe9
	lsls r0, r0, #2
	adds r4, r6, r0
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x25
	adds r2, #0x50
	adds r1, r6, r2
	strh r0, [r1]
	subs r3, #0xbf
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08155128
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r6, r0
	movs r1, #4
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	bl sub_08155128
	ldr r3, _0813D4BC @ =0x0000039B
	adds r1, r6, r3
	movs r0, #6
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08155128
	ldr r2, _0813D4C0 @ =0x000009D8
	adds r0, r6, r2
	strh r5, [r0]
	ldr r3, _0813D4C4 @ =0x000009CC
	adds r1, r6, r3
	ldr r0, _0813D4C8 @ =sub_0813D4CC
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813D490: .4byte gDispCnt
_0813D494: .4byte gUnk_08385C14
_0813D498: .4byte gUnk_08D60A80
_0813D49C: .4byte gUnk_082D7850
_0813D4A0: .4byte 0x0600FD40
_0813D4A4: .4byte 0x040000D4
_0813D4A8: .4byte 0x000009DA
_0813D4AC: .4byte gBgPalette
_0813D4B0: .4byte 0x80000090
_0813D4B4: .4byte gUnk_03002440
_0813D4B8: .4byte 0x00000316
_0813D4BC: .4byte 0x0000039B
_0813D4C0: .4byte 0x000009D8
_0813D4C4: .4byte 0x000009CC
_0813D4C8: .4byte sub_0813D4CC

	thumb_func_start sub_0813D4CC
sub_0813D4CC: @ 0x0813D4CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0813D540 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0813D544 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _0813D4FE
	ldr r0, _0813D548 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _0813D54C @ =sub_08142328
	str r0, [r1]
_0813D4FE:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_0813D512:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813D512
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813D540: .4byte 0x000009D8
_0813D544: .4byte gBldRegs
_0813D548: .4byte 0x000009CC
_0813D54C: .4byte sub_08142328

	thumb_func_start sub_0813D550
sub_0813D550: @ 0x0813D550
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0xe9
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0813D638 @ =gUnk_08385C14
	ldr r0, _0813D63C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813D640 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _0813D644 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0813D5AC
_0813D590:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0813D590
_0813D5AC:
	ldr r1, _0813D648 @ =0x040000D4
	ldr r2, _0813D64C @ =0x000009DA
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, _0813D650 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0813D654 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0813D658 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0813D65C @ =gBgScrollRegs
	movs r2, #0
	movs r0, #0x18
	strh r0, [r1, #2]
	strh r2, [r5, #0x1c]
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r5, r3
	movs r1, #0x20
	strh r1, [r0]
	subs r3, #0x28
	adds r0, r5, r3
	strh r1, [r0]
	subs r3, #0x28
	adds r0, r5, r3
	strh r1, [r0]
	subs r3, #0x28
	adds r0, r5, r3
	strh r1, [r0]
	ldr r0, _0813D660 @ =0x000002EE
	adds r1, r5, r0
	movs r0, #0x1b
	strh r0, [r1]
	adds r3, #0x2a
	adds r1, r5, r3
	movs r0, #0x30
	strh r0, [r1]
	ldr r0, _0813D664 @ =0x0000033E
	adds r1, r5, r0
	movs r0, #0x45
	strh r0, [r1]
	adds r3, #0x50
	adds r1, r5, r3
	movs r0, #0x5a
	strh r0, [r1]
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x10
	strh r0, [r1]
	subs r3, #0xc8
	adds r1, r5, r3
	movs r0, #0x3a
	strh r0, [r1]
	ldr r1, _0813D668 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, _0813D66C @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813D670 @ =sub_0813D674
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813D638: .4byte gUnk_08385C14
_0813D63C: .4byte gUnk_08D60A80
_0813D640: .4byte gUnk_082D7850
_0813D644: .4byte 0x0600FD40
_0813D648: .4byte 0x040000D4
_0813D64C: .4byte 0x000009DA
_0813D650: .4byte gBgPalette
_0813D654: .4byte 0x80000090
_0813D658: .4byte gUnk_03002440
_0813D65C: .4byte gBgScrollRegs
_0813D660: .4byte 0x000002EE
_0813D664: .4byte 0x0000033E
_0813D668: .4byte 0x000009D8
_0813D66C: .4byte 0x000009CC
_0813D670: .4byte sub_0813D674

	thumb_func_start sub_0813D674
sub_0813D674: @ 0x0813D674
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0813D6F4 @ =0x00000BE4
	adds r0, r6, r1
	ldrb r4, [r0]
	adds r4, #1
	strb r4, [r0]
	ldr r5, _0813D6F8 @ =gBldRegs
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _0813D6FC @ =0x00000BE3
	adds r1, r6, r2
	ldrb r1, [r1]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #9
	bls _0813D6A8
	ldr r0, _0813D700 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _0813D704 @ =sub_0813D70C
	str r0, [r1]
_0813D6A8:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r6, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0813D6C0
	ldr r2, _0813D708 @ =0x000002A7
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
_0813D6C0:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0813D6D0:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813D6D0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813D6F4: .4byte 0x00000BE4
_0813D6F8: .4byte gBldRegs
_0813D6FC: .4byte 0x00000BE3
_0813D700: .4byte 0x000009CC
_0813D704: .4byte sub_0813D70C
_0813D708: .4byte 0x000002A7

	thumb_func_start sub_0813D70C
sub_0813D70C: @ 0x0813D70C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813D774 @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	movs r2, #0xbf
	lsls r2, r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _0813D778 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813D77C @ =sub_0813D784
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0813D742
	ldr r2, _0813D780 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0813D742:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0813D752:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813D752
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813D774: .4byte gBldRegs
_0813D778: .4byte 0x000009CC
_0813D77C: .4byte sub_0813D784
_0813D780: .4byte 0x000002A7

	thumb_func_start sub_0813D784
sub_0813D784: @ 0x0813D784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	bl sub_0813B4F0
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _0813D7BC @ =0x000003A5
	adds r0, r5, r2
	strb r1, [r0]
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0813D7B2
	b _0813D8E4
_0813D7B2:
	lsls r0, r0, #2
	ldr r1, _0813D7C0 @ =_0813D7C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813D7BC: .4byte 0x000003A5
_0813D7C0: .4byte _0813D7C4
_0813D7C4: @ jump table
	.4byte _0813D8E4 @ case 0
	.4byte _0813D7D8 @ case 1
	.4byte _0813D874 @ case 2
	.4byte _0813D8A4 @ case 3
	.4byte _0813D8C4 @ case 4
_0813D7D8:
	ldr r0, _0813D7F4 @ =0x0000021E
	bl m4aSongNumStart
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0813D814
	cmp r0, #1
	bgt _0813D7F8
	cmp r0, #0
	beq _0813D802
	b _0813D8E4
	.align 2, 0
_0813D7F4: .4byte 0x0000021E
_0813D7F8:
	cmp r0, #2
	beq _0813D838
	cmp r0, #3
	beq _0813D850
	b _0813D8E4
_0813D802:
	ldr r2, _0813D80C @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813D810 @ =sub_0813DA34
	str r0, [r1]
	b _0813D8E4
	.align 2, 0
_0813D80C: .4byte 0x000009CC
_0813D810: .4byte sub_0813DA34
_0813D814:
	movs r0, #7
	strb r0, [r5, #2]
	ldr r0, _0813D82C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813D830 @ =sub_0814273C
	str r0, [r1]
	movs r2, #0x9d
	lsls r2, r2, #4
	adds r1, r5, r2
	ldr r0, _0813D834 @ =sub_08140A1C
	str r0, [r1]
	b _0813D8E4
	.align 2, 0
_0813D82C: .4byte 0x000009CC
_0813D830: .4byte sub_0814273C
_0813D834: .4byte sub_08140A1C
_0813D838:
	ldr r1, _0813D848 @ =0x000009CC
	adds r0, r5, r1
	ldr r1, _0813D84C @ =sub_0813E0F8
	str r1, [r0]
	movs r0, #0xa
	strb r0, [r5, #2]
	b _0813D8E4
	.align 2, 0
_0813D848: .4byte 0x000009CC
_0813D84C: .4byte sub_0813E0F8
_0813D850:
	strb r0, [r5, #2]
	ldr r2, _0813D868 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813D86C @ =sub_0814273C
	str r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r0, _0813D870 @ =sub_0813E210
	str r0, [r1]
	b _0813D8E4
	.align 2, 0
_0813D868: .4byte 0x000009CC
_0813D86C: .4byte sub_0814273C
_0813D870: .4byte sub_0813E210
_0813D874:
	ldr r0, _0813D894 @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r5, #2]
	ldr r2, _0813D898 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813D89C @ =sub_0814273C
	str r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r0, _0813D8A0 @ =sub_0813C414
	str r0, [r1]
	b _0813D8E4
	.align 2, 0
_0813D894: .4byte 0x0000021F
_0813D898: .4byte 0x000009CC
_0813D89C: .4byte sub_0814273C
_0813D8A0: .4byte sub_0813C414
_0813D8A4:
	ldr r0, _0813D8BC @ =0x0000021D
	bl m4aSongNumStart
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _0813D8C0
	movs r0, #3
	b _0813D8E2
	.align 2, 0
_0813D8BC: .4byte 0x0000021D
_0813D8C0:
	subs r0, #1
	b _0813D8E2
_0813D8C4:
	ldr r0, _0813D8DC @ =0x0000021D
	bl m4aSongNumStart
	movs r0, #0xe9
	lsls r0, r0, #2
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #3
	bne _0813D8E0
	movs r0, #0
	b _0813D8E2
	.align 2, 0
_0813D8DC: .4byte 0x0000021D
_0813D8E0:
	adds r0, #1
_0813D8E2:
	strb r0, [r1]
_0813D8E4:
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r3, r5, r1
	ldr r2, _0813DA10 @ =0x000003A5
	adds r1, r5, r2
	ldrb r0, [r3]
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r2, r5, r2
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r2, #0xc
	str r2, [sp]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0813D9B8
	ldr r2, _0813DA14 @ =gUnk_08385C14
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #1
	ldr r0, _0813DA18 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _0813DA1C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r6, [r1, #2]
	ldr r1, _0813DA20 @ =0x0600FD40
	mov sl, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r7, r5, r2
	ldr r0, _0813DA10 @ =0x000003A5
	adds r0, r0, r5
	mov sb, r0
	cmp r4, r6
	bhs _0813D962
_0813D946:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	add r1, sl
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0813D946
_0813D962:
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	mov r2, sb
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, r0
	movs r0, #3
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	ldr r1, _0813DA24 @ =gUnk_0838650A
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0813DA28 @ =0x0000029E
	adds r0, r5, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
_0813D9B8:
	ldr r0, [sp, #4]
	bl sub_08155128
	cmp r0, #0
	bne _0813D9CA
	ldr r2, _0813DA2C @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0813D9CA:
	ldr r0, [sp]
	bl sub_0815604C
	ldr r0, [sp, #4]
	bl sub_0815604C
	movs r4, #0
_0813D9D8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813D9D8
	ldr r2, _0813DA30 @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813DA10: .4byte 0x000003A5
_0813DA14: .4byte gUnk_08385C14
_0813DA18: .4byte gUnk_08D60A80
_0813DA1C: .4byte gUnk_082D7850
_0813DA20: .4byte 0x0600FD40
_0813DA24: .4byte gUnk_0838650A
_0813DA28: .4byte 0x0000029E
_0813DA2C: .4byte 0x000002A7
_0813DA30: .4byte 0x00000BDC

	thumb_func_start sub_0813DA34
sub_0813DA34: @ 0x0813DA34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _0813DB48 @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x25
	ldr r2, _0813DB4C @ =0x0000038E
	adds r1, r5, r2
	movs r2, #0
	strh r0, [r1]
	ldr r1, _0813DB50 @ =0x000003A6
	adds r0, r5, r1
	strb r2, [r0]
	ldr r2, _0813DB54 @ =0x0000039B
	adds r1, r5, r2
	movs r0, #5
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r2, _0813DB58 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r1, _0813DB5C @ =gUnk_08385C14
	ldr r0, _0813DB60 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813DB64 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r2, _0813DB68 @ =0x0600FD40
	mov r8, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0813DAD2
_0813DAB6:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0813DAB6
_0813DAD2:
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	movs r4, #0
	movs r1, #4
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl sub_08155128
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r5, r1
	strh r4, [r0]
	ldr r2, _0813DB6C @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0813DB70 @ =sub_0813DB74
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
_0813DB16:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813DB16
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813DB48: .4byte 0x00000BE5
_0813DB4C: .4byte 0x0000038E
_0813DB50: .4byte 0x000003A6
_0813DB54: .4byte 0x0000039B
_0813DB58: .4byte 0x000002A7
_0813DB5C: .4byte gUnk_08385C14
_0813DB60: .4byte gUnk_08D60A80
_0813DB64: .4byte gUnk_082D7850
_0813DB68: .4byte 0x0600FD40
_0813DB6C: .4byte 0x000009CC
_0813DB70: .4byte sub_0813DB74

	thumb_func_start sub_0813DB74
sub_0813DB74: @ 0x0813DB74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _0813DBC8 @ =gUnk_08385C14
	ldr r3, _0813DBCC @ =gUnk_08D60A80
	ldrh r0, [r3]
	lsls r0, r0, #5
	adds r1, r2, #0
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
	add r1, sp, #4
	strh r0, [r1]
	ldrh r0, [r3]
	lsls r0, r0, #5
	adds r2, #0xc
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	adds r0, #6
	strh r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	adds r0, r5, #0
	bl sub_0813B4F0
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0813DBBE
	b _0813DD4E
_0813DBBE:
	lsls r0, r0, #2
	ldr r1, _0813DBD0 @ =_0813DBD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813DBC8: .4byte gUnk_08385C14
_0813DBCC: .4byte gUnk_08D60A80
_0813DBD0: .4byte _0813DBD4
_0813DBD4: @ jump table
	.4byte _0813DD4E @ case 0
	.4byte _0813DBE8 @ case 1
	.4byte _0813DC3C @ case 2
	.4byte _0813DC64 @ case 3
	.4byte _0813DCE4 @ case 4
_0813DBE8:
	ldr r0, _0813DC0C @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _0813DC10 @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0813DC14 @ =0x000003A6
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813DC20
	ldr r0, _0813DC18 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813DC1C @ =sub_0814238C
	str r0, [r1]
	b _0813DD4E
	.align 2, 0
_0813DC0C: .4byte 0x0000021E
_0813DC10: .4byte 0x00000BE5
_0813DC14: .4byte 0x000003A6
_0813DC18: .4byte 0x000009CC
_0813DC1C: .4byte sub_0814238C
_0813DC20:
	cmp r0, #1
	beq _0813DC26
	b _0813DD4E
_0813DC26:
	movs r0, #4
	strb r0, [r5, #2]
	ldr r0, _0813DC34 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813DC38 @ =sub_081426AC
	str r0, [r1]
	b _0813DD4E
	.align 2, 0
_0813DC34: .4byte 0x000009CC
_0813DC38: .4byte sub_081426AC
_0813DC3C:
	ldr r0, _0813DC54 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _0813DC58 @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0813DC5C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813DC60 @ =sub_0813DDA8
	str r0, [r1]
	b _0813DD4E
	.align 2, 0
_0813DC54: .4byte 0x0000021F
_0813DC58: .4byte 0x00000BE5
_0813DC5C: .4byte 0x000009CC
_0813DC60: .4byte sub_0813DDA8
_0813DC64:
	ldr r1, _0813DCD0 @ =0x000003A6
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0813DC74
	ldr r0, _0813DCD4 @ =0x0000021D
	bl m4aSongNumStart
_0813DC74:
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0813DCD8 @ =0x0000039B
	adds r1, r5, r0
	movs r0, #5
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldrb r0, [r4]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	ldr r1, _0813DCDC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _0813DCE0 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0813DD4E
_0813DCB2:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0813DCB2
	b _0813DD4E
	.align 2, 0
_0813DCD0: .4byte 0x000003A6
_0813DCD4: .4byte 0x0000021D
_0813DCD8: .4byte 0x0000039B
_0813DCDC: .4byte gUnk_082D7850
_0813DCE0: .4byte 0x0600FD40
_0813DCE4:
	ldr r0, _0813DD94 @ =0x000003A6
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0813DCF4
	ldr r0, _0813DD98 @ =0x0000021D
	bl m4aSongNumStart
_0813DCF4:
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0813DD9C @ =0x0000039B
	adds r1, r5, r0
	movs r0, #6
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldrb r0, [r4]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	ldr r1, _0813DDA0 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _0813DDA4 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0813DD4E
_0813DD32:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0813DD32
_0813DD4E:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_0813DD62:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813DD62
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813DD94: .4byte 0x000003A6
_0813DD98: .4byte 0x0000021D
_0813DD9C: .4byte 0x0000039B
_0813DDA0: .4byte gUnk_082D7850
_0813DDA4: .4byte 0x0600FD40

	thumb_func_start sub_0813DDA8
sub_0813DDA8: @ 0x0813DDA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0xe9
	lsls r0, r0, #2
	adds r4, r6, r0
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #0x1f]
	str r2, [r0, #8]
	bl sub_08155128
	ldr r2, _0813DE64 @ =gUnk_08385C14
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #1
	ldr r0, _0813DE68 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _0813DE6C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0813DE70 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813DE22
_0813DE06:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813DE06
_0813DE22:
	ldr r0, _0813DE74 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _0813DE78 @ =sub_0813D784
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_0813DE3E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813DE3E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813DE64: .4byte gUnk_08385C14
_0813DE68: .4byte gUnk_08D60A80
_0813DE6C: .4byte gUnk_082D7850
_0813DE70: .4byte 0x0600FD40
_0813DE74: .4byte 0x000009CC
_0813DE78: .4byte sub_0813D784

	thumb_func_start sub_0813DE7C
sub_0813DE7C: @ 0x0813DE7C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0813DEE0 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0813DEE4 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0813DEAA
	ldr r0, _0813DEE8 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _0813DEEC @ =sub_081423F0
	str r0, [r1]
_0813DEAA:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_0813DEBE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813DEBE
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813DEE0: .4byte 0x000009D8
_0813DEE4: .4byte gBldRegs
_0813DEE8: .4byte 0x000009CC
_0813DEEC: .4byte sub_081423F0

	thumb_func_start sub_0813DEF0
sub_0813DEF0: @ 0x0813DEF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _0813DF3C @ =0x000009D8
	add r5, r8
	ldrh r4, [r5]
	adds r4, #1
	movs r7, #0
	strh r4, [r5]
	ldr r6, _0813DF40 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0813DF30
	strh r7, [r6]
	strh r7, [r6, #2]
	strh r7, [r6, #4]
	strh r7, [r5]
	ldr r1, _0813DF44 @ =0x000009CC
	add r1, r8
	ldr r0, _0813DF48 @ =sub_08142494
	str r0, [r1]
_0813DF30:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813DF3C: .4byte 0x000009D8
_0813DF40: .4byte gBldRegs
_0813DF44: .4byte 0x000009CC
_0813DF48: .4byte sub_08142494

	thumb_func_start sub_0813DF4C
sub_0813DF4C: @ 0x0813DF4C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0813DFBC @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0813DFC0 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0813DF7A
	ldr r0, _0813DFC4 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _0813DFC8 @ =sub_0814271C
	str r0, [r1]
_0813DF7A:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_0813DF8E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813DF8E
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813DFBC: .4byte 0x000009D8
_0813DFC0: .4byte gBldRegs
_0813DFC4: .4byte 0x000009CC
_0813DFC8: .4byte sub_0814271C

	thumb_func_start sub_0813DFCC
sub_0813DFCC: @ 0x0813DFCC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0813E084 @ =0x000009D8
	adds r6, r5, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	movs r2, #0
	ldrsh r1, [r6, r2]
	movs r0, #0xd0
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r0, #0x20
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	subs r2, #0x28
	adds r1, r5, r2
	strh r0, [r1]
	subs r2, #0x28
	adds r1, r5, r2
	strh r0, [r1]
	subs r2, #0x28
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x10
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	strh r0, [r5, #0x1c]
	ldrb r0, [r5, #2]
	cmp r0, #1
	beq _0813E042
	cmp r0, #7
	bne _0813E05A
_0813E042:
	ldr r4, _0813E088 @ =gBgScrollRegs
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x18
	strh r0, [r4, #2]
_0813E05A:
	ldr r1, _0813E084 @ =0x000009D8
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #4
	ble _0813E098
	adds r0, r5, #0
	bl sub_0813A9DC
	ldr r0, _0813E08C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813E090 @ =sub_081427BC
	str r0, [r1]
	ldr r1, _0813E094 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	b _0813E0E8
	.align 2, 0
_0813E084: .4byte 0x000009D8
_0813E088: .4byte gBgScrollRegs
_0813E08C: .4byte 0x000009CC
_0813E090: .4byte sub_081427BC
_0813E094: .4byte 0x00000BDC
_0813E098:
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r4, r5, r2
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0813E0B0
	ldr r0, _0813E0F0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0813E0B0:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0813E0C0:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813E0C0
	ldr r2, _0813E0F4 @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0813E0E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813E0F0: .4byte 0x000002A7
_0813E0F4: .4byte 0x00000BDC

	thumb_func_start sub_0813E0F8
sub_0813E0F8: @ 0x0813E0F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0813E16C @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _0813E170 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _0813E174 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _0813E178 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0813E17C @ =sub_0813E184
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_0813E132:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813E132
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0813E164
	ldr r0, _0813E180 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0813E164:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813E16C: .4byte gUnk_030016A0
_0813E170: .4byte gBldRegs
_0813E174: .4byte 0x000009D8
_0813E178: .4byte 0x000009CC
_0813E17C: .4byte sub_0813E184
_0813E180: .4byte 0x000002A7

	thumb_func_start sub_0813E184
sub_0813E184: @ 0x0813E184
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0813E1FC @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0813E200 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _0813E1B2
	ldr r0, _0813E204 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _0813E208 @ =sub_08142848
	str r0, [r1]
_0813E1B2:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r6, r1
	adds r0, r4, #0
	bl sub_0815604C
	movs r5, #0
_0813E1C8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0813E1C8
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0813E1F6
	ldr r0, _0813E20C @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_0813E1F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813E1FC: .4byte 0x000009D8
_0813E200: .4byte gBldRegs
_0813E204: .4byte 0x000009CC
_0813E208: .4byte sub_08142848
_0813E20C: .4byte 0x000002A7

	thumb_func_start sub_0813E210
sub_0813E210: @ 0x0813E210
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	bl sub_08139A3C
	ldrb r0, [r4, #1]
	movs r6, #0
	strb r0, [r4]
	movs r0, #3
	strb r0, [r4, #1]
	adds r0, r4, #7
	ldrb r1, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _0813E2B0 @ =0x00000472
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #0
	mov r8, r1
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	ldr r5, _0813E2B4 @ =gUnk_08385CD4
	ldr r3, _0813E2B8 @ =gUnk_08D60A80
	ldrh r2, [r3]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r5
	ldrh r1, [r1, #0x20]
	strh r1, [r0, #0xc]
	ldrh r2, [r3]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r5
	ldrh r1, [r1, #0x22]
	strb r1, [r0, #0x1a]
	strh r6, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, r8
	strb r2, [r0, #0x1f]
	ldr r1, _0813E2BC @ =0x0000FF64
	strh r1, [r0, #0x10]
	strh r6, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, _0813E2C0 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	ldr r2, _0813E2C4 @ =0x000009CC
	adds r4, r4, r2
	ldr r0, _0813E2C8 @ =sub_0814291C
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813E2B0: .4byte 0x00000472
_0813E2B4: .4byte gUnk_08385CD4
_0813E2B8: .4byte gUnk_08D60A80
_0813E2BC: .4byte 0x0000FF64
_0813E2C0: .4byte 0x000002A7
_0813E2C4: .4byte 0x000009CC
_0813E2C8: .4byte sub_0814291C

	thumb_func_start sub_0813E2CC
sub_0813E2CC: @ 0x0813E2CC
	push {r4, r5, lr}
	ldrb r3, [r0, #0xa]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r0, r1
	movs r2, #0x46
	adds r2, r2, r1
	mov ip, r2
	movs r4, #0
	movs r2, #0x1b
	mov r5, ip
	strh r2, [r5]
	movs r2, #0x27
	adds r1, #0xbe
	strh r2, [r1]
	lsls r1, r3, #4
	subs r1, r1, r3
	lsls r1, r1, #3
	adds r3, r0, r1
	ldrh r1, [r5]
	adds r1, #8
	movs r5, #0xc3
	lsls r5, r5, #1
	adds r2, r3, r5
	strh r1, [r2]
	subs r5, #0x28
	adds r2, r3, r5
	strh r1, [r2]
	subs r5, #0x28
	adds r2, r3, r5
	strh r1, [r2]
	ldr r1, _0813E330 @ =gUnk_08386504
	ldrh r2, [r1]
	ldr r3, _0813E334 @ =0x0000029E
	adds r1, r0, r3
	strh r2, [r1]
	ldr r5, _0813E338 @ =0x000009D8
	adds r1, r0, r5
	strh r4, [r1]
	ldr r1, _0813E33C @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _0813E340 @ =sub_0813E344
	str r1, [r2]
	bl sub_0813AE30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813E330: .4byte gUnk_08386504
_0813E334: .4byte 0x0000029E
_0813E338: .4byte 0x000009D8
_0813E33C: .4byte 0x000009CC
_0813E340: .4byte sub_0813E344

	thumb_func_start sub_0813E344
sub_0813E344: @ 0x0813E344
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r5, [r7, #0xa]
	ldr r0, _0813E3E4 @ =0x000009D8
	adds r6, r7, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r7, r4
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r1, r0, #0
	adds r0, #0xf0
	adds r2, r4, #0
	adds r2, #0x44
	strh r0, [r2]
	ldr r3, _0813E3E8 @ =0x00000143
	adds r0, r1, r3
	adds r4, #0xbc
	strh r0, [r4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r3, r7, r0
	ldrh r0, [r2]
	adds r0, #0xa8
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb0
	adds r4, #0x28
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb8
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	subs r0, #0x20
	movs r4, #0xa7
	lsls r4, r4, #2
	adds r1, r7, r4
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #4
	ble _0813E3D8
	ldr r2, _0813E3EC @ =0x000009CC
	adds r1, r7, r2
	ldr r0, _0813E3F0 @ =sub_0813E3F4
	str r0, [r1]
_0813E3D8:
	adds r0, r7, #0
	bl sub_0813AE30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813E3E4: .4byte 0x000009D8
_0813E3E8: .4byte 0x00000143
_0813E3EC: .4byte 0x000009CC
_0813E3F0: .4byte sub_0813E3F4

	thumb_func_start sub_0813E3F4
sub_0813E3F4: @ 0x0813E3F4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0813E48C @ =0x000003A7
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0813E490 @ =0x000003EF
	adds r1, r4, r0
	movs r0, #7
	strb r0, [r1]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r6, r4, r1
	adds r0, r6, #0
	bl sub_08155128
	movs r0, #0xea
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r3, _0813E494 @ =gUnk_08385CD4
	ldr r2, _0813E498 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0xc0
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0xc2
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0813AE30
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r4, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _0813E49C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _0813E4A0 @ =sub_0813E554
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813E48C: .4byte 0x000003A7
_0813E490: .4byte 0x000003EF
_0813E494: .4byte gUnk_08385CD4
_0813E498: .4byte gUnk_08D60A80
_0813E49C: .4byte 0x000009CC
_0813E4A0: .4byte sub_0813E554

	thumb_func_start sub_0813E4A4
sub_0813E4A4: @ 0x0813E4A4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0813E53C @ =0x000003A7
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0813E540 @ =0x000003EF
	adds r1, r4, r0
	movs r0, #7
	strb r0, [r1]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r6, r4, r1
	adds r0, r6, #0
	bl sub_08155128
	movs r0, #0xea
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r3, _0813E544 @ =gUnk_08385CD4
	ldr r2, _0813E548 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0xc8
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0xca
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0813AE30
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r4, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _0813E54C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _0813E550 @ =sub_0813E554
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813E53C: .4byte 0x000003A7
_0813E540: .4byte 0x000003EF
_0813E544: .4byte gUnk_08385CD4
_0813E548: .4byte gUnk_08D60A80
_0813E54C: .4byte 0x000009CC
_0813E550: .4byte sub_0813E554

	thumb_func_start sub_0813E554
sub_0813E554: @ 0x0813E554
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0813B4F0
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _0813E652
	lsls r0, r0, #2
	ldr r1, _0813E574 @ =_0813E578
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813E574: .4byte _0813E578
_0813E578: @ jump table
	.4byte _0813E652 @ case 0
	.4byte _0813E594 @ case 1
	.4byte _0813E5DC @ case 2
	.4byte _0813E652 @ case 3
	.4byte _0813E652 @ case 4
	.4byte _0813E5F8 @ case 5
	.4byte _0813E62C @ case 6
_0813E594:
	ldr r0, _0813E5B8 @ =0x0000021E
	bl m4aSongNumStart
	ldr r1, _0813E5BC @ =0x000003A7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0813E5E2
	adds r1, #0xc9
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0813E5C8
	ldr r0, _0813E5C0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813E5C4 @ =sub_0813E4A4
	str r0, [r1]
	b _0813E652
	.align 2, 0
_0813E5B8: .4byte 0x0000021E
_0813E5BC: .4byte 0x000003A7
_0813E5C0: .4byte 0x000009CC
_0813E5C4: .4byte sub_0813E4A4
_0813E5C8:
	ldr r0, _0813E5D4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813E5D8 @ =sub_0813E680
	str r0, [r1]
	b _0813E652
	.align 2, 0
_0813E5D4: .4byte 0x000009CC
_0813E5D8: .4byte sub_0813E680
_0813E5DC:
	ldr r0, _0813E5EC @ =0x0000021F
	bl m4aSongNumStart
_0813E5E2:
	ldr r0, _0813E5F0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813E5F4 @ =sub_08142A54
	str r0, [r1]
	b _0813E652
	.align 2, 0
_0813E5EC: .4byte 0x0000021F
_0813E5F0: .4byte 0x000009CC
_0813E5F4: .4byte sub_08142A54
_0813E5F8:
	ldr r1, _0813E620 @ =0x000003A7
	adds r5, r4, r1
	ldrb r0, [r5]
	cmp r0, #0
	bne _0813E608
	ldr r0, _0813E624 @ =0x0000021D
	bl m4aSongNumStart
_0813E608:
	movs r0, #1
	strb r0, [r5]
	ldr r0, _0813E628 @ =0x000003EF
	adds r1, r4, r0
	movs r0, #6
	strb r0, [r1]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	b _0813E652
	.align 2, 0
_0813E620: .4byte 0x000003A7
_0813E624: .4byte 0x0000021D
_0813E628: .4byte 0x000003EF
_0813E62C:
	ldr r0, _0813E674 @ =0x000003A7
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0813E63C
	ldr r0, _0813E678 @ =0x0000021D
	bl m4aSongNumStart
_0813E63C:
	movs r0, #0
	strb r0, [r5]
	ldr r0, _0813E67C @ =0x000003EF
	adds r1, r4, r0
	movs r0, #7
	strb r0, [r1]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
_0813E652:
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813E674: .4byte 0x000003A7
_0813E678: .4byte 0x0000021D
_0813E67C: .4byte 0x000003EF

	thumb_func_start sub_0813E680
sub_0813E680: @ 0x0813E680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r1, _0813E764 @ =0x000009D8
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0813E768 @ =0x000009CC
	add r1, r8
	ldr r0, _0813E76C @ =sub_0813E788
	str r0, [r1]
	mov r0, r8
	bl sub_0813AE30
	movs r0, #0xea
	lsls r0, r0, #2
	add r0, r8
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	add r0, r8
	bl sub_0815604C
	movs r0, #0x88
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r5, #0
	ldr r0, _0813E770 @ =0x00196225
	mov sl, r0
	ldr r1, _0813E774 @ =0x3C6EF35F
	mov sb, r1
_0813E6C8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov ip, r0
	mov r3, r8
	add r3, ip
	ldr r2, _0813E778 @ =gUnk_030068D8
	ldr r0, [r2]
	mov r2, sl
	muls r2, r0, r2
	add r2, sb
	movs r0, #0x7f
	ands r0, r2
	adds r0, #0x4b
	movs r4, #0x81
	lsls r4, r4, #3
	adds r1, r3, r4
	strh r0, [r1]
	mov r1, sl
	muls r1, r2, r1
	add r1, sb
	movs r0, #0x1f
	ands r0, r1
	adds r0, #0x1b
	ldr r2, _0813E77C @ =0x0000040A
	adds r3, r3, r2
	strh r0, [r3]
	mov r0, sl
	muls r0, r1, r0
	add r0, sb
	ldr r4, _0813E778 @ =gUnk_030068D8
	str r0, [r4]
	movs r6, #0xf
	ands r6, r0
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r6
	bhs _0813E72C
	movs r5, #0xfe
	lsls r5, r5, #2
	add r5, ip
_0813E71A:
	mov r1, r8
	adds r0, r1, r5
	bl sub_08155128
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _0813E71A
_0813E72C:
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813E6C8
	ldr r1, _0813E780 @ =0x00000473
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	ldr r2, _0813E778 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _0813E770 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _0813E774 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r0, #5
	ldr r1, _0813E784 @ =0x00000474
	add r1, r8
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813E764: .4byte 0x000009D8
_0813E768: .4byte 0x000009CC
_0813E76C: .4byte sub_0813E788
_0813E770: .4byte 0x00196225
_0813E774: .4byte 0x3C6EF35F
_0813E778: .4byte gUnk_030068D8
_0813E77C: .4byte 0x0000040A
_0813E780: .4byte 0x00000473
_0813E784: .4byte 0x00000474

	thumb_func_start sub_0813E788
sub_0813E788: @ 0x0813E788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	mov sl, r0
	ldr r2, _0813EA18 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _0813EA1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0813EA20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, _0813EA24 @ =0x000009D8
	adds r4, r7, r2
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0813E7CE
	ldr r3, _0813EA28 @ =0x000009CC
	adds r1, r7, r3
	ldr r0, _0813EA2C @ =sub_0813EAC0
	str r0, [r1]
_0813E7CE:
	adds r0, r7, #7
	add r0, sl
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, sl
	lsls r5, r5, #4
	str r5, [sp, #0x14]
	mov r1, sl
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	cmp r0, #0
	ble _0813E8B8
	ldr r1, _0813EA30 @ =gUnk_08386659
	mov r0, sp
	movs r2, #3
	bl memcpy
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sp
	adds r1, r3, r0
	mov r4, sb
	ldrb r0, [r4]
	ldrb r1, [r1]
	subs r0, r0, r1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0813E81A
	movs r0, #0
	strb r0, [r4]
_0813E81A:
	mov r5, sb
	movs r4, #0
	ldrsb r4, [r5, r4]
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, [sp, #0x14]
	mov r1, sl
	subs r4, r0, r1
	lsls r4, r4, #3
	movs r2, #0x92
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r4, r7, r4
	adds r1, r4, #0
	adds r1, #0x28
	ldr r3, _0813EA34 @ =gUnk_083864B4
	mov r8, r3
	lsls r5, r5, #3
	add r5, r8
	ldrh r0, [r5]
	strh r0, [r1, #0xc]
	ldrh r0, [r5, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl sub_08155128
	adds r1, r4, #0
	adds r1, #0x50
	lsls r6, r6, #3
	add r6, r8
	ldrh r0, [r6]
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl sub_08155128
	mov r4, sb
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #1
	cmp r1, #9
	bgt _0813E894
	movs r0, #0
_0813E894:
	cmp r0, #0
	beq _0813E8B8
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_0813AF5C
	ldr r0, [sp, #0x10]
	add r0, sl
	lsls r0, r0, #3
	adds r0, #0xac
	adds r1, r7, r0
	ldrh r0, [r4]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl sub_08155128
_0813E8B8:
	ldr r5, [sp, #0xc]
	lsls r2, r5, #0x18
	asrs r6, r2, #0x18
	adds r1, r6, #0
	adds r1, #0x5c
	ldr r3, _0813EA38 @ =0x000003BA
	adds r0, r7, r3
	strh r1, [r0]
	subs r1, #6
	ldr r4, _0813EA3C @ =0x000003E2
	adds r0, r7, r4
	strh r1, [r0]
	ldr r1, [sp, #0x10]
	add r1, sl
	lsls r1, r1, #3
	adds r1, r7, r1
	adds r0, r6, #0
	adds r0, #0x1b
	adds r3, r1, #0
	adds r3, #0x46
	strh r0, [r3]
	ldr r5, [sp, #0x14]
	mov r3, sl
	subs r0, r5, r3
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r6, #0
	adds r0, #0x23
	movs r5, #0xc3
	lsls r5, r5, #1
	adds r3, r4, r5
	strh r0, [r3]
	subs r5, #0x28
	adds r3, r4, r5
	strh r0, [r3]
	subs r5, #0x28
	adds r3, r4, r5
	strh r0, [r3]
	adds r0, #4
	adds r1, #0xbe
	strh r0, [r1]
	movs r5, #0
	adds r4, r2, #0
	ldr r0, _0813EA40 @ =gUnk_08386504
	mov sb, r0
	ldr r1, _0813EA44 @ =gBgScrollRegs
	mov ip, r1
	ldr r2, _0813EA48 @ =gUnk_08D62511
	mov r8, r2
	adds r2, r6, #0
	ldr r3, _0813EA4C @ =0x0000040A
_0813E91E:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r7, r1
	lsls r0, r5, #1
	add r0, r8
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, r1, r3
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813E91E
	asrs r0, r4, #0x18
	mov r3, sb
	ldrh r1, [r3]
	adds r1, r1, r0
	ldr r4, _0813EA50 @ =0x0000029E
	adds r2, r7, r4
	strh r1, [r2]
	mov r5, ip
	strh r0, [r5, #0xa]
	movs r5, #0
	ldr r0, _0813EA18 @ =gUnk_030068D8
	mov sb, r0
	ldr r1, _0813EA1C @ =0x00196225
	mov r8, r1
	ldr r6, _0813EA20 @ =0x3C6EF35F
_0813E95A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r0, r4, r2
	adds r0, r7, r0
	bl sub_08155128
	cmp r0, #0
	bne _0813E9A8
	adds r3, r7, r4
	mov r4, sb
	ldr r0, [r4]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r6
	movs r0, #0x7f
	ands r0, r2
	adds r0, #0x4b
	movs r4, #0x81
	lsls r4, r4, #3
	adds r1, r3, r4
	strh r0, [r1]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1b
	ldr r2, _0813EA4C @ =0x0000040A
	adds r1, r3, r2
	strh r0, [r1]
	adds r4, #0xb
	adds r3, r3, r4
	movs r0, #0xff
	strb r0, [r3]
_0813E9A8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813E95A
	ldr r5, _0813EA54 @ =0x00000473
	adds r2, r7, r5
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r1, _0813EA58 @ =0x00000474
	adds r4, r7, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r4]
	cmp r0, r3
	blo _0813E9F4
	movs r3, #0
	subs r5, #2
	adds r1, r7, r5
	ldrb r0, [r1]
	cmp r0, #0
	bne _0813E9D8
	movs r3, #1
_0813E9D8:
	strb r3, [r1]
	movs r0, #0
	strb r0, [r2]
	ldr r2, _0813EA18 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _0813EA1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0813EA20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r0, #5
	strb r0, [r4]
_0813E9F4:
	ldr r2, _0813EA5C @ =0x00000471
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0813EA60
	ldr r0, [sp, #0x10]
	add r0, sl
	lsls r0, r0, #3
	adds r1, r7, r0
	adds r1, #0x53
	movs r2, #3
	strb r2, [r1]
	adds r0, #0x34
	adds r0, r7, r0
	bl sub_08155128
	b _0813EA76
	.align 2, 0
_0813EA18: .4byte gUnk_030068D8
_0813EA1C: .4byte 0x00196225
_0813EA20: .4byte 0x3C6EF35F
_0813EA24: .4byte 0x000009D8
_0813EA28: .4byte 0x000009CC
_0813EA2C: .4byte sub_0813EAC0
_0813EA30: .4byte gUnk_08386659
_0813EA34: .4byte gUnk_083864B4
_0813EA38: .4byte 0x000003BA
_0813EA3C: .4byte 0x000003E2
_0813EA40: .4byte gUnk_08386504
_0813EA44: .4byte gBgScrollRegs
_0813EA48: .4byte gUnk_08D62511
_0813EA4C: .4byte 0x0000040A
_0813EA50: .4byte 0x0000029E
_0813EA54: .4byte 0x00000473
_0813EA58: .4byte 0x00000474
_0813EA5C: .4byte 0x00000471
_0813EA60:
	ldr r0, [sp, #0x10]
	add r0, sl
	lsls r0, r0, #3
	adds r1, r7, r0
	adds r1, #0x53
	movs r2, #2
	strb r2, [r1]
	adds r0, #0x34
	adds r0, r7, r0
	bl sub_08155128
_0813EA76:
	adds r0, r7, #0
	bl sub_0813AE30
	movs r3, #0xea
	lsls r3, r3, #2
	adds r0, r7, r3
	bl sub_0815604C
	movs r4, #0xf4
	lsls r4, r4, #2
	adds r0, r7, r4
	bl sub_0815604C
	movs r5, #0
_0813EA92:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r7, r0
	bl sub_0815604C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0813EA92
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813EAC0
sub_0813EAC0: @ 0x0813EAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	mov sl, r0
	ldr r1, _0813EBB8 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r6, _0813EBBC @ =0x000009CC
	adds r1, r4, r6
	ldr r0, _0813EBC0 @ =sub_08142984
	str r0, [r1]
	mov r0, sl
	lsls r0, r0, #4
	mov r1, sl
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r8, r0
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, r8
	adds r7, r4, r0
	ldr r0, _0813EBC4 @ =gUnk_083864B4
	ldrh r6, [r0]
	strh r6, [r7, #0xc]
	ldrh r5, [r0, #2]
	strb r5, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	mov sb, r7
	adds r7, #0x28
	strh r6, [r7, #0xc]
	strb r5, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	mov r7, sb
	adds r7, #0x50
	strh r6, [r7, #0xc]
	strb r5, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, _0813EBC8 @ =gUnk_08386504
	ldrh r1, [r0]
	ldr r2, _0813EBCC @ =0x0000029E
	adds r0, r4, r2
	strh r1, [r0]
	movs r6, #0
	strh r6, [r4, #0x1e]
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	lsls r0, r0, #3
	adds r5, r4, r0
	adds r2, r5, #0
	adds r2, #0x46
	movs r1, #0x1b
	strh r1, [r2]
	mov r2, r8
	adds r3, r4, r2
	movs r6, #0xc3
	lsls r6, r6, #1
	adds r2, r3, r6
	movs r1, #0x23
	strh r1, [r2]
	subs r6, #0x28
	adds r2, r3, r6
	strh r1, [r2]
	subs r6, #0x28
	adds r2, r3, r6
	strh r1, [r2]
	adds r2, r5, #0
	adds r2, #0xbe
	movs r1, #0x27
	strh r1, [r2]
	ldr r1, _0813EBD0 @ =0x000003BA
	adds r2, r4, r1
	movs r1, #0x5c
	strh r1, [r2]
	ldr r6, _0813EBD4 @ =0x000003E2
	adds r2, r4, r6
	movs r1, #0x56
	strh r1, [r2]
	ldr r1, _0813EBD8 @ =gBgScrollRegs
	movs r2, #0
	strh r2, [r1, #0xa]
	strh r2, [r1, #6]
	movs r2, #0x18
	strh r2, [r1, #2]
	adds r2, r5, #0
	adds r2, #0x53
	movs r1, #2
	strb r1, [r2]
	adds r0, #0x34
	adds r0, r4, r0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0813AE30
	subs r6, #0x3a
	adds r0, r4, r6
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0815604C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EBB8: .4byte 0x000009D8
_0813EBBC: .4byte 0x000009CC
_0813EBC0: .4byte sub_08142984
_0813EBC4: .4byte gUnk_083864B4
_0813EBC8: .4byte gUnk_08386504
_0813EBCC: .4byte 0x0000029E
_0813EBD0: .4byte 0x000003BA
_0813EBD4: .4byte 0x000003E2
_0813EBD8: .4byte gBgScrollRegs

	thumb_func_start sub_0813EBDC
sub_0813EBDC: @ 0x0813EBDC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r5, [r6, #0xa]
	ldr r0, _0813ECA0 @ =0x000009D8
	adds r7, r6, r0
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r6, r4
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r0, #0xd0
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x20
	adds r2, r4, #0
	adds r2, #0x44
	strh r1, [r2]
	adds r0, #0x73
	adds r4, #0xbc
	strh r0, [r4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r3, r6, r0
	ldrh r0, [r2]
	adds r0, #0xa8
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb0
	adds r4, #0x28
	adds r1, r3, r4
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb8
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	movs r4, #0
	ldrsh r1, [r7, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x10
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r4, #0
	ldrsh r1, [r7, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	strh r0, [r6, #0x1c]
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _0813EC8E
	ldr r4, _0813ECA4 @ =gBgScrollRegs
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x18
	strh r0, [r4, #2]
_0813EC8E:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #4
	ble _0813ECB0
	ldr r2, _0813ECA8 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _0813ECAC @ =sub_08142A9C
	str r0, [r1]
	b _0813ECB6
	.align 2, 0
_0813ECA0: .4byte 0x000009D8
_0813ECA4: .4byte gBgScrollRegs
_0813ECA8: .4byte 0x000009CC
_0813ECAC: .4byte sub_08142A9C
_0813ECB0:
	adds r0, r6, #0
	bl sub_0813AE30
_0813ECB6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0813ECBC
sub_0813ECBC: @ 0x0813ECBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #1]
	movs r5, #0
	strb r0, [r7]
	ldrb r0, [r7, #2]
	strb r0, [r7, #1]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, _0813ED08 @ =0x000007D1
	adds r0, r7, r2
	strb r5, [r0]
	adds r1, #4
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, _0813ED0C @ =0x00000BEC
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r0, #0
	beq _0813ECF4
	bl sub_0802FBE0
	str r5, [r4]
_0813ECF4:
	ldrb r0, [r7, #1]
	cmp r0, #5
	bne _0813ED14
	ldr r1, _0813ED10 @ =0x000009CA
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019F28
	b _0813ED18
	.align 2, 0
_0813ED08: .4byte 0x000007D1
_0813ED0C: .4byte 0x00000BEC
_0813ED10: .4byte 0x000009CA
_0813ED14:
	bl sub_08032B0C
_0813ED18:
	ldr r2, _0813EE08 @ =0x00000BE8
	adds r1, r7, r2
	str r0, [r1]
	ldr r2, _0813EE0C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0813EE10 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0813EE14 @ =gUnk_08385C14
	ldr r0, _0813EE18 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x1a
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0813EE1C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r5, [r1, #2]
	ldr r1, _0813EE20 @ =0x0600FB40
	mov sb, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	adds r6, r7, #0
	adds r6, #0xc
	cmp r4, r5
	bhs _0813ED78
_0813ED5C:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	add r1, sb
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813ED5C
_0813ED78:
	ldr r0, _0813EE24 @ =gBgScrollRegs
	movs r5, #0
	movs r3, #0
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r1, _0813EE28 @ =0x040000D4
	ldr r2, _0813EE2C @ =0x000009DA
	adds r0, r7, r2
	str r0, [r1]
	ldr r0, _0813EE30 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0813EE34 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0813EE38 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	ldr r4, _0813EE3C @ =gUnk_08385CD4
	ldr r2, _0813EE18 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x18]
	strh r0, [r6, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x1a]
	strb r0, [r6, #0x1a]
	strh r3, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	strh r3, [r6, #0x10]
	strh r3, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, _0813EE40 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _0813EE44 @ =sub_08142AD4
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EE08: .4byte 0x00000BE8
_0813EE0C: .4byte gDispCnt
_0813EE10: .4byte 0x0000FDFF
_0813EE14: .4byte gUnk_08385C14
_0813EE18: .4byte gUnk_08D60A80
_0813EE1C: .4byte gUnk_082D7850
_0813EE20: .4byte 0x0600FB40
_0813EE24: .4byte gBgScrollRegs
_0813EE28: .4byte 0x040000D4
_0813EE2C: .4byte 0x000009DA
_0813EE30: .4byte gBgPalette
_0813EE34: .4byte 0x80000090
_0813EE38: .4byte gUnk_03002440
_0813EE3C: .4byte gUnk_08385CD4
_0813EE40: .4byte 0x000009CC
_0813EE44: .4byte sub_08142AD4

	thumb_func_start sub_0813EE48
sub_0813EE48: @ 0x0813EE48
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0813EEBC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0813EEC0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813EEC4 @ =sub_0813EED0
	str r0, [r1]
	ldr r1, _0813EEC8 @ =gObjPalette
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r5, [r0]
	movs r2, #3
	adds r6, r1, #0
	ldr r7, _0813EECC @ =gUnk_03002440
	adds r3, r6, #0
_0813EE6C:
	adds r1, r2, #0
	adds r1, #0x35
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r0, r2, #0
	adds r0, #0x34
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0813EE6C
	adds r0, r6, #0
	adds r0, #0x6a
	strh r5, [r0]
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EEBC: .4byte 0x000009D8
_0813EEC0: .4byte 0x000009CC
_0813EEC4: .4byte sub_0813EED0
_0813EEC8: .4byte gObjPalette
_0813EECC: .4byte gUnk_03002440

	thumb_func_start sub_0813EED0
sub_0813EED0: @ 0x0813EED0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0813EF60 @ =0x000009D8
	adds r7, r6, r0
	ldrh r4, [r7]
	adds r4, #1
	strh r4, [r7]
	ldr r5, _0813EF64 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0813EF02
	ldr r2, _0813EF68 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _0813EF6C @ =sub_0813EF78
	str r0, [r1]
_0813EF02:
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0x11
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x12
	ldr r2, _0813EF70 @ =0x0000057A
	adds r1, r6, r2
	strh r0, [r1]
	ldr r0, _0813EF74 @ =0x000007D2
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813EF32
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813EF32:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r6, r2
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813EF60: .4byte 0x000009D8
_0813EF64: .4byte gBldRegs
_0813EF68: .4byte 0x000009CC
_0813EF6C: .4byte sub_0813EF78
_0813EF70: .4byte 0x0000057A
_0813EF74: .4byte 0x000007D2

	thumb_func_start sub_0813EF78
sub_0813EF78: @ 0x0813EF78
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813EFDC @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _0813EFE0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813EFE4 @ =sub_0813EFF0
	str r0, [r1]
	ldr r0, _0813EFE8 @ =0x0000057A
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0813EFEC @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813EFB0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813EFB0:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813EFDC: .4byte gBldRegs
_0813EFE0: .4byte 0x000009CC
_0813EFE4: .4byte sub_0813EFF0
_0813EFE8: .4byte 0x0000057A
_0813EFEC: .4byte 0x000007D2

	thumb_func_start sub_0813EFF0
sub_0813EFF0: @ 0x0813EFF0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _0813F078 @ =0x000009D8
	adds r0, r4, r1
	movs r5, #0
	movs r6, #0
	strh r6, [r0]
	ldr r1, _0813F07C @ =0x000007D3
	adds r0, r4, r1
	strb r5, [r0]
	ldr r0, _0813F080 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F084 @ =sub_0813F098
	str r0, [r1]
	ldr r1, _0813F088 @ =0x000007D4
	adds r0, r4, r1
	strb r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r5, [r0]
	subs r1, #1
	adds r0, r4, r1
	strb r5, [r0]
	ldr r0, _0813F08C @ =0x0000057A
	adds r1, r4, r0
	movs r0, #0x11
	strh r0, [r1]
	ldr r0, _0813F090 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F03E
	strb r5, [r1]
	bl sub_081434AC
_0813F03E:
	ldr r1, _0813F094 @ =0x000007DE
	adds r0, r4, r1
	strb r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r6, [r0]
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813F078: .4byte 0x000009D8
_0813F07C: .4byte 0x000007D3
_0813F080: .4byte 0x000009CC
_0813F084: .4byte sub_0813F098
_0813F088: .4byte 0x000007D4
_0813F08C: .4byte 0x0000057A
_0813F090: .4byte 0x000007D2
_0813F094: .4byte 0x000007DE

	thumb_func_start sub_0813F098
sub_0813F098: @ 0x0813F098
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x3c
	bl sub_0813B548
	cmp r0, #0
	beq _0813F0D4
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r1, [r0]
	cmp r1, #1
	bls _0813F0D4
	ldr r2, _0813F0C8 @ =0x000007D1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r1, r0
	bls _0813F0D4
	ldr r0, _0813F0CC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F0D0 @ =sub_0813F1D4
	str r0, [r1]
	b _0813F0DA
	.align 2, 0
_0813F0C8: .4byte 0x000007D1
_0813F0CC: .4byte 0x000009CC
_0813F0D0: .4byte sub_0813F1D4
_0813F0D4:
	adds r0, r4, #0
	bl sub_0813B61C
_0813F0DA:
	ldr r1, _0813F100 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F114
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F104 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F108 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F10C
	movs r0, #2
	b _0813F112
	.align 2, 0
_0813F100: .4byte 0x00000BE8
_0813F104: .4byte 0x000009CC
_0813F108: .4byte sub_0813FF6C
_0813F10C:
	cmp r0, #5
	bne _0813F114
	movs r0, #7
_0813F112:
	strb r0, [r4, #2]
_0813F114:
	ldr r1, _0813F138 @ =0x000007D3
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0813F140
	ldr r2, _0813F13C @ =0x000009D8
	adds r0, r4, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x12
	b _0813F154
	.align 2, 0
_0813F138: .4byte 0x000007D3
_0813F13C: .4byte 0x000009D8
_0813F140:
	ldr r1, _0813F1C4 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x22
_0813F154:
	ldr r2, _0813F1C8 @ =0x0000057A
	adds r1, r4, r2
	strh r0, [r1]
	ldr r0, _0813F1C4 @ =0x000009D8
	adds r3, r4, r0
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0813F17E
	ldr r1, _0813F1CC @ =0x000007D3
	adds r2, r4, r1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	strh r1, [r3]
_0813F17E:
	ldr r2, _0813F1D0 @ =0x000007D2
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F198
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F198:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r4, r2
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F1C4: .4byte 0x000009D8
_0813F1C8: .4byte 0x0000057A
_0813F1CC: .4byte 0x000007D3
_0813F1D0: .4byte 0x000007D2

	thumb_func_start sub_0813F1D4
sub_0813F1D4: @ 0x0813F1D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813F230 @ =0x000007D4
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	movs r0, #0xb4
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0x7a
	strh r0, [r1]
	ldr r0, _0813F234 @ =0x000005A2
	adds r1, r4, r0
	movs r0, #0x30
	strh r0, [r1]
	ldr r1, _0813F238 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _0813F23C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F240 @ =sub_0813F294
	str r0, [r1]
	ldr r1, _0813F244 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F254
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F23C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F248 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F24C
	movs r0, #2
	b _0813F252
	.align 2, 0
_0813F230: .4byte 0x000007D4
_0813F234: .4byte 0x000005A2
_0813F238: .4byte 0x000009D8
_0813F23C: .4byte 0x000009CC
_0813F240: .4byte sub_0813F294
_0813F244: .4byte 0x00000BE8
_0813F248: .4byte sub_0813FF6C
_0813F24C:
	cmp r0, #5
	bne _0813F254
	movs r0, #7
_0813F252:
	strb r0, [r4, #2]
_0813F254:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F290 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F278
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F278:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F290: .4byte 0x000007D2

	thumb_func_start sub_0813F294
sub_0813F294: @ 0x0813F294
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F2E0 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813F2FC
	movs r1, #0xfb
	lsls r1, r1, #3
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0813F2E4 @ =0x000007DB
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0813F2E8 @ =0x000007DE
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _0813F2F4
	ldr r2, _0813F2EC @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F2F0 @ =sub_0813F61C
	b _0813F2FA
	.align 2, 0
_0813F2E0: .4byte 0x000009D8
_0813F2E4: .4byte 0x000007DB
_0813F2E8: .4byte 0x000007DE
_0813F2EC: .4byte 0x000009CC
_0813F2F0: .4byte sub_0813F61C
_0813F2F4:
	ldr r0, _0813F320 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F324 @ =sub_0813F380
_0813F2FA:
	str r0, [r1]
_0813F2FC:
	ldr r1, _0813F328 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F338
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F320 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F32C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F330
	movs r0, #2
	b _0813F336
	.align 2, 0
_0813F320: .4byte 0x000009CC
_0813F324: .4byte sub_0813F380
_0813F328: .4byte 0x00000BE8
_0813F32C: .4byte sub_0813FF6C
_0813F330:
	cmp r0, #5
	bne _0813F338
	movs r0, #7
_0813F336:
	strb r0, [r4, #2]
_0813F338:
	ldr r1, _0813F378 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F37C @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F362
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F362:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F378: .4byte 0x000009D8
_0813F37C: .4byte 0x000007D2

	thumb_func_start sub_0813F380
sub_0813F380: @ 0x0813F380
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0813B6B0
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0813B548
	cmp r0, #0
	beq _0813F3E0
	movs r0, #0xfa
	lsls r0, r0, #3
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #2
	beq _0813F3E0
	ldr r1, _0813F3B8 @ =0x00000BE8
	adds r5, r4, r1
	cmp r0, #0
	blt _0813F44E
	cmp r0, #1
	bgt _0813F3C4
	ldr r0, _0813F3BC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F3C0 @ =sub_0813F4D8
	str r0, [r1]
	b _0813F44E
	.align 2, 0
_0813F3B8: .4byte 0x00000BE8
_0813F3BC: .4byte 0x000009CC
_0813F3C0: .4byte sub_0813F4D8
_0813F3C4:
	cmp r0, #4
	bgt _0813F44E
	cmp r0, #3
	blt _0813F44E
	ldr r0, _0813F3D8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F3DC @ =sub_0813F61C
	str r0, [r1]
	b _0813F44E
	.align 2, 0
_0813F3D8: .4byte 0x000009CC
_0813F3DC: .4byte sub_0813F61C
_0813F3E0:
	ldrb r0, [r4, #1]
	movs r2, #0
	adds r1, r0, #0
	ldr r0, _0813F40C @ =0x00000BE8
	adds r5, r4, r0
	cmp r1, #4
	bne _0813F3F8
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #2
	bne _0813F3F8
	movs r2, #1
_0813F3F8:
	cmp r2, #0
	beq _0813F418
	ldr r1, _0813F410 @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F414 @ =sub_08140198
	str r1, [r0]
	movs r0, #6
	strb r0, [r4, #2]
	b _0813F44E
	.align 2, 0
_0813F40C: .4byte 0x00000BE8
_0813F410: .4byte 0x000009CC
_0813F414: .4byte sub_08140198
_0813F418:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #5
	bne _0813F42C
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _0813F42C
	movs r1, #1
_0813F42C:
	cmp r1, #0
	beq _0813F448
	ldr r1, _0813F440 @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F444 @ =sub_08140198
	str r1, [r0]
	movs r0, #9
	strb r0, [r4, #2]
	b _0813F44E
	.align 2, 0
_0813F440: .4byte 0x000009CC
_0813F444: .4byte sub_08140198
_0813F448:
	adds r0, r4, #0
	bl sub_0813B61C
_0813F44E:
	ldr r1, [r5]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F480
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F470 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F474 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F478
	movs r0, #2
	b _0813F47E
	.align 2, 0
_0813F470: .4byte 0x000009CC
_0813F474: .4byte sub_0813FF6C
_0813F478:
	cmp r0, #5
	bne _0813F480
	movs r0, #7
_0813F47E:
	strb r0, [r4, #2]
_0813F480:
	ldr r0, _0813F4D0 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F49A
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F49A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	ldr r1, _0813F4D4 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813F4C8
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0813F4C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813F4D0: .4byte 0x000007D2
_0813F4D4: .4byte 0x000007D1

	thumb_func_start sub_0813F4D8
sub_0813F4D8: @ 0x0813F4D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F510 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0813F514 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F518 @ =sub_0813F56C
	str r0, [r1]
	ldr r1, _0813F51C @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F52C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F514 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F520 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F524
	movs r0, #2
	b _0813F52A
	.align 2, 0
_0813F510: .4byte 0x000009D8
_0813F514: .4byte 0x000009CC
_0813F518: .4byte sub_0813F56C
_0813F51C: .4byte 0x00000BE8
_0813F520: .4byte sub_0813FF6C
_0813F524:
	cmp r0, #5
	bne _0813F52C
	movs r0, #7
_0813F52A:
	strb r0, [r4, #2]
_0813F52C:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F568 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F550
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F550:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F568: .4byte 0x000007D2

	thumb_func_start sub_0813F56C
sub_0813F56C: @ 0x0813F56C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F5B0 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813F58A
	ldr r0, _0813F5B4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F5B8 @ =sub_0813EE48
	str r0, [r1]
_0813F58A:
	ldr r1, _0813F5BC @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F5CC
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F5B4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F5C0 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F5C4
	movs r0, #2
	b _0813F5CA
	.align 2, 0
_0813F5B0: .4byte 0x000009D8
_0813F5B4: .4byte 0x000009CC
_0813F5B8: .4byte sub_0813EE48
_0813F5BC: .4byte 0x00000BE8
_0813F5C0: .4byte sub_0813FF6C
_0813F5C4:
	cmp r0, #5
	bne _0813F5CC
	movs r0, #7
_0813F5CA:
	strb r0, [r4, #2]
_0813F5CC:
	ldr r1, _0813F614 @ =0x000009D8
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B720
	ldr r0, _0813F618 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F5FC
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F5FC:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B7E0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F614: .4byte 0x000009D8
_0813F618: .4byte 0x000007D2

	thumb_func_start sub_0813F61C
sub_0813F61C: @ 0x0813F61C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813F668 @ =0x000007D4
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0813F66C @ =0x000007D6
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0813F670 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r2, _0813F674 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F678 @ =sub_0813F6CC
	str r0, [r1]
	ldr r1, _0813F67C @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F68C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F674 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F680 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F684
	movs r0, #2
	b _0813F68A
	.align 2, 0
_0813F668: .4byte 0x000007D4
_0813F66C: .4byte 0x000007D6
_0813F670: .4byte 0x000009D8
_0813F674: .4byte 0x000009CC
_0813F678: .4byte sub_0813F6CC
_0813F67C: .4byte 0x00000BE8
_0813F680: .4byte sub_0813FF6C
_0813F684:
	cmp r0, #5
	bne _0813F68C
	movs r0, #7
_0813F68A:
	strb r0, [r4, #2]
_0813F68C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F6C8 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F6B0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F6B0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F6C8: .4byte 0x000007D2

	thumb_func_start sub_0813F6CC
sub_0813F6CC: @ 0x0813F6CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F718 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813F738
	ldr r1, _0813F71C @ =0x000007D9
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0813F720 @ =0x000007DC
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0813F724 @ =0x000007DE
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0813F730
	ldr r2, _0813F728 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F72C @ =sub_0813FB18
	b _0813F736
	.align 2, 0
_0813F718: .4byte 0x000009D8
_0813F71C: .4byte 0x000007D9
_0813F720: .4byte 0x000007DC
_0813F724: .4byte 0x000007DE
_0813F728: .4byte 0x000009CC
_0813F72C: .4byte sub_0813FB18
_0813F730:
	ldr r0, _0813F75C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F760 @ =sub_0813F7BC
_0813F736:
	str r0, [r1]
_0813F738:
	ldr r1, _0813F764 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F774
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813F75C @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813F768 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F76C
	movs r0, #2
	b _0813F772
	.align 2, 0
_0813F75C: .4byte 0x000009CC
_0813F760: .4byte sub_0813F7BC
_0813F764: .4byte 0x00000BE8
_0813F768: .4byte sub_0813FF6C
_0813F76C:
	cmp r0, #5
	bne _0813F774
	movs r0, #7
_0813F772:
	strb r0, [r4, #2]
_0813F774:
	ldr r1, _0813F7B4 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F7B8 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F79E
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F79E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F7B4: .4byte 0x000009D8
_0813F7B8: .4byte 0x000007D2

	thumb_func_start sub_0813F7BC
sub_0813F7BC: @ 0x0813F7BC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0813B6B0
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0813B548
	cmp r0, #0
	beq _0813F81C
	movs r0, #0xfa
	lsls r0, r0, #3
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #3
	beq _0813F81C
	ldr r1, _0813F7F0 @ =0x00000BE8
	adds r5, r4, r1
	cmp r0, #0
	blt _0813F88A
	cmp r0, #2
	ble _0813F7F4
	cmp r0, #4
	beq _0813F808
	b _0813F88A
	.align 2, 0
_0813F7F0: .4byte 0x00000BE8
_0813F7F4:
	ldr r0, _0813F800 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F804 @ =sub_0813F914
	str r0, [r1]
	b _0813F88A
	.align 2, 0
_0813F800: .4byte 0x000009CC
_0813F804: .4byte sub_0813F914
_0813F808:
	ldr r0, _0813F814 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F818 @ =sub_0813FB18
	str r0, [r1]
	b _0813F88A
	.align 2, 0
_0813F814: .4byte 0x000009CC
_0813F818: .4byte sub_0813FB18
_0813F81C:
	ldrb r0, [r4, #1]
	movs r2, #0
	adds r1, r0, #0
	ldr r0, _0813F848 @ =0x00000BE8
	adds r5, r4, r0
	cmp r1, #4
	bne _0813F834
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #2
	bne _0813F834
	movs r2, #1
_0813F834:
	cmp r2, #0
	beq _0813F854
	ldr r1, _0813F84C @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F850 @ =sub_08140198
	str r1, [r0]
	movs r0, #6
	strb r0, [r4, #2]
	b _0813F88A
	.align 2, 0
_0813F848: .4byte 0x00000BE8
_0813F84C: .4byte 0x000009CC
_0813F850: .4byte sub_08140198
_0813F854:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #5
	bne _0813F868
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _0813F868
	movs r1, #1
_0813F868:
	cmp r1, #0
	beq _0813F884
	ldr r1, _0813F87C @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813F880 @ =sub_08140198
	str r1, [r0]
	movs r0, #9
	strb r0, [r4, #2]
	b _0813F88A
	.align 2, 0
_0813F87C: .4byte 0x000009CC
_0813F880: .4byte sub_08140198
_0813F884:
	adds r0, r4, #0
	bl sub_0813B61C
_0813F88A:
	ldr r1, [r5]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F8BC
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F8AC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F8B0 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F8B4
	movs r0, #2
	b _0813F8BA
	.align 2, 0
_0813F8AC: .4byte 0x000009CC
_0813F8B0: .4byte sub_0813FF6C
_0813F8B4:
	cmp r0, #5
	bne _0813F8BC
	movs r0, #7
_0813F8BA:
	strb r0, [r4, #2]
_0813F8BC:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F90C @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F8E0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F8E0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _0813F910 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813F904
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0813F904:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813F90C: .4byte 0x000007D2
_0813F910: .4byte 0x000007D1

	thumb_func_start sub_0813F914
sub_0813F914: @ 0x0813F914
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F94C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0813F950 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F954 @ =sub_0813F9A8
	str r0, [r1]
	ldr r1, _0813F958 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813F968
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813F950 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813F95C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813F960
	movs r0, #2
	b _0813F966
	.align 2, 0
_0813F94C: .4byte 0x000009D8
_0813F950: .4byte 0x000009CC
_0813F954: .4byte sub_0813F9A8
_0813F958: .4byte 0x00000BE8
_0813F95C: .4byte sub_0813FF6C
_0813F960:
	cmp r0, #5
	bne _0813F968
	movs r0, #7
_0813F966:
	strb r0, [r4, #2]
_0813F968:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #5
	bl sub_0813B8B0
	ldr r0, _0813F9A4 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813F98C
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813F98C:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813F9A4: .4byte 0x000007D2

	thumb_func_start sub_0813F9A8
sub_0813F9A8: @ 0x0813F9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813F9E4 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813FA8C
	ldr r1, _0813F9E8 @ =0x00000BE8
	adds r0, r4, r1
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	ldr r2, _0813F9EC @ =0x000007D1
	adds r0, r4, r2
	strb r1, [r0]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0813FA8C
	lsls r0, r0, #2
	ldr r1, _0813F9F0 @ =_0813F9F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813F9E4: .4byte 0x000009D8
_0813F9E8: .4byte 0x00000BE8
_0813F9EC: .4byte 0x000007D1
_0813F9F0: .4byte _0813F9F4
_0813F9F4: @ jump table
	.4byte _0813FA08 @ case 0
	.4byte _0813FA08 @ case 1
	.4byte _0813FA18 @ case 2
	.4byte _0813FA50 @ case 3
	.4byte _0813FA84 @ case 4
_0813FA08:
	ldr r2, _0813FA10 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FA14 @ =sub_0813F4D8
	b _0813FA8A
	.align 2, 0
_0813FA10: .4byte 0x000009CC
_0813FA14: .4byte sub_0813F4D8
_0813FA18:
	ldr r1, _0813FA34 @ =0x000007D1
	adds r0, r4, r1
	movs r2, #0xfa
	lsls r2, r2, #3
	adds r1, r4, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0813FA40
	ldr r0, _0813FA38 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FA3C @ =sub_0813F4D8
	b _0813FA8A
	.align 2, 0
_0813FA34: .4byte 0x000007D1
_0813FA38: .4byte 0x000009CC
_0813FA3C: .4byte sub_0813F4D8
_0813FA40:
	ldr r2, _0813FA48 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FA4C @ =sub_0813F380
	b _0813FA8A
	.align 2, 0
_0813FA48: .4byte 0x000009CC
_0813FA4C: .4byte sub_0813F380
_0813FA50:
	ldr r1, _0813FA6C @ =0x000007D1
	adds r0, r4, r1
	movs r2, #0xfa
	lsls r2, r2, #3
	adds r1, r4, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0813FA78
	ldr r0, _0813FA70 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FA74 @ =sub_0813F4D8
	b _0813FA8A
	.align 2, 0
_0813FA6C: .4byte 0x000007D1
_0813FA70: .4byte 0x000009CC
_0813FA74: .4byte sub_0813F4D8
_0813FA78:
	ldr r2, _0813FA80 @ =0x000009CC
	adds r1, r4, r2
	b _0813FA88
	.align 2, 0
_0813FA80: .4byte 0x000009CC
_0813FA84:
	ldr r0, _0813FAB0 @ =0x000009CC
	adds r1, r4, r0
_0813FA88:
	ldr r0, _0813FAB4 @ =sub_0813F61C
_0813FA8A:
	str r0, [r1]
_0813FA8C:
	ldr r1, _0813FAB8 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FAC8
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FAB0 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FABC @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FAC0
	movs r0, #2
	b _0813FAC6
	.align 2, 0
_0813FAB0: .4byte 0x000009CC
_0813FAB4: .4byte sub_0813F61C
_0813FAB8: .4byte 0x00000BE8
_0813FABC: .4byte sub_0813FF6C
_0813FAC0:
	cmp r0, #5
	bne _0813FAC8
	movs r0, #7
_0813FAC6:
	strb r0, [r4, #2]
_0813FAC8:
	ldr r1, _0813FB10 @ =0x000009D8
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813B8B0
	ldr r2, _0813FB14 @ =0x000007D2
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FAF8
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FAF8:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813B9C0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FB10: .4byte 0x000009D8
_0813FB14: .4byte 0x000007D2

	thumb_func_start sub_0813FB18
sub_0813FB18: @ 0x0813FB18
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0813FB64 @ =0x000007D4
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0813FB68 @ =0x000007D6
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0813FB6C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r2, _0813FB70 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FB74 @ =sub_0813FBC8
	str r0, [r1]
	ldr r1, _0813FB78 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FB88
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FB70 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FB7C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FB80
	movs r0, #2
	b _0813FB86
	.align 2, 0
_0813FB64: .4byte 0x000007D4
_0813FB68: .4byte 0x000007D6
_0813FB6C: .4byte 0x000009D8
_0813FB70: .4byte 0x000009CC
_0813FB74: .4byte sub_0813FBC8
_0813FB78: .4byte 0x00000BE8
_0813FB7C: .4byte sub_0813FF6C
_0813FB80:
	cmp r0, #5
	bne _0813FB88
	movs r0, #7
_0813FB86:
	strb r0, [r4, #2]
_0813FB88:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FBC4 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FBAC
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FBAC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FBC4: .4byte 0x000007D2

	thumb_func_start sub_0813FBC8
sub_0813FBC8: @ 0x0813FBC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813FC2C @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813FC06
	ldr r1, _0813FC30 @ =0x000007DA
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0813FC34 @ =0x000007DD
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0813FC38 @ =0x000007DE
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0813FC3C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FC40 @ =sub_0813FC9C
	str r0, [r1]
_0813FC06:
	ldr r1, _0813FC44 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FC54
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FC3C @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FC48 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FC4C
	movs r0, #2
	b _0813FC52
	.align 2, 0
_0813FC2C: .4byte 0x000009D8
_0813FC30: .4byte 0x000007DA
_0813FC34: .4byte 0x000007DD
_0813FC38: .4byte 0x000007DE
_0813FC3C: .4byte 0x000009CC
_0813FC40: .4byte sub_0813FC9C
_0813FC44: .4byte 0x00000BE8
_0813FC48: .4byte sub_0813FF6C
_0813FC4C:
	cmp r0, #5
	bne _0813FC54
	movs r0, #7
_0813FC52:
	strb r0, [r4, #2]
_0813FC54:
	ldr r1, _0813FC94 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FC98 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FC7E
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FC7E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FC94: .4byte 0x000009D8
_0813FC98: .4byte 0x000007D2

	thumb_func_start sub_0813FC9C
sub_0813FC9C: @ 0x0813FC9C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0813B6B0
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0813B548
	cmp r0, #0
	beq _0813FCCC
	ldr r0, _0813FCC0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FCC4 @ =sub_0813FDC4
	str r0, [r1]
	ldr r1, _0813FCC8 @ =0x00000BE8
	adds r5, r4, r1
	b _0813FD3A
	.align 2, 0
_0813FCC0: .4byte 0x000009CC
_0813FCC4: .4byte sub_0813FDC4
_0813FCC8: .4byte 0x00000BE8
_0813FCCC:
	ldrb r0, [r4, #1]
	movs r2, #0
	adds r1, r0, #0
	ldr r0, _0813FCF8 @ =0x00000BE8
	adds r5, r4, r0
	cmp r1, #4
	bne _0813FCE4
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #2
	bne _0813FCE4
	movs r2, #1
_0813FCE4:
	cmp r2, #0
	beq _0813FD04
	ldr r1, _0813FCFC @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813FD00 @ =sub_08140198
	str r1, [r0]
	movs r0, #6
	strb r0, [r4, #2]
	b _0813FD3A
	.align 2, 0
_0813FCF8: .4byte 0x00000BE8
_0813FCFC: .4byte 0x000009CC
_0813FD00: .4byte sub_08140198
_0813FD04:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #5
	bne _0813FD18
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _0813FD18
	movs r1, #1
_0813FD18:
	cmp r1, #0
	beq _0813FD34
	ldr r1, _0813FD2C @ =0x000009CC
	adds r0, r4, r1
	ldr r1, _0813FD30 @ =sub_08140198
	str r1, [r0]
	movs r0, #9
	strb r0, [r4, #2]
	b _0813FD3A
	.align 2, 0
_0813FD2C: .4byte 0x000009CC
_0813FD30: .4byte sub_08140198
_0813FD34:
	adds r0, r4, #0
	bl sub_0813B61C
_0813FD3A:
	ldr r1, [r5]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FD6C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813FD5C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FD60 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FD64
	movs r0, #2
	b _0813FD6A
	.align 2, 0
_0813FD5C: .4byte 0x000009CC
_0813FD60: .4byte sub_0813FF6C
_0813FD64:
	cmp r0, #5
	bne _0813FD6C
	movs r0, #7
_0813FD6A:
	strb r0, [r4, #2]
_0813FD6C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FDBC @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FD90
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FD90:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _0813FDC0 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813FDB4
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0813FDB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813FDBC: .4byte 0x000007D2
_0813FDC0: .4byte 0x000007D1

	thumb_func_start sub_0813FDC4
sub_0813FDC4: @ 0x0813FDC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813FDFC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0813FE00 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FE04 @ =sub_0813FE58
	str r0, [r1]
	ldr r1, _0813FE08 @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FE18
	adds r0, r1, #0
	bl sub_08032B84
	ldr r0, _0813FE00 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FE0C @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FE10
	movs r0, #2
	b _0813FE16
	.align 2, 0
_0813FDFC: .4byte 0x000009D8
_0813FE00: .4byte 0x000009CC
_0813FE04: .4byte sub_0813FE58
_0813FE08: .4byte 0x00000BE8
_0813FE0C: .4byte sub_0813FF6C
_0813FE10:
	cmp r0, #5
	bne _0813FE18
	movs r0, #7
_0813FE16:
	strb r0, [r4, #2]
_0813FE18:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #5
	bl sub_0813BA90
	ldr r0, _0813FE54 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FE3C
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FE3C:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FE54: .4byte 0x000007D2

	thumb_func_start sub_0813FE58
sub_0813FE58: @ 0x0813FE58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0813FE90 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0813FEE0
	ldr r1, _0813FE94 @ =0x00000BE8
	adds r0, r4, r1
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	ldr r2, _0813FE98 @ =0x000007D1
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0813FEB0
	cmp r0, #3
	ble _0813FE9C
	cmp r0, #4
	beq _0813FED8
	b _0813FEE0
	.align 2, 0
_0813FE90: .4byte 0x000009D8
_0813FE94: .4byte 0x00000BE8
_0813FE98: .4byte 0x000007D1
_0813FE9C:
	cmp r0, #0
	blt _0813FEE0
	ldr r0, _0813FEA8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FEAC @ =sub_0813F914
	b _0813FEDE
	.align 2, 0
_0813FEA8: .4byte 0x000009CC
_0813FEAC: .4byte sub_0813F914
_0813FEB0:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo _0813FEC8
	ldr r2, _0813FEC0 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FEC4 @ =sub_0813F914
	b _0813FEDE
	.align 2, 0
_0813FEC0: .4byte 0x000009CC
_0813FEC4: .4byte sub_0813F914
_0813FEC8:
	ldr r0, _0813FED0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0813FED4 @ =sub_0813F7BC
	b _0813FEDE
	.align 2, 0
_0813FED0: .4byte 0x000009CC
_0813FED4: .4byte sub_0813F7BC
_0813FED8:
	ldr r2, _0813FF04 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FF08 @ =sub_0813FB18
_0813FEDE:
	str r0, [r1]
_0813FEE0:
	ldr r1, _0813FF0C @ =0x00000BE8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xe]
	cmp r0, #8
	bne _0813FF1C
	adds r0, r1, #0
	bl sub_08032B84
	ldr r2, _0813FF04 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _0813FF10 @ =sub_0813FF6C
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0813FF14
	movs r0, #2
	b _0813FF1A
	.align 2, 0
_0813FF04: .4byte 0x000009CC
_0813FF08: .4byte sub_0813FB18
_0813FF0C: .4byte 0x00000BE8
_0813FF10: .4byte sub_0813FF6C
_0813FF14:
	cmp r0, #5
	bne _0813FF1C
	movs r0, #7
_0813FF1A:
	strb r0, [r4, #2]
_0813FF1C:
	ldr r1, _0813FF64 @ =0x000009D8
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813BA90
	ldr r2, _0813FF68 @ =0x000007D2
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813FF4C
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_0813FF4C:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0813BBA0
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813FF64: .4byte 0x000009D8
_0813FF68: .4byte 0x000007D2

	thumb_func_start sub_0813FF6C
sub_0813FF6C: @ 0x0813FF6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r6, _08140014 @ =gUnk_082D7850
	ldr r4, _08140018 @ =gUnk_08385C14
	ldr r5, _0814001C @ =gUnk_08D60A80
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r4, #0x1e
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08140020 @ =0x05000120
	movs r2, #0x10
	bl CpuSet
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	movs r2, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r2, r3
	ldr r3, _08140024 @ =0x0600F800
	adds r7, r2, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0813FFE0
_0813FFC4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0813FFC4
_0813FFE0:
	ldr r5, _08140028 @ =gUnk_03002440
	ldr r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r4
	cmp r0, #0
	beq _0814002C
	ldr r2, _08140014 @ =gUnk_082D7850
	ldr r1, _08140018 @ =gUnk_08385C14
	ldr r0, _0814001C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x1e
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08158334
	b _08140058
	.align 2, 0
_08140014: .4byte gUnk_082D7850
_08140018: .4byte gUnk_08385C14
_0814001C: .4byte gUnk_08D60A80
_08140020: .4byte 0x05000120
_08140024: .4byte 0x0600F800
_08140028: .4byte gUnk_03002440
_0814002C:
	ldr r2, _08140090 @ =0x040000D4
	ldr r3, _08140094 @ =gUnk_082D7850
	ldr r1, _08140098 @ =gUnk_08385C14
	ldr r0, _0814009C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x1e
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _081400A0 @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _081400A4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r4, r0
	str r4, [r5]
_08140058:
	ldr r1, _08140090 @ =0x040000D4
	ldr r0, _081400A8 @ =0x000009DA
	add r0, r8
	str r0, [r1]
	ldr r0, _081400A0 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _081400AC @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _081400B0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _081400B4 @ =0x000009CC
	add r1, r8
	ldr r0, _081400B8 @ =sub_08142B0C
	str r0, [r1]
	mov r0, r8
	adds r0, #0xc
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140090: .4byte 0x040000D4
_08140094: .4byte gUnk_082D7850
_08140098: .4byte gUnk_08385C14
_0814009C: .4byte gUnk_08D60A80
_081400A0: .4byte gBgPalette
_081400A4: .4byte 0x80000100
_081400A8: .4byte 0x000009DA
_081400AC: .4byte 0x80000090
_081400B0: .4byte gUnk_03002440
_081400B4: .4byte 0x000009CC
_081400B8: .4byte sub_08142B0C

	thumb_func_start sub_081400BC
sub_081400BC: @ 0x081400BC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0814010C @ =0x01002000
	bl CpuSet
	mov r1, sp
	ldr r2, _08140110 @ =0x000001FF
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	ldr r1, _08140114 @ =0x0600F800
	ldr r2, _08140118 @ =0x01000400
	bl CpuSet
	ldr r3, _0814011C @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08140124
	ldr r0, _08140120 @ =gUnk_082D7850
	movs r5, #0xe3
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08158334
	b _08140144
	.align 2, 0
_0814010C: .4byte 0x01002000
_08140110: .4byte 0x000001FF
_08140114: .4byte 0x0600F800
_08140118: .4byte 0x01000400
_0814011C: .4byte gUnk_03002440
_08140120: .4byte gUnk_082D7850
_08140124:
	ldr r1, _08140160 @ =0x040000D4
	ldr r0, _08140164 @ =gUnk_082D7850
	movs r5, #0xe3
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r0, _08140168 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0814016C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08140144:
	ldr r1, _08140170 @ =gBgScrollRegs
	movs r0, #0x18
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_0813AB40
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0814017C
	ldr r0, _08140174 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140178 @ =sub_0813CDE4
	b _08140186
	.align 2, 0
_08140160: .4byte 0x040000D4
_08140164: .4byte gUnk_082D7850
_08140168: .4byte gBgPalette
_0814016C: .4byte 0x80000100
_08140170: .4byte gBgScrollRegs
_08140174: .4byte 0x000009CC
_08140178: .4byte sub_0813CDE4
_0814017C:
	cmp r0, #5
	bne _08140188
	ldr r2, _08140190 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _08140194 @ =sub_08140E40
_08140186:
	str r0, [r1]
_08140188:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08140190: .4byte 0x000009CC
_08140194: .4byte sub_08140E40

	thumb_func_start sub_08140198
sub_08140198: @ 0x08140198
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _081401E8 @ =gBldRegs
	movs r2, #0
	movs r0, #0x97
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _081401EC @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _081401F0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081401F4 @ =sub_08140284
	str r0, [r1]
	ldr r0, _081401F8 @ =0x000007D2
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _081401D0
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_081401D0:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08140254
	lsls r0, r0, #2
	ldr r1, _081401FC @ =_08140200
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081401E8: .4byte gBldRegs
_081401EC: .4byte 0x000009D8
_081401F0: .4byte 0x000009CC
_081401F4: .4byte sub_08140284
_081401F8: .4byte 0x000007D2
_081401FC: .4byte _08140200
_08140200: @ jump table
	.4byte _08140214 @ case 0
	.4byte _08140214 @ case 1
	.4byte _0814022E @ case 2
	.4byte _08140242 @ case 3
	.4byte _0814024C @ case 4
_08140214:
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	b _0814023A
_0814022E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B7E0
	movs r1, #0xb2
	lsls r1, r1, #3
_0814023A:
	adds r0, r4, r1
	bl sub_0815604C
	b _08140254
_08140242:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813B9C0
	b _08140254
_0814024C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0813BBA0
_08140254:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _08140280 @ =0x000007D1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814027A
	subs r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _0814027A
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_0814027A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08140280: .4byte 0x000007D1

	thumb_func_start sub_08140284
sub_08140284: @ 0x08140284
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _081402E4 @ =0x000009D8
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r5, _081402E8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	blt _081402B2
	ldr r0, _081402EC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _081402F0 @ =sub_08142BCC
	str r0, [r1]
_081402B2:
	ldr r0, _081402F4 @ =0x000007D2
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _081402CC
	movs r0, #0
	strb r0, [r1]
	bl sub_081434AC
_081402CC:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08140350
	lsls r0, r0, #2
	ldr r1, _081402F8 @ =_081402FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081402E4: .4byte 0x000009D8
_081402E8: .4byte gBldRegs
_081402EC: .4byte 0x000009CC
_081402F0: .4byte sub_08142BCC
_081402F4: .4byte 0x000007D2
_081402F8: .4byte _081402FC
_081402FC: @ jump table
	.4byte _08140310 @ case 0
	.4byte _08140310 @ case 1
	.4byte _0814032A @ case 2
	.4byte _0814033E @ case 3
	.4byte _08140348 @ case 4
_08140310:
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	movs r1, #0xad
	lsls r1, r1, #3
	b _08140336
_0814032A:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0813B7E0
	movs r1, #0xb2
	lsls r1, r1, #3
_08140336:
	adds r0, r6, r1
	bl sub_0815604C
	b _08140350
_0814033E:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0813B9C0
	b _08140350
_08140348:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0813BBA0
_08140350:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	ldr r1, _0814037C @ =0x000007D1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08140376
	subs r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _08140376
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
_08140376:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814037C: .4byte 0x000007D1

	thumb_func_start sub_08140380
sub_08140380: @ 0x08140380
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _081403D0 @ =0x00000BE8
	adds r0, r4, r1
	ldr r7, [r0]
	adds r0, r4, #0
	bl sub_0813AB40
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _081403D4 @ =0x01002000
	bl CpuSet
	mov r1, sp
	ldr r2, _081403D8 @ =0x000001FF
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	ldr r1, _081403DC @ =0x0600F800
	ldr r2, _081403E0 @ =0x01000400
	bl CpuSet
	ldr r1, _081403E4 @ =gBgScrollRegs
	movs r6, #0
	movs r0, #0x18
	strh r0, [r1, #2]
	ldrb r0, [r4, #2]
	cmp r0, #6
	beq _08140418
	cmp r0, #6
	bgt _081403E8
	cmp r0, #2
	beq _081403F2
	b _08140488
	.align 2, 0
_081403D0: .4byte 0x00000BE8
_081403D4: .4byte 0x01002000
_081403D8: .4byte 0x000001FF
_081403DC: .4byte 0x0600F800
_081403E0: .4byte 0x01000400
_081403E4: .4byte gBgScrollRegs
_081403E8:
	cmp r0, #7
	beq _08140404
	cmp r0, #9
	beq _0814042C
	b _08140488
_081403F2:
	ldr r0, _081403FC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140400 @ =sub_0813CDE4
	str r0, [r1]
	b _08140488
	.align 2, 0
_081403FC: .4byte 0x000009CC
_08140400: .4byte sub_0813CDE4
_08140404:
	ldr r2, _08140410 @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _08140414 @ =sub_08140E40
	str r0, [r1]
	b _08140488
	.align 2, 0
_08140410: .4byte 0x000009CC
_08140414: .4byte sub_08140E40
_08140418:
	ldr r0, _08140424 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140428 @ =sub_08142C24
	str r0, [r1]
	b _08140488
	.align 2, 0
_08140424: .4byte 0x000009CC
_08140428: .4byte sub_08142C24
_0814042C:
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08140448
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08140448:
	ldr r0, _08140490 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	add r0, sp, #4
	ldr r1, _08140494 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08140498 @ =gBgPalette
	ldr r5, _0814049C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	ldr r1, _081404A0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _081404A4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	adds r0, r7, #0
	bl sub_08032BD4
	ldr r0, _081404A8 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
_08140488:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140490: .4byte gCurGameState
_08140494: .4byte 0x00007FFF
_08140498: .4byte gBgPalette
_0814049C: .4byte 0x01000100
_081404A0: .4byte gObjPalette
_081404A4: .4byte gUnk_03002440
_081404A8: .4byte gBldRegs

	thumb_func_start sub_081404AC
sub_081404AC: @ 0x081404AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #1]
	movs r1, #0
	strb r0, [r6]
	movs r0, #6
	strb r0, [r6, #1]
	ldr r2, _0814064C @ =0x000009C8
	adds r0, r6, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldr r0, _08140650 @ =0x00000BE8
	adds r5, r6, r0
	ldr r0, [r5]
	ldrb r0, [r0, #0x11]
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r4, r6, r1
	strb r0, [r4]
	ldr r0, [r5]
	ldrb r1, [r0, #0x10]
	ldr r2, _08140654 @ =0x000007D1
	adds r0, r6, r2
	strb r1, [r0]
	bl sub_0802E57C
	ldr r2, _08140658 @ =0x00000BEC
	adds r1, r6, r2
	str r0, [r1]
	movs r3, #0
	ldrb r0, [r4]
	cmp r3, r0
	bhs _08140516
	ldr r1, _0814065C @ =0x000009C4
	adds r7, r6, r1
_081404FC:
	adds r2, r7, r3
	ldr r0, [r5]
	lsls r1, r3, #1
	adds r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r2, [r4]
	cmp r3, r2
	blo _081404FC
_08140516:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r3, [r0]
	ldr r5, _08140660 @ =gDispCnt
	ldr r2, _08140664 @ =gUnk_08385C14
	mov sb, r2
	ldr r0, _08140668 @ =gUnk_08D60A80
	mov r8, r0
	ldr r1, _0814066C @ =gUnk_082D7850
	mov ip, r1
	adds r7, r6, #0
	adds r7, #0xc
	cmp r3, #3
	bhi _0814054C
	ldr r0, _0814065C @ =0x000009C4
	adds r2, r6, r0
	movs r4, #0xff
_0814053A:
	adds r0, r2, r3
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0814053A
_0814054C:
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #5
	mov r1, sb
	adds r1, #0x1c
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r5, [r1, #2]
	ldr r1, _08140670 @ =0x0600FD40
	mov sb, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _081405A2
_08140586:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	add r1, sb
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08140586
_081405A2:
	ldr r1, _08140674 @ =0x040000D4
	ldr r2, _08140678 @ =0x000009DA
	adds r0, r6, r2
	str r0, [r1]
	ldr r0, _0814067C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08140680 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08140684 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r5, #0
	movs r3, #0
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r4, _08140688 @ =gUnk_08385CD4
	ldr r2, _08140668 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	strh r0, [r7, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #0x2a]
	strb r0, [r7, #0x1a]
	strh r3, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r4, #0x10
	strb r4, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	strh r3, [r7, #0x10]
	strh r3, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0x48
	strh r0, [r1]
	ldr r1, _0814068C @ =0x0000029E
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, _08140690 @ =0x000002A7
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08155128
	adds r0, r6, #0
	bl sub_0813A464
	ldr r2, _08140694 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _08140698 @ =sub_08142C9C
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814064C: .4byte 0x000009C8
_08140650: .4byte 0x00000BE8
_08140654: .4byte 0x000007D1
_08140658: .4byte 0x00000BEC
_0814065C: .4byte 0x000009C4
_08140660: .4byte gDispCnt
_08140664: .4byte gUnk_08385C14
_08140668: .4byte gUnk_08D60A80
_0814066C: .4byte gUnk_082D7850
_08140670: .4byte 0x0600FD40
_08140674: .4byte 0x040000D4
_08140678: .4byte 0x000009DA
_0814067C: .4byte gBgPalette
_08140680: .4byte 0x80000090
_08140684: .4byte gUnk_03002440
_08140688: .4byte gUnk_08385CD4
_0814068C: .4byte 0x0000029E
_08140690: .4byte 0x000002A7
_08140694: .4byte 0x000009CC
_08140698: .4byte sub_08142C9C

	thumb_func_start sub_0814069C
sub_0814069C: @ 0x0814069C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08140794 @ =0x000009D8
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, _08140798 @ =gBldRegs
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #4]
	movs r5, #0
	ldr r7, _0814079C @ =gBgScrollRegs
_081406C2:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r3, _08140794 @ =0x000009D8
	adds r0, r6, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r1, r0, #0
	adds r0, #0xf0
	movs r3, #0xbb
	lsls r3, r3, #2
	adds r4, r4, r3
	strh r0, [r4]
	lsls r2, r5, #4
	subs r2, r2, r5
	lsls r2, r2, #3
	adds r2, r6, r2
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, _081407A0 @ =0x000007F4
	adds r0, r2, r3
	strh r1, [r0]
	ldrh r0, [r4]
	adds r0, #0x78
	adds r3, #0x28
	adds r1, r2, r3
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #0x80
	ldr r1, _081407A4 @ =0x00000844
	adds r2, r2, r1
	strh r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _081406C2
	ldr r2, _08140794 @ =0x000009D8
	adds r4, r6, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0x68
	muls r0, r1, r0
	movs r1, #0xf
	bl __divsi3
	subs r0, #0x20
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #0xf
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r6, #0x1c]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xf
	bl __divsi3
	strh r0, [r7, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xe
	ble _08140772
	ldr r2, _081407A8 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _081407AC @ =sub_08142CBC
	str r0, [r1]
_08140772:
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r0, r6, r3
	bl sub_08155128
	cmp r0, #0
	bne _08140788
	ldr r0, _081407B0 @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_08140788:
	adds r0, r6, #0
	bl sub_0813AEC8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140794: .4byte 0x000009D8
_08140798: .4byte gBldRegs
_0814079C: .4byte gBgScrollRegs
_081407A0: .4byte 0x000007F4
_081407A4: .4byte 0x00000844
_081407A8: .4byte 0x000009CC
_081407AC: .4byte sub_08142CBC
_081407B0: .4byte 0x000002A7

	thumb_func_start sub_081407B4
sub_081407B4: @ 0x081407B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08140844 @ =0x000009C8
	adds r5, r4, r0
	ldrb r0, [r5]
	ldr r1, _08140848 @ =0x000009C9
	adds r6, r4, r1
	strb r0, [r6]
	ldr r2, _0814084C @ =0x00000BE8
	adds r1, r4, r2
	ldr r0, [r1]
	ldrb r0, [r0, #0x12]
	strb r0, [r5]
	ldr r0, [r1]
	ldrh r0, [r0, #0xe]
	cmp r0, #4
	bne _081407E4
	ldr r0, _08140850 @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _08140854 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08140858 @ =sub_08142D04
	str r0, [r1]
_081407E4:
	ldrb r0, [r5]
	ldrb r6, [r6]
	cmp r0, r6
	beq _08140814
	ldr r0, _0814085C @ =0x0000021D
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_0813B3C8
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x10
	ldr r2, _08140860 @ =0x0000029E
	adds r1, r4, r2
	strh r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
_08140814:
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_08155128
	cmp r0, #0
	bne _0814082A
	ldr r0, _08140864 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_0814082A:
	adds r0, r4, #0
	bl sub_0813AEC8
	ldr r1, _08140868 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08140844: .4byte 0x000009C8
_08140848: .4byte 0x000009C9
_0814084C: .4byte 0x00000BE8
_08140850: .4byte 0x0000021E
_08140854: .4byte 0x000009CC
_08140858: .4byte sub_08142D04
_0814085C: .4byte 0x0000021D
_08140860: .4byte 0x0000029E
_08140864: .4byte 0x000002A7
_08140868: .4byte 0x00000BDC

	thumb_func_start sub_0814086C
sub_0814086C: @ 0x0814086C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08140954 @ =0x000009D8
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, _08140958 @ =gBldRegs
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r4, #4]
	movs r6, #0
	ldr r7, _0814095C @ =gBgScrollRegs
_0814088E:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, r5, r4
	ldr r3, _08140954 @ =0x000009D8
	adds r0, r5, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x98
	muls r0, r1, r0
	movs r1, #0xf
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x58
	movs r3, #0xbb
	lsls r3, r3, #2
	adds r4, r4, r3
	strh r1, [r4]
	lsls r2, r6, #4
	subs r2, r2, r6
	lsls r2, r2, #3
	adds r2, r5, r2
	adds r0, #0xc8
	ldr r3, _08140960 @ =0x000007F4
	adds r1, r2, r3
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #0x78
	adds r3, #0x28
	adds r1, r2, r3
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #0x80
	ldr r1, _08140964 @ =0x00000844
	adds r2, r2, r1
	strh r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0814088E
	ldr r2, _08140954 @ =0x000009D8
	adds r4, r5, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x48
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #0x1c]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0xf
	bl __divsi3
	adds r0, #0x18
	strh r0, [r7, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xe
	ble _08140974
	ldr r2, _08140968 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _0814096C @ =sub_08142D68
	str r0, [r1]
	ldr r3, _08140970 @ =0x00000BDC
	adds r0, r5, r3
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	b _0814099C
	.align 2, 0
_08140954: .4byte 0x000009D8
_08140958: .4byte gBldRegs
_0814095C: .4byte gBgScrollRegs
_08140960: .4byte 0x000007F4
_08140964: .4byte 0x00000844
_08140968: .4byte 0x000009CC
_0814096C: .4byte sub_08142D68
_08140970: .4byte 0x00000BDC
_08140974:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _0814098A
	ldr r2, _081409A4 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_0814098A:
	adds r0, r5, #0
	bl sub_0813AEC8
	ldr r3, _081409A8 @ =0x00000BDC
	adds r0, r5, r3
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0814099C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081409A4: .4byte 0x000002A7
_081409A8: .4byte 0x00000BDC

	thumb_func_start sub_081409AC
sub_081409AC: @ 0x081409AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, _08140A08 @ =0x000009D8
	adds r5, r7, r0
	ldrh r4, [r5]
	adds r4, #1
	movs r1, #0
	mov r8, r1
	strh r4, [r5]
	ldr r6, _08140A0C @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _081409FC
	mov r0, r8
	strh r0, [r6]
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	ldr r1, _08140A10 @ =0x00000BEC
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_0802FBF4
	mov r0, r8
	strh r0, [r5]
	ldr r0, _08140A14 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _08140A18 @ =sub_08142E0C
	str r0, [r1]
_081409FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140A08: .4byte 0x000009D8
_08140A0C: .4byte gBldRegs
_08140A10: .4byte 0x00000BEC
_08140A14: .4byte 0x000009CC
_08140A18: .4byte sub_08142E0C

	thumb_func_start sub_08140A1C
sub_08140A1C: @ 0x08140A1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #1]
	movs r4, #0
	strb r0, [r7]
	movs r0, #7
	strb r0, [r7, #1]
	ldr r1, _08140B1C @ =0x000009CB
	adds r0, r7, r1
	strb r4, [r0]
	ldr r2, _08140B20 @ =0x000009CA
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0xd
	adds r0, r7, r1
	movs r6, #0
	strh r4, [r0]
	adds r0, r7, #0
	bl sub_0813A6D0
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	ldr r3, _08140B24 @ =gUnk_08385CD4
	ldr r5, _08140B28 @ =gUnk_08D60A80
	ldrh r2, [r5]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #0xc]
	ldrh r2, [r5]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #0x12]
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	ldr r1, _08140B2C @ =0x0000FF64
	strh r1, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	ldr r1, _08140B30 @ =gUnk_08385C14
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r1, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08140B34 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r2, _08140B38 @ =0x0600FD40
	mov r8, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	cmp r4, r5
	bhs _08140ADC
_08140AC0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08140AC0
_08140ADC:
	adds r0, r7, #4
	ldrb r1, [r7, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x10
	cmp r0, #0
	bne _08140AEC
	movs r1, #0x20
_08140AEC:
	ldr r2, _08140B3C @ =0x0000029E
	adds r0, r7, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08155128
	ldr r2, _08140B40 @ =0x000009CC
	adds r1, r7, r2
	ldr r0, _08140B44 @ =sub_08142FD0
	str r0, [r1]
	ldr r1, _08140B48 @ =0x00000BDC
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140B1C: .4byte 0x000009CB
_08140B20: .4byte 0x000009CA
_08140B24: .4byte gUnk_08385CD4
_08140B28: .4byte gUnk_08D60A80
_08140B2C: .4byte 0x0000FF64
_08140B30: .4byte gUnk_08385C14
_08140B34: .4byte gUnk_082D7850
_08140B38: .4byte 0x0600FD40
_08140B3C: .4byte 0x0000029E
_08140B40: .4byte 0x000009CC
_08140B44: .4byte sub_08142FD0
_08140B48: .4byte 0x00000BDC

	thumb_func_start sub_08140B4C
sub_08140B4C: @ 0x08140B4C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08140BD4 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _08140B7C
	ldr r0, _08140BD8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08140BDC @ =sub_08143040
	str r0, [r1]
_08140B7C:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08140B94
	ldr r0, _08140BE0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08140B94:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08140BA4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08140BA4
	ldr r1, _08140BE4 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08140BD4: .4byte 0x000009D8
_08140BD8: .4byte 0x000009CC
_08140BDC: .4byte sub_08143040
_08140BE0: .4byte 0x000002A7
_08140BE4: .4byte 0x00000BDC

	thumb_func_start sub_08140BE8
sub_08140BE8: @ 0x08140BE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, r5, #4
	ldrb r1, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #4
	cmp r0, #0
	bne _08140C02
	movs r1, #3
_08140C02:
	adds r7, r1, #0
	ldr r2, _08140CC0 @ =0x000009D8
	adds r1, r5, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xc
	adds r1, r1, r5
	mov sb, r1
	cmp r6, r7
	bhs _08140C58
_08140C22:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, r5, r4
	ldr r2, _08140CC0 @ =0x000009D8
	adds r0, r5, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0xf0
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _08140C22
_08140C58:
	ldr r2, _08140CC0 @ =0x000009D8
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	ble _08140C6C
	subs r2, #0xc
	adds r1, r5, r2
	ldr r0, _08140CC4 @ =sub_081430C0
	str r0, [r1]
_08140C6C:
	mov r0, r8
	bl sub_08155128
	cmp r0, #0
	bne _08140C7E
	ldr r0, _08140CC8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08140C7E:
	mov r0, sb
	bl sub_0815604C
	mov r0, r8
	bl sub_0815604C
	movs r4, #0
_08140C8C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08140C8C
	ldr r2, _08140CCC @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140CC0: .4byte 0x000009D8
_08140CC4: .4byte sub_081430C0
_08140CC8: .4byte 0x000002A7
_08140CCC: .4byte 0x00000BDC

	thumb_func_start sub_08140CD0
sub_08140CD0: @ 0x08140CD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r0, r6, #4
	ldrb r1, [r6, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #4
	cmp r7, #0
	bne _08140CEE
	movs r0, #3
_08140CEE:
	mov sb, r0
	ldr r2, _08140D28 @ =0x000009D8
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	adds r1, r6, #0
	adds r1, #0xc
	str r1, [sp]
	cmp r5, sb
	bhs _08140D7E
_08140D0E:
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #3
	adds r0, r0, r6
	mov r8, r0
	cmp r7, #0
	bne _08140D2C
	lsls r0, r1, #2
	adds r0, r0, r5
	adds r2, r0, #0
	adds r2, #0x2b
	b _08140D34
	.align 2, 0
_08140D28: .4byte 0x000009D8
_08140D2C:
	lsls r0, r1, #2
	adds r0, r0, r5
	adds r2, r0, #0
	adds r2, #0x1b
_08140D34:
	ldr r1, _08140D48 @ =0x000009D8
	adds r0, r6, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	cmp r7, #0
	bne _08140D4C
	lsls r0, r5, #3
	adds r4, r0, #0
	adds r4, #0x2b
	b _08140D52
	.align 2, 0
_08140D48: .4byte 0x000009D8
_08140D4C:
	lsls r0, r5, #3
	adds r4, r0, #0
	adds r4, #0x1b
_08140D52:
	adds r1, r0, #0
	cmp r7, #0
	bne _08140D5E
	adds r0, r2, #0
	subs r0, #0x2b
	b _08140D62
_08140D5E:
	adds r0, r2, #0
	subs r0, #0x1b
_08140D62:
	subs r0, r0, r1
	muls r0, r3, r0
	movs r1, #5
	bl __divsi3
	adds r1, r4, r0
	ldr r0, _08140E24 @ =0x000002EE
	add r0, r8
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, sb
	blo _08140D0E
_08140D7E:
	ldr r2, _08140E28 @ =0x000009D8
	adds r4, r6, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	subs r0, #0x20
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #5
	bl __divsi3
	ldr r1, _08140E2C @ =gBgScrollRegs
	strh r0, [r1, #2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #4
	ble _08140DCA
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08140E30 @ =0x000009CC
	adds r1, r6, r2
	ldr r0, _08140E34 @ =sub_08141300
	str r0, [r1]
_08140DCA:
	mov r0, sl
	bl sub_08155128
	cmp r0, #0
	bne _08140DDC
	ldr r0, _08140E38 @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_08140DDC:
	ldr r0, [sp]
	bl sub_0815604C
	mov r0, sl
	bl sub_0815604C
	movs r4, #0
_08140DEA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08140DEA
	ldr r2, _08140E3C @ =0x00000BDC
	adds r0, r6, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08140E24: .4byte 0x000002EE
_08140E28: .4byte 0x000009D8
_08140E2C: .4byte gBgScrollRegs
_08140E30: .4byte 0x000009CC
_08140E34: .4byte sub_08141300
_08140E38: .4byte 0x000002A7
_08140E3C: .4byte 0x00000BDC

	thumb_func_start sub_08140E40
sub_08140E40: @ 0x08140E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r0, r7, #4
	ldrb r1, [r7, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #4
	mov r2, sb
	cmp r2, #0
	bne _08140E62
	movs r0, #3
_08140E62:
	str r0, [sp]
	ldrb r0, [r7, #1]
	strb r0, [r7]
	movs r0, #7
	strb r0, [r7, #1]
	ldr r2, _08140F70 @ =gUnk_08385C14
	ldr r3, _08140F74 @ =0x000009CA
	adds r0, r7, r3
	ldrb r1, [r0]
	adds r1, #7
	lsls r1, r1, #1
	ldr r0, _08140F78 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _08140F7C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08140F80 @ =0x0600FD40
	mov sl, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	ldr r2, _08140F84 @ =0x000009DA
	adds r2, r2, r7
	mov r8, r2
	adds r3, r7, #0
	adds r3, #0xc
	str r3, [sp, #4]
	cmp r4, r5
	bhs _08140ECC
_08140EB0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, sl
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08140EB0
_08140ECC:
	ldr r1, _08140F88 @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, _08140F8C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08140F90 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08140F94 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08140F98 @ =gBgScrollRegs
	movs r5, #0
	movs r4, #0
	movs r0, #0x18
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0813A6D0
	ldr r6, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	ldr r3, _08140F9C @ =gUnk_08385CD4
	ldr r2, _08140F78 @ =gUnk_08D60A80
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #0x10]
	strh r0, [r6, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #0x12]
	strb r0, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	ldr r0, _08140FA0 @ =0x0000FF64
	strh r0, [r6, #0x10]
	strh r4, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	strh r4, [r7, #0x1c]
	ldr r1, [sp]
	cmp r4, r1
	bhs _08140FBE
_08140F4C:
	lsls r0, r4, #2
	adds r3, r0, r4
	lsls r1, r3, #3
	adds r1, r7, r1
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0x20
	strh r0, [r2]
	mov r2, sb
	cmp r2, #0
	bne _08140FA4
	lsls r0, r3, #2
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x2b
	b _08140FAC
	.align 2, 0
_08140F70: .4byte gUnk_08385C14
_08140F74: .4byte 0x000009CA
_08140F78: .4byte gUnk_08D60A80
_08140F7C: .4byte gUnk_082D7850
_08140F80: .4byte 0x0600FD40
_08140F84: .4byte 0x000009DA
_08140F88: .4byte 0x040000D4
_08140F8C: .4byte gBgPalette
_08140F90: .4byte 0x80000090
_08140F94: .4byte gUnk_03002440
_08140F98: .4byte gBgScrollRegs
_08140F9C: .4byte gUnk_08385CD4
_08140FA0: .4byte 0x0000FF64
_08140FA4:
	lsls r0, r3, #2
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x1b
_08140FAC:
	ldr r3, _08140FE4 @ =0x000002EE
	adds r0, r1, r3
	strh r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp]
	cmp r4, r0
	blo _08140F4C
_08140FBE:
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0x10
	strh r0, [r1]
	mov r3, sb
	cmp r3, #0
	bne _08140FEC
	ldr r1, _08140FE8 @ =0x000009CA
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x20
	b _08140FFE
	.align 2, 0
_08140FE4: .4byte 0x000002EE
_08140FE8: .4byte 0x000009CA
_08140FEC:
	ldr r2, _08141040 @ =0x000009CA
	adds r0, r7, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
_08140FFE:
	ldr r3, _08141044 @ =0x0000029E
	adds r0, r7, r3
	strh r1, [r0]
	ldrb r0, [r7]
	cmp r0, #5
	beq _0814100C
	b _08141164
_0814100C:
	bl sub_0802E57C
	ldr r2, _08141048 @ =0x00000BEC
	adds r1, r7, r2
	str r0, [r1]
	ldr r2, _0814104C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sb
	cmp r0, #0
	bne _08141050
	ldr r1, _08141040 @ =0x000009CA
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x35
	b _08141062
	.align 2, 0
_08141040: .4byte 0x000009CA
_08141044: .4byte 0x0000029E
_08141048: .4byte 0x00000BEC
_0814104C: .4byte gDispCnt
_08141050:
	ldr r2, _081410D8 @ =0x000009CA
	adds r0, r7, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x25
_08141062:
	ldr r3, _081410DC @ =0x0000038E
	adds r0, r7, r3
	strh r1, [r0]
	ldr r0, _081410E0 @ =0x000003A6
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _081410E4 @ =0x0000039B
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1]
	subs r3, #0x12
	adds r0, r7, r3
	bl sub_08155128
	ldr r1, _081410D8 @ =0x000009CA
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _081410F8
	ldr r1, _081410E8 @ =gUnk_08385C14
	ldr r0, _081410EC @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _081410F0 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r2, _081410F4 @ =0x0600FD40
	mov r8, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08141142
_081410B8:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _081410B8
	b _08141142
	.align 2, 0
_081410D8: .4byte 0x000009CA
_081410DC: .4byte 0x0000038E
_081410E0: .4byte 0x000003A6
_081410E4: .4byte 0x0000039B
_081410E8: .4byte gUnk_08385C14
_081410EC: .4byte gUnk_08D60A80
_081410F0: .4byte gUnk_082D7850
_081410F4: .4byte 0x0600FD40
_081410F8:
	ldr r1, _08141184 @ =gUnk_08385C14
	ldr r0, _08141188 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814118C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r3, _08141190 @ =0x0600FD40
	mov r8, r3
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08141142
_08141126:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08141126
_08141142:
	ldr r1, _08141194 @ =0x000009CA
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r6, r7, r0
	movs r1, #0
	movs r0, #4
	strb r0, [r6, #0x1f]
	str r1, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
_08141164:
	ldr r3, _08141198 @ =0x000009D8
	adds r1, r7, r3
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0814119C @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _081411A0 @ =sub_081411A4
	str r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141184: .4byte gUnk_08385C14
_08141188: .4byte gUnk_08D60A80
_0814118C: .4byte gUnk_082D7850
_08141190: .4byte 0x0600FD40
_08141194: .4byte 0x000009CA
_08141198: .4byte 0x000009D8
_0814119C: .4byte 0x000009CC
_081411A0: .4byte sub_081411A4

	thumb_func_start sub_081411A4
sub_081411A4: @ 0x081411A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _081411F4 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _081411F8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _081411D6
	ldr r0, _081411FC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141200 @ =sub_08141258
	str r0, [r1]
_081411D6:
	ldr r0, _08141204 @ =gBgScrollRegs
	movs r1, #0x18
	strh r1, [r0, #2]
	ldrb r0, [r6]
	cmp r0, #5
	bne _08141208
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r6, r0
	b _08141220
	.align 2, 0
_081411F4: .4byte 0x000009D8
_081411F8: .4byte gBldRegs
_081411FC: .4byte 0x000009CC
_08141200: .4byte sub_08141258
_08141204: .4byte gBgScrollRegs
_08141208:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r6, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141220
	ldr r0, _08141254 @ =0x000002A7
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_08141220:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141230:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141230
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08141254: .4byte 0x000002A7

	thumb_func_start sub_08141258
sub_08141258: @ 0x08141258
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814127C @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	movs r2, #0xbf
	lsls r2, r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #5
	bne _08141288
	ldr r0, _08141280 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08141284 @ =sub_081416DC
	b _0814128E
	.align 2, 0
_0814127C: .4byte gBldRegs
_08141280: .4byte 0x000009CC
_08141284: .4byte sub_081416DC
_08141288:
	ldr r2, _081412A8 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _081412AC @ =sub_08141300
_0814128E:
	str r0, [r1]
	ldrb r0, [r5]
	cmp r0, #5
	bne _081412B0
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r4, r5, r2
	b _081412C8
	.align 2, 0
_081412A8: .4byte 0x000009CC
_081412AC: .4byte sub_08141300
_081412B0:
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081412C8
	ldr r2, _081412FC @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_081412C8:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081412D8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081412D8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081412FC: .4byte 0x000002A7

	thumb_func_start sub_08141300
sub_08141300: @ 0x08141300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r5, #4
	ldrb r1, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp]
	movs r0, #4
	ldr r2, [sp]
	cmp r2, #0
	bne _08141322
	movs r0, #3
_08141322:
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0813B4F0
	ldr r1, _0814134C @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _08141350 @ =0x000009CB
	adds r0, r5, r2
	strb r1, [r0]
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _081413EC
	lsls r0, r0, #2
	ldr r1, _08141354 @ =_08141358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0814134C: .4byte 0x000009CA
_08141350: .4byte 0x000009CB
_08141354: .4byte _08141358
_08141358: @ jump table
	.4byte _081413EC @ case 0
	.4byte _0814136C @ case 1
	.4byte _08141388 @ case 2
	.4byte _081413A8 @ case 3
	.4byte _081413C8 @ case 4
_0814136C:
	ldr r0, _0814137C @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _08141380 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08141384 @ =sub_0814155C
	str r0, [r1]
	b _081413EC
	.align 2, 0
_0814137C: .4byte 0x0000021E
_08141380: .4byte 0x000009CC
_08141384: .4byte sub_0814155C
_08141388:
	ldr r0, _0814139C @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r5, #2]
	ldr r2, _081413A0 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _081413A4 @ =sub_08143140
	str r0, [r1]
	b _081413EC
	.align 2, 0
_0814139C: .4byte 0x0000021F
_081413A0: .4byte 0x000009CC
_081413A4: .4byte sub_08143140
_081413A8:
	ldr r0, _081413BC @ =0x0000021D
	bl m4aSongNumStart
	ldr r0, _081413C0 @ =0x000009CA
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _081413C4
	subs r0, r4, #1
	b _081413EA
	.align 2, 0
_081413BC: .4byte 0x0000021D
_081413C0: .4byte 0x000009CA
_081413C4:
	subs r0, #1
	b _081413EA
_081413C8:
	ldr r0, _081413E0 @ =0x0000021D
	bl m4aSongNumStart
	ldr r2, _081413E4 @ =0x000009CA
	adds r1, r5, r2
	ldrb r2, [r1]
	subs r0, r4, #1
	cmp r2, r0
	bne _081413E8
	movs r0, #0
	b _081413EA
	.align 2, 0
_081413E0: .4byte 0x0000021D
_081413E4: .4byte 0x000009CA
_081413E8:
	adds r0, r2, #1
_081413EA:
	strb r0, [r1]
_081413EC:
	ldr r0, _081414B8 @ =0x000009CA
	adds r3, r5, r0
	ldr r2, _081414BC @ =0x000009CB
	adds r1, r5, r2
	ldrb r0, [r3]
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r2, r5, r2
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r2, #0xc
	str r2, [sp, #8]
	ldrb r1, [r1]
	cmp r0, r1
	beq _081414F2
	ldr r2, _081414C0 @ =gUnk_08385C14
	ldrb r1, [r3]
	adds r1, #7
	lsls r1, r1, #1
	ldr r0, _081414C4 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _081414C8 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r6, [r1, #2]
	ldr r1, _081414CC @ =0x0600FD40
	mov sl, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	ldr r2, _081414B8 @ =0x000009CA
	adds r7, r5, r2
	ldr r0, _081414BC @ =0x000009CB
	adds r0, r0, r5
	mov sb, r0
	cmp r4, r6
	bhs _08141466
_0814144A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	add r1, sl
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0814144A
_08141466:
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	mov r2, sb
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, r0
	movs r0, #3
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
	ldr r2, [sp]
	cmp r2, #0
	bne _081414D0
	ldr r1, _081414B8 @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x20
	b _081414E2
	.align 2, 0
_081414B8: .4byte 0x000009CA
_081414BC: .4byte 0x000009CB
_081414C0: .4byte gUnk_08385C14
_081414C4: .4byte gUnk_08D60A80
_081414C8: .4byte gUnk_082D7850
_081414CC: .4byte 0x0600FD40
_081414D0:
	ldr r2, _0814154C @ =0x000009CA
	adds r0, r5, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
_081414E2:
	ldr r2, _08141550 @ =0x0000029E
	adds r0, r5, r2
	strh r1, [r0]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
_081414F2:
	ldr r0, [sp, #4]
	bl sub_08155128
	cmp r0, #0
	bne _08141504
	ldr r2, _08141554 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_08141504:
	ldr r0, [sp, #8]
	bl sub_0815604C
	ldr r0, [sp, #4]
	bl sub_0815604C
	movs r4, #0
_08141512:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141512
	ldr r2, _08141558 @ =0x00000BDC
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814154C: .4byte 0x000009CA
_08141550: .4byte 0x0000029E
_08141554: .4byte 0x000002A7
_08141558: .4byte 0x00000BDC

	thumb_func_start sub_0814155C
sub_0814155C: @ 0x0814155C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r5, #4
	ldrb r1, [r5, #0xa]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _08141594 @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	cmp r2, #0
	bne _0814159C
	ldr r1, _08141598 @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x35
	b _081415AE
	.align 2, 0
_08141594: .4byte 0x00000BE5
_08141598: .4byte 0x000009CA
_0814159C:
	ldr r2, _081416B0 @ =0x000009CA
	adds r0, r5, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x25
_081415AE:
	ldr r1, _081416B4 @ =0x0000038E
	adds r0, r5, r1
	movs r1, #0
	strh r2, [r0]
	ldr r2, _081416B8 @ =0x000003A6
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _081416BC @ =0x0000039B
	adds r1, r5, r0
	movs r0, #5
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r2, _081416C0 @ =0x000002A7
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r1, _081416C4 @ =gUnk_08385C14
	ldr r0, _081416C8 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x16
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _081416CC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r2, _081416D0 @ =0x0600FD40
	mov r8, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r0, r0, r5
	mov sb, r0
	movs r1, #0xc
	adds r1, r1, r5
	mov sl, r1
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r2, r5, r2
	str r2, [sp]
	cmp r4, r6
	bhs _08141640
_08141624:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08141624
_08141640:
	ldr r1, _081416B0 @ =0x000009CA
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	movs r4, #0
	movs r1, #4
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl sub_08155128
	mov r0, sb
	strh r4, [r0]
	ldr r2, _081416D4 @ =0x000009CC
	adds r1, r5, r2
	ldr r0, _081416D8 @ =sub_081416DC
	str r0, [r1]
	mov r0, sl
	bl sub_0815604C
	ldr r0, [sp]
	bl sub_0815604C
_08141678:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141678
	movs r2, #0xdf
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_0815604C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081416B0: .4byte 0x000009CA
_081416B4: .4byte 0x0000038E
_081416B8: .4byte 0x000003A6
_081416BC: .4byte 0x0000039B
_081416C0: .4byte 0x000002A7
_081416C4: .4byte gUnk_08385C14
_081416C8: .4byte gUnk_08D60A80
_081416CC: .4byte gUnk_082D7850
_081416D0: .4byte 0x0600FD40
_081416D4: .4byte 0x000009CC
_081416D8: .4byte sub_081416DC

	thumb_func_start sub_081416DC
sub_081416DC: @ 0x081416DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl sub_0813B4F0
	bl sub_0813B484
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _081416F6
	b _0814190E
_081416F6:
	lsls r0, r0, #2
	ldr r1, _08141700 @ =_08141704
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08141700: .4byte _08141704
_08141704: @ jump table
	.4byte _0814190E @ case 0
	.4byte _08141718 @ case 1
	.4byte _08141770 @ case 2
	.4byte _08141798 @ case 3
	.4byte _08141828 @ case 4
_08141718:
	ldr r0, _08141740 @ =0x0000021E
	bl m4aSongNumStart
	ldr r0, _08141744 @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08141748 @ =0x000003A6
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08141754
	ldr r1, _0814174C @ =0x000009CC
	adds r0, r5, r1
	ldr r1, _08141750 @ =sub_081431F0
	str r1, [r0]
	movs r0, #8
	strb r0, [r5, #2]
	b _0814190E
	.align 2, 0
_08141740: .4byte 0x0000021E
_08141744: .4byte 0x00000BE5
_08141748: .4byte 0x000003A6
_0814174C: .4byte 0x000009CC
_08141750: .4byte sub_081431F0
_08141754:
	cmp r0, #1
	beq _0814175A
	b _0814190E
_0814175A:
	ldr r1, _08141768 @ =0x000009CC
	adds r0, r5, r1
	ldr r1, _0814176C @ =sub_081431F0
	str r1, [r0]
	movs r0, #5
	strb r0, [r5, #2]
	b _0814190E
	.align 2, 0
_08141768: .4byte 0x000009CC
_0814176C: .4byte sub_081431F0
_08141770:
	ldr r0, _08141788 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _0814178C @ =0x00000BE5
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08141790 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08141794 @ =sub_08141964
	str r0, [r1]
	b _0814190E
	.align 2, 0
_08141788: .4byte 0x0000021F
_0814178C: .4byte 0x00000BE5
_08141790: .4byte 0x000009CC
_08141794: .4byte sub_08141964
_08141798:
	ldr r1, _0814180C @ =0x000003A6
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _081417A8
	ldr r0, _08141810 @ =0x0000021D
	bl m4aSongNumStart
_081417A8:
	movs r0, #0
	strb r0, [r4]
	ldr r0, _08141814 @ =0x0000039B
	adds r1, r5, r0
	movs r0, #5
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r1, _08141818 @ =gUnk_08385C14
	ldr r0, _0814181C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x16
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08141820 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _08141824 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	blo _081417EE
	b _0814190E
_081417EE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _081417EE
	b _0814190E
	.align 2, 0
_0814180C: .4byte 0x000003A6
_08141810: .4byte 0x0000021D
_08141814: .4byte 0x0000039B
_08141818: .4byte gUnk_08385C14
_0814181C: .4byte gUnk_08D60A80
_08141820: .4byte gUnk_082D7850
_08141824: .4byte 0x0600FD40
_08141828:
	ldr r0, _081418A4 @ =0x000003A6
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #1
	beq _08141838
	ldr r0, _081418A8 @ =0x0000021D
	bl m4aSongNumStart
_08141838:
	movs r0, #1
	strb r0, [r4]
	ldr r0, _081418AC @ =0x0000039B
	adds r1, r5, r0
	movs r0, #6
	strb r0, [r1]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	ldr r1, _081418B0 @ =0x000009CA
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _081418C4
	ldr r1, _081418B4 @ =gUnk_08385C14
	ldr r0, _081418B8 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _081418BC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _081418C0 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0814190E
_08141886:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08141886
	b _0814190E
	.align 2, 0
_081418A4: .4byte 0x000003A6
_081418A8: .4byte 0x0000021D
_081418AC: .4byte 0x0000039B
_081418B0: .4byte 0x000009CA
_081418B4: .4byte gUnk_08385C14
_081418B8: .4byte gUnk_08D60A80
_081418BC: .4byte gUnk_082D7850
_081418C0: .4byte 0x0600FD40
_081418C4:
	ldr r1, _08141954 @ =gUnk_08385C14
	ldr r0, _08141958 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814195C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r6, [r1, #2]
	ldr r1, _08141960 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0814190E
_081418F2:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _081418F2
_0814190E:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08141922:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141922
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141954: .4byte gUnk_08385C14
_08141958: .4byte gUnk_08D60A80
_0814195C: .4byte gUnk_082D7850
_08141960: .4byte 0x0600FD40

	thumb_func_start sub_08141964
sub_08141964: @ 0x08141964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08141A20 @ =0x000009CA
	adds r4, r6, r0
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #0x1f]
	str r2, [r0, #8]
	bl sub_08155128
	ldr r2, _08141A24 @ =gUnk_08385C14
	ldrb r1, [r4]
	adds r1, #7
	lsls r1, r1, #1
	ldr r0, _08141A28 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r1, _08141A2C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08141A30 @ =0x0600FD40
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _081419DC
_081419C0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	add r1, r8
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _081419C0
_081419DC:
	ldr r0, _08141A34 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141A38 @ =sub_08141300
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_081419F8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081419F8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141A20: .4byte 0x000009CA
_08141A24: .4byte gUnk_08385C14
_08141A28: .4byte gUnk_08D60A80
_08141A2C: .4byte gUnk_082D7850
_08141A30: .4byte 0x0600FD40
_08141A34: .4byte 0x000009CC
_08141A38: .4byte sub_08141300

	thumb_func_start sub_08141A3C
sub_08141A3C: @ 0x08141A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, r6, #4
	ldrb r1, [r6, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #4
	cmp r0, #0
	bne _08141A58
	movs r1, #3
_08141A58:
	adds r7, r1, #0
	ldr r2, _08141B60 @ =0x000009D8
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
	ldr r0, _08141B64 @ =gBgScrollRegs
	mov sl, r0
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r1, r1, r6
	mov r8, r1
	movs r2, #0xc
	adds r2, r2, r6
	mov sb, r2
	cmp r5, r7
	bhs _08141AAA
_08141A7C:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r1, _08141B60 @ =0x000009D8
	adds r0, r6, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xd0
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	adds r0, #0x20
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08141A7C
_08141AAA:
	ldr r2, _08141B60 @ =0x000009D8
	adds r4, r6, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x10
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	strh r0, [r6, #0x1c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r0, #0x18
	mov r1, sl
	strh r0, [r1, #2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #4
	ble _08141B0A
	ldr r0, _08141B68 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141B6C @ =sub_081431C0
	str r0, [r1]
_08141B0A:
	mov r0, r8
	bl sub_08155128
	cmp r0, #0
	bne _08141B1C
	ldr r2, _08141B70 @ =0x000002A7
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
_08141B1C:
	mov r0, sb
	bl sub_0815604C
	mov r0, r8
	bl sub_0815604C
	movs r4, #0
_08141B2A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141B2A
	ldr r2, _08141B74 @ =0x00000BDC
	adds r0, r6, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141B60: .4byte 0x000009D8
_08141B64: .4byte gBgScrollRegs
_08141B68: .4byte 0x000009CC
_08141B6C: .4byte sub_081431C0
_08141B70: .4byte 0x000002A7
_08141B74: .4byte 0x00000BDC

	thumb_func_start sub_08141B78
sub_08141B78: @ 0x08141B78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08141BE8 @ =0x000009D8
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r5, _08141BEC @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	blt _08141BA6
	ldr r0, _08141BF0 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141BF4 @ =sub_08143260
	str r0, [r1]
_08141BA6:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_08141BBA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141BBA
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08141BE8: .4byte 0x000009D8
_08141BEC: .4byte gBldRegs
_08141BF0: .4byte 0x000009CC
_08141BF4: .4byte sub_08143260

	thumb_func_start sub_08141BF8
sub_08141BF8: @ 0x08141BF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _08141C5C @ =0x000009CA
	adds r0, r7, r1
	ldrb r6, [r0]
	mov r8, r6
	adds r0, r7, #0
	bl sub_0813AD2C
	ldrb r0, [r7, #2]
	cmp r0, #5
	beq _08141CC0
	cmp r0, #8
	bne _08141CC8
	mov r0, sp
	ldr r1, _08141C60 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08141C64 @ =gBgPalette
	ldr r5, _08141C68 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08141C6C @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08141C70 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08141C74 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	cmp r6, #1
	beq _08141C8C
	cmp r6, #1
	bgt _08141C78
	cmp r6, #0
	beq _08141C84
	b _08141CC8
	.align 2, 0
_08141C5C: .4byte 0x000009CA
_08141C60: .4byte 0x00007FFF
_08141C64: .4byte gBgPalette
_08141C68: .4byte 0x01000100
_08141C6C: .4byte gObjPalette
_08141C70: .4byte gUnk_03002440
_08141C74: .4byte gCurGameState
_08141C78:
	mov r0, r8
	cmp r0, #2
	beq _08141C94
	cmp r0, #3
	beq _08141C9C
	b _08141CC8
_08141C84:
	movs r0, #0
	bl sub_0801A744
	b _08141CC8
_08141C8C:
	movs r0, #1
	bl sub_0801A744
	b _08141CC8
_08141C94:
	movs r0, #2
	bl sub_0801A744
	b _08141CC8
_08141C9C:
	ldrb r1, [r7, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08141CB8
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r7, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08141CB8:
	movs r0, #3
	bl sub_0801A744
	b _08141CC8
_08141CC0:
	ldr r0, _08141CD4 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _08141CD8 @ =sub_0813ECBC
	str r0, [r1]
_08141CC8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141CD4: .4byte 0x000009CC
_08141CD8: .4byte sub_0813ECBC

	thumb_func_start sub_08141CDC
sub_08141CDC: @ 0x08141CDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	subs r0, #1
	cmp r0, #6
	bls _08141CEA
	b _08141E24
_08141CEA:
	lsls r0, r0, #2
	ldr r1, _08141CF4 @ =_08141CF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08141CF4: .4byte _08141CF8
_08141CF8: @ jump table
	.4byte _08141D14 @ case 0
	.4byte _08141D38 @ case 1
	.4byte _08141DA4 @ case 2
	.4byte _08141E24 @ case 3
	.4byte _08141E24 @ case 4
	.4byte _08141E24 @ case 5
	.4byte _08141DC0 @ case 6
_08141D14:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _08141D2A
	ldr r0, _08141D34 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141D2A:
	adds r0, r5, #0
	bl sub_0813AD9C
	b _08141E24
	.align 2, 0
_08141D34: .4byte 0x000002A7
_08141D38:
	ldr r1, _08141D54 @ =0x00000BE5
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08141D58
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	b _08141D70
	.align 2, 0
_08141D54: .4byte 0x00000BE5
_08141D58:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141D70
	ldr r0, _08141DA0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141D70:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141D80:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141D80
	b _08141E24
	.align 2, 0
_08141DA0: .4byte 0x000002A7
_08141DA4:
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0813AE30
	b _08141E24
_08141DC0:
	ldr r1, _08141DDC @ =0x00000BE5
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08141DE0
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	b _08141DF8
	.align 2, 0
_08141DDC: .4byte 0x00000BE5
_08141DE0:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141DF8
	ldr r0, _08141E2C @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141DF8:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141E08:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141E08
_08141E24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08141E2C: .4byte 0x000002A7

	thumb_func_start sub_08141E30
sub_08141E30: @ 0x08141E30
	push {lr}
	ldr r0, _08141E40 @ =gUnk_0203AD48
	ldrh r0, [r0]
	cmp r0, #2
	bhi _08141E44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08141E46
	.align 2, 0
_08141E40: .4byte gUnk_0203AD48
_08141E44:
	movs r0, #0
_08141E46:
	bl sub_0813914C
	adds r3, r0, #0
	ldr r1, _08141E5C @ =gUnk_0203ACB0
	ldr r2, _08141E60 @ =gUnk_0203AD48
	ldrh r0, [r2]
	cmp r0, #2
	bhi _08141E64
	lsls r0, r0, #1
	b _08141E66
	.align 2, 0
_08141E5C: .4byte gUnk_0203ACB0
_08141E60: .4byte gUnk_0203AD48
_08141E64:
	movs r0, #0
_08141E66:
	adds r1, r1, r0
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08141E74
sub_08141E74: @ 0x08141E74
	push {lr}
	ldr r0, _08141E90 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08141E94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08141E9C
	.align 2, 0
_08141E90: .4byte gCurGameState
_08141E94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08141E9C:
	ldr r0, _08141EB8 @ =0x000009D4
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08141EBC @ =0x000009CC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08141EB8: .4byte 0x000009D4
_08141EBC: .4byte 0x000009CC

	thumb_func_start sub_08141EC0
sub_08141EC0: @ 0x08141EC0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08141EC6:
	adds r0, r4, #0
	bl sub_0814343C
	adds r0, r4, #0
	bl sub_08143464
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08141EC6
	ldr r3, _08141F04 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08141F0C
	ldr r0, _08141F08 @ =gUnk_082D7850
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08158334
	b _08141F2C
	.align 2, 0
_08141F04: .4byte gUnk_03002440
_08141F08: .4byte gUnk_082D7850
_08141F0C:
	ldr r1, _08141F54 @ =0x040000D4
	ldr r0, _08141F58 @ =gUnk_082D7850
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r0, _08141F5C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08141F60 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08141F2C:
	ldr r0, _08141F58 @ =gUnk_082D7850
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldr r2, _08141F64 @ =0x000009DA
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r4, _08141F68 @ =0x000009CC
	adds r1, r5, r4
	ldr r0, _08141F6C @ =sub_08141F70
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08141F54: .4byte 0x040000D4
_08141F58: .4byte gUnk_082D7850
_08141F5C: .4byte gBgPalette
_08141F60: .4byte 0x80000100
_08141F64: .4byte 0x000009DA
_08141F68: .4byte 0x000009CC
_08141F6C: .4byte sub_08141F70

	thumb_func_start sub_08141F70
sub_08141F70: @ 0x08141F70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08141F94 @ =gUnk_082D7850
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, _08141F98 @ =0x06008000
	bl LZ77UnCompVram
	ldr r0, _08141F9C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08141FA0 @ =sub_0813C1C4
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08141F94: .4byte gUnk_082D7850
_08141F98: .4byte 0x06008000
_08141F9C: .4byte 0x000009CC
_08141FA0: .4byte sub_0813C1C4

	thumb_func_start sub_08141FA4
sub_08141FA4: @ 0x08141FA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_081392A0
	ldr r0, _08141FBC @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08141FC0 @ =sub_0813C388
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08141FBC: .4byte 0x000009CC
_08141FC0: .4byte sub_0813C388

	thumb_func_start sub_08141FC4
sub_08141FC4: @ 0x08141FC4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08141FE8
	ldr r0, _08142008 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08141FE8:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _0814200C @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _08142010 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142014 @ =sub_0813CA24
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142008: .4byte 0x000002A7
_0814200C: .4byte 0x00000BDC
_08142010: .4byte 0x000009CC
_08142014: .4byte sub_0813CA24

	thumb_func_start sub_08142018
sub_08142018: @ 0x08142018
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142064 @ =gUnk_0203ADE0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08142068 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814206C @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _08142070 @ =sub_0813CB78
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _0814204C
	ldr r2, _08142074 @ =0x000002A7
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
_0814204C:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _08142078 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142064: .4byte gUnk_0203ADE0
_08142068: .4byte 0x000009D8
_0814206C: .4byte 0x000009CC
_08142070: .4byte sub_0813CB78
_08142074: .4byte 0x000002A7
_08142078: .4byte 0x00000BDC

	thumb_func_start sub_0814207C
sub_0814207C: @ 0x0814207C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _081420D0 @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _081420D4 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r0, _081420D8 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _081420B0
	ldr r0, _081420DC @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_081420B0:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _081420E0 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _081420E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081420E8 @ =sub_0813CCA8
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081420D0: .4byte gUnk_030016A0
_081420D4: .4byte 0x000009D8
_081420D8: .4byte gBldRegs
_081420DC: .4byte 0x000002A7
_081420E0: .4byte 0x00000BDC
_081420E4: .4byte 0x000009CC
_081420E8: .4byte sub_0813CCA8

	thumb_func_start sub_081420EC
sub_081420EC: @ 0x081420EC
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _0814210C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142110 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142114 @ =sub_08142118
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814210C: .4byte 0x000009D8
_08142110: .4byte 0x000009CC
_08142114: .4byte sub_08142118

	thumb_func_start sub_08142118
sub_08142118: @ 0x08142118
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814213C @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142136
	ldr r0, _08142140 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142144 @ =sub_08142148
	str r0, [r1]
_08142136:
	pop {r0}
	bx r0
	.align 2, 0
_0814213C: .4byte 0x000009D8
_08142140: .4byte 0x000009CC
_08142144: .4byte sub_08142148

	thumb_func_start sub_08142148
sub_08142148: @ 0x08142148
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814216C @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814215E
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_0814215E:
	ldr r0, _08142170 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142174 @ =sub_08142178
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814216C: .4byte 0x00000BEC
_08142170: .4byte 0x000009CC
_08142174: .4byte sub_08142178

	thumb_func_start sub_08142178
sub_08142178: @ 0x08142178
	ldr r1, _08142184 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142188 @ =sub_0814218C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142184: .4byte 0x000009CC
_08142188: .4byte sub_0814218C

	thumb_func_start sub_0814218C
sub_0814218C: @ 0x0814218C
	ldr r1, _08142198 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814219C @ =sub_081421A0
	str r1, [r0]
	bx lr
	.align 2, 0
_08142198: .4byte 0x000009CC
_0814219C: .4byte sub_081421A0

	thumb_func_start sub_081421A0
sub_081421A0: @ 0x081421A0
	push {lr}
	ldr r0, _081421B4 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08149CE4
	pop {r0}
	bx r0
	.align 2, 0
_081421B4: .4byte gCurGameState

	thumb_func_start sub_081421B8
sub_081421B8: @ 0x081421B8
	push {lr}
	adds r2, r0, #0
	ldr r0, _081421E8 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081421D6
	ldr r0, _081421EC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081421F0 @ =sub_081421F8
	str r0, [r1]
_081421D6:
	ldr r1, _081421F4 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_081421E8: .4byte 0x000009D8
_081421EC: .4byte 0x000009CC
_081421F0: .4byte sub_081421F8
_081421F4: .4byte 0x00000BDC

	thumb_func_start sub_081421F8
sub_081421F8: @ 0x081421F8
	push {lr}
	ldr r1, _08142218 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0814221C @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08142220 @ =sub_0813D0DC
	str r1, [r2]
	ldr r2, _08142224 @ =0x00000BDC
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08142218: .4byte 0x000009D8
_0814221C: .4byte 0x000009CC
_08142220: .4byte sub_0813D0DC
_08142224: .4byte 0x00000BDC

	thumb_func_start sub_08142228
sub_08142228: @ 0x08142228
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142294 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142298 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814229C @ =sub_0813D178
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08142254
	ldr r0, _081422A0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08142254:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08142264:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142264
	ldr r1, _081422A4 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142294: .4byte 0x000009D8
_08142298: .4byte 0x000009CC
_0814229C: .4byte sub_0813D178
_081422A0: .4byte 0x000002A7
_081422A4: .4byte 0x00000BDC

	thumb_func_start sub_081422A8
sub_081422A8: @ 0x081422A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142314 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142318 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814231C @ =sub_0813D234
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081422D4
	ldr r0, _08142320 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081422D4:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081422E4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081422E4
	ldr r1, _08142324 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142314: .4byte 0x000009D8
_08142318: .4byte 0x000009CC
_0814231C: .4byte sub_0813D234
_08142320: .4byte 0x000002A7
_08142324: .4byte 0x00000BDC

	thumb_func_start sub_08142328
sub_08142328: @ 0x08142328
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08142380 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _08142384 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142388 @ =sub_0813DB74
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08142352:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142352
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142380: .4byte gBldRegs
_08142384: .4byte 0x000009CC
_08142388: .4byte sub_0813DB74

	thumb_func_start sub_0814238C
sub_0814238C: @ 0x0814238C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _081423E0 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _081423E4 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _081423E8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081423EC @ =sub_0813DE7C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_081423BE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081423BE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081423E0: .4byte gBldRegs
_081423E4: .4byte 0x000009D8
_081423E8: .4byte 0x000009CC
_081423EC: .4byte sub_0813DE7C

	thumb_func_start sub_081423F0
sub_081423F0: @ 0x081423F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08142448 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814244C @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08142412
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_08142412:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08142420
	bl sub_08157190
	movs r0, #0
	str r0, [r4, #0xc]
_08142420:
	adds r0, r4, #0
	bl sub_0813A9DC
	ldr r1, _08142450 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802E6C4
	ldr r0, _08142454 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142458 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0814245C @ =sub_08142460
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142448: .4byte gDispCnt
_0814244C: .4byte 0x0000FCFF
_08142450: .4byte 0x00000BEC
_08142454: .4byte 0x000009D8
_08142458: .4byte 0x000009CC
_0814245C: .4byte sub_08142460

	thumb_func_start sub_08142460
sub_08142460: @ 0x08142460
	push {lr}
	adds r1, r0, #0
	ldr r0, _08142488 @ =0x000009D8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142482
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0814248C @ =0x000009CC
	adds r1, r1, r0
	ldr r0, _08142490 @ =sub_0813DEF0
	str r0, [r1]
_08142482:
	pop {r0}
	bx r0
	.align 2, 0
_08142488: .4byte 0x000009D8
_0814248C: .4byte 0x000009CC
_08142490: .4byte sub_0813DEF0

	thumb_func_start sub_08142494
sub_08142494: @ 0x08142494
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _081424B8 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802FBF4
	ldr r0, _081424BC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _081424C0 @ =0x000009CC
	adds r4, r4, r1
	ldr r0, _081424C4 @ =sub_081424C8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081424B8: .4byte 0x00000BEC
_081424BC: .4byte 0x000009D8
_081424C0: .4byte 0x000009CC
_081424C4: .4byte sub_081424C8

	thumb_func_start sub_081424C8
sub_081424C8: @ 0x081424C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142504 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081424EE
	ldr r0, _08142508 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081424FE
_081424EE:
	ldr r0, _0814250C @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _08142510 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142514 @ =sub_08142518
	str r0, [r1]
_081424FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142504: .4byte 0x00000BEC
_08142508: .4byte gPressedKeys
_0814250C: .4byte gUnk_030016A0
_08142510: .4byte 0x000009CC
_08142514: .4byte sub_08142518

	thumb_func_start sub_08142518
sub_08142518: @ 0x08142518
	ldr r2, _08142534 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	ldr r2, _08142538 @ =0x000009D8
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _0814253C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142540 @ =sub_08142544
	str r1, [r0]
	bx lr
	.align 2, 0
_08142534: .4byte gBldRegs
_08142538: .4byte 0x000009D8
_0814253C: .4byte 0x000009CC
_08142540: .4byte sub_08142544

	thumb_func_start sub_08142544
sub_08142544: @ 0x08142544
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08142580 @ =0x000009D8
	adds r6, r7, r0
	ldrh r4, [r6]
	adds r4, #1
	strh r4, [r6]
	ldr r5, _08142584 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0814257A
	bl m4aMPlayAllStop
	movs r0, #0
	strh r0, [r6]
	ldr r0, _08142588 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _0814258C @ =sub_08142590
	str r0, [r1]
_0814257A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08142580: .4byte 0x000009D8
_08142584: .4byte gBldRegs
_08142588: .4byte 0x000009CC
_0814258C: .4byte sub_08142590

	thumb_func_start sub_08142590
sub_08142590: @ 0x08142590
	push {lr}
	adds r2, r0, #0
	ldr r0, _081425B4 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081425AE
	ldr r0, _081425B8 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081425BC @ =sub_081425C0
	str r0, [r1]
_081425AE:
	pop {r0}
	bx r0
	.align 2, 0
_081425B4: .4byte 0x000009D8
_081425B8: .4byte 0x000009CC
_081425BC: .4byte sub_081425C0

	thumb_func_start sub_081425C0
sub_081425C0: @ 0x081425C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081425E4 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081425D6
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_081425D6:
	ldr r0, _081425E8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081425EC @ =sub_081425F0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081425E4: .4byte 0x00000BEC
_081425E8: .4byte 0x000009CC
_081425EC: .4byte sub_081425F0

	thumb_func_start sub_081425F0
sub_081425F0: @ 0x081425F0
	ldr r1, _081425FC @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142600 @ =sub_08142604
	str r1, [r0]
	bx lr
	.align 2, 0
_081425FC: .4byte 0x000009CC
_08142600: .4byte sub_08142604

	thumb_func_start sub_08142604
sub_08142604: @ 0x08142604
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _0814261C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142620 @ =sub_08142624
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814261C: .4byte 0x000009CC
_08142620: .4byte sub_08142624

	thumb_func_start sub_08142624
sub_08142624: @ 0x08142624
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08142690 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08142650
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08142650:
	mov r0, sp
	ldr r1, _08142694 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142698 @ =gBgPalette
	ldr r5, _0814269C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _081426A0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _081426A4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _081426A8 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08123FD4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142690: .4byte gBldRegs
_08142694: .4byte 0x00007FFF
_08142698: .4byte gBgPalette
_0814269C: .4byte 0x01000100
_081426A0: .4byte gObjPalette
_081426A4: .4byte gUnk_03002440
_081426A8: .4byte gCurGameState

	thumb_func_start sub_081426AC
sub_081426AC: @ 0x081426AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0814270C @ =gBldRegs
	movs r2, #0
	movs r0, #0x97
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142710 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08142714 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142718 @ =sub_0813DF4C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_081426DE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081426DE
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814270C: .4byte gBldRegs
_08142710: .4byte 0x000009D8
_08142714: .4byte 0x000009CC
_08142718: .4byte sub_0813DF4C

	thumb_func_start sub_0814271C
sub_0814271C: @ 0x0814271C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813A9DC
	ldr r0, _08142734 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142738 @ =sub_0813ECBC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142734: .4byte 0x000009CC
_08142738: .4byte sub_0813ECBC

	thumb_func_start sub_0814273C
sub_0814273C: @ 0x0814273C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081427A8 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081427AC @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081427B0 @ =sub_0813DFCC
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08142768
	ldr r0, _081427B4 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08142768:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08142778:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142778
	ldr r1, _081427B8 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081427A8: .4byte 0x000009D8
_081427AC: .4byte 0x000009CC
_081427B0: .4byte sub_0813DFCC
_081427B4: .4byte 0x000002A7
_081427B8: .4byte 0x00000BDC

	thumb_func_start sub_081427BC
sub_081427BC: @ 0x081427BC
	push {lr}
	adds r2, r0, #0
	ldr r1, _081427DC @ =0x000009D8
	adds r0, r2, r1
	movs r1, #0
	strh r1, [r0]
	ldrb r0, [r2, #2]
	cmp r0, #7
	bne _081427E4
	ldr r3, _081427E0 @ =0x000009CC
	adds r0, r2, r3
	adds r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0]
	b _081427EC
	.align 2, 0
_081427DC: .4byte 0x000009D8
_081427E0: .4byte 0x000009CC
_081427E4:
	ldr r0, _081427FC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142800 @ =sub_08142808
	str r0, [r1]
_081427EC:
	ldr r1, _08142804 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_081427FC: .4byte 0x000009CC
_08142800: .4byte sub_08142808
_08142804: .4byte 0x00000BDC

	thumb_func_start sub_08142808
sub_08142808: @ 0x08142808
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814283C @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _0814282C
	ldr r1, _08142840 @ =0x000009CC
	adds r0, r2, r1
	movs r3, #0x9d
	lsls r3, r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0]
_0814282C:
	ldr r1, _08142844 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814283C: .4byte 0x000009D8
_08142840: .4byte 0x000009CC
_08142844: .4byte 0x00000BDC

	thumb_func_start sub_08142848
sub_08142848: @ 0x08142848
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814286C @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814285E
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_0814285E:
	ldr r0, _08142870 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142874 @ =sub_08142878
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814286C: .4byte 0x00000BEC
_08142870: .4byte 0x000009CC
_08142874: .4byte sub_08142878

	thumb_func_start sub_08142878
sub_08142878: @ 0x08142878
	ldr r1, _08142884 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142888 @ =sub_0814288C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142884: .4byte 0x000009CC
_08142888: .4byte sub_0814288C

	thumb_func_start sub_0814288C
sub_0814288C: @ 0x0814288C
	ldr r1, _08142898 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814289C @ =sub_081428A0
	str r1, [r0]
	bx lr
	.align 2, 0
_08142898: .4byte 0x000009CC
_0814289C: .4byte sub_081428A0

	thumb_func_start sub_081428A0
sub_081428A0: @ 0x081428A0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081428C6
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_081428C6:
	mov r0, sp
	ldr r1, _08142904 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142908 @ =gBgPalette
	ldr r5, _0814290C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142910 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142914 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142918 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_081434F8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142904: .4byte 0x00007FFF
_08142908: .4byte gBgPalette
_0814290C: .4byte 0x01000100
_08142910: .4byte gObjPalette
_08142914: .4byte gUnk_03002440
_08142918: .4byte gCurGameState

	thumb_func_start sub_0814291C
sub_0814291C: @ 0x0814291C
	ldr r1, _08142930 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142934 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142938 @ =sub_0814293C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142930: .4byte 0x000009D8
_08142934: .4byte 0x000009CC
_08142938: .4byte sub_0814293C

	thumb_func_start sub_0814293C
sub_0814293C: @ 0x0814293C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142978 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0814296C
	ldr r0, _0814297C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142980 @ =sub_0813E2CC
	str r0, [r1]
_0814296C:
	adds r0, r5, #0
	bl sub_0813AE30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142978: .4byte 0x000009D8
_0814297C: .4byte 0x000009CC
_08142980: .4byte sub_0813E2CC

	thumb_func_start sub_08142984
sub_08142984: @ 0x08142984
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r1, _081429DC @ =gUnk_0203ACB0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldr r1, _081429E0 @ =0x0000FFFF
	strh r1, [r0]
	adds r0, r4, #7
	adds r0, r0, r2
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r4, #4
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
	ldr r0, _081429E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081429E8 @ =sub_081429EC
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081429DC: .4byte gUnk_0203ACB0
_081429E0: .4byte 0x0000FFFF
_081429E4: .4byte 0x000009CC
_081429E8: .4byte sub_081429EC

	thumb_func_start sub_081429EC
sub_081429EC: @ 0x081429EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A40 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	bgt _08142A0E
	ldr r0, _08142A44 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142A20
_08142A0E:
	ldr r0, _08142A48 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142A4C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A50 @ =sub_08142A54
	str r0, [r1]
	movs r0, #1
	strb r0, [r4, #2]
_08142A20:
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A40: .4byte 0x000009D8
_08142A44: .4byte gPressedKeys
_08142A48: .4byte 0x0000021F
_08142A4C: .4byte 0x000009CC
_08142A50: .4byte sub_08142A54

	thumb_func_start sub_08142A54
sub_08142A54: @ 0x08142A54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A8C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142A90 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A94 @ =sub_0813EBDC
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142A7E
	ldr r0, _08142A98 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142A7E:
	adds r0, r4, #0
	bl sub_0813AD9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A8C: .4byte 0x000009D8
_08142A90: .4byte 0x000009CC
_08142A94: .4byte sub_0813EBDC
_08142A98: .4byte 0x000002A7

	thumb_func_start sub_08142A9C
sub_08142A9C: @ 0x08142A9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AA4C
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08142ABC
	ldr r0, _08142AB4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AB8 @ =sub_0813C414
	b _08142AC2
	.align 2, 0
_08142AB4: .4byte 0x000009CC
_08142AB8: .4byte sub_0813C414
_08142ABC:
	ldr r0, _08142ACC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AD0 @ =sub_0813CDE4
_08142AC2:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142ACC: .4byte 0x000009CC
_08142AD0: .4byte sub_0813CDE4

	thumb_func_start sub_08142AD4
sub_08142AD4: @ 0x08142AD4
	ldr r1, _08142AE0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142AE4 @ =sub_08142AE8
	str r1, [r0]
	bx lr
	.align 2, 0
_08142AE0: .4byte 0x000009CC
_08142AE4: .4byte sub_08142AE8

	thumb_func_start sub_08142AE8
sub_08142AE8: @ 0x08142AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08139F58
	adds r0, r4, #0
	bl sub_0813A110
	ldr r0, _08142B04 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142B08 @ =sub_0813EE48
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B04: .4byte 0x000009CC
_08142B08: .4byte sub_0813EE48

	thumb_func_start sub_08142B0C
sub_08142B0C: @ 0x08142B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142B38 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142B2A
	ldr r0, _08142B3C @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142B40 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142B44 @ =sub_08142B48
	str r0, [r1]
_08142B2A:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B38: .4byte gPressedKeys
_08142B3C: .4byte 0x0000021F
_08142B40: .4byte 0x000009CC
_08142B44: .4byte sub_08142B48

	thumb_func_start sub_08142B48
sub_08142B48: @ 0x08142B48
	push {lr}
	ldr r2, _08142B70 @ =gBldRegs
	movs r3, #0
	movs r1, #0x97
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	ldr r2, _08142B74 @ =0x000009D8
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _08142B78 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08142B7C @ =sub_08142B80
	str r1, [r2]
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_08142B70: .4byte gBldRegs
_08142B74: .4byte 0x000009D8
_08142B78: .4byte 0x000009CC
_08142B7C: .4byte sub_08142B80

	thumb_func_start sub_08142B80
sub_08142B80: @ 0x08142B80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142BBC @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142BC0 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142BAE
	ldr r0, _08142BC4 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142BC8 @ =sub_081400BC
	str r0, [r1]
_08142BAE:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142BBC: .4byte 0x000009D8
_08142BC0: .4byte gBldRegs
_08142BC4: .4byte 0x000009CC
_08142BC8: .4byte sub_081400BC

	thumb_func_start sub_08142BCC
sub_08142BCC: @ 0x08142BCC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142BF0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142BE2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142BE2:
	ldr r0, _08142BF4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142BF8 @ =sub_08142BFC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142BF0: .4byte 0x00000BEC
_08142BF4: .4byte 0x000009CC
_08142BF8: .4byte sub_08142BFC

	thumb_func_start sub_08142BFC
sub_08142BFC: @ 0x08142BFC
	ldr r1, _08142C08 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C0C @ =sub_08142C10
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C08: .4byte 0x000009CC
_08142C0C: .4byte sub_08142C10

	thumb_func_start sub_08142C10
sub_08142C10: @ 0x08142C10
	ldr r1, _08142C1C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C20 @ =sub_08140380
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C1C: .4byte 0x000009CC
_08142C20: .4byte sub_08140380

	thumb_func_start sub_08142C24
sub_08142C24: @ 0x08142C24
	ldr r1, _08142C38 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142C3C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C40 @ =sub_08142C44
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C38: .4byte 0x000009D8
_08142C3C: .4byte 0x000009CC
_08142C40: .4byte sub_08142C44

	thumb_func_start sub_08142C44
sub_08142C44: @ 0x08142C44
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142C78 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08142C92
	ldr r1, _08142C7C @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08142C88
	ldr r0, _08142C80 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142C84 @ =sub_081404AC
	str r0, [r1]
	b _08142C92
	.align 2, 0
_08142C78: .4byte 0x000009D8
_08142C7C: .4byte 0x00000BE8
_08142C80: .4byte 0x000009CC
_08142C84: .4byte sub_081404AC
_08142C88:
	ldr r1, _08142C98 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
_08142C92:
	pop {r0}
	bx r0
	.align 2, 0
_08142C98: .4byte gUnk_02038580

	thumb_func_start sub_08142C9C
sub_08142C9C: @ 0x08142C9C
	ldr r1, _08142CB0 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142CB4 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142CB8 @ =sub_0814069C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142CB0: .4byte 0x000009D8
_08142CB4: .4byte 0x000009CC
_08142CB8: .4byte sub_0814069C

	thumb_func_start sub_08142CBC
sub_08142CBC: @ 0x08142CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142CF4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _08142CF8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142CFC @ =sub_081407B4
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142CE8
	ldr r0, _08142D00 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142CE8:
	adds r0, r4, #0
	bl sub_0813AEC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142CF4: .4byte gBldRegs
_08142CF8: .4byte 0x000009CC
_08142CFC: .4byte sub_081407B4
_08142D00: .4byte 0x000002A7

	thumb_func_start sub_08142D04
sub_08142D04: @ 0x08142D04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142D50 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142D54 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142D58 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142D5C @ =sub_0814086C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142D38
	ldr r0, _08142D60 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142D38:
	adds r0, r4, #0
	bl sub_0813AEC8
	ldr r1, _08142D64 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142D50: .4byte gBldRegs
_08142D54: .4byte 0x000009D8
_08142D58: .4byte 0x000009CC
_08142D5C: .4byte sub_0814086C
_08142D60: .4byte 0x000002A7
_08142D64: .4byte 0x00000BDC

	thumb_func_start sub_08142D68
sub_08142D68: @ 0x08142D68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08142DC0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08142DC4 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08142D8A
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_08142D8A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08142D98
	bl sub_08157190
	movs r0, #0
	str r0, [r4, #0xc]
_08142D98:
	adds r0, r4, #0
	bl sub_0813ACA0
	ldr r1, _08142DC8 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802E6C4
	ldr r0, _08142DCC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142DD0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142DD4 @ =sub_08142DD8
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142DC0: .4byte gDispCnt
_08142DC4: .4byte 0x0000FCFF
_08142DC8: .4byte 0x00000BEC
_08142DCC: .4byte 0x000009D8
_08142DD0: .4byte 0x000009CC
_08142DD4: .4byte sub_08142DD8

	thumb_func_start sub_08142DD8
sub_08142DD8: @ 0x08142DD8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08142E00 @ =0x000009D8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142DFA
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08142E04 @ =0x000009CC
	adds r1, r1, r0
	ldr r0, _08142E08 @ =sub_081409AC
	str r0, [r1]
_08142DFA:
	pop {r0}
	bx r0
	.align 2, 0
_08142E00: .4byte 0x000009D8
_08142E04: .4byte 0x000009CC
_08142E08: .4byte sub_081409AC

	thumb_func_start sub_08142E0C
sub_08142E0C: @ 0x08142E0C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08142E40 @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _08142E3A
	adds r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08142E3A
	ldr r0, _08142E44 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142E48 @ =sub_08142E4C
	str r0, [r1]
_08142E3A:
	pop {r0}
	bx r0
	.align 2, 0
_08142E40: .4byte 0x00000BE8
_08142E44: .4byte 0x000009CC
_08142E48: .4byte sub_08142E4C

	thumb_func_start sub_08142E4C
sub_08142E4C: @ 0x08142E4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142E78 @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _08142E7C @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142E80 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142E84 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142E88 @ =sub_08142E8C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142E78: .4byte gUnk_030016A0
_08142E7C: .4byte gBldRegs
_08142E80: .4byte 0x000009D8
_08142E84: .4byte 0x000009CC
_08142E88: .4byte sub_08142E8C

	thumb_func_start sub_08142E8C
sub_08142E8C: @ 0x08142E8C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142EC4 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142EC8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142EBE
	bl m4aMPlayAllStop
	ldr r0, _08142ECC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142ED0 @ =sub_08142ED4
	str r0, [r1]
_08142EBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142EC4: .4byte 0x000009D8
_08142EC8: .4byte gBldRegs
_08142ECC: .4byte 0x000009CC
_08142ED0: .4byte sub_08142ED4

	thumb_func_start sub_08142ED4
sub_08142ED4: @ 0x08142ED4
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142EF8 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142EF2
	ldr r0, _08142EFC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142F00 @ =sub_08142F04
	str r0, [r1]
_08142EF2:
	pop {r0}
	bx r0
	.align 2, 0
_08142EF8: .4byte 0x000009D8
_08142EFC: .4byte 0x000009CC
_08142F00: .4byte sub_08142F04

	thumb_func_start sub_08142F04
sub_08142F04: @ 0x08142F04
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142F28 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142F1A
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142F1A:
	ldr r0, _08142F2C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142F30 @ =sub_08142F34
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142F28: .4byte 0x00000BEC
_08142F2C: .4byte 0x000009CC
_08142F30: .4byte sub_08142F34

	thumb_func_start sub_08142F34
sub_08142F34: @ 0x08142F34
	ldr r1, _08142F40 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F44 @ =sub_08142F48
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F40: .4byte 0x000009CC
_08142F44: .4byte sub_08142F48

	thumb_func_start sub_08142F48
sub_08142F48: @ 0x08142F48
	ldr r1, _08142F54 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F58 @ =sub_08142F5C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F54: .4byte 0x000009CC
_08142F58: .4byte sub_08142F5C

	thumb_func_start sub_08142F5C
sub_08142F5C: @ 0x08142F5C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08142FB0 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _08142FB4 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142FB8 @ =gBgPalette
	ldr r5, _08142FBC @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142FC0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142FC4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142FC8 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	ldr r0, _08142FCC @ =0x00000BE8
	adds r6, r6, r0
	ldr r0, [r6]
	bl sub_08032BD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142FB0: .4byte gBldRegs
_08142FB4: .4byte 0x00007FFF
_08142FB8: .4byte gBgPalette
_08142FBC: .4byte 0x01000100
_08142FC0: .4byte gObjPalette
_08142FC4: .4byte gUnk_03002440
_08142FC8: .4byte gCurGameState
_08142FCC: .4byte 0x00000BE8

	thumb_func_start sub_08142FD0
sub_08142FD0: @ 0x08142FD0
	push {lr}
	adds r2, r0, #0
	ldr r0, _08143000 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142FEE
	ldr r0, _08143004 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08143008 @ =sub_08143010
	str r0, [r1]
_08142FEE:
	ldr r1, _0814300C @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143000: .4byte 0x000009D8
_08143004: .4byte 0x000009CC
_08143008: .4byte sub_08143010
_0814300C: .4byte 0x00000BDC

	thumb_func_start sub_08143010
sub_08143010: @ 0x08143010
	push {lr}
	ldr r1, _08143030 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08143034 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08143038 @ =sub_08140B4C
	str r1, [r2]
	ldr r2, _0814303C @ =0x00000BDC
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143030: .4byte 0x000009D8
_08143034: .4byte 0x000009CC
_08143038: .4byte sub_08140B4C
_0814303C: .4byte 0x00000BDC

	thumb_func_start sub_08143040
sub_08143040: @ 0x08143040
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081430AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081430B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081430B4 @ =sub_08140BE8
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814306C
	ldr r0, _081430B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814306C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814307C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814307C
	ldr r1, _081430BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081430AC: .4byte 0x000009D8
_081430B0: .4byte 0x000009CC
_081430B4: .4byte sub_08140BE8
_081430B8: .4byte 0x000002A7
_081430BC: .4byte 0x00000BDC

	thumb_func_start sub_081430C0
sub_081430C0: @ 0x081430C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814312C @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143130 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08143134 @ =sub_08140CD0
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081430EC
	ldr r0, _08143138 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081430EC:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081430FC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081430FC
	ldr r1, _0814313C @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814312C: .4byte 0x000009D8
_08143130: .4byte 0x000009CC
_08143134: .4byte sub_08140CD0
_08143138: .4byte 0x000002A7
_0814313C: .4byte 0x00000BDC

	thumb_func_start sub_08143140
sub_08143140: @ 0x08143140
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081431AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081431B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081431B4 @ =sub_08141A3C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814316C
	ldr r0, _081431B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814316C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814317C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814317C
	ldr r1, _081431BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081431AC: .4byte 0x000009D8
_081431B0: .4byte 0x000009CC
_081431B4: .4byte sub_08141A3C
_081431B8: .4byte 0x000002A7
_081431BC: .4byte 0x00000BDC

	thumb_func_start sub_081431C0
sub_081431C0: @ 0x081431C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AD2C
	ldr r0, _081431E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081431E8 @ =sub_0813CDE4
	str r0, [r1]
	ldr r1, _081431EC @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081431E4: .4byte 0x000009CC
_081431E8: .4byte sub_0813CDE4
_081431EC: .4byte 0x00000BDC

	thumb_func_start sub_081431F0
sub_081431F0: @ 0x081431F0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08143250 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08143254 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08143258 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814325C @ =sub_08141B78
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08143222:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08143222
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143250: .4byte gBldRegs
_08143254: .4byte 0x000009D8
_08143258: .4byte 0x000009CC
_0814325C: .4byte sub_08141B78

	thumb_func_start sub_08143260
sub_08143260: @ 0x08143260
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08143284 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08143276
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08143276:
	ldr r0, _08143288 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814328C @ =sub_08143290
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143284: .4byte 0x00000BEC
_08143288: .4byte 0x000009CC
_0814328C: .4byte sub_08143290

	thumb_func_start sub_08143290
sub_08143290: @ 0x08143290
	ldr r1, _0814329C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432A0 @ =sub_081432A4
	str r1, [r0]
	bx lr
	.align 2, 0
_0814329C: .4byte 0x000009CC
_081432A0: .4byte sub_081432A4

	thumb_func_start sub_081432A4
sub_081432A4: @ 0x081432A4
	ldr r1, _081432B0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432B4 @ =sub_08141BF8
	str r1, [r0]
	bx lr
	.align 2, 0
_081432B0: .4byte 0x000009CC
_081432B4: .4byte sub_08141BF8

	thumb_func_start sub_081432B8
sub_081432B8: @ 0x081432B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	movs r5, #0
	strb r0, [r4]
	ldr r1, _081432FC @ =0x000009D8
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08143300 @ =gUnk_030016A0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _08143304 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	adds r0, r4, #0
	bl sub_08141CDC
	ldr r1, _08143308 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0814330C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143310 @ =sub_08143314
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081432FC: .4byte 0x000009D8
_08143300: .4byte gUnk_030016A0
_08143304: .4byte gBldRegs
_08143308: .4byte 0x00000BDC
_0814330C: .4byte 0x000009CC
_08143310: .4byte sub_08143314

	thumb_func_start sub_08143314
sub_08143314: @ 0x08143314
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0814335C @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08143360 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x1e
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _08143342
	ldr r0, _08143364 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08143368 @ =sub_08143370
	str r0, [r1]
_08143342:
	adds r0, r6, #0
	bl sub_08141CDC
	ldr r1, _0814336C @ =0x00000BDC
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814335C: .4byte 0x000009D8
_08143360: .4byte gBldRegs
_08143364: .4byte 0x000009CC
_08143368: .4byte sub_08143370
_0814336C: .4byte 0x00000BDC

	thumb_func_start sub_08143370
sub_08143370: @ 0x08143370
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _08143390 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143394 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143398 @ =sub_0814339C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08143390: .4byte 0x000009D8
_08143394: .4byte 0x000009CC
_08143398: .4byte sub_0814339C

	thumb_func_start sub_0814339C
sub_0814339C: @ 0x0814339C
	push {lr}
	adds r2, r0, #0
	ldr r0, _081433C0 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081433BA
	ldr r0, _081433C4 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081433C8 @ =sub_081433CC
	str r0, [r1]
_081433BA:
	pop {r0}
	bx r0
	.align 2, 0
_081433C0: .4byte 0x000009D8
_081433C4: .4byte 0x000009CC
_081433C8: .4byte sub_081433CC

	thumb_func_start sub_081433CC
sub_081433CC: @ 0x081433CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081433F0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081433E2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_081433E2:
	ldr r0, _081433F4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081433F8 @ =sub_081433FC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081433F0: .4byte 0x00000BEC
_081433F4: .4byte 0x000009CC
_081433F8: .4byte sub_081433FC

	thumb_func_start sub_081433FC
sub_081433FC: @ 0x081433FC
	ldr r1, _08143408 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814340C @ =sub_08143410
	str r1, [r0]
	bx lr
	.align 2, 0
_08143408: .4byte 0x000009CC
_0814340C: .4byte sub_08143410

	thumb_func_start sub_08143410
sub_08143410: @ 0x08143410
	ldr r1, _0814341C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08143420 @ =sub_08143424
	str r1, [r0]
	bx lr
	.align 2, 0
_0814341C: .4byte 0x000009CC
_08143420: .4byte sub_08143424

	thumb_func_start sub_08143424
sub_08143424: @ 0x08143424
	push {lr}
	ldr r0, _08143438 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08149CE4
	pop {r0}
	bx r0
	.align 2, 0
_08143438: .4byte gCurGameState

	thumb_func_start sub_0814343C
sub_0814343C: @ 0x0814343C
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08143460 @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143460: .4byte 0x01002000

	thumb_func_start sub_08143464
sub_08143464: @ 0x08143464
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08143490 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08143494 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143490: .4byte 0x000001FF
_08143494: .4byte 0x01000400

	thumb_func_start sub_08143498
sub_08143498: @ 0x08143498
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _081434A6
	movs r0, #1
	b _081434A8
_081434A6:
	movs r0, #0
_081434A8:
	pop {r1}
	bx r1

	thumb_func_start sub_081434AC
sub_081434AC: @ 0x081434AC
	push {r4, r5, r6, lr}
	ldr r1, _081434F0 @ =gObjPalette
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r4, [r0]
	movs r2, #3
	adds r5, r1, #0
	ldr r6, _081434F4 @ =gUnk_03002440
	adds r3, r5, #0
_081434BE:
	adds r1, r2, #0
	adds r1, #0x35
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r0, r2, #0
	adds r0, #0x34
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _081434BE
	adds r0, r5, #0
	adds r0, #0x6a
	strh r4, [r0]
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081434F0: .4byte gObjPalette
_081434F4: .4byte gUnk_03002440

	thumb_func_start sub_081434F8
sub_081434F8: @ 0x081434F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08143530 @ =sub_08145620
	ldr r1, _08143534 @ =0x00000928
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _08143538 @ =sub_08143664
	str r3, [sp]
	movs r3, #0
	bl CreateState
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08143544
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814354C
	.align 2, 0
_08143530: .4byte sub_08145620
_08143534: .4byte 0x00000928
_08143538: .4byte sub_08143664
_0814353C:
	strh r4, [r5, #0x2e]
	b _081435D8
_08143540:
	strh r4, [r5, #0x32]
	b _08143626
_08143544:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814354C:
	adds r5, r0, #0
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143640 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08143644 @ =0x81000494
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08143648 @ =sub_08143DA8
	str r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0814364C @ =0x0000FFFF
	strh r0, [r5, #0x30]
	ldr r0, _08143650 @ =gUnk_0203ADE0
	ldrh r0, [r0]
	strb r0, [r5, #1]
	adds r0, r5, #0
	bl sub_08143730
	bl m4aMPlayAllStop
	movs r0, #0x19
	bl m4aSongNumStart
	movs r4, #0
	ldr r0, _08143654 @ =gUnk_08386A50
	ldr r1, _08143658 @ =gUnk_08386B2A
	mov r8, r1
	ldrh r0, [r0]
	mov ip, r0
	adds r7, r5, #2
	movs r2, #0x37
	adds r2, r2, r5
	mov sl, r2
_0814359A:
	movs r3, #0
	lsls r0, r4, #2
	mov r2, r8
	adds r1, r0, r2
	adds r2, r0, #0
	ldrh r1, [r1]
	cmp ip, r1
	beq _081435C6
	ldr r6, _08143654 @ =gUnk_08386A50
	ldr r0, _08143658 @ =gUnk_08386B2A
	adds r1, r2, r0
_081435B0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081435C6
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r2, [r1]
	cmp r0, r2
	bne _081435B0
_081435C6:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814353C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x29
	bls _0814359A
_081435D8:
	movs r4, #0
	ldr r0, _08143654 @ =gUnk_08386A50
	ldr r1, _0814365C @ =gUnk_08386BD2
	mov sb, r1
	ldrh r0, [r0]
	mov ip, r0
	ldr r2, _08143660 @ =0x00000179
	mov r8, r2
_081435E8:
	movs r3, #0
	lsls r0, r4, #2
	mov r2, sb
	adds r1, r0, r2
	adds r2, r0, #0
	ldrh r1, [r1]
	cmp ip, r1
	beq _08143614
	ldr r6, _08143654 @ =gUnk_08386A50
	ldr r0, _0814365C @ =gUnk_08386BD2
	adds r1, r2, r0
_081435FE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _08143614
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r2, [r1]
	cmp r0, r2
	bne _081435FE
_08143614:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08143540
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	bls _081435E8
_08143626:
	adds r0, r5, #0
	bl sub_08143A90
	mov r1, sl
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143640: .4byte 0x040000D4
_08143644: .4byte 0x81000494
_08143648: .4byte sub_08143DA8
_0814364C: .4byte 0x0000FFFF
_08143650: .4byte gUnk_0203ADE0
_08143654: .4byte gUnk_08386A50
_08143658: .4byte gUnk_08386B2A
_0814365C: .4byte gUnk_08386BD2
_08143660: .4byte 0x00000179

	thumb_func_start sub_08143664
sub_08143664: @ 0x08143664
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814367E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08143686
_0814367E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08143686:
	adds r6, r0, #0
	movs r5, #0
_0814368A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x40
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081436A2
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_081436A2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x38
	bls _0814368A
	movs r5, #0
	ldr r4, _081436D0 @ =gUnk_030036A0
	movs r3, #8
	ldr r2, _081436D4 @ =gUnk_030035E0
	movs r1, #0x14
_081436B6:
	adds r0, r5, r4
	strb r3, [r0]
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _081436B6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081436D0: .4byte gUnk_030036A0
_081436D4: .4byte gUnk_030035E0

	thumb_func_start sub_081436D8
sub_081436D8: @ 0x081436D8
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _081436EE
	movs r0, #0
	b _08143722
_081436EE:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08143728 @ =gBgPalette
	ldrh r4, [r0, #0xc]
	movs r2, #5
	adds r5, r0, #0
	ldr r6, _0814372C @ =gUnk_03002440
	adds r3, r5, #0
_081436FE:
	adds r1, r2, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _081436FE
	strh r4, [r5, #8]
	ldr r0, [r6]
	movs r1, #1
	orrs r0, r1
	str r0, [r6]
	movs r0, #1
_08143722:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08143728: .4byte gBgPalette
_0814372C: .4byte gUnk_03002440

	thumb_func_start sub_08143730
sub_08143730: @ 0x08143730
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #2
	movs r1, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	beq _08143756
_08143742:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bhi _08143756
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r2
	bne _08143742
_08143756:
	adds r1, r6, r1
	movs r0, #1
	strb r0, [r1]
	movs r4, #1
_0814375E:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019E14
	adds r5, r0, #0
	movs r2, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r4, r7
	adds r4, #1
	cmp r0, r1
	beq _08143790
_0814377C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08143790
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _0814377C
_08143790:
	adds r0, r6, r2
	strb r5, [r0]
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0814375E
	movs r0, #0
	bl sub_08019E80
	adds r4, r0, #0
	movs r1, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #5
	cmp r0, r2
	beq _081437C6
_081437B2:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bhi _081437C6
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r2
	bne _081437B2
_081437C6:
	adds r0, r6, r1
	strb r4, [r0]
	movs r4, #0
_081437CC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019E80
	adds r5, r0, #0
	movs r2, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #3
	adds r1, r4, r7
	cmp r0, r1
	beq _081437FC
_081437E8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081437FC
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _081437E8
_081437FC:
	adds r0, r6, r2
	strb r5, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _081437CC
	bl sub_08019F0C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r4, #0
	cmp r4, r5
	bhs _08143854
	ldr r0, _08143898 @ =gUnk_08386A50
	ldrh r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	mov ip, r0
_08143822:
	movs r1, #0
	mov r2, ip
	adds r0, r4, r2
	cmp r7, r0
	beq _08143844
	ldr r3, _08143898 @ =gUnk_08386A50
	adds r2, r0, #0
_08143830:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bhi _08143844
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r2
	bne _08143830
_08143844:
	adds r1, r6, r1
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08143822
_08143854:
	movs r4, #0
_08143856:
	adds r0, r4, #0
	bl sub_08019EEC
	adds r5, r0, #0
	movs r2, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r4, r7
	adds r4, #1
	cmp r0, r1
	beq _08143884
_08143870:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08143884
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _08143870
_08143884:
	adds r0, r6, r2
	strb r5, [r0]
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _08143856
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143898: .4byte gUnk_08386A50

	thumb_func_start sub_0814389C
sub_0814389C: @ 0x0814389C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	adds r0, r2, #2
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _081438B0
	b _081439CA
_081438B0:
	ldr r1, _081438E0 @ =gUnk_08386A50
	lsls r0, r7, #2
	adds r1, r0, r1
	ldrb r5, [r1, #2]
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, #0x40
	adds r6, r2, r0
	cmp r5, #3
	bhi _081438EC
	ldr r3, _081438E4 @ =gUnk_08386838
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldr r0, _081438E8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #4
	adds r1, r1, r3
	ldrh r0, [r1]
	b _081438FC
	.align 2, 0
_081438E0: .4byte gUnk_08386A50
_081438E4: .4byte gUnk_08386838
_081438E8: .4byte gUnk_08D60A80
_081438EC:
	ldr r2, _08143928 @ =gUnk_083868C8
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
_081438FC:
	bl sub_081570B0
	str r0, [r6]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	cmp r5, #3
	bhi _08143934
	ldr r3, _0814392C @ =gUnk_08386838
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldr r0, _08143930 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08143942
	.align 2, 0
_08143928: .4byte gUnk_083868C8
_0814392C: .4byte gUnk_08386838
_08143930: .4byte gUnk_08D60A80
_08143934:
	ldr r2, _08143964 @ =gUnk_083868C8
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_08143942:
	strh r0, [r6, #0xc]
	cmp r5, #3
	bhi _08143970
	ldr r3, _08143968 @ =gUnk_08386838
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldr r0, _0814396C @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08143980
	.align 2, 0
_08143964: .4byte gUnk_083868C8
_08143968: .4byte gUnk_08386838
_0814396C: .4byte gUnk_08D60A80
_08143970:
	ldr r2, _081439D0 @ =gUnk_083868C8
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_08143980:
	movs r4, #0
	strb r0, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	ldr r0, _081439D4 @ =gUnk_08386A12
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r6, #0x1f]
	adds r0, r7, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x16
	muls r0, r1, r0
	adds r0, #0x15
	strh r0, [r6, #0x10]
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x23
	strh r1, [r6, #0x12]
	str r4, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
_081439CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081439D0: .4byte gUnk_083868C8
_081439D4: .4byte gUnk_08386A12

	thumb_func_start sub_081439D8
sub_081439D8: @ 0x081439D8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r5, _08143A30 @ =gUnk_083868C8
	adds r0, r5, #0
	adds r0, #0xe2
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r4]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0xde
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldr r0, _08143A34 @ =gUnk_08386A12
	adds r0, #0x29
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	movs r0, #0x15
	strh r0, [r4, #0x10]
	movs r0, #0x23
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143A30: .4byte gUnk_083868C8
_08143A34: .4byte gUnk_08386A12

	thumb_func_start sub_08143A38
sub_08143A38: @ 0x08143A38
	push {r4, r5, lr}
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r5, r0, r1
	adds r1, r0, #0
	adds r1, #0x2b
	adds r4, r0, #0
	adds r4, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _08143A86
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x16
	muls r0, r1, r0
	adds r0, #0x15
	strh r0, [r5, #0x10]
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x23
	strh r1, [r5, #0x12]
	movs r0, #1
	b _08143A88
_08143A86:
	movs r0, #0
_08143A88:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08143A90
sub_08143A90: @ 0x08143A90
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #2
	movs r3, #0
	movs r4, #0
	movs r5, #1
	ldr r7, _08143AD4 @ =gUnk_08386A50
_08143A9C:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08143AE6
	lsls r0, r4, #2
	adds r2, r0, r7
	ldrh r0, [r2]
	lsrs r0, r0, #8
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08143AE6
	ldr r1, _08143AD8 @ =0xFFFFFBFA
	adds r0, r1, #0
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08143ADC
	movs r0, #2
	orrs r3, r0
	adds r0, r3, #0
	ands r0, r5
	cmp r0, #0
	beq _08143AE6
	b _08143AF0
	.align 2, 0
_08143AD4: .4byte gUnk_08386A50
_08143AD8: .4byte 0xFFFFFBFA
_08143ADC:
	orrs r3, r5
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08143AF0
_08143AE6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08143A9C
_08143AF0:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08143AF8
sub_08143AF8: @ 0x08143AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	adds r6, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x28
	bl memset
	add r0, sp, #0x28
	mov r8, r0
	ldr r1, _08143C28 @ =gUnk_083871B8
	movs r2, #0x20
	bl memcpy
	add r5, sp, #0x48
	add r4, sp, #0x58
	movs r0, #1
	strb r0, [r4]
	mov r0, sp
	adds r0, #0x59
	movs r1, #0x39
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, sp
	adds r1, #0x5b
	movs r0, #0x3a
	strb r0, [r1]
	add r1, sp, #0x5c
	movs r0, #0x35
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x36
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x37
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x38
	strb r0, [r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0x64
	bl __divsi3
	adds r0, #0x2a
	add r1, sp, #0x60
	strb r0, [r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x61
	strb r0, [r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #0x64
	bl __divsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x63
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	add r1, sp, #0x64
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x65
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl memcpy
	movs r7, #0
	mov r0, sp
	adds r0, #0x29
	str r0, [sp, #0x68]
	ldr r1, _08143C2C @ =gUnk_083868C8
	mov sl, r1
	ldr r0, _08143C30 @ =gUnk_08D60A80
	mov r8, r0
	movs r1, #0
	mov sb, r1
_08143BF6:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r6, r0
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x48
	ldrb r5, [r0]
	cmp r5, #3
	bhi _08143C38
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	mov r1, r8
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _08143C34 @ =gUnk_0838683C
	b _08143C42
	.align 2, 0
_08143C28: .4byte gUnk_083871B8
_08143C2C: .4byte gUnk_083868C8
_08143C30: .4byte gUnk_08D60A80
_08143C34: .4byte gUnk_0838683C
_08143C38:
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08143C70 @ =gUnk_083868CC
_08143C42:
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	cmp r5, #3
	bhi _08143C78
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	mov r1, r8
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _08143C74 @ =gUnk_08386838
	adds r0, r0, r1
	b _08143C82
	.align 2, 0
_08143C70: .4byte gUnk_083868CC
_08143C74: .4byte gUnk_08386838
_08143C78:
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
_08143C82:
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	cmp r5, #3
	bhi _08143CA4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	mov r1, r8
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _08143CA0 @ =gUnk_0838683A
	b _08143CAE
	.align 2, 0
_08143CA0: .4byte gUnk_0838683A
_08143CA4:
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08143D34 @ =gUnk_083868CA
_08143CAE:
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	mov r0, sb
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldr r0, _08143D38 @ =gUnk_08386A12
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	lsls r1, r7, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r0, [r0]
	strh r0, [r4, #0x10]
	ldr r0, [sp, #0x68]
	adds r1, r0, r1
	ldrb r0, [r1]
	strh r0, [r4, #0x12]
	mov r1, sb
	str r1, [r4, #8]
	cmp r7, #2
	bne _08143CE8
	movs r0, #0xb
	strb r0, [r4, #0x1f]
_08143CE8:
	cmp r7, #3
	bne _08143CFC
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
_08143CFC:
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bhi _08143D0E
	b _08143BF6
_08143D0E:
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r5, sp
	movs r1, #1
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	ldrb r4, [r6, #1]
	cmp r1, r0
	bne _08143D40
	ldr r0, _08143D3C @ =gUnk_08386AF0
	ldrh r2, [r0]
	adds r3, r0, #0
	b _08143D4E
	.align 2, 0
_08143D34: .4byte gUnk_083868CA
_08143D38: .4byte gUnk_08386A12
_08143D3C: .4byte gUnk_08386AF0
_08143D40:
	ldr r1, _08143D60 @ =gUnk_08386AF0
	movs r0, #1
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r3, r1, #0
_08143D4E:
	strh r2, [r5, #0xc]
	mov r5, sp
	lsls r1, r4, #0x18
	movs r0, #0xff
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08143D64
	ldrb r0, [r3, #2]
	b _08143D70
	.align 2, 0
_08143D60: .4byte gUnk_08386AF0
_08143D64:
	movs r0, #1
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	adds r1, r3, #2
	adds r0, r0, r1
	ldrb r0, [r0]
_08143D70:
	movs r2, #0
	strb r0, [r5, #0x1a]
	mov r0, sp
	strh r2, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xa
	strb r0, [r1, #0x1f]
	mov r0, sp
	ldr r1, _08143DA4 @ =0x0000FFC0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r2, [sp, #8]
	bl sub_08155128
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143DA4: .4byte 0x0000FFC0

	thumb_func_start sub_08143DA8
sub_08143DA8: @ 0x08143DA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	ldr r1, _08143E38 @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08143E3C @ =gUnk_03002540
	ldr r0, _08143E40 @ =0x06010000
	str r0, [r1]
	mov r0, sp
	ldr r1, _08143E44 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08143E48 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08143E4C @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _08143E50 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _08143E54 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _08143E58 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08143E5C @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	ldr r0, _08143E60 @ =sub_0814565C
	mov ip, r0
	ldr r7, _08143E64 @ =gBgCntRegs
	ldr r6, _08143E68 @ =gUnk_0838665C
	movs r5, #0x1f
_08143E08:
	lsls r2, r4, #1
	adds r2, r2, r7
	lsls r3, r4, #2
	adds r0, r3, r6
	ldr r1, [r0]
	subs r0, r5, r4
	lsls r0, r0, #8
	orrs r1, r0
	orrs r1, r3
	strh r1, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08143E08
	mov r1, ip
	mov r2, r8
	str r1, [r2, #0x38]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143E38: .4byte gUnk_03002488
_08143E3C: .4byte gUnk_03002540
_08143E40: .4byte 0x06010000
_08143E44: .4byte 0x00007FFF
_08143E48: .4byte 0x040000D4
_08143E4C: .4byte gBgPalette
_08143E50: .4byte 0x81000100
_08143E54: .4byte gObjPalette
_08143E58: .4byte gUnk_03002440
_08143E5C: .4byte gDispCnt
_08143E60: .4byte sub_0814565C
_08143E64: .4byte gBgCntRegs
_08143E68: .4byte gUnk_0838665C

	thumb_func_start sub_08143E6C
sub_08143E6C: @ 0x08143E6C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _08143ED4 @ =gUnk_08386664
	ldr r0, _08143ED8 @ =gUnk_08D60A80
	ldrh r1, [r0]
	movs r0, #0x4e
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _08143EDC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r5, [r1, #0x18]
	ldrh r4, [r1, #2]
	movs r2, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r2, r3
	ldr r3, _08143EE0 @ =0x0600F800
	adds r6, r2, r3
	ldr r3, _08143EE4 @ =gBgScrollRegs
	strh r2, [r3]
	strh r2, [r3, #2]
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _08143ECA
	ldr r2, _08143EE8 @ =0x040000D4
	ldr r3, _08143EEC @ =0x80000020
_08143EAC:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r6, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _08143EAC
_08143ECA:
	ldr r0, _08143EF0 @ =sub_08143EF4
	str r0, [r7, #0x38]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143ED4: .4byte gUnk_08386664
_08143ED8: .4byte gUnk_08D60A80
_08143EDC: .4byte gUnk_082D7850
_08143EE0: .4byte 0x0600F800
_08143EE4: .4byte gBgScrollRegs
_08143EE8: .4byte 0x040000D4
_08143EEC: .4byte 0x80000020
_08143EF0: .4byte sub_08143EF4

	thumb_func_start sub_08143EF4
sub_08143EF4: @ 0x08143EF4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r3, _08143F60 @ =gUnk_08386664
	ldr r0, _08143F64 @ =gUnk_08386A50
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	ldr r1, _08143F68 @ =gUnk_08D60A80
	ldrh r2, [r1]
	movs r1, #0x4e
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _08143F6C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r5, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r6, _08143F70 @ =0x0600F340
	ldr r2, _08143F74 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _08143F78 @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _08143F54
	ldr r2, _08143F7C @ =0x040000D4
	ldr r3, _08143F80 @ =0x80000020
_08143F36:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r6, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _08143F36
_08143F54:
	ldr r0, _08143F84 @ =sub_08145718
	str r0, [r7, #0x38]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143F60: .4byte gUnk_08386664
_08143F64: .4byte gUnk_08386A50
_08143F68: .4byte gUnk_08D60A80
_08143F6C: .4byte gUnk_082D7850
_08143F70: .4byte 0x0600F340
_08143F74: .4byte gBgScrollRegs
_08143F78: .4byte 0x06004000
_08143F7C: .4byte 0x040000D4
_08143F80: .4byte 0x80000020
_08143F84: .4byte sub_08145718

	thumb_func_start sub_08143F88
sub_08143F88: @ 0x08143F88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r1, #0
	ldr r0, _08144044 @ =gUnk_08386838
	mov ip, r0
	ldr r7, _08144048 @ =gUnk_08D60A80
	ldr r2, _0814404C @ =gUnk_08386A12
	mov r8, r2
	ldr r6, _08144050 @ =gUnk_030036A0
	movs r4, #5
	ldr r3, _08144054 @ =gUnk_030035E0
	movs r2, #0xa
_08143FA4:
	adds r0, r1, r6
	strb r4, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08143FA4
	adds r1, r5, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r2, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	mov r2, ip
	adds r2, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r2, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	mov r2, ip
	adds r2, #8
	adds r1, r1, r2
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	mov r2, r8
	ldrb r1, [r2, #1]
	strb r1, [r0, #0x1f]
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08144438
	ldr r0, _08144058 @ =sub_0814405C
	str r0, [r5, #0x38]
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_0814400C:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144022
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144022:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _0814400C
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144044: .4byte gUnk_08386838
_08144048: .4byte gUnk_08D60A80
_0814404C: .4byte gUnk_08386A12
_08144050: .4byte gUnk_030036A0
_08144054: .4byte gUnk_030035E0
_08144058: .4byte sub_0814405C

	thumb_func_start sub_0814405C
sub_0814405C: @ 0x0814405C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_081447E0
	cmp r0, #0
	bne _081440B6
	ldr r0, _0814408C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08144098
	ldr r0, _08144090 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08144094 @ =sub_08145848
	str r0, [r4, #0x38]
	b _081440B6
	.align 2, 0
_0814408C: .4byte gPressedKeys
_08144090: .4byte 0x0000021F
_08144094: .4byte sub_08145848
_08144098:
	adds r0, r4, #0
	bl sub_08144238
	adds r0, r4, #0
	bl sub_08143A38
	adds r0, r4, #0
	bl sub_081443D8
	adds r0, r4, #0
	bl sub_08144438
	adds r0, r4, #0
	bl sub_08144304
_081440B6:
	adds r0, r4, #0
	bl sub_081445BC
	movs r5, #0
	adds r6, r4, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r4, r0
_081440C6:
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _081440DC
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r4, r0
	bl sub_0815604C
_081440DC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bls _081440C6
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081440F8
sub_081440F8: @ 0x081440F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x2c
	movs r5, #0
	strb r5, [r0]
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #1
	strb r0, [r1]
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r3, _08144194 @ =gUnk_08386838
	ldr r4, _08144198 @ =gUnk_08D60A80
	ldrh r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r2, r3, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r3, #8
	adds r1, r1, r3
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	ldr r1, _0814419C @ =gUnk_08386A12
	ldrb r1, [r1, #1]
	strb r1, [r0, #0x1f]
	bl sub_08155128
	adds r0, r6, #0
	bl sub_08144510
	adds r0, r6, #0
	bl sub_081459EC
	strh r5, [r6, #0x3c]
	ldr r0, _081441A0 @ =sub_081441A8
	str r0, [r6, #0x38]
	ldr r0, _081441A4 @ =0x0000073B
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
_0814415A:
	adds r0, r6, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144172
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_08144172:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _0814415A
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08144194: .4byte gUnk_08386838
_08144198: .4byte gUnk_08D60A80
_0814419C: .4byte gUnk_08386A12
_081441A0: .4byte sub_081441A8
_081441A4: .4byte 0x0000073B

	thumb_func_start sub_081441A8
sub_081441A8: @ 0x081441A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _081441C6
	ldr r0, _0814422C @ =gUnk_0203ADE0
	movs r1, #1
	ldrsb r1, [r5, r1]
	strh r1, [r0]
	ldr r0, _08144230 @ =sub_08143F88
	str r0, [r5, #0x38]
_081441C6:
	adds r0, r5, #0
	bl sub_08144718
	adds r0, r5, #0
	bl sub_081459FC
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081441EA
	ldr r0, _08144234 @ =0x0000073B
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081441EA:
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_081441FA:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144210
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144210:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081441FA
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814422C: .4byte gUnk_0203ADE0
_08144230: .4byte sub_08143F88
_08144234: .4byte 0x0000073B

	thumb_func_start sub_08144238
sub_08144238: @ 0x08144238
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x2a
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _081442F4 @ =gUnk_03002EB8
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08144276
	lsls r0, r3, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _08144276
	movs r3, #3
_08144276:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08144292
	lsls r0, r3, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08144292
	movs r3, #0
_08144292:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _081442AC
	lsls r0, r5, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _081442AC
	movs r5, #9
_081442AC:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081442C8
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _081442C8
	movs r5, #0
_081442C8:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r1, r6, #0
	adds r1, #0x2a
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	beq _081442FC
	strb r2, [r1]
	ldr r0, _081442F8 @ =0x0000021D
	bl m4aSongNumStart
	movs r0, #1
	b _081442FE
	.align 2, 0
_081442F4: .4byte gUnk_03002EB8
_081442F8: .4byte 0x0000021D
_081442FC:
	movs r0, #0
_081442FE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08144304
sub_08144304: @ 0x08144304
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r0, #0x2b
	adds r3, r2, #0
	adds r3, #0x2a
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _081443C2
	adds r4, r0, #0
	adds r0, r2, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	cmp r1, #0
	beq _081443B0
	ldr r3, _0814438C @ =gUnk_08386664
	ldr r1, _08144390 @ =gUnk_08386A50
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	ldr r1, _08144394 @ =gUnk_08D60A80
	ldrh r2, [r1]
	movs r1, #0x4e
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _08144398 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r5, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r6, _0814439C @ =0x0600F340
	ldr r2, _081443A0 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _081443A4 @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _081443C2
	ldr r2, _081443A8 @ =0x040000D4
	ldr r3, _081443AC @ =0x80000020
_0814436A:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r6, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _0814436A
	b _081443C2
	.align 2, 0
_0814438C: .4byte gUnk_08386664
_08144390: .4byte gUnk_08386A50
_08144394: .4byte gUnk_08D60A80
_08144398: .4byte gUnk_082D7850
_0814439C: .4byte 0x0600F340
_081443A0: .4byte gBgScrollRegs
_081443A4: .4byte 0x06004000
_081443A8: .4byte 0x040000D4
_081443AC: .4byte 0x80000020
_081443B0:
	mov r0, sp
	strh r1, [r0]
	ldr r1, _081443CC @ =0x040000D4
	str r0, [r1]
	ldr r0, _081443D0 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _081443D4 @ =0x81002000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_081443C2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081443CC: .4byte 0x040000D4
_081443D0: .4byte 0x06004000
_081443D4: .4byte 0x81002000

	thumb_func_start sub_081443D8
sub_081443D8: @ 0x081443D8
	push {lr}
	adds r3, r0, #0
	ldr r1, _08144408 @ =gUnk_08386A50
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r2, r2, #8
	lsrs r0, r0, #8
	cmp r2, r0
	bne _0814440C
	movs r0, #0
	b _08144434
	.align 2, 0
_08144408: .4byte gUnk_08386A50
_0814440C:
	cmp r2, #1
	beq _08144416
	cmp r2, #0x10
	beq _08144424
	b _08144432
_08144416:
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r3, r0
	movs r0, #0x98
	strh r0, [r1, #0x10]
	movs r0, #0x8a
	b _08144430
_08144424:
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r3, r0
	movs r0, #0xb4
	strh r0, [r1, #0x10]
	movs r0, #0x79
_08144430:
	strh r0, [r1, #0x12]
_08144432:
	movs r0, #1
_08144434:
	pop {r1}
	bx r1

	thumb_func_start sub_08144438
sub_08144438: @ 0x08144438
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x28
	bl memset
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r2, r0, #0
	ldr r1, _0814448C @ =gUnk_08386A50
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r4, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144486
	lsrs r0, r1, #8
	cmp r0, #1
	bne _08144486
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r2, r0
	beq _08144486
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	adds r4, r0, #0
	cmp r2, #0
	bge _08144490
_08144486:
	movs r0, #0
	b _08144502
	.align 2, 0
_0814448C: .4byte gUnk_08386A50
_08144490:
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r3, sp
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _081444B4
	ldr r0, _081444B0 @ =gUnk_08386AF0
	ldrh r2, [r0]
	adds r1, r0, #0
	b _081444BC
	.align 2, 0
_081444B0: .4byte gUnk_08386AF0
_081444B4:
	ldr r1, _081444D0 @ =gUnk_08386AF0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r2, [r0]
_081444BC:
	strh r2, [r3, #0xc]
	mov r3, sp
	asrs r2, r4, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _081444D4
	ldrb r0, [r1, #2]
	b _081444DC
	.align 2, 0
_081444D0: .4byte gUnk_08386AF0
_081444D4:
	lsls r0, r2, #2
	adds r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
_081444DC:
	movs r2, #0
	strb r0, [r3, #0x1a]
	mov r0, sp
	strh r2, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xb
	strb r0, [r1, #0x1f]
	mov r0, sp
	ldr r1, _0814450C @ =0x0000FFC0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r2, [sp, #8]
	bl sub_08155128
	movs r0, #1
_08144502:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0814450C: .4byte 0x0000FFC0

	thumb_func_start sub_08144510
sub_08144510: @ 0x08144510
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x28
	bl memset
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	ldr r1, _08144558 @ =gUnk_08386A50
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0
	strb r3, [r4, #1]
	str r0, [sp]
	mov r1, sp
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r4, sp
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08144560
	ldr r0, _0814455C @ =gUnk_08386AF0
	ldrh r2, [r0]
	adds r1, r0, #0
	b _08144568
	.align 2, 0
_08144558: .4byte gUnk_08386A50
_0814455C: .4byte gUnk_08386AF0
_08144560:
	ldr r1, _0814457C @ =gUnk_08386AF0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r2, [r0]
_08144568:
	strh r2, [r4, #0xc]
	mov r5, sp
	lsls r0, r3, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08144580
	ldrb r0, [r1, #2]
	b _08144588
	.align 2, 0
_0814457C: .4byte gUnk_08386AF0
_08144580:
	lsls r0, r4, #2
	adds r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
_08144588:
	movs r2, #0
	strb r0, [r5, #0x1a]
	mov r0, sp
	strh r2, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xa
	strb r0, [r1, #0x1f]
	mov r0, sp
	ldr r1, _081445B8 @ =0x0000FFC0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r2, [sp, #8]
	bl sub_08155128
	movs r0, #1
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_081445B8: .4byte 0x0000FFC0

	thumb_func_start sub_081445BC
sub_081445BC: @ 0x081445BC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _08144644 @ =gUnk_08386A50
	adds r1, r2, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsrs r1, r1, #8
	adds r3, r0, #0
	cmp r1, #1
	beq _081445DE
	cmp r1, #0x10
	bne _08144666
_081445DE:
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r1, r1, #8
	lsrs r0, r0, #8
	cmp r1, r0
	beq _08144654
	adds r1, r2, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r5, r2, r0
	ldr r2, _08144648 @ =gUnk_08386838
	ldr r3, _0814464C @ =gUnk_08D60A80
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r0, _08144650 @ =gUnk_08386A12
	ldrb r0, [r0, #1]
	b _08144700
	.align 2, 0
_08144644: .4byte gUnk_08386A50
_08144648: .4byte gUnk_08386838
_0814464C: .4byte gUnk_08D60A80
_08144650: .4byte gUnk_08386A12
_08144654:
	adds r1, r2, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0814466A
_08144666:
	movs r0, #0
	b _0814470A
_0814466A:
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	adds r3, r2, #0
	adds r3, #0x2d
	ldrb r0, [r3]
	cmp r0, #0
	bne _0814467C
	movs r1, #1
_0814467C:
	strb r1, [r3]
	adds r4, r1, #0
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r5, r2, r0
	cmp r4, #3
	bhi _081446AC
	ldr r3, _081446A4 @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _081446A8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _081446BA
	.align 2, 0
_081446A4: .4byte gUnk_08386838
_081446A8: .4byte gUnk_08D60A80
_081446AC:
	ldr r2, _081446DC @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_081446BA:
	strh r0, [r5, #0xc]
	cmp r4, #3
	bhi _081446E8
	ldr r3, _081446E0 @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _081446E4 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrb r0, [r1]
	b _081446F8
	.align 2, 0
_081446DC: .4byte gUnk_083868C8
_081446E0: .4byte gUnk_08386838
_081446E4: .4byte gUnk_08D60A80
_081446E8:
	ldr r2, _08144710 @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_081446F8:
	strb r0, [r5, #0x1a]
	ldr r0, _08144714 @ =gUnk_08386A12
	adds r0, r4, r0
	ldrb r0, [r0]
_08144700:
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #1
_0814470A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08144710: .4byte gUnk_083868C8
_08144714: .4byte gUnk_08386A12

	thumb_func_start sub_08144718
sub_08144718: @ 0x08144718
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08144732
	movs r0, #0
	b _081447D2
_08144732:
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	adds r2, r3, #0
	adds r2, #0x2d
	ldrb r0, [r2]
	cmp r0, #0
	bne _08144744
	movs r1, #1
_08144744:
	strb r1, [r2]
	adds r4, r1, #0
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r5, r3, r0
	cmp r4, #3
	bhi _08144774
	ldr r3, _0814476C @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _08144770 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08144782
	.align 2, 0
_0814476C: .4byte gUnk_08386838
_08144770: .4byte gUnk_08D60A80
_08144774:
	ldr r2, _081447A4 @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_08144782:
	strh r0, [r5, #0xc]
	cmp r4, #3
	bhi _081447B0
	ldr r3, _081447A8 @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _081447AC @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrb r0, [r1]
	b _081447C0
	.align 2, 0
_081447A4: .4byte gUnk_083868C8
_081447A8: .4byte gUnk_08386838
_081447AC: .4byte gUnk_08D60A80
_081447B0:
	ldr r2, _081447D8 @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_081447C0:
	strb r0, [r5, #0x1a]
	ldr r0, _081447DC @ =gUnk_08386A12
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #1
_081447D2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_081447D8: .4byte gUnk_083868C8
_081447DC: .4byte gUnk_08386A12

	thumb_func_start sub_081447E0
sub_081447E0: @ 0x081447E0
	push {lr}
	adds r3, r0, #0
	ldr r0, _08144818 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08144814
	adds r0, r3, #0
	adds r0, #0x2a
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r3, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144814
	ldr r1, _0814481C @ =gUnk_08386A50
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r1, r0, #8
	cmp r1, #1
	beq _08144820
	cmp r1, #0x10
	beq _08144840
_08144814:
	movs r0, #0
	b _08144856
	.align 2, 0
_08144818: .4byte gPressedKeys
_0814481C: .4byte gUnk_08386A50
_08144820:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #1
	movs r1, #1
	ldrsb r1, [r3, r1]
	cmp r0, r1
	beq _08144814
	ldr r0, _08144838 @ =sub_081440F8
	str r0, [r3, #0x38]
	ldr r0, _0814483C @ =0x00000223
	b _08144850
	.align 2, 0
_08144838: .4byte sub_081440F8
_0814483C: .4byte 0x00000223
_08144840:
	adds r0, r3, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144814
	ldr r0, _0814485C @ =sub_08144864
	str r0, [r3, #0x38]
	ldr r0, _08144860 @ =0x0000021E
_08144850:
	bl m4aSongNumStart
	movs r0, #1
_08144856:
	pop {r1}
	bx r1
	.align 2, 0
_0814485C: .4byte sub_08144864
_08144860: .4byte 0x0000021E

	thumb_func_start sub_08144864
sub_08144864: @ 0x08144864
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x19
	bl m4aSongNumStop
	ldr r0, _08144984 @ =0x0000FFFF
	strh r0, [r5, #0x30]
	ldr r1, _08144988 @ =gUnk_08386664
	ldr r0, _0814498C @ =gUnk_08D60A80
	ldrh r2, [r0]
	movs r0, #0x4e
	muls r0, r2, r0
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08144990 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r7, _08144994 @ =0x0600F340
	ldr r2, _08144998 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _0814499C @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _081448D0
	ldr r2, _081449A0 @ =0x040000D4
	ldr r3, _081449A4 @ =0x80000020
_081448B2:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r7, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _081448B2
_081448D0:
	movs r1, #0
	adds r7, r5, #0
	adds r7, #0x37
	movs r0, #0x36
	adds r0, r0, r5
	mov r8, r0
	adds r3, r5, #2
	mov sb, r3
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r0, r0, r5
	mov sl, r0
	ldr r6, _081449A8 @ =gUnk_030036A0
	movs r4, #2
	ldr r3, _081449AC @ =gUnk_030035E0
	movs r2, #0xa
_081448F0:
	adds r0, r1, r6
	strb r4, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _081448F0
	adds r4, r7, #0
	ldrb r1, [r4]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08144936
	ldr r3, _081449B0 @ =0x00000838
	adds r1, r5, r3
	ldr r2, _081449B4 @ =gUnk_083868C8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, _081449B8 @ =gUnk_08386A12
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_08144936:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08144968
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r2, _081449B4 @ =gUnk_083868C8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, _081449B8 @ =gUnk_08386A12
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_08144968:
	ldrb r1, [r7]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08144976
	mov r0, r8
	strb r6, [r0]
_08144976:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _081449C0
	ldr r0, _081449BC @ =sub_08145A50
	b _081449C6
	.align 2, 0
_08144984: .4byte 0x0000FFFF
_08144988: .4byte gUnk_08386664
_0814498C: .4byte gUnk_08D60A80
_08144990: .4byte gUnk_082D7850
_08144994: .4byte 0x0600F340
_08144998: .4byte gBgScrollRegs
_0814499C: .4byte 0x06004000
_081449A0: .4byte 0x040000D4
_081449A4: .4byte 0x80000020
_081449A8: .4byte gUnk_030036A0
_081449AC: .4byte gUnk_030035E0
_081449B0: .4byte 0x00000838
_081449B4: .4byte gUnk_083868C8
_081449B8: .4byte gUnk_08386A12
_081449BC: .4byte sub_08145A50
_081449C0:
	cmp r0, #1
	bne _081449C8
	ldr r0, _08144A08 @ =sub_08145AA8
_081449C6:
	str r0, [r5, #0x38]
_081449C8:
	movs r4, #0
_081449CA:
	mov r3, sb
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081449E2
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_081449E2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081449CA
	mov r0, sl
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144A08: .4byte sub_08145AA8

	thumb_func_start sub_08144A0C
sub_08144A0C: @ 0x08144A0C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08144C1C
	cmp r0, #0
	beq _08144A1E
	adds r0, r5, #0
	bl sub_0814514C
_08144A1E:
	adds r0, r5, #0
	bl sub_08145490
	ldr r2, _08144A98 @ =gPressedKeys
	ldrh r1, [r2]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144A36
	ldr r0, _08144A9C @ =sub_08144B38
	str r0, [r5, #0x38]
_08144A36:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08144A5A
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144A5A
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08144AA0 @ =sub_08145AA8
	str r0, [r5, #0x38]
_08144A5A:
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_08144A64:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144A7A
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144A7A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144A64
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144A98: .4byte gPressedKeys
_08144A9C: .4byte sub_08144B38
_08144AA0: .4byte sub_08145AA8

	thumb_func_start sub_08144AA4
sub_08144AA4: @ 0x08144AA4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08144EB4
	cmp r0, #0
	beq _08144AB6
	adds r0, r5, #0
	bl sub_0814514C
_08144AB6:
	adds r0, r5, #0
	bl sub_08145574
	ldr r2, _08144B2C @ =gPressedKeys
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08144ACC
	ldr r0, _08144B30 @ =sub_08144B38
	str r0, [r5, #0x38]
_08144ACC:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08144AF0
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08144AF0
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08144B34 @ =sub_08145A50
	str r0, [r5, #0x38]
_08144AF0:
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_08144AFA:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144B10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144B10:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144AFA
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144B2C: .4byte gPressedKeys
_08144B30: .4byte sub_08144B38
_08144B34: .4byte sub_08145A50

	thumb_func_start sub_08144B38
sub_08144B38: @ 0x08144B38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _08144BF0 @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #0x19
	bl m4aSongNumStart
	ldr r1, _08144BF4 @ =gUnk_08386664
	ldr r0, _08144BF8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	movs r0, #0x4e
	muls r0, r2, r0
	adds r1, #0x36
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08144BFC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r7, _08144C00 @ =0x0600F340
	ldr r2, _08144C04 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _08144C08 @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _08144BA2
	ldr r2, _08144C0C @ =0x040000D4
	ldr r3, _08144C10 @ =0x80000020
_08144B84:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r7, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _08144B84
_08144BA2:
	movs r1, #0
	ldr r4, _08144C14 @ =sub_08143F88
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
	ldr r3, _08144C18 @ =gUnk_030036A0
	movs r2, #5
_08144BB2:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08144BB2
	str r4, [r5, #0x38]
	movs r4, #0
_08144BC4:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144BDA
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144BDA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144BC4
	adds r0, r7, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144BF0: .4byte 0x0000021F
_08144BF4: .4byte gUnk_08386664
_08144BF8: .4byte gUnk_08D60A80
_08144BFC: .4byte gUnk_082D7850
_08144C00: .4byte 0x0600F340
_08144C04: .4byte gBgScrollRegs
_08144C08: .4byte 0x06004000
_08144C0C: .4byte 0x040000D4
_08144C10: .4byte 0x80000020
_08144C14: .4byte sub_08143F88
_08144C18: .4byte gUnk_030036A0

	thumb_func_start sub_08144C1C
sub_08144C1C: @ 0x08144C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldrh r4, [r0, #0x2e]
	adds r6, r4, #0
	movs r0, #0x2a
	mov ip, r0
	movs r5, #0
	ldr r2, _08144CA0 @ =gUnk_08386A50
	ldr r3, _08144CA4 @ =gUnk_08386B28
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r3, #2
	adds r1, r0, r1
	ldrh r0, [r2]
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08144CA8 @ =gPressedKeys
	mov sb, r2
	ldrh r3, [r1]
	cmp r0, r3
	beq _08144C66
	adds r2, r7, #0
_08144C50:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08144C66
	lsls r0, r5, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	cmp r0, r3
	bne _08144C50
_08144C66:
	mov r0, sl
	adds r0, #2
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08144D20
	mov r5, sb
	ldrh r2, [r5]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144CAC
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144C9A
	b _08144E90
_08144C9A:
	movs r4, #0
	b _08144E90
	.align 2, 0
_08144CA0: .4byte gUnk_08386A50
_08144CA4: .4byte gUnk_08386B28
_08144CA8: .4byte gPressedKeys
_08144CAC:
	ldr r0, _08144CD4 @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144CD8
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144CD0
	b _08144E90
_08144CD0:
	b _08144E3C
	.align 2, 0
_08144CD4: .4byte gUnk_03002EB8
_08144CD8:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144D00
	lsls r0, r4, #0x10
	ldr r3, _08144CFC @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	lsls r6, r6, #0x10
	cmp r0, #0
	blt _08144CF2
	b _08144E90
_08144CF2:
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08144E90
	.align 2, 0
_08144CFC: .4byte 0xFFFF0000
_08144D00:
	adds r0, r3, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	bne _08144D0C
	b _08144E90
_08144D0C:
	lsls r0, r4, #0x10
	ldr r5, _08144D1C @ =0xFFFF0000
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	cmp r0, #0
	blt _08144D1A
	b _08144E90
_08144D1A:
	b _08144C9A
	.align 2, 0
_08144D1C: .4byte 0xFFFF0000
_08144D20:
	mov r0, sb
	ldrh r5, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08144D7E
	lsls r6, r6, #0x10
	b _08144D48
_08144D32:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	ble _08144D48
	movs r4, #0
_08144D48:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144D74
	mov sb, r7
_08144D5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144D74
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144D5E
_08144D74:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144D32
	b _08144E90
_08144D7E:
	ldr r0, _08144D90 @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08144DDE
	lsls r6, r6, #0x10
	b _08144DA8
	.align 2, 0
_08144D90: .4byte gUnk_03002EB8
_08144D94:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	bgt _08144E3C
_08144DA8:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144DD4
	mov sb, r7
_08144DBE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144DD4
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144DBE
_08144DD4:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144D94
	b _08144E90
_08144DDE:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08144E42
	lsls r6, r6, #0x10
	b _08144E00
_08144DEC:
	lsls r0, r4, #0x10
	ldr r1, _08144E38 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08144E00
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08144E00:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144E2C
	mov sb, r7
_08144E16:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144E2C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144E16
_08144E2C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144DEC
	b _08144E90
	.align 2, 0
_08144E38: .4byte 0xFFFF0000
_08144E3C:
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	b _08144E90
_08144E42:
	adds r0, r2, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	beq _08144E90
	b _08144E5C
_08144E4E:
	lsls r0, r4, #0x10
	ldr r1, _08144EA0 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08144E5C
	b _08144C9A
_08144E5C:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144E88
	mov sb, r7
_08144E72:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144E88
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144E72
_08144E88:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144E4E
_08144E90:
	lsls r0, r4, #0x10
	cmp r0, r6
	beq _08144EA4
	mov r0, sl
	strh r4, [r0, #0x2e]
	movs r0, #1
	b _08144EA6
	.align 2, 0
_08144EA0: .4byte 0xFFFF0000
_08144EA4:
	movs r0, #0
_08144EA6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08144EB4
sub_08144EB4: @ 0x08144EB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldrh r4, [r0, #0x32]
	adds r6, r4, #0
	movs r0, #0xbd
	lsls r0, r0, #1
	mov ip, r0
	movs r5, #0
	ldr r2, _08144F38 @ =gUnk_08386A50
	ldr r3, _08144F3C @ =gUnk_08386BD0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r3, #2
	adds r1, r0, r1
	ldrh r0, [r2]
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08144F40 @ =gPressedKeys
	mov sb, r2
	ldrh r3, [r1]
	cmp r0, r3
	beq _08144F00
	adds r2, r7, #0
_08144EEA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08144F00
	lsls r0, r5, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	cmp r0, r3
	bne _08144EEA
_08144F00:
	mov r0, sl
	adds r0, #2
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08144FB8
	mov r5, sb
	ldrh r2, [r5]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144F44
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144F34
	b _08145128
_08144F34:
	movs r4, #0
	b _08145128
	.align 2, 0
_08144F38: .4byte gUnk_08386A50
_08144F3C: .4byte gUnk_08386BD0
_08144F40: .4byte gPressedKeys
_08144F44:
	ldr r0, _08144F6C @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144F70
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144F68
	b _08145128
_08144F68:
	b _081450D4
	.align 2, 0
_08144F6C: .4byte gUnk_03002EB8
_08144F70:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144F98
	lsls r0, r4, #0x10
	ldr r3, _08144F94 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	lsls r6, r6, #0x10
	cmp r0, #0
	blt _08144F8A
	b _08145128
_08144F8A:
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08145128
	.align 2, 0
_08144F94: .4byte 0xFFFF0000
_08144F98:
	adds r0, r3, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	bne _08144FA4
	b _08145128
_08144FA4:
	lsls r0, r4, #0x10
	ldr r5, _08144FB4 @ =0xFFFF0000
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	cmp r0, #0
	blt _08144FB2
	b _08145128
_08144FB2:
	b _08144F34
	.align 2, 0
_08144FB4: .4byte 0xFFFF0000
_08144FB8:
	mov r0, sb
	ldrh r5, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08145016
	lsls r6, r6, #0x10
	b _08144FE0
_08144FCA:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	ble _08144FE0
	movs r4, #0
_08144FE0:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0814500C
	mov sb, r7
_08144FF6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _0814500C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144FF6
_0814500C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144FCA
	b _08145128
_08145016:
	ldr r0, _08145028 @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08145076
	lsls r6, r6, #0x10
	b _08145040
	.align 2, 0
_08145028: .4byte gUnk_03002EB8
_0814502C:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	bgt _081450D4
_08145040:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0814506C
	mov sb, r7
_08145056:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _0814506C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08145056
_0814506C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814502C
	b _08145128
_08145076:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _081450DA
	lsls r6, r6, #0x10
	b _08145098
_08145084:
	lsls r0, r4, #0x10
	ldr r1, _081450D0 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08145098
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08145098:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _081450C4
	mov sb, r7
_081450AE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081450C4
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _081450AE
_081450C4:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145084
	b _08145128
	.align 2, 0
_081450D0: .4byte 0xFFFF0000
_081450D4:
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	b _08145128
_081450DA:
	adds r0, r2, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	beq _08145128
	b _081450F4
_081450E6:
	lsls r0, r4, #0x10
	ldr r1, _08145138 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _081450F4
	b _08144F34
_081450F4:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08145120
	mov sb, r7
_0814510A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08145120
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _0814510A
_08145120:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081450E6
_08145128:
	lsls r0, r4, #0x10
	cmp r0, r6
	beq _0814513C
	mov r0, sl
	strh r4, [r0, #0x32]
	movs r0, #1
	b _0814513E
	.align 2, 0
_08145138: .4byte 0xFFFF0000
_0814513C:
	movs r0, #0
_0814513E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0814514C
sub_0814514C: @ 0x0814514C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _081451A8
	movs r0, #0x31
	mov sb, r0
	movs r2, #0
	ldr r5, _08145184 @ =gUnk_08386A50
	ldr r0, _08145188 @ =gUnk_08386B28
	ldrh r4, [r6, #0x2e]
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	lsls r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r5]
	adds r3, r6, #2
	ldr r7, _0814518C @ =gUnk_08386A12
	mov r8, r7
	b _081451A0
	.align 2, 0
_08145184: .4byte gUnk_08386A50
_08145188: .4byte gUnk_08386B28
_0814518C: .4byte gUnk_08386A12
_08145190:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081451EA
	lsls r0, r2, #2
	adds r0, r0, r5
	ldrh r0, [r0]
_081451A0:
	ldrh r7, [r1]
	cmp r0, r7
	bne _08145190
	b _081451EA
_081451A8:
	movs r0, #0x34
	mov sb, r0
	movs r2, #0
	ldr r5, _081451C8 @ =gUnk_08386A50
	ldr r0, _081451CC @ =gUnk_08386BD0
	ldrh r4, [r6, #0x32]
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	lsls r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r5]
	adds r3, r6, #2
	ldr r7, _081451D0 @ =gUnk_08386A12
	mov r8, r7
	b _081451E4
	.align 2, 0
_081451C8: .4byte gUnk_08386A50
_081451CC: .4byte gUnk_08386BD0
_081451D0: .4byte gUnk_08386A12
_081451D4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081451EA
	lsls r0, r2, #2
	adds r0, r0, r5
	ldrh r0, [r0]
_081451E4:
	ldrh r7, [r1]
	cmp r0, r7
	bne _081451D4
_081451EA:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081452E0
	mov r5, sp
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl __divsi3
	strb r0, [r5]
	mov r5, sp
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5, #1]
	mov r5, sp
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5, #2]
	movs r5, #0
	ldr r0, _08145268 @ =gUnk_08386838
	mov r8, r0
	ldr r7, _0814526C @ =gUnk_083868C8
	adds r1, r7, #2
	mov sl, r1
_08145230:
	mov r2, sb
	adds r0, r2, r5
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x40
	adds r3, r6, r1
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	adds r2, r1, #0
	adds r2, #0x2a
	adds r4, r0, #0
	cmp r2, #3
	bhi _08145274
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r0, _08145270 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	b _08145280
	.align 2, 0
_08145268: .4byte gUnk_08386838
_0814526C: .4byte gUnk_083868C8
_08145270: .4byte gUnk_08D60A80
_08145274:
	adds r1, #0x26
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
_08145280:
	strh r0, [r3, #0xc]
	ldrb r1, [r4]
	adds r0, r1, #0
	adds r0, #0x2a
	cmp r0, #3
	bhi _081452B0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _081452A8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r2, _081452AC @ =gUnk_0838683A
	adds r1, r1, r2
	ldrb r0, [r1]
	b _081452BC
	.align 2, 0
_081452A8: .4byte gUnk_08D60A80
_081452AC: .4byte gUnk_0838683A
_081452B0:
	adds r1, #0x26
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	ldrb r0, [r0]
_081452BC:
	strb r0, [r3, #0x1a]
	ldr r1, _081452DC @ =gUnk_08386A12
	ldrb r0, [r4]
	adds r0, #0x2a
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0x1f]
	adds r0, r3, #0
	bl sub_08155128
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08145230
	b _08145310
	.align 2, 0
_081452DC: .4byte gUnk_08386A12
_081452E0:
	mov r3, sb
	lsls r0, r3, #2
	add r0, sb
	lsls r0, r0, #3
	adds r0, #0x90
	adds r3, r6, r0
	ldr r1, _08145320 @ =gUnk_083868C8
	movs r7, #0x90
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	strb r0, [r3, #0x1a]
	mov r0, r8
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r3, #0x1f]
	adds r0, r3, #0
	bl sub_08155128
_08145310:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145320: .4byte gUnk_083868C8

	thumb_func_start sub_08145324
sub_08145324: @ 0x08145324
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x40
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	movs r3, #0xee
	lsls r3, r3, #3
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r4, [r0]
	cmp r4, #0
	bne _08145374
	ldr r7, _08145370 @ =0x000008D8
	adds r0, r5, r7
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08145398
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	b _08145398
	.align 2, 0
_08145370: .4byte 0x000008D8
_08145374:
	cmp r4, #1
	bne _08145398
	movs r3, #0x90
	lsls r3, r3, #4
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08145398
	movs r7, #0xf3
	lsls r7, r7, #3
	adds r0, r5, r7
	bl sub_0815604C
_08145398:
	movs r2, #0
	ldr r4, _081453B0 @ =gUnk_08386A50
	ldr r0, _081453B4 @ =gUnk_08386B28
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	lsls r1, r1, #2
	adds r3, r0, #2
	adds r1, r1, r3
	ldrh r0, [r4]
	adds r7, r5, #2
	mov r8, r7
	b _081453D0
	.align 2, 0
_081453B0: .4byte gUnk_08386A50
_081453B4: .4byte gUnk_08386B28
_081453B8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081453D6
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
_081453D0:
	ldrh r1, [r1]
	cmp r0, r1
	bne _081453B8
_081453D6:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145404
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _081453F2
	movs r7, #0xf5
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
_081453F2:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145404
	movs r3, #0xfa
	lsls r3, r3, #3
	adds r0, r6, r3
	bl sub_0815604C
_08145404:
	movs r7, #0xff
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
	movs r2, #0
	ldr r4, _08145484 @ =gUnk_08386A50
	ldr r1, _08145488 @ =gUnk_08386BD0
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	lsls r0, r0, #2
	adds r3, r1, #2
	adds r0, r0, r3
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08145444
_08145426:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08145444
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08145426
_08145444:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145470
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _08145460
	movs r7, #0x82
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
_08145460:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145470
	ldr r3, _0814548C @ =0x00000848
	adds r0, r6, r3
	bl sub_0815604C
_08145470:
	movs r7, #0x87
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145484: .4byte gUnk_08386A50
_08145488: .4byte gUnk_08386BD0
_0814548C: .4byte 0x00000848

	thumb_func_start sub_08145490
sub_08145490: @ 0x08145490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _081454A8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081454AC
	movs r0, #0
	b _08145564
	.align 2, 0
_081454A8: .4byte gPressedKeys
_081454AC:
	movs r3, #0
	ldr r7, _08145520 @ =gUnk_08386A50
	ldr r0, _08145524 @ =gUnk_08386B28
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r7]
	mov r8, r0
	adds r0, r4, #2
	mov ip, r0
	ldr r6, _08145528 @ =gUnk_030016A0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081454EC
	adds r2, r5, #0
_081454CE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081454EC
	lsls r0, r3, #2
	adds r0, r0, r7
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081454CE
_081454EC:
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145558
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r5, #0x30
	ldrsh r0, [r4, r5]
	cmp r1, r0
	beq _08145530
	ldr r1, _0814552C @ =gSongTable
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145520: .4byte gUnk_08386A50
_08145524: .4byte gUnk_08386B28
_08145528: .4byte gUnk_030016A0
_0814552C: .4byte gSongTable
_08145530:
	ldr r0, [r6, #4]
	cmp r0, #0
	bge _08145558
	ldr r1, _08145554 @ =gSongTable
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145554: .4byte gSongTable
_08145558:
	adds r0, r6, #0
	bl MPlayStop
	ldr r0, _08145570 @ =0x0000FFFF
_08145560:
	strh r0, [r4, #0x30]
	movs r0, #1
_08145564:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08145570: .4byte 0x0000FFFF

	thumb_func_start sub_08145574
sub_08145574: @ 0x08145574
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _0814558C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08145590
	movs r0, #0
	b _08145610
	.align 2, 0
_0814558C: .4byte gPressedKeys
_08145590:
	movs r3, #0
	ldr r6, _081455F4 @ =gUnk_08386A50
	ldr r0, _081455F8 @ =gUnk_08386BD0
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r6]
	mov r8, r0
	adds r7, r4, #2
	ldr r0, _081455FC @ =gUnk_030016E0
	mov ip, r0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081455D0
	adds r2, r5, #0
_081455B2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081455D0
	lsls r0, r3, #2
	adds r0, r0, r6
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081455B2
_081455D0:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145604
	ldr r1, _08145600 @ =gSongTable
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, ip
	bl MPlayStart
	ldrh r0, [r4, #0x32]
	b _0814560C
	.align 2, 0
_081455F4: .4byte gUnk_08386A50
_081455F8: .4byte gUnk_08386BD0
_081455FC: .4byte gUnk_030016E0
_08145600: .4byte gSongTable
_08145604:
	mov r0, ip
	bl MPlayStop
	ldr r0, _0814561C @ =0x0000FFFF
_0814560C:
	strh r0, [r4, #0x34]
	movs r0, #1
_08145610:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814561C: .4byte 0x0000FFFF

	thumb_func_start sub_08145620
sub_08145620: @ 0x08145620
	push {r4, lr}
	ldr r0, _0814563C @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08145640
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08145648
	.align 2, 0
_0814563C: .4byte gCurGameState
_08145640:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08145648:
	adds r0, r4, #0
	bl sub_081436D8
	ldr r1, [r4, #0x38]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814565C
sub_0814565C: @ 0x0814565C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08145662:
	adds r0, r4, #0
	bl sub_08145B00
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08145662
	movs r4, #0
_08145674:
	adds r0, r4, #0
	bl sub_08145B2C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08145674
	ldr r0, _08145690 @ =sub_08145694
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145690: .4byte sub_08145694

	thumb_func_start sub_08145694
sub_08145694: @ 0x08145694
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _081456CC @ =gUnk_08386664
	ldr r0, _081456D0 @ =gUnk_08D60A80
	ldrh r1, [r0]
	movs r0, #0x4e
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r4, [r0]
	ldr r5, _081456D4 @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _081456DC
	ldr r1, _081456D8 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08158334
	b _081456FA
	.align 2, 0
_081456CC: .4byte gUnk_08386664
_081456D0: .4byte gUnk_08D60A80
_081456D4: .4byte gUnk_03002440
_081456D8: .4byte gUnk_082D7850
_081456DC:
	ldr r2, _08145704 @ =0x040000D4
	ldr r1, _08145708 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814570C @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _08145710 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_081456FA:
	ldr r0, _08145714 @ =sub_08143E6C
	str r0, [r6, #0x38]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145704: .4byte 0x040000D4
_08145708: .4byte gUnk_082D7850
_0814570C: .4byte gBgPalette
_08145710: .4byte 0x80000100
_08145714: .4byte sub_08143E6C

	thumb_func_start sub_08145718
sub_08145718: @ 0x08145718
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0814571E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1e
	bls _0814571E
	ldr r0, _0814573C @ =sub_08145740
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814573C: .4byte sub_08145740

	thumb_func_start sub_08145740
sub_08145740: @ 0x08145740
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x1f
_08145746:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145746
	adds r0, r5, #0
	bl sub_08143AF8
	adds r0, r5, #0
	bl sub_081439D8
	ldr r0, _08145770 @ =sub_08145774
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145770: .4byte sub_08145774

	thumb_func_start sub_08145774
sub_08145774: @ 0x08145774
	movs r1, #0
	strh r1, [r0, #0x3c]
	ldr r1, _08145780 @ =sub_08145784
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
_08145780: .4byte sub_08145784

	thumb_func_start sub_08145784
sub_08145784: @ 0x08145784
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _081457EC @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _081457AE
	ldr r0, _081457F0 @ =sub_081457F4
	str r0, [r6, #0x38]
_081457AE:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081457B8:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081457CE
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081457CE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081457B8
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081457EC: .4byte gBldRegs
_081457F0: .4byte sub_081457F4

	thumb_func_start sub_081457F4
sub_081457F4: @ 0x081457F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08145840 @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08145844 @ =sub_08143F88
	str r0, [r5, #0x38]
	movs r4, #0
_08145808:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145820
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145820:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145808
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145840: .4byte gBldRegs
_08145844: .4byte sub_08143F88

	thumb_func_start sub_08145848
sub_08145848: @ 0x08145848
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08145898 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r5, #0x3c]
	ldr r0, _0814589C @ =sub_081458A0
	str r0, [r5, #0x38]
	movs r4, #0
_08145860:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145878
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145878:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145860
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145898: .4byte gBldRegs
_0814589C: .4byte sub_081458A0

	thumb_func_start sub_081458A0
sub_081458A0: @ 0x081458A0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _08145904 @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #4
	ble _081458C6
	ldr r0, _08145908 @ =sub_0814590C
	str r0, [r6, #0x38]
_081458C6:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081458D0:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081458E6
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081458E6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081458D0
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145904: .4byte gBldRegs
_08145908: .4byte sub_0814590C

	thumb_func_start sub_0814590C
sub_0814590C: @ 0x0814590C
	push {lr}
	sub sp, #4
	bl m4aMPlayAllStop
	mov r0, sp
	ldr r1, _08145958 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0814595C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08145960 @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _08145964 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _08145968 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0814596C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08145970 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08138F68
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08145958: .4byte 0x00007FFF
_0814595C: .4byte 0x040000D4
_08145960: .4byte gBgPalette
_08145964: .4byte 0x81000100
_08145968: .4byte gObjPalette
_0814596C: .4byte gUnk_03002440
_08145970: .4byte gCurGameState

	thumb_func_start sub_08145974
sub_08145974: @ 0x08145974
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x2a
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	ldr r6, _081459A0 @ =gUnk_08386A50
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #8
	cmp r0, #1
	beq _081459A4
	cmp r0, #0x10
	beq _081459D2
	b _081459E6
	.align 2, 0
_081459A0: .4byte gUnk_08386A50
_081459A4:
	movs r1, #0xda
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xdf
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	b _081459E6
_081459D2:
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_081459E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_081459EC
sub_081459EC: @ 0x081459EC
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0x67
	strh r1, [r0, #0x10]
	movs r1, #0x81
	strh r1, [r0, #0x12]
	bx lr

	thumb_func_start sub_081459FC
sub_081459FC: @ 0x081459FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r6, r4, r0
	ldr r5, _08145A48 @ =gUnk_08D5FE14
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xb
	movs r1, #0x1e
	bl __udivsi3
	ldr r1, _08145A4C @ =0x000003FF
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #3
	adds r1, r1, r0
	asrs r1, r1, #0xe
	movs r0, #0x70
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x1e
	bl __divsi3
	adds r0, #0x81
	strh r0, [r6, #0x12]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145A48: .4byte gUnk_08D5FE14
_08145A4C: .4byte 0x000003FF

	thumb_func_start sub_08145A50
sub_08145A50: @ 0x08145A50
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x60
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AA4 @ =sub_08144A0C
	str r0, [r5, #0x38]
	movs r4, #0
_08145A6C:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145A84
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145A84:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145A6C
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AA4: .4byte sub_08144A0C

	thumb_func_start sub_08145AA8
sub_08145AA8: @ 0x08145AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x90
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AFC @ =sub_08144AA4
	str r0, [r5, #0x38]
	movs r4, #0
_08145AC4:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145ADC
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145ADC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145AC4
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AFC: .4byte sub_08144AA4

	thumb_func_start sub_08145B00
sub_08145B00: @ 0x08145B00
	sub sp, #4
	lsls r0, r0, #0x18
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r2, _08145B24 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	lsrs r0, r0, #0xa
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08145B28 @ =0x81002000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B24: .4byte 0x040000D4
_08145B28: .4byte 0x81002000

	thumb_func_start sub_08145B2C
sub_08145B2C: @ 0x08145B2C
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08145B58 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08145B5C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r2, #4]
	ldr r0, _08145B60 @ =0x81000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B58: .4byte 0x000001FF
_08145B5C: .4byte 0x040000D4
_08145B60: .4byte 0x81000400

	thumb_func_start sub_08145B64
sub_08145B64: @ 0x08145B64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _08145BEC @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08145BF0 @ =gUnk_03002540
	ldr r0, _08145BF4 @ =0x06010000
	str r0, [r1]
	ldr r1, _08145BF8 @ =gDispCnt
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08145BFC @ =gBgCntRegs
	ldr r0, _08145C00 @ =0x00005E02
	strh r0, [r1]
	ldr r0, _08145C04 @ =0x00005A08
	strh r0, [r1, #4]
	ldr r0, _08145C08 @ =0x00005808
	strh r0, [r1, #6]
	movs r2, #0
	ldr r5, _08145C0C @ =gBgScrollRegs
	ldr r0, _08145C10 @ =sub_08145D94
	mov ip, r0
	ldr r7, _08145C14 @ =sub_08145D1C
	adds r6, r5, #0
	adds r4, r5, #2
	movs r3, #0
_08145BAA:
	lsls r0, r2, #2
	adds r1, r0, r6
	adds r0, r0, r4
	strh r3, [r0]
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08145BAA
	movs r4, #0x10
	strh r4, [r5, #0xc]
	strh r4, [r5, #8]
	ldr r1, _08145C18 @ =0x0000141C
	movs r2, #0x80
	lsls r2, r2, #5
	str r7, [sp]
	mov r0, ip
	movs r3, #0
	bl CreateState
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _08145C1C
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08145C24
	.align 2, 0
_08145BEC: .4byte gUnk_03002488
_08145BF0: .4byte gUnk_03002540
_08145BF4: .4byte 0x06010000
_08145BF8: .4byte gDispCnt
_08145BFC: .4byte gBgCntRegs
_08145C00: .4byte 0x00005E02
_08145C04: .4byte 0x00005A08
_08145C08: .4byte 0x00005808
_08145C0C: .4byte gBgScrollRegs
_08145C10: .4byte sub_08145D94
_08145C14: .4byte sub_08145D1C
_08145C18: .4byte 0x0000141C
_08145C1C:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08145C24:
	adds r4, r1, #0
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08145CF0 @ =0x01000A0E
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r2, _08145CF4 @ =0x000013F8
	adds r1, r4, r2
	ldr r0, _08145CF8 @ =sub_08148CD8
	str r0, [r1]
	ldr r0, _08145CFC @ =0x00001408
	adds r1, r4, r0
	ldr r0, _08145D00 @ =sub_08149758
	str r0, [r1]
	adds r2, #0x18
	adds r1, r4, r2
	ldr r0, _08145D04 @ =sub_0814963C
	str r0, [r1]
	ldr r1, _08145D08 @ =0x0000140C
	adds r0, r4, r1
	mov r2, r8
	strh r2, [r0]
	movs r0, #1
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	str r0, [r4, #4]
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r3, _08145D0C @ =sub_08149710
_08145C66:
	lsls r0, r2, #2
	adds r0, r1, r0
	str r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08145C66
	movs r2, #0
	adds r7, r4, #0
	adds r7, #0x12
	movs r0, #0xa9
	lsls r0, r0, #3
	adds r3, r4, r0
_08145C82:
	lsls r0, r2, #2
	adds r1, r3, r0
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0x48
	adds r0, r4, r0
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08145C82
	movs r2, #0
	ldr r1, _08145D10 @ =0x000012EC
	adds r3, r4, r1
	movs r6, #0x34
	ldr r5, _08145D14 @ =0x000005EC
_08145CA4:
	lsls r0, r2, #2
	adds r0, r3, r0
	adds r1, r2, #0
	muls r1, r6, r1
	adds r1, r1, r5
	adds r1, r4, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x3f
	bls _08145CA4
	ldr r0, _08145D18 @ =0x000013EC
	adds r2, r4, r0
	adds r0, #4
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	str r0, [r2]
	movs r2, #0
	adds r3, r7, #0
	movs r4, #0xff
_08145CD0:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _08145CD0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145CF0: .4byte 0x01000A0E
_08145CF4: .4byte 0x000013F8
_08145CF8: .4byte sub_08148CD8
_08145CFC: .4byte 0x00001408
_08145D00: .4byte sub_08149758
_08145D04: .4byte sub_0814963C
_08145D08: .4byte 0x0000140C
_08145D0C: .4byte sub_08149710
_08145D10: .4byte 0x000012EC
_08145D14: .4byte 0x000005EC
_08145D18: .4byte 0x000013EC

	thumb_func_start sub_08145D1C
sub_08145D1C: @ 0x08145D1C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08145D36
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08145D3E
_08145D36:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08145D3E:
	adds r6, r0, #0
	movs r5, #0
_08145D42:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08145D5A
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_08145D5A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08145D42
	ldr r0, _08145D90 @ =gBgScrollRegs
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r2, [r0, #2]
	movs r5, #1
	adds r3, r0, #0
	adds r4, r3, #2
_08145D76:
	lsls r0, r5, #2
	adds r1, r0, r3
	adds r0, r0, r4
	strh r2, [r0]
	strh r2, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08145D76
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145D90: .4byte gBgScrollRegs

	thumb_func_start sub_08145D94
sub_08145D94: @ 0x08145D94
	push {r4, r5, lr}
	ldr r0, _08145DB0 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08145DB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08145DBC
	.align 2, 0
_08145DB0: .4byte gCurGameState
_08145DB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08145DBC:
	adds r4, r0, #0
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08149680
	adds r0, r4, #0
	bl sub_08149628
	movs r5, #0
_08145DDA:
	lsls r1, r5, #2
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08145DF0
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
_08145DF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08145DDA
	ldr r0, _08145E70 @ =0x00001408
	adds r5, r4, r0
	ldr r1, [r5]
	cmp r1, #0
	beq _08145E0A
	adds r0, r4, #0
	bl _call_via_r1
_08145E0A:
	adds r0, r4, #0
	bl sub_081497B0
	ldr r0, _08145E74 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08145E40
	ldr r0, [r4, #4]
	ldr r2, _08145E78 @ =0x00010038
	ands r2, r0
	cmp r2, #0
	bne _08145E40
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	str r2, [r5]
	movs r0, #0xa0
	lsls r0, r0, #5
	adds r1, r4, r0
	ldr r0, _08145E7C @ =sub_081494E4
	str r0, [r1]
_08145E40:
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08145E52
	adds r0, r4, #0
	bl _call_via_r1
_08145E52:
	ldr r1, _08145E80 @ =0x000013F8
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #0
	bne _08145E68
	adds r0, r4, #0
	bl sub_081496C8
_08145E68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145E70: .4byte 0x00001408
_08145E74: .4byte gPressedKeys
_08145E78: .4byte 0x00010038
_08145E7C: .4byte sub_081494E4
_08145E80: .4byte 0x000013F8

	thumb_func_start sub_08145E84
sub_08145E84: @ 0x08145E84
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r0, _08145F0C @ =0x00001419
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08145EA6
	strb r6, [r1]
	ldr r0, _08145F10 @ =0x00000266
	bl m4aSongNumStart
_08145EA6:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08145ED6
	ldr r3, _08145F14 @ =gUnk_083877A8
	ldr r2, _08145F18 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08145F1C @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08145F20 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #7
	ands r1, r0
	ldr r2, _08145F24 @ =0x00001416
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
_08145ED6:
	ldr r0, _08145F28 @ =gUnk_083877EE
	ldrh r1, [r0, #0x14]
	cmp r5, r1
	blo _08145F06
	ldrh r0, [r0, #0x16]
	subs r0, r0, r1
	movs r1, #3
	bl __divsi3
	ldr r2, _08145F2C @ =0x00001418
	adds r1, r4, r2
	strb r0, [r1]
	ldr r0, _08145F24 @ =0x00001416
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08145F30 @ =0x00001417
	adds r0, r4, r1
	strb r6, [r0]
	subs r2, #8
	adds r1, r4, r2
	ldr r0, _08145F34 @ =sub_08145F38
	str r0, [r1]
_08145F06:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145F0C: .4byte 0x00001419
_08145F10: .4byte 0x00000266
_08145F14: .4byte gUnk_083877A8
_08145F18: .4byte gUnk_030068D8
_08145F1C: .4byte 0x00196225
_08145F20: .4byte 0x3C6EF35F
_08145F24: .4byte 0x00001416
_08145F28: .4byte gUnk_083877EE
_08145F2C: .4byte 0x00001418
_08145F30: .4byte 0x00001417
_08145F34: .4byte sub_08145F38

	thumb_func_start sub_08145F38
sub_08145F38: @ 0x08145F38
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4]
	ldr r0, _08145FBC @ =0x00001419
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	movs r7, #0
	strb r0, [r1]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08145F5C
	strb r7, [r1]
	ldr r0, _08145FC0 @ =0x00000266
	bl m4aSongNumStart
_08145F5C:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08145F8C
	ldr r3, _08145FC4 @ =gUnk_083877A8
	ldr r2, _08145FC8 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08145FCC @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08145FD0 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #7
	ands r1, r0
	ldr r2, _08145FD4 @ =0x00001416
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08145FD8 @ =0x00001415
	adds r0, r4, r3
	strb r1, [r0]
_08145F8C:
	ldr r0, _08145FDC @ =0x00001417
	adds r2, r4, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r3, _08145FE0 @ =0x00001418
	adds r1, r4, r3
	ands r0, r5
	ldrb r1, [r1]
	cmp r0, r1
	blo _08145FE8
	strb r7, [r2]
	ldr r0, _08145FD4 @ =0x00001416
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r5
	cmp r0, #3
	bls _08145FE8
	ldr r2, _08145FE4 @ =0x00001410
	adds r1, r4, r2
	b _08145FFE
	.align 2, 0
_08145FBC: .4byte 0x00001419
_08145FC0: .4byte 0x00000266
_08145FC4: .4byte gUnk_083877A8
_08145FC8: .4byte gUnk_030068D8
_08145FCC: .4byte 0x00196225
_08145FD0: .4byte 0x3C6EF35F
_08145FD4: .4byte 0x00001416
_08145FD8: .4byte 0x00001415
_08145FDC: .4byte 0x00001417
_08145FE0: .4byte 0x00001418
_08145FE4: .4byte 0x00001410
_08145FE8:
	ldr r0, _08146008 @ =gUnk_083877EE
	ldrh r0, [r0, #0x16]
	cmp r6, r0
	blo _08146002
	ldr r3, _0814600C @ =0x00001416
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08146010 @ =0x00001410
	adds r1, r4, r0
_08145FFE:
	ldr r0, _08146014 @ =sub_08146018
	str r0, [r1]
_08146002:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08146008: .4byte gUnk_083877EE
_0814600C: .4byte 0x00001416
_08146010: .4byte 0x00001410
_08146014: .4byte sub_08146018

	thumb_func_start sub_08146018
sub_08146018: @ 0x08146018
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r0, _081460A0 @ =0x00001419
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0814603A
	strb r6, [r1]
	ldr r0, _081460A4 @ =0x00000265
	bl m4aSongNumStart
_0814603A:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0814606A
	ldr r3, _081460A8 @ =gUnk_083877A8
	ldr r2, _081460AC @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _081460B0 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _081460B4 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #7
	ands r1, r0
	ldr r2, _081460B8 @ =0x00001416
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
_0814606A:
	ldr r0, _081460BC @ =gUnk_083877EE
	ldrh r1, [r0, #0x18]
	cmp r5, r1
	blo _0814609A
	ldrh r0, [r0, #0x1a]
	subs r0, r0, r1
	movs r1, #3
	bl __divsi3
	ldr r2, _081460C0 @ =0x00001418
	adds r1, r4, r2
	strb r0, [r1]
	ldr r0, _081460B8 @ =0x00001416
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r1, _081460C4 @ =0x00001417
	adds r0, r4, r1
	strb r6, [r0]
	subs r2, #8
	adds r1, r4, r2
	ldr r0, _081460C8 @ =sub_081460CC
	str r0, [r1]
_0814609A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081460A0: .4byte 0x00001419
_081460A4: .4byte 0x00000265
_081460A8: .4byte gUnk_083877A8
_081460AC: .4byte gUnk_030068D8
_081460B0: .4byte 0x00196225
_081460B4: .4byte 0x3C6EF35F
_081460B8: .4byte 0x00001416
_081460BC: .4byte gUnk_083877EE
_081460C0: .4byte 0x00001418
_081460C4: .4byte 0x00001417
_081460C8: .4byte sub_081460CC

	thumb_func_start sub_081460CC
sub_081460CC: @ 0x081460CC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4]
	ldr r0, _08146150 @ =0x00001419
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	movs r7, #0
	strb r0, [r1]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _081460F0
	strb r7, [r1]
	ldr r0, _08146154 @ =0x00000266
	bl m4aSongNumStart
_081460F0:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08146120
	ldr r3, _08146158 @ =gUnk_083877A8
	ldr r2, _0814615C @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08146160 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08146164 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #7
	ands r1, r0
	ldr r2, _08146168 @ =0x00001416
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0814616C @ =0x00001415
	adds r0, r4, r3
	strb r1, [r0]
_08146120:
	ldr r0, _08146170 @ =0x00001417
	adds r2, r4, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r3, _08146174 @ =0x00001418
	adds r1, r4, r3
	ands r0, r5
	ldrb r1, [r1]
	cmp r0, r1
	blo _0814617C
	strb r7, [r2]
	ldr r0, _08146168 @ =0x00001416
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ands r0, r5
	cmp r0, #0
	bne _0814617C
	ldr r2, _08146178 @ =0x00001410
	adds r1, r4, r2
	b _08146192
	.align 2, 0
_08146150: .4byte 0x00001419
_08146154: .4byte 0x00000266
_08146158: .4byte gUnk_083877A8
_0814615C: .4byte gUnk_030068D8
_08146160: .4byte 0x00196225
_08146164: .4byte 0x3C6EF35F
_08146168: .4byte 0x00001416
_0814616C: .4byte 0x00001415
_08146170: .4byte 0x00001417
_08146174: .4byte 0x00001418
_08146178: .4byte 0x00001410
_0814617C:
	ldr r0, _0814619C @ =gUnk_083877EE
	ldrh r0, [r0, #0x1a]
	cmp r6, r0
	blo _08146196
	ldr r3, _081461A0 @ =0x00001416
	adds r1, r4, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, _081461A4 @ =0x00001410
	adds r1, r4, r0
_08146192:
	ldr r0, _081461A8 @ =sub_081461AC
	str r0, [r1]
_08146196:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814619C: .4byte gUnk_083877EE
_081461A0: .4byte 0x00001416
_081461A4: .4byte 0x00001410
_081461A8: .4byte sub_081461AC

	thumb_func_start sub_081461AC
sub_081461AC: @ 0x081461AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r0, _08146214 @ =0x00001419
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _081461CE
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08146218 @ =0x00000266
	bl m4aSongNumStart
_081461CE:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _081461FE
	ldr r3, _0814621C @ =gUnk_083877A8
	ldr r2, _08146220 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08146224 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08146228 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #7
	ands r1, r0
	ldr r2, _0814622C @ =0x00001416
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
_081461FE:
	ldr r0, _08146230 @ =gUnk_083877EE
	ldrh r0, [r0, #0x1c]
	cmp r5, r0
	blo _0814620E
	ldr r0, _08146234 @ =0x00001410
	adds r1, r4, r0
	ldr r0, _08146238 @ =nullsub_133
	str r0, [r1]
_0814620E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08146214: .4byte 0x00001419
_08146218: .4byte 0x00000266
_0814621C: .4byte gUnk_083877A8
_08146220: .4byte gUnk_030068D8
_08146224: .4byte 0x00196225
_08146228: .4byte 0x3C6EF35F
_0814622C: .4byte 0x00001416
_08146230: .4byte gUnk_083877EE
_08146234: .4byte 0x00001410
_08146238: .4byte nullsub_133

	thumb_func_start sub_0814623C
sub_0814623C: @ 0x0814623C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, [r4]
	ldr r0, _08146280 @ =0x00001417
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	ldrb r3, [r1]
	ldr r2, _08146284 @ =0x00001418
	adds r5, r4, r2
	ldrb r2, [r5]
	subs r0, r2, #2
	cmp r3, r0
	bne _0814629C
	ldr r0, _08146288 @ =0x00000266
	bl m4aSongNumStart
	ldr r2, _0814628C @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08146290 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08146294 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #3
	ands r0, r1
	subs r0, #1
	ldr r2, _08146298 @ =0x00001415
	adds r1, r4, r2
	strb r0, [r1]
	b _081462C4
	.align 2, 0
_08146280: .4byte 0x00001417
_08146284: .4byte 0x00001418
_08146288: .4byte 0x00000266
_0814628C: .4byte gUnk_030068D8
_08146290: .4byte 0x00196225
_08146294: .4byte 0x3C6EF35F
_08146298: .4byte 0x00001415
_0814629C:
	cmp r3, r2
	bne _081462C4
	strb r6, [r1]
	ldr r2, _081462E8 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _081462EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081462F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x1f
	ands r0, r1
	adds r0, #3
	strb r0, [r5]
	ldr r2, _081462F4 @ =0x00001415
	adds r0, r4, r2
	strb r6, [r0]
	ldr r1, _081462F8 @ =0x00001414
	adds r0, r4, r1
	strb r6, [r0]
_081462C4:
	ldr r0, _081462FC @ =gUnk_083877EE
	ldrh r0, [r0, #0x1c]
	cmp r7, r0
	blo _081462E2
	ldr r2, _081462F4 @ =0x00001415
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08146300 @ =0x00001410
	adds r1, r4, r0
	ldr r0, _08146304 @ =nullsub_133
	str r0, [r1]
_081462E2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081462E8: .4byte gUnk_030068D8
_081462EC: .4byte 0x00196225
_081462F0: .4byte 0x3C6EF35F
_081462F4: .4byte 0x00001415
_081462F8: .4byte 0x00001414
_081462FC: .4byte gUnk_083877EE
_08146300: .4byte 0x00001410
_08146304: .4byte nullsub_133

	thumb_func_start sub_08146308
sub_08146308: @ 0x08146308
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	lsrs r6, r1, #0x18
	ldr r1, _08146380 @ =gUnk_083877D2
	mov r0, sp
	movs r2, #4
	bl memcpy
	lsls r3, r7, #1
	adds r0, r5, #0
	adds r0, #0x32
	adds r4, r0, r3
	adds r0, #4
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r2, _08146384 @ =gBgScrollRegs
	lsls r1, r6, #2
	adds r2, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	strh r0, [r2]
	cmp r0, #0xff
	ble _08146376
	ldr r1, _08146388 @ =gBgCntRegs
	lsls r0, r6, #1
	adds r0, r0, r1
	mov r6, sp
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r0]
	ldr r1, _0814638C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r6, [r2]
	adds r0, r0, r6
	strh r0, [r2]
	ldr r1, _08146390 @ =0xFFFFC000
	adds r0, r1, #0
	ldrh r6, [r4]
	adds r0, r0, r6
	strh r0, [r4]
	lsls r1, r7, #2
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r1, _08146394 @ =sub_08146398
	str r1, [r0]
_08146376:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08146380: .4byte gUnk_083877D2
_08146384: .4byte gBgScrollRegs
_08146388: .4byte gBgCntRegs
_0814638C: .4byte 0xFFFFFF00
_08146390: .4byte 0xFFFFC000
_08146394: .4byte sub_08146398

	thumb_func_start sub_08146398
sub_08146398: @ 0x08146398
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	adds r1, r5, #2
	lsls r1, r1, #0x18
	lsls r4, r5, #1
	adds r0, #0x32
	adds r3, r0, r4
	adds r0, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	ldr r2, _08146400 @ =gBgScrollRegs
	lsrs r1, r1, #0x16
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	strh r0, [r1]
	cmp r0, #0xff
	ble _081463D8
	ldr r2, _08146404 @ =0xFFFFFF00
	adds r0, r0, r2
	strh r0, [r1]
	ldr r1, _08146408 @ =0xFFFFC000
	adds r0, r1, #0
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_081463D8:
	ldr r0, _0814640C @ =gUnk_083877EE
	adds r1, r4, r5
	adds r1, #5
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r2, ip
	ldr r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	blo _081463F8
	lsls r0, r5, #2
	mov r1, ip
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, _08146410 @ =sub_08146414
	str r0, [r1]
_081463F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08146400: .4byte gBgScrollRegs
_08146404: .4byte 0xFFFFFF00
_08146408: .4byte 0xFFFFC000
_0814640C: .4byte gUnk_083877EE
_08146410: .4byte sub_08146414

	thumb_func_start sub_08146414
sub_08146414: @ 0x08146414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r0, #0
	ldr r1, _081464BC @ =gBgScrollRegs
	lsls r0, r7, #2
	adds r4, r0, r1
	ldrh r0, [r4]
	mov r8, r0
	ldr r1, _081464C0 @ =gUnk_083877D6
	mov r0, sp
	movs r2, #4
	bl memcpy
	lsls r3, r5, #1
	adds r0, r6, #0
	adds r0, #0x32
	adds r2, r0, r3
	adds r0, #4
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	strh r0, [r4]
	cmp r0, #0xff
	ble _0814646E
	ldr r1, _081464C4 @ =0xFFFFFF00
	adds r0, r0, r1
	strh r0, [r4]
	ldr r1, _081464C8 @ =0xFFFFC000
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_0814646E:
	mov r0, r8
	cmp r0, #0xf
	bhi _081464AE
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	ble _081464AE
	ldr r1, _081464CC @ =gBgCntRegs
	lsls r0, r7, #1
	adds r0, r0, r1
	mov r7, sp
	adds r1, r7, r3
	ldrh r1, [r1]
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r7, [r4]
	adds r0, r0, r7
	strh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r1, _081464D0 @ =sub_081464D4
	str r1, [r0]
_081464AE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081464BC: .4byte gBgScrollRegs
_081464C0: .4byte gUnk_083877D6
_081464C4: .4byte 0xFFFFFF00
_081464C8: .4byte 0xFFFFC000
_081464CC: .4byte gBgCntRegs
_081464D0: .4byte sub_081464D4

	thumb_func_start sub_081464D4
sub_081464D4: @ 0x081464D4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r4, r1, #0x18
	lsrs r7, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r4, r0
	lsrs r4, r4, #0x18
	ldr r1, _0814653C @ =gUnk_083877DA
	mov r0, sp
	movs r2, #4
	bl memcpy
	lsls r3, r7, #1
	adds r0, r5, #0
	adds r0, #0x32
	adds r2, r0, r3
	adds r0, #4
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r6, #0
	strh r0, [r2]
	ldr r1, _08146540 @ =gBgScrollRegs
	lsls r4, r4, #2
	adds r4, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	strh r0, [r4]
	ldr r1, _08146544 @ =0x000001FF
	cmp r0, r1
	ble _08146534
	strh r6, [r2]
	strh r6, [r4]
	ldr r2, _08146548 @ =gDispCnt
	mov r1, sp
	adds r0, r1, r3
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	lsls r1, r7, #2
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r1
	str r6, [r0]
_08146534:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814653C: .4byte gUnk_083877DA
_08146540: .4byte gBgScrollRegs
_08146544: .4byte 0x000001FF
_08146548: .4byte gDispCnt

	thumb_func_start sub_0814654C
sub_0814654C: @ 0x0814654C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _081465A0 @ =0x0000140E
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r7, _081465A4 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	ldr r1, _081465A8 @ =gUnk_083877EE
	ldrh r5, [r1, #0x22]
	adds r1, r5, #0
	bl __divsi3
	strh r0, [r7, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r5
	blt _0814659A
	ldr r1, _081465AC @ =gBgCntRegs
	ldr r0, _081465B0 @ =0x00001C07
	strh r0, [r1, #2]
	ldr r0, _081465B4 @ =0x00000241
	strh r0, [r7]
	ldr r0, _081465B8 @ =0x00001010
	strh r0, [r7, #2]
	movs r0, #0
	strh r0, [r7, #4]
	ldr r0, [r6, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #8]
	ldr r0, _081465BC @ =0x00001408
	adds r1, r6, r0
	ldr r0, _081465C0 @ =nullsub_134
	str r0, [r1]
_0814659A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081465A0: .4byte 0x0000140E
_081465A4: .4byte gBldRegs
_081465A8: .4byte gUnk_083877EE
_081465AC: .4byte gBgCntRegs
_081465B0: .4byte 0x00001C07
_081465B4: .4byte 0x00000241
_081465B8: .4byte 0x00001010
_081465BC: .4byte 0x00001408
_081465C0: .4byte nullsub_134

	thumb_func_start sub_081465C4
sub_081465C4: @ 0x081465C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r1, _081465DC @ =gUnk_08387D54
	ldrb r0, [r4, #0x10]
	ldrb r1, [r1]
	cmp r0, r1
	blo _081465E0
	movs r0, #1
	b _0814668E
	.align 2, 0
_081465DC: .4byte gUnk_08387D54
_081465E0:
	ldr r1, [r4, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0814668C
	ldr r0, [r4, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _08146650
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08146650
	movs r6, #0
	ldr r0, [r4]
	cmp r6, r0
	bhi _0814668C
	ldr r0, _0814664C @ =gUnk_08387814
	mov r8, r0
_08146608:
	ldrb r2, [r4, #0x10]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	adds r7, r6, #1
	cmp r6, r0
	bne _08146640
	ldr r5, _0814664C @ =gUnk_08387814
_0814661C:
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_0814669C
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x10]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r6, r0
	beq _0814661C
_08146640:
	lsls r0, r7, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r4]
	cmp r6, r0
	bls _08146608
	b _0814668C
	.align 2, 0
_0814664C: .4byte gUnk_08387814
_08146650:
	ldr r3, _08146698 @ =gUnk_08387814
	ldrb r2, [r4, #0x10]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bne _0814668C
	adds r5, r3, #0
_08146666:
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_0814669C
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x10]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	beq _08146666
_0814668C:
	movs r0, #0
_0814668E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08146698: .4byte gUnk_08387814

	thumb_func_start sub_0814669C
sub_0814669C: @ 0x0814669C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	ldr r2, _08146720 @ =gUnk_08D62530
	ldrb r1, [r7, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _081466C0
	b _0814681C
_081466C0:
	ldr r5, _08146724 @ =0x000013F6
	add r5, r8
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov sb, r1
	strb r0, [r5]
	ldr r4, _08146728 @ =0x000013F4
	add r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #2
	ldr r0, _0814672C @ =0x000012EC
	add r0, r8
	adds r0, r0, r1
	ldr r6, [r0]
	mov r0, sp
	mov r1, sb
	strh r1, [r0]
	ldr r2, _08146730 @ =0x0100001A
	adds r1, r6, #0
	bl CpuSet
	ldr r1, _08146734 @ =0xFFFFFA14
	adds r0, r6, r1
	mov r1, r8
	subs r0, r0, r1
	ldr r1, _08146738 @ =0xC4EC4EC5
	muls r0, r1, r0
	asrs r0, r0, #2
	strb r0, [r6, #4]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08146744
	ldr r1, _0814673C @ =0x000013EC
	add r1, r8
	ldr r0, _08146740 @ =0x000013F0
	add r0, r8
	str r6, [r0]
	str r6, [r1]
	mov r0, sb
	str r0, [r6, #0x14]
	b _08146752
	.align 2, 0
_08146720: .4byte gUnk_08D62530
_08146724: .4byte 0x000013F6
_08146728: .4byte 0x000013F4
_0814672C: .4byte 0x000012EC
_08146730: .4byte 0x0100001A
_08146734: .4byte 0xFFFFFA14
_08146738: .4byte 0xC4EC4EC5
_0814673C: .4byte 0x000013EC
_08146740: .4byte 0x000013F0
_08146744:
	ldr r0, _08146808 @ =0x000013F0
	add r0, r8
	ldr r1, [r0]
	str r6, [r1, #0x18]
	ldr r1, [r0]
	str r1, [r6, #0x14]
	str r6, [r0]
_08146752:
	movs r0, #0
	str r0, [r6, #0x18]
	ldr r4, _0814680C @ =gUnk_08387348
	ldrb r0, [r7, #4]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r6, #0xa]
	ldrb r0, [r7, #7]
	rsbs r0, r0, #0
	adds r0, #0x78
	lsls r0, r0, #6
	strh r0, [r6, #0xc]
	ldrh r0, [r7, #0xa]
	lsrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r6, #0xe]
	movs r1, #0xc
	ldrsh r0, [r7, r1]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r6, #0x10]
	ldrb r0, [r7, #4]
	strb r0, [r6]
	ldrb r0, [r7, #5]
	strb r0, [r6, #1]
	ldrb r0, [r7, #6]
	strb r0, [r6, #2]
	ldrb r0, [r7, #9]
	strb r0, [r6, #6]
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r6, #7]
	str r1, [r6, #0x20]
	ldrb r0, [r7, #4]
	lsls r1, r0, #4
	adds r0, r4, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r3, [r0]
	cmp r3, #0
	bne _081467BC
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldrb r1, [r7, #0xe]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
_081467BC:
	str r3, [r6, #0x1c]
	ldrb r0, [r7, #5]
	subs r2, r0, #1
	strb r2, [r6, #1]
	ldrb r1, [r7, #8]
	movs r0, #0x10
	subs r0, r0, r1
	strb r0, [r6, #5]
	ldr r0, _08146810 @ =sub_08146CE4
	cmp r3, r0
	beq _081467DC
	movs r0, #0
	strb r0, [r6, #2]
	movs r0, #0xff
	orrs r2, r0
	strb r2, [r6, #1]
_081467DC:
	ldrb r0, [r6]
	lsls r0, r0, #4
	adds r1, r4, #4
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _081467F2
	adds r0, r6, #0
	adds r1, r7, #0
	bl _call_via_r2
_081467F2:
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08146814
	mov r0, r8
	adds r1, r6, #0
	bl sub_081469D4
	b _0814681C
	.align 2, 0
_08146808: .4byte 0x000013F0
_0814680C: .4byte gUnk_08387348
_08146810: .4byte sub_08146CE4
_08146814:
	mov r0, r8
	adds r1, r6, #0
	bl sub_0814682C
_0814681C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814682C
sub_0814682C: @ 0x0814682C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp]
	ldr r1, _0814694C @ =0x000013EC
	adds r0, r5, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _08146872
	ldr r6, _08146950 @ =0x0000FFFF
_0814684C:
	cmp r3, r4
	beq _0814686C
	ldrh r0, [r3]
	ldrh r2, [r4]
	adds r1, r6, #0
	ands r1, r0
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	bne _0814686C
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0814686C
	ldrb r1, [r3, #2]
	cmp r0, r1
	beq _08146964
_0814686C:
	ldr r3, [r3, #0x18]
	cmp r3, #0
	bne _0814684C
_08146872:
	ldr r3, [sp]
	cmp r3, #0
	bne _0814688E
	ldr r2, _08146954 @ =gUnk_08D62530
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [sp]
_0814688E:
	ldr r0, _08146958 @ =0x000005CA
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r2, r5, r1
	ldrb r1, [r2]
	lsls r1, r1, #2
	movs r3, #0xa9
	lsls r3, r3, #3
	adds r0, r5, r3
	adds r0, r0, r1
	ldr r3, [r0]
	adds r1, r3, #0
	subs r1, #0x48
	subs r1, r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #3
	strb r0, [r4, #3]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0814695C @ =gUnk_08387348
	ldrb r2, [r4]
	lsls r0, r2, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	mov ip, r0
	movs r1, #0
	ldr r0, _08146954 @ =gUnk_08D62530
	mov r8, r0
	adds r6, r2, #0
	adds r7, r5, #0
	adds r7, #0x12
	mov sl, r6
	ldrb r0, [r4, #1]
	mov sb, r0
	adds r2, r7, #0
_081468F2:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, ip
	beq _08146960
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _081468F2
	ldrb r0, [r5, #0x11]
	adds r0, #1
	strb r0, [r5, #0x11]
	movs r1, #0
	adds r5, r7, #0
_0814690E:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08146960
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _0814690E
	movs r0, #1
	rsbs r0, r0, #0
_08146924:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov ip, r1
	asrs r0, r0, #0x18
	adds r0, r7, r0
	mov r1, sl
	strb r1, [r0]
	mov r1, sb
	lsls r0, r1, #0x18
	cmp r0, #0
	bge _0814696A
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	b _08146982
	.align 2, 0
_0814694C: .4byte 0x000013EC
_08146950: .4byte 0x0000FFFF
_08146954: .4byte gUnk_08D62530
_08146958: .4byte 0x000005CA
_0814695C: .4byte gUnk_08387348
_08146960:
	adds r0, r1, #0
	b _08146924
_08146964:
	ldrb r0, [r3, #3]
	strb r0, [r4, #3]
	b _081469C4
_0814696A:
	ldrb r5, [r4, #1]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r5, r0
	bne _08146982
	movs r0, #0xff
	strb r0, [r4, #1]
_08146982:
	ldr r0, [sp]
	str r0, [r3]
	ldrb r0, [r4, #5]
	lsls r0, r0, #6
	movs r2, #0
	strh r0, [r3, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	strb r5, [r3, #0x1a]
	strh r2, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldrb r0, [r4, #6]
	strb r0, [r3, #0x1c]
	mov r1, ip
	strb r1, [r3, #0x1f]
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r3, #0x10]
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r3, #0x12]
	str r2, [r3, #8]
	adds r0, r3, #0
	bl sub_08155128
_081469C4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081469D4
sub_081469D4: @ 0x081469D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r0, _08146A48 @ =0x000005CA
	adds r1, r3, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r2, r3, r1
	ldrb r1, [r2]
	lsls r1, r1, #2
	movs r4, #0xa9
	lsls r4, r4, #3
	adds r0, r3, r4
	adds r0, r0, r1
	ldr r6, [r0]
	adds r1, r6, #0
	subs r1, #0x48
	subs r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #3
	strb r0, [r5, #3]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08146A4C @ =gUnk_08387348
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r4, [r0]
	movs r1, #0
	adds r7, r3, #0
	adds r7, #0x12
	adds r2, r7, #0
_08146A38:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, r4
	bne _08146A50
	adds r0, r1, #0
	ldrb r2, [r5]
	b _08146A80
	.align 2, 0
_08146A48: .4byte 0x000005CA
_08146A4C: .4byte gUnk_08387348
_08146A50:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _08146A38
	ldrb r0, [r3, #0x11]
	adds r0, #1
	strb r0, [r3, #0x11]
	movs r1, #0
	ldrb r2, [r5]
	adds r3, r7, #0
_08146A66:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08146A72
	adds r0, r1, #0
	b _08146A80
_08146A72:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _08146A66
	movs r0, #1
	rsbs r0, r0, #0
_08146A80:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov sb, r3
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r7, #0
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	cmp r2, #1
	beq _08146AEA
	str r7, [sp]
	mov r1, sp
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	mov r2, sp
	ldr r1, _08146B5C @ =gUnk_08D626E0
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	mov r0, sp
	strh r7, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r3, [r0, #0x1f]
	ldr r1, _08146B60 @ =0x0000FFC0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r7, [sp, #8]
	bl sub_08155128
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08146AEA:
	ldr r4, _08146B64 @ =gUnk_08D62530
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r6]
	ldrb r0, [r5, #5]
	lsls r0, r0, #6
	strh r0, [r6, #0x14]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	strh r7, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldrb r0, [r5, #6]
	strb r0, [r6, #0x1c]
	mov r4, sb
	strb r4, [r6, #0x1f]
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6, #0x10]
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6, #0x12]
	mov r0, r8
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08146B5C: .4byte gUnk_08D626E0
_08146B60: .4byte 0x0000FFC0
_08146B64: .4byte gUnk_08D62530

	thumb_func_start sub_08146B68
sub_08146B68: @ 0x08146B68
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r6, [r3, #0x20]
	movs r5, #0
	strb r5, [r3]
	ldr r0, _08146B88 @ =0x000013EC
	adds r2, r6, r0
	ldr r1, _08146B8C @ =0x000013F0
	adds r0, r6, r1
	ldr r1, [r2]
	ldr r4, [r0]
	cmp r1, r4
	bne _08146B90
	str r5, [r0]
	str r5, [r2]
	b _08146BB4
	.align 2, 0
_08146B88: .4byte 0x000013EC
_08146B8C: .4byte 0x000013F0
_08146B90:
	cmp r3, r1
	bne _08146B9A
	ldr r1, [r3, #0x18]
	str r1, [r2]
	b _08146BB0
_08146B9A:
	cmp r3, r4
	bne _08146BA8
	ldr r1, [r3, #0x14]
	str r1, [r0]
	ldr r0, [r3, #0x18]
	str r0, [r1, #0x18]
	b _08146BB4
_08146BA8:
	ldr r1, [r3, #0x14]
	ldr r0, [r3, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r3, #0x18]
_08146BB0:
	ldr r0, [r3, #0x14]
	str r0, [r1, #0x14]
_08146BB4:
	ldr r4, _08146BE0 @ =0x000013F5
	adds r2, r6, r4
	ldrb r1, [r2]
	lsls r1, r1, #2
	ldr r4, _08146BE4 @ =0x000012EC
	adds r0, r6, r4
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08146BE8 @ =0x000013F6
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08146BE0: .4byte 0x000013F5
_08146BE4: .4byte 0x000012EC
_08146BE8: .4byte 0x000013F6

	thumb_func_start sub_08146BEC
sub_08146BEC: @ 0x08146BEC
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x20]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	adds r5, r4, r1
	ldr r1, _08146C20 @ =0x000013EC
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08146C2A
_08146C0A:
	cmp r2, r3
	beq _08146C24
	movs r1, #3
	ldrsb r1, [r2, r1]
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r1, r0
	bne _08146C24
	movs r0, #0
	b _08146C50
	.align 2, 0
_08146C20: .4byte 0x000013EC
_08146C24:
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne _08146C0A
_08146C2A:
	ldr r3, _08146C58 @ =0x000005C9
	adds r2, r4, r3
	ldrb r1, [r2]
	lsls r1, r1, #2
	subs r3, #0x81
	adds r0, r4, r3
	adds r0, r0, r1
	str r5, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08146C5C @ =0x000005CA
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
_08146C50:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08146C58: .4byte 0x000005C9
_08146C5C: .4byte 0x000005CA

	thumb_func_start sub_08146C60
sub_08146C60: @ 0x08146C60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r1, _08146CD4 @ =0x00001414
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _08146CD8 @ =0x00001415
	adds r0, r5, r2
	ldrb r2, [r0]
	ldr r3, _08146CDC @ =0x000013EC
	adds r0, r5, r3
	ldr r4, [r0]
	cmp r4, #0
	beq _08146CCA
	lsls r0, r1, #0x18
	asrs r7, r0, #0x18
	ldr r0, _08146CE0 @ =gUnk_08387348
	mov r8, r0
	lsls r0, r2, #0x18
	asrs r6, r0, #0x18
_08146C8A:
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _08146CC4
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	adds r0, r5, r0
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	subs r1, r1, r7
	strh r1, [r0, #0x10]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	ldrb r1, [r4]
	lsls r1, r1, #4
	add r1, r8
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r2, r2, r1
	subs r2, r2, r6
	strh r2, [r0, #0x12]
	bl sub_0815604C
_08146CC4:
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _08146C8A
_08146CCA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08146CD4: .4byte 0x00001414
_08146CD8: .4byte 0x00001415
_08146CDC: .4byte 0x000013EC
_08146CE0: .4byte gUnk_08387348

	thumb_func_start sub_08146CE4
sub_08146CE4: @ 0x08146CE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08146D38
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08146D78 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08146D38
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08146D38
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08146D38
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08146D38:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08146D7C @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08146D70
	ldr r0, [r4]
	cmp r0, #0
	beq _08146D66
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08146D66
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08146D66:
	ldr r2, _08146D7C @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08146D70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08146D78: .4byte gUnk_08387348
_08146D7C: .4byte 0x000005CC

	thumb_func_start sub_08146D80
sub_08146D80: @ 0x08146D80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _08146DA4
	movs r0, #0
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x24]
	bl m4aSongNumStart
_08146DA4:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #0x10]
	ldrh r3, [r4, #0xc]
	adds r0, r0, r3
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08146DF4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08146E34 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08146DF4
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08146DF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08146DF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08146DF4:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08146E38 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08146E2C
	ldr r0, [r4]
	cmp r0, #0
	beq _08146E22
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08146E22
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08146E22:
	ldr r2, _08146E38 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08146E2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08146E34: .4byte gUnk_08387348
_08146E38: .4byte 0x000005CC

	thumb_func_start sub_08146E3C
sub_08146E3C: @ 0x08146E3C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x24
	ldrh r0, [r2, #0xe]
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	ldr r5, [r2, #0x20]
	ldr r1, _08146E98 @ =gUnk_083877E0
	ldrb r4, [r3, #1]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldr r1, [r5]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08146EA4
	adds r0, r4, #1
	strb r0, [r3, #1]
	movs r0, #0
	strb r0, [r3, #0xa]
	ldr r0, _08146E9C @ =sub_08149880
	str r0, [r2, #0x1c]
	ldrh r0, [r2, #0xe]
	strh r0, [r3, #2]
	ldrh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r2, #0xe]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	ldr r2, _08146EA0 @ =gUnk_08387208
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	b _08146EDC
	.align 2, 0
_08146E98: .4byte gUnk_083877E0
_08146E9C: .4byte sub_08149880
_08146EA0: .4byte gUnk_08387208
_08146EA4:
	adds r6, r5, #0
	ldrb r5, [r2, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08146EE4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08146EDC
	ldr r0, [r4]
	cmp r0, #0
	beq _08146ED2
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08146ED2
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08146ED2:
	ldr r1, _08146EE4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08146EDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08146EE4: .4byte 0x000005CC

	thumb_func_start sub_08146EE8
sub_08146EE8: @ 0x08146EE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x24
	ldr r2, [r5, #0x20]
	ldr r1, _08146FA4 @ =gUnk_083877E0
	ldrb r3, [r4, #1]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08146F9E
	adds r0, r3, #1
	strb r0, [r4, #1]
	adds r0, r5, #0
	bl sub_08146BEC
	adds r6, r0, #0
	ldr r1, [r5, #0x20]
	ldr r2, _08146FA8 @ =0x000013EC
	adds r0, r1, r2
	ldr r3, [r0]
	cmp r3, #0
	beq _08146F48
	adds r4, r1, #0
	adds r4, #0x48
_08146F1E:
	cmp r3, r5
	beq _08146F42
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r4, r1
	movs r2, #3
	ldrsb r2, [r5, r2]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	beq _08146F56
_08146F42:
	ldr r3, [r3, #0x18]
	cmp r3, #0
	bne _08146F1E
_08146F48:
	ldr r0, [r6]
	cmp r0, #0
	beq _08146F56
	bl sub_08157190
	movs r0, #0
	str r0, [r6]
_08146F56:
	ldr r3, [r5, #0x20]
	movs r2, #0
	ldr r7, _08146FAC @ =sub_08146FB0
	movs r4, #3
	ldrsb r4, [r5, r4]
_08146F60:
	cmp r2, r4
	beq _08146F7C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0x48
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08146F7C
	ldrb r0, [r1, #0x1f]
	ldrb r1, [r6, #0x1f]
	cmp r0, r1
	beq _08146F98
_08146F7C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08146F60
	adds r0, r3, #0
	adds r0, #0x12
	ldrb r6, [r6, #0x1f]
	adds r0, r0, r6
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r3, #0x11]
	subs r0, #1
	strb r0, [r3, #0x11]
_08146F98:
	movs r0, #0xff
	strb r0, [r5, #3]
	str r7, [r5, #0x1c]
_08146F9E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08146FA4: .4byte gUnk_083877E0
_08146FA8: .4byte 0x000013EC
_08146FAC: .4byte sub_08146FB0

	thumb_func_start sub_08146FB0
sub_08146FB0: @ 0x08146FB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x24
	ldr r2, [r4, #0x20]
	ldr r1, _08147008 @ =gUnk_083877E0
	ldrb r3, [r5, #1]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08147000
	adds r0, r3, #1
	strb r0, [r5, #1]
	ldr r0, [r4, #0x20]
	adds r1, r4, #0
	bl sub_081469D4
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814700C @ =gUnk_08387208
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldrb r0, [r4, #3]
	strb r0, [r5, #7]
	movs r0, #1
	strb r0, [r5, #6]
	ldr r0, _08147010 @ =sub_08147014
	str r0, [r4, #0x1c]
_08147000:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08147008: .4byte gUnk_083877E0
_0814700C: .4byte gUnk_08387208
_08147010: .4byte sub_08147014

	thumb_func_start sub_08147014
sub_08147014: @ 0x08147014
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x24
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08147046
	movs r0, #0
	strh r0, [r3, #4]
	movs r1, #0
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08147038
	movs r1, #1
_08147038:
	strb r1, [r3, #6]
	cmp r1, #0
	beq _08147042
	ldrb r0, [r3, #7]
	b _08147044
_08147042:
	movs r0, #0xff
_08147044:
	strb r0, [r5, #3]
_08147046:
	ldr r2, [r5, #0x20]
	ldr r1, _08147070 @ =gUnk_083877E0
	ldrb r4, [r3, #1]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08147068
	adds r0, r4, #1
	strb r0, [r3, #1]
	ldrb r0, [r3, #7]
	strb r0, [r5, #3]
	movs r0, #1
	strb r0, [r3, #6]
	ldr r0, _08147074 @ =sub_081498B4
	str r0, [r5, #0x1c]
_08147068:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08147070: .4byte gUnk_083877E0
_08147074: .4byte sub_081498B4

	thumb_func_start sub_08147078
sub_08147078: @ 0x08147078
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r4, r1, r0
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _081470BC
	movs r0, #0
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	ands r0, r1
	cmp r0, #3
	bls _081470B4
	ldr r0, _081470E0 @ =sub_08149910
	str r0, [r5, #0x1c]
_081470B4:
	movs r0, #0x96
	lsls r0, r0, #2
	bl m4aSongNumStart
_081470BC:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081470DA
	ldr r1, _081470E4 @ =gUnk_08387208
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _081470E8 @ =sub_081470EC
	str r0, [r5, #0x1c]
_081470DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081470E0: .4byte sub_08149910
_081470E4: .4byte gUnk_08387208
_081470E8: .4byte sub_081470EC

	thumb_func_start sub_081470EC
sub_081470EC: @ 0x081470EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x24
	ldr r2, [r4, #0x20]
	ldr r1, _08147144 @ =gUnk_083877E0
	ldrb r3, [r5, #1]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0814713C
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r5, #1]
	strb r1, [r5, #0xa]
	ldr r0, _08147148 @ =0x0000025A
	bl m4aSongNumStart
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814714C @ =gUnk_08387208
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	strh r0, [r4, #0xe]
	ldr r0, _08147150 @ =sub_08147154
	str r0, [r4, #0x1c]
_0814713C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08147144: .4byte gUnk_083877E0
_08147148: .4byte 0x0000025A
_0814714C: .4byte gUnk_08387208
_08147150: .4byte sub_08147154

	thumb_func_start sub_08147154
sub_08147154: @ 0x08147154
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081471A0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081471E0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081471A0
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081471A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081471A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081471A0:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081471E4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081471D8
	ldr r0, [r4]
	cmp r0, #0
	beq _081471CE
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081471CE
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081471CE:
	ldr r2, _081471E4 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081471D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081471E0: .4byte gUnk_08387348
_081471E4: .4byte 0x000005CC

	thumb_func_start sub_081471E8
sub_081471E8: @ 0x081471E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0x24
	ldrh r0, [r7, #0xe]
	ldrh r1, [r7, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0xa]
	ldrb r0, [r5, #1]
	mov r8, r0
	ldr r6, _081472CC @ =gUnk_08D5FE14
	ldrh r0, [r5, #4]
	lsls r0, r0, #0xa
	ldrh r4, [r5, #2]
	adds r1, r4, #0
	bl __divsi3
	ldr r1, _081472D0 @ =0x000003FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r0, #0x64
	muls r0, r1, r0
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	lsls r4, r4, #4
	adds r1, r4, #0
	bl __divsi3
	ldrh r1, [r7, #0xc]
	adds r1, r1, r0
	strh r1, [r7, #0xc]
	ldrh r0, [r5, #4]
	adds r0, #1
	ldrh r1, [r5, #2]
	bl __modsi3
	strh r0, [r5, #4]
	ldrb r0, [r7]
	cmp r0, #0
	beq _0814728A
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081472D4 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814728A
	adds r0, r7, #0
	bl sub_08146B68
	adds r0, r7, #0
	bl sub_08146BEC
	adds r4, r0, #0
	cmp r4, #0
	beq _0814728A
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814728A
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08149814
_0814728A:
	ldr r6, [r7, #0x20]
	ldrb r5, [r7, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081472D8 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081472C2
	ldr r0, [r4]
	cmp r0, #0
	beq _081472B8
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081472B8
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081472B8:
	ldr r1, _081472D8 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081472C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081472CC: .4byte gUnk_08D5FE14
_081472D0: .4byte 0x000003FF
_081472D4: .4byte gUnk_08387348
_081472D8: .4byte 0x000005CC

	thumb_func_start sub_081472DC
sub_081472DC: @ 0x081472DC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	adds r1, r0, #3
	movs r5, #0
	strh r1, [r4, #0xe]
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _08147354
	ldrh r0, [r4, #0x24]
	strh r0, [r4, #0xe]
	ldr r2, _08147310 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _08147314 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08147318 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _08147320
	ldr r0, _0814731C @ =0x0000FFCE
	b _08147322
	.align 2, 0
_08147310: .4byte gUnk_030068D8
_08147314: .4byte 0x00196225
_08147318: .4byte 0x3C6EF35F
_0814731C: .4byte 0x0000FFCE
_08147320:
	ldr r0, _08147348 @ =0x0000FF9C
_08147322:
	strh r0, [r4, #0x10]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814734C @ =gUnk_08387220
	ldrh r1, [r2, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #6]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147350 @ =sub_081473E0
	str r0, [r4, #0x1c]
	b _081473D2
	.align 2, 0
_08147348: .4byte 0x0000FF9C
_0814734C: .4byte gUnk_08387220
_08147350: .4byte sub_081473E0
_08147354:
	ldrh r0, [r4, #0xa]
	adds r1, r0, r1
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0814739A
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081473D8 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814739A
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _0814739A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814739A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_0814739A:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081473DC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081473D2
	ldr r0, [r4]
	cmp r0, #0
	beq _081473C8
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081473C8
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081473C8:
	ldr r1, _081473DC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081473D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081473D8: .4byte gUnk_08387348
_081473DC: .4byte 0x000005CC

	thumb_func_start sub_081473E0
sub_081473E0: @ 0x081473E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147438
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147470 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147438
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147438
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147438
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147438:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147474 @ =0x00001DFF
	cmp r1, r0
	ble _08147480
	movs r1, #0
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _08147478 @ =gUnk_08387220
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #2]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _0814747C @ =sub_081472DC
	str r0, [r4, #0x1c]
	b _081474B8
	.align 2, 0
_08147470: .4byte gUnk_08387348
_08147474: .4byte 0x00001DFF
_08147478: .4byte gUnk_08387220
_0814747C: .4byte sub_081472DC
_08147480:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081474C0 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081474B8
	ldr r0, [r4]
	cmp r0, #0
	beq _081474AE
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081474AE
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081474AE:
	ldr r3, _081474C0 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081474B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081474C0: .4byte 0x000005CC

	thumb_func_start sub_081474C4
sub_081474C4: @ 0x081474C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r6, r1, r0
	ldrh r1, [r5, #0xe]
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _081474F4
	adds r0, r1, #3
	strh r0, [r5, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081474F4
	movs r0, #0
	strh r0, [r5, #0xe]
_081474F4:
	ldrh r0, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	adds r1, r0, r2
	strh r1, [r5, #0xa]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0814753C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147574 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814753C
	adds r0, r5, #0
	bl sub_08146B68
	adds r0, r5, #0
	bl sub_08146BEC
	adds r4, r0, #0
	cmp r4, #0
	beq _0814753C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814753C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08149814
_0814753C:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814756E
	ldrh r0, [r7]
	movs r4, #0
	strh r0, [r5, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r5, #0x10]
	ldr r1, _08147578 @ =gUnk_08387230
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	movs r0, #0x97
	lsls r0, r0, #2
	bl m4aSongNumStart
	strb r4, [r7, #4]
	ldr r0, _0814757C @ =sub_08147580
	str r0, [r5, #0x1c]
_0814756E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147574: .4byte gUnk_08387348
_08147578: .4byte gUnk_08387230
_0814757C: .4byte sub_08147580

	thumb_func_start sub_08147580
sub_08147580: @ 0x08147580
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081475DC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147614 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081475DC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081475DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081475DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081475DC:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147618 @ =0x00001DFF
	cmp r1, r0
	ble _08147624
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _0814761C @ =gUnk_08387230
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147620 @ =sub_08147858
	str r0, [r4, #0x1c]
	b _0814769E
	.align 2, 0
_08147614: .4byte gUnk_08387348
_08147618: .4byte 0x00001DFF
_0814761C: .4byte gUnk_08387230
_08147620: .4byte sub_08147858
_08147624:
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r6, [r6, #5]
	cmp r0, r6
	blo _08147664
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814765C @ =gUnk_08387230
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147660 @ =sub_081476A8
	str r0, [r4, #0x1c]
	b _0814769E
	.align 2, 0
_0814765C: .4byte gUnk_08387230
_08147660: .4byte sub_081476A8
_08147664:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081476A4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _0814769E
	ldr r0, [r4]
	cmp r0, #0
	beq _08147694
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147694
	ldrb r0, [r4, #0x1b]
	orrs r0, r7
	strb r0, [r4, #0x1b]
_08147694:
	ldr r3, _081476A4 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_0814769E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081476A4: .4byte 0x000005CC

	thumb_func_start sub_081476A8
sub_081476A8: @ 0x081476A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147710
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147738 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147710
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147710
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147710
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147710:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _0814773C @ =0x00001DFF
	cmp r1, r0
	ble _08147748
	movs r1, #0
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	ldr r1, _08147740 @ =gUnk_08387230
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147744 @ =sub_08147858
	b _08147764
	.align 2, 0
_08147738: .4byte gUnk_08387348
_0814773C: .4byte 0x00001DFF
_08147740: .4byte gUnk_08387230
_08147744: .4byte sub_08147858
_08147748:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147766
	ldr r1, _0814776C @ =gUnk_08387230
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147770 @ =sub_08147774
_08147764:
	str r0, [r4, #0x1c]
_08147766:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814776C: .4byte gUnk_08387230
_08147770: .4byte sub_08147774

	thumb_func_start sub_08147774
sub_08147774: @ 0x08147774
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081477CC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147804 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081477CC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081477CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081477CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081477CC:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147808 @ =0x00001DFF
	cmp r1, r0
	ble _08147814
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _0814780C @ =gUnk_08387230
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147810 @ =sub_08147858
	str r0, [r4, #0x1c]
	b _0814784C
	.align 2, 0
_08147804: .4byte gUnk_08387348
_08147808: .4byte 0x00001DFF
_0814780C: .4byte gUnk_08387230
_08147810: .4byte sub_08147858
_08147814:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147854 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _0814784C
	ldr r0, [r4]
	cmp r0, #0
	beq _08147842
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147842
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08147842:
	ldr r3, _08147854 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_0814784C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147854: .4byte 0x000005CC

	thumb_func_start sub_08147858
sub_08147858: @ 0x08147858
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147884
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147884
	movs r0, #0
	strh r0, [r4, #0xe]
_08147884:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081478CC
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081478F0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081478CC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081478CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081478CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081478CC:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _081478EA
	ldr r1, _081478F4 @ =gUnk_08387230
	ldrh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _081478F8 @ =sub_081474C4
	str r0, [r4, #0x1c]
_081478EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081478F0: .4byte gUnk_08387348
_081478F4: .4byte gUnk_08387230
_081478F8: .4byte sub_081474C4

	thumb_func_start sub_081478FC
sub_081478FC: @ 0x081478FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0814794C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147998 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814794C
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _0814794C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814794C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_0814794C:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #8]
	cmp r0, r1
	blo _081479A4
	movs r0, #0
	strh r0, [r6, #6]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _081479A4
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _081479A4
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814799C @ =gUnk_08387248
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _081479A0 @ =sub_081479E8
	str r0, [r4, #0x1c]
	b _081479DC
	.align 2, 0
_08147998: .4byte gUnk_08387348
_0814799C: .4byte gUnk_08387248
_081479A0: .4byte sub_081479E8
_081479A4:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r2, _081479E4 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081479DC
	ldr r0, [r4]
	cmp r0, #0
	beq _081479D2
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081479D2
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081479D2:
	ldr r1, _081479E4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081479DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081479E4: .4byte 0x000005CC

	thumb_func_start sub_081479E8
sub_081479E8: @ 0x081479E8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147A18
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147A18
	movs r0, #0
	strh r0, [r4, #0xe]
_08147A18:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147A60
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147A8C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147A60
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147A60
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147A60
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147A60:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147A86
	ldrh r0, [r7]
	strh r0, [r4, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r1, _08147A90 @ =gUnk_08387248
	ldrh r0, [r1, #0xc]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147A94 @ =sub_08147A98
	str r0, [r4, #0x1c]
_08147A86:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147A8C: .4byte gUnk_08387348
_08147A90: .4byte gUnk_08387248
_08147A94: .4byte sub_08147A98

	thumb_func_start sub_08147A98
sub_08147A98: @ 0x08147A98
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147AF0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147B28 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147AF0
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147AF0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147AF0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147AF0:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147B2C @ =0x00001DFF
	cmp r1, r0
	ble _08147B38
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _08147B30 @ =gUnk_08387248
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147B34 @ =sub_08147B7C
	str r0, [r4, #0x1c]
	b _08147B70
	.align 2, 0
_08147B28: .4byte gUnk_08387348
_08147B2C: .4byte 0x00001DFF
_08147B30: .4byte gUnk_08387248
_08147B34: .4byte sub_08147B7C
_08147B38:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147B78 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08147B70
	ldr r0, [r4]
	cmp r0, #0
	beq _08147B66
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147B66
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08147B66:
	ldr r3, _08147B78 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08147B70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147B78: .4byte 0x000005CC

	thumb_func_start sub_08147B7C
sub_08147B7C: @ 0x08147B7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147BAC
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147BAC
	movs r0, #0
	strh r0, [r4, #0xe]
_08147BAC:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147BF4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147C1C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147BF4
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147BF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147BF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147BF4:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147C16
	ldrh r0, [r7]
	strh r0, [r4, #0xe]
	ldr r1, _08147C20 @ =gUnk_08387248
	ldrh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147C24 @ =sub_081478FC
	str r0, [r4, #0x1c]
_08147C16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147C1C: .4byte gUnk_08387348
_08147C20: .4byte gUnk_08387248
_08147C24: .4byte sub_081478FC

	thumb_func_start sub_08147C28
sub_08147C28: @ 0x08147C28
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r6, r1, r0
	ldrh r1, [r5, #0xe]
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08147C58
	adds r0, r1, #3
	strh r0, [r5, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147C58
	movs r0, #0
	strh r0, [r5, #0xe]
_08147C58:
	ldrh r0, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	adds r1, r0, r2
	strh r1, [r5, #0xa]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08147CA0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147CD8 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147CA0
	adds r0, r5, #0
	bl sub_08146B68
	adds r0, r5, #0
	bl sub_08146BEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08147CA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147CA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08149814
_08147CA0:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147CD0
	ldrh r0, [r7]
	movs r4, #0
	strh r0, [r5, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r5, #0x10]
	ldr r1, _08147CDC @ =gUnk_0838725C
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147CE0 @ =0x0000025D
	bl m4aSongNumStart
	strb r4, [r7, #4]
	ldr r0, _08147CE4 @ =sub_08147CE8
	str r0, [r5, #0x1c]
_08147CD0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147CD8: .4byte gUnk_08387348
_08147CDC: .4byte gUnk_0838725C
_08147CE0: .4byte 0x0000025D
_08147CE4: .4byte sub_08147CE8

	thumb_func_start sub_08147CE8
sub_08147CE8: @ 0x08147CE8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147D44
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147D7C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147D44
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147D44
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147D44
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147D44:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147D80 @ =0x00001DFF
	cmp r1, r0
	ble _08147D8C
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _08147D84 @ =gUnk_0838725C
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147D88 @ =sub_08147FC0
	str r0, [r4, #0x1c]
	b _08147E06
	.align 2, 0
_08147D7C: .4byte gUnk_08387348
_08147D80: .4byte 0x00001DFF
_08147D84: .4byte gUnk_0838725C
_08147D88: .4byte sub_08147FC0
_08147D8C:
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r6, [r6, #5]
	cmp r0, r6
	blo _08147DCC
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _08147DC4 @ =gUnk_0838725C
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147DC8 @ =sub_08147E10
	str r0, [r4, #0x1c]
	b _08147E06
	.align 2, 0
_08147DC4: .4byte gUnk_0838725C
_08147DC8: .4byte sub_08147E10
_08147DCC:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147E0C @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08147E06
	ldr r0, [r4]
	cmp r0, #0
	beq _08147DFC
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147DFC
	ldrb r0, [r4, #0x1b]
	orrs r0, r7
	strb r0, [r4, #0x1b]
_08147DFC:
	ldr r3, _08147E0C @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08147E06:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147E0C: .4byte 0x000005CC

	thumb_func_start sub_08147E10
sub_08147E10: @ 0x08147E10
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147E78
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147EA0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147E78
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147E78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147E78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147E78:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147EA4 @ =0x00001DFF
	cmp r1, r0
	ble _08147EB0
	movs r1, #0
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	ldr r1, _08147EA8 @ =gUnk_0838725C
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147EAC @ =sub_08147FC0
	b _08147ECC
	.align 2, 0
_08147EA0: .4byte gUnk_08387348
_08147EA4: .4byte 0x00001DFF
_08147EA8: .4byte gUnk_0838725C
_08147EAC: .4byte sub_08147FC0
_08147EB0:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147ECE
	ldr r1, _08147ED4 @ =gUnk_0838725C
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147ED8 @ =sub_08147EDC
_08147ECC:
	str r0, [r4, #0x1c]
_08147ECE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147ED4: .4byte gUnk_0838725C
_08147ED8: .4byte sub_08147EDC

	thumb_func_start sub_08147EDC
sub_08147EDC: @ 0x08147EDC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147F34
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147F6C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147F34
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147F34
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147F34
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147F34:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147F70 @ =0x00001DFF
	cmp r1, r0
	ble _08147F7C
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _08147F74 @ =gUnk_0838725C
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147F78 @ =sub_08147FC0
	str r0, [r4, #0x1c]
	b _08147FB4
	.align 2, 0
_08147F6C: .4byte gUnk_08387348
_08147F70: .4byte 0x00001DFF
_08147F74: .4byte gUnk_0838725C
_08147F78: .4byte sub_08147FC0
_08147F7C:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147FBC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08147FB4
	ldr r0, [r4]
	cmp r0, #0
	beq _08147FAA
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147FAA
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08147FAA:
	ldr r3, _08147FBC @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08147FB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147FBC: .4byte 0x000005CC

	thumb_func_start sub_08147FC0
sub_08147FC0: @ 0x08147FC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147FEC
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147FEC
	movs r0, #0
	strh r0, [r4, #0xe]
_08147FEC:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148034
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148058 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148034
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148034
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148034
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148034:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148052
	ldr r1, _0814805C @ =gUnk_0838725C
	ldrh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08148060 @ =sub_08147C28
	str r0, [r4, #0x1c]
_08148052:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148058: .4byte gUnk_08387348
_0814805C: .4byte gUnk_0838725C
_08148060: .4byte sub_08147C28

	thumb_func_start sub_08148064
sub_08148064: @ 0x08148064
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081480B4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _0814810C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081480B4
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081480B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081480B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081480B4:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #8]
	cmp r0, r1
	blo _08148118
	movs r0, #0
	strh r0, [r6, #6]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _08148118
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _08148118
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r6]
	lsls r1, r1, #1
	strh r1, [r4, #0xe]
	ldrh r1, [r6, #2]
	strh r1, [r4, #0x10]
	ldr r2, _08148110 @ =gUnk_08387274
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08148114 @ =sub_0814815C
	str r0, [r4, #0x1c]
	b _08148150
	.align 2, 0
_0814810C: .4byte gUnk_08387348
_08148110: .4byte gUnk_08387274
_08148114: .4byte sub_0814815C
_08148118:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r2, _08148158 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08148150
	ldr r0, [r4]
	cmp r0, #0
	beq _08148146
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148146
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08148146:
	ldr r1, _08148158 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08148150:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148158: .4byte 0x000005CC

	thumb_func_start sub_0814815C
sub_0814815C: @ 0x0814815C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081481B4
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081481F4 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081481B4
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081481B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081481B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081481B4:
	ldrh r2, [r4, #0x10]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _081481EC
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r4, #0xc]
	subs r1, r1, r2
	movs r2, #0
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0xe]
	ldr r2, _081481F8 @ =gUnk_08387274
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _081481FC @ =sub_08149B30
	str r0, [r4, #0x1c]
_081481EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081481F4: .4byte gUnk_08387348
_081481F8: .4byte gUnk_08387274
_081481FC: .4byte sub_08149B30

	thumb_func_start sub_08148200
sub_08148200: @ 0x08148200
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0xc]
	adds r0, r0, r1
	strh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _08148250 @ =0x1DFF0000
	cmp r0, r1
	ble _08148248
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r4, [r5, #0x20]
	adds r4, r4, r0
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r5, #0xc]
	movs r0, #0
	strh r0, [r5, #0x10]
	ldr r1, _08148254 @ =gUnk_08387274
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	ldr r0, _08148258 @ =sub_0814825C
	str r0, [r5, #0x1c]
_08148248:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08148250: .4byte 0x1DFF0000
_08148254: .4byte gUnk_08387274
_08148258: .4byte sub_0814825C

	thumb_func_start sub_0814825C
sub_0814825C: @ 0x0814825C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	adds r5, r1, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0814828A
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	beq _0814829A
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _081482B6
_0814828A:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4, #0xc]
	cmp r0, r1
	blo _081482B6
_0814829A:
	movs r0, #0
	strh r0, [r4, #6]
	ldrh r0, [r4]
	strh r0, [r6, #0xe]
	ldr r1, _081482BC @ =gUnk_08387274
	ldrh r0, [r1, #4]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	ldr r0, _081482C0 @ =sub_08148064
	str r0, [r6, #0x1c]
_081482B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081482BC: .4byte gUnk_08387274
_081482C0: .4byte sub_08148064

	thumb_func_start sub_081482C4
sub_081482C4: @ 0x081482C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148314
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148360 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148314
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148314
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148314
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148314:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #8]
	cmp r0, r1
	blo _0814836C
	movs r0, #0
	strh r0, [r6, #6]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _0814836C
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _0814836C
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _08148364 @ =gUnk_08387284
	ldrh r1, [r2, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #6]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08148368 @ =sub_081483B0
	str r0, [r4, #0x1c]
	b _081483A4
	.align 2, 0
_08148360: .4byte gUnk_08387348
_08148364: .4byte gUnk_08387284
_08148368: .4byte sub_081483B0
_0814836C:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r2, _081483AC @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081483A4
	ldr r0, [r4]
	cmp r0, #0
	beq _0814839A
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814839A
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0814839A:
	ldr r1, _081483AC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081483A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081483AC: .4byte 0x000005CC

	thumb_func_start sub_081483B0
sub_081483B0: @ 0x081483B0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _081483E0
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081483E0
	movs r0, #0
	strh r0, [r4, #0xe]
_081483E0:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148428
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148458 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148428
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148428
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148428
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148428:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148450
	ldrh r0, [r7]
	lsls r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r1, _0814845C @ =gUnk_08387284
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08148460 @ =sub_08148464
	str r0, [r4, #0x1c]
_08148450:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148458: .4byte gUnk_08387348
_0814845C: .4byte gUnk_08387284
_08148460: .4byte sub_08148464

	thumb_func_start sub_08148464
sub_08148464: @ 0x08148464
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081484BC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081484FC @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081484BC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081484BC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081484BC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081484BC:
	ldrh r2, [r4, #0x10]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _081484F4
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r4, #0xc]
	subs r1, r1, r2
	movs r2, #0
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0xe]
	ldr r2, _08148500 @ =gUnk_08387284
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08148504 @ =sub_08149B90
	str r0, [r4, #0x1c]
_081484F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081484FC: .4byte gUnk_08387348
_08148500: .4byte gUnk_08387284
_08148504: .4byte sub_08149B90

	thumb_func_start sub_08148508
sub_08148508: @ 0x08148508
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	adds r5, r1, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08148536
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	beq _08148546
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08148562
_08148536:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4, #0xc]
	cmp r0, r1
	blo _08148562
_08148546:
	movs r0, #0
	strh r0, [r4, #6]
	ldrh r0, [r4]
	strh r0, [r6, #0xe]
	ldr r1, _08148568 @ =gUnk_08387284
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	ldr r0, _0814856C @ =sub_081482C4
	str r0, [r6, #0x1c]
_08148562:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148568: .4byte gUnk_08387284
_0814856C: .4byte sub_081482C4

	thumb_func_start sub_08148570
sub_08148570: @ 0x08148570
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r2, #2]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08148598
	movs r0, #1
	b _081485A2
_08148598:
	cmp r0, #0
	ble _081485A0
	movs r0, #2
	b _081485A2
_081485A0:
	movs r0, #0
_081485A2:
	strb r0, [r2, #8]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #6]
	movs r0, #1
	strb r0, [r2, #0xb]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081485B4
sub_081485B4: @ 0x081485B4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r3, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, #1
	beq _081485E2
	cmp r0, #1
	bgt _081485DC
	cmp r0, #0
	beq _081485E8
	b _081485EA
_081485DC:
	cmp r0, #2
	beq _081485E6
	b _081485EA
_081485E2:
	movs r0, #2
	b _081485E8
_081485E6:
	movs r0, #6
_081485E8:
	strb r0, [r2, #9]
_081485EA:
	ldr r1, _08148614 @ =gUnk_0838729C
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_08155128
	ldr r0, _08148618 @ =sub_0814861C
	str r0, [r4, #0x1c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08148614: .4byte gUnk_0838729C
_08148618: .4byte sub_0814861C

	thumb_func_start sub_0814861C
sub_0814861C: @ 0x0814861C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r7, r1, r0
	ldrh r0, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	adds r1, r0, r2
	strh r1, [r5, #0xa]
	ldrh r0, [r5, #0x10]
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	strh r0, [r5, #0xc]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08148684
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081486C4 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148684
	adds r0, r5, #0
	bl sub_08146B68
	adds r0, r5, #0
	bl sub_08146BEC
	adds r6, r0, #0
	cmp r6, #0
	beq _08148684
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148684
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08149814
_08148684:
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, r1
	blo _08148748
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	beq _08148748
	ldrb r0, [r4, #0xa]
	adds r1, r0, #1
	strb r1, [r4, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _08148748
	ldrb r1, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r5, #0x10]
	cmp r1, #1
	beq _081486CE
	cmp r1, #1
	bgt _081486C8
	cmp r1, #0
	beq _081486E8
	b _0814871C
	.align 2, 0
_081486C4: .4byte gUnk_08387348
_081486C8:
	cmp r1, #2
	beq _08148702
	b _0814871C
_081486CE:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _081486DC
	strb r3, [r4, #8]
	movs r0, #3
	b _0814871A
_081486DC:
	cmp r0, #0
	ble _0814871C
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #4
	b _0814871A
_081486E8:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _081486F6
	movs r0, #1
	strb r0, [r4, #8]
	b _0814871A
_081486F6:
	cmp r0, #0
	ble _0814871C
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #5
	b _0814871A
_08148702:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08148712
	movs r0, #1
	strb r0, [r4, #8]
	movs r0, #8
	b _0814871A
_08148712:
	cmp r0, #0
	bne _0814871C
	strb r3, [r4, #8]
	movs r0, #7
_0814871A:
	strb r0, [r4, #9]
_0814871C:
	ldrb r0, [r4, #8]
	cmp r1, r0
	beq _08148748
	ldr r1, _08148744 @ =gUnk_0838729C
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	b _081487B6
	.align 2, 0
_08148744: .4byte gUnk_0838729C
_08148748:
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _081487B6
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldrb r0, [r4, #9]
	subs r0, #1
	cmp r0, #7
	bhi _081487B6
	lsls r0, r0, #2
	ldr r1, _08148768 @ =_0814876C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08148768: .4byte _0814876C
_0814876C: @ jump table
	.4byte _0814878C @ case 0
	.4byte _081487B6 @ case 1
	.4byte _08148790 @ case 2
	.4byte _08148794 @ case 3
	.4byte _08148794 @ case 4
	.4byte _081487B6 @ case 5
	.4byte _08148790 @ case 6
	.4byte _0814878C @ case 7
_0814878C:
	movs r0, #2
	b _08148796
_08148790:
	movs r0, #0
	b _08148796
_08148794:
	movs r0, #6
_08148796:
	strb r0, [r4, #9]
	ldr r1, _081487BC @ =gUnk_0838729C
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
_081487B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081487BC: .4byte gUnk_0838729C

	thumb_func_start sub_081487C0
sub_081487C0: @ 0x081487C0
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r2, #2]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _081487E8
	movs r0, #1
	b _081487F2
_081487E8:
	cmp r0, #0
	ble _081487F0
	movs r0, #2
	b _081487F2
_081487F0:
	movs r0, #0
_081487F2:
	strb r0, [r2, #8]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #6]
	movs r0, #1
	strb r0, [r2, #0xb]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08148804
sub_08148804: @ 0x08148804
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x24
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r5, #0x20]
	adds r6, r0, r1
	ldrb r0, [r3, #8]
	cmp r0, #1
	beq _08148832
	cmp r0, #1
	bgt _0814882C
	cmp r0, #0
	beq _08148838
	b _0814883A
_0814882C:
	cmp r0, #2
	beq _08148836
	b _0814883A
_08148832:
	movs r0, #3
	b _08148838
_08148836:
	movs r0, #6
_08148838:
	strb r0, [r3, #9]
_0814883A:
	movs r0, #0
	strb r0, [r3, #0xf]
	ldr r1, _08148890 @ =gUnk_08D626D4
	ldrb r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r2, #0
	ldrb r0, [r4]
	ldrb r1, [r3, #9]
	ldr r7, _08148894 @ =gUnk_083872C0
	mov ip, r7
	adds r7, r1, #0
	cmp r0, r1
	beq _08148866
_08148858:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, r1
	bne _08148858
_08148866:
	strb r2, [r3, #0xe]
	lsls r0, r7, #2
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrb r0, [r3, #9]
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08148898 @ =sub_0814889C
	str r0, [r5, #0x1c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148890: .4byte gUnk_08D626D4
_08148894: .4byte gUnk_083872C0
_08148898: .4byte sub_0814889C

	thumb_func_start sub_0814889C
sub_0814889C: @ 0x0814889C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	adds r1, r1, r0
	mov r8, r1
	ldrh r0, [r6, #0xe]
	ldrh r2, [r6, #0xa]
	adds r1, r0, r2
	strh r1, [r6, #0xa]
	ldrh r0, [r6, #0x10]
	ldrh r2, [r6, #0xc]
	adds r0, r0, r2
	strh r0, [r6, #0xc]
	ldrb r0, [r6]
	cmp r0, #0
	beq _0814890A
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148948 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814890A
	adds r0, r6, #0
	bl sub_08146B68
	adds r0, r6, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _0814890A
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814890A
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08149814
_0814890A:
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, r1
	blo _081489F8
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	beq _081489F8
	ldrb r0, [r4, #0xa]
	adds r1, r0, #1
	strb r1, [r4, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _081489F8
	ldrb r7, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r6, #0x10]
	cmp r7, #1
	beq _08148952
	cmp r7, #1
	bgt _0814894C
	cmp r7, #0
	beq _0814896C
	b _081489A0
	.align 2, 0
_08148948: .4byte gUnk_08387348
_0814894C:
	cmp r7, #2
	beq _08148988
	b _081489A0
_08148952:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08148960
	strb r3, [r4, #8]
	movs r0, #5
	b _0814899E
_08148960:
	cmp r0, #0
	ble _081489A0
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #5
	b _0814899E
_0814896C:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0814897C
	movs r0, #1
	strb r0, [r4, #8]
	movs r0, #3
	b _0814899E
_0814897C:
	cmp r0, #0
	ble _081489A0
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #6
	b _0814899E
_08148988:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08148996
	movs r0, #1
	strb r0, [r4, #8]
	b _0814899C
_08148996:
	cmp r0, #0
	bne _081489A0
	strb r3, [r4, #8]
_0814899C:
	movs r0, #8
_0814899E:
	strb r0, [r4, #9]
_081489A0:
	ldr r1, _081489F0 @ =gUnk_08D626D4
	ldrb r2, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r5, [r0]
	movs r3, #0
	ldrb r0, [r5]
	ldrb r1, [r4, #9]
	cmp r0, r1
	beq _081489C2
_081489B4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, r1
	bne _081489B4
_081489C2:
	strb r3, [r4, #0xe]
	cmp r7, r2
	beq _081489F8
	movs r0, #0
	strb r0, [r4, #0xf]
	ldr r1, _081489F4 @ =gUnk_083872C0
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r2, r8
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	mov r0, r8
	bl sub_08155128
	b _08148A72
	.align 2, 0
_081489F0: .4byte gUnk_08D626D4
_081489F4: .4byte gUnk_083872C0
_081489F8:
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _08148A72
	ldrb r0, [r4, #0xe]
	mov ip, r0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldr r2, _08148A28 @ =gUnk_08D626D4
	ldrb r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldrb r5, [r4, #0xe]
	ldr r0, [r0]
	adds r3, r5, r0
	ldrb r0, [r3, #1]
	adds r7, r1, #0
	cmp r0, #0xff
	beq _08148A2C
	adds r0, r5, #1
	b _08148A2E
	.align 2, 0
_08148A28: .4byte gUnk_08D626D4
_08148A2C:
	ldrb r0, [r3, #2]
_08148A2E:
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp ip, r0
	beq _08148A72
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r6, #0x20]
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r1, r1, r2
	ldrb r2, [r4, #0xe]
	ldr r1, [r1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r4, #9]
	ldr r2, _08148A7C @ =gUnk_083872C0
	ldrb r1, [r4, #9]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #9]
	lsls r1, r1, #2
	adds r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	bl sub_08155128
_08148A72:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148A7C: .4byte gUnk_083872C0

	thumb_func_start sub_08148A80
sub_08148A80: @ 0x08148A80
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r2, #2]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08148AA8
	movs r0, #1
	b _08148AB2
_08148AA8:
	cmp r0, #0
	ble _08148AB0
	movs r0, #2
	b _08148AB2
_08148AB0:
	movs r0, #0
_08148AB2:
	strb r0, [r2, #8]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #6]
	movs r0, #1
	strb r0, [r2, #0xb]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08148AC4
sub_08148AC4: @ 0x08148AC4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r3, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, #1
	beq _08148AF0
	cmp r0, #1
	bgt _08148AEC
	cmp r0, #0
	beq _08148AF0
	b _08148AF2
_08148AEC:
	cmp r0, #2
	bne _08148AF2
_08148AF0:
	strb r0, [r2, #9]
_08148AF2:
	ldr r1, _08148B1C @ =gUnk_083872F4
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_08155128
	ldr r0, _08148B20 @ =sub_08148B24
	str r0, [r4, #0x1c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08148B1C: .4byte gUnk_083872F4
_08148B20: .4byte sub_08148B24

	thumb_func_start sub_08148B24
sub_08148B24: @ 0x08148B24
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r7, r1, r0
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148B8C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148BC8 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148B8C
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148B8C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148B8C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148B8C:
	ldrh r0, [r6, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #6]
	cmp r0, r1
	blo _08148C08
	movs r0, #0
	strh r0, [r6, #4]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _08148C08
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _08148C08
	ldrb r1, [r6, #8]
	ldrh r0, [r6, #2]
	strh r0, [r4, #0x10]
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _08148BCC
	movs r0, #1
	b _08148BD2
	.align 2, 0
_08148BC8: .4byte gUnk_08387348
_08148BCC:
	cmp r0, #0
	ble _08148BD8
	movs r0, #2
_08148BD2:
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	b _08148BDC
_08148BD8:
	strb r3, [r6, #8]
	strb r3, [r6, #9]
_08148BDC:
	ldrb r0, [r6, #8]
	cmp r1, r0
	beq _08148C08
	ldr r1, _08148C04 @ =gUnk_083872F4
	ldrb r0, [r6, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r6, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	b _08148C16
	.align 2, 0
_08148C04: .4byte gUnk_083872F4
_08148C08:
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148C16
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08148C16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08148C1C
sub_08148C1C: @ 0x08148C1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _08148C40
	movs r0, #0
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x24]
	bl m4aSongNumStart
_08148C40:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #0x10]
	ldrh r3, [r4, #0xc]
	adds r0, r0, r3
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148C90
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148CD0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148C90
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148C90
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148C90
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148C90:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08148CD4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08148CC8
	ldr r0, [r4]
	cmp r0, #0
	beq _08148CBE
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148CBE
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08148CBE:
	ldr r2, _08148CD4 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08148CC8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148CD0: .4byte gUnk_08387348
_08148CD4: .4byte 0x000005CC

	thumb_func_start sub_08148CD8
sub_08148CD8: @ 0x08148CD8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08149C80
	adds r0, r4, #0
	bl sub_08148F04
	adds r0, r4, #0
	bl sub_08148F7C
	ldr r1, _08148D1C @ =gUnk_083871D8
	ldr r0, _08148D20 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r6, _08148D24 @ =gUnk_03002440
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08148D2C
	ldr r1, _08148D28 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x50
	bl sub_08158334
	b _08148D4A
	.align 2, 0
_08148D1C: .4byte gUnk_083871D8
_08148D20: .4byte gUnk_08D60A80
_08148D24: .4byte gUnk_03002440
_08148D28: .4byte gUnk_082D7850
_08148D2C:
	ldr r2, _08148D80 @ =0x040000D4
	ldr r1, _08148D84 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _08148D88 @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _08148D8C @ =0x80000050
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r6]
_08148D4A:
	ldr r1, _08148D90 @ =gUnk_083871D8
	ldr r0, _08148D94 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r6, _08148D98 @ =gUnk_03002440
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08148D9C
	ldr r1, _08148D84 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x80
	movs r2, #0x80
	bl sub_08158334
	b _08148DC2
	.align 2, 0
_08148D80: .4byte 0x040000D4
_08148D84: .4byte gUnk_082D7850
_08148D88: .4byte gBgPalette
_08148D8C: .4byte 0x80000050
_08148D90: .4byte gUnk_083871D8
_08148D94: .4byte gUnk_08D60A80
_08148D98: .4byte gUnk_03002440
_08148D9C:
	ldr r2, _08148E04 @ =0x040000D4
	ldr r1, _08148E08 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08148E0C @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08148E10 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r6]
_08148DC2:
	adds r0, r4, #0
	bl sub_08148E24
	adds r0, r4, #0
	adds r0, #0x24
	ldr r2, _08148E14 @ =gUnk_08D62518
	ldr r1, _08148E18 @ =gUnk_08D60A80
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r1, [r1]
	bl sub_0814F3C4
	ldrh r1, [r4, #0x2a]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r4, #0x2a]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _08148E1C @ =0x000013F8
	adds r1, r4, r0
	ldr r0, _08148E20 @ =sub_08148FF8
	str r0, [r1]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08148E04: .4byte 0x040000D4
_08148E08: .4byte gUnk_082D7850
_08148E0C: .4byte gBgPalette
_08148E10: .4byte 0x80000080
_08148E14: .4byte gUnk_08D62518
_08148E18: .4byte gUnk_08D60A80
_08148E1C: .4byte 0x000013F8
_08148E20: .4byte sub_08148FF8

	thumb_func_start sub_08148E24
sub_08148E24: @ 0x08148E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	mov r2, sp
	adds r2, #6
	strb r0, [r2]
	ldr r1, _08148E58 @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r4, _08148E5C @ =gUnk_03002440
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	mov r8, r2
	cmp r0, #0
	beq _08148E60
	mov r0, sp
	movs r1, #0x81
	movs r2, #1
	bl sub_08158334
	b _08148E76
	.align 2, 0
_08148E58: .4byte 0x0000FFFF
_08148E5C: .4byte gUnk_03002440
_08148E60:
	ldr r1, _08148EE0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08148EE4 @ =gUnk_030038A2
	str r0, [r1, #4]
	ldr r0, _08148EE8 @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_08148E76:
	movs r5, #0
	mov r0, sp
	adds r0, #2
	adds r7, r0, #0
	add r6, sp, #4
_08148E80:
	mov r1, r8
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r1, _08148EEC @ =gBgCntRegs
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x12
	movs r0, #3
	ands r1, r0
	lsrs r4, r4, #0x18
	movs r0, #0x1f
	ands r4, r0
	ldr r2, _08148EF0 @ =0x00001111
	adds r0, r2, #0
	strh r0, [r7]
	lsls r1, r1, #0xe
	ldr r0, _08148EF4 @ =0x06003FC0
	adds r1, r1, r0
	adds r0, r7, #0
	ldr r2, _08148EF8 @ =0x01000010
	bl CpuSet
	ldr r1, _08148EFC @ =0x000081FE
	adds r0, r1, #0
	strh r0, [r6]
	lsls r4, r4, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, _08148F00 @ =0x01000280
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08148E80
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148EE0: .4byte 0x040000D4
_08148EE4: .4byte gUnk_030038A2
_08148EE8: .4byte 0x80000001
_08148EEC: .4byte gBgCntRegs
_08148EF0: .4byte 0x00001111
_08148EF4: .4byte 0x06003FC0
_08148EF8: .4byte 0x01000010
_08148EFC: .4byte 0x000081FE
_08148F00: .4byte 0x01000280

	thumb_func_start sub_08148F04
sub_08148F04: @ 0x08148F04
	push {r4, r5, r6, r7, lr}
	ldr r1, _08148F64 @ =gUnk_083871D8
	ldr r0, _08148F68 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08148F6C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08148F70 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _08148F74 @ =0x06000800
	adds r6, r2, r3
	lsls r1, r1, #0xe
	ldr r2, _08148F78 @ =0x06002000
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08148F5E
_08148F48:
	lsls r1, r4, #6
	adds r0, r7, r1
	adds r1, r6, r1
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08148F48
_08148F5E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148F64: .4byte gUnk_083871D8
_08148F68: .4byte gUnk_08D60A80
_08148F6C: .4byte gUnk_082D7850
_08148F70: .4byte gBgCntRegs
_08148F74: .4byte 0x06000800
_08148F78: .4byte 0x06002000

	thumb_func_start sub_08148F7C
sub_08148F7C: @ 0x08148F7C
	push {r4, r5, r6, r7, lr}
	movs r3, #3
	ldr r1, _08148FE0 @ =gUnk_083871D8
	ldr r0, _08148FE4 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08148FE8 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08148FEC @ =gBgCntRegs
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _08148FF0 @ =0x06000800
	adds r6, r2, r3
	lsls r1, r1, #0xe
	ldr r2, _08148FF4 @ =0x06003000
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08148FD8
_08148FC2:
	lsls r1, r4, #6
	adds r0, r7, r1
	adds r1, r6, r1
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08148FC2
_08148FD8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148FE0: .4byte gUnk_083871D8
_08148FE4: .4byte gUnk_08D60A80
_08148FE8: .4byte gUnk_082D7850
_08148FEC: .4byte gBgCntRegs
_08148FF0: .4byte 0x06000800
_08148FF4: .4byte 0x06003000

	thumb_func_start sub_08148FF8
sub_08148FF8: @ 0x08148FF8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_081465C4
	ldr r1, _08149078 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149022
	ldr r0, _0814907C @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_08149010:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0814901C
	adds r0, r2, r0
	strb r3, [r0]
_0814901C:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149010
_08149022:
	ldr r1, _08149078 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08149040
_0814902C:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _0814902C
_08149040:
	ldr r1, _08149080 @ =gUnk_083877EE
	ldr r0, [r5]
	ldrh r2, [r1]
	cmp r0, r2
	blo _0814906A
	ldrh r0, [r1, #2]
	lsrs r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, _08149084 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _08149088 @ =sub_0814908C
	str r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_0814906A:
	adds r0, r5, #0
	bl sub_08146C60
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08149078: .4byte 0x000013EC
_0814907C: .4byte 0x000005CC
_08149080: .4byte gUnk_083877EE
_08149084: .4byte 0x000013F8
_08149088: .4byte sub_0814908C

	thumb_func_start sub_0814908C
sub_0814908C: @ 0x0814908C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_081465C4
	ldr r1, _0814913C @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _081490B6
	ldr r3, _08149140 @ =0x000005CC
	adds r2, r5, r3
	movs r3, #0
_081490A4:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _081490B0
	adds r0, r2, r0
	strb r3, [r0]
_081490B0:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _081490A4
_081490B6:
	ldr r1, _0814913C @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	adds r6, r5, #0
	adds r6, #0x46
	cmp r4, #0
	beq _081490D8
_081490C4:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _081490C4
_081490D8:
	ldrh r2, [r6]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08149102
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	ldr r1, _08149144 @ =gBgScrollRegs
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r1]
	cmp r0, #0xff
	ble _08149102
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #0
	strh r0, [r6]
_08149102:
	ldr r1, _08149148 @ =gUnk_083877EE
	ldr r0, [r5]
	ldrh r1, [r1, #4]
	cmp r0, r1
	blo _0814912E
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0814912E
	ldr r0, _0814914C @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _08149150 @ =sub_08149154
	str r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #8]
_0814912E:
	adds r0, r5, #0
	bl sub_08146C60
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814913C: .4byte 0x000013EC
_08149140: .4byte 0x000005CC
_08149144: .4byte gBgScrollRegs
_08149148: .4byte gUnk_083877EE
_0814914C: .4byte 0x000013F8
_08149150: .4byte sub_08149154

	thumb_func_start sub_08149154
sub_08149154: @ 0x08149154
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _08149240 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0814918C
	ldr r3, _08149244 @ =0x000005CC
	adds r2, r5, r3
	movs r3, #0
_0814917A:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08149186
	adds r0, r2, r0
	strb r3, [r0]
_08149186:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _0814917A
_0814918C:
	ldr r1, _08149240 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _081491AA
_08149196:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _08149196
_081491AA:
	adds r0, r5, #0
	bl sub_08146C60
	ldrh r1, [r5, #0x2a]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r5, #0x2a]
	ldr r2, _08149248 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814924C @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08149250 @ =gUnk_083871D8
	ldr r0, _08149254 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08149258 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r6, [r1, #2]
	ldr r1, _0814925C @ =gBgCntRegs
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _08149260 @ =0x06000800
	adds r7, r2, r3
	lsls r1, r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _08149226
_0814920A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0814920A
_08149226:
	ldr r0, _08149264 @ =0x00000212
	bl m4aSongNumStart
	ldr r3, _08149268 @ =0x000013F8
	adds r1, r5, r3
	ldr r0, _0814926C @ =sub_08149270
	str r0, [r1]
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08149240: .4byte 0x000013EC
_08149244: .4byte 0x000005CC
_08149248: .4byte gDispCnt
_0814924C: .4byte 0x0000F7FF
_08149250: .4byte gUnk_083871D8
_08149254: .4byte gUnk_08D60A80
_08149258: .4byte gUnk_082D7850
_0814925C: .4byte gBgCntRegs
_08149260: .4byte 0x06000800
_08149264: .4byte 0x00000212
_08149268: .4byte 0x000013F8
_0814926C: .4byte sub_08149270

	thumb_func_start sub_08149270
sub_08149270: @ 0x08149270
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08149308 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149296
	ldr r0, _0814930C @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_08149284:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08149290
	adds r0, r2, r0
	strb r3, [r0]
_08149290:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149284
_08149296:
	ldr r1, _08149308 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	adds r6, r5, #0
	adds r6, #0x24
	cmp r4, #0
	beq _081492B8
_081492A4:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _081492A4
_081492B8:
	adds r0, r5, #0
	bl sub_08146C60
	adds r0, r6, #0
	bl sub_0814F274
	cmp r0, #0
	beq _081492D0
	ldrh r1, [r5, #0x2a]
	ldr r0, _08149310 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r5, #0x2a]
_081492D0:
	ldrh r1, [r5, #0x2a]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08149300
	ldr r2, _08149314 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08149318 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0814931C @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _08149320 @ =0x000013FC
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08149324 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _08149328 @ =sub_0814932C
	str r0, [r1]
_08149300:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08149308: .4byte 0x000013EC
_0814930C: .4byte 0x000005CC
_08149310: .4byte 0x0000FFBF
_08149314: .4byte gDispCnt
_08149318: .4byte 0x0000FEFF
_0814931C: .4byte gBldRegs
_08149320: .4byte 0x000013FC
_08149324: .4byte 0x000013F8
_08149328: .4byte sub_0814932C

	thumb_func_start sub_0814932C
sub_0814932C: @ 0x0814932C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08149398 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149352
	ldr r0, _0814939C @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_08149340:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0814934C
	adds r0, r2, r0
	strb r3, [r0]
_0814934C:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149340
_08149352:
	ldr r1, _08149398 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08149370
_0814935C:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _0814935C
_08149370:
	adds r0, r5, #0
	bl sub_08146C60
	ldr r0, _081493A0 @ =0x000013FC
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08149390
	ldr r0, _081493A4 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _081493A8 @ =sub_08149C68
	str r0, [r1]
_08149390:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08149398: .4byte 0x000013EC
_0814939C: .4byte 0x000005CC
_081493A0: .4byte 0x000013FC
_081493A4: .4byte 0x000013F8
_081493A8: .4byte sub_08149C68

	thumb_func_start sub_081493AC
sub_081493AC: @ 0x081493AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _08149430 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _081493E0
	ldr r0, _08149434 @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_081493CE:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _081493DA
	adds r0, r2, r0
	strb r3, [r0]
_081493DA:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _081493CE
_081493E0:
	ldr r1, _08149430 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _081493FE
_081493EA:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _081493EA
_081493FE:
	adds r0, r5, #0
	bl sub_08146C60
	ldr r2, _08149438 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814943C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08149440 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08149444 @ =0x000013FC
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08149448 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _0814944C @ =sub_08149450
	str r0, [r1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08149430: .4byte 0x000013EC
_08149434: .4byte 0x000005CC
_08149438: .4byte gDispCnt
_0814943C: .4byte 0x0000FEFF
_08149440: .4byte gBldRegs
_08149444: .4byte 0x000013FC
_08149448: .4byte 0x000013F8
_0814944C: .4byte sub_08149450

	thumb_func_start sub_08149450
sub_08149450: @ 0x08149450
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _081494CC @ =0x000013EC
	adds r0, r6, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149476
	ldr r0, _081494D0 @ =0x000005CC
	adds r2, r6, r0
	movs r3, #0
_08149464:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08149470
	adds r0, r2, r0
	strb r3, [r0]
_08149470:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149464
_08149476:
	ldr r1, _081494CC @ =0x000013EC
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08149494
_08149480:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _08149480
_08149494:
	adds r0, r6, #0
	bl sub_08146C60
	ldr r1, _081494D4 @ =0x000013FC
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _081494D8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x1e
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _081494C4
	ldr r0, _081494DC @ =0x000013F8
	adds r1, r6, r0
	ldr r0, _081494E0 @ =sub_08149C68
	str r0, [r1]
_081494C4:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081494CC: .4byte 0x000013EC
_081494D0: .4byte 0x000005CC
_081494D4: .4byte 0x000013FC
_081494D8: .4byte gBldRegs
_081494DC: .4byte 0x000013F8
_081494E0: .4byte sub_08149C68

	thumb_func_start sub_081494E4
sub_081494E4: @ 0x081494E4
	ldr r2, _081494FC @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, _08149500 @ =sub_08149504
	str r1, [r0]
	bx lr
	.align 2, 0
_081494FC: .4byte gBldRegs
_08149500: .4byte sub_08149504

	thumb_func_start sub_08149504
sub_08149504: @ 0x08149504
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08149558 @ =gBldRegs
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08149550
	movs r5, #0
_0814951A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08149532
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_08149532:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _0814951A
	ldr r2, _0814955C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08149560 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #5
	adds r1, r6, r0
	ldr r0, _08149564 @ =sub_08149568
	str r0, [r1]
_08149550:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08149558: .4byte gBldRegs
_0814955C: .4byte gDispCnt
_08149560: .4byte 0x0000FEFF
_08149564: .4byte sub_08149568

	thumb_func_start sub_08149568
sub_08149568: @ 0x08149568
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _081495A0 @ =gBgScrollRegs
	movs r5, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldr r1, _081495A4 @ =gUnk_083871D8
	ldr r0, _081495A8 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0
	bl sub_081495B4
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r4, r1
	str r5, [r0]
	ldr r0, _081495AC @ =0x000013F8
	adds r4, r4, r0
	ldr r0, _081495B0 @ =sub_08149C68
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081495A0: .4byte gBgScrollRegs
_081495A4: .4byte gUnk_083871D8
_081495A8: .4byte gUnk_08D60A80
_081495AC: .4byte 0x000013F8
_081495B0: .4byte sub_08149C68

	thumb_func_start sub_081495B4
sub_081495B4: @ 0x081495B4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _08149620 @ =gUnk_082D7850
	lsrs r1, r1, #0xe
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r4, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08149624 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r0, r0, #0x18
	movs r3, #0x1f
	ands r0, r3
	lsls r0, r0, #0xb
	lsrs r2, r2, #0x13
	lsls r2, r2, #6
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	adds r6, r0, r2
	lsls r1, r1, #0xe
	adds r1, r1, r3
	adds r0, r4, #0
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814961A
_081495FE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _081495FE
_0814961A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149620: .4byte gUnk_082D7850
_08149624: .4byte gBgCntRegs

	thumb_func_start sub_08149628
sub_08149628: @ 0x08149628
	push {lr}
	ldr r2, _08149638 @ =0x00001410
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08149638: .4byte 0x00001410

	thumb_func_start sub_0814963C
sub_0814963C: @ 0x0814963C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08149668 @ =gUnk_083877EE
	ldr r0, [r4]
	ldrh r1, [r1, #0x12]
	cmp r0, r1
	blo _08149660
	ldr r0, _0814966C @ =0x00001419
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08149670 @ =0x00000266
	bl m4aSongNumStart
	ldr r0, _08149674 @ =0x00001410
	adds r1, r4, r0
	ldr r0, _08149678 @ =sub_08145E84
	str r0, [r1]
_08149660:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08149668: .4byte gUnk_083877EE
_0814966C: .4byte 0x00001419
_08149670: .4byte 0x00000266
_08149674: .4byte 0x00001410
_08149678: .4byte sub_08145E84

	thumb_func_start nullsub_133
nullsub_133: @ 0x0814967C
	bx lr
	.align 2, 0

	thumb_func_start sub_08149680
sub_08149680: @ 0x08149680
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _081496BC @ =gBgScrollRegs
	ldr r1, _081496C0 @ =0x00001414
	adds r7, r0, r1
	adds r1, r5, #2
	mov ip, r1
	ldr r1, _081496C4 @ =0x00001415
	adds r6, r0, r1
_08149692:
	lsls r2, r4, #2
	adds r3, r2, r5
	movs r1, #0
	ldrsb r1, [r7, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	add r2, ip
	movs r1, #0
	ldrsb r1, [r6, r1]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08149692
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081496BC: .4byte gBgScrollRegs
_081496C0: .4byte 0x00001414
_081496C4: .4byte 0x00001415

	thumb_func_start sub_081496C8
sub_081496C8: @ 0x081496C8
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r4, _08149704 @ =gBgScrollRegs
	ldr r1, _08149708 @ =0x00001414
	adds r6, r0, r1
	adds r2, r4, #2
	mov ip, r2
	ldr r7, _0814970C @ =0x00001415
	adds r5, r0, r7
_081496DA:
	lsls r1, r3, #2
	adds r2, r1, r4
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	add r1, ip
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _081496DA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149704: .4byte gBgScrollRegs
_08149708: .4byte 0x00001414
_0814970C: .4byte 0x00001415

	thumb_func_start sub_08149710
sub_08149710: @ 0x08149710
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r6, _08149750 @ =gUnk_083877EE
	lsls r4, r2, #1
	adds r5, r4, r2
	adds r0, r5, #3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldr r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0814974A
	adds r1, r3, #0
	adds r1, #0x36
	adds r1, r1, r4
	adds r0, r5, #4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #2
	strh r0, [r1]
	lsls r1, r2, #2
	adds r0, r3, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r1, _08149754 @ =sub_08146308
	str r1, [r0]
_0814974A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08149750: .4byte gUnk_083877EE
_08149754: .4byte sub_08146308

	thumb_func_start sub_08149758
sub_08149758: @ 0x08149758
	push {lr}
	adds r3, r0, #0
	ldr r1, _08149794 @ =0x0000140C
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r0, [r3]
	adds r0, r0, r1
	ldr r1, _08149798 @ =gUnk_083877EE
	ldrh r1, [r1, #0x20]
	cmp r0, r1
	blo _08149790
	ldr r1, _0814979C @ =gBldRegs
	movs r2, #0
	movs r0, #0x82
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, [r3, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3, #8]
	ldr r1, _081497A0 @ =0x0000140E
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _081497A4 @ =0x00001408
	adds r1, r3, r0
	ldr r0, _081497A8 @ =sub_0814654C
	str r0, [r1]
_08149790:
	pop {r0}
	bx r0
	.align 2, 0
_08149794: .4byte 0x0000140C
_08149798: .4byte gUnk_083877EE
_0814979C: .4byte gBldRegs
_081497A0: .4byte 0x0000140E
_081497A4: .4byte 0x00001408
_081497A8: .4byte sub_0814654C

	thumb_func_start nullsub_134
nullsub_134: @ 0x081497AC
	bx lr
	.align 2, 0

	thumb_func_start sub_081497B0
sub_081497B0: @ 0x081497B0
	movs r0, #0
	bx lr

	thumb_func_start sub_081497B4
sub_081497B4: @ 0x081497B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5, #0x20]
	ldr r2, _081497F4 @ =0x000013EC
	adds r0, r1, r2
	ldr r3, [r0]
	cmp r3, #0
	beq _081497FE
	adds r4, r1, #0
	adds r4, #0x48
_081497CA:
	cmp r3, r5
	beq _081497F8
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r4, r1
	movs r2, #3
	ldrsb r2, [r5, r2]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _081497F8
	movs r0, #0
	b _0814980E
	.align 2, 0
_081497F4: .4byte 0x000013EC
_081497F8:
	ldr r3, [r3, #0x18]
	cmp r3, #0
	bne _081497CA
_081497FE:
	ldr r0, [r6]
	cmp r0, #0
	beq _0814980C
	bl sub_08157190
	movs r0, #0
	str r0, [r6]
_0814980C:
	movs r0, #1
_0814980E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08149814
sub_08149814: @ 0x08149814
	push {r4, r5, lr}
	ldr r4, [r0, #0x20]
	movs r3, #0
	movs r5, #3
	ldrsb r5, [r0, r5]
_0814981E:
	cmp r3, r5
	beq _0814983E
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0x48
	adds r2, r4, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _0814983E
	ldrb r0, [r2, #0x1f]
	ldrb r2, [r1, #0x1f]
	cmp r0, r2
	bne _0814983E
	movs r0, #0
	b _0814985C
_0814983E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bls _0814981E
	adds r0, r4, #0
	adds r0, #0x12
	ldrb r1, [r1, #0x1f]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r4, #0x11]
	subs r0, #1
	strb r0, [r4, #0x11]
	movs r0, #1
_0814985C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08149864
sub_08149864: @ 0x08149864
	adds r0, #0x24
	ldrb r2, [r1, #0xf]
	lsrs r2, r2, #1
	strb r2, [r0, #1]
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08149874
sub_08149874: @ 0x08149874
	ldr r1, _0814987C @ =sub_08146E3C
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
_0814987C: .4byte sub_08146E3C

	thumb_func_start sub_08149880
sub_08149880: @ 0x08149880
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r1, r2
	strh r1, [r4, #0xa]
	bl sub_08155128
	cmp r0, #0
	bne _081498AA
	strh r0, [r4, #0xe]
	ldr r0, _081498B0 @ =sub_08146EE8
	str r0, [r4, #0x1c]
_081498AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081498B0: .4byte sub_08146EE8

	thumb_func_start sub_081498B4
sub_081498B4: @ 0x081498B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x24
	ldr r2, [r5, #0x20]
	ldr r1, _08149904 @ =gUnk_083877E0
	ldrb r4, [r3, #1]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _081498FC
	adds r0, r4, #1
	movs r1, #0
	strb r0, [r3, #1]
	strb r1, [r3, #8]
	movs r0, #0x15
	strb r0, [r3, #0xa]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	ldr r2, _08149908 @ =gUnk_08387208
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _0814990C @ =sub_08147078
	str r0, [r5, #0x1c]
_081498FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08149904: .4byte gUnk_083877E0
_08149908: .4byte gUnk_08387208
_0814990C: .4byte sub_08147078

	thumb_func_start sub_08149910
sub_08149910: @ 0x08149910
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r4, r1, r0
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bne _0814993C
	ldr r0, _08149960 @ =0x00000259
	bl m4aSongNumStart
_0814993C:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814995A
	ldr r1, _08149964 @ =gUnk_08387208
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _08149968 @ =sub_081470EC
	str r0, [r5, #0x1c]
_0814995A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08149960: .4byte 0x00000259
_08149964: .4byte gUnk_08387208
_08149968: .4byte sub_081470EC

	thumb_func_start sub_0814996C
sub_0814996C: @ 0x0814996C
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _0814997C @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xa
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_0814997C: .4byte 0x0000025B

	thumb_func_start sub_08149980
sub_08149980: @ 0x08149980
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149990 @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xa
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149990: .4byte 0x0000025B

	thumb_func_start sub_08149994
sub_08149994: @ 0x08149994
	adds r2, r0, #0
	adds r2, #0x24
	movs r3, #0
	ldr r1, _081499A8 @ =0x00000261
	strh r1, [r0, #0x24]
	movs r0, #0xa
	strh r0, [r2, #2]
	strh r3, [r2, #4]
	bx lr
	.align 2, 0
_081499A8: .4byte 0x00000261

	thumb_func_start sub_081499AC
sub_081499AC: @ 0x081499AC
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499BC @ =0x00000262
	strh r1, [r0, #0x24]
	movs r0, #0x14
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499BC: .4byte 0x00000262

	thumb_func_start sub_081499C0
sub_081499C0: @ 0x081499C0
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499D0 @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xc
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499D0: .4byte 0x0000025B

	thumb_func_start sub_081499D4
sub_081499D4: @ 0x081499D4
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499E4 @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xc
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499E4: .4byte 0x0000025B

	thumb_func_start sub_081499E8
sub_081499E8: @ 0x081499E8
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499F8 @ =0x0000026B
	strh r1, [r0, #0x24]
	movs r0, #0x3c
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499F8: .4byte 0x0000026B

	thumb_func_start sub_081499FC
sub_081499FC: @ 0x081499FC
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A0C @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #0xf
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A0C: .4byte 0x0000025E

	thumb_func_start sub_08149A10
sub_08149A10: @ 0x08149A10
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A24 @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #0x10
	strh r0, [r2, #2]
	movs r0, #0xb
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A24: .4byte 0x0000025E

	thumb_func_start sub_08149A28
sub_08149A28: @ 0x08149A28
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A38 @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #0x14
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A38: .4byte 0x0000025E

	thumb_func_start sub_08149A3C
sub_08149A3C: @ 0x08149A3C
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A4C @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #6
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A4C: .4byte 0x0000025E

	thumb_func_start sub_08149A50
sub_08149A50: @ 0x08149A50
	ldrh r1, [r1, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_08149A5C
sub_08149A5C: @ 0x08149A5C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldrh r2, [r1, #0xa]
	lsrs r2, r2, #2
	rsbs r2, r2, #0
	strh r2, [r0, #0x24]
	ldrb r1, [r1, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	movs r1, #9
	bl __divsi3
	subs r0, #2
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08149A94
sub_08149A94: @ 0x08149A94
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	ldrh r1, [r4, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xb]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08149AC4
sub_08149AC4: @ 0x08149AC4
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldrh r2, [r1, #0xa]
	lsrs r2, r2, #2
	rsbs r2, r2, #0
	strh r2, [r0, #0x24]
	ldrb r1, [r1, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	movs r1, #9
	bl __divsi3
	subs r0, #2
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08149AFC
sub_08149AFC: @ 0x08149AFC
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	ldrh r1, [r4, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08149B30
sub_08149B30: @ 0x08149B30
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x24
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08149B54
	movs r0, #0
	strh r0, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x10]
	ldr r0, _08149B58 @ =sub_08148200
	str r0, [r2, #0x1c]
_08149B54:
	pop {r0}
	bx r0
	.align 2, 0
_08149B58: .4byte sub_08148200

	thumb_func_start sub_08149B5C
sub_08149B5C: @ 0x08149B5C
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	ldrh r1, [r4, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08149B90
sub_08149B90: @ 0x08149B90
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08149BC8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x10]
	ldr r1, _08149BD0 @ =gUnk_08387284
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _08149BD4 @ =sub_08149BD8
	str r0, [r5, #0x1c]
_08149BC8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08149BD0: .4byte gUnk_08387284
_08149BD4: .4byte sub_08149BD8

	thumb_func_start sub_08149BD8
sub_08149BD8: @ 0x08149BD8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _08149C24 @ =0x1DFF0000
	cmp r0, r1
	ble _08149C1E
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	movs r1, #0
	strh r1, [r4, #0x10]
	ldr r2, _08149C28 @ =gUnk_08387284
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08149C2C @ =0x0000025F
	bl m4aSongNumStart
	ldr r0, _08149C30 @ =sub_08148508
	str r0, [r4, #0x1c]
_08149C1E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08149C24: .4byte 0x1DFF0000
_08149C28: .4byte gUnk_08387284
_08149C2C: .4byte 0x0000025F
_08149C30: .4byte sub_08148508

	thumb_func_start sub_08149C34
sub_08149C34: @ 0x08149C34
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x24
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08149C46
	cmp r0, #9
	bne _08149C5C
_08149C46:
	movs r0, #0x98
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	movs r0, #0xc8
	strh r0, [r3, #2]
	movs r0, #0xc3
	strh r0, [r3, #4]
	ldr r0, _08149C58 @ =sub_08148C1C
	b _08149C5E
	.align 2, 0
_08149C58: .4byte sub_08148C1C
_08149C5C:
	ldr r0, _08149C64 @ =sub_08146CE4
_08149C5E:
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08149C64: .4byte sub_08146CE4

	thumb_func_start sub_08149C68
sub_08149C68: @ 0x08149C68
	push {lr}
	ldr r0, _08149C7C @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08149CE4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08149C7C: .4byte gCurGameState

	thumb_func_start sub_08149C80
sub_08149C80: @ 0x08149C80
	push {r4, r5, r6, r7, lr}
	ldr r1, _08149CD0 @ =gUnk_083871D8
	ldr r0, _08149CD4 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08149CD8 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r7, _08149CDC @ =0x0600E000
	ldr r1, _08149CE0 @ =0x06004000
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08149CC8
_08149CAC:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08149CAC
_08149CC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149CD0: .4byte gUnk_083871D8
_08149CD4: .4byte gUnk_08D60A80
_08149CD8: .4byte gUnk_082D7850
_08149CDC: .4byte 0x0600E000
_08149CE0: .4byte 0x06004000

	thumb_func_start sub_08149CE4
sub_08149CE4: @ 0x08149CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _08149D64 @ =gDispCnt
	movs r2, #0xb2
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08149D68 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _08149D6C @ =0x00005E01
	strh r0, [r1]
	ldr r0, _08149D70 @ =0x00001D06
	strh r0, [r1, #2]
	subs r0, #0xfb
	strh r0, [r1, #4]
	ldr r1, _08149D74 @ =gBgScrollRegs
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r2, #1
	ldr r5, _08149D78 @ =gBldRegs
	ldr r0, _08149D7C @ =sub_08149DC0
	mov ip, r0
	ldr r7, _08149D80 @ =sub_0814A1C8
	adds r4, r1, #0
	adds r6, r4, #2
	movs r3, #0
_08149D1C:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r6
	strh r3, [r0]
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08149D1C
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r4, #0x10
	strh r4, [r5, #4]
	movs r1, #0xa4
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #5
	str r7, [sp]
	mov r0, ip
	movs r3, #0
	bl CreateState
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _08149D84
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08149D8C
	.align 2, 0
_08149D64: .4byte gDispCnt
_08149D68: .4byte gBgCntRegs
_08149D6C: .4byte 0x00005E01
_08149D70: .4byte 0x00001D06
_08149D74: .4byte gBgScrollRegs
_08149D78: .4byte gBldRegs
_08149D7C: .4byte sub_08149DC0
_08149D80: .4byte sub_0814A1C8
_08149D84:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08149D8C:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08149DB8 @ =0x010000A4
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0
	str r0, [r4, #4]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _08149DBC @ =sub_0814A410
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0814A274
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149DB8: .4byte 0x010000A4
_08149DBC: .4byte sub_0814A410

	thumb_func_start sub_08149DC0
sub_08149DC0: @ 0x08149DC0
	push {r4, lr}
	ldr r0, _08149DDC @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08149DE0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08149DE8
	.align 2, 0
_08149DDC: .4byte gCurGameState
_08149DE0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08149DE8:
	adds r4, r0, #0
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _08149E1C
	cmp r1, #2
	beq _08149E1C
	cmp r0, #0x4a
	bls _08149E1C
	ldr r0, _08149E14 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08149E1C
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _08149E18 @ =sub_0814A6BC
	b _08149E32
	.align 2, 0
_08149E14: .4byte gPressedKeys
_08149E18: .4byte sub_0814A6BC
_08149E1C:
	ldr r1, [r4]
	ldr r0, _08149E60 @ =0x00000257
	cmp r1, r0
	bls _08149E38
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _08149E38
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _08149E64 @ =sub_0814A518
_08149E32:
	str r1, [r0]
	movs r0, #2
	str r0, [r4, #4]
_08149E38:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149E4A
	adds r0, r4, #0
	bl _call_via_r1
_08149E4A:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08149E60: .4byte 0x00000257
_08149E64: .4byte sub_0814A518

	thumb_func_start sub_08149E68
sub_08149E68: @ 0x08149E68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _08149EF8 @ =gUnk_08D62720
	mov r8, r0
	mov sl, r6
	ldr r1, _08149EFC @ =0x0000FFC0
	mov sb, r1
_08149E80:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, #0x10
	adds r4, r7, r4
	lsls r5, r6, #1
	adds r5, r5, r6
	lsls r5, r5, #1
	mov r0, r8
	adds r0, #4
	adds r0, r5, r0
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	mov r1, r8
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, _08149F00 @ =gUnk_08D62722
	adds r5, r5, r0
	ldrh r0, [r5]
	strb r0, [r4, #0x1a]
	mov r1, sl
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x20
	strb r0, [r4, #0x1c]
	movs r0, #0
	strb r0, [r4, #0x1f]
	mov r1, sb
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	mov r0, sl
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bls _08149E80
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08149F04 @ =sub_08149F08
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149EF8: .4byte gUnk_08D62720
_08149EFC: .4byte 0x0000FFC0
_08149F00: .4byte gUnk_08D62722
_08149F04: .4byte sub_08149F08

	thumb_func_start sub_08149F08
sub_08149F08: @ 0x08149F08
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x94
	lsls r0, r0, #1
	adds r7, r5, r0
	ldrb r0, [r7]
	ldr r1, [r5, #8]
	movs r2, #1
	orrs r1, r2
	str r1, [r5, #8]
	adds r6, r5, #0
	adds r6, #0x10
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x18
	adds r4, r4, r1
	strh r4, [r6, #0x10]
	movs r0, #0x7f
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08149F78
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08149F7E
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _08149F74 @ =sub_0814A404
	str r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _08149F7E
	.align 2, 0
_08149F74: .4byte sub_0814A404
_08149F78:
	adds r0, r6, #0
	bl sub_0815604C
_08149F7E:
	adds r0, r5, #0
	bl sub_0814A39C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08149F8C
sub_08149F8C: @ 0x08149F8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r4, #0
_08149F96:
	adds r0, r4, #0
	bl sub_0814A218
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08149F96
	movs r4, #0
_08149FA8:
	adds r0, r4, #0
	bl sub_0814A240
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08149FA8
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814A114 @ =gBgCntRegs
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _0814A118 @ =0x06000800
	adds r6, r2, r3
	lsls r1, r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814A01A
_08149FFE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08149FFE
_0814A01A:
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814A114 @ =gBgCntRegs
	ldrh r2, [r1, #2]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	adds r1, r1, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814A078
_0814A05C:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814A05C
_0814A078:
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814A114 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	adds r1, r1, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814A0D8
_0814A0BC:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814A0BC
_0814A0D8:
	ldr r1, _0814A108 @ =gUnk_08387D58
	ldr r0, _0814A10C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _0814A11C @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814A120
	ldr r1, _0814A110 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08158334
	b _0814A13E
	.align 2, 0
_0814A108: .4byte gUnk_08387D58
_0814A10C: .4byte gUnk_08D60A80
_0814A110: .4byte gUnk_082D7850
_0814A114: .4byte gBgCntRegs
_0814A118: .4byte 0x06000800
_0814A11C: .4byte gUnk_03002440
_0814A120:
	ldr r2, _0814A164 @ =0x040000D4
	ldr r1, _0814A168 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814A16C @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _0814A170 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_0814A13E:
	mov r0, r8
	bl sub_08149E68
	movs r1, #0x9a
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	add r1, r8
	ldr r0, _0814A174 @ =sub_0814A178
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A164: .4byte 0x040000D4
_0814A168: .4byte gUnk_082D7850
_0814A16C: .4byte gBgPalette
_0814A170: .4byte 0x80000100
_0814A174: .4byte sub_0814A178

	thumb_func_start sub_0814A178
sub_0814A178: @ 0x0814A178
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	movs r7, #0
	strh r4, [r0]
	ldr r5, _0814A1C0 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0814A1BA
	strh r7, [r5, #4]
	strh r7, [r5, #2]
	strh r7, [r5]
	movs r0, #1
	str r0, [r6, #4]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0814A1C4 @ =sub_0814A420
	str r0, [r1]
_0814A1BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A1C0: .4byte gBldRegs
_0814A1C4: .4byte sub_0814A420

	thumb_func_start sub_0814A1C8
sub_0814A1C8: @ 0x0814A1C8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A1E2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814A1EA
_0814A1E2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814A1EA:
	adds r6, r0, #0
	movs r5, #0
_0814A1EE:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x10
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814A206
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0814A206:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0814A1EE
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A218
sub_0814A218: @ 0x0814A218
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814A23C @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814A23C: .4byte 0x01002000

	thumb_func_start sub_0814A240
sub_0814A240: @ 0x0814A240
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _0814A26C @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814A270 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814A26C: .4byte 0x000001FF
_0814A270: .4byte 0x01000400

	thumb_func_start sub_0814A274
sub_0814A274: @ 0x0814A274
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, _0814A2A4 @ =gUnk_08D626F0
	ldr r1, _0814A2A8 @ =gUnk_08D60A80
	ldrh r1, [r1]
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r1, [r1]
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A2AC @ =sub_0814A2B0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A2A4: .4byte gUnk_08D626F0
_0814A2A8: .4byte gUnk_08D60A80
_0814A2AC: .4byte sub_0814A2B0

	thumb_func_start sub_0814A2B0
sub_0814A2B0: @ 0x0814A2B0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #4]
	cmp r0, #1
	bne _0814A2C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0814A2C8 @ =sub_0814A2CC
	str r0, [r1]
_0814A2C4:
	pop {r0}
	bx r0
	.align 2, 0
_0814A2C8: .4byte sub_0814A2CC

	thumb_func_start sub_0814A2CC
sub_0814A2CC: @ 0x0814A2CC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_0814F274
	cmp r0, #0
	bne _0814A2FE
	ldr r1, _0814A304 @ =gUnk_08D626F0
	ldr r0, _0814A308 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0814A30C @ =sub_0814A310
	str r0, [r1]
_0814A2FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A304: .4byte gUnk_08D626F0
_0814A308: .4byte gUnk_08D60A80
_0814A30C: .4byte sub_0814A310

	thumb_func_start sub_0814A310
sub_0814A310: @ 0x0814A310
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_0814F274
	cmp r0, #0
	bne _0814A344
	ldr r1, _0814A34C @ =gUnk_08D626F0
	ldr r0, _0814A350 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0814A354 @ =sub_0814A358
	str r0, [r1]
_0814A344:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A34C: .4byte gUnk_08D626F0
_0814A350: .4byte gUnk_08D60A80
_0814A354: .4byte sub_0814A358

	thumb_func_start sub_0814A358
sub_0814A358: @ 0x0814A358
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_0814F274
	cmp r0, #0
	bne _0814A38A
	ldr r1, _0814A390 @ =gUnk_08D626F0
	ldr r0, _0814A394 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0814F3C4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0814A398 @ =sub_0814A310
	str r0, [r1]
_0814A38A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A390: .4byte gUnk_08D626F0
_0814A394: .4byte gUnk_08D60A80
_0814A398: .4byte sub_0814A310

	thumb_func_start sub_0814A39C
sub_0814A39C: @ 0x0814A39C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, r8
	ldrb r7, [r0]
	movs r6, #0
	cmp r6, r7
	bhs _0814A3F4
_0814A3B2:
	ldr r0, _0814A400 @ =gUnk_08D6274A
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r5, r0, #2
	adds r5, r5, r0
	lsls r5, r5, #3
	adds r5, #0x10
	add r5, r8
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r0, r6, #0
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x18
	adds r4, r4, r1
	strh r4, [r5, #0x10]
	movs r0, #0x7f
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _0814A3B2
_0814A3F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A400: .4byte gUnk_08D6274A

	thumb_func_start sub_0814A404
sub_0814A404: @ 0x0814A404
	push {lr}
	bl sub_0814A39C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A410
sub_0814A410: @ 0x0814A410
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0814A41C @ =sub_08149F8C
	str r1, [r0]
	bx lr
	.align 2, 0
_0814A41C: .4byte sub_08149F8C

	thumb_func_start sub_0814A420
sub_0814A420: @ 0x0814A420
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0814A458 @ =gBldRegs
	ldr r0, _0814A45C @ =0x00000641
	strh r0, [r1]
	ldr r0, _0814A460 @ =0x00001010
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r2, _0814A464 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0814A468 @ =sub_0814A46C
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A458: .4byte gBldRegs
_0814A45C: .4byte 0x00000641
_0814A460: .4byte 0x00001010
_0814A464: .4byte gDispCnt
_0814A468: .4byte sub_0814A46C

	thumb_func_start sub_0814A46C
sub_0814A46C: @ 0x0814A46C
	push {lr}
	adds r1, r0, #0
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0814A492
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r1, _0814A498 @ =sub_0814A49C
	str r1, [r0]
	movs r0, #0
	strh r0, [r2]
_0814A492:
	pop {r0}
	bx r0
	.align 2, 0
_0814A498: .4byte sub_0814A49C

	thumb_func_start sub_0814A49C
sub_0814A49C: @ 0x0814A49C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl m4aSongNumStartOrChange
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A4C0 @ =sub_0814A4C4
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A4C0: .4byte sub_0814A4C4

	thumb_func_start sub_0814A4C4
sub_0814A4C4: @ 0x0814A4C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	ldr r0, _0814A4F8 @ =0x0000018F
	cmp r1, r0
	bls _0814A4E2
	ldr r0, _0814A4FC @ =gUnk_030016A0
	movs r1, #0x11
	bl m4aMPlayFadeOut
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A500 @ =sub_0814A504
	str r0, [r1]
_0814A4E2:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A4F8: .4byte 0x0000018F
_0814A4FC: .4byte gUnk_030016A0
_0814A500: .4byte sub_0814A504

	thumb_func_start sub_0814A504
sub_0814A504: @ 0x0814A504
	push {lr}
	movs r2, #0x96
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A518
sub_0814A518: @ 0x0814A518
	push {lr}
	adds r2, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x9f
	lsls r1, r1, #1
	adds r3, r2, r1
	ldrh r1, [r3]
	ldr r0, _0814A550 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r3]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0814A554 @ =sub_0814A558
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A550: .4byte 0x0000FFBF
_0814A554: .4byte sub_0814A558

	thumb_func_start sub_0814A558
sub_0814A558: @ 0x0814A558
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_0814F274
	cmp r0, #0
	bne _0814A574
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A588 @ =sub_0814A58C
	str r0, [r1]
_0814A574:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A588: .4byte sub_0814A58C

	thumb_func_start sub_0814A58C
sub_0814A58C: @ 0x0814A58C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0814A5CC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814A5D0 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0814A5D4 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0814A5D8 @ =sub_0814A5DC
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r3, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A5CC: .4byte gDispCnt
_0814A5D0: .4byte 0x0000FEFF
_0814A5D4: .4byte gBldRegs
_0814A5D8: .4byte sub_0814A5DC

	thumb_func_start sub_0814A5DC
sub_0814A5DC: @ 0x0814A5DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0814A624 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x3c
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x3b
	ble _0814A60E
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0814A628 @ =sub_0814A62C
	str r0, [r1]
_0814A60E:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814A624: .4byte gBldRegs
_0814A628: .4byte sub_0814A62C

	thumb_func_start sub_0814A62C
sub_0814A62C: @ 0x0814A62C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0814A648 @ =gUnk_03000554
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814A650
	ldr r0, _0814A64C @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08026044
	b _0814A698
	.align 2, 0
_0814A648: .4byte gUnk_03000554
_0814A64C: .4byte gCurGameState
_0814A650:
	mov r0, sp
	ldr r1, _0814A6A0 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0814A6A4 @ =gBgPalette
	ldr r5, _0814A6A8 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0814A6AC @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0814A6B0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0814A6B4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _0814A6B8 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08025F2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08025EC8
_0814A698:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A6A0: .4byte 0x00007FFF
_0814A6A4: .4byte gBgPalette
_0814A6A8: .4byte 0x01000100
_0814A6AC: .4byte gObjPalette
_0814A6B0: .4byte gUnk_03002440
_0814A6B4: .4byte gBldRegs
_0814A6B8: .4byte gCurGameState

	thumb_func_start sub_0814A6BC
sub_0814A6BC: @ 0x0814A6BC
	push {lr}
	adds r3, r0, #0
	ldr r2, _0814A6FC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814A700 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0814A704 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0814A708 @ =sub_0814A70C
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r3, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A6FC: .4byte gDispCnt
_0814A700: .4byte 0x0000FEFF
_0814A704: .4byte gBldRegs
_0814A708: .4byte sub_0814A70C

	thumb_func_start sub_0814A70C
sub_0814A70C: @ 0x0814A70C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _0814A754 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _0814A73E
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0814A758 @ =sub_0814A75C
	str r0, [r1]
_0814A73E:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814A754: .4byte gBldRegs
_0814A758: .4byte sub_0814A75C

	thumb_func_start sub_0814A75C
sub_0814A75C: @ 0x0814A75C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl m4aSongNumStop
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0814A790 @ =sub_0814A794
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814A790: .4byte sub_0814A794

	thumb_func_start sub_0814A794
sub_0814A794: @ 0x0814A794
	push {lr}
	adds r2, r0, #0
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0814A7B6
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0814A7C8 @ =sub_0814A7CC
	str r0, [r1]
_0814A7B6:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814A7C8: .4byte sub_0814A7CC

	thumb_func_start sub_0814A7CC
sub_0814A7CC: @ 0x0814A7CC
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	ldr r1, _0814A810 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0814A814 @ =gBgPalette
	ldr r5, _0814A818 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0814A81C @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0814A820 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0814A824 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08138B44
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814A810: .4byte 0x00007FFF
_0814A814: .4byte gBgPalette
_0814A818: .4byte 0x01000100
_0814A81C: .4byte gObjPalette
_0814A820: .4byte gUnk_03002440
_0814A824: .4byte gCurGameState

	thumb_func_start sub_0814A828
sub_0814A828: @ 0x0814A828
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _0814A840 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A844
	bl sub_08039670
	b _0814A902
	.align 2, 0
_0814A840: .4byte gUnk_0203AD10
_0814A844:
	ldr r0, _0814A8C4 @ =gUnk_0203AD2C
	ldrh r1, [r0]
	ldr r0, _0814A8C8 @ =0x0000012B
	cmp r1, r0
	bhi _0814A902
	ldr r1, _0814A8CC @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r1, _0814A8D0 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl m4aSoundVSyncOn
	movs r2, #0
	ldr r3, _0814A8D4 @ =gUnk_0203AD30
	mov r7, sp
	adds r7, #6
	ldrb r0, [r3]
	cmp r2, r0
	bhs _0814A898
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _0814A8D8 @ =gUnk_02020EE8
	ldr r4, _0814A8DC @ =0xFEFFFFFF
_0814A880:
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r1, [r0]
	ands r1, r4
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r3]
	cmp r2, r0
	blo _0814A880
_0814A898:
	ldr r0, _0814A8E0 @ =sub_0814A914
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0814A8E4 @ =nullsub_12
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #4
	bl CreateState
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A8E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814A8F0
	.align 2, 0
_0814A8C4: .4byte gUnk_0203AD2C
_0814A8C8: .4byte 0x0000012B
_0814A8CC: .4byte 0x00007FFF
_0814A8D0: .4byte gDispCnt
_0814A8D4: .4byte gUnk_0203AD30
_0814A8D8: .4byte gUnk_02020EE8
_0814A8DC: .4byte 0xFEFFFFFF
_0814A8E0: .4byte sub_0814A914
_0814A8E4: .4byte nullsub_12
_0814A8E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814A8F0:
	movs r0, #0
	strh r0, [r7]
	ldr r2, _0814A90C @ =0x01000064
	adds r0, r7, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814A910 @ =sub_0814E0B4
	str r0, [r4, #8]
_0814A902:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A90C: .4byte 0x01000064
_0814A910: .4byte sub_0814E0B4

	thumb_func_start sub_0814A914
sub_0814A914: @ 0x0814A914
	push {r4, r5, r6, lr}
	ldr r0, _0814A930 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A934
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814A93C
	.align 2, 0
_0814A930: .4byte gCurGameState
_0814A934:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814A93C:
	adds r4, r0, #0
	ldr r0, _0814A988 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0814A994
	movs r2, #0
	ldr r0, _0814A98C @ =gUnk_0203AD30
	adds r5, r0, #0
	adds r6, r4, #0
	adds r6, #0xa0
	ldrb r0, [r5]
	cmp r2, r0
	bhs _0814A9AC
	ldr r3, _0814A990 @ =gUnk_020382D0
	ldrh r1, [r3, #0x10]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0814A9A4
_0814A966:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r5]
	cmp r2, r0
	bhs _0814A9AC
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0814A966
	b _0814A9A4
	.align 2, 0
_0814A988: .4byte gUnk_0203AD10
_0814A98C: .4byte gUnk_0203AD30
_0814A990: .4byte gUnk_020382D0
_0814A994:
	ldr r0, _0814A9DC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0xa0
	cmp r0, #0
	beq _0814A9AC
_0814A9A4:
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
_0814A9AC:
	ldr r1, [r4, #4]
	ldr r0, _0814A9E0 @ =0x80000007
	ands r0, r1
	cmp r0, #1
	bne _0814A9C2
	ldr r0, _0814A9E4 @ =sub_0814E290
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r4, #4]
_0814A9C2:
	ldr r1, [r6]
	cmp r1, #0
	beq _0814A9CE
	adds r0, r4, #0
	bl _call_via_r1
_0814A9CE:
	ldr r1, [r4, #8]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814A9DC: .4byte gPressedKeys
_0814A9E0: .4byte 0x80000007
_0814A9E4: .4byte sub_0814E290

	thumb_func_start sub_0814A9E8
sub_0814A9E8: @ 0x0814A9E8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xa4
	ldrh r4, [r0]
	adds r4, #1
	movs r2, #0
	strh r4, [r0]
	ldr r7, _0814AA40 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	adds r6, r5, #0
	adds r6, #0xa6
	movs r3, #0
	ldrsh r1, [r6, r3]
	str r2, [sp]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp]
	cmp r4, r0
	blt _0814AA44
	ldr r0, [r5, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	cmp r0, #0
	blt _0814AA36
	strh r2, [r7, #4]
	strh r2, [r7, #2]
	strh r2, [r7]
_0814AA36:
	adds r0, r5, #0
	adds r0, #0xa0
	str r2, [r0]
	movs r0, #1
	b _0814AA46
	.align 2, 0
_0814AA40: .4byte gBldRegs
_0814AA44:
	movs r0, #0
_0814AA46:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0814AA50
sub_0814AA50: @ 0x0814AA50
	push {r4, lr}
	mov ip, r0
	mov r4, ip
	adds r4, #0x60
	ldr r1, _0814AACC @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0814AAD0 @ =gBgScrollRegs
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _0814AAD4 @ =gBgCntRegs
	ldr r0, _0814AAD8 @ =0x00001F0A
	strh r0, [r2]
	ldr r0, _0814AADC @ =0x06008000
	str r0, [r4, #4]
	strh r1, [r4, #0xa]
	ldr r0, _0814AAE0 @ =0x0600F800
	str r0, [r4, #0xc]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, _0814AAE4 @ =0x00000306
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	strh r1, [r4, #0x20]
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	mov r0, ip
	adds r0, #0x8a
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	movs r0, #0x18
	strh r0, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	ldr r0, _0814AAE8 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _0814AAEC @ =gUnk_082D7850
	ldr r1, _0814AAF0 @ =0x00000C18
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814AACC: .4byte gDispCnt
_0814AAD0: .4byte gBgScrollRegs
_0814AAD4: .4byte gBgCntRegs
_0814AAD8: .4byte 0x00001F0A
_0814AADC: .4byte 0x06008000
_0814AAE0: .4byte 0x0600F800
_0814AAE4: .4byte 0x00000306
_0814AAE8: .4byte 0x00007FFF
_0814AAEC: .4byte gUnk_082D7850
_0814AAF0: .4byte 0x00000C18

	thumb_func_start sub_0814AAF4
sub_0814AAF4: @ 0x0814AAF4
	push {r4, r5, r6, r7, lr}
	ldr r1, _0814AB5C @ =gUnk_08D64A24
	ldr r0, _0814AB60 @ =gUnk_089331AC
	ldr r2, _0814AB64 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldr r1, _0814AB68 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r1, _0814AB6C @ =gBgCntRegs
	ldr r0, _0814AB70 @ =0x00001E03
	strh r0, [r1, #2]
	ldr r0, [r7, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r7, #0x18]
	ldr r6, _0814AB74 @ =0x0600F000
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #0
_0814AB2A:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0814AB2A
	ldr r0, _0814AB78 @ =gDispCnt
	ldrh r1, [r0]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814AB5C: .4byte gUnk_08D64A24
_0814AB60: .4byte gUnk_089331AC
_0814AB64: .4byte 0x00007D46
_0814AB68: .4byte gBgScrollRegs
_0814AB6C: .4byte gBgCntRegs
_0814AB70: .4byte 0x00001E03
_0814AB74: .4byte 0x0600F000
_0814AB78: .4byte gDispCnt

	thumb_func_start sub_0814AB7C
sub_0814AB7C: @ 0x0814AB7C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r4, r0, #0
	adds r0, #0x10
	ldr r3, _0814AC20 @ =gUnk_08387D8C
	ldrb r1, [r3, #4]
	lsls r1, r1, #5
	ldr r2, _0814AC24 @ =0x06012000
	adds r1, r1, r2
	str r1, [r4, #0x10]
	movs r4, #0
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	ldrh r5, [r3]
	strh r5, [r0, #0xc]
	ldrh r6, [r3, #2]
	strb r6, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	ldrb r3, [r3, #5]
	mov sb, r3
	strb r3, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r1, sp
	movs r0, #0xf
	mov r2, sb
	ands r0, r2
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814AC20: .4byte gUnk_08387D8C
_0814AC24: .4byte 0x06012000

	thumb_func_start sub_0814AC28
sub_0814AC28: @ 0x0814AC28
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0814E394
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xa8
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xb8
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814AC54
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814AC5C
_0814AC54:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814AC5C:
	str r0, [r3]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0814E394
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xac
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xbc
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814AC88
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814AC90
_0814AC88:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814AC90:
	str r0, [r3]
	adds r0, r4, #0
	bl sub_0814ADC8
	ldr r0, _0814ACA4 @ =sub_0814ACA8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814ACA4: .4byte sub_0814ACA8

	thumb_func_start sub_0814ACA8
sub_0814ACA8: @ 0x0814ACA8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0814AD24 @ =gUnk_082D7850
	ldr r1, _0814AD28 @ =0x00000C18
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0814AD2C @ =gUnk_08D64A24
	ldr r0, _0814AD30 @ =gUnk_089331AC
	ldr r3, _0814AD34 @ =0x00007D46
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, _0814AD38 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0
	movs r2, #0x60
	bl sub_0803D21C
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	ldrh r2, [r4, #0x16]
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r4, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0814AD3C @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	strh r4, [r5, #0xc]
	ldr r0, _0814AD40 @ =sub_0814E0E8
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x26]
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_0815604C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814AD24: .4byte gUnk_082D7850
_0814AD28: .4byte 0x00000C18
_0814AD2C: .4byte gUnk_08D64A24
_0814AD30: .4byte gUnk_089331AC
_0814AD34: .4byte 0x00007D46
_0814AD38: .4byte 0x00007FFF
_0814AD3C: .4byte 0x0000FFFF
_0814AD40: .4byte sub_0814E0E8

	thumb_func_start sub_0814AD44
sub_0814AD44: @ 0x0814AD44
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r2, #0x3c
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xa4
	movs r4, #0
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r5, #0
	adds r1, #0xa0
	ldr r0, _0814ADBC @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814ADC0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r6, r5, #0
	adds r6, #0x2b
	subs r0, #0x11
	adds r7, r0, #0
	movs r0, #0xff
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0
	bl sub_0814B2A0
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl sub_0814B2A0
	strh r4, [r5, #0xc]
	ldr r0, _0814ADC4 @ =sub_0814E198
	str r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814ADB0
	ldrb r0, [r6]
	orrs r0, r7
	strb r0, [r6]
_0814ADB0:
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814ADBC: .4byte sub_0814A9E8
_0814ADC0: .4byte gBldRegs
_0814ADC4: .4byte sub_0814E198

	thumb_func_start sub_0814ADC8
sub_0814ADC8: @ 0x0814ADC8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r4, r0, #0
	adds r0, #0x38
	ldr r3, _0814AE70 @ =gUnk_08387D8C
	adds r1, r3, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0814AE74 @ =0x06012000
	adds r1, r1, r2
	str r1, [r4, #0x38]
	movs r4, #0
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	ldrh r5, [r3, #0x28]
	strh r5, [r0, #0xc]
	ldrh r6, [r3, #0x2a]
	strb r6, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	adds r3, #0x2d
	ldrb r3, [r3]
	mov sb, r3
	strb r3, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r1, sp
	movs r0, #0xf
	mov r2, sb
	ands r0, r2
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814AE70: .4byte gUnk_08387D8C
_0814AE74: .4byte 0x06012000

	thumb_func_start sub_0814AE78
sub_0814AE78: @ 0x0814AE78
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x10
	ldr r1, _0814AEF8 @ =gUnk_08387F68
	ldrh r0, [r1, #4]
	movs r5, #0
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	ldrb r1, [r4, #0x1f]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r1, [r0]
	ldr r0, _0814AEFC @ =sub_0814EA00
	str r0, [r1]
	ldr r0, _0814AF00 @ =sub_0814E264
	str r0, [r6, #8]
	adds r0, r4, #0
	bl sub_0815604C
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814AEF8: .4byte gUnk_08387F68
_0814AEFC: .4byte sub_0814EA00
_0814AF00: .4byte sub_0814E264

	thumb_func_start sub_0814AF04
sub_0814AF04: @ 0x0814AF04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _0814AF58 @ =gUnk_0203AD10
	ldr r2, [r0]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0814AF8A
	ldr r3, _0814AF5C @ =gUnk_0203AD2C
	ldrh r1, [r3]
	ldr r0, _0814AF60 @ =0x0000012B
	cmp r1, r0
	bhi _0814AF8A
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r3]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0814AF78
	ldr r0, _0814AF64 @ =gUnk_0203AD3C
	ldr r1, _0814AF68 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814AF70
	ldr r2, _0814AF6C @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0814AF50
	adds r1, r0, #0
_0814AF50:
	movs r0, #1
	bl sub_0800ACD4
	b _0814AF8A
	.align 2, 0
_0814AF58: .4byte gUnk_0203AD10
_0814AF5C: .4byte gUnk_0203AD2C
_0814AF60: .4byte 0x0000012B
_0814AF64: .4byte gUnk_0203AD3C
_0814AF68: .4byte gUnk_0203AD24
_0814AF6C: .4byte gUnk_0203AD48
_0814AF70:
	movs r0, #8
	bl sub_08031CE4
	b _0814AF8A
_0814AF78:
	ldr r2, _0814B01C @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0814AF84
	adds r1, r0, #0
_0814AF84:
	movs r0, #1
	bl sub_0800ACD4
_0814AF8A:
	bl sub_08039670
	movs r6, #0
	movs r0, #0xa8
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0xb8
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0xb0
	adds r0, r0, r4
	mov sl, r0
	adds r1, r4, #0
	adds r1, #0xc0
	str r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xb4
	str r0, [sp]
	adds r4, #0xc4
	str r4, [sp, #8]
	movs r7, #0
_0814AFB4:
	lsls r5, r6, #2
	mov r1, sb
	adds r4, r1, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0814AFC6
	bl DestroyState
	str r7, [r4]
_0814AFC6:
	mov r1, r8
	adds r0, r1, r5
	str r7, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0814AFB4
	mov r1, sl
	ldr r0, [r1]
	cmp r0, #0
	beq _0814AFE8
	bl DestroyState
	movs r0, #0
	mov r1, sl
	str r0, [r1]
_0814AFE8:
	movs r4, #0
	ldr r0, [sp, #4]
	str r4, [r0]
	ldr r1, [sp]
	ldr r0, [r1]
	cmp r0, #0
	beq _0814AFFE
	bl DestroyState
	ldr r0, [sp]
	str r4, [r0]
_0814AFFE:
	ldr r1, [sp, #8]
	str r4, [r1]
	ldr r0, _0814B020 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814B01C: .4byte gUnk_0203AD48
_0814B020: .4byte gCurGameState

	thumb_func_start sub_0814B024
sub_0814B024: @ 0x0814B024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	str r0, [sp, #0x58]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814B040
	cmp r0, #1
	bne _0814B03E
	b _0814B1A0
_0814B03E:
	b _0814B286
_0814B040:
	add r2, sp, #0x28
	movs r0, #1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r2, #1]
	add r1, sp, #0x2c
	movs r0, #8
	strb r0, [r1]
	movs r0, #9
	strb r0, [r1, #1]
	movs r6, #0
	ldr r7, _0814B190 @ =gUnk_08387D8C
	mov r8, r6
	movs r0, #0xff
	mov sl, r0
	movs r1, #0x10
	mov sb, r1
	add r5, sp, #0x30
_0814B064:
	mov r2, sp
	mov r4, sp
	adds r4, r4, r6
	adds r4, #0x2c
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #5
	ldr r3, _0814B194 @ =0x06012000
	adds r0, r0, r3
	str r0, [sp]
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	mov r3, sb
	strb r3, [r2, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #5]
	strb r0, [r2, #0x1f]
	ldr r0, _0814B198 @ =0x0000FFC0
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	mov r0, r8
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x10
	ldr r1, [sp, #0x58]
	adds r2, r1, r0
	mov r1, sp
	adds r1, r1, r6
	adds r1, #0x28
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #5
	ldr r3, _0814B194 @ =0x06012000
	adds r0, r0, r3
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xa
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r3, sl
	orrs r0, r3
	strb r0, [r2, #0x1b]
	mov r0, sb
	strb r0, [r2, #0x1c]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #5]
	strb r0, [r2, #0x1f]
	movs r0, #0x84
	strh r0, [r2, #0x10]
	movs r0, #0x50
	strh r0, [r2, #0x12]
	ldr r0, _0814B19C @ =0x00040080
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x30]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1b]
	mov r3, r8
	strh r3, [r5, #0x10]
	strh r3, [r5, #0x12]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x16]
	mov r0, sb
	strb r0, [r5, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	ldrb r0, [r5, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bhi _0814B18C
	b _0814B064
_0814B18C:
	b _0814B286
	.align 2, 0
_0814B190: .4byte gUnk_08387D8C
_0814B194: .4byte 0x06012000
_0814B198: .4byte 0x0000FFC0
_0814B19C: .4byte 0x00040080
_0814B1A0:
	add r0, sp, #0x28
	movs r1, #3
	strb r1, [r0]
	movs r1, #4
	strb r1, [r0, #1]
	movs r6, #0
	ldr r7, _0814B298 @ =gUnk_08387D8C
	mov r8, r6
	movs r1, #0xff
	mov sl, r1
	movs r3, #0x10
	mov sb, r3
	add r5, sp, #0x30
_0814B1BA:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x10
	ldr r1, [sp, #0x58]
	adds r2, r1, r0
	mov r4, sp
	adds r4, r4, r6
	adds r4, #0x28
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #5
	ldr r3, _0814B29C @ =0x06012000
	adds r0, r0, r3
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xa
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	mov r3, sb
	strb r3, [r2, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #5]
	strb r0, [r2, #0x1f]
	movs r0, #0x64
	strh r0, [r2, #0x10]
	movs r0, #0x48
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x30]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1b]
	mov r3, r8
	strh r3, [r5, #0x10]
	strh r3, [r5, #0x12]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x16]
	mov r0, sb
	strb r0, [r5, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	ldrb r0, [r5, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0814B1BA
_0814B286:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814B298: .4byte gUnk_08387D8C
_0814B29C: .4byte 0x06012000

	thumb_func_start sub_0814B2A0
sub_0814B2A0: @ 0x0814B2A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0814B2F8
	movs r0, #0x8c
	lsls r0, r0, #0x10
	str r0, [r4, #0x60]
	ldr r0, _0814B2E8 @ =0xFFFDD000
	str r0, [r4, #0x68]
	movs r0, #0x96
	lsls r0, r0, #4
	str r0, [r4, #0x70]
	adds r2, r4, #0
	adds r2, #0x10
	ldr r1, _0814B2EC @ =gUnk_08387E2C
	ldrh r0, [r1, #0x14]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _0814B2F0 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x14]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _0814B2F4 @ =sub_0814B7D8
	b _0814B34E
	.align 2, 0
_0814B2E8: .4byte 0xFFFDD000
_0814B2EC: .4byte gUnk_08387E2C
_0814B2F0: .4byte gUnk_08387EB4
_0814B2F4: .4byte sub_0814B7D8
_0814B2F8:
	movs r0, #0xf0
	lsls r0, r0, #0xf
	str r0, [r4, #0x60]
	ldr r1, _0814B358 @ =0x00000CAA
	str r1, [r4, #0x74]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	subs r0, #0x4e
	muls r0, r1, r0
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	str r0, [r4, #0x6c]
	adds r2, r4, #0
	adds r2, #0x10
	ldr r0, _0814B35C @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r2, r4, #0
	adds r2, #0x38
	ldr r0, _0814B360 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _0814B364 @ =sub_0814CB60
_0814B34E:
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814B358: .4byte 0x00000CAA
_0814B35C: .4byte gUnk_08387E2C
_0814B360: .4byte gUnk_08387EB4
_0814B364: .4byte sub_0814CB60

	thumb_func_start sub_0814B368
sub_0814B368: @ 0x0814B368
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r5, #0x68]
	ldr r0, _0814B3EC @ =0xFFFD4000
	str r0, [r5, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r5, #0x74]
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814B3F0 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x2c]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814B3F4 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x2c]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _0814B3F8 @ =0x0000024B
	bl m4aSongNumStart
	strh r4, [r5, #8]
	ldr r0, _0814B3FC @ =sub_0814B400
	str r0, [r5, #4]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B3C6
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B3C6:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B3D8
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814B3D8:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B3EC: .4byte 0xFFFD4000
_0814B3F0: .4byte gUnk_08387E2C
_0814B3F4: .4byte gUnk_08387EB4
_0814B3F8: .4byte 0x0000024B
_0814B3FC: .4byte sub_0814B400

	thumb_func_start sub_0814B400
sub_0814B400: @ 0x0814B400
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814B416
	ldr r0, _0814B49C @ =sub_0814B4A4
	str r0, [r4, #4]
_0814B416:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B4A0 @ =0x00049FFF
	cmp r0, r1
	ble _0814B436
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B436:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B472
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B472:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B488
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814B488:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B49C: .4byte sub_0814B4A4
_0814B4A0: .4byte 0x00049FFF

	thumb_func_start sub_0814B4A4
sub_0814B4A4: @ 0x0814B4A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814B53C @ =gUnk_08387E2C
	ldrh r0, [r1, #0x30]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B540 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x30]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814B544 @ =sub_0814B54C
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B548 @ =0x00049FFF
	cmp r0, r1
	ble _0814B4F4
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814B4F4:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B53C: .4byte gUnk_08387E2C
_0814B540: .4byte gUnk_08387EB4
_0814B544: .4byte sub_0814B54C
_0814B548: .4byte 0x00049FFF

	thumb_func_start sub_0814B54C
sub_0814B54C: @ 0x0814B54C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B5CC @ =0x00049FFF
	cmp r0, r1
	ble _0814B570
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B570:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814B5B2
	movs r1, #1
_0814B5B2:
	cmp r1, #0
	beq _0814B5BA
	ldr r0, _0814B5D0 @ =sub_0814B5D4
	str r0, [r4, #4]
_0814B5BA:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B5CC: .4byte 0x00049FFF
_0814B5D0: .4byte sub_0814B5D4

	thumb_func_start sub_0814B5D4
sub_0814B5D4: @ 0x0814B5D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814B66C @ =gUnk_08387E2C
	ldrh r0, [r1, #0x34]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B670 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814B674 @ =sub_0814B67C
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B678 @ =0x00049FFF
	cmp r0, r1
	ble _0814B624
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814B624:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B66C: .4byte gUnk_08387E2C
_0814B670: .4byte gUnk_08387EB4
_0814B674: .4byte sub_0814B67C
_0814B678: .4byte 0x00049FFF

	thumb_func_start sub_0814B67C
sub_0814B67C: @ 0x0814B67C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B71C @ =0x00049FFF
	cmp r0, r1
	ble _0814B6A0
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B6A0:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r1, _0814B720 @ =0x0087FFFF
	cmp r0, r1
	ble _0814B6C8
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, _0814B724 @ =sub_0814B728
	str r0, [r4, #4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814B6C8:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B6F4
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B6F4:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B70A
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814B70A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B71C: .4byte 0x00049FFF
_0814B720: .4byte 0x0087FFFF
_0814B724: .4byte sub_0814B728

	thumb_func_start sub_0814B728
sub_0814B728: @ 0x0814B728
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814B778 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x38]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814B77C @ =gUnk_08387EB4
	ldrh r0, [r1, #0x38]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x74]
	str r4, [r5, #0x6c]
	str r4, [r5, #0x70]
	str r4, [r5, #0x68]
	strh r4, [r5, #8]
	ldr r0, _0814B780 @ =sub_0814E47C
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B778: .4byte gUnk_08387E2C
_0814B77C: .4byte gUnk_08387EB4
_0814B780: .4byte sub_0814E47C

	thumb_func_start sub_0814B784
sub_0814B784: @ 0x0814B784
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814B7CC @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B7D0 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814B7D4 @ =sub_0814E4AC
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B7CC: .4byte gUnk_08387E2C
_0814B7D0: .4byte gUnk_08387EB4
_0814B7D4: .4byte sub_0814E4AC

	thumb_func_start sub_0814B7D8
sub_0814B7D8: @ 0x0814B7D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	adds r0, r0, r1
	str r0, [r5, #0x6c]
	ldr r1, _0814B868 @ =0x00049FFF
	cmp r0, r1
	ble _0814B7FC
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r5, #0x6c]
	movs r0, #0
	str r0, [r5, #0x74]
_0814B7FC:
	ldr r0, [r5, #0x60]
	ldr r2, [r5, #0x68]
	adds r3, r0, r2
	str r3, [r5, #0x60]
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x6c]
	adds r0, r0, r1
	str r0, [r5, #0x64]
	cmp r2, #0
	ble _0814B81A
	subs r0, r3, r2
	str r0, [r5, #0x60]
	movs r0, #0
	str r0, [r5, #0x68]
	str r0, [r5, #0x70]
_0814B81A:
	ldr r0, [r5, #0x60]
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r5, #0x22]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r6, r4, #0
	cmp r0, #0
	bne _0814B848
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B848:
	adds r4, r5, #0
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B874
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bne _0814B870
	ldr r0, _0814B86C @ =sub_0814E4C4
	b _0814B872
	.align 2, 0
_0814B868: .4byte 0x00049FFF
_0814B86C: .4byte sub_0814E4C4
_0814B870:
	ldr r0, _0814B888 @ =sub_0814B88C
_0814B872:
	str r0, [r5, #4]
_0814B874:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B888: .4byte sub_0814B88C

	thumb_func_start sub_0814B88C
sub_0814B88C: @ 0x0814B88C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B900 @ =0x00049FFF
	cmp r0, r1
	ble _0814B8B0
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B8B0:
	ldr r0, [r4, #0x60]
	ldr r2, [r4, #0x68]
	adds r3, r0, r2
	str r3, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	cmp r2, #0
	ble _0814B8D2
	subs r0, r3, r2
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x70]
	ldr r0, _0814B904 @ =sub_0814E4C4
	str r0, [r4, #4]
_0814B8D2:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814B900: .4byte 0x00049FFF
_0814B904: .4byte sub_0814E4C4

	thumb_func_start sub_0814B908
sub_0814B908: @ 0x0814B908
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814B950 @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B954 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814B958 @ =sub_0814E518
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B950: .4byte gUnk_08387E2C
_0814B954: .4byte gUnk_08387EB4
_0814B958: .4byte sub_0814E518

	thumb_func_start sub_0814B95C
sub_0814B95C: @ 0x0814B95C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r3, [r6, #0xc]
	movs r2, #0x2d
	ldr r0, [r3, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xa4
	movs r4, #0
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0xa0
	ldr r0, _0814B9F4 @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814B9F8 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r1, #0xa0
	lsls r1, r1, #0xf
	str r1, [r6, #0x60]
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r6, #0x68]
	ldr r0, _0814B9FC @ =0xFFFFF830
	str r0, [r6, #0x70]
	str r1, [r6, #0x64]
	str r4, [r6, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #1
	str r0, [r6, #0x74]
	adds r5, r6, #0
	adds r5, #0x10
	ldr r0, _0814BA00 @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x62
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r0, _0814BA04 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x62
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814BA08 @ =sub_0814BA0C
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B9F4: .4byte sub_0814A9E8
_0814B9F8: .4byte gBldRegs
_0814B9FC: .4byte 0xFFFFF830
_0814BA00: .4byte gUnk_08387E2C
_0814BA04: .4byte gUnk_08387EB4
_0814BA08: .4byte sub_0814BA0C

	thumb_func_start sub_0814BA0C
sub_0814BA0C: @ 0x0814BA0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814BA22
	ldr r0, _0814BAB8 @ =sub_0814BAC4
	str r0, [r4, #4]
_0814BA22:
	ldrb r1, [r4, #1]
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _0814BA44
	adds r1, #1
	strb r1, [r4, #1]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	ble _0814BA44
	movs r0, #0xff
	orrs r1, r0
	strb r1, [r4, #1]
	ldr r0, _0814BABC @ =0x0000024B
	bl m4aSongNumStart
_0814BA44:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BAC0 @ =0x00049FFF
	cmp r0, r1
	ble _0814BA64
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BA64:
	ldr r0, [r4, #0x60]
	ldr r2, [r4, #0x68]
	adds r0, r0, r2
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	cmp r2, #0
	bge _0814BA7E
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
_0814BA7E:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814BAB8: .4byte sub_0814BAC4
_0814BABC: .4byte 0x0000024B
_0814BAC0: .4byte 0x00049FFF

	thumb_func_start sub_0814BAC4
sub_0814BAC4: @ 0x0814BAC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r3, [r0, #0xc]
	movs r2, #0x2d
	ldr r0, [r3, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xa4
	movs r6, #0
	movs r5, #0
	strh r5, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0xa0
	ldr r0, _0814BB84 @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814BB88 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r5, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xa0
	lsls r0, r0, #0x10
	mov r1, r8
	str r0, [r1, #0x60]
	ldr r0, _0814BB8C @ =0xFFFE2000
	str r0, [r1, #0x68]
	movs r0, #0xfa
	lsls r0, r0, #3
	str r0, [r1, #0x70]
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1, #0x64]
	str r5, [r1, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #1
	str r0, [r1, #0x74]
	mov r7, r8
	adds r7, #0x10
	ldr r0, [r7, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	adds r7, #0x28
	ldr r0, [r7, #8]
	eors r0, r4
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	mov r0, r8
	adds r0, #0x10
	ldr r2, _0814BB90 @ =gUnk_08387E2C
	ldrh r1, [r2, #0x1c]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x1e]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, _0814BB94 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x1c]
	strh r0, [r7, #0xc]
	ldrh r0, [r1, #0x1e]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	mov r0, r8
	strh r5, [r0, #8]
	strb r6, [r0, #1]
	ldr r0, _0814BB98 @ =sub_0814BB9C
	mov r1, r8
	str r0, [r1, #4]
	mov r0, r8
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r7, #0
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814BB84: .4byte sub_0814A9E8
_0814BB88: .4byte gBldRegs
_0814BB8C: .4byte 0xFFFE2000
_0814BB90: .4byte gUnk_08387E2C
_0814BB94: .4byte gUnk_08387EB4
_0814BB98: .4byte sub_0814BB9C

	thumb_func_start sub_0814BB9C
sub_0814BB9C: @ 0x0814BB9C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814BBB2
	ldr r0, _0814BC48 @ =sub_0814BC54
	str r0, [r4, #4]
_0814BBB2:
	ldrb r1, [r4, #1]
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _0814BBD4
	adds r1, #1
	strb r1, [r4, #1]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	ble _0814BBD4
	movs r0, #0xff
	orrs r1, r0
	strb r1, [r4, #1]
	ldr r0, _0814BC4C @ =0x0000024B
	bl m4aSongNumStart
_0814BBD4:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BC50 @ =0x00049FFF
	cmp r0, r1
	ble _0814BBF4
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BBF4:
	ldr r0, [r4, #0x60]
	ldr r2, [r4, #0x68]
	adds r0, r0, r2
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	cmp r2, #0
	ble _0814BC0E
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
_0814BC0E:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814BC48: .4byte sub_0814BC54
_0814BC4C: .4byte 0x0000024B
_0814BC50: .4byte 0x00049FFF

	thumb_func_start sub_0814BC54
sub_0814BC54: @ 0x0814BC54
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r3, [r7, #0xc]
	movs r2, #0x78
	ldr r0, [r3, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xa4
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0xa0
	ldr r0, _0814BCEC @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814BCF0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #0xf
	str r0, [r7, #0x60]
	str r4, [r7, #0x70]
	str r4, [r7, #0x68]
	movs r0, #0x8c
	lsls r0, r0, #0xe
	str r0, [r7, #0x64]
	str r4, [r7, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r7, #0x74]
	adds r6, r7, #0
	adds r6, #0x10
	ldr r0, _0814BCF4 @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x46
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, _0814BCF8 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x46
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	strh r4, [r7, #8]
	strb r5, [r7, #1]
	ldr r0, _0814BCFC @ =sub_0814BD00
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814BCEC: .4byte sub_0814A9E8
_0814BCF0: .4byte gBldRegs
_0814BCF4: .4byte gUnk_08387E2C
_0814BCF8: .4byte gUnk_08387EB4
_0814BCFC: .4byte sub_0814BD00

	thumb_func_start sub_0814BD00
sub_0814BD00: @ 0x0814BD00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _0814BD26
	adds r1, #1
	strb r1, [r4, #1]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	ble _0814BD26
	movs r0, #0xff
	orrs r1, r0
	strb r1, [r4, #1]
	ldr r0, _0814BDB8 @ =0x0000024B
	bl m4aSongNumStart
_0814BD26:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BDBC @ =0x00049FFF
	cmp r0, r1
	ble _0814BD46
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BD46:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	ldr r1, [r4, #0x64]
	ldr r0, _0814BDC0 @ =0x005FFFFF
	cmp r1, r0
	ble _0814BD78
	ldr r0, _0814BDC4 @ =sub_0814BDC8
	str r0, [r4, #4]
_0814BD78:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BD8E
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BD8E:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BDA4
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BDA4:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BDB8: .4byte 0x0000024B
_0814BDBC: .4byte 0x00049FFF
_0814BDC0: .4byte 0x005FFFFF
_0814BDC4: .4byte sub_0814BDC8

	thumb_func_start sub_0814BDC8
sub_0814BDC8: @ 0x0814BDC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814BE34 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x34]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814BE38 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814BE3C @ =sub_0814BE40
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BE10
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BE10:
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BE22
	adds r1, r6, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BE22:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BE34: .4byte gUnk_08387E2C
_0814BE38: .4byte gUnk_08387EB4
_0814BE3C: .4byte sub_0814BE40

	thumb_func_start sub_0814BE40
sub_0814BE40: @ 0x0814BE40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BED8 @ =0x00049FFF
	cmp r0, r1
	ble _0814BE64
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BE64:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	ldr r1, [r4, #0x64]
	ldr r0, _0814BEDC @ =0x0087FFFF
	cmp r1, r0
	ble _0814BE9A
	adds r0, #1
	str r0, [r4, #0x64]
	ldr r0, _0814BEE0 @ =sub_0814BEE4
	str r0, [r4, #4]
_0814BE9A:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BEB0
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BEB0:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BEC6
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BEC6:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BED8: .4byte 0x00049FFF
_0814BEDC: .4byte 0x0087FFFF
_0814BEE0: .4byte sub_0814BEE4

	thumb_func_start sub_0814BEE4
sub_0814BEE4: @ 0x0814BEE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	str r6, [r4, #0x6c]
	str r6, [r4, #0x74]
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814BF60 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x28]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814BF64 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x28]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	ldr r1, [r4, #0xc]
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814BF20
	ldr r0, _0814BF68 @ =sub_0814E224
	str r0, [r1, #8]
_0814BF20:
	strh r6, [r4, #8]
	ldr r0, _0814BF6C @ =sub_0814BF70
	str r0, [r4, #4]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BF3C
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BF3C:
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BF4E
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BF4E:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BF60: .4byte gUnk_08387E2C
_0814BF64: .4byte gUnk_08387EB4
_0814BF68: .4byte sub_0814E224
_0814BF6C: .4byte sub_0814BF70

	thumb_func_start sub_0814BF70
sub_0814BF70: @ 0x0814BF70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0814BF86
	ldr r0, _0814C00C @ =sub_0814C014
	str r0, [r4, #4]
_0814BF86:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C010 @ =0x00049FFF
	cmp r0, r1
	ble _0814BFA6
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BFA6:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BFE2
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BFE2:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BFF8
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BFF8:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C00C: .4byte sub_0814C014
_0814C010: .4byte 0x00049FFF

	thumb_func_start sub_0814C014
sub_0814C014: @ 0x0814C014
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [r5, #0x68]
	ldr r0, _0814C090 @ =0xFFFD4000
	str r0, [r5, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r5, #0x74]
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814C094 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x2c]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814C098 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x2c]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	strh r4, [r5, #8]
	ldr r0, _0814C09C @ =sub_0814C0A0
	str r0, [r5, #4]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C06C
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C06C:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C07E
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C07E:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C090: .4byte 0xFFFD4000
_0814C094: .4byte gUnk_08387E2C
_0814C098: .4byte gUnk_08387EB4
_0814C09C: .4byte sub_0814C0A0

	thumb_func_start sub_0814C0A0
sub_0814C0A0: @ 0x0814C0A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814C0B6
	ldr r0, _0814C13C @ =sub_0814C144
	str r0, [r4, #4]
_0814C0B6:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C140 @ =0x00049FFF
	cmp r0, r1
	ble _0814C0D6
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C0D6:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C112
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C112:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C128
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C128:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C13C: .4byte sub_0814C144
_0814C140: .4byte 0x00049FFF

	thumb_func_start sub_0814C144
sub_0814C144: @ 0x0814C144
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814C1DC @ =gUnk_08387E2C
	ldrh r0, [r1, #0x30]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C1E0 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x30]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814C1E4 @ =sub_0814C1EC
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C1E8 @ =0x00049FFF
	cmp r0, r1
	ble _0814C194
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814C194:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C1DC: .4byte gUnk_08387E2C
_0814C1E0: .4byte gUnk_08387EB4
_0814C1E4: .4byte sub_0814C1EC
_0814C1E8: .4byte 0x00049FFF

	thumb_func_start sub_0814C1EC
sub_0814C1EC: @ 0x0814C1EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C26C @ =0x00049FFF
	cmp r0, r1
	ble _0814C210
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C210:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814C252
	movs r1, #1
_0814C252:
	cmp r1, #0
	beq _0814C25A
	ldr r0, _0814C270 @ =sub_0814C274
	str r0, [r4, #4]
_0814C25A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C26C: .4byte 0x00049FFF
_0814C270: .4byte sub_0814C274

	thumb_func_start sub_0814C274
sub_0814C274: @ 0x0814C274
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814C30C @ =gUnk_08387E2C
	ldrh r0, [r1, #0x34]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C310 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814C314 @ =sub_0814C31C
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C318 @ =0x00049FFF
	cmp r0, r1
	ble _0814C2C4
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814C2C4:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C30C: .4byte gUnk_08387E2C
_0814C310: .4byte gUnk_08387EB4
_0814C314: .4byte sub_0814C31C
_0814C318: .4byte 0x00049FFF

	thumb_func_start sub_0814C31C
sub_0814C31C: @ 0x0814C31C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C3BC @ =0x00049FFF
	cmp r0, r1
	ble _0814C340
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C340:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r1, _0814C3C0 @ =0x0087FFFF
	cmp r0, r1
	ble _0814C368
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, _0814C3C4 @ =sub_0814C3C8
	str r0, [r4, #4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814C368:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C394
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C394:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C3AA
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C3AA:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C3BC: .4byte 0x00049FFF
_0814C3C0: .4byte 0x0087FFFF
_0814C3C4: .4byte sub_0814C3C8

	thumb_func_start sub_0814C3C8
sub_0814C3C8: @ 0x0814C3C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814C418 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x38]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814C41C @ =gUnk_08387EB4
	ldrh r0, [r1, #0x38]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x74]
	str r4, [r5, #0x6c]
	str r4, [r5, #0x70]
	str r4, [r5, #0x68]
	strh r4, [r5, #8]
	ldr r0, _0814C420 @ =sub_0814E600
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C418: .4byte gUnk_08387E2C
_0814C41C: .4byte gUnk_08387EB4
_0814C420: .4byte sub_0814E600

	thumb_func_start sub_0814C424
sub_0814C424: @ 0x0814C424
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814C46C @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C470 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814C474 @ =sub_0814E630
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C46C: .4byte gUnk_08387E2C
_0814C470: .4byte gUnk_08387EB4
_0814C474: .4byte sub_0814E630

	thumb_func_start sub_0814C478
sub_0814C478: @ 0x0814C478
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #0x10
	ldr r1, _0814C4E4 @ =gUnk_08387E2C
	ldrh r0, [r1, #8]
	movs r5, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814C4E8 @ =gUnk_08387EB4
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r1, r4
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r7, #0x68]
	strh r5, [r7, #8]
	ldr r0, _0814C4EC @ =sub_0814C4F0
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C4E4: .4byte gUnk_08387E2C
_0814C4E8: .4byte gUnk_08387EB4
_0814C4EC: .4byte sub_0814C4F0

	thumb_func_start sub_0814C4F0
sub_0814C4F0: @ 0x0814C4F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C58C @ =0x00049FFF
	cmp r0, r1
	ble _0814C514
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C514:
	ldr r2, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r2, r2, r0
	str r2, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r0, _0814C590 @ =0x00B7FFFF
	cmp r2, r0
	ble _0814C538
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
	ldr r0, _0814C594 @ =sub_0814C598
	str r0, [r4, #4]
_0814C538:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C564
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C564:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C57A
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C57A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C58C: .4byte 0x00049FFF
_0814C590: .4byte 0x00B7FFFF
_0814C594: .4byte sub_0814C598

	thumb_func_start sub_0814C598
sub_0814C598: @ 0x0814C598
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814C5E0 @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C5E4 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814C5E8 @ =sub_0814E660
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C5E0: .4byte gUnk_08387E2C
_0814C5E4: .4byte gUnk_08387EB4
_0814C5E8: .4byte sub_0814E660

	thumb_func_start sub_0814C5EC
sub_0814C5EC: @ 0x0814C5EC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #0x10
	ldr r1, _0814C664 @ =gUnk_08387E2C
	adds r0, r1, #0
	adds r0, #0x78
	ldrh r0, [r0]
	movs r5, #0
	strh r0, [r6, #0xc]
	adds r1, #0x7a
	ldrh r0, [r1]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, _0814C668 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x7a
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r1, r4
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _0814C66C @ =0x0000024E
	bl m4aSongNumStart
	strh r5, [r7, #8]
	ldr r0, _0814C670 @ =sub_0814E690
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C664: .4byte gUnk_08387E2C
_0814C668: .4byte gUnk_08387EB4
_0814C66C: .4byte 0x0000024E
_0814C670: .4byte sub_0814E690

	thumb_func_start sub_0814C674
sub_0814C674: @ 0x0814C674
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0814C718 @ =0xFFFD0000
	str r0, [r7, #0x68]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [r7, #0x70]
	movs r5, #0
	str r5, [r7, #0x6c]
	str r5, [r7, #0x74]
	adds r6, r7, #0
	adds r6, #0x10
	ldr r0, _0814C71C @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x70
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x72
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, _0814C720 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x70
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x72
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r1, r4
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	strh r5, [r7, #8]
	ldr r0, _0814C724 @ =sub_0814C728
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C6F4
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C6F4:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C706
	adds r1, r7, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C706:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C718: .4byte 0xFFFD0000
_0814C71C: .4byte gUnk_08387E2C
_0814C720: .4byte gUnk_08387EB4
_0814C724: .4byte sub_0814C728

	thumb_func_start sub_0814C728
sub_0814C728: @ 0x0814C728
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814C73E
	ldr r0, _0814C7C4 @ =sub_0814C7CC
	str r0, [r4, #4]
_0814C73E:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C7C8 @ =0x00049FFF
	cmp r0, r1
	ble _0814C75E
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C75E:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C79A
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C79A:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C7B0
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C7B0:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C7C4: .4byte sub_0814C7CC
_0814C7C8: .4byte 0x00049FFF

	thumb_func_start sub_0814C7CC
sub_0814C7CC: @ 0x0814C7CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	str r6, [r4, #0x68]
	str r6, [r4, #0x70]
	str r6, [r4, #0x6c]
	adds r5, r4, #0
	adds r5, #0x10
	ldr r0, _0814C888 @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r0, _0814C88C @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r1]
	strh r6, [r4, #8]
	ldr r0, _0814C890 @ =sub_0814C898
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C894 @ =0x00049FFF
	cmp r0, r1
	ble _0814C840
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814C840:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C888: .4byte gUnk_08387E2C
_0814C88C: .4byte gUnk_08387EB4
_0814C890: .4byte sub_0814C898
_0814C894: .4byte 0x00049FFF

	thumb_func_start sub_0814C898
sub_0814C898: @ 0x0814C898
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C918 @ =0x00049FFF
	cmp r0, r1
	ble _0814C8BC
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C8BC:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814C8FE
	movs r1, #1
_0814C8FE:
	cmp r1, #0
	beq _0814C906
	ldr r0, _0814C91C @ =sub_0814C920
	str r0, [r4, #4]
_0814C906:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C918: .4byte 0x00049FFF
_0814C91C: .4byte sub_0814C920

	thumb_func_start sub_0814C920
sub_0814C920: @ 0x0814C920
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	str r7, [r5, #0x68]
	str r7, [r5, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r5, #0x74]
	adds r6, r5, #0
	adds r6, #0x10
	ldr r0, [r6, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x10
	ldr r2, _0814C9F4 @ =gUnk_08387E2C
	ldrh r1, [r2, #0x34]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x36]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, _0814C9F8 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	strh r7, [r5, #8]
	ldr r0, _0814C9FC @ =sub_0814CA04
	str r0, [r5, #4]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	adds r0, r0, r1
	str r0, [r5, #0x6c]
	ldr r1, _0814CA00 @ =0x00049FFF
	cmp r0, r1
	ble _0814C9AA
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r5, #0x6c]
	str r7, [r5, #0x74]
_0814C9AA:
	ldr r1, [r5, #0x60]
	ldr r0, [r5, #0x68]
	adds r1, r1, r0
	str r1, [r5, #0x60]
	ldr r0, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	adds r0, r0, r2
	str r0, [r5, #0x64]
	asrs r1, r1, #0x10
	adds r0, r5, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r5, #0x20]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r5, #0x22]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C9F4: .4byte gUnk_08387E2C
_0814C9F8: .4byte gUnk_08387EB4
_0814C9FC: .4byte sub_0814CA04
_0814CA00: .4byte 0x00049FFF

	thumb_func_start sub_0814CA04
sub_0814CA04: @ 0x0814CA04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814CAA4 @ =0x00049FFF
	cmp r0, r1
	ble _0814CA28
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814CA28:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r1, _0814CAA8 @ =0x0087FFFF
	cmp r0, r1
	ble _0814CA50
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, _0814CAAC @ =sub_0814CAB0
	str r0, [r4, #4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814CA50:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CA7C
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CA7C:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CA92
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CA92:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CAA4: .4byte 0x00049FFF
_0814CAA8: .4byte 0x0087FFFF
_0814CAAC: .4byte sub_0814CAB0

	thumb_func_start sub_0814CAB0
sub_0814CAB0: @ 0x0814CAB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814CB00 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x38]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814CB04 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x38]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x74]
	str r4, [r5, #0x6c]
	str r4, [r5, #0x70]
	str r4, [r5, #0x68]
	strh r4, [r5, #8]
	ldr r0, _0814CB08 @ =sub_0814E700
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CB00: .4byte gUnk_08387E2C
_0814CB04: .4byte gUnk_08387EB4
_0814CB08: .4byte sub_0814E700

	thumb_func_start sub_0814CB0C
sub_0814CB0C: @ 0x0814CB0C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814CB54 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x28]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814CB58 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x28]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814CB5C @ =sub_0814E730
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CB54: .4byte gUnk_08387E2C
_0814CB58: .4byte gUnk_08387EB4
_0814CB5C: .4byte sub_0814E730

	thumb_func_start sub_0814CB60
sub_0814CB60: @ 0x0814CB60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814CC00 @ =0x00049FFF
	cmp r0, r1
	ble _0814CB84
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814CB84:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r2, r0, r1
	str r2, [r4, #0x64]
	cmp r1, #0
	blt _0814CBAC
	ldr r0, _0814CC04 @ =0x004FFFFF
	cmp r2, r0
	ble _0814CBAC
	adds r0, #1
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	ldr r0, _0814CC08 @ =sub_0814CC0C
	str r0, [r4, #4]
_0814CBAC:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CBD8
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CBD8:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CBEE
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CBEE:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CC00: .4byte 0x00049FFF
_0814CC04: .4byte 0x004FFFFF
_0814CC08: .4byte sub_0814CC0C

	thumb_func_start sub_0814CC0C
sub_0814CC0C: @ 0x0814CC0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	adds r0, #0xb8
	ldr r1, [r0]
	ldr r0, _0814CC78 @ =sub_0814E4DC
	str r0, [r1, #4]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814CC7C @ =sub_0814CC80
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0xfe
	bhi _0814CC38
	adds r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CC38:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CC4E
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CC4E:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CC64
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CC64:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CC78: .4byte sub_0814E4DC
_0814CC7C: .4byte sub_0814CC80

	thumb_func_start sub_0814CC80
sub_0814CC80: @ 0x0814CC80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814CC96
	ldr r0, _0814CCF8 @ =sub_0814CCFC
	str r0, [r4, #4]
_0814CC96:
	adds r3, r4, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	cmp r2, #0xfe
	bhi _0814CCB8
	ldrh r1, [r4, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0814CCB8
	adds r0, r2, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CCB8:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CCCE
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CCCE:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CCE4
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CCE4:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CCF8: .4byte sub_0814CCFC

	thumb_func_start sub_0814CCFC
sub_0814CCFC: @ 0x0814CCFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0xb8
	ldr r1, [r0]
	ldr r0, _0814CD58 @ =sub_0814B908
	str r0, [r1, #4]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814CD5C @ =sub_0814CDE4
	str r0, [r4, #4]
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _0814CD64
	ldr r0, _0814CD60 @ =sub_0814E7AC
	str r0, [r4, #4]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CD34
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CD34:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CD4A
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CD4A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	b _0814CDD6
	.align 2, 0
_0814CD58: .4byte sub_0814B908
_0814CD5C: .4byte sub_0814CDE4
_0814CD60: .4byte sub_0814E7AC
_0814CD64:
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #4]
	ldr r1, _0814CDDC @ =gBldRegs
	movs r0, #0xe4
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	ldr r0, _0814CDE0 @ =0x0000024A
	bl m4aSongNumStart
	adds r3, r4, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	cmp r2, #0xfe
	bhi _0814CD9E
	ldrh r1, [r4, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0814CD9E
	adds r0, r2, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CD9E:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CDB4
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CDB4:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CDCA
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CDCA:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
_0814CDD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CDDC: .4byte gBldRegs
_0814CDE0: .4byte 0x0000024A

	thumb_func_start sub_0814CDE4
sub_0814CDE4: @ 0x0814CDE4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r6, r0, #0
	adds r6, #0x38
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4a
	ble _0814CE00
	ldr r0, _0814CEA0 @ =sub_0814E748
	str r0, [r5, #4]
_0814CE00:
	ldr r4, _0814CEA4 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0x4b
	bl __divsi3
	strh r0, [r4, #4]
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814CE28
	movs r0, #0
	strb r0, [r5, #1]
	ldr r0, _0814CEA8 @ =0x0000024A
	bl m4aSongNumStart
_0814CE28:
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r7, r4, #0
	cmp r0, #0
	bne _0814CE40
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CE40:
	adds r4, r5, #0
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CE56
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CE56:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CE64
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_0814CE64:
	adds r3, r5, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	cmp r2, #0xfe
	bhi _0814CE86
	ldrh r1, [r5, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0814CE86
	adds r0, r2, #1
	strb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CE86:
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814CEA0: .4byte sub_0814E748
_0814CEA4: .4byte gBldRegs
_0814CEA8: .4byte 0x0000024A

	thumb_func_start sub_0814CEAC
sub_0814CEAC: @ 0x0814CEAC
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, [r3, #0xc]
	adds r4, r1, #0
	adds r4, #0x38
	ldrh r0, [r3, #8]
	adds r0, #1
	movs r5, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0814CEFC
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814CED0
	ldr r0, _0814CEF4 @ =sub_0814E1C0
	str r0, [r1, #8]
_0814CED0:
	ldr r2, [r3, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xa8
	adds r0, r0, r1
	str r5, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #0xb8
	adds r2, r2, r0
	str r5, [r2]
	ldr r0, _0814CEF8 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	b _0814CF28
	.align 2, 0
_0814CEF4: .4byte sub_0814E1C0
_0814CEF8: .4byte gCurGameState
_0814CEFC:
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814CF14
	movs r0, #0
	strb r0, [r3, #1]
	ldr r0, _0814CF30 @ =0x0000024A
	bl m4aSongNumStart
_0814CF14:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CF22
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0814CF22:
	adds r0, r4, #0
	bl sub_0815604C
_0814CF28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814CF30: .4byte 0x0000024A

	thumb_func_start sub_0814CF34
sub_0814CF34: @ 0x0814CF34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	mov r1, sp
	ldr r7, _0814D024 @ =gUnk_08387D8C
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r4, _0814D028 @ =0x06012000
	adds r0, r0, r4
	str r0, [sp]
	movs r5, #0
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	ldrh r0, [r7, #0x38]
	mov sl, r0
	strh r0, [r1, #0xc]
	ldrh r2, [r7, #0x3a]
	mov sb, r2
	mov r0, sb
	strb r0, [r1, #0x1a]
	strh r5, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r6, [r0]
	strb r6, [r1, #0x1f]
	ldr r0, _0814D02C @ =0x0000FFC0
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	str r5, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r1, r8
	adds r1, #0xc
	adds r0, r7, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	mov r2, r8
	str r0, [r2, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	ldrh r0, [r7, #0x30]
	strh r0, [r1, #0xc]
	ldrh r0, [r7, #0x32]
	strb r0, [r1, #0x1a]
	strh r5, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	adds r0, r7, #0
	adds r0, #0x35
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	movs r0, #0x14
	strh r0, [r1, #0x10]
	ldr r0, _0814D030 @ =0x0000FFEC
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	add r4, sp, #0x28
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x28]
	mov r2, sl
	strh r2, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x16]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #0xf
	ands r0, r6
	strb r0, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldrb r0, [r4, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D024: .4byte gUnk_08387D8C
_0814D028: .4byte 0x06012000
_0814D02C: .4byte 0x0000FFC0
_0814D030: .4byte 0x0000FFEC

	thumb_func_start sub_0814D034
sub_0814D034: @ 0x0814D034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0814D050
	ldr r1, [r4, #0x38]
	ldr r0, _0814D0DC @ =0xFFF80000
	cmp r1, r0
	blt _0814D050
	ldr r0, _0814D0E0 @ =0x00000251
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #7]
_0814D050:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x22
	ble _0814D062
	ldr r0, _0814D0E4 @ =sub_0814D0F4
	str r0, [r4]
_0814D062:
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D072
	rsbs r2, r1, #0
_0814D072:
	ldr r0, _0814D0E8 @ =0x00014BFF
	cmp r2, r0
	ble _0814D088
	ldr r0, _0814D0EC @ =0xFFFEB400
	cmp r1, #0
	ble _0814D082
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D082:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D088:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D0F0 @ =0x00027FFF
	cmp r0, r1
	ble _0814D0A0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D0A0:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D0CE
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D0CE:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D0DC: .4byte 0xFFF80000
_0814D0E0: .4byte 0x00000251
_0814D0E4: .4byte sub_0814D0F4
_0814D0E8: .4byte 0x00014BFF
_0814D0EC: .4byte 0xFFFEB400
_0814D0F0: .4byte 0x00027FFF

	thumb_func_start sub_0814D0F4
sub_0814D0F4: @ 0x0814D0F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc
	ldr r2, _0814D184 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D118
	rsbs r2, r1, #0
_0814D118:
	ldr r0, _0814D188 @ =0x00014BFF
	cmp r2, r0
	ble _0814D12E
	ldr r0, _0814D18C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D128
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D128:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D12E:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D190 @ =0x00027FFF
	cmp r0, r1
	ble _0814D146
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D146:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D194 @ =sub_0814D198
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D178
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D178:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D184: .4byte gUnk_08387F3C
_0814D188: .4byte 0x00014BFF
_0814D18C: .4byte 0xFFFEB400
_0814D190: .4byte 0x00027FFF
_0814D194: .4byte sub_0814D198

	thumb_func_start sub_0814D198
sub_0814D198: @ 0x0814D198
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D1AC
	rsbs r2, r1, #0
_0814D1AC:
	ldr r0, _0814D218 @ =0x00014BFF
	cmp r2, r0
	ble _0814D1C2
	ldr r0, _0814D21C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D1BC
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D1BC:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D1C2:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D220 @ =0x00027FFF
	cmp r0, r1
	ble _0814D1DA
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D1DA:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814D204
	movs r1, #1
_0814D204:
	cmp r1, #0
	beq _0814D20C
	ldr r0, _0814D224 @ =sub_0814D228
	str r0, [r4]
_0814D20C:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D218: .4byte 0x00014BFF
_0814D21C: .4byte 0xFFFEB400
_0814D220: .4byte 0x00027FFF
_0814D224: .4byte sub_0814D228

	thumb_func_start sub_0814D228
sub_0814D228: @ 0x0814D228
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc
	ldr r2, _0814D2B8 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x1c]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x1e]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D24C
	rsbs r2, r1, #0
_0814D24C:
	ldr r0, _0814D2BC @ =0x00014BFF
	cmp r2, r0
	ble _0814D262
	ldr r0, _0814D2C0 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D25C
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D25C:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D262:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D2C4 @ =0x00027FFF
	cmp r0, r1
	ble _0814D27A
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D27A:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D2C8 @ =sub_0814D2CC
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D2AC
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D2AC:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D2B8: .4byte gUnk_08387F3C
_0814D2BC: .4byte 0x00014BFF
_0814D2C0: .4byte 0xFFFEB400
_0814D2C4: .4byte 0x00027FFF
_0814D2C8: .4byte sub_0814D2CC

	thumb_func_start sub_0814D2CC
sub_0814D2CC: @ 0x0814D2CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D2E0
	rsbs r2, r1, #0
_0814D2E0:
	ldr r0, _0814D35C @ =0x00014BFF
	cmp r2, r0
	ble _0814D2F6
	ldr r0, _0814D360 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D2F0
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D2F0:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D2F6:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D364 @ =0x00027FFF
	cmp r0, r1
	ble _0814D30E
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D30E:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r1, _0814D368 @ =0x0087FFFF
	cmp r0, r1
	ble _0814D32E
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x38]
	ldr r0, _0814D36C @ =sub_0814D370
	str r0, [r4]
_0814D32E:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1c]
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D350
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D350:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D35C: .4byte 0x00014BFF
_0814D360: .4byte 0xFFFEB400
_0814D364: .4byte 0x00027FFF
_0814D368: .4byte 0x0087FFFF
_0814D36C: .4byte sub_0814D370

	thumb_func_start sub_0814D370
sub_0814D370: @ 0x0814D370
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0814D41C @ =0x0000024F
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0xc
	ldr r2, _0814D420 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x20]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x22]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, [r4, #0x40]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x40]
	ldr r0, _0814D424 @ =0x00001388
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r0, r2
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D3AE
	rsbs r2, r1, #0
_0814D3AE:
	ldr r0, _0814D428 @ =0x00014BFF
	cmp r2, r0
	ble _0814D3C4
	ldr r0, _0814D42C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D3BE
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D3BE:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D3C4:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D430 @ =0x00027FFF
	cmp r0, r1
	ble _0814D3DC
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D3DC:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D434 @ =sub_0814D438
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D40E
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D40E:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D41C: .4byte 0x0000024F
_0814D420: .4byte gUnk_08387F3C
_0814D424: .4byte 0x00001388
_0814D428: .4byte 0x00014BFF
_0814D42C: .4byte 0xFFFEB400
_0814D430: .4byte 0x00027FFF
_0814D434: .4byte sub_0814D438

	thumb_func_start sub_0814D438
sub_0814D438: @ 0x0814D438
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D44C
	rsbs r2, r1, #0
_0814D44C:
	ldr r0, _0814D4B8 @ =0x00014BFF
	cmp r2, r0
	ble _0814D462
	ldr r0, _0814D4BC @ =0xFFFEB400
	cmp r1, #0
	ble _0814D45C
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D45C:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D462:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D4C0 @ =0x00027FFF
	cmp r0, r1
	ble _0814D47A
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D47A:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814D4A4
	movs r1, #1
_0814D4A4:
	cmp r1, #0
	beq _0814D4AC
	ldr r0, _0814D4C4 @ =sub_0814D4C8
	str r0, [r4]
_0814D4AC:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D4B8: .4byte 0x00014BFF
_0814D4BC: .4byte 0xFFFEB400
_0814D4C0: .4byte 0x00027FFF
_0814D4C4: .4byte sub_0814D4C8

	thumb_func_start sub_0814D4C8
sub_0814D4C8: @ 0x0814D4C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc
	ldr r2, _0814D558 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D4EC
	rsbs r2, r1, #0
_0814D4EC:
	ldr r0, _0814D55C @ =0x00014BFF
	cmp r2, r0
	ble _0814D502
	ldr r0, _0814D560 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D4FC
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D4FC:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D502:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D564 @ =0x00027FFF
	cmp r0, r1
	ble _0814D51A
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D51A:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D568 @ =sub_0814D56C
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D54C
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D54C:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D558: .4byte gUnk_08387F3C
_0814D55C: .4byte 0x00014BFF
_0814D560: .4byte 0xFFFEB400
_0814D564: .4byte 0x00027FFF
_0814D568: .4byte sub_0814D56C

	thumb_func_start sub_0814D56C
sub_0814D56C: @ 0x0814D56C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D580
	rsbs r2, r1, #0
_0814D580:
	ldr r0, _0814D604 @ =0x00014BFF
	cmp r2, r0
	ble _0814D596
	ldr r0, _0814D608 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D590
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D590:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D596:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D60C @ =0x00027FFF
	cmp r0, r1
	ble _0814D5AE
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D5AE:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r1, _0814D610 @ =0x0087FFFF
	cmp r0, r1
	ble _0814D5D4
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x38]
	movs r0, #0x69
	bl m4aSongNumStart
	ldr r0, _0814D614 @ =sub_0814E7F8
	str r0, [r4]
_0814D5D4:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1c]
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D5F6
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D5F6:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D604: .4byte 0x00014BFF
_0814D608: .4byte 0xFFFEB400
_0814D60C: .4byte 0x00027FFF
_0814D610: .4byte 0x0087FFFF
_0814D614: .4byte sub_0814E7F8

	thumb_func_start sub_0814D618
sub_0814D618: @ 0x0814D618
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x94
	lsls r0, r0, #2
	bl m4aSongNumStart
	adds r5, r4, #0
	adds r5, #0xc
	ldr r1, _0814D694 @ =gUnk_08387F3C
	ldrh r0, [r1, #4]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x44]
	str r6, [r4, #0x48]
	str r0, [r4, #0x3c]
	adds r0, r6, #0
	adds r1, r0, #0
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D698 @ =0x00027FFF
	cmp r0, r1
	ble _0814D658
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
_0814D658:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D69C @ =sub_0814D6A0
	str r0, [r4]
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D686
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D686:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814D694: .4byte gUnk_08387F3C
_0814D698: .4byte 0x00027FFF
_0814D69C: .4byte sub_0814D6A0

	thumb_func_start sub_0814D6A0
sub_0814D6A0: @ 0x0814D6A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #6]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x13
	ble _0814D6BE
	strb r5, [r4, #6]
	movs r0, #0x94
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814D6BE:
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D6CE
	rsbs r2, r1, #0
_0814D6CE:
	ldr r0, _0814D748 @ =0x00014BFF
	cmp r2, r0
	ble _0814D6E2
	ldr r0, _0814D74C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D6DE
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D6DE:
	str r0, [r4, #0x3c]
	str r5, [r4, #0x44]
_0814D6E2:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D750 @ =0x00027FFF
	cmp r0, r1
	ble _0814D6FA
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D6FA:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, _0814D754 @ =0x00B7FFFF
	cmp r2, r0
	ble _0814D718
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _0814D758 @ =sub_0814E85C
	str r0, [r4]
_0814D718:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1c]
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D73A
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D73A:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D748: .4byte 0x00014BFF
_0814D74C: .4byte 0xFFFEB400
_0814D750: .4byte 0x00027FFF
_0814D754: .4byte 0x00B7FFFF
_0814D758: .4byte sub_0814E85C

	thumb_func_start sub_0814D75C
sub_0814D75C: @ 0x0814D75C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x28]
	movs r3, #0
	movs r5, #0
	movs r0, #0xff
	mov sl, r0
	movs r1, #0x10
	mov r8, r1
	mov r7, sp
_0814D778:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0xc
	ldr r4, [sp, #0x28]
	adds r2, r4, r0
	ldr r6, _0814D970 @ =gUnk_08387D8C
	mov sb, r6
	adds r1, r3, #0
	adds r1, #0xa
	lsls r1, r1, #3
	add r1, sb
	ldrb r0, [r1, #4]
	lsls r0, r0, #5
	ldr r4, _0814D974 @ =0x06012000
	adds r0, r0, r4
	str r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	ldrh r0, [r1]
	mov r6, sp
	strh r0, [r6, #0x2c]
	strh r0, [r2, #0xc]
	ldrh r4, [r1, #2]
	strb r4, [r2, #0x1a]
	strh r5, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r6, sl
	orrs r0, r6
	strb r0, [r2, #0x1b]
	mov r0, r8
	strb r0, [r2, #0x1c]
	ldrb r1, [r1, #5]
	add r6, sp, #0x34
	strb r1, [r6]
	strb r1, [r2, #0x1f]
	lsls r1, r3, #4
	ldr r6, _0814D978 @ =gUnk_08387F70
	adds r0, r1, r6
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	ldr r0, _0814D97C @ =gUnk_08387F72
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	adds r0, r2, #0
	str r3, [sp, #0x30]
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [sp]
	mov r2, sp
	ldrh r2, [r2, #0x2c]
	strh r2, [r7, #0xc]
	strb r4, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r4, sl
	orrs r0, r4
	strb r0, [r7, #0x1b]
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x16]
	mov r6, r8
	strb r6, [r7, #0x1c]
	movs r0, #0xf
	add r1, sp, #0x34
	ldrb r1, [r1]
	ands r0, r1
	strb r0, [r7, #0x1f]
	movs r2, #0x80
	lsls r2, r2, #0xc
	str r2, [sp, #8]
	mov r0, sp
	bl sub_08155128
	ldrb r0, [r7, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	ldr r3, [sp, #0x30]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814D778
	ldr r4, [sp, #0x28]
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r4, r6
	mov r0, sb
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0814D974 @ =0x06012000
	adds r0, r0, r1
	str r0, [r2]
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	mov r0, sb
	adds r0, #0x90
	ldrh r0, [r0]
	mov r8, r0
	strh r0, [r2, #0xc]
	mov r0, sb
	adds r0, #0x92
	ldrh r6, [r0]
	strb r6, [r2, #0x1a]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, sb
	adds r0, #0x95
	ldrb r0, [r0]
	mov sl, r0
	strb r0, [r2, #0x1f]
	ldr r7, _0814D980 @ =0x0000FFC0
	strh r7, [r2, #0x10]
	strh r7, [r2, #0x12]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [sp]
	mov r0, sp
	mov r2, r8
	strh r2, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	movs r0, #0xf
	mov r2, sl
	ands r0, r2
	strb r0, [r1, #0x1f]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	ldr r0, [sp, #0x28]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r2, r0, r1
	mov r0, sb
	adds r0, #0x9c
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0814D974 @ =0x06012000
	adds r0, r0, r6
	str r0, [r2]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	mov r0, sb
	adds r0, #0x98
	ldrh r0, [r0]
	mov r8, r0
	strh r0, [r2, #0xc]
	mov r0, sb
	adds r0, #0x9a
	ldrh r6, [r0]
	strb r6, [r2, #0x1a]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, sb
	adds r0, #0x9d
	ldrb r0, [r0]
	mov sl, r0
	strb r0, [r2, #0x1f]
	strh r7, [r2, #0x10]
	strh r7, [r2, #0x12]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [sp]
	mov r0, sp
	mov r2, r8
	strh r2, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r4, #0x10
	strb r4, [r0, #0x1c]
	movs r0, #0xf
	mov r6, sl
	ands r0, r6
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D970: .4byte gUnk_08387D8C
_0814D974: .4byte 0x06012000
_0814D978: .4byte gUnk_08387F70
_0814D97C: .4byte gUnk_08387F72
_0814D980: .4byte 0x0000FFC0

	thumb_func_start sub_0814D984
sub_0814D984: @ 0x0814D984
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r7, r5, r0
	movs r6, #0xba
	lsls r6, r6, #1
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0814D9BA
	movs r0, #0
	strb r0, [r1]
	movs r2, #0
	ldr r0, _0814DA20 @ =0x00000175
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0814D9B8
	movs r2, #1
_0814D9B8:
	strb r2, [r1]
_0814D9BA:
	ldr r1, _0814DA20 @ =0x00000175
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814DA12
	movs r4, #0
	ldr r6, _0814DA24 @ =gUnk_08387F70
	mov sb, r6
	movs r0, #0xe
	add r0, sb
	mov r8, r0
_0814D9D0:
	lsls r3, r4, #3
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r0, r0, r3
	lsls r2, r4, #4
	mov r1, sb
	adds r1, #0xc
	adds r1, r2, r1
	movs r6, #2
	ldrsh r0, [r0, r6]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r0, r0, r3
	add r2, r8
	movs r6, #2
	ldrsh r0, [r0, r6]
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r7, #0x12]
	subs r1, #0x58
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814D9D0
_0814DA12:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DA20: .4byte 0x00000175
_0814DA24: .4byte gUnk_08387F70

	thumb_func_start sub_0814DA28
sub_0814DA28: @ 0x0814DA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	ldr r7, _0814DB38 @ =gUnk_08387F70
_0814DA44:
	movs r2, #0
	mov r8, r2
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp, #4]
_0814DA4E:
	mov r5, r8
	lsls r2, r5, #2
	movs r0, #0x98
	lsls r0, r0, #2
	add r0, sl
	adds r0, r0, r2
	ldr r1, [r0]
	subs r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, sl
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [sp]
	muls r0, r2, r0
	lsls r0, r0, #1
	subs r1, r1, r0
	cmp r1, #0
	ble _0814DAFC
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	asrs r0, r0, #8
	adds r5, r0, #0
	muls r5, r0, r5
	asrs r1, r1, #8
	adds r4, r1, #0
	muls r4, r0, r4
	lsls r4, r4, #1
	adds r6, r1, #0
	muls r6, r1, r6
	mov r0, r8
	lsls r2, r0, #4
	adds r0, r2, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r5, #0
	muls r3, r0, r3
	adds r0, r7, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	adds r3, r3, r0
	adds r0, r7, #4
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	adds r3, r3, r0
	adds r0, r7, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0xa
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r4, r0
	adds r1, r1, r0
	adds r0, r7, #6
	adds r0, r2, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r6, r0
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r2, r0
	asrs r3, r3, #0x10
	ldrh r0, [r0]
	adds r3, r3, r0
	mov r5, sb
	strh r3, [r5, #0x10]
	ldr r0, _0814DB3C @ =gUnk_08387F7E
	adds r2, r2, r0
	asrs r1, r1, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r5, #0x12]
	mov r0, sb
	bl sub_0815604C
_0814DAFC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #7
	bls _0814DA4E
	mov r0, sb
	bl sub_08155128
	cmp r0, #0
	bne _0814DB1A
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #0x1b]
_0814DB1A:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #3
	bls _0814DA44
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DB38: .4byte gUnk_08387F70
_0814DB3C: .4byte gUnk_08387F7E

	thumb_func_start sub_0814DB40
sub_0814DB40: @ 0x0814DB40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r1, r0, r1
	str r1, [sp]
	movs r1, #0x88
	lsls r1, r1, #2
	adds r1, r1, r0
	mov sl, r1
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
	movs r1, #0x89
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r1, r1, r0
	mov ip, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r7, r0, r1
_0814DB7C:
	lsls r2, r6, #3
	ldr r0, [sp]
	adds r5, r0, r2
	mov r0, sl
	adds r1, r0, r2
	ldr r0, [r5]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r5]
	mov r1, sb
	adds r4, r1, r2
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4]
	mov r1, ip
	adds r3, r1, r2
	ldr r0, [r3]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r2]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0814DB7C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814DBD0
sub_0814DBD0: @ 0x0814DBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r7, #0
	movs r1, #0x98
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r2, r0, r2
	str r2, [sp, #4]
	ldr r3, _0814DCB4 @ =gUnk_08387F70
	mov ip, r3
	movs r5, #0xd0
	lsls r5, r5, #1
	adds r5, r5, r0
	mov sl, r5
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
_0814DC02:
	lsls r0, r7, #2
	ldr r3, [sp]
	adds r2, r3, r0
	ldr r5, [sp, #4]
	adds r0, r5, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	asrs r0, r0, #8
	adds r6, r0, #0
	muls r6, r0, r6
	asrs r1, r1, #8
	adds r3, r1, #0
	muls r3, r0, r3
	lsls r3, r3, #1
	adds r0, r1, #0
	muls r0, r1, r0
	mov r8, r0
	lsls r4, r7, #3
	mov r1, sl
	adds r1, r1, r4
	str r1, [sp, #8]
	lsls r2, r7, #4
	mov r5, ip
	adds r0, r2, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #8
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r3, r0
	adds r1, r1, r0
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	ldr r0, [sp, #8]
	str r1, [r0]
	add r4, sb
	mov r0, ip
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0xa
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r3, r0
	adds r1, r1, r0
	ldr r0, _0814DCB8 @ =gUnk_08387F76
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	str r1, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _0814DC02
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DCB4: .4byte gUnk_08387F70
_0814DCB8: .4byte gUnk_08387F76

	thumb_func_start sub_0814DCBC
sub_0814DCBC: @ 0x0814DCBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r2, #0
	ldr r0, _0814DD5C @ =sub_0814DD64
	mov sl, r0
	ldr r1, _0814DD60 @ =gUnk_08387F70
	mov r8, r1
	movs r0, #2
	add r0, r8
	mov sb, r0
_0814DCDA:
	lsls r6, r2, #3
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r4, r4, r6
	lsls r5, r2, #4
	mov r1, r8
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	lsls r0, r0, #0x10
	movs r1, #0xf
	str r2, [sp]
	bl __divsi3
	str r0, [r4]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r4, r4, r6
	add r5, sb
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r0, #0x50
	lsls r0, r0, #0x10
	movs r1, #0xf
	bl __divsi3
	str r0, [r4]
	ldr r2, [sp]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0814DCDA
	movs r0, #0
	strh r0, [r7, #4]
	mov r0, sl
	str r0, [r7]
	movs r4, #0
_0814DD2C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r7, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DD2C
	adds r0, r7, #0
	bl sub_0814D984
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DD5C: .4byte sub_0814DD64
_0814DD60: .4byte gUnk_08387F70

	thumb_func_start sub_0814DD64
sub_0814DD64: @ 0x0814DD64
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814DD7A
	ldr r0, _0814DDD8 @ =sub_0814DDDC
	str r0, [r5]
_0814DD7A:
	adds r0, r5, #0
	bl sub_0814DB40
	movs r3, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r4, r5, r7
_0814DD8E:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r2, r3, #3
	adds r0, r6, r2
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #0x1c]
	adds r2, r4, r2
	movs r7, #2
	ldrsh r0, [r2, r7]
	strh r0, [r1, #0x1e]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814DD8E
	movs r4, #0
_0814DDB4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DDB4
	adds r0, r5, #0
	bl sub_0814D984
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DDD8: .4byte sub_0814DDDC

	thumb_func_start sub_0814DDDC
sub_0814DDDC: @ 0x0814DDDC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r2, #0
	ldr r7, _0814DE58 @ =sub_0814DE5C
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r5, r6, r0
	adds r0, #4
	adds r4, r6, r0
	movs r3, #0
_0814DDF0:
	lsls r0, r2, #3
	adds r1, r5, r0
	adds r0, r4, r0
	str r3, [r0]
	str r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0814DDF0
	movs r0, #0
	strh r0, [r6, #4]
	str r7, [r6]
	movs r5, #0
_0814DE0C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DE28
	adds r0, r6, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DE28:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0814DE0C
	movs r4, #0
_0814DE34:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DE34
	adds r0, r6, #0
	bl sub_0814D984
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DE58: .4byte sub_0814DE5C

	thumb_func_start sub_0814DE5C
sub_0814DE5C: @ 0x0814DE5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0814DE70
	ldr r0, _0814DEC0 @ =sub_0814DEC4
	str r0, [r6]
_0814DE70:
	movs r5, #0
_0814DE72:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DE8E
	adds r0, r6, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DE8E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0814DE72
	movs r4, #0
_0814DE9A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DE9A
	adds r0, r6, #0
	bl sub_0814D984
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814DEC0: .4byte sub_0814DEC4

	thumb_func_start sub_0814DEC4
sub_0814DEC4: @ 0x0814DEC4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	ldr r4, _0814DF38 @ =sub_0814DF40
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r3, _0814DF3C @ =0x00000369
_0814DED4:
	lsls r0, r1, #2
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0814DED4
	movs r0, #0
	strh r0, [r6, #4]
	str r4, [r6]
	movs r5, #0
_0814DEEC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DF08
	adds r0, r6, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DF08:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0814DEEC
	movs r4, #0
_0814DF14:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DF14
	adds r0, r6, #0
	bl sub_0814D984
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814DF38: .4byte sub_0814DF40
_0814DF3C: .4byte 0x00000369

	thumb_func_start sub_0814DF40
sub_0814DF40: @ 0x0814DF40
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0814DBD0
	movs r3, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r4, r5, r7
_0814DF56:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r2, r3, #3
	adds r0, r6, r2
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #0x1c]
	adds r2, r4, r2
	movs r7, #2
	ldrsh r0, [r2, r7]
	strh r0, [r1, #0x1e]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814DF56
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0814DF9C
	ldr r1, [r5, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814DF94
	ldr r0, _0814DFF0 @ =sub_0814E270
	str r0, [r1, #8]
_0814DF94:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _0814DFF4 @ =sub_0814DFF8
	str r0, [r5]
_0814DF9C:
	movs r6, #0
_0814DF9E:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DFBA
	adds r0, r5, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DFBA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0814DF9E
	adds r0, r5, #0
	bl sub_0814DA28
	movs r4, #0
_0814DFCC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DFCC
	adds r0, r5, #0
	bl sub_0814D984
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DFF0: .4byte sub_0814E270
_0814DFF4: .4byte sub_0814DFF8

	thumb_func_start sub_0814DFF8
sub_0814DFF8: @ 0x0814DFF8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0814DBD0
	movs r3, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r4, r5, r7
_0814E00E:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r2, r3, #3
	adds r0, r6, r2
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #0x1c]
	adds r2, r4, r2
	movs r7, #2
	ldrsh r0, [r2, r7]
	strh r0, [r1, #0x1e]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814E00E
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r2, #0
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _0814E05C
	ldr r0, [r5, #8]
	adds r1, r0, #0
	adds r1, #0xb4
	str r2, [r1]
	adds r0, #0xc4
	str r2, [r0]
	ldr r0, _0814E058 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	b _0814E0AA
	.align 2, 0
_0814E058: .4byte gCurGameState
_0814E05C:
	movs r6, #0
_0814E05E:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814E07A
	adds r0, r5, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814E07A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0814E05E
	adds r0, r5, #0
	bl sub_0814DA28
	movs r4, #0
_0814E08C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814E08C
	adds r0, r5, #0
	bl sub_0814D984
_0814E0AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_12
nullsub_12: @ 0x0814E0B0
	bx lr
	.align 2, 0

	thumb_func_start sub_0814E0B4
sub_0814E0B4: @ 0x0814E0B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814AA50
	adds r0, r4, #0
	bl sub_0814AAF4
	ldr r0, _0814E0CC @ =sub_0814E0D0
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E0CC: .4byte sub_0814E0D0

	thumb_func_start sub_0814E0D0
sub_0814E0D0: @ 0x0814E0D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814AB7C
	ldr r0, _0814E0E4 @ =sub_0814AC28
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E0E4: .4byte sub_0814AC28

	thumb_func_start sub_0814E0E8
sub_0814E0E8: @ 0x0814E0E8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xc]
	adds r1, r0, #1
	strh r1, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0814E0FE
	ldr r0, _0814E10C @ =sub_0814E110
	str r0, [r2, #8]
_0814E0FE:
	adds r0, r2, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E10C: .4byte sub_0814E110

	thumb_func_start sub_0814E110
sub_0814E110: @ 0x0814E110
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1a
	bl m4aSongNumStart
	ldr r0, _0814E12C @ =sub_0814E130
	str r0, [r4, #8]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E12C: .4byte sub_0814E130

	thumb_func_start sub_0814E130
sub_0814E130: @ 0x0814E130
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _0814E150
	ldr r0, _0814E160 @ =0x00000249
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r0, _0814E164 @ =sub_0814E168
	str r0, [r4, #8]
_0814E150:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E160: .4byte 0x00000249
_0814E164: .4byte sub_0814E168

	thumb_func_start sub_0814E168
sub_0814E168: @ 0x0814E168
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0814E17E
	ldr r0, _0814E194 @ =sub_0814AD44
	str r0, [r4, #8]
_0814E17E:
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E194: .4byte sub_0814AD44

	thumb_func_start sub_0814E198
sub_0814E198: @ 0x0814E198
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814E1B2
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814E1B2:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814E1C0
sub_0814E1C0: @ 0x0814E1C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814E918
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xb4
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xc4
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E1EA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814E1F2
_0814E1EA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814E1F2:
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, [r0]
	ldr r0, _0814E210 @ =sub_0814E5A8
	str r0, [r1, #4]
	ldr r0, _0814E214 @ =sub_0814E218
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E210: .4byte sub_0814E5A8
_0814E214: .4byte sub_0814E218

	thumb_func_start sub_0814E218
sub_0814E218: @ 0x0814E218
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814E224
sub_0814E224: @ 0x0814E224
	push {lr}
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r1, _0814E238 @ =sub_0814E23C
	str r1, [r0, #8]
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E238: .4byte sub_0814E23C

	thumb_func_start sub_0814E23C
sub_0814E23C: @ 0x0814E23C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x59
	ble _0814E252
	ldr r0, _0814E260 @ =sub_0814AE78
	str r0, [r1, #8]
_0814E252:
	adds r0, r1, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E260: .4byte sub_0814AE78

	thumb_func_start sub_0814E264
sub_0814E264: @ 0x0814E264
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814E270
sub_0814E270: @ 0x0814E270
	push {lr}
	ldr r1, _0814E280 @ =sub_0814E284
	str r1, [r0, #8]
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E280: .4byte sub_0814E284

	thumb_func_start sub_0814E284
sub_0814E284: @ 0x0814E284
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814E290
sub_0814E290: @ 0x0814E290
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0814E304 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r5, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0814E308 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0814E30C @ =gUnk_030016A0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _0814E310 @ =gUnk_030016E0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _0814E314 @ =gUnk_03001720
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _0814E318 @ =gUnk_03001770
	movs r1, #2
	bl m4aMPlayFadeOut
	strh r5, [r4, #0xc]
	ldr r0, _0814E31C @ =sub_0814E320
	str r0, [r4, #8]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_0815604C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814E304: .4byte 0x00007FFF
_0814E308: .4byte 0x0000FFFF
_0814E30C: .4byte gUnk_030016A0
_0814E310: .4byte gUnk_030016E0
_0814E314: .4byte gUnk_03001720
_0814E318: .4byte gUnk_03001770
_0814E31C: .4byte sub_0814E320

	thumb_func_start sub_0814E320
sub_0814E320: @ 0x0814E320
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xc]
	adds r1, r0, #1
	strh r1, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0814E336
	ldr r0, _0814E344 @ =sub_0814E348
	str r0, [r2, #8]
_0814E336:
	adds r0, r2, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E344: .4byte sub_0814E348

	thumb_func_start sub_0814E348
sub_0814E348: @ 0x0814E348
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r2, _0814E364 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0814E368 @ =sub_0814E36C
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E364: .4byte gUnk_03002440
_0814E368: .4byte sub_0814E36C

	thumb_func_start sub_0814E36C
sub_0814E36C: @ 0x0814E36C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0814E388 @ =gUnk_089331AC
	ldr r1, _0814E38C @ =0x00007D28
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0814E390 @ =sub_0814AF04
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E388: .4byte gUnk_089331AC
_0814E38C: .4byte 0x00007D28
_0814E390: .4byte sub_0814AF04

	thumb_func_start sub_0814E394
sub_0814E394: @ 0x0814E394
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0814E3C8 @ =sub_0814E408
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0814E3CC @ =nullsub_135
	str r1, [sp]
	movs r1, #0x78
	movs r3, #4
	bl CreateState
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E3D0
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814E3D8
	.align 2, 0
_0814E3C8: .4byte sub_0814E408
_0814E3CC: .4byte nullsub_135
_0814E3D0:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814E3D8:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814E3FC @ =0x0100003C
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814E400 @ =sub_0814E43C
	str r0, [r4, #4]
	strb r6, [r4]
	str r7, [r4, #0xc]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814E3FC: .4byte 0x0100003C
_0814E400: .4byte sub_0814E43C

	thumb_func_start nullsub_135
nullsub_135: @ 0x0814E404
	bx lr
	.align 2, 0

	thumb_func_start sub_0814E408
sub_0814E408: @ 0x0814E408
	push {lr}
	ldr r0, _0814E424 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E428
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814E430
	.align 2, 0
_0814E424: .4byte gCurGameState
_0814E428:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814E430:
	ldr r1, [r0, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814E43C
sub_0814E43C: @ 0x0814E43C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0814E45C
	movs r0, #0x84
	lsls r0, r0, #0x10
	str r0, [r1, #0x60]
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1, #0x64]
	ldr r0, _0814E458 @ =sub_0814B368
	b _0814E46A
	.align 2, 0
_0814E458: .4byte sub_0814B368
_0814E45C:
	movs r0, #0xc8
	lsls r0, r0, #0xf
	str r0, [r1, #0x60]
	movs r0, #0x90
	lsls r0, r0, #0xf
	str r0, [r1, #0x64]
	ldr r0, _0814E478 @ =sub_0814C674
_0814E46A:
	str r0, [r1, #4]
	adds r0, r1, #0
	bl sub_0814B024
	pop {r0}
	bx r0
	.align 2, 0
_0814E478: .4byte sub_0814C674

	thumb_func_start sub_0814E47C
sub_0814E47C: @ 0x0814E47C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E492
	ldr r0, _0814E4A8 @ =sub_0814B784
	str r0, [r4, #4]
_0814E492:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E4A8: .4byte sub_0814B784

	thumb_func_start sub_0814E4AC
sub_0814E4AC: @ 0x0814E4AC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E4C4
sub_0814E4C4: @ 0x0814E4C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E4DC
sub_0814E4DC: @ 0x0814E4DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0814E4FC @ =sub_0814E500
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E4FC: .4byte sub_0814E500

	thumb_func_start sub_0814E500
sub_0814E500: @ 0x0814E500
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E518
sub_0814E518: @ 0x0814E518
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	ble _0814E52E
	ldr r0, _0814E544 @ =sub_0814E548
	str r0, [r4, #4]
_0814E52E:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E544: .4byte sub_0814E548

	thumb_func_start sub_0814E548
sub_0814E548: @ 0x0814E548
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r0, [r5, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #0
	strh r0, [r6, #8]
	ldr r0, _0814E58C @ =sub_0814E590
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E58C: .4byte sub_0814E590

	thumb_func_start sub_0814E590
sub_0814E590: @ 0x0814E590
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E5A8
sub_0814E5A8: @ 0x0814E5A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814E5CC @ =sub_0814E5D0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E5CC: .4byte sub_0814E5D0

	thumb_func_start sub_0814E5D0
sub_0814E5D0: @ 0x0814E5D0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4a
	ble _0814E5E6
	ldr r0, _0814E5FC @ =sub_0814B95C
	str r0, [r4, #4]
_0814E5E6:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E5FC: .4byte sub_0814B95C

	thumb_func_start sub_0814E600
sub_0814E600: @ 0x0814E600
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E616
	ldr r0, _0814E62C @ =sub_0814C424
	str r0, [r4, #4]
_0814E616:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E62C: .4byte sub_0814C424

	thumb_func_start sub_0814E630
sub_0814E630: @ 0x0814E630
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x59
	ble _0814E646
	ldr r0, _0814E65C @ =sub_0814C478
	str r0, [r4, #4]
_0814E646:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E65C: .4byte sub_0814C478

	thumb_func_start sub_0814E660
sub_0814E660: @ 0x0814E660
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E676
	ldr r0, _0814E68C @ =sub_0814C5EC
	str r0, [r4, #4]
_0814E676:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E68C: .4byte sub_0814C5EC

	thumb_func_start sub_0814E690
sub_0814E690: @ 0x0814E690
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	ble _0814E6DC
	ldr r2, [r4, #0xc]
	ldr r0, [r2, #4]
	adds r1, r2, #0
	cmp r0, #0
	blt _0814E6B2
	ldr r0, _0814E6D4 @ =sub_0814EA74
	str r0, [r1, #8]
_0814E6B2:
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xa8
	adds r0, r0, r1
	str r3, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xb8
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _0814E6D8 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	b _0814E6FA
	.align 2, 0
_0814E6D4: .4byte sub_0814EA74
_0814E6D8: .4byte gCurGameState
_0814E6DC:
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
_0814E6FA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E700
sub_0814E700: @ 0x0814E700
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814E716
	ldr r0, _0814E72C @ =sub_0814CB0C
	str r0, [r4, #4]
_0814E716:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E72C: .4byte sub_0814CB0C

	thumb_func_start sub_0814E730
sub_0814E730: @ 0x0814E730
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E748
sub_0814E748: @ 0x0814E748
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0xc]
	adds r5, r3, #0
	adds r5, #0x38
	ldr r1, _0814E7A0 @ =gBldRegs
	movs r2, #0
	strh r2, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, [r3, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814E780
	movs r0, #0
	strb r0, [r4, #1]
	ldr r0, _0814E7A4 @ =0x0000024A
	bl m4aSongNumStart
_0814E780:
	ldr r0, _0814E7A8 @ =sub_0814E7AC
	str r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814E792
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_0814E792:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814E7A0: .4byte gBldRegs
_0814E7A4: .4byte 0x0000024A
_0814E7A8: .4byte sub_0814E7AC

	thumb_func_start sub_0814E7AC
sub_0814E7AC: @ 0x0814E7AC
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	adds r4, r0, #0
	adds r4, #0x38
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, _0814E7F0 @ =sub_0814CEAC
	str r0, [r1, #4]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814E7D6
	movs r0, #0
	strb r0, [r1, #1]
	ldr r0, _0814E7F4 @ =0x0000024A
	bl m4aSongNumStart
_0814E7D6:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814E7E4
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0814E7E4:
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E7F0: .4byte sub_0814CEAC
_0814E7F4: .4byte 0x0000024A

	thumb_func_start sub_0814E7F8
sub_0814E7F8: @ 0x0814E7F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	str r6, [r4, #0x3c]
	str r6, [r4, #0x48]
	str r6, [r4, #0x40]
	adds r5, r4, #0
	adds r5, #0xc
	ldr r1, _0814E82C @ =gUnk_08387F3C
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #4]
	ldr r0, _0814E830 @ =sub_0814E834
	str r0, [r4]
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E82C: .4byte gUnk_08387F3C
_0814E830: .4byte sub_0814E834

	thumb_func_start sub_0814E834
sub_0814E834: @ 0x0814E834
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E84A
	ldr r0, _0814E858 @ =sub_0814D618
	str r0, [r1]
_0814E84A:
	adds r0, r1, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E858: .4byte sub_0814D618

	thumb_func_start sub_0814E85C
sub_0814E85C: @ 0x0814E85C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	ldr r1, _0814E888 @ =gUnk_08387F3C
	ldrh r0, [r1, #4]
	movs r6, #0
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	strh r6, [r5, #4]
	ldr r0, _0814E88C @ =sub_0814E890
	str r0, [r5]
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E888: .4byte gUnk_08387F3C
_0814E88C: .4byte sub_0814E890

	thumb_func_start sub_0814E890
sub_0814E890: @ 0x0814E890
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0814E8A6
	ldr r0, _0814E8B4 @ =sub_0814E8B8
	str r0, [r1]
_0814E8A6:
	adds r0, r1, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E8B4: .4byte sub_0814E8B8

	thumb_func_start sub_0814E8B8
sub_0814E8B8: @ 0x0814E8B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xc
	ldr r1, _0814E8F4 @ =gUnk_08387F3C
	ldrh r0, [r1, #0x28]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x44]
	str r4, [r5, #0x3c]
	ldr r1, [r5, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814E8E2
	ldr r0, _0814E8F8 @ =sub_0814E290
	str r0, [r1, #8]
_0814E8E2:
	ldr r0, _0814E8FC @ =sub_0814E900
	str r0, [r5]
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E8F4: .4byte gUnk_08387F3C
_0814E8F8: .4byte sub_0814E290
_0814E8FC: .4byte sub_0814E900

	thumb_func_start sub_0814E900
sub_0814E900: @ 0x0814E900
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E918
sub_0814E918: @ 0x0814E918
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0814E94C @ =sub_0814E988
	movs r1, #0xa8
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0814E950 @ =nullsub_136
	str r3, [sp]
	movs r3, #4
	bl CreateState
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E954
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814E95C
	.align 2, 0
_0814E94C: .4byte sub_0814E988
_0814E950: .4byte nullsub_136
_0814E954:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814E95C:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814E97C @ =0x01000150
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814E980 @ =sub_0814E9BC
	str r0, [r4]
	str r6, [r4, #8]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814E97C: .4byte 0x01000150
_0814E980: .4byte sub_0814E9BC

	thumb_func_start nullsub_136
nullsub_136: @ 0x0814E984
	bx lr
	.align 2, 0

	thumb_func_start sub_0814E988
sub_0814E988: @ 0x0814E988
	push {lr}
	ldr r0, _0814E9A4 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E9A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814E9B0
	.align 2, 0
_0814E9A4: .4byte gCurGameState
_0814E9A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814E9B0:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814E9BC
sub_0814E9BC: @ 0x0814E9BC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0814D75C
	movs r2, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r7, #0xf0
	lsls r7, r7, #0xf
	adds r0, #4
	adds r3, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #0xf
_0814E9D8:
	lsls r1, r2, #3
	adds r0, r5, r1
	str r7, [r0]
	adds r1, r3, r1
	str r6, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0814E9D8
	ldr r0, _0814E9F8 @ =nullsub_137
	str r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814E9F8: .4byte nullsub_137

	thumb_func_start nullsub_137
nullsub_137: @ 0x0814E9FC
	bx lr
	.align 2, 0

	thumb_func_start sub_0814EA00
sub_0814EA00: @ 0x0814EA00
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _0814EA34 @ =sub_0814EA3C
	str r0, [r5]
	ldr r0, _0814EA38 @ =0x0000024D
	bl m4aSongNumStart
	movs r4, #0
_0814EA14:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814EA14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814EA34: .4byte sub_0814EA3C
_0814EA38: .4byte 0x0000024D

	thumb_func_start sub_0814EA3C
sub_0814EA3C: @ 0x0814EA3C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0814EA50
	ldr r0, _0814EA70 @ =sub_0814DEC4
	str r0, [r5]
_0814EA50:
	movs r4, #0
_0814EA52:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814EA52
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814EA70: .4byte sub_0814DEC4

	thumb_func_start sub_0814EA74
sub_0814EA74: @ 0x0814EA74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814EACC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xc0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EA9E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814EAA6
_0814EA9E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814EAA6:
	str r0, [r3]
	ldr r0, _0814EABC @ =sub_0814EAC0
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814EABC: .4byte sub_0814EAC0

	thumb_func_start sub_0814EAC0
sub_0814EAC0: @ 0x0814EAC0
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814EACC
sub_0814EACC: @ 0x0814EACC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0814EAFC @ =sub_0814EB38
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0814EB00 @ =nullsub_138
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #4
	bl CreateState
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EB04
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814EB0C
	.align 2, 0
_0814EAFC: .4byte sub_0814EB38
_0814EB00: .4byte nullsub_138
_0814EB04:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814EB0C:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814EB2C @ =0x01000026
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814EB30 @ =sub_0814EB6C
	str r0, [r4]
	str r6, [r4, #8]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814EB2C: .4byte 0x01000026
_0814EB30: .4byte sub_0814EB6C

	thumb_func_start nullsub_138
nullsub_138: @ 0x0814EB34
	bx lr
	.align 2, 0

	thumb_func_start sub_0814EB38
sub_0814EB38: @ 0x0814EB38
	push {lr}
	ldr r0, _0814EB54 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EB58
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814EB60
	.align 2, 0
_0814EB54: .4byte gCurGameState
_0814EB58:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814EB60:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814EB6C
sub_0814EB6C: @ 0x0814EB6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814CF34
	ldr r0, _0814EB80 @ =sub_0814EB84
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814EB80: .4byte sub_0814EB84

	thumb_func_start sub_0814EB84
sub_0814EB84: @ 0x0814EB84
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, _0814EB90 @ =sub_0814EB94
	str r1, [r0]
	bx lr
	.align 2, 0
_0814EB90: .4byte sub_0814EB94

	thumb_func_start sub_0814EB94
sub_0814EB94: @ 0x0814EB94
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0814EBAA
	ldr r0, _0814EBB0 @ =sub_0814EBB4
	str r0, [r1]
_0814EBAA:
	pop {r0}
	bx r0
	.align 2, 0
_0814EBB0: .4byte sub_0814EBB4

	thumb_func_start sub_0814EBB4
sub_0814EBB4: @ 0x0814EBB4
	movs r1, #0xa0
	lsls r1, r1, #0xd
	str r1, [r0, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #8
	str r1, [r0, #0x3c]
	movs r2, #0
	str r2, [r0, #0x44]
	ldr r1, _0814EBDC @ =0xFFEC0000
	str r1, [r0, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x40]
	movs r1, #0x98
	lsls r1, r1, #6
	str r1, [r0, #0x48]
	strh r2, [r0, #4]
	ldr r1, _0814EBE0 @ =sub_0814D034
	str r1, [r0]
	bx lr
	.align 2, 0
_0814EBDC: .4byte 0xFFEC0000
_0814EBE0: .4byte sub_0814D034

	thumb_func_start sub_0814EBE4
sub_0814EBE4: @ 0x0814EBE4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0814EC5C @ =gDispCnt
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0814EC60 @ =gBgCntRegs
	ldr r0, _0814EC64 @ =0x00001F02
	strh r0, [r1]
	subs r0, #0xfb
	strh r0, [r1, #2]
	subs r0, #0xff
	strh r0, [r1, #4]
	subs r0, #0xff
	strh r0, [r1, #6]
	movs r2, #0
	ldr r5, _0814EC68 @ =gBldRegs
	ldr r0, _0814EC6C @ =sub_0814EF9C
	mov ip, r0
	ldr r7, _0814EC70 @ =nullsub_139
	ldr r4, _0814EC74 @ =gBgScrollRegs
	adds r6, r4, #2
	movs r3, #0
_0814EC14:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r6
	strh r3, [r0]
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0814EC14
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r4, #0x10
	strh r4, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r7, [sp]
	mov r0, ip
	movs r1, #0xc
	movs r3, #0
	bl CreateState
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _0814EC78
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814EC80
	.align 2, 0
_0814EC5C: .4byte gDispCnt
_0814EC60: .4byte gBgCntRegs
_0814EC64: .4byte 0x00001F02
_0814EC68: .4byte gBldRegs
_0814EC6C: .4byte sub_0814EF9C
_0814EC70: .4byte nullsub_139
_0814EC74: .4byte gBgScrollRegs
_0814EC78:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814EC80:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814EC9C @ =0x01000006
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814ECA0 @ =sub_0814ECA4
	str r0, [r4, #4]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814EC9C: .4byte 0x01000006
_0814ECA0: .4byte sub_0814ECA4

	thumb_func_start sub_0814ECA4
sub_0814ECA4: @ 0x0814ECA4
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	bl sub_08141E30
	ldr r0, _0814ECD0 @ =gUnk_0203AD3C
	ldr r1, _0814ECD4 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814ED68
	ldr r2, _0814ECD8 @ =gUnk_0203ACB0
	ldr r0, _0814ECDC @ =gUnk_0203AD48
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bhi _0814ECE0
	ldrh r0, [r3]
	lsls r0, r0, #1
	b _0814ECE2
	.align 2, 0
_0814ECD0: .4byte gUnk_0203AD3C
_0814ECD4: .4byte gUnk_0203AD24
_0814ECD8: .4byte gUnk_0203ACB0
_0814ECDC: .4byte gUnk_0203AD48
_0814ECE0:
	movs r0, #0
_0814ECE2:
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x64
	bne _0814ED68
	ldr r2, _0814ED30 @ =gUnk_0203AD2C
	ldrh r1, [r2]
	ldr r0, _0814ED34 @ =0x0000270F
	cmp r1, r0
	bhi _0814ED68
	ldr r1, _0814ED38 @ =0x00002710
	adds r0, r1, #0
	strh r0, [r2]
	ldr r0, _0814ED3C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0814ED60
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0814ED50
	ldr r0, _0814ED40 @ =gUnk_0203AD3C
	ldr r1, _0814ED44 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814ED48
	ldrh r0, [r3]
	movs r1, #0
	cmp r0, #2
	bhi _0814ED26
	adds r1, r0, #0
_0814ED26:
	movs r0, #1
	bl sub_0800ACD4
	b _0814ED60
	.align 2, 0
_0814ED30: .4byte gUnk_0203AD2C
_0814ED34: .4byte 0x0000270F
_0814ED38: .4byte 0x00002710
_0814ED3C: .4byte gUnk_0203AD10
_0814ED40: .4byte gUnk_0203AD3C
_0814ED44: .4byte gUnk_0203AD24
_0814ED48:
	movs r0, #8
	bl sub_08031CE4
	b _0814ED60
_0814ED50:
	ldrh r0, [r3]
	movs r1, #0
	cmp r0, #2
	bhi _0814ED5A
	adds r1, r0, #0
_0814ED5A:
	movs r0, #1
	bl sub_0800ACD4
_0814ED60:
	ldr r0, _0814ED64 @ =sub_0814ED78
	b _0814ED6A
	.align 2, 0
_0814ED64: .4byte sub_0814ED78
_0814ED68:
	ldr r0, _0814ED74 @ =sub_0814F20C
_0814ED6A:
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814ED74: .4byte sub_0814F20C

	thumb_func_start sub_0814ED78
sub_0814ED78: @ 0x0814ED78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r4, #0
_0814ED82:
	adds r0, r4, #0
	bl sub_0814EFD8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0814ED82
	movs r4, #0
_0814ED94:
	adds r0, r4, #0
	bl sub_0814F000
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814ED94
	ldr r4, _0814EEBC @ =gUnk_08387FF0
	ldr r5, _0814EEC0 @ =gUnk_08D60A80
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0814F034
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r1, r4, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0814F034
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814EEC8 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	adds r1, r1, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814EE2A
_0814EE0E:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814EE0E
_0814EE2A:
	ldr r1, _0814EEBC @ =gUnk_08387FF0
	ldr r0, _0814EEC0 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814EEC8 @ =gBgCntRegs
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	ldr r2, _0814EECC @ =0x06002000
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814EE8C
_0814EE70:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814EE70
_0814EE8C:
	ldr r1, _0814EEBC @ =gUnk_08387FF0
	ldr r0, _0814EEC0 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _0814EED0 @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814EED4
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x20
	bl sub_08158334
	b _0814EEF2
	.align 2, 0
_0814EEBC: .4byte gUnk_08387FF0
_0814EEC0: .4byte gUnk_08D60A80
_0814EEC4: .4byte gUnk_082D7850
_0814EEC8: .4byte gBgCntRegs
_0814EECC: .4byte 0x06002000
_0814EED0: .4byte gUnk_03002440
_0814EED4:
	ldr r2, _0814EF08 @ =0x040000D4
	ldr r1, _0814EF0C @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814EF10 @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _0814EF14 @ =0x80000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_0814EEF2:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #8]
	ldr r0, _0814EF18 @ =sub_0814F0B8
	str r0, [r1, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814EF08: .4byte 0x040000D4
_0814EF0C: .4byte gUnk_082D7850
_0814EF10: .4byte gBgPalette
_0814EF14: .4byte 0x80000020
_0814EF18: .4byte sub_0814F0B8

	thumb_func_start sub_0814EF1C
sub_0814EF1C: @ 0x0814EF1C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0814EF60
	ldr r5, _0814EF80 @ =gUnk_030068D8
	ldr r0, [r5]
	ldr r4, _0814EF84 @ =0x00196225
	muls r0, r4, r0
	ldr r2, _0814EF88 @ =0x3C6EF35F
	adds r0, r0, r2
	movs r3, #7
	adds r1, r0, #0
	ands r1, r3
	subs r1, #3
	muls r0, r4, r0
	adds r0, r0, r2
	str r0, [r5]
	ands r0, r3
	subs r0, #3
	ldr r2, _0814EF8C @ =gBgScrollRegs
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r2, #0xc]
	strh r1, [r2, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xc
	strh r0, [r2, #0xe]
	strh r0, [r2, #0xa]
_0814EF60:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r0, #0x2c
	ble _0814EF78
	ldr r1, _0814EF8C @ =gBgScrollRegs
	ldr r0, _0814EF90 @ =0x0000FFF4
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xa]
	movs r0, #0
	strh r0, [r6, #8]
	ldr r0, _0814EF94 @ =sub_0814F164
	str r0, [r6, #4]
_0814EF78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814EF80: .4byte gUnk_030068D8
_0814EF84: .4byte 0x00196225
_0814EF88: .4byte 0x3C6EF35F
_0814EF8C: .4byte gBgScrollRegs
_0814EF90: .4byte 0x0000FFF4
_0814EF94: .4byte sub_0814F164

	thumb_func_start nullsub_139
nullsub_139: @ 0x0814EF98
	bx lr
	.align 2, 0

	thumb_func_start sub_0814EF9C
sub_0814EF9C: @ 0x0814EF9C
	push {lr}
	ldr r0, _0814EFB8 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EFBC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0814EFC4
	.align 2, 0
_0814EFB8: .4byte gCurGameState
_0814EFBC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0814EFC4:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814EFD8
sub_0814EFD8: @ 0x0814EFD8
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814EFFC @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814EFFC: .4byte 0x01002000

	thumb_func_start sub_0814F000
sub_0814F000: @ 0x0814F000
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _0814F02C @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814F030 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814F02C: .4byte 0x000001FF
_0814F030: .4byte 0x01000400

	thumb_func_start sub_0814F034
sub_0814F034: @ 0x0814F034
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	ldr r4, _0814F0B0 @ =gUnk_082D7850
	lsrs r1, r1, #0xe
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r5, [r1, #8]
	ldr r4, [r1, #0x18]
	mov r8, r4
	ldrh r6, [r1, #2]
	ldr r1, _0814F0B4 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x12
	movs r4, #3
	ands r1, r4
	lsrs r0, r0, #0x18
	movs r4, #0x1f
	ands r0, r4
	lsls r0, r0, #0xb
	lsrs r2, r2, #0x13
	lsls r2, r2, #6
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	adds r7, r0, r2
	lsls r1, r1, #0xe
	lsrs r3, r3, #0xb
	adds r3, r3, r4
	adds r1, r1, r3
	adds r0, r5, #0
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0814F0A6
_0814F08A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0814F08A
_0814F0A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F0B0: .4byte gUnk_082D7850
_0814F0B4: .4byte gBgCntRegs

	thumb_func_start sub_0814F0B8
sub_0814F0B8: @ 0x0814F0B8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #8]
	adds r4, #1
	movs r7, #0
	strh r4, [r5, #8]
	ldr r6, _0814F0F8 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0x14
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x13
	ble _0814F0F2
	movs r0, #0x22
	bl m4aSongNumStart
	strh r7, [r6, #4]
	strh r7, [r6, #2]
	strh r7, [r6]
	strh r7, [r5, #8]
	ldr r0, _0814F0FC @ =sub_0814F100
	str r0, [r5, #4]
_0814F0F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F0F8: .4byte gBldRegs
_0814F0FC: .4byte sub_0814F100

	thumb_func_start sub_0814F100
sub_0814F100: @ 0x0814F100
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _0814F11A
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, _0814F120 @ =sub_0814F124
	str r0, [r1, #4]
_0814F11A:
	pop {r0}
	bx r0
	.align 2, 0
_0814F120: .4byte sub_0814F124

	thumb_func_start sub_0814F124
sub_0814F124: @ 0x0814F124
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0814F154 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0814F158 @ =gBgScrollRegs
	movs r4, #0
	ldr r0, _0814F15C @ =0x0000FFF4
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xa]
	movs r0, #0xc8
	bl m4aSongNumStart
	strh r4, [r5, #8]
	ldr r0, _0814F160 @ =sub_0814EF1C
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814F154: .4byte gDispCnt
_0814F158: .4byte gBgScrollRegs
_0814F15C: .4byte 0x0000FFF4
_0814F160: .4byte sub_0814EF1C

	thumb_func_start sub_0814F164
sub_0814F164: @ 0x0814F164
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	ble _0814F186
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814F18C @ =sub_0814F190
	str r0, [r4, #4]
_0814F186:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814F18C: .4byte sub_0814F190

	thumb_func_start sub_0814F190
sub_0814F190: @ 0x0814F190
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814F1CC @ =gPressedKeys
	ldrh r0, [r0]
	movs r1, #0xb
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	ldrh r0, [r2, #8]
	adds r0, #1
	movs r3, #0
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _0814F1C6
	cmp r1, #0
	beq _0814F1C6
	ldr r0, _0814F1D0 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r2, #8]
	ldr r0, _0814F1D4 @ =sub_0814F1D8
	str r0, [r2, #4]
_0814F1C6:
	pop {r0}
	bx r0
	.align 2, 0
_0814F1CC: .4byte gPressedKeys
_0814F1D0: .4byte gBldRegs
_0814F1D4: .4byte sub_0814F1D8

	thumb_func_start sub_0814F1D8
sub_0814F1D8: @ 0x0814F1D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #8]
	adds r4, #1
	strh r4, [r6, #8]
	ldr r5, _0814F204 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0x28
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x27
	ble _0814F1FE
	ldr r0, _0814F208 @ =sub_0814F20C
	str r0, [r6, #4]
_0814F1FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814F204: .4byte gBldRegs
_0814F208: .4byte sub_0814F20C

	thumb_func_start sub_0814F20C
sub_0814F20C: @ 0x0814F20C
	push {r4, r5, lr}
	sub sp, #4
	bl m4aMPlayAllStop
	mov r0, sp
	ldr r1, _0814F258 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0814F25C @ =gBgPalette
	ldr r5, _0814F260 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0814F264 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0814F268 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0814F26C @ =gUnk_0203AD10
	movs r0, #0
	str r0, [r1]
	ldr r0, _0814F270 @ =gCurGameState
	ldr r0, [r0]
	bl DestroyState
	bl sub_08149CE4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814F258: .4byte 0x00007FFF
_0814F25C: .4byte gBgPalette
_0814F260: .4byte 0x01000100
_0814F264: .4byte gObjPalette
_0814F268: .4byte gUnk_03002440
_0814F26C: .4byte gUnk_0203AD10
_0814F270: .4byte gCurGameState

	thumb_func_start sub_0814F274
sub_0814F274: @ 0x0814F274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [r4, #8]
	movs r0, #1
	str r0, [sp]
	ldrh r0, [r4, #6]
	ldr r1, _0814F2D0 @ =0x0000FFDD
	ands r1, r0
	strh r1, [r4, #6]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0814F29A
	b _0814F398
_0814F29A:
	ldrb r3, [r6]
	ldrh r0, [r4, #4]
	cmp r0, r3
	blo _0814F2AE
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0814F2AE
	movs r0, #0
	strh r0, [r4, #4]
_0814F2AE:
	ldr r2, [r6, #4]
	ldrh r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r5, [r0]
	cmp r1, r3
	bne _0814F2D8
	ldrh r0, [r4, #6]
	movs r1, #0x20
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0814F2D4
	movs r0, #0
	b _0814F3AC
	.align 2, 0
_0814F2D0: .4byte 0x0000FFDD
_0814F2D4:
	movs r0, #0
	str r0, [sp]
_0814F2D8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r5]
	lsls r0, r0, #8
	strh r0, [r4, #2]
	ldr r1, [r6]
	lsrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r8, r7
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	mov r6, ip
	adds r5, #2
	ldrh r1, [r4, #6]
	movs r2, #1
	mov sl, r2
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0814F350
	ldr r6, _0814F324 @ =gUnk_03002440
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0814F328
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, ip
	bl sub_0815828C
	b _0814F390
	.align 2, 0
_0814F324: .4byte gUnk_03002440
_0814F328:
	ldr r2, _0814F348 @ =0x040000D4
	str r5, [r2]
	lsls r0, r7, #1
	ldr r1, _0814F34C @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r1, ip
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r6]
	b _0814F390
	.align 2, 0
_0814F348: .4byte 0x040000D4
_0814F34C: .4byte gObjPalette
_0814F350:
	ldr r2, _0814F36C @ =gUnk_03002440
	mov sb, r2
	ldr r3, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814F370
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, ip
	bl sub_08158334
	b _0814F390
	.align 2, 0
_0814F36C: .4byte gUnk_03002440
_0814F370:
	ldr r2, _0814F3BC @ =0x040000D4
	str r5, [r2]
	mov r1, r8
	lsls r0, r1, #1
	ldr r1, _0814F3C0 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r6, r0
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	mov r2, sl
	orrs r3, r2
	mov r0, sb
	str r3, [r0]
_0814F390:
	ldrh r1, [r4, #6]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #6]
_0814F398:
	ldrh r1, [r4, #6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0814F3AA
	ldrh r0, [r4, #2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r4, #2]
_0814F3AA:
	ldr r0, [sp]
_0814F3AC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814F3BC: .4byte 0x040000D4
_0814F3C0: .4byte gBgPalette

	thumb_func_start sub_0814F3C4
sub_0814F3C4: @ 0x0814F3C4
	movs r3, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	str r1, [r0, #8]
	bx lr
	.align 2, 0
