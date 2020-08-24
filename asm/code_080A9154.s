	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A9154
sub_080A9154: @ 0x080A9154
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A9188 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A918C @ =sub_080AAA14
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A9190
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080A9198
	.align 2, 0
_080A9188: .4byte ObjectMain
_080A918C: .4byte sub_080AAA14
_080A9190:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080A9198:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	movs r0, #0x28
	rsbs r0, r0, #0
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r1, r0
	movs r2, #0
	str r2, [r4, #0x68]
	ldr r0, _080A9244 @ =0xEFFFFFFF
	ands r1, r0
	ldr r0, [r4, #0xc]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	subs r0, #0x25
	ldrh r1, [r0]
	ldr r0, _080A9248 @ =0x000003D3
	cmp r1, r0
	bls _080A91EC
	ldr r0, [r4, #8]
	ldr r1, _080A924C @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
_080A91EC:
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0x1a
	bne _080A9228
	ldr r0, [r4, #8]
	ldr r1, _080A9250 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _080A9254 @ =gUnk_0203AD34
	strb r5, [r0]
_080A9228:
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080AA91C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9244: .4byte 0xEFFFFFFF
_080A9248: .4byte 0x000003D3
_080A924C: .4byte 0xFDFFFFFF
_080A9250: .4byte 0xFFFFBFFF
_080A9254: .4byte gUnk_0203AD34

	thumb_func_start sub_080A9258
sub_080A9258: @ 0x080A9258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x70]
	str r1, [sp, #4]
	ldr r5, [r4, #8]
	movs r0, #4
	orrs r5, r0
	str r5, [r4, #8]
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _080A92B8
	ldr r2, _080A9328 @ =gUnk_02023530
	adds r3, r4, #0
	adds r3, #0x56
	ldrb r1, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r7, r0
	ldr r1, [r4, #0x44]
	ldr r0, [r0]
	mov sl, r2
	mov r8, r3
	cmp r1, r0
	bge _080A92B8
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r3, #1
	mov ip, r3
	mov r0, ip
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _080A9340
_080A92B8:
	ldr r2, _080A932C @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080A9330 @ =gUnk_02020EE0
	ldr r0, _080A9334 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080A92F2
	b _080A98C0
_080A92F2:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A9304
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080A9304
	b _080A98C0
_080A9304:
	ldr r1, _080A9338 @ =gUnk_08D60FA4
	ldr r3, _080A933C @ =gSongTable
	movs r5, #0xfd
	lsls r5, r5, #2
	adds r0, r3, r5
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	bge _080A931E
	b _080A977E
_080A931E:
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	b _080A9772
	.align 2, 0
_080A9328: .4byte gUnk_02023530
_080A932C: .4byte 0x00000292
_080A9330: .4byte gUnk_02020EE0
_080A9334: .4byte gUnk_0203AD3C
_080A9338: .4byte gUnk_08D60FA4
_080A933C: .4byte gSongTable
_080A9340:
	adds r0, r4, #0
	adds r0, #0x3e
	movs r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, [r4, #0x40]
	adds r2, r0, r6
	mov r1, sl
	adds r1, #0x74
	adds r1, r7, r1
	ldr r1, [r1]
	adds r3, r0, #0
	cmp r2, r1
	ble _080A93FC
	subs r0, r1, r6
	str r0, [r4, #0x40]
	mov r2, ip
	ands r5, r2
	cmp r5, #0
	beq _080A93E8
	ldr r1, _080A93D0 @ =gUnk_02020EE0
	ldr r0, _080A93D4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080A93EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A9390
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, r2
	bne _080A93EC
_080A9390:
	ldr r1, _080A93D8 @ =gUnk_08D60FA4
	ldr r5, _080A93DC @ =gSongTable
	ldr r2, _080A93E0 @ =0x00000414
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A93B6
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A93EC
_080A93B6:
	cmp r3, #0
	beq _080A93C8
	ldr r0, _080A93E4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A93EC
_080A93C8:
	movs r0, #0x82
	bl m4aSongNumStart
	b _080A93EC
	.align 2, 0
_080A93D0: .4byte gUnk_02020EE0
_080A93D4: .4byte gUnk_0203AD3C
_080A93D8: .4byte gUnk_08D60FA4
_080A93DC: .4byte gSongTable
_080A93E0: .4byte 0x00000414
_080A93E4: .4byte gUnk_0203AD10
_080A93E8:
	movs r2, #1
	str r2, [sp]
_080A93EC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r3, _080A9494 @ =gUnk_02023530
	mov sl, r3
	ldr r3, [r4, #0x40]
_080A93FC:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r2, r3, r5
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	mov r1, sl
	adds r1, #0x6c
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	bge _080A94C0
	subs r0, r0, r5
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A94B0
	ldr r1, _080A9498 @ =gUnk_02020EE0
	ldr r0, _080A949C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080A94B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A9454
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, r2
	bne _080A94B4
_080A9454:
	ldr r1, _080A94A0 @ =gUnk_08D60FA4
	ldr r5, _080A94A4 @ =gSongTable
	ldr r2, _080A94A8 @ =0x00000414
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A947A
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A94B4
_080A947A:
	cmp r3, #0
	beq _080A948C
	ldr r0, _080A94AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A94B4
_080A948C:
	movs r0, #0x82
	bl m4aSongNumStart
	b _080A94B4
	.align 2, 0
_080A9494: .4byte gUnk_02023530
_080A9498: .4byte gUnk_02020EE0
_080A949C: .4byte gUnk_0203AD3C
_080A94A0: .4byte gUnk_08D60FA4
_080A94A4: .4byte gSongTable
_080A94A8: .4byte 0x00000414
_080A94AC: .4byte gUnk_0203AD10
_080A94B0:
	movs r2, #1
	str r2, [sp]
_080A94B4:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r3, _080A956C @ =gUnk_02023530
	mov sl, r3
_080A94C0:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r2, [r4, #0x44]
	adds r2, r2, r3
	mov r5, r8
	ldrb r1, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	mov r1, sl
	adds r1, #0x70
	adds r0, r0, r1
	ldr r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r1, r5
	cmp r2, r0
	blt _080A94EA
	b _080A961C
_080A94EA:
	ldr r2, _080A9570 @ =0xFFFFF800
	adds r0, r3, r2
	subs r0, r1, r0
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r6, r0, #0
	cmp r1, #0
	blt _080A958C
	ldr r1, _080A9574 @ =gUnk_02020EE0
	ldr r0, _080A9578 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080A951E
	b _080A9618
_080A951E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A952C
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, r2
	bne _080A9618
_080A952C:
	ldr r1, _080A957C @ =gUnk_08D60FA4
	ldr r5, _080A9580 @ =gSongTable
	ldr r2, _080A9584 @ =0x00000414
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A9552
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A9618
_080A9552:
	cmp r3, #0
	beq _080A9564
	ldr r0, _080A9588 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A9618
_080A9564:
	movs r0, #0x82
	bl m4aSongNumStart
	b _080A9618
	.align 2, 0
_080A956C: .4byte gUnk_02023530
_080A9570: .4byte 0xFFFFF800
_080A9574: .4byte gUnk_02020EE0
_080A9578: .4byte gUnk_0203AD3C
_080A957C: .4byte gUnk_08D60FA4
_080A9580: .4byte gSongTable
_080A9584: .4byte 0x00000414
_080A9588: .4byte gUnk_0203AD10
_080A958C:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A9618
	ldr r2, _080A9604 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080A9608 @ =gUnk_02020EE0
	ldr r0, _080A960C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080A95D2
	b _080A98C0
_080A95D2:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A95E2
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, r2
	beq _080A95E2
	b _080A98C0
_080A95E2:
	ldr r1, _080A9610 @ =gUnk_08D60FA4
	ldr r3, _080A9614 @ =gSongTable
	movs r5, #0xfd
	lsls r5, r5, #2
	adds r0, r3, r5
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	bge _080A95FC
	b _080A977E
_080A95FC:
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	b _080A9772
	.align 2, 0
_080A9604: .4byte 0x00000292
_080A9608: .4byte gUnk_02020EE0
_080A960C: .4byte gUnk_0203AD3C
_080A9610: .4byte gUnk_08D60FA4
_080A9614: .4byte gSongTable
_080A9618:
	movs r0, #0
	strh r0, [r6]
_080A961C:
	mov r2, sb
	ldrb r1, [r2]
	movs r2, #8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A963E
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A963E
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
_080A963E:
	mov r5, sb
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A9648
	b _080A97B8
_080A9648:
	adds r2, r4, #0
	adds r2, #0x85
	movs r0, #0
	strb r0, [r2]
	ldr r1, _080A979C @ =gUnk_02020EE0
	ldr r0, _080A97A0 @ =gUnk_0203AD3C
	ldrb r3, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	adds r6, r2, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080A96BC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A967E
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, r3
	bne _080A96BC
_080A967E:
	ldr r1, _080A97A4 @ =gUnk_08D60FA4
	ldr r5, _080A97A8 @ =gSongTable
	ldr r3, _080A97AC @ =0x00000414
	adds r0, r5, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A96A4
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A96BC
_080A96A4:
	cmp r3, #0
	beq _080A96B6
	ldr r0, _080A97B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A96BC
_080A96B6:
	movs r0, #0x82
	bl m4aSongNumStart
_080A96BC:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A96DA
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
_080A96DA:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A96F4
	ldrb r0, [r6]
	movs r2, #0
	movs r1, #8
	orrs r1, r0
	strb r1, [r6]
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
_080A96F4:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A97B8
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r3, [sp]
	cmp r3, #0
	beq _080A97B8
	ldr r2, _080A97B4 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080A979C @ =gUnk_02020EE0
	ldr r0, _080A97A0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	beq _080A9744
	b _080A98C0
_080A9744:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A9754
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, r2
	beq _080A9754
	b _080A98C0
_080A9754:
	ldr r1, _080A97A4 @ =gUnk_08D60FA4
	ldr r3, _080A97A8 @ =gSongTable
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A977E
	movs r5, #0xfc
	lsls r5, r5, #2
	adds r0, r3, r5
_080A9772:
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080A977E
	b _080A98C0
_080A977E:
	cmp r4, #0
	beq _080A9792
	ldr r0, _080A97B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A9792
	b _080A98C0
_080A9792:
	movs r0, #0x7e
	bl m4aSongNumStart
	b _080A98C0
	.align 2, 0
_080A979C: .4byte gUnk_02020EE0
_080A97A0: .4byte gUnk_0203AD3C
_080A97A4: .4byte gUnk_08D60FA4
_080A97A8: .4byte gSongTable
_080A97AC: .4byte 0x00000414
_080A97B0: .4byte gUnk_0203AD10
_080A97B4: .4byte 0x00000292
_080A97B8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A97DC
	ldr r1, _080A97D8 @ =gUnk_083536EC
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	b _080A97F2
	.align 2, 0
_080A97D8: .4byte gUnk_083536EC
_080A97DC:
	ldr r1, _080A98D0 @ =gUnk_083536EC
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
_080A97F2:
	ldr r2, [r4, #0x58]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080A9800
	ldr r0, _080A98D4 @ =sub_080A98F4
	str r0, [r4, #0x78]
_080A9800:
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _080A98C0
	ldr r1, [sp, #4]
	ldr r3, _080A98D8 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A981A
	cmp r0, #0x1a
	bne _080A983A
_080A981A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080A983A
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	beq _080A98C0
	cmp r1, #0x30
	ble _080A98C0
_080A983A:
	ldr r2, _080A98DC @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080A98E0 @ =gUnk_02020EE0
	ldr r0, _080A98E4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080A98C0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A9880
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, r2
	bne _080A98C0
_080A9880:
	ldr r1, _080A98E8 @ =gUnk_08D60FA4
	ldr r3, _080A98EC @ =gSongTable
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A98A8
	movs r5, #0xfc
	lsls r5, r5, #2
	adds r0, r3, r5
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A98C0
_080A98A8:
	cmp r4, #0
	beq _080A98BA
	ldr r0, _080A98F0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A98C0
_080A98BA:
	movs r0, #0x7e
	bl m4aSongNumStart
_080A98C0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A98D0: .4byte gUnk_083536EC
_080A98D4: .4byte sub_080A98F4
_080A98D8: .4byte 0x00000103
_080A98DC: .4byte 0x00000292
_080A98E0: .4byte gUnk_02020EE0
_080A98E4: .4byte gUnk_0203AD3C
_080A98E8: .4byte gUnk_08D60FA4
_080A98EC: .4byte gSongTable
_080A98F0: .4byte gUnk_0203AD10

	thumb_func_start sub_080A98F4
sub_080A98F4: @ 0x080A98F4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	beq _080A99B0
	ldr r2, _080A9998 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080A999C @ =gUnk_02020EE0
	ldr r0, _080A99A0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080A9940
	b _080A9AE0
_080A9940:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A9952
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080A9952
	b _080A9AE0
_080A9952:
	ldr r1, _080A99A4 @ =gUnk_08D60FA4
	ldr r3, _080A99A8 @ =gSongTable
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A997C
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080A997C
	b _080A9AE0
_080A997C:
	cmp r4, #0
	beq _080A9990
	ldr r0, _080A99AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A9990
	b _080A9AE0
_080A9990:
	movs r0, #0x7e
	bl m4aSongNumStart
	b _080A9AE0
	.align 2, 0
_080A9998: .4byte 0x00000292
_080A999C: .4byte gUnk_02020EE0
_080A99A0: .4byte gUnk_0203AD3C
_080A99A4: .4byte gUnk_08D60FA4
_080A99A8: .4byte gSongTable
_080A99AC: .4byte gUnk_0203AD10
_080A99B0:
	ldr r0, [r4, #8]
	movs r5, #4
	orrs r0, r5
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x52
	movs r0, #0x60
	strh r0, [r3]
	movs r2, #0x85
	adds r2, r2, r4
	mov ip, r2
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A99E6
	ldr r2, _080A9AE8 @ =gUnk_083536F4
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
_080A99E6:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A99FC
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4, #0xc]
	orrs r0, r5
	str r0, [r4, #0xc]
_080A99FC:
	ldrh r0, [r4, #4]
	adds r5, r0, #1
	strh r5, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _080A9AE0
	ldr r1, _080A9AEC @ =gUnk_02023530
	adds r3, r4, #0
	adds r3, #0x56
	ldrb r2, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x54
	adds r0, r0, r1
	ldr r1, [r4, #0x44]
	ldr r0, [r0]
	adds r7, r3, #0
	cmp r1, r0
	bge _080A9A5C
	ldr r2, _080A9AF0 @ =0x00000103
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A9A5C
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080A9A5C
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080A9A5C
	ldr r0, [r4, #0x58]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080A9AE0
	cmp r2, #0x30
	ble _080A9AE0
_080A9A5C:
	ldr r2, _080A9AF4 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080A9AF8 @ =gUnk_02020EE0
	ldr r0, _080A9AFC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080A9AE0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A9AA0
	ldrb r0, [r7]
	cmp r0, r2
	bne _080A9AE0
_080A9AA0:
	ldr r1, _080A9B00 @ =gUnk_08D60FA4
	ldr r3, _080A9B04 @ =gSongTable
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A9AC8
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A9AE0
_080A9AC8:
	cmp r4, #0
	beq _080A9ADA
	ldr r0, _080A9B08 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A9AE0
_080A9ADA:
	movs r0, #0x7e
	bl m4aSongNumStart
_080A9AE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9AE8: .4byte gUnk_083536F4
_080A9AEC: .4byte gUnk_02023530
_080A9AF0: .4byte 0x00000103
_080A9AF4: .4byte 0x00000292
_080A9AF8: .4byte gUnk_02020EE0
_080A9AFC: .4byte gUnk_0203AD3C
_080A9B00: .4byte gUnk_08D60FA4
_080A9B04: .4byte gSongTable
_080A9B08: .4byte gUnk_0203AD10

	thumb_func_start sub_080A9B0C
sub_080A9B0C: @ 0x080A9B0C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A9B40 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A9B44 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A9B48
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080A9B50
	.align 2, 0
_080A9B40: .4byte ObjectMain
_080A9B44: .4byte ObjectDestroy
_080A9B48:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080A9B50:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	ldr r1, _080A9BB0 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x68]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080AA94C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9BB0: .4byte 0xEFFFFFFF

	thumb_func_start sub_080A9BB4
sub_080A9BB4: @ 0x080A9BB4
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	movs r4, #0
	ldr r0, _080A9C18 @ =gUnk_0203AD44
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r4, r0
	bhs _080A9C12
	adds r6, r1, #0
	adds r6, #0x60
	adds r3, r1, #0
	adds r3, #0xb0
	ldr r1, _080A9C1C @ =gUnk_02020EE0
	mov ip, r1
_080A9BD0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	mov r7, ip
	adds r2, r0, r7
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	bne _080A9C06
	ldr r0, [r3]
	ldrh r1, [r0, #0x1a]
	movs r7, #0x84
	lsls r7, r7, #1
	adds r0, r2, r7
	strh r1, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #0x1c]
	adds r7, #2
	adds r1, r2, r7
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r0, [r0, #0x1e]
	subs r7, #4
	adds r1, r2, r7
	strh r0, [r1]
_080A9C06:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _080A9BD0
_080A9C12:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9C18: .4byte gUnk_0203AD44
_080A9C1C: .4byte gUnk_02020EE0

	thumb_func_start CreateDustCloud
CreateDustCloud: @ 0x080A9C20
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A9C54 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A9C58 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A9C5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A9C64
	.align 2, 0
_080A9C54: .4byte ObjectMain
_080A9C58: .4byte ObjectDestroy
_080A9C5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A9C64:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	ldr r1, _080A9CCC @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r4, #1
	orrs r0, r4
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0xc]
	movs r0, #0
	str r0, [r5, #0x68]
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	ands r4, r0
	cmp r4, #0
	beq _080A9CD0
	ldrh r0, [r1, #0x20]
	b _080A9CD2
	.align 2, 0
_080A9CCC: .4byte 0xEFFFFFFF
_080A9CD0:
	ldrh r0, [r1, #0x1e]
_080A9CD2:
	lsrs r0, r0, #4
	adds r1, r5, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080AA960
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9CEC
sub_080A9CEC: @ 0x080A9CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r5, _080A9D58 @ =gUnk_02020EE0
	ldr r4, _080A9D5C @ =gUnk_0203AD3C
	ldrb r0, [r4]
	movs r3, #0xd4
	lsls r3, r3, #1
	muls r0, r3, r0
	adds r0, r0, r5
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080A9D14
	b _080A9FAC
_080A9D14:
	mov r1, ip
	ldrh r0, [r1, #4]
	subs r1, r0, #1
	mov r6, ip
	strh r1, [r6, #4]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xb
	ble _080A9D28
	b _080A9FAC
_080A9D28:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080A9D32
	b _080A9FAC
_080A9D32:
	cmp r2, #0
	bne _080A9D3A
	movs r0, #0x1d
	strh r0, [r6, #4]
_080A9D3A:
	ldrb r0, [r4]
	muls r0, r3, r0
	adds r2, r0, r5
	mov r0, ip
	adds r0, #0xb0
	ldr r6, [r0]
	ldrb r1, [r6, #0xe]
	adds r3, r0, #0
	cmp r1, #1
	beq _080A9DC0
	cmp r1, #1
	bgt _080A9D60
	cmp r1, #0
	beq _080A9D66
	b _080A9ED8
	.align 2, 0
_080A9D58: .4byte gUnk_02020EE0
_080A9D5C: .4byte gUnk_0203AD3C
_080A9D60:
	cmp r1, #2
	beq _080A9E14
	b _080A9ED8
_080A9D66:
	mov r1, ip
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	ldrh r1, [r6, #0x1c]
	adds r0, r0, r1
	ldrh r1, [r6, #0x20]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080A9DB4 @ =gUnk_02023530
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r7, r2, #0
	muls r7, r0, r7
	mov r0, r8
	adds r0, #0x10
	adds r0, r7, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xa0
	cmp r1, r0
	ble _080A9DA0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080A9DA0:
	ldr r3, _080A9DB8 @ =gUnk_0203AD40
	ldr r0, [r3]
	ldr r2, _080A9DBC @ =gRngVal
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	adds r0, r5, r0
	b _080A9E58
	.align 2, 0
_080A9DB4: .4byte gUnk_02023530
_080A9DB8: .4byte gUnk_0203AD40
_080A9DBC: .4byte gRngVal
_080A9DC0:
	mov r0, ip
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x1a]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080A9E08 @ =gUnk_02023530
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r7, r2, #0
	muls r7, r0, r7
	mov r0, r8
	adds r0, #0xc
	adds r0, r7, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080A9DF4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080A9DF4:
	ldr r3, _080A9E0C @ =gUnk_0203AD40
	ldr r0, [r3]
	ldr r2, _080A9E10 @ =gRngVal
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	subs r0, r4, r0
	b _080A9F24
	.align 2, 0
_080A9E08: .4byte gUnk_02023530
_080A9E0C: .4byte gUnk_0203AD40
_080A9E10: .4byte gRngVal
_080A9E14:
	mov r0, ip
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x1c]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080A9E98 @ =gUnk_02023530
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r7, r2, #0
	muls r7, r0, r7
	mov r0, r8
	adds r0, #0x10
	adds r0, r7, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080A9E48
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080A9E48:
	ldr r3, _080A9E9C @ =gUnk_0203AD40
	ldr r0, [r3]
	ldr r2, _080A9EA0 @ =gRngVal
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	subs r0, r5, r0
_080A9E58:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldrh r1, [r6, #0x1a]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, ip
	adds r1, #0x85
	ldrb r0, [r1]
	mov sb, r3
	cmp r0, #0x1d
	bls _080A9EA4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0xc
	adds r1, r7, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	bge _080A9E92
	ldrh r0, [r6, #0x1e]
	adds r0, r0, r4
	subs r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080A9E92:
	movs r1, #0x1d
	b _080A9EA6
	.align 2, 0
_080A9E98: .4byte gUnk_02023530
_080A9E9C: .4byte gUnk_0203AD40
_080A9EA0: .4byte gRngVal
_080A9EA4:
	ldrb r1, [r1]
_080A9EA6:
	ldr r3, _080A9ED4 @ =gUnk_083536FC
	ldrh r0, [r2, #2]
	mov r6, sb
	ldr r2, [r6]
	adds r2, r2, r0
	movs r0, #0xf
	ands r0, r2
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0]
	lsls r1, r1, #4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #7
	ands r2, r0
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	b _080A9F9E
	.align 2, 0
_080A9ED4: .4byte gUnk_083536FC
_080A9ED8:
	mov r1, ip
	ldr r0, [r1, #0x40]
	ldr r6, [r3]
	asrs r0, r0, #8
	ldrh r1, [r6, #0x1a]
	adds r0, r0, r1
	ldrh r1, [r6, #0x1e]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080A9F64 @ =gUnk_02023530
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r7, r2, #0
	muls r7, r0, r7
	mov r0, r8
	adds r0, #0xc
	adds r0, r7, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xf0
	cmp r1, r0
	ble _080A9F14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080A9F14:
	ldr r3, _080A9F68 @ =gUnk_0203AD40
	ldr r0, [r3]
	ldr r2, _080A9F6C @ =gRngVal
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	adds r0, r4, r0
_080A9F24:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, ip
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	ldrh r1, [r6, #0x1c]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, ip
	adds r1, #0x85
	ldrb r0, [r1]
	mov sb, r3
	cmp r0, #0x13
	bls _080A9F70
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0x10
	adds r1, r7, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	bge _080A9F5E
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080A9F5E:
	movs r1, #0x13
	b _080A9F72
	.align 2, 0
_080A9F64: .4byte gUnk_02023530
_080A9F68: .4byte gUnk_0203AD40
_080A9F6C: .4byte gRngVal
_080A9F70:
	ldrb r1, [r1]
_080A9F72:
	ldr r3, _080A9FB8 @ =gUnk_083536FC
	ldrh r0, [r2, #2]
	mov r6, sb
	ldr r2, [r6]
	adds r2, r2, r0
	movs r0, #0xf
	ands r0, r2
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0]
	lsls r1, r1, #4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #7
	ands r2, r0
	adds r2, r5, r2
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
_080A9F9E:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	mov r0, ip
	bl sub_080A9FBC
_080A9FAC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9FB8: .4byte gUnk_083536FC

	thumb_func_start sub_080A9FBC
sub_080A9FBC: @ 0x080A9FBC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _080A9FF4 @ =sub_080AA108
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080A9FF8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A9FFC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AA004
	.align 2, 0
_080A9FF4: .4byte sub_080AA108
_080A9FF8: .4byte sub_0803DCCC
_080A9FFC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AA004:
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
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	lsls r0, r6, #0x10
	asrs r0, r0, #8
	str r0, [r4, #0x34]
	lsls r0, r7, #0x10
	asrs r0, r0, #8
	str r0, [r4, #0x38]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AA050
	cmp r0, #1
	beq _080AA056
	movs r2, #0xa0
	lsls r2, r2, #4
	b _080AA05A
_080AA050:
	movs r2, #0xc0
	lsls r2, r2, #3
	b _080AA05A
_080AA056:
	movs r2, #0x80
	lsls r2, r2, #4
_080AA05A:
	adds r1, r5, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r3, r1, #0
	cmp r0, #1
	beq _080AA084
	cmp r0, #1
	bgt _080AA072
	cmp r0, #0
	beq _080AA078
	b _080AA0AA
_080AA072:
	cmp r0, #2
	beq _080AA098
	b _080AA0AA
_080AA078:
	strh r2, [r4, #0x3e]
	ldr r0, [r5, #0x44]
	ldr r1, [r3]
	asrs r0, r0, #8
	ldrh r1, [r1, #0x1c]
	b _080AA0B6
_080AA084:
	strh r2, [r4, #0x3c]
	ldr r0, [r5, #0x40]
	ldr r1, [r3]
	asrs r0, r0, #8
	ldrh r2, [r1, #0x1a]
	adds r0, r0, r2
	ldrh r1, [r1, #0x1e]
	adds r1, r1, r0
	strh r1, [r4, #4]
	b _080AA0BA
_080AA098:
	rsbs r0, r2, #0
	strh r0, [r4, #0x3e]
	ldr r1, [r5, #0x44]
	ldr r0, [r3]
	asrs r1, r1, #8
	ldrh r2, [r0, #0x1c]
	adds r1, r1, r2
	ldrh r0, [r0, #0x20]
	b _080AA0B6
_080AA0AA:
	rsbs r0, r2, #0
	strh r0, [r4, #0x3c]
	ldr r0, [r5, #0x40]
	ldr r1, [r3]
	asrs r0, r0, #8
	ldrh r1, [r1, #0x1a]
_080AA0B6:
	adds r0, r0, r1
	strh r0, [r4, #4]
_080AA0BA:
	ldr r0, _080AA0E0 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080AA0E8
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080AA0E4 @ =0x000002C2
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd
	bl sub_080709F8
	b _080AA0FC
	.align 2, 0
_080AA0E0: .4byte gUnk_0203AD40
_080AA0E4: .4byte 0x000002C2
_080AA0E8:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080AA104 @ =0x000002C2
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd
	bl sub_080709F8
_080AA0FC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA104: .4byte 0x000002C2

	thumb_func_start sub_080AA108
sub_080AA108: @ 0x080AA108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080AA130 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080AA134
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AA13C
	.align 2, 0
_080AA130: .4byte gCurTask
_080AA134:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AA13C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldr r2, _080AA16C @ =gUnk_0203AD3C
	ldrb r1, [r2]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _080AA170 @ =gUnk_02020EE0
	adds r7, r0, r1
	ldrh r4, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r4
	mov sl, r2
	mov sb, r1
	cmp r0, #0
	beq _080AA174
	ldr r0, [r6]
	bl TaskDestroy
	b _080AA3E2
	.align 2, 0
_080AA16C: .4byte gUnk_0203AD3C
_080AA170: .4byte gUnk_02020EE0
_080AA174:
	mov r1, r8
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	beq _080AA186
	adds r0, r3, #0
	orrs r0, r4
	strh r0, [r5, #6]
	b _080AA3E2
_080AA186:
	mov r2, r8
	cmp r2, #0
	beq _080AA1BC
	ldr r0, _080AA1B8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, r8
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080AA228
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	cmp r0, #0
	bne _080AA228
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080AA3E2
	.align 2, 0
_080AA1B8: .4byte gUnk_03000510
_080AA1BC:
	adds r4, r5, #0
	movs r3, #0
	mov r0, sb
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080AA1FC
	movs r3, #1
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, sb
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AA1FC
	movs r3, #2
	movs r0, #0xec
	lsls r0, r0, #2
	add r0, sb
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AA1FC
	movs r3, #3
	movs r0, #0xab
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AA1FC
	movs r3, #4
_080AA1FC:
	ldr r0, _080AA224 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080AA228
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080AA228
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080AA3E2
	.align 2, 0
_080AA224: .4byte gUnk_03000510
_080AA228:
	ldrh r1, [r5, #6]
	movs r0, #4
	movs r6, #0
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r5, #6]
	ldr r3, _080AA294 @ =gUnk_02023530
	mov ip, r3
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0xc
	adds r0, r1, r0
	ldr r3, [r0]
	ldr r4, _080AA298 @ =0xFFFFE400
	adds r0, r3, r4
	ldr r4, [r5, #0x34]
	cmp r4, r0
	blt _080AA2E0
	movs r7, #0x86
	lsls r7, r7, #9
	adds r0, r3, r7
	cmp r4, r0
	bgt _080AA2E0
	mov r0, ip
	adds r0, #0x10
	adds r0, r1, r0
	ldr r3, [r0]
	ldr r1, _080AA298 @ =0xFFFFE400
	adds r0, r3, r1
	ldr r1, [r5, #0x38]
	cmp r1, r0
	blt _080AA2E0
	movs r7, #0xbc
	lsls r7, r7, #8
	adds r0, r3, r7
	cmp r1, r0
	bgt _080AA2E0
	mov r0, r8
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080AA2AE
	cmp r0, #1
	bgt _080AA29C
	cmp r0, #0
	beq _080AA2A2
	b _080AA2D6
	.align 2, 0
_080AA294: .4byte gUnk_02023530
_080AA298: .4byte 0xFFFFE400
_080AA29C:
	cmp r0, #2
	beq _080AA2C0
	b _080AA2D6
_080AA2A2:
	asrs r1, r1, #8
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r1, r0
	bge _080AA2EE
	b _080AA2CA
_080AA2AE:
	asrs r1, r4, #8
	movs r7, #4
	ldrsh r0, [r5, r7]
	cmp r1, r0
	ble _080AA2EE
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	b _080AA2D0
_080AA2C0:
	asrs r1, r1, #8
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r1, r0
	ble _080AA2EE
_080AA2CA:
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
_080AA2D0:
	orrs r2, r0
	strh r2, [r5, #6]
	b _080AA3E2
_080AA2D6:
	asrs r1, r4, #8
	movs r7, #4
	ldrsh r0, [r5, r7]
	cmp r1, r0
	bge _080AA2EE
_080AA2E0:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080AA3E2
_080AA2EE:
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	add r0, sb
	adds r0, #0x60
	adds r3, r5, #0
	adds r3, #0x42
	ldrh r0, [r0]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080AA394
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080AA35C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080AA3BC
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0xd
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080AA354 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080AA358 @ =0x0400000A
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
	b _080AA3BC
	.align 2, 0
_080AA354: .4byte 0xFFF7FFFF
_080AA358: .4byte 0x0400000A
_080AA35C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080AA3BC
	movs r0, #0xd
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080AA38C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080AA390 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080AA3BC
	.align 2, 0
_080AA38C: .4byte 0xFFF7FFFF
_080AA390: .4byte 0x0400000A
_080AA394:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _080AA3B2
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080AA3B2
	adds r0, r2, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080AA3B2:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080AA3BC:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AA3DC
	movs r4, #0x3c
	ldrsh r1, [r5, r4]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r5, r7]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080AA3DC:
	adds r0, r5, #0
	bl sub_0806FAC8
_080AA3E2:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AA3F4
sub_080AA3F4: @ 0x080AA3F4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080AA428 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AA42C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AA430
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080AA438
	.align 2, 0
_080AA428: .4byte ObjectMain
_080AA42C: .4byte ObjectDestroy
_080AA430:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080AA438:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	orrs r0, r1
	subs r1, #0x79
	ands r0, r1
	str r0, [r6, #0x5c]
	ldr r0, [r6, #0xc]
	movs r7, #1
	orrs r0, r7
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #8]
	movs r4, #4
	rsbs r4, r4, #0
	movs r5, #8
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _080AA4CC
	ldr r0, [r6, #8]
	orrs r0, r7
	str r0, [r6, #8]
_080AA4CC:
	adds r0, r6, #0
	bl sub_080AA4EC
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x98
	beq _080AA4E2
	adds r0, r6, #0
	bl sub_080988B0
_080AA4E2:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA4EC
sub_080AA4EC: @ 0x080AA4EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r1, [r0, #0xe]
	ldr r2, _080AA514 @ =sub_080AA588
	adds r0, r4, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x94
	beq _080AA538
	cmp r0, #0x94
	bgt _080AA518
	cmp r0, #0x93
	beq _080AA530
	b _080AA520
	.align 2, 0
_080AA514: .4byte sub_080AA588
_080AA518:
	cmp r0, #0x95
	beq _080AA540
	cmp r0, #0x98
	beq _080AA558
_080AA520:
	ldr r1, _080AA52C @ =gUnk_083538FC
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	b _080AA544
	.align 2, 0
_080AA52C: .4byte gUnk_083538FC
_080AA530:
	ldr r1, _080AA534 @ =gUnk_08353904
	b _080AA542
	.align 2, 0
_080AA534: .4byte gUnk_08353904
_080AA538:
	ldr r1, _080AA53C @ =gUnk_0835390B
	b _080AA542
	.align 2, 0
_080AA53C: .4byte gUnk_0835390B
_080AA540:
	ldr r1, _080AA554 @ =gUnk_0835390C
_080AA542:
	ldr r0, [r5]
_080AA544:
	ldrb r0, [r0, #0xe]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	b _080AA570
	.align 2, 0
_080AA554: .4byte gUnk_0835390C
_080AA558:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0x1a
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	ldr r0, _080AA580 @ =sub_080AA618
	str r0, [r4, #0x78]
	ldr r0, _080AA584 @ =sub_080AAA64
	str r0, [r4, #0x7c]
_080AA570:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA580: .4byte sub_080AA618
_080AA584: .4byte sub_080AAA64

	thumb_func_start sub_080AA588
sub_080AA588: @ 0x080AA588
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080AA606
	ldr r3, [r4, #0x6c]
	cmp r3, #0
	beq _080AA606
	ldrb r0, [r3]
	cmp r0, #0
	bne _080AA606
	ldr r1, _080AA60C @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA606
	subs r1, #3
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080AA606
	adds r5, r3, #0
	adds r5, #0xd4
	ldrh r0, [r5]
	cmp r0, #0x27
	beq _080AA606
	cmp r0, #0x7a
	bhi _080AA606
	adds r1, #0x10
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080AA606
	ldr r2, [r3, #8]
	ldr r0, _080AA610 @ =0x03800B00
	ands r2, r0
	cmp r2, #0
	bne _080AA606
	movs r0, #0xdd
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x1a
	bne _080AA5F2
	ldr r0, _080AA614 @ =gUnk_0203AD34
	strb r2, [r0]
_080AA5F2:
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_08054C0C
	movs r0, #0xf
	strh r0, [r5]
_080AA606:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA60C: .4byte 0x00000103
_080AA610: .4byte 0x03800B00
_080AA614: .4byte gUnk_0203AD34

	thumb_func_start sub_080AA618
sub_080AA618: @ 0x080AA618
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080AA6D8 @ =gUnk_0203AD34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA6D0
	ldr r0, _080AA6DC @ =gUnk_0203AD2C
	ldrh r1, [r0]
	ldr r0, _080AA6E0 @ =0x0000270E
	cmp r1, r0
	bls _080AA6D0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080AA646
	ldr r2, _080AA6E4 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_080AA646:
	ldr r0, [r4, #8]
	ldr r1, _080AA6E8 @ =0xFFFFF9FF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080AA6D0
	ldr r2, [r4, #0x6c]
	cmp r2, #0
	beq _080AA6D0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080AA6D0
	adds r0, r2, #0
	adds r0, #0x56
	ldr r1, _080AA6EC @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080AA6D0
	ldr r1, _080AA6F0 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA6D0
	subs r1, #3
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080AA6D0
	adds r5, r2, #0
	adds r5, #0xd4
	ldrh r0, [r5]
	cmp r0, #0x27
	beq _080AA6D0
	cmp r0, #0x7a
	bhi _080AA6D0
	adds r1, #0x10
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080AA6D0
	ldr r0, [r2, #8]
	ldr r1, _080AA6F4 @ =0x03800B00
	ands r0, r1
	cmp r0, #0
	bne _080AA6D0
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08054C0C
	movs r0, #0xf
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
_080AA6D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA6D8: .4byte gUnk_0203AD34
_080AA6DC: .4byte gUnk_0203AD2C
_080AA6E0: .4byte 0x0000270E
_080AA6E4: .4byte 0x00000292
_080AA6E8: .4byte 0xFFFFF9FF
_080AA6EC: .4byte gUnk_0203AD30
_080AA6F0: .4byte 0x00000103
_080AA6F4: .4byte 0x03800B00

	thumb_func_start sub_080AA6F8
sub_080AA6F8: @ 0x080AA6F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r2, _080AA774 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AA778 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AA77C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080AA780 @ =0x00000D79
	ldr r3, _080AA784 @ =gUnk_020229D4
	mov sb, r3
	cmp r2, r0
	blt _080AA736
	adds r3, r0, #0
_080AA724:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x11
	bhi _080AA736
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _080AA724
_080AA736:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, [r7, #0x40]
	asrs r1, r1, #8
	adds r2, r7, #0
	adds r2, #0xb0
	ldr r0, [r2]
	movs r3, #0x1a
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r3, #0
	movs r4, #1
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r4
	str r2, [sp]
	subs r2, #0x5a
	str r2, [sp, #4]
	cmp r0, #0
	bne _080AA788
	orrs r1, r4
	mov r0, sb
	str r1, [r0]
	b _080AA7A8
	.align 2, 0
_080AA774: .4byte gRngVal
_080AA778: .4byte 0x00196225
_080AA77C: .4byte 0x3C6EF35F
_080AA780: .4byte 0x00000D79
_080AA784: .4byte gUnk_020229D4
_080AA788:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080AA7A8
	movs r2, #1
	lsls r2, r3
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080AA788
	orrs r1, r2
	mov r2, sb
	str r1, [r2]
_080AA7A8:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _080AA858 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r4, #0
	mov r0, r8
	strh r0, [r1, #6]
	mov r3, ip
	strh r3, [r1, #8]
	strb r4, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	ldr r6, _080AA85C @ =gUnk_0835390F
	mov r0, sl
	adds r3, r0, r6
	ldrb r0, [r3]
	adds r0, #0x92
	strb r0, [r1, #0xc]
	ldr r5, _080AA860 @ =gUnk_08353922
	ldrb r0, [r3]
	adds r0, r0, r5
	ldrb r0, [r0]
	mov r3, sl
	subs r0, r3, r0
	strb r0, [r1, #0xe]
	strb r4, [r1, #0xf]
	strb r4, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r4, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	bl CreateObject
	ldr r4, _080AA864 @ =gRngVal
	ldr r3, [r7, #0x44]
	mov ip, r3
	ldr r0, _080AA868 @ =gUnk_020229D4
	mov sb, r0
	ldr r5, _080AA86C @ =0x00196225
_080AA816:
	ldr r0, [r4]
	muls r0, r5, r0
	ldr r1, _080AA870 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r3, _080AA874 @ =0x00000D79
	cmp r2, r3
	blt _080AA83C
_080AA82A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x11
	bhi _080AA83C
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _080AA82A
_080AA83C:
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp sl, r6
	beq _080AA816
	ldr r1, [sp]
	ldr r0, [r1]
	ldrh r0, [r0, #0x1e]
	add r8, r0
	mov r2, ip
	asrs r2, r2, #8
	mov ip, r2
	movs r3, #0
	movs r2, #1
	b _080AA886
	.align 2, 0
_080AA858: .4byte gUnk_020229E0
_080AA85C: .4byte gUnk_0835390F
_080AA860: .4byte gUnk_08353922
_080AA864: .4byte gRngVal
_080AA868: .4byte gUnk_020229D4
_080AA86C: .4byte 0x00196225
_080AA870: .4byte 0x3C6EF35F
_080AA874: .4byte 0x00000D79
_080AA878:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080AA898
	movs r2, #1
	lsls r2, r3
_080AA886:
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080AA878
	orrs r1, r2
	mov r2, sb
	str r1, [r2]
_080AA898:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _080AA910 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r4, #0
	mov r0, r8
	strh r0, [r1, #6]
	mov r3, ip
	strh r3, [r1, #8]
	strb r4, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	ldr r0, _080AA914 @ =gUnk_0835390F
	adds r3, r6, r0
	ldrb r0, [r3]
	adds r0, #0x92
	strb r0, [r1, #0xc]
	ldrb r0, [r3]
	ldr r3, _080AA918 @ =gUnk_08353922
	adds r0, r0, r3
	ldrb r0, [r0]
	subs r0, r6, r0
	strb r0, [r1, #0xe]
	strb r4, [r1, #0xf]
	strb r5, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r4, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	bl CreateObject
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA910: .4byte gUnk_020229E0
_080AA914: .4byte gUnk_0835390F
_080AA918: .4byte gUnk_08353922

	thumb_func_start sub_080AA91C
sub_080AA91C: @ 0x080AA91C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AA948 @ =sub_080A9258
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0xe]
	adds r0, r4, #0
	adds r0, #0x84
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #0x19
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA948: .4byte sub_080A9258

	thumb_func_start sub_080AA94C
sub_080AA94C: @ 0x080AA94C
	push {lr}
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080AA95C @ =sub_080A9BB4
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080AA95C: .4byte sub_080A9BB4

	thumb_func_start sub_080AA960
sub_080AA960: @ 0x080AA960
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080AA988 @ =sub_080A9CEC
	bl ObjectSetFunc
	movs r0, #0x1d
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x25
	strb r0, [r1]
	adds r4, #0x9f
	movs r0, #0x39
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA988: .4byte sub_080A9CEC

	thumb_func_start sub_080AA98C
sub_080AA98C: @ 0x080AA98C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080AA9C0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AA9C4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AA9C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080AA9D0
	.align 2, 0
_080AA9C0: .4byte ObjectMain
_080AA9C4: .4byte ObjectDestroy
_080AA9C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080AA9D0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080AAA94
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAA14
sub_080AAA14: @ 0x080AAA14
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AAA2E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080AAA36
_080AAA2E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080AAA36:
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0x1a
	bne _080AAA54
	adds r0, r1, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080AAA54
	ldr r1, _080AAA60 @ =gUnk_0203AD34
	movs r0, #0
	strb r0, [r1]
_080AAA54:
	adds r0, r2, #0
	bl ObjectDestroy
	pop {r0}
	bx r0
	.align 2, 0
_080AAA60: .4byte gUnk_0203AD34

	thumb_func_start sub_080AAA64
sub_080AAA64: @ 0x080AAA64
	push {lr}
	adds r2, r0, #0
	ldr r0, _080AAA88 @ =gUnk_0203AD34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AAA7A
	ldr r0, _080AAA8C @ =gUnk_0203AD2C
	ldrh r1, [r0]
	ldr r0, _080AAA90 @ =0x0000270E
	cmp r1, r0
	bhi _080AAA84
_080AAA7A:
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
_080AAA84:
	pop {r0}
	bx r0
	.align 2, 0
_080AAA88: .4byte gUnk_0203AD34
_080AAA8C: .4byte gUnk_0203AD2C
_080AAA90: .4byte 0x0000270E

	thumb_func_start sub_080AAA94
sub_080AAA94: @ 0x080AAA94
	ldr r1, _080AAA9C @ =sub_080AA6F8
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080AAA9C: .4byte sub_080AA6F8
