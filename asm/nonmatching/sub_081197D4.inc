	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_081194DC
	cmp r0, #0
	beq _081198C4
	adds r1, r5, #0
	adds r1, #0xb6
	ldrh r0, [r1]
	ldr r2, _0811980C @ =0x0000FFFB
	ands r2, r0
	movs r3, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _08119814
	ldr r0, _08119810 @ =0x0000FFFD
	ands r2, r0
	strh r2, [r4]
	b _08119892
	.align 2, 0
_0811980C: .4byte 0x0000FFFB
_08119810: .4byte 0x0000FFFD
_08119814:
	movs r0, #2
	orrs r2, r0
	strh r2, [r4]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x18]
	adds r0, #2
	adds r1, r5, #0
	adds r1, #0xb4
	strh r0, [r1]
	ldr r1, _081198A4 @ =gKirbys
	ldr r0, _081198A8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08119892
	ldrb r0, [r5]
	cmp r0, #0
	bne _08119856
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08119892
_08119856:
	ldr r1, _081198AC @ =gUnk_08D60FA4
	ldr r5, _081198B0 @ =gSongTable
	ldr r2, _081198B4 @ =0x0000102C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811987A
	ldr r1, _081198B8 @ =0x00001028
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08119892
_0811987A:
	cmp r3, #0
	beq _0811988C
	ldr r0, _081198BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08119892
_0811988C:
	ldr r0, _081198C0 @ =0x00000205
	bl m4aSongNumStart
_08119892:
	ldrh r0, [r4]
	movs r1, #1
	orrs r1, r0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4]
	b _0811997A
	.align 2, 0
_081198A4: .4byte gKirbys
_081198A8: .4byte gUnk_0203AD3C
_081198AC: .4byte gUnk_08D60FA4
_081198B0: .4byte gSongTable
_081198B4: .4byte 0x0000102C
_081198B8: .4byte 0x00001028
_081198BC: .4byte gUnk_0203AD10
_081198C0: .4byte 0x00000205
_081198C4:
	adds r1, r5, #0
	adds r1, #0xb6
	ldrh r2, [r1]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _081198DC
	ldr r0, _08119938 @ =0x0000FFFD
	ands r0, r2
	strh r0, [r4]
_081198DC:
	ldrh r0, [r4]
	ldr r2, _0811993C @ =0x0000FEFF
	ands r2, r0
	movs r6, #0
	strh r2, [r4]
	adds r0, r5, #0
	adds r0, #0xb4
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bgt _08119950
	subs r0, #4
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0811997A
	ldr r1, _08119940 @ =0x0000FFDF
	ands r1, r2
	ldr r0, _08119944 @ =0x0000FFEF
	ands r1, r0
	strh r1, [r4]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0811991C
	ldr r0, _08119948 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4]
_0811991C:
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0811992C
	movs r0, #4
	orrs r0, r1
	strh r0, [r4]
_0811992C:
	ldrh r1, [r4]
	ldr r0, _0811994C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4]
	b _0811997A
	.align 2, 0
_08119938: .4byte 0x0000FFFD
_0811993C: .4byte 0x0000FEFF
_08119940: .4byte 0x0000FFDF
_08119944: .4byte 0x0000FFEF
_08119948: .4byte 0x0000FFFB
_0811994C: .4byte 0x0000FFFE
_08119950:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08119964
	ldr r0, _08119960 @ =0x0000FFDF
	ands r0, r2
	b _0811996A
	.align 2, 0
_08119960: .4byte 0x0000FFDF
_08119964:
	movs r1, #0x20
	adds r0, r2, #0
	orrs r0, r1
_0811996A:
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r1, r0
	strh r1, [r4]
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
_0811997A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.syntax divided
