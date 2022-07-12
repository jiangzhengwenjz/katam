	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080FEEC0
sub_080FEEC0: @ 0x080FEEC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080FEEF8 @ =sub_080FEFB0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FEEFC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FEF00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080FEF08
	.align 2, 0
_080FEEF8: .4byte sub_080FEFB0
_080FEEFC: .4byte sub_0803DCCC
_080FEF00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080FEF08:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	ldr r0, [r5, #8]
	movs r2, #1
	ands r0, r2
	ldrh r1, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r5, _080FEF94 @ =0x00000397
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, #8
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x28
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, #0x2b
	mov r0, r8
	strb r0, [r4]
	ldr r2, _080FEF98 @ =gKirbys
	ldr r0, _080FEF9C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080FEFA0
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FEFA4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FEFA4
	.align 2, 0
_080FEF94: .4byte 0x00000397
_080FEF98: .4byte gKirbys
_080FEF9C: .4byte gUnk_0203AD3C
_080FEFA0:
	mov r1, r8
	strb r1, [r4]
_080FEFA4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FEFB0
sub_080FEFB0: @ 0x080FEFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _080FEFD8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FEFDC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FEFE4
	.align 2, 0
_080FEFD8: .4byte gCurTask
_080FEFDC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FEFE4:
	adds r6, r0, #0
	ldr r7, [r6, #0x44]
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FEFFE
	ldr r0, [r2]
	bl TaskDestroy
	b _080FF3E4
_080FEFFE:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FF00A
	adds r0, r1, #0
	b _080FF376
_080FF00A:
	ldr r2, _080FF074 @ =gKirbys
	ldr r0, _080FF078 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x28]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF0BC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FF084
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF0E2
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x28
	bl sub_0803DE54
	adds r4, r6, #0
	adds r4, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF07C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FF080 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080FF0E2
	.align 2, 0
_080FF074: .4byte gKirbys
_080FF078: .4byte gUnk_0203AD3C
_080FF07C: .4byte 0xFFF7FFFF
_080FF080: .4byte 0x0400000A
_080FF084:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF0E2
	movs r0, #0x28
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF0B4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FF0B8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FF0E2
	.align 2, 0
_080FF0B4: .4byte 0xFFF7FFFF
_080FF0B8: .4byte 0x0400000A
_080FF0BC:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _080FF0D8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FF0D8
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_080FF0D8:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_080FF0E2:
	ldr r2, _080FF124 @ =gKirbys
	ldr r0, _080FF128 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x28]
	ldrh r2, [r2]
	cmp r0, r2
	bne _080FF130
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FF138
	ldr r5, _080FF12C @ =0x00000397
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FF138
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FF138
	.align 2, 0
