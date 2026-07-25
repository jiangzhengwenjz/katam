
	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #5
	str r0, [sp, #0x28]
	ldr r0, _0815438C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08154390
	movs r0, #0
	b _0815488E
	.align 2, 0
_0815438C: .4byte 0x04000004
_08154390:
	ldr r0, _081543E0 @ =gUnk_030068B0
	ldrb r1, [r0]
	cmp r1, #0
	bne _0815439A
	b _0815488C
_0815439A:
	movs r6, #0
	cmp r6, r1
	blo _081543A2
	b _08154886
_081543A2:
	lsls r0, r6, #2
	ldr r1, _081543E4 @ =gUnk_03006030
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r3, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r6, #1
	str r2, [sp, #0x3c]
	cmp r3, r0
	bne _081543BC
	b _08154876
_081543BC:
	lsrs r0, r3, #0x1c
	cmp r0, #0
	bne _081543EC
	ldr r4, _081543E8 @ =gSpriteTables
	ldr r0, [r4]
	ldr r5, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	adds r7, r4, #0
	b _08154402
	.align 2, 0
_081543E0: .4byte gUnk_030068B0
_081543E4: .4byte gUnk_03006030
_081543E8: .4byte gSpriteTables
_081543EC:
	ldr r7, _08154578 @ =gSpriteTables
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r3, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
_08154402:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r4, r0, #0xf
	lsls r0, r4, #1
	ldr r5, _0815457C @ =gBgCntRegs
	adds r0, r0, r5
	ldrh r3, [r0]
	movs r0, #0xc
	ands r0, r3
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0815443C
	movs r0, #6
	str r0, [sp, #0x28]
_0815443C:
	cmp r4, #1
	bhi _08154442
	b _081545FE
_08154442:
	ldr r0, _08154580 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08154450
	b _081545FE
_08154450:
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r1, sl
	ldrh r0, [r1]
	ldr r1, _08154584 @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r3, r4
	blo _0815448E
	b _08154876
_0815448E:
	mov sb, sp
	ldr r5, [sp, #0x10]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
_08154498:
	ldr r1, _08154588 @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _0815458C @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r3
	lsrs r1, r1, #0xc
	ldrh r2, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r2, _08154590 @ =gUnk_08D6084C
	adds r0, r1, r2
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r4, _08154594 @ =gUnk_08D6084C+1
	adds r1, r1, r4
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	mov r4, ip
	ldr r5, [sp, #0xc]
	movs r6, #0x12
	ldrsh r1, [r5, r6]
	mov r7, sl
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	subs r5, r1, r0
	ldr r6, [sp, #0xc]
	movs r7, #0x10
	ldrsh r1, [r6, r7]
	mov r2, sl
	movs r6, #8
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	movs r0, #0xff
	ands r0, r3
	adds r0, r5, r0
	asrs r0, r0, #3
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r7, r2, r0
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	ldr r5, [sp, #0x14]
	subs r1, r1, r5
	ldr r6, [sp, #0x28]
	lsrs r1, r6
	mov r0, sb
	ldrh r2, [r0, #4]
	ldr r0, _08154598 @ =0x000003FF
	ands r0, r2
	adds r5, r1, r0
	movs r1, #0xff
	ands r5, r1
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r4, #0
	beq _081545EA
	ldr r3, [sp, #0x30]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x34]
_08154548:
	mov r4, sb
	ldrh r0, [r4, #2]
	ldr r1, _0815459C @ =0x000001FF
	ands r1, r0
	add r1, r8
	asrs r1, r1, #3
	adds r2, r7, r1
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _081545C2
	movs r4, #1
_0815456A:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	bne _081545A0
	str r5, [sp, #0x24]
	b _081545AE
	.align 2, 0
_08154578: .4byte gSpriteTables
_0815457C: .4byte gBgCntRegs
_08154580: .4byte gDispCnt
_08154584: .4byte 0x00003FFF
_08154588: .4byte 0x040000D4
_0815458C: .4byte 0x80000003
_08154590: .4byte gUnk_08D6084C
_08154594: .4byte gUnk_08D6084C+1
_08154598: .4byte 0x000003FF
_0815459C: .4byte 0x000001FF
_081545A0:
	lsls r0, r5, #8
	ldr r1, [sp, #0x24]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	strh r0, [r2]
_081545AE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #1
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _0815456A
_081545C2:
	adds r0, r2, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081545DA
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, [sp, #0x24]
	orrs r0, r3
	strh r0, [r2]
_081545DA:
	ldr r4, [sp, #0x34]
	adds r7, r7, r4
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _08154548
_081545EA:
	ldr r5, [sp, #0x40]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r6, sl
	ldrh r6, [r6, #2]
	cmp r0, r6
	bhs _081545FC
	b _08154498
_081545FC:
	b _08154876
_081545FE:
	movs r0, #0x20
	str r0, [sp, #0x10]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08154618
	movs r1, #0x40
	str r1, [sp, #0x10]
_08154618:
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r2, sl
	ldrh r0, [r2]
	ldr r1, _081546D8 @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x1c]
	adds r3, r3, r0
	str r3, [sp, #0x1c]
	movs r4, #0
	str r4, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	ldrh r5, [r2, #2]
	cmp r4, r5
	blo _08154648
	b _08154876
_08154648:
	mov sb, sp
_0815464A:
	ldr r1, _081546DC @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _081546E0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	ldrh r3, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r3
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r4, _081546E4 @ =gUnk_08D6084C
	adds r0, r1, r4
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r5, _081546E8 @ =gUnk_08D6084C+1
	adds r1, r1, r5
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	ldr r4, _081546EC @ =0x000001FF
	ands r4, r3
	movs r6, #0xff
	ands r6, r2
	ldr r7, [sp, #0xc]
	ldrb r0, [r7, #0x1f]
	lsls r0, r0, #0xc
	mov r1, sb
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2, #4]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xb
	movs r5, #1
	ands r1, r5
	mov r7, sl
	ldrh r0, [r7]
	lsrs r0, r0, #0xf
	cmp r1, r0
	beq _0815470E
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	eors r0, r3
	strh r0, [r2, #2]
	ldrh r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _081546F0
	ldr r2, [sp, #0xc]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	b _08154700
	.align 2, 0
_081546D8: .4byte 0x00003FFF
_081546DC: .4byte 0x040000D4
_081546E0: .4byte 0x80000003
_081546E4: .4byte gUnk_08D6084C
_081546E8: .4byte gUnk_08D6084C+1
_081546EC: .4byte 0x000001FF
_081546F0:
	ldr r7, [sp, #0xc]
	movs r1, #0x12
	ldrsh r0, [r7, r1]
	mov r2, sl
	ldrh r1, [r2, #6]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_08154700:
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #8
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
	b _0815471C
_0815470E:
	ldr r5, [sp, #0xc]
	movs r7, #0x12
	ldrsh r1, [r5, r7]
	mov r2, sl
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
_0815471C:
	ldr r7, [sp, #0xc]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xa
	mov r2, sl
	ldrh r0, [r2]
	lsrs r0, r0, #0xe
	eors r0, r1
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08154778
	mov r7, sb
	ldrh r0, [r7, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r7, #2]
	mov r3, sl
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0815475A
	ldr r7, [sp, #0xc]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	movs r2, #8
	ldrsh r1, [r3, r2]
	b _0815476A
_0815475A:
	ldr r3, [sp, #0xc]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	mov r2, sl
	ldrh r1, [r2, #4]
	movs r3, #8
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_0815476A:
	adds r0, r0, r1
	subs r0, #8
	mov r8, r0
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
	b _08154788
_08154778:
	ldr r7, [sp, #0xc]
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	mov r2, sl
	movs r3, #8
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov r8, r1
_08154788:
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	adds r0, #8
	ands r5, r0
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	movs r2, #2
	str r2, [sp, #0x2c]
	cmp r0, #0
	beq _081547AC
	movs r3, #0xfe
	str r3, [sp, #0x2c]
_081547AC:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _081547BE
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x19
	rsbs r0, r0, #0
	b _081547C2
_081547BE:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x19
_081547C2:
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	asrs r0, r0, #2
	ldr r2, [sp, #0x10]
	muls r0, r2, r0
	ldr r3, [sp, #0x18]
	adds r7, r3, r0
	ldr r5, [sp, #0xc]
	ldr r1, [r5]
	ldr r6, [sp, #0x14]
	subs r1, r1, r6
	ldr r0, [sp, #0x28]
	lsrs r1, r0
	mov r3, sb
	ldrh r2, [r3, #4]
	ldr r0, _081548A0 @ =0x0000F3FF
	ands r0, r2
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r2
	lsrs r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r6, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x40]
	cmp r1, #0
	beq _08154864
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	asrs r0, r0, #2
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
_08154822:
	ldr r3, [sp, #0x38]
	adds r2, r7, r3
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _08154856
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
_0815483E:
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	strh r1, [r2]
	adds r2, r2, r4
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _0815483E
_08154856:
	add r7, r8
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _08154822
_08154864:
	ldr r2, [sp, #0x40]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _08154876
	b _0815464A
_08154876:
	ldr r4, [sp, #0x3c]
	lsls r0, r4, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _081548A4 @ =gUnk_030068B0
	ldrb r5, [r5]
	cmp r6, r5
	bhs _08154886
	b _081543A2
_08154886:
	movs r0, #0
	ldr r6, _081548A4 @ =gUnk_030068B0
	strb r0, [r6]
_0815488C:
	movs r0, #1
_0815488E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_081548A0: .4byte 0x0000F3FF
_081548A4: .4byte gUnk_030068B0

	.syntax divided
