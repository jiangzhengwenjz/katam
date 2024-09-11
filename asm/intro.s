	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
	bl VramFree
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
	ldr r0, _081495A8 @ =gLanguage
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
_081495A8: .4byte gLanguage
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
	bl VramFree
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
	ldr r0, _08149C7C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08149C7C: .4byte gCurTask

	thumb_func_start sub_08149C80
sub_08149C80: @ 0x08149C80
	push {r4, r5, r6, r7, lr}
	ldr r1, _08149CD0 @ =gUnk_083871D8
	ldr r0, _08149CD4 @ =gLanguage
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
_08149CD4: .4byte gLanguage
_08149CD8: .4byte gUnk_082D7850
_08149CDC: .4byte 0x0600E000
_08149CE0: .4byte 0x06004000