_080FF124: .4byte gKirbys
_080FF128: .4byte gUnk_0203AD3C
_080FF12C: .4byte 0x00000397
_080FF130:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FF138:
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r3, [r6, #0x44]
	cmp r3, #0
	beq _080FF190
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FF15A
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FF15A
	movs r0, #0
	str r0, [r6, #0x44]
	movs r3, #0
_080FF15A:
	cmp r3, #0
	beq _080FF190
	ldr r0, _080FF18C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FF200
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FF200
	adds r0, r6, #0
	bl sub_0803DBC8
	b _080FF3E4
	.align 2, 0
_080FF18C: .4byte gUnk_03000510
_080FF190:
	adds r4, r6, #0
	movs r3, #0
	ldr r2, _080FF1F8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #4
_080FF1D0:
	ldr r0, _080FF1FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FF200
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FF200
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FF3E4
	.align 2, 0
_080FF1F8: .4byte gKirbys
_080FF1FC: .4byte gUnk_03000510
_080FF200:
	ldrh r0, [r6, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r6, #6]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0xa
	bne _080FF222
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0x10
	bne _080FF222
	adds r0, r1, #1
	mov r5, sb
	strb r0, [r5]
_080FF222:
	mov r0, sb
	ldrb r1, [r0]
	cmp r1, #8
	bne _080FF238
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0xa
	bne _080FF238
	adds r0, r1, #1
	mov r5, sb
	strb r0, [r5]
_080FF238:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF250
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080FF25A
_080FF250:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _080FF2E0 @ =0xFFFFFBFF
	ands r1, r2
_080FF25A:
	str r1, [r0, #8]
	mov sl, r0
	ldrh r3, [r6, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r2, #0
	bne _080FF2FE
	adds r0, r6, #0
	adds r0, #0x27
	ldrb r1, [r0]
	adds r4, r0, #0
	mov r5, sb
	ldrb r5, [r5]
	cmp r1, r5
	bne _080FF28A
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _080FF2A0
_080FF28A:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080FF2A0
	strb r2, [r6, #1]
	strh r2, [r6, #2]
	ldr r0, _080FF2E4 @ =0x0000FFFB
	ands r0, r3
	strh r0, [r6, #6]
_080FF2A0:
	mov r0, sl
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080FF2E8
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080FF2FE
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	beq _080FF2FE
	movs r0, #0xff
	strb r0, [r4]
	ldrh r1, [r6, #6]
	ldr r0, _080FF2E4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	mov r0, sl
	bl sub_08155128
	b _080FF2FE
	.align 2, 0
_080FF2E0: .4byte 0xFFFFFBFF
_080FF2E4: .4byte 0x0000FFFB
_080FF2E8:
	mov r0, r8
	ldrb r1, [r0]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _080FF37C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_080FF2FE:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _080FF380 @ =gCurLevelInfo
	ldr r4, _080FF384 @ =gUnk_0203AD3C
	ldrb r0, [r4]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r7, r6, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r4]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	beq _080FF356
	mov r0, ip
	strb r0, [r7]
	strb r0, [r2]
_080FF356:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0xb
	beq _080FF364
	ldrh r3, [r6, #6]
	cmp r0, #9
	bne _080FF388
_080FF364:
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080FF388
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_080FF376:
	orrs r0, r3
	strh r0, [r6, #6]
	b _080FF3E4
	.align 2, 0
_080FF37C: .4byte 0x0000FFFD
_080FF380: .4byte gCurLevelInfo
_080FF384: .4byte gUnk_0203AD3C
_080FF388:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080FF3DE
	ldr r2, _080FF3D0 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #0x28]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080FF3DE
	ldr r1, _080FF3D4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r5, [r6, #0x1e]
	adds r0, r0, r5
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FF3D8
	mov r0, sl
	bl sub_081564D8
	b _080FF3DE
	.align 2, 0
_080FF3D0: .4byte gKirbys
_080FF3D4: .4byte gUnk_0203AD18
_080FF3D8:
	mov r0, sl
	bl sub_0815604C
_080FF3DE:
	adds r0, r6, #0
	bl sub_0806FAC8
_080FF3E4:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FF3F4
sub_080FF3F4: @ 0x080FF3F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _080FF434 @ =sub_080FF5B0
	ldr r2, _080FF438 @ =0x00003501
	ldr r1, _080FF43C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FF440
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FF448
	.align 2, 0
_080FF434: .4byte sub_080FF5B0
_080FF438: .4byte 0x00003501
_080FF43C: .4byte sub_0803DCCC
_080FF440:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FF448:
	adds r6, r0, #0
	adds r7, r6, #0
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r6]
	mov r2, r8
	ldr r0, [r2, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r6, #0x38]
	str r2, [r6, #0x44]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0x42
	strh r0, [r2]
	strh r1, [r6, #4]
	mov ip, r1
	ldr r3, _080FF568 @ =gRngVal
	mov sb, r3
	ldr r4, _080FF56C @ =0x3C6EF35F
	mov sl, r4
_080FF47A:
	mov r0, ip
	lsls r5, r0, #3
	adds r4, r7, #0
	adds r4, #0x48
	adds r4, r4, r5
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _080FF570 @ =0x00196225
	adds r3, r0, #0
	muls r3, r2, r3
	add r3, sl
	str r3, [r1]
	lsrs r2, r3, #0x10
	movs r0, #0x1f
	ands r2, r0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4]
	adds r0, r7, #0
	adds r0, #0x4c
	adds r0, r0, r5
	ldr r1, [r2, #0x44]
	str r1, [r0]
	mov r4, ip
	lsls r2, r4, #1
	adds r1, r7, #0
	adds r1, #0x68
	adds r1, r1, r2
	ldr r4, _080FF570 @ =0x00196225
	adds r0, r3, #0
	muls r0, r4, r0
	add r0, sl
	mov r3, sb
	str r0, [r3]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r0, r4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x70
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _080FF47A
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _080FF4F4
	movs r3, #0xd
	str r3, [sp, #0xc]
_080FF4F4:
	adds r1, r6, #0
	adds r1, #0xc
	ldr r5, _080FF574 @ =0x00000397
	ldr r4, [sp, #0xc]
	str r4, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #1
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, r6, #0
	adds r4, #0x2b
	movs r3, #0
	strb r3, [r4]
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF528
	ldrh r1, [r6, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r6, #6]
_080FF528:
	ldr r2, _080FF578 @ =gKirbys
	ldr r0, _080FF57C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF580
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FF582
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FF582
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FF582
	.align 2, 0
_080FF568: .4byte gRngVal
_080FF56C: .4byte 0x3C6EF35F
_080FF570: .4byte 0x00196225
_080FF574: .4byte 0x00000397
_080FF578: .4byte gKirbys
_080FF57C: .4byte gUnk_0203AD3C
_080FF580:
	strb r3, [r4]
_080FF582:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF592
	mov r2, r8
	ldr r0, [r2, #0x40]
	b _080FF596
_080FF592:
	mov r3, r8
	ldr r0, [r3, #0x40]
_080FF596:
	str r0, [r6, #0x34]
	mov r4, r8
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x38]
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080FF5B0
sub_080FF5B0: @ 0x080FF5B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	ldr r2, _080FF5D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FF5DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FF5E4
	.align 2, 0
_080FF5D8: .4byte gCurTask
_080FF5DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FF5E4:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	str r0, [sp, #0x28]
	str r6, [sp, #0x2c]
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080FF600
	ldr r0, [r2]
	bl TaskDestroy
	b _080FFBB0
_080FF600:
	ldr r2, _080FF668 @ =gKirbys
	ldr r0, _080FF66C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF6B0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FF678
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF6D6
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #1
	bl sub_0803DE54
	adds r5, r6, #0
	adds r5, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF670 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _080FF674 @ =0x0400000A
	adds r0, r5, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #8]
	b _080FF6D6
	.align 2, 0
_080FF668: .4byte gKirbys
_080FF66C: .4byte gUnk_0203AD3C
_080FF670: .4byte 0xFFF7FFFF
_080FF674: .4byte 0x0400000A
_080FF678:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF6D6
	movs r0, #1
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF6A8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FF6AC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FF6D6
	.align 2, 0
_080FF6A8: .4byte 0xFFF7FFFF
_080FF6AC: .4byte 0x0400000A
_080FF6B0:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _080FF6CC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FF6CC
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_080FF6CC:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_080FF6D6:
	ldr r2, _080FF71C @ =gKirbys
	ldr r0, _080FF720 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x3c]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF728
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FF730
	ldr r5, _080FF724 @ =0x00000397
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FF730
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FF730
	.align 2, 0
_080FF71C: .4byte gKirbys
_080FF720: .4byte gUnk_0203AD3C
_080FF724: .4byte 0x00000397
_080FF728:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FF730:
	ldr r0, [sp, #0x28]
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x3c]
	strh r0, [r2]
	ldr r4, [sp, #0x28]
	ldr r3, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _080FF758
	ldrh r0, [r6, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r6, #4]
	ldrh r1, [r6, #6]
	adds r0, r2, #0
	b _080FFBAC
_080FF758:
	ldr r0, _080FF7BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	ldr r1, [sp, #0x28]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FF7C0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	bne _080FF7C0
	ldr r4, [r6, #0x34]
	ldr r5, [r6, #0x38]
	movs r7, #0
	str r7, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	adds r0, #0x48
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x2c]
	adds r1, #0x4c
	str r1, [sp, #0x44]
_080FF78E:
	ldr r2, [sp, #0x30]
	lsls r1, r2, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r6, #0x34]
	ldr r0, [sp, #0x44]
	adds r1, r0, r1
	ldr r0, [r1]
	str r0, [r6, #0x38]
	adds r0, r6, #0
	bl sub_0803DBC8
	ldr r0, [sp, #0x30]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	cmp r0, #3
	bls _080FF78E
	str r4, [r6, #0x34]
	str r5, [r6, #0x38]
	b _080FFBB0
	.align 2, 0
_080FF7BC: .4byte gUnk_03000510
_080FF7C0:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF7D8
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080FF7E2
_080FF7D8:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _080FF868 @ =0xFFFFFBFF
	ands r1, r2
_080FF7E2:
	str r1, [r0, #8]
	str r0, [sp, #0x50]
	ldrh r4, [r6, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0x28
	adds r1, r1, r6
	mov r8, r1
	cmp r3, #0
	bne _080FF886
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _080FF814
	ldrh r0, [r6, #0x24]
	ldrh r2, [r6, #0x18]
	cmp r0, r2
	beq _080FF82A
_080FF814:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080FF82A
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _080FF86C @ =0x0000FFFB
	ands r0, r4
	strh r0, [r6, #6]
_080FF82A:
	ldr r0, [sp, #0x50]
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080FF870
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080FF886
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _080FF886
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _080FF86C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	ldr r0, [sp, #0x50]
	bl sub_08155128
	b _080FF886
	.align 2, 0
_080FF868: .4byte 0xFFFFFBFF
_080FF86C: .4byte 0x0000FFFB
_080FF870:
	mov r7, r8
	ldrb r1, [r7]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _080FF94C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_080FF886:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r5, _080FF950 @ =gCurLevelInfo
	ldr r0, _080FF954 @ =gUnk_0203AD3C
	mov sb, r0
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r0, r3, r0
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r7, r6, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sl, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	mov r2, sb
	ldrb r0, [r2]
	muls r0, r3, r0
	adds r3, r5, #0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _080FF8E4
	mov r0, sl
	strb r0, [r7]
	strb r0, [r2]
_080FF8E4:
	movs r1, #0
	str r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	adds r2, #0x48
	str r2, [sp, #0x40]
	ldr r4, [sp, #0x2c]
	adds r4, #0x4c
	str r4, [sp, #0x44]
	ldr r7, [sp, #0x2c]
	adds r7, #0x70
	str r7, [sp, #0x4c]
	ldr r0, [sp, #0x2c]
	adds r0, #0x68
	str r0, [sp, #0x48]
	str r5, [sp, #0x38]
_080FF902:
	movs r1, #4
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0x30]
	asrs r0, r2
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080FF98C
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF958
	lsls r3, r2, #1
	ldr r7, [sp, #0x4c]
	adds r1, r7, r3
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r2, r2, #3
	ldr r1, [sp, #0x40]
	adds r0, r1, r2
	ldr r4, [sp, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov ip, r2
	cmp r1, r0
	ble _080FF9E8
	movs r1, #1
	ldr r7, [sp, #0x30]
	lsls r1, r7
	ldrh r0, [r6, #4]
	bics r0, r1
	b _080FF9E6
	.align 2, 0
_080FF94C: .4byte 0x0000FFFD
_080FF950: .4byte gCurLevelInfo
_080FF954: .4byte gUnk_0203AD3C
_080FF958:
	ldr r0, [sp, #0x30]
	lsls r3, r0, #1
	ldr r2, [sp, #0x4c]
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r4, [sp, #0x30]
	lsls r2, r4, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r4, [sp, #0x28]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov ip, r2
	cmp r1, r0
	ble _080FF9E8
	movs r1, #1
	ldr r7, [sp, #0x30]
	lsls r1, r7
	ldrh r0, [r6, #4]
	bics r0, r1
	b _080FF9E6
_080FF98C:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF9B4
	ldr r0, [sp, #0x30]
	lsls r3, r0, #1
	ldr r2, [sp, #0x4c]
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r4, [sp, #0x30]
	lsls r2, r4, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r4, [sp, #0x28]
	ldr r0, [r4, #0x40]
	b _080FF9D0
_080FF9B4:
	ldr r0, [sp, #0x30]
	lsls r3, r0, #1
	ldr r2, [sp, #0x4c]
	adds r1, r2, r3
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	ldr r4, [sp, #0x30]
	lsls r2, r4, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r2
	ldr r4, [sp, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
_080FF9D0:
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	mov ip, r2
	cmp r1, r0
	ble _080FF9E8
	movs r0, #1
	ldr r7, [sp, #0x30]
	lsls r0, r7
	ldrh r1, [r6, #4]
	orrs r0, r1
_080FF9E6:
	strh r0, [r6, #4]
_080FF9E8:
	ldr r0, [sp, #0x4c]
	adds r2, r0, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _080FF9FA
	strh r1, [r2]
_080FF9FA:
	movs r4, #0
	ldrsh r0, [r2, r4]
	ldr r1, _080FFA20 @ =0xFFFFFD00
	cmp r0, r1
	bge _080FFA06
	strh r1, [r2]
_080FFA06:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FFA24
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080FFA32
	movs r0, #0xd0
	lsls r0, r0, #3
	b _080FFA36
	.align 2, 0
_080FFA20: .4byte 0xFFFFFD00
_080FFA24:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080FFA32
	movs r0, #0xd0
	lsls r0, r0, #3
	b _080FFA36
_080FFA32:
	movs r0, #0xc0
	lsls r0, r0, #3
_080FFA36:
	strh r0, [r6, #0x20]
	ldr r5, [sp, #0x40]
	add r5, ip
	ldr r2, [sp, #0x4c]
	adds r2, r2, r3
	str r2, [sp, #0x34]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldr r7, [sp, #0x44]
	add r7, ip
	str r7, [sp, #0x54]
	ldr r0, [sp, #0x48]
	adds r4, r0, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, [r7]
	subs r1, r1, r0
	str r1, [r7]
	ldr r0, _080FFA7C @ =0x00008FFF
	cmp r1, r0
	bgt _080FFAC8
	ldrh r1, [r6, #4]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	beq _080FFA80
	movs r0, #0
	strh r0, [r4]
	b _080FFB86
	.align 2, 0
_080FFA7C: .4byte 0x00008FFF
_080FFA80:
	ldr r3, _080FFB64 @ =gRngVal
	ldr r0, [r3]
	ldr r2, _080FFB68 @ =0x00196225
	mov sl, r2
	mov r2, sl
	muls r2, r0, r2
	ldr r7, _080FFB6C @ =0x3C6EF35F
	mov sb, r7
	add r2, sb
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0x10
	subs r1, r0, r1
	lsls r1, r1, #8
	ldr r7, [sp, #0x28]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r7, #0x44]
	ldr r1, [sp, #0x54]
	str r0, [r1]
	mov r0, sl
	muls r0, r2, r0
	add r0, sb
	str r0, [r3]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	strh r0, [r4]
	mov r7, r8
	ldr r4, [sp, #0x34]
	strh r7, [r4]
_080FFAC8:
	ldr r1, [sp, #0x40]
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r5, _080FFB70 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r0, r3, r0
	ldr r1, [sp, #0x38]
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [sp, #0x44]
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r3, r0
	ldr r2, _080FFB74 @ =gCurLevelInfo+0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _080FFB86
	ldr r2, _080FFB78 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x3c]
	ldrh r2, [r2]
	cmp r0, r2
	bne _080FFB86
	ldr r1, _080FFB7C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r7, #0
	ands r0, r4
	cmp r0, #0
	beq _080FFB80
	ldr r0, [sp, #0x50]
	bl sub_081564D8
	b _080FFB86
	.align 2, 0
_080FFB64: .4byte gRngVal
_080FFB68: .4byte 0x00196225
_080FFB6C: .4byte 0x3C6EF35F
_080FFB70: .4byte gUnk_0203AD3C
_080FFB74: .4byte gCurLevelInfo+0x10
_080FFB78: .4byte gKirbys
_080FFB7C: .4byte gUnk_0203AD18
_080FFB80:
	ldr r0, [sp, #0x50]
	bl sub_0815604C
_080FFB86:
	ldr r0, [sp, #0x30]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	cmp r0, #3
	bhi _080FFB96
	b _080FF902
_080FFB96:
	ldr r1, [sp, #0x2c]
	ldr r0, [r1, #0x68]
	cmp r0, #0
	bne _080FFBB0
	ldr r0, [r1, #0x6c]
	cmp r0, #0
	bne _080FFBB0
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_080FFBAC:
	orrs r0, r1
	strh r0, [r6, #6]
_080FFBB0:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FFBC0
sub_080FFBC0: @ 0x080FFBC0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FFBF0 @ =sub_080FFC68
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FFBF4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FFBF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FFC00
	.align 2, 0
_080FFBF0: .4byte sub_080FFC68
_080FFBF4: .4byte sub_0803DCCC
_080FFBF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FFC00:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FFC34
	ldr r0, [r4, #0x34]
	ldr r1, _080FFC30 @ =0xFFFFE000
	b _080FFC42
	.align 2, 0
_080FFC30: .4byte 0xFFFFE000
_080FFC34:
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
_080FFC42:
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080FFC64 @ =0x00000393
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FFC64: .4byte 0x00000393

	thumb_func_start sub_080FFC68
sub_080FFC68: @ 0x080FFC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080FFC88 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FFC8C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FFC94
	.align 2, 0
_080FFC88: .4byte gCurTask
_080FFC8C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FFC94:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FFCAE
	ldr r0, [r2]
	bl TaskDestroy
	b _080FFE9C
_080FFCAE:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FFCBE
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080FFE9C
_080FFCBE:
	ldr r2, _080FFD28 @ =gKirbys
	ldr r0, _080FFD2C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080FFD70
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FFD38
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FFD96
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #8
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FFD30 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FFD34 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080FFD96
	.align 2, 0
_080FFD28: .4byte gKirbys
_080FFD2C: .4byte gUnk_0203AD3C
_080FFD30: .4byte 0xFFF7FFFF
_080FFD34: .4byte 0x0400000A
_080FFD38:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FFD96
	movs r0, #8
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FFD68 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FFD6C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FFD96
	.align 2, 0
_080FFD68: .4byte 0xFFF7FFFF
_080FFD6C: .4byte 0x0400000A
_080FFD70:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FFD8C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FFD8C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FFD8C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FFD96:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FFDAC
	ldr r0, [r6, #0x40]
	ldr r2, _080FFDA8 @ =0xFFFFE000
	adds r0, r0, r2
	b _080FFDBC
	.align 2, 0
_080FFDA8: .4byte 0xFFFFE000
_080FFDAC:
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #6]
	ldr r0, [r6, #0x40]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
_080FFDBC:
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FFE14
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FFDE0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FFDE0
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FFDE0:
	cmp r3, #0
	beq _080FFE14
	ldr r0, _080FFE10 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FFE80
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FFE80
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FFE9C
	.align 2, 0
_080FFE10: .4byte gUnk_03000510
_080FFE14:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FFE78 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FFE52
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FFE52
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FFE52
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FFE52
	movs r3, #4
_080FFE52:
	ldr r0, _080FFE7C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FFE80
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FFE80
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FFE9C
	.align 2, 0
_080FFE78: .4byte gKirbys
_080FFE7C: .4byte gUnk_03000510
_080FFE80:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080FFE96
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080FFE9C
_080FFE96:
	adds r0, r5, #0
	bl sub_0806FAC8
_080FFE9C:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FFEA4
sub_080FFEA4: @ 0x080FFEA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080FFEC6
	adds r0, r4, #0
	bl sub_080FB694
	b _080FFEE8
_080FFEC6:
	ldr r2, _080FFEF0 @ =sub_080FFF84
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
_080FFEE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FFEF0: .4byte sub_080FFF84

	thumb_func_start sub_080FFEF4
sub_080FFEF4: @ 0x080FFEF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080FFF28 @ =sub_080F6104
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x60
	strh r0, [r4, #4]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FFF28: .4byte sub_080F6104

	thumb_func_start sub_080FFF2C
sub_080FFF2C: @ 0x080FFF2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080FFF5C @ =sub_080F6300
	movs r1, #0x29
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FFF5C: .4byte sub_080F6300

	thumb_func_start sub_080FFF60
sub_080FFF60: @ 0x080FFF60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080FFF80 @ =sub_080F5974
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FFF80: .4byte sub_080F5974

	thumb_func_start sub_080FFF84
sub_080FFF84: @ 0x080FFF84
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FFF9A
	adds r0, r1, #0
	bl sub_080F7B34
_080FFF9A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FFFA0
sub_080FFFA0: @ 0x080FFFA0
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0xc2
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0xc0
	strb r1, [r0]
	subs r0, #0x22
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080FFFB8
sub_080FFFB8: @ 0x080FFFB8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	ldr r2, _080FFFE4 @ =sub_080F99BC
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x9e
	movs r1, #0
	strb r5, [r0]
	movs r0, #0xe
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FFFE4: .4byte sub_080F99BC

	thumb_func_start sub_080FFFE8
sub_080FFFE8: @ 0x080FFFE8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _0810002C @ =sub_080F9A2C
	adds r0, r4, #0
	movs r1, #0x17
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _08100030
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _08100038
	.align 2, 0
_0810002C: .4byte sub_080F9A2C
_08100030:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08100038:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08100048
sub_08100048: @ 0x08100048
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08100090 @ =sub_080FA9E8
	movs r1, #0x18
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08100076
	rsbs r0, r3, #0
	strh r0, [r2]
_08100076:
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08100084
	movs r0, #0
	strh r0, [r2]
_08100084:
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08100090: .4byte sub_080FA9E8

	thumb_func_start sub_08100094
sub_08100094: @ 0x08100094
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081000BC @ =sub_080FAC64
	movs r1, #0x17
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081000BC: .4byte sub_080FAC64

	thumb_func_start sub_081000C0
sub_081000C0: @ 0x081000C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081000EC @ =sub_081000F0
	movs r1, #0x1e
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf4
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #6
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081000EC: .4byte sub_081000F0

	thumb_func_start sub_081000F0
sub_081000F0: @ 0x081000F0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08100106
	adds r0, r1, #0
	bl sub_08100048
_08100106:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810010C
sub_0810010C: @ 0x0810010C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080886A8
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08088700
	ldr r2, _08100168 @ =sub_080FB9FC
	adds r0, r4, #0
	movs r1, #0x2a
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r0, [r4, #0x40]
	ldr r2, _0810016C @ =0xFFFE9000
	adds r0, r0, r2
	asrs r0, r0, #5
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1e
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08100168: .4byte sub_080FB9FC
_0810016C: .4byte 0xFFFE9000

	thumb_func_start sub_08100170
sub_08100170: @ 0x08100170
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810018A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08100192
_0810018A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08100192:
	ldr r0, [r0, #0x44]
	adds r0, #0xbc
	movs r1, #0
	str r1, [r0]
	adds r0, r2, #0
	bl sub_0803DCCC
	pop {r0}
	bx r0

	thumb_func_start sub_081001A4
sub_081001A4: @ 0x081001A4
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081001BE
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081001C6
_081001BE:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081001C6:
	ldr r0, [r0, #0x44]
	adds r0, #0xb8
	movs r1, #0
	str r1, [r0]
	adds r0, r2, #0
	bl sub_0803DCCC
	pop {r0}
	bx r0

	thumb_func_start sub_081001D8
sub_081001D8: @ 0x081001D8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081001F2
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081001FA
_081001F2:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081001FA:
	bl sub_080700D8
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
