	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0803024C
sub_0803024C: @ 0x0803024C
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080302BC @ =0x04000208
	movs r1, #0
	strh r1, [r5]
	mov r0, sp
	strh r1, [r0]
	ldr r4, _080302C0 @ =gUnk_03000490
	ldr r2, _080302C4 @ =0x01000016
	adds r1, r4, #0
	bl CpuSet
	ldrh r0, [r4, #8]
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #6]
	strh r0, [r4, #6]
	ldr r0, _080302C8 @ =gUnk_0300050C
	str r3, [r0]
	ldr r2, _080302CC @ =0x04000128
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r4, _080302D0 @ =0x00004003
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080302D4 @ =0x0400012A
	strh r3, [r0]
	ldr r2, _080302D8 @ =gUnk_03000470
	ldr r1, _080302DC @ =gIntrTable
	ldr r0, [r1, #0x1c]
	str r0, [r2]
	ldr r2, _080302E0 @ =gUnk_03000484
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _080302E4 @ =sub_08030898
	str r0, [r1]
	str r0, [r1, #0x1c]
	ldr r2, _080302E8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080302BC: .4byte 0x04000208
_080302C0: .4byte gUnk_03000490
_080302C4: .4byte 0x01000016
_080302C8: .4byte gUnk_0300050C
_080302CC: .4byte 0x04000128
_080302D0: .4byte 0x00004003
_080302D4: .4byte 0x0400012A
_080302D8: .4byte gUnk_03000470
_080302DC: .4byte gIntrTable
_080302E0: .4byte gUnk_03000484
_080302E4: .4byte sub_08030898
_080302E8: .4byte 0x04000200

	thumb_func_start sub_080302EC
sub_080302EC: @ 0x080302EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r2, sp
	ldr r1, _0803034C @ =0x04000128
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r1, [r1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803030C
	ldr r0, _08030350 @ =gMultiBootParam
	bl MultiBootMain
_0803030C:
	ldr r2, _08030354 @ =gUnk_03000490
	adds r3, r2, #0
	adds r3, #0x25
	ldrb r0, [r3]
	movs r0, #0
	strb r0, [r3]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08030358
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080303FA
	ldrb r0, [r2, #3]
	strb r1, [r2, #3]
	ldrb r0, [r2, #3]
	ldrb r1, [r3]
	strb r0, [r3]
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r2, [r0]
	strb r1, [r0]
	b _080303FA
	.align 2, 0
_0803034C: .4byte 0x04000128
_08030350: .4byte gMultiBootParam
_08030354: .4byte gUnk_03000490
_08030358:
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0x1d
	bls _080303FA
	movs r3, #0
	ldr r0, _080303C0 @ =0x0000FFF0
	mov r8, r0
	movs r7, #0xe4
	lsls r7, r7, #7
	movs r1, #0x1e
	adds r1, r1, r2
	mov ip, r1
	movs r6, #1
	ldr r5, _080303C4 @ =0x00008F50
	movs r4, #2
_08030378:
	mov r0, ip
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, r7
	bne _08030386
	orrs r3, r6
_08030386:
	cmp r0, r5
	bne _0803038E
	movs r0, #2
	orrs r3, r0
_0803038E:
	movs r1, #2
	add ip, r1
	subs r4, #1
	cmp r4, #0
	bge _08030378
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	movs r4, #0
	mov r1, ip
	strb r3, [r1]
	movs r0, #3
	ands r3, r0
	cmp r3, #3
	bne _080303C8
	ldrb r0, [r2, #3]
	movs r1, #2
	orrs r0, r1
	ldrb r1, [r2, #3]
	movs r1, #0
	orrs r0, r1
	strb r0, [r2, #3]
	b _080303FA
	.align 2, 0
_080303C0: .4byte 0x0000FFF0
_080303C4: .4byte 0x00008F50
_080303C8:
	adds r1, r2, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	strb r4, [r1]
	ldrb r0, [r2, #2]
	strb r4, [r2, #2]
	ldrh r0, [r2, #0xa]
	strh r4, [r2, #0xa]
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #1
	bne _080303EC
	ldr r1, _080303E8 @ =gUnk_0300050C
	movs r0, #2
	b _080303F8
	.align 2, 0
_080303E8: .4byte gUnk_0300050C
_080303EC:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #2
	bne _080303FA
	ldr r1, _08030408 @ =gUnk_0300050C
	movs r0, #1
_080303F8:
	str r0, [r1]
_080303FA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030408: .4byte gUnk_0300050C

	thumb_func_start sub_0803040C
sub_0803040C: @ 0x0803040C
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	ldr r0, _08030460 @ =0x04000128
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, _08030464 @ =gUnk_03000490
	ldrh r1, [r2, #0x28]
	movs r0, #0x40
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _08030430
	ldrh r1, [r2, #0x28]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803046C
_08030430:
	mov r1, ip
	ldrb r0, [r1, #1]
	movs r2, #0
	strb r2, [r1, #1]
	adds r1, #0x25
	ldrb r0, [r1]
	strb r2, [r1]
	ldrb r1, [r1]
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	strb r1, [r0]
	ldrb r0, [r0]
	mov r3, ip
	ldrb r1, [r3, #2]
	strb r0, [r3, #2]
	ldrb r1, [r3, #2]
	mov r0, ip
	adds r0, #0x2a
	ldrb r3, [r0]
	strb r1, [r0]
	ldr r0, _08030468 @ =gUnk_0300050C
	str r2, [r0]
	b _080305EE
	.align 2, 0
_08030460: .4byte 0x04000128
_08030464: .4byte gUnk_03000490
_08030468: .4byte gUnk_0300050C
_0803046C:
	mov r0, ip
	ldrh r1, [r0, #0x28]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080304B2
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #8
	beq _080304B2
	mov r1, ip
	ldrb r0, [r1, #1]
	strb r3, [r1, #1]
	adds r1, #0x25
	ldrb r0, [r1]
	strb r3, [r1]
	ldrb r1, [r1]
	mov r0, ip
	adds r0, #0x24
	ldrb r2, [r0]
	strb r1, [r0]
	ldrb r0, [r0]
	mov r2, ip
	ldrb r1, [r2, #2]
	strb r0, [r2, #2]
	ldrb r1, [r2, #2]
	mov r0, ip
	adds r0, #0x2a
	ldrb r2, [r0]
	strb r1, [r0]
	b _0803052A
_080304B2:
	ldr r0, _080304E0 @ =gUnk_03000478
	ldrh r1, [r0]
	ldr r2, _080304E4 @ =0x0000E4E4
	adds r5, r0, #0
	cmp r1, r2
	bne _080304CC
	mov r3, ip
	ldrh r1, [r3, #0x28]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080304CC
	b _080305EE
_080304CC:
	mov r0, ip
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r3, r0, #0
	cmp r3, #0
	beq _080304EC
	ldr r0, _080304E8 @ =0x0400012A
	strh r2, [r0]
	b _080305BC
	.align 2, 0
_080304E0: .4byte gUnk_03000478
_080304E4: .4byte 0x0000E4E4
_080304E8: .4byte 0x0400012A
_080304EC:
	mov r4, ip
	adds r4, #0x2a
	ldrb r0, [r4]
	cmp r0, #0
	beq _08030534
	mov r1, ip
	ldrb r0, [r1, #2]
	cmp r0, #2
	bne _08030504
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _08030542
_08030504:
	mov r2, ip
	ldrb r0, [r2, #1]
	strb r3, [r2, #1]
	mov r1, ip
	adds r1, #0x25
	ldrb r0, [r1]
	strb r3, [r1]
	ldrb r1, [r1]
	mov r0, ip
	adds r0, #0x24
	ldrb r2, [r0]
	strb r1, [r0]
	ldrb r0, [r0]
	mov r2, ip
	ldrb r1, [r2, #2]
	strb r0, [r2, #2]
	ldrb r0, [r2, #2]
	ldrb r1, [r4]
	strb r0, [r4]
_0803052A:
	ldr r0, _08030530 @ =gUnk_0300050C
	str r3, [r0]
	b _080305EE
	.align 2, 0
_08030530: .4byte gUnk_0300050C
_08030534:
	mov r3, ip
	ldrb r0, [r3, #2]
	cmp r0, #2
	bne _08030542
	ldrb r0, [r4]
	movs r0, #1
	strb r0, [r4]
_08030542:
	ldrh r1, [r5]
	ldr r0, _080305A8 @ =0x0000E4E4
	cmp r1, r0
	beq _080305EE
	mov r3, ip
	ldrh r1, [r3, #0x28]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080305CC
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #8
	beq _0803056A
	ldrb r0, [r3, #2]
	strb r2, [r3, #2]
_0803056A:
	ldrh r0, [r3, #6]
	adds r0, #1
	ldrh r1, [r3, #6]
	strh r0, [r3, #6]
	ldrh r1, [r3, #6]
	ldr r0, _080305AC @ =0x00001FFF
	ands r0, r1
	ldrh r1, [r3, #6]
	strh r0, [r3, #6]
	ldrh r0, [r3, #6]
	cmp r0, #0xff
	bhi _0803058A
	ldrh r0, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #6]
_0803058A:
	ldr r2, _080305B0 @ =0x0400012A
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #0xc]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080305B4
	ldrb r0, [r3, #2]
	movs r0, #0
	strb r0, [r3, #2]
	b _080305EE
	.align 2, 0
_080305A8: .4byte 0x0000E4E4
_080305AC: .4byte 0x00001FFF
_080305B0: .4byte 0x0400012A
_080305B4:
	ldrh r0, [r3, #0xa]
	adds r0, #1
	ldrh r1, [r3, #0xa]
	strh r0, [r3, #0xa]
_080305BC:
	ldr r2, _080305C8 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	b _080305EE
	.align 2, 0
_080305C8: .4byte 0x04000128
_080305CC:
	ldrh r1, [r3, #6]
	ldrh r0, [r3, #8]
	cmp r1, r0
	bne _080305E4
	ldrb r0, [r3, #2]
	movs r0, #0
	strb r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xfe
	ands r0, r1
	ldrb r1, [r3, #3]
	strb r0, [r3, #3]
_080305E4:
	mov r1, ip
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #6]
	mov r2, ip
	strh r0, [r2, #6]
_080305EE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080305F8
sub_080305F8: @ 0x080305F8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r1, sp, #4
	ldr r0, _0803061C @ =0x04000128
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r1, #0
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08030624
	ldr r1, _08030620 @ =gUnk_0300050C
	movs r0, #0
	str r0, [r1]
	b _08030886
	.align 2, 0
_0803061C: .4byte 0x04000128
_08030620: .4byte gUnk_0300050C
_08030624:
	ldr r1, _08030670 @ =gUnk_03000490
	adds r4, r1, #0
	adds r4, #0x2a
	ldrb r0, [r4]
	adds r5, r1, #0
	cmp r0, #1
	bne _0803067C
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _08030646
	ldr r2, _08030674 @ =gMultiBootParam
	ldrb r1, [r2, #0x1e]
	movs r0, #0xe
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0803068A
_08030646:
	ldrb r0, [r5, #1]
	strb r3, [r5, #1]
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r0, [r1]
	strb r3, [r1]
	ldrb r1, [r1]
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r2, [r0]
	strb r1, [r0]
	ldrb r0, [r0]
	ldrb r1, [r5, #2]
	strb r0, [r5, #2]
	ldrb r0, [r5, #2]
	ldrb r1, [r4]
	strb r0, [r4]
	ldr r0, _08030678 @ =gUnk_0300050C
	str r3, [r0]
	b _08030886
	.align 2, 0
_08030670: .4byte gUnk_03000490
_08030674: .4byte gMultiBootParam
_08030678: .4byte gUnk_0300050C
_0803067C:
	ldr r1, _080306DC @ =gMultiBootParam
	ldrb r0, [r1, #0x1e]
	movs r3, #0xe
	ands r3, r0
	adds r6, r1, #0
	cmp r3, #0
	beq _08030726
_0803068A:
	adds r1, r5, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803069A
	ldrb r0, [r1]
	movs r0, #1
	strb r0, [r1]
_0803069A:
	ldrb r0, [r5, #2]
	movs r3, #1
	movs r4, #1
	strb r4, [r5, #2]
	ldrb r0, [r5, #1]
	strb r4, [r5, #1]
	ldrb r2, [r6, #0x1e]
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x19
	ands r0, r3
	ldrb r1, [r5, #1]
	adds r1, r1, r0
	ldrb r0, [r5, #1]
	strb r1, [r5, #1]
	lsrs r0, r2, #0x1a
	ands r0, r3
	ldrb r1, [r5, #1]
	adds r1, r1, r0
	ldrb r0, [r5, #1]
	strb r1, [r5, #1]
	lsrs r2, r2, #0x1b
	ands r2, r3
	ldrb r0, [r5, #1]
	adds r0, r0, r2
	ldrb r1, [r5, #1]
	strb r0, [r5, #1]
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _080306E0
	cmp r0, #0xd1
	beq _08030702
	b _08030718
	.align 2, 0
_080306DC: .4byte gMultiBootParam
_080306E0:
	ldrh r0, [r5, #0xa]
	cmp r0, #0xf
	bhi _080306EE
	ldrh r0, [r5, #0xa]
	adds r0, #1
	ldrh r1, [r5, #0xa]
	strh r0, [r5, #0xa]
_080306EE:
	ldrh r0, [r5, #0xa]
	cmp r0, #0x10
	bne _080306FA
	ldrb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #2]
_080306FA:
	ldrb r0, [r5, #4]
	movs r0, #2
	strb r0, [r5, #4]
	b _08030718
_08030702:
	adds r1, r5, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r5, #4]
	movs r0, #3
	strb r0, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x4b
	strb r4, [r0]
_08030718:
	ldrb r0, [r6, #0x18]
	cmp r0, #0xdf
	bls _0803072E
	ldrb r0, [r5, #4]
	movs r0, #4
	strb r0, [r5, #4]
	b _0803072E
_08030726:
	ldrb r0, [r5, #2]
	strb r3, [r5, #2]
	ldrh r0, [r5, #0xa]
	strh r3, [r5, #0xa]
_0803072E:
	adds r4, r5, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #0x11
	bne _0803074C
	ldr r0, _08030850 @ =gMultiBootParam
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x18]
	movs r3, #1
	str r3, [sp]
	movs r3, #4
	bl MultiBootStartMaster
	ldrh r0, [r4, #0xa]
	movs r0, #0x12
	strh r0, [r4, #0xa]
_0803074C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080307E2
	ldrh r0, [r5, #0xa]
	cmp r0, #0x10
	bne _080307E2
	ldr r1, _08030850 @ =gMultiBootParam
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080307E2
	ldrb r1, [r1, #0x1e]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080307E2
	bl m4aMPlayAllStop
	ldr r2, _08030854 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOff
	ldr r1, _08030858 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0803085C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08030860 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08030864 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldrh r0, [r5, #0xa]
	movs r0, #0x11
	strh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	movs r0, #2
	strb r0, [r1]
_080307E2:
	ldr r4, _08030850 @ =gMultiBootParam
	adds r0, r4, #0
	bl MultiBootMain
	adds r2, r0, #0
	ldr r3, _08030868 @ =gUnk_03000490
	adds r1, r3, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #2
	bne _08030874
	adds r0, r4, #0
	adds r0, #0x4b
	movs r4, #0
	strb r4, [r0]
	ldrb r0, [r1]
	strb r4, [r1]
	cmp r2, #0
	beq _08030874
	ldr r2, _0803086C @ =0x04000128
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r3, #3]
	movs r1, #4
	orrs r0, r1
	ldrb r1, [r3, #3]
	movs r1, #0
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r3, #1]
	strb r4, [r3, #1]
	adds r1, r3, #0
	adds r1, #0x25
	ldrb r0, [r1]
	strb r4, [r1]
	ldrb r1, [r1]
	adds r0, r3, #0
	adds r0, #0x24
	ldrb r2, [r0]
	strb r1, [r0]
	ldrb r0, [r0]
	ldrb r1, [r3, #2]
	strb r0, [r3, #2]
	ldrb r1, [r3, #2]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r0, _08030870 @ =gUnk_0300050C
	str r4, [r0]
	b _08030886
	.align 2, 0
_08030850: .4byte gMultiBootParam
_08030854: .4byte gUnk_03002440
_08030858: .4byte 0x040000B0
_0803085C: .4byte 0x0000C5FF
_08030860: .4byte 0x00007FFF
_08030864: .4byte 0x040000D4
_08030868: .4byte gUnk_03000490
_0803086C: .4byte 0x04000128
_08030870: .4byte gUnk_0300050C
_08030874:
	ldr r0, _08030890 @ =gMultiBootParam
	bl MultiBootCheckComplete
	cmp r0, #0
	beq _08030886
	ldr r0, _08030894 @ =gUnk_03000490
	ldrb r1, [r0, #2]
	movs r1, #3
	strb r1, [r0, #2]
_08030886:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030890: .4byte gMultiBootParam
_08030894: .4byte gUnk_03000490

	thumb_func_start sub_08030898
sub_08030898: @ 0x08030898
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r1, sp
	ldr r4, _0803097C @ =0x04000128
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r3, _08030980 @ =gUnk_03000490
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r3, #0x28]
	movs r5, #0
	strh r0, [r3, #0x28]
	adds r2, r3, #0
	adds r2, #0x26
	ldrb r0, [r2]
	adds r0, #1
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r2, _08030984 @ =gUnk_03000478
	ldr r0, _08030988 @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	ldrb r1, [r3]
	strb r0, [r3]
	ldrb r1, [r3, #3]
	movs r0, #0xbf
	ands r0, r1
	ldrb r1, [r3, #3]
	strb r0, [r3, #3]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldrb r1, [r3, #3]
	orrs r0, r1
	ldrb r1, [r3, #3]
	strb r0, [r3, #3]
	ldr r1, _0803098C @ =gUnk_0300050C
	ldr r0, [r1]
	adds r6, r2, #0
	cmp r0, #2
	beq _08030908
	ldr r0, [r1]
	cmp r0, #0
	bne _0803099C
_08030908:
	ldrh r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803091A
	ldr r1, _08030990 @ =0x0400012A
	ldr r2, _08030994 @ =0x00008F51
	adds r0, r2, #0
	strh r0, [r1]
_0803091A:
	ldrh r1, [r6, #2]
	ldr r0, _08030998 @ =0x0000FFFF
	cmp r1, r0
	bne _0803092C
	adds r0, r3, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
_0803092C:
	adds r5, r3, #0
	adds r5, #0x24
	movs r7, #0x1e
	adds r7, r7, r3
	mov ip, r7
	adds r2, r6, #2
	movs r6, #0
	movs r4, #2
_0803093C:
	ldrh r1, [r2]
	mov r7, ip
	ldrh r0, [r7]
	cmp r1, r0
	beq _0803094A
	ldrb r0, [r5]
	strb r6, [r5]
_0803094A:
	ldrh r0, [r2]
	mov r7, ip
	ldrh r1, [r7]
	strh r0, [r7]
	movs r0, #2
	add ip, r0
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bge _0803093C
	adds r2, r3, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	ldrb r1, [r2]
	strb r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0x1d
	bhi _08030972
	b _08030B26
_08030972:
	ldrb r0, [r2]
	movs r0, #0x1e
	strb r0, [r2]
	b _08030B26
	.align 2, 0
_0803097C: .4byte 0x04000128
_08030980: .4byte gUnk_03000490
_08030984: .4byte gUnk_03000478
_08030988: .4byte 0x04000120
_0803098C: .4byte gUnk_0300050C
_08030990: .4byte 0x0400012A
_08030994: .4byte 0x00008F51
_08030998: .4byte 0x0000FFFF
_0803099C:
	ldrh r0, [r6]
	adds r1, r0, #0
	ldr r0, _080309B4 @ =0x0000E4E4
	cmp r1, r0
	bne _080309BC
	ldr r0, _080309B8 @ =0x0400012A
	strh r1, [r0]
	ldrb r0, [r3, #2]
	movs r0, #3
	strb r0, [r3, #2]
	b _08030B26
	.align 2, 0
_080309B4: .4byte 0x0000E4E4
_080309B8: .4byte 0x0400012A
_080309BC:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080309D6
	ldrh r0, [r3, #0xa]
	cmp r0, #0x13
	bls _08030A82
	ldrb r0, [r3, #2]
	movs r0, #2
	strb r0, [r3, #2]
	b _08030A82
_080309D6:
	ldrh r0, [r3, #8]
	adds r0, #1
	ldrh r1, [r3, #8]
	strh r0, [r3, #8]
	ldrh r1, [r3, #8]
	ldr r4, _08030A34 @ =0x00001FFF
	adds r0, r4, #0
	ands r0, r1
	ldrh r1, [r3, #8]
	strh r0, [r3, #8]
	ldrh r0, [r3, #8]
	cmp r0, #0xff
	bhi _080309F8
	ldrh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #8]
_080309F8:
	ldrh r0, [r6]
	ldrh r2, [r3, #8]
	adds r1, r4, #0
	ands r1, r0
	cmp r2, r1
	bne _08030A4C
	ldrh r0, [r3, #0xa]
	cmp r0, #3
	bls _08030A42
	ldrh r2, [r6]
	movs r4, #0xe0
	lsls r4, r4, #8
	ldrh r1, [r3, #0xc]
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _08030A38
	ldrh r1, [r6]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08030A50
	ldrb r0, [r3, #3]
	movs r1, #1
	orrs r0, r1
	ldrb r1, [r3, #3]
	movs r1, #0
	orrs r0, r1
	strb r0, [r3, #3]
	b _08030A4C
	.align 2, 0
_08030A34: .4byte 0x00001FFF
_08030A38:
	ldrb r1, [r3, #3]
	movs r0, #0xfe
	ands r0, r1
	ldrb r1, [r3, #3]
	strb r0, [r3, #3]
_08030A42:
	ldrh r0, [r3, #0xa]
	adds r0, #1
	ldrh r1, [r3, #0xa]
	strh r0, [r3, #0xa]
	b _08030A50
_08030A4C:
	ldrh r0, [r3, #0xa]
	strh r5, [r3, #0xa]
_08030A50:
	ldrh r0, [r6]
	ldrh r1, [r3, #8]
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	cmp r0, #0x1e
	bls _08030A74
	ldrb r0, [r3, #2]
	movs r0, #2
	strb r0, [r3, #2]
	ldr r1, _08030A6C @ =0x0400012A
	ldr r2, _08030A70 @ =0x000070AE
	adds r0, r2, #0
	b _08030A80
	.align 2, 0
_08030A6C: .4byte 0x0400012A
_08030A70: .4byte 0x000070AE
_08030A74:
	ldrb r0, [r3, #2]
	movs r0, #0
	strb r0, [r3, #2]
	ldr r1, _08030AE8 @ =0x0400012A
	ldr r7, _08030AEC @ =0x00008F51
	adds r0, r7, #0
_08030A80:
	strh r0, [r1]
_08030A82:
	ldrb r0, [r3, #1]
	movs r1, #0
	movs r0, #1
	strb r0, [r3, #1]
	movs r5, #1
	ldrh r0, [r3, #0xe]
	mov r8, r0
	ldrh r0, [r3, #0xe]
	strh r1, [r3, #0xe]
	movs r4, #1
	ldr r0, _08030AF0 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ldr r1, _08030AF4 @ =0x000070AE
	mov sl, r1
	ldr r7, _08030AF8 @ =gUnk_03000478
	adds r6, r7, #2
	ldr r0, _08030AEC @ =0x00008F51
	mov sb, r0
_08030AA8:
	ldrh r0, [r6]
	cmp r0, ip
	bne _08030ABA
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r2, #0xe]
	orrs r0, r1
	ldrh r1, [r2, #0xe]
	strh r0, [r2, #0xe]
_08030ABA:
	mov r0, r8
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030B1A
	ldrh r0, [r6]
	cmp r0, sl
	bne _08030B02
	ldrh r0, [r7]
	cmp r0, ip
	bne _08030AD8
	movs r5, #0
	ldrb r0, [r2, #2]
	strb r1, [r2, #2]
_08030AD8:
	cmp r5, #0
	beq _08030AFC
	ldrb r0, [r2, #1]
	adds r0, #1
	ldrb r1, [r2, #1]
	strb r0, [r2, #1]
	b _08030B1C
	.align 2, 0
_08030AE8: .4byte 0x0400012A
_08030AEC: .4byte 0x00008F51
_08030AF0: .4byte 0x0000FFFF
_08030AF4: .4byte 0x000070AE
_08030AF8: .4byte gUnk_03000478
_08030AFC:
	ldrb r0, [r2, #1]
	strb r1, [r2, #1]
	b _08030B1C
_08030B02:
	ldrh r0, [r6]
	cmp r0, sb
	bne _08030B1A
	ldrb r0, [r2, #2]
	strb r1, [r2, #2]
	ldrh r0, [r7]
	cmp r0, ip
	bne _08030B1C
	movs r5, #0
	ldrh r0, [r3, #0xa]
	strh r5, [r3, #0xa]
	b _08030B1C
_08030B1A:
	movs r5, #0
_08030B1C:
	adds r7, #2
	adds r6, #2
	adds r4, #1
	cmp r4, #3
	ble _08030AA8
_08030B26:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08030B38
sub_08030B38: @ 0x08030B38
	push {r4, lr}
	ldr r4, _08030B88 @ =0x04000208
	movs r3, #0
	strh r3, [r4]
	ldr r1, _08030B8C @ =gUnk_0300050C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r2, _08030B90 @ =0x04000128
	ldrh r1, [r2]
	ldr r0, _08030B94 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08030B98 @ =0x0400012A
	ldr r2, _08030B9C @ =0x00008F52
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08030BA0 @ =gIntrTable
	ldr r0, _08030BA4 @ =gUnk_03000470
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	ldr r0, _08030BA8 @ =gUnk_03000484
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08030BAC @ =gUnk_03000490
	ldrb r1, [r0, #2]
	strb r3, [r0, #2]
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #1]
	strb r1, [r0, #1]
	ldr r2, _08030BB0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08030BB4 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030B88: .4byte 0x04000208
_08030B8C: .4byte gUnk_0300050C
_08030B90: .4byte 0x04000128
_08030B94: .4byte 0x0000BFFF
_08030B98: .4byte 0x0400012A
_08030B9C: .4byte 0x00008F52
_08030BA0: .4byte gIntrTable
_08030BA4: .4byte gUnk_03000470
_08030BA8: .4byte gUnk_03000484
_08030BAC: .4byte gUnk_03000490
_08030BB0: .4byte 0x04000200
_08030BB4: .4byte 0x0000FFBF

	thumb_func_start sub_08030BB8
sub_08030BB8: @ 0x08030BB8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	subs r4, r1, r6
	adds r4, #0x10
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0
	mov r8, r1
	strh r1, [r0]
	ldr r5, _08030C10 @ =gMultiBootParam
	ldr r2, _08030C14 @ =0x01000026
	adds r1, r5, #0
	bl CpuSet
	ldr r1, _08030C18 @ =gUnk_03000490
	adds r0, r6, #0
	adds r0, #0xc0
	str r0, [r1, #0x10]
	mov r0, sb
	str r0, [r1, #0x14]
	subs r4, #0xc0
	str r4, [r1, #0x18]
	str r6, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x4b
	mov r1, r8
	strb r1, [r0]
	adds r0, r5, #0
	bl MultiBootInit
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030C10: .4byte gMultiBootParam
_08030C14: .4byte 0x01000026
_08030C18: .4byte gUnk_03000490

	thumb_func_start sub_08030C1C
sub_08030C1C: @ 0x08030C1C
	push {lr}
	ldr r2, _08030C3C @ =gUnk_03000490
	adds r1, r2, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0
	bne _08030C36
	ldrb r0, [r2, #2]
	cmp r0, #2
	bne _08030C36
	ldrb r0, [r1]
	movs r0, #1
	strb r0, [r1]
_08030C36:
	pop {r0}
	bx r0
	.align 2, 0
_08030C3C: .4byte gUnk_03000490

	thumb_func_start sub_08030C40
sub_08030C40: @ 0x08030C40
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _08030C70 @ =gUnk_0300050C
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08030C8E
	ldr r2, _08030C74 @ =gUnk_03000490
	ldrb r0, [r2, #2]
	cmp r0, #3
	beq _08030C8E
	lsls r0, r3, #0xd
	ldrh r1, [r2, #0xc]
	strh r0, [r2, #0xc]
	ldr r1, [r4]
	cmp r1, #1
	beq _08030C84
	cmp r1, #1
	bgt _08030C78
	cmp r1, #0
	beq _08030C7E
	b _08030C8E
	.align 2, 0
_08030C70: .4byte gUnk_0300050C
_08030C74: .4byte gUnk_03000490
_08030C78:
	cmp r1, #2
	beq _08030C8A
	b _08030C8E
_08030C7E:
	bl sub_080302EC
	b _08030C8E
_08030C84:
	bl sub_0803040C
	b _08030C8E
_08030C8A:
	bl sub_080305F8
_08030C8E:
	pop {r4}
	pop {r0}
	bx r0
