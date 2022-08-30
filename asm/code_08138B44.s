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
	ldr r1, _08138C10 @ =gVramHeapMaxTileSlots
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08138C14 @ =gVramHeapStartAddr
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
	ldr r2, _08138C34 @ =gKeysContinuedRepeatIntervals
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
	bl TaskCreate
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
_08138C10: .4byte gVramHeapMaxTileSlots
_08138C14: .4byte gVramHeapStartAddr
_08138C18: .4byte 0x06010000
_08138C1C: .4byte gDispCnt
_08138C20: .4byte gBldRegs
_08138C24: .4byte sub_08141E74
_08138C28: .4byte sub_08139218
_08138C2C: .4byte gBgCntRegs
_08138C30: .4byte gBgScrollRegs
_08138C34: .4byte gKeysContinuedRepeatIntervals
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
	ldr r2, _08138CEC @ =gRngVal
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
_08138CEC: .4byte gRngVal
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
