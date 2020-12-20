	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08124430
sub_08124430: @ 0x08124430
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	ldr r0, _08124530 @ =gUnk_08D60A80
	ldrh r0, [r0]
	str r0, [sp, #0x44]
	ldr r1, _08124534 @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	movs r4, #0
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r2, _08124538 @ =0x05004000
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl CpuSet
	str r4, [sp, #0xc]
	ldr r5, _0812453C @ =0x040000D4
	add r7, sp, #0xc
	str r7, [r5]
	ldr r6, _08124540 @ =gBgCntRegs
	ldrh r1, [r6]
	movs r3, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r2, _08124544 @ =0x85000010
	mov r8, r2
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08124548 @ =gUnk_030060A0
	mov sb, r0
	strb r4, [r0]
	ldr r1, _0812454C @ =gUnk_03002E80
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r2, #0x20
	mov ip, r2
	mov r0, ip
	strb r0, [r1, #3]
	str r4, [sp, #0xc]
	str r7, [r5]
	ldrh r2, [r6, #2]
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	str r0, [r5, #4]
	mov r0, r8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r2, sb
	strb r4, [r2, #1]
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #6]
	mov r0, ip
	strb r0, [r1, #7]
	str r4, [sp, #0xc]
	str r7, [r5]
	ldrh r0, [r6, #4]
	ands r3, r0
	lsls r3, r3, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r3, r1
	str r3, [r5, #4]
	mov r2, r8
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08124550 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r1, _08124554 @ =gDispCnt
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08124558 @ =0x00000701
	strh r0, [r6]
	ldr r0, _0812455C @ =0x00000F04
	strh r0, [r6, #2]
	ldr r0, _08124560 @ =0x0000170A
	strh r0, [r6, #4]
	ldr r0, _08124564 @ =sub_08124978
	movs r2, #0x80
	lsls r2, r2, #5
	str r4, [sp]
	movs r1, #0xd8
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r7, #0
	cmp r0, #0
	beq _08124568
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08124570
	.align 2, 0
_08124530: .4byte gUnk_08D60A80
_08124534: .4byte 0x00007FFF
_08124538: .4byte 0x05004000
_0812453C: .4byte 0x040000D4
_08124540: .4byte gBgCntRegs
_08124544: .4byte 0x85000010
_08124548: .4byte gUnk_030060A0
_0812454C: .4byte gUnk_03002E80
_08124550: .4byte gBgScrollRegs
_08124554: .4byte gDispCnt
_08124558: .4byte 0x00000701
_0812455C: .4byte 0x00000F04
_08124560: .4byte 0x0000170A
_08124564: .4byte sub_08124978
_08124568:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08124570:
	mov sl, r0
	ldr r3, _0812458C @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08124594
	ldr r0, _08124590 @ =gUnk_081665D4
	movs r1, #0
	movs r2, #0x80
	bl sub_08158334
	b _081245AA
	.align 2, 0
_0812458C: .4byte gUnk_03002440
_08124590: .4byte gUnk_081665D4
_08124594:
	ldr r1, _08124674 @ =0x040000D4
	ldr r0, _08124678 @ =gUnk_081665D4
	str r0, [r1]
	ldr r0, _0812467C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08124680 @ =0x80000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_081245AA:
	add r0, sp, #0x10
	ldr r1, _08124684 @ =0x06010000
	str r1, [sp, #0x10]
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	ldr r2, _08124688 @ =gUnk_08358B9C
	ldr r1, [sp, #0x44]
	lsls r7, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r1, #4]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #6]
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #8
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xc
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0x80
	movs r1, #0x7f
	bl sub_0803D280
	movs r0, #0
	movs r1, #0xff
	bl sub_0803D2A8
	str r4, [sp, #0xc]
	ldr r5, _0812468C @ =0x05000010
	adds r0, r6, #0
	mov r1, sl
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #0x38]
	add r0, sp, #0x38
	movs r2, #0x40
	add r2, sl
	mov r8, r2
	mov r1, r8
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #0x3c]
	add r0, sp, #0x3c
	mov r6, sl
	adds r6, #0x80
	subs r5, #6
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #0x40]
	add r0, sp, #0x40
	mov r4, sl
	adds r4, #0xa8
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	mov r1, sl
	adds r1, #0xd0
	movs r0, #1
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xd1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08124690 @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #4
	ands r1, r0
	mov sb, r7
	str r6, [sp, #0x48]
	adds r6, r4, #0
	cmp r1, #0
	beq _08124698
	ldr r0, _08124694 @ =gUnk_08358C14
	ldr r1, [sp, #0x44]
	lsls r4, r1, #6
	adds r0, #2
	adds r0, r4, r0
	ldrh r1, [r0]
	mov r0, sl
	movs r2, #0
	movs r3, #7
	bl sub_081240A4
	b _081246AC
	.align 2, 0
_08124674: .4byte 0x040000D4
_08124678: .4byte gUnk_081665D4
_0812467C: .4byte gBgPalette
_08124680: .4byte 0x80000080
_08124684: .4byte 0x06010000
_08124688: .4byte gUnk_08358B9C
_0812468C: .4byte 0x05000010
_08124690: .4byte gUnk_0203AD10
_08124694: .4byte gUnk_08358C14
_08124698:
	ldr r0, _0812476C @ =gUnk_08358C14
	ldr r2, [sp, #0x44]
	lsls r4, r2, #6
	adds r0, r4, r0
	ldrh r1, [r0]
	mov r0, sl
	movs r2, #0
	movs r3, #7
	bl sub_081240A4
_081246AC:
	adds r7, r4, #0
	ldr r4, _0812476C @ =gUnk_08358C14
	ldr r2, _08124770 @ =gKirbys
	ldr r5, _08124774 @ =gUnk_0203AD3C
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, _08124778 @ =0x00000103
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r0, r8
	movs r2, #1
	movs r3, #0xf
	bl sub_081240A4
	ldr r0, _0812477C @ =0x06008000
	mov r1, sl
	adds r1, #0x5c
	ldrb r2, [r1]
	adds r4, #4
	adds r4, r7, r4
	ldrb r1, [r4]
	subs r2, r2, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #1
	bl sub_080356AC
	bl sub_0812415C
	ldr r0, _08124780 @ =0x06012000
	ldr r1, [sp, #0x48]
	str r0, [r1]
	mov r1, sl
	adds r1, #0x94
	movs r2, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r1, _08124784 @ =gUnk_08358B9C
	ldr r0, [sp, #0x44]
	add r0, sb
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	mov r4, sl
	adds r4, #0x8c
	strh r1, [r4]
	ldrb r0, [r0, #6]
	mov r3, sl
	adds r3, #0x9a
	strb r0, [r3]
	mov r0, sl
	adds r0, #0x96
	strh r2, [r0]
	mov r1, sl
	adds r1, #0x9b
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #8
	strb r0, [r1]
	subs r1, #0xf
	movs r0, #0x22
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x76
	strh r0, [r1]
	subs r1, #0xa
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r1]
	ldr r1, _08124788 @ =gUnk_0203AD50
	ldrb r0, [r5]
	mov r8, r4
	str r3, [sp, #0x4c]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08124794
	ldr r1, _0812478C @ =gUnk_08D6113C
	ldr r0, [r1]
	ldr r1, [r1, #4]
	ldr r2, _08124790 @ =0x04000100
	bl CpuSet
	b _081247A0
	.align 2, 0
_0812476C: .4byte gUnk_08358C14
_08124770: .4byte gKirbys
_08124774: .4byte gUnk_0203AD3C
_08124778: .4byte 0x00000103
_0812477C: .4byte 0x06008000
_08124780: .4byte 0x06012000
_08124784: .4byte gUnk_08358B9C
_08124788: .4byte gUnk_0203AD50
_0812478C: .4byte gUnk_08D6113C
_08124790: .4byte 0x04000100
_08124794:
	ldr r1, _08124830 @ =gUnk_08D6113C
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	ldr r2, _08124834 @ =0x04000100
	bl CpuSet
_081247A0:
	movs r7, #0
	movs r5, #0
	movs r2, #1
	ldr r4, _08124838 @ =gUnk_0203ACC0
_081247A8:
	ldrh r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _081247C2
	adds r0, r5, #0
	str r2, [sp, #0x50]
	bl sub_08128694
	ldr r2, [sp, #0x50]
	adds r1, r2, #0
	lsls r1, r0
	orrs r7, r1
_081247C2:
	adds r4, #0x14
	adds r5, #1
	cmp r5, #3
	ble _081247A8
	adds r1, r7, #0
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _081247E6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08124844
	movs r0, #0
	bl sub_08019EEC
	cmp r0, #0
	bne _08124844
_081247E6:
	ldr r0, _0812483C @ =0x06013000
	str r0, [r6]
	movs r2, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	ldr r1, _08124840 @ =gUnk_08358B9C
	ldr r0, [sp, #0x44]
	add r0, sb
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #0x12]
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r0, #8
	strb r0, [r6, #0x1f]
	movs r0, #0x22
	strh r0, [r6, #0x10]
	movs r0, #0x88
	strh r0, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r6, #8]
	ldr r1, _08124830 @ =gUnk_08D6113C
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	ldr r2, _08124834 @ =0x04000100
	bl CpuSet
	b _0812488A
	.align 2, 0
_08124830: .4byte gUnk_08D6113C
_08124834: .4byte 0x04000100
_08124838: .4byte gUnk_0203ACC0
_0812483C: .4byte 0x06013000
_08124840: .4byte gUnk_08358B9C
_08124844:
	ldr r0, _081248FC @ =0x06013000
	str r0, [r6]
	movs r2, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	ldr r1, _08124900 @ =gUnk_08358B9C
	ldr r0, [sp, #0x44]
	add r0, sb
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #8]
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #0xa]
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r0, #8
	strb r0, [r6, #0x1f]
	movs r0, #0x22
	strh r0, [r6, #0x10]
	movs r0, #0x88
	strh r0, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r6, #8]
	ldr r1, _08124904 @ =gUnk_08D6113C
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	ldr r2, _08124908 @ =0x04000100
	bl CpuSet
_0812488A:
	movs r7, #0
	movs r5, #0
	movs r2, #1
	ldr r4, _0812490C @ =gUnk_0203ACC0
_08124892:
	ldrh r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _081248AC
	adds r0, r5, #0
	str r2, [sp, #0x50]
	bl sub_08128694
	ldr r2, [sp, #0x50]
	adds r1, r2, #0
	lsls r1, r0
	orrs r7, r1
_081248AC:
	adds r4, #0x14
	adds r5, #1
	cmp r5, #3
	ble _08124892
	adds r1, r7, #0
	ldr r0, _08124910 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r2, #4
	ands r0, r2
	cmp r0, #0
	bne _0812495E
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _081248DA
	ands r1, r2
	cmp r1, #0
	beq _08124914
	movs r0, #0
	bl sub_08019EEC
	cmp r0, #0
	bne _08124914
_081248DA:
	ldr r1, _08124900 @ =gUnk_08358B9C
	ldr r0, [sp, #0x44]
	add r0, sb
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r2, r8
	strh r1, [r2]
	ldrb r1, [r0, #2]
	ldr r3, [sp, #0x4c]
	strb r1, [r3]
	ldrh r2, [r0, #0x10]
	mov r1, sl
	adds r1, #0xb4
	strh r2, [r1]
	ldrb r1, [r0, #0x12]
	b _08124934
	.align 2, 0
_081248FC: .4byte 0x06013000
_08124900: .4byte gUnk_08358B9C
_08124904: .4byte gUnk_08D6113C
_08124908: .4byte 0x04000100
_0812490C: .4byte gUnk_0203ACC0
_08124910: .4byte gUnk_0203AD10
_08124914:
	ldr r1, _08124970 @ =gUnk_08358B9C
	ldr r0, [sp, #0x44]
	add r0, sb
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r2, r8
	strh r1, [r2]
	ldrb r1, [r0, #2]
	ldr r3, [sp, #0x4c]
	strb r1, [r3]
	ldrh r2, [r0, #8]
	mov r1, sl
	adds r1, #0xb4
	strh r2, [r1]
	ldrb r1, [r0, #0xa]
_08124934:
	mov r0, sl
	adds r0, #0xc2
	strb r1, [r0]
	ldr r0, _08124974 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0812495E
	ldr r0, [sp, #0x48]
	bl sub_08155128
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, [sp, #0x48]
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
_0812495E:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08124970: .4byte gUnk_08358B9C
_08124974: .4byte gUnk_0203AD10

	thumb_func_start sub_08124978
sub_08124978: @ 0x08124978
	push {r4, r5, r6, r7, lr}
	ldr r0, _08124994 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08124998
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081249A0
	.align 2, 0
_08124994: .4byte gCurTask
_08124998:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081249A0:
	adds r6, r0, #0
	ldr r2, _08124A18 @ =gUnk_0203ACC0
	ldrh r1, [r2, #0xe]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _081249D6
	ldrh r1, [r7, #0x22]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _081249D6
	ldrh r1, [r7, #0x36]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _081249D6
	adds r0, r7, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08124A28
_081249D6:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
	bl sub_08124EC8
	ldr r0, _08124A1C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08124A20 @ =sub_08124B44
	str r0, [r1, #8]
	ldr r0, _08124A24 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08124AA6
	adds r5, r6, #0
	adds r5, #0x80
	adds r0, r5, #0
	bl sub_08155128
	adds r4, r6, #0
	adds r4, #0xa8
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	b _08124AA6
	.align 2, 0
_08124A18: .4byte gUnk_0203ACC0
_08124A1C: .4byte gCurTask
_08124A20: .4byte sub_08124B44
_08124A24: .4byte gUnk_0203AD10
_08124A28:
	ldr r0, _08124A90 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08124A54
	adds r5, r6, #0
	adds r5, #0x80
	adds r0, r5, #0
	bl sub_08155128
	adds r4, r6, #0
	adds r4, #0xa8
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
_08124A54:
	movs r3, #0
_08124A56:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r0, r7
	ldrh r1, [r2, #0xe]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08124A9C
	movs r0, #0xd
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _08124A74
	cmp r0, #4
	bne _08124A9C
_08124A74:
	adds r1, r6, #0
	adds r1, #0xd4
	movs r0, #0xd
	ldrsb r0, [r2, r0]
	str r0, [r1]
	ldr r0, _08124A94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08124A98 @ =sub_08124AAC
	str r0, [r1, #8]
	movs r0, #0x20
	movs r1, #1
	bl CreatePauseFade
	b _08124AA6
	.align 2, 0
_08124A90: .4byte gUnk_0203AD10
_08124A94: .4byte gCurTask
_08124A98: .4byte sub_08124AAC
_08124A9C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08124A56
_08124AA6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08124AAC
sub_08124AAC: @ 0x08124AAC
	push {r4, r5, lr}
	ldr r0, _08124AC8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08124ACC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08124AD4
	.align 2, 0
_08124AC8: .4byte gCurTask
_08124ACC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08124AD4:
	adds r4, r0, #0
	bl sub_0812A304
	cmp r0, #0
	bne _08124B0A
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #2
	bne _08124AF0
	movs r0, #0
	bl sub_08125A4C
	b _08124AF8
_08124AF0:
	cmp r0, #4
	bne _08124AF8
	bl sub_081278D4
_08124AF8:
	movs r0, #0x20
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _08124B3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08124B0A:
	ldr r0, _08124B40 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08124B34
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0xa8
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
_08124B34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08124B3C: .4byte gCurTask
_08124B40: .4byte gUnk_0203AD10

	thumb_func_start sub_08124B44
sub_08124B44: @ 0x08124B44
	push {r4, r5, lr}
	ldr r0, _08124B60 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08124B64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08124B6C
	.align 2, 0
_08124B60: .4byte gCurTask
_08124B64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08124B6C:
	adds r2, r4, #0
	adds r2, #0xd1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x12
	ble _08124BAC
	ldr r2, _08124BA0 @ =gUnk_0203ACC0
	ldr r0, _08124BA4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08039670
	ldr r0, _08124BA8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08124BD6
	.align 2, 0
_08124BA0: .4byte gUnk_0203ACC0
_08124BA4: .4byte gUnk_0203AD3C
_08124BA8: .4byte gCurTask
_08124BAC:
	ldr r0, _08124BDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08124BD6
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0xa8
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
_08124BD6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08124BDC: .4byte gUnk_0203AD10
