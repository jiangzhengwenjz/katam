	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_08013518
sub_08013518: @ 0x08013518
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, [r6, #0x40]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	movs r5, #1
	cmp r0, #0
	beq _0801352C
	movs r5, #0xff
_0801352C:
	adds r7, r5, #0
	ldr r0, [r2, #0x40]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	subs r0, #1
	lsls r2, r0, #0x10
	cmp r2, #0
	blt _080135A4
	ldr r4, _08013578 @ =gUnk_082D88B8
	ldr r0, [r6, #0x14]
	adds r1, r5, #0
	lsrs r2, r2, #0x10
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080135A4
	movs r2, #0xf0
	lsls r2, r2, #0x10
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	beq _08013584
	cmp r2, r0
	bhi _0801357C
	cmp r2, #0
	beq _08013584
	b _080135A4
	.align 2, 0
_08013578: .4byte gUnk_082D88B8
_0801357C:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	bne _080135A4
_08013584:
	adds r0, r6, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _08013590
	b _0801370E
_08013590:
	adds r1, r6, #0
	adds r1, #0xde
	ldr r0, _080135A0 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #2
	b _08013702
	.align 2, 0
_080135A0: .4byte 0x0000FFFF
_080135A4:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080135AE
	b _08013718
_080135AE:
	ldr r3, [r6, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	blt _080135BE
	b _08013718
_080135BE:
	ldr r2, [r6, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	lsls r5, r7, #0x18
	asrs r1, r5, #0x18
	adds r1, r1, r0
	ldr r2, [r2, #0x44]
	lsls r2, r2, #4
	ldr r4, _08013608 @ =gUnk_082D88B8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	adds r7, r5, #0
	cmp r0, #0
	beq _08013638
	movs r2, #0xf0
	lsls r2, r2, #0x10
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	beq _08013614
	cmp r2, r0
	bhi _0801360C
	cmp r2, #0
	beq _08013614
	b _08013638
	.align 2, 0
_08013608: .4byte gUnk_082D88B8
_0801360C:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	bne _08013638
_08013614:
	adds r0, r6, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0801370E
	movs r1, #0
	cmp r7, #0
	bgt _08013626
	movs r1, #1
_08013626:
	adds r0, r6, #0
	adds r0, #0xde
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0xe0
	ldr r0, _08013634 @ =0x0000FFFF
	b _08013702
	.align 2, 0
_08013634: .4byte 0x0000FFFF
_08013638:
	ldr r2, [r6, #0x40]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #0xc
	asrs r0, r7, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	adds r0, #1
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r3, [r6, #0x14]
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	bge _08013718
	ldr r4, _08013694 @ =gUnk_082D88B8
	adds r1, r5, #0
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08013718
	movs r2, #0xf0
	lsls r2, r2, #0x10
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	beq _080136E4
	cmp r2, r0
	bhi _08013698
	cmp r2, #0
	beq _080136A2
	b _08013718
	.align 2, 0
_08013694: .4byte gUnk_082D88B8
_08013698:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	beq _080136E4
	b _08013718
_080136A2:
	ldr r2, _080136D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080136D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080136D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080136E4
	adds r0, r6, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0801370E
	adds r1, r6, #0
	adds r1, #0xde
	ldr r0, _080136DC @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _080136E0 @ =sub_08017144
	b _0801370C
	.align 2, 0
_080136D0: .4byte gRngVal
_080136D4: .4byte 0x00196225
_080136D8: .4byte 0x3C6EF35F
_080136DC: .4byte 0x0000FFFF
_080136E0: .4byte sub_08017144
_080136E4:
	adds r0, r6, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0801370E
	movs r1, #0
	cmp r7, #0
	bgt _080136F6
	movs r1, #1
_080136F6:
	adds r0, r6, #0
	adds r0, #0xde
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0xe0
	movs r0, #3
_08013702:
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x1e
	str r0, [r1]
	ldr r0, _08013714 @ =sub_08017E1C
_0801370C:
	str r0, [r6, #0xc]
_0801370E:
	movs r0, #1
	b _0801371A
	.align 2, 0
_08013714: .4byte sub_08017E1C
_08013718:
	movs r0, #0
_0801371A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08013720
sub_08013720: @ 0x08013720
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x40]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08013732
	movs r1, #0xff
_08013732:
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r0
	ldr r0, [r2, #0x44]
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0
	blt _08013786
	ldr r6, [r5, #0x14]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r3, r0
	bge _08013786
	ldr r4, _080137F0 @ =gUnk_082D88B8
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08013786
	movs r2, #0xf0
	lsls r2, r2, #0x10
	ands r2, r1
	cmp r2, #0
	beq _080137D6
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	beq _080137D6
_08013786:
	ldr r1, [r5, #0x40]
	ldr r0, [r1, #0x40]
	lsls r0, r0, #4
	lsrs r6, r0, #0x10
	ldr r0, [r1, #0x44]
	asrs r0, r0, #0xc
	adds r0, #1
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r3, [r5, #0x14]
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	bge _080137FC
	ldr r4, _080137F0 @ =gUnk_082D88B8
	adds r1, r6, #0
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080137FC
	movs r2, #0xf0
	lsls r2, r2, #0x10
	ands r2, r1
	cmp r2, #0
	beq _080137D6
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bne _080137FC
_080137D6:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _080137EC
	adds r1, r5, #0
	adds r1, #0xde
	ldr r0, _080137F4 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _080137F8 @ =sub_08017144
	str r0, [r5, #0xc]
_080137EC:
	movs r0, #1
	b _080137FE
	.align 2, 0
_080137F0: .4byte gUnk_082D88B8
_080137F4: .4byte 0x0000FFFF
_080137F8: .4byte sub_08017144
_080137FC:
	movs r0, #0
_080137FE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08013804
sub_08013804: @ 0x08013804
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x10]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08013814
	b _0801391E
_08013814:
	ldr r0, [r2, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r1, #0
	ldr r0, _0801385C @ =gUnk_0203AD30
	ldrb r0, [r0]
	adds r5, r3, #0
	cmp r1, r0
	bhs _08013850
	ldr r3, _08013860 @ =gCurLevelInfo
	mov ip, r3
	movs r6, #0xcd
	lsls r6, r6, #3
	adds r3, r0, #0
_08013834:
	adds r0, r1, #0
	muls r0, r6, r0
	add r0, ip
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r4, r0
	beq _08013868
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	blo _08013834
_08013850:
	ldr r0, _08013864 @ =sub_080184DC
	str r0, [r2, #4]
	movs r0, #0xc
	orrs r0, r5
	str r0, [r2, #0x10]
	b _0801391E
	.align 2, 0
_0801385C: .4byte gUnk_0203AD30
_08013860: .4byte gCurLevelInfo
_08013864: .4byte sub_080184DC
_08013868:
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	bne _0801391E
	adds r0, r2, #0
	adds r0, #0xb8
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xb4
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #5
	beq _080138F8
	cmp r1, #5
	bgt _080138A6
	cmp r1, #2
	beq _080138E0
	cmp r1, #2
	bgt _0801389C
	cmp r1, #0
	beq _080138C8
	cmp r1, #1
	beq _080138D8
	b _0801391E
_0801389C:
	cmp r1, #3
	beq _080138E8
	cmp r1, #4
	beq _080138F0
	b _0801391E
_080138A6:
	cmp r1, #8
	beq _08013908
	cmp r1, #8
	bgt _080138B4
	cmp r1, #6
	beq _08013900
	b _0801391E
_080138B4:
	cmp r1, #0xa
	beq _08013918
	cmp r1, #0xa
	blt _08013910
	ldr r0, _080138C4 @ =0x0000FFFF
	cmp r1, r0
	beq _080138D0
	b _0801391E
	.align 2, 0
_080138C4: .4byte 0x0000FFFF
_080138C8:
	adds r0, r2, #0
	bl sub_08018388
	b _0801391E
_080138D0:
	adds r0, r2, #0
	bl sub_08018394
	b _0801391E
_080138D8:
	adds r0, r2, #0
	bl sub_080183A0
	b _0801391E
_080138E0:
	adds r0, r2, #0
	bl sub_080183D0
	b _0801391E
_080138E8:
	adds r0, r2, #0
	bl sub_08018400
	b _0801391E
_080138F0:
	adds r0, r2, #0
	bl sub_08018428
	b _0801391E
_080138F8:
	adds r0, r2, #0
	bl sub_08018458
	b _0801391E
_08013900:
	adds r0, r2, #0
	bl sub_08018488
	b _0801391E
_08013908:
	adds r0, r2, #0
	bl sub_080184A4
	b _0801391E
_08013910:
	adds r0, r2, #0
	bl sub_0801399C
	b _0801391E
_08013918:
	adds r0, r2, #0
	bl sub_080184C4
_0801391E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08013924
sub_08013924: @ 0x08013924
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08013944
	adds r1, r2, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801394C
_08013944:
	ldr r0, _08013948 @ =sub_080199F0
	b _08013992
	.align 2, 0
_08013948: .4byte sub_080199F0
_0801394C:
	ldr r0, [r2, #0x40]
	ldr r3, _08013964 @ =0x00000103
	adds r1, r0, r3
	ldrb r1, [r1]
	cmp r1, #0xe
	beq _08013990
	cmp r1, #0xe
	bgt _08013968
	cmp r1, #0xb
	beq _08013990
	b _0801396C
	.align 2, 0
_08013964: .4byte 0x00000103
_08013968:
	cmp r1, #0x17
	beq _08013990
_0801396C:
	ldr r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013980
	ldr r0, _0801397C @ =sub_08019A40
	b _08013992
	.align 2, 0
_0801397C: .4byte sub_08019A40
_08013980:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08013990
	ldr r0, _0801398C @ =sub_08019A88
	b _08013992
	.align 2, 0
_0801398C: .4byte sub_08019A88
_08013990:
	ldr r0, _08013998 @ =sub_08019AD0
_08013992:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08013998: .4byte sub_08019AD0

	thumb_func_start sub_0801399C
sub_0801399C: @ 0x0801399C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, [r0, #0x14]
	ldr r1, _08013A00 @ =0x0000065E
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0
	movs r1, #0xf
	bl sub_08002888
	ldrh r6, [r0]
	movs r0, #0
	mov ip, r0
	mov r2, r8
	adds r2, #0xb8
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r1, [r2]
	mov r4, r8
	adds r4, #0xb4
	ldr r3, [r4]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrb r7, [r0]
	adds r1, #1
	strh r1, [r2]
	ldrh r1, [r2]
	ldr r3, [r4]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r5, [r0]
	adds r1, #1
	strh r1, [r2]
	ldrh r1, [r2]
	ldr r3, [r4]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r3, [r0]
	adds r1, #1
	strh r1, [r2]
	cmp r7, #5
	bhi _08013A46
	lsls r0, r7, #2
	ldr r1, _08013A04 @ =_08013A08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013A00: .4byte 0x0000065E
_08013A04: .4byte _08013A08
_08013A08: @ jump table
	.4byte _08013A20 @ case 0
	.4byte _08013A26 @ case 1
	.4byte _08013A2C @ case 2
	.4byte _08013A32 @ case 3
	.4byte _08013A38 @ case 4
	.4byte _08013A3E @ case 5
_08013A20:
	cmp r6, r5
	bne _08013A46
	b _08013A4C
_08013A26:
	cmp r6, r5
	beq _08013A46
	b _08013A4C
_08013A2C:
	cmp r6, r5
	bls _08013A46
	b _08013A4C
_08013A32:
	cmp r6, r5
	bhs _08013A46
	b _08013A4C
_08013A38:
	cmp r6, r5
	blo _08013A46
	b _08013A4C
_08013A3E:
	cmp r6, r5
	bhi _08013A46
	movs r1, #1
	mov ip, r1
_08013A46:
	mov r0, ip
	cmp r0, #0
	beq _08013A56
_08013A4C:
	mov r1, r8
	adds r1, #0xb8
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
_08013A56:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08013A60
sub_08013A60: @ 0x08013A60
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r0, [r0, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08013A7C @ =0x00000397
	cmp r1, r0
	bne _08013A84
	ldr r0, _08013A80 @ =sub_08018504
	mov r2, ip
	str r0, [r2, #4]
	b _08013AF2
	.align 2, 0
_08013A7C: .4byte 0x00000397
_08013A80: .4byte sub_08018504
_08013A84:
	movs r0, #0xff
	mov r7, ip
	strb r0, [r7, #0x1b]
	mov r1, ip
	adds r1, #0x3f
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x7c]
	mov r3, ip
	adds r3, #0x80
	ldr r0, [r1, #0x44]
	str r0, [r3]
	mov r2, ip
	adds r2, #0x84
	movs r0, #0
	strh r0, [r2]
	mov r5, ip
	adds r5, #0x86
	strh r0, [r5]
	mov r4, ip
	adds r4, #0x88
	strh r0, [r4]
	mov r6, ip
	adds r6, #0x8a
	strh r0, [r6]
	mov r1, ip
	adds r1, #0x8c
	ldr r0, [r7, #0x7c]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r3]
	str r0, [r1]
	ldrh r1, [r2]
	mov r0, ip
	adds r0, #0x94
	strh r1, [r0]
	ldrh r0, [r5]
	mov r1, ip
	adds r1, #0x96
	strh r0, [r1]
	ldrh r1, [r4]
	mov r0, ip
	adds r0, #0x98
	strh r1, [r0]
	ldrh r0, [r6]
	mov r1, ip
	adds r1, #0x9a
	strh r0, [r1]
	ldr r0, _08013AF8 @ =sub_0801852C
	str r0, [r7, #8]
	ldr r0, _08013AFC @ =nullsub_106
	str r0, [r7, #4]
_08013AF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013AF8: .4byte sub_0801852C
_08013AFC: .4byte nullsub_106

	thumb_func_start sub_08013B00
sub_08013B00: @ 0x08013B00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0xcc
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	bl sub_0800EEBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	ldrb r0, [r4, #0x1a]
	cmp r1, r0
	beq _08013B3A
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
_08013B3A:
	strb r1, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	ldr r2, [r5, #0x14]
	movs r3, #0x34
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #8
	str r0, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r4, #0x1b]
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #8
	str r0, [r1]
	ldr r0, [r4, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r4, #0x1a]
	ldr r2, [r0, #0x14]
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	ldrb r1, [r4, #0x1b]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08010144
	ldr r0, _08013B90 @ =sub_0801858C
	str r0, [r4, #8]
	ldr r0, _08013B94 @ =sub_08019B30
	str r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013B90: .4byte sub_0801858C
_08013B94: .4byte sub_08019B30

	thumb_func_start sub_08013B98
sub_08013B98: @ 0x08013B98
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x1a]
	cmp r0, #0xff
	bne _08013BAA
	ldr r0, [r5, #0x40]
	bl sub_0800EEBC
	strb r0, [r5, #0x1a]
_08013BAA:
	ldr r0, [r5, #0x14]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r4, [r1]
	ldrb r1, [r5, #0x1a]
	bl sub_08010034
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x1b]
	ldr r2, [r4, #0x14]
	movs r3, #0x34
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #8
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r5, #0x1b]
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #8
	str r0, [r1]
	ldr r0, [r5, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r5, #0x1a]
	ldr r2, [r0, #0x14]
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	ldrb r2, [r5, #0x1b]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08010144
	ldr r2, _08013C38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08013C3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08013C40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08013C44 @ =sub_0801858C
	str r0, [r5, #8]
	ldr r0, _08013C48 @ =sub_08013C4C
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013C38: .4byte gRngVal
_08013C3C: .4byte 0x00196225
_08013C40: .4byte 0x3C6EF35F
_08013C44: .4byte sub_0801858C
_08013C48: .4byte sub_08013C4C

	thumb_func_start sub_08013C4C
sub_08013C4C: @ 0x08013C4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _08013CA0 @ =gUnk_0203AD30
	ldrb r5, [r0]
	mov ip, r0
	cmp r2, r5
	bhs _08013C94
	ldr r6, _08013CA4 @ =gCurLevelInfo
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r4, #0x14]
	adds r1, r1, r3
	ldrh r0, [r0]
	ldrh r7, [r1]
	cmp r0, r7
	beq _08013C94
	mov r8, r6
	adds r6, r3, #0
	adds r3, #0x70
_08013C7A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bhs _08013C94
	adds r0, r2, #0
	muls r0, r3, r0
	add r0, r8
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r7, [r1]
	cmp r0, r7
	bne _08013C7A
_08013C94:
	mov r0, ip
	ldrb r0, [r0]
	cmp r2, r0
	bne _08013CAC
	ldr r0, _08013CA8 @ =sub_08014928
	b _08013CFC
	.align 2, 0
_08013CA0: .4byte gUnk_0203AD30
_08013CA4: .4byte gCurLevelInfo
_08013CA8: .4byte sub_08014928
_08013CAC:
	adds r0, r4, #0
	bl sub_080103BC
	cmp r0, #0
	beq _08013CC0
	ldr r0, _08013CBC @ =sub_080184E8
	b _08013CFC
	.align 2, 0
_08013CBC: .4byte sub_080184E8
_08013CC0:
	ldr r0, [r4, #0x10]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08013CFE
	adds r3, r4, #0
	adds r3, #0xcc
	ldrh r0, [r3]
	cmp r0, #0
	beq _08013CD8
	subs r0, #1
	strh r0, [r3]
_08013CD8:
	ldr r1, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08013CFE
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r4, #0x1b]
	cmp r0, r2
	beq _08013CF4
	cmp r2, #0xff
	beq _08013CF4
	ldrh r0, [r3]
	cmp r0, #0
	bne _08013CFE
_08013CF4:
	movs r0, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08013D08 @ =sub_08019B84
_08013CFC:
	str r0, [r4, #4]
_08013CFE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013D08: .4byte sub_08019B84

	thumb_func_start sub_08013D0C
sub_08013D0C: @ 0x08013D0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _08013D60 @ =gUnk_0203AD30
	ldrb r4, [r0]
	mov ip, r0
	cmp r2, r4
	bhs _08013D54
	ldr r6, _08013D64 @ =gCurLevelInfo
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r5, #0x14]
	adds r1, r1, r3
	ldrh r0, [r0]
	ldrh r7, [r1]
	cmp r0, r7
	beq _08013D54
	mov r8, r6
	adds r6, r3, #0
	adds r3, #0x70
_08013D3A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	bhs _08013D54
	adds r0, r2, #0
	muls r0, r3, r0
	add r0, r8
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r7, [r1]
	cmp r0, r7
	bne _08013D3A
_08013D54:
	mov r0, ip
	ldrb r0, [r0]
	cmp r2, r0
	bne _08013D6C
	ldr r0, _08013D68 @ =sub_08014928
	b _08013DA2
	.align 2, 0
_08013D60: .4byte gUnk_0203AD30
_08013D64: .4byte gCurLevelInfo
_08013D68: .4byte sub_08014928
_08013D6C:
	adds r0, r5, #0
	bl sub_080103BC
	cmp r0, #0
	beq _08013D80
	ldr r0, _08013D7C @ =sub_080184E8
	b _08013DA2
	.align 2, 0
_08013D7C: .4byte sub_080184E8
_08013D80:
	adds r4, r5, #0
	adds r4, #0xcc
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08013D94
	adds r0, r5, #0
	bl sub_08010144
_08013D94:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08013DA4
	ldr r0, _08013DB0 @ =sub_08013B98
_08013DA2:
	str r0, [r5, #4]
_08013DA4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013DB0: .4byte sub_08013B98

	thumb_func_start sub_08013DB4
sub_08013DB4: @ 0x08013DB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08013DEC @ =gCurLevelInfo
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	adds r0, r0, r4
	subs r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r3, _08013DF0 @ =gUnk_08D6CD0C
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	mov sl, r0
	ldr r0, _08013DF4 @ =gUnk_0203AD30
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _08013DF8
	movs r0, #0
	b _08013F26
	.align 2, 0
_08013DEC: .4byte gCurLevelInfo
_08013DF0: .4byte gUnk_08D6CD0C
_08013DF4: .4byte gUnk_0203AD30
_08013DF8:
	movs r2, #0
	ldrb r0, [r6]
	ldr r5, _08013EB8 @ =gRngVal
	cmp r2, r0
	bhs _08013EE8
	mov sb, r4
	ldr r7, _08013EBC @ =0x0000FFFF
	mov r8, r7
	mov ip, r3
	adds r4, r0, #0
	mov r3, sl
	adds r3, #0x46
_08013E10:
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	add r0, sb
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r1, r0, r7
	ldrh r0, [r1]
	cmp r0, r8
	beq _08013E34
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08013E3E
_08013E34:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blo _08013E10
_08013E3E:
	ldrb r0, [r6]
	cmp r2, r0
	bhs _08013EE8
	ldr r1, [r5]
	ldr r0, _08013EC0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08013EC4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r1, r0, #0x10
	movs r0, #3
	ldr r2, _08013EBC @ =0x0000FFFF
	ands r1, r0
	cmp r1, r2
	beq _08013F1C
	mov sb, r6
	ldrb r7, [r6]
	mov r8, r7
_08013E62:
	subs r1, #1
	mov ip, r1
_08013E66:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r8
	bhs _08013EB4
	ldr r6, _08013EBC @ =0x0000FFFF
	ldr r5, _08013EC8 @ =gUnk_08D6CD0C
	ldr r0, _08013ECC @ =gUnk_0203AD30
	ldrb r4, [r0]
	mov r3, sl
	adds r3, #0x46
_08013E7C:
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r1, _08013ED0 @ =gCurLevelInfo
	adds r0, r0, r1
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r1, r0, r7
	ldrh r0, [r1]
	cmp r0, r6
	beq _08013EA2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r1, #0x46
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08013EAC
_08013EA2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blo _08013E7C
_08013EAC:
	mov r0, sb
	ldrb r0, [r0]
	cmp r2, r0
	blo _08013ED4
_08013EB4:
	ldr r2, _08013EBC @ =0x0000FFFF
	b _08013E66
	.align 2, 0
_08013EB8: .4byte gRngVal
_08013EBC: .4byte 0x0000FFFF
_08013EC0: .4byte 0x00196225
_08013EC4: .4byte 0x3C6EF35F
_08013EC8: .4byte gUnk_08D6CD0C
_08013ECC: .4byte gUnk_0203AD30
_08013ED0: .4byte gCurLevelInfo
_08013ED4:
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r7, _08013EE4 @ =0x0000FFFF
	cmp r1, r7
	bne _08013E62
	b _08013F1C
	.align 2, 0
_08013EE4: .4byte 0x0000FFFF
_08013EE8:
	ldr r1, [r5]
	ldr r0, _08013F34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08013F38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r1, r0, #0x10
	movs r0, #3
	ldr r2, _08013F3C @ =0x0000FFFF
	ands r1, r0
	cmp r1, r2
	beq _08013F1C
	ldr r0, _08013F40 @ =gUnk_0203AD30
	ldrb r3, [r0]
	adds r4, r2, #0
_08013F06:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	blo _08013F12
	movs r2, #0
_08013F12:
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	bne _08013F06
_08013F1C:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	ldr r7, _08013F44 @ =gKirbys
	adds r0, r0, r7
_08013F26:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013F34: .4byte 0x00196225
_08013F38: .4byte 0x3C6EF35F
_08013F3C: .4byte 0x0000FFFF
_08013F40: .4byte gUnk_0203AD30
_08013F44: .4byte gKirbys

	thumb_func_start sub_08013F48
sub_08013F48: @ 0x08013F48
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	mov r5, sp
	adds r5, #1
	adds r0, r4, #0
	mov r1, sp
	adds r2, r5, #0
	bl sub_08002D40
	mov r0, sp
	ldrb r2, [r0]
	ldrb r3, [r5]
	ldr r1, _08013FA8 @ =gUnk_08D6CD0C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldr r0, [r6, #0x14]
	movs r5, #0xbf
	lsls r5, r5, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, [r6, #0x40]
	adds r1, r4, #0
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08013FB8
	adds r0, r5, #0
	adds r0, #0x46
	adds r1, r7, #0
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08013FAC
	adds r1, r6, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	b _08013FB2
	.align 2, 0
_08013FA8: .4byte gUnk_08D6CD0C
_08013FAC:
	adds r1, r6, #0
	adds r1, #0xb0
	movs r0, #0
_08013FB2:
	strh r0, [r1]
	movs r0, #1
	b _08013FBA
_08013FB8:
	movs r0, #0
_08013FBA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013FC4
sub_08013FC4: @ 0x08013FC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r1, _08014018 @ =gUnk_08D6CD0C
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801401C @ =gUnk_08D6DCAC
	adds r0, #0x46
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	movs r2, #0
	ldrh r3, [r5, #4]
	cmp r2, r3
	bhs _0801400C
	ldr r0, [r5]
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, r6
	beq _0801400C
	adds r1, r4, #0
_08013FF8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bhs _0801400C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r6
	bne _08013FF8
_0801400C:
	ldrh r3, [r5, #4]
	adds r7, r3, #0
	cmp r2, r7
	bne _08014024
	ldr r0, _08014020 @ =0x0000FFFF
	b _080140A2
	.align 2, 0
_08014018: .4byte gUnk_08D6CD0C
_0801401C: .4byte gUnk_08D6DCAC
_08014020: .4byte 0x0000FFFF
_08014024:
	ldr r2, _08014084 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08014088 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801408C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #0x1f
	ldr r2, _08014090 @ =0x0000FFFF
	ands r1, r0
	ldr r4, [r5]
	cmp r1, r2
	beq _0801409C
	adds r5, r7, #0
	mov sb, r2
	mov r8, r4
	lsls r3, r3, #0x10
	mov ip, r3
_0801404A:
	subs r7, r1, #1
_0801404C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bhs _0801407E
	lsls r0, r2, #2
	add r0, r8
	ldrh r0, [r0]
	cmp r0, r6
	beq _0801407A
	mov r0, ip
	lsrs r3, r0, #0x10
	adds r1, r4, #0
_08014066:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bhs _0801407E
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r6
	bne _08014066
_0801407A:
	cmp r2, r5
	blo _08014094
_0801407E:
	ldr r2, _08014090 @ =0x0000FFFF
	b _0801404C
	.align 2, 0
_08014084: .4byte gRngVal
_08014088: .4byte 0x00196225
_0801408C: .4byte 0x3C6EF35F
_08014090: .4byte 0x0000FFFF
_08014094:
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, sb
	bne _0801404A
_0801409C:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
_080140A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080140B0
sub_080140B0: @ 0x080140B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r1, _08014130 @ =gUnk_08D6CD0C
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r2, r0
	bhs _0801410C
	mov sb, r1
	ldr r6, [r4]
	adds r5, r0, #0
	movs r0, #0x80
	mov r8, r0
_080140E0:
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	lsls r0, r0, #2
	add r0, sb
	ldr r3, [r0]
	ldrh r0, [r1, #2]
	cmp r0, #1
	bls _08014102
	adds r0, r3, #0
	adds r0, #0x47
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801410C
_08014102:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blo _080140E0
_0801410C:
	adds r0, r4, #0
	adds r0, #0x48
	mov sl, r0
	ldrb r1, [r0]
	cmp r2, r1
	bne _0801413E
	ldr r0, [sp]
	adds r1, r7, #0
	bl sub_08013FC4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08014134 @ =0x0000FFFF
	cmp r1, r0
	beq _08014138
	adds r0, r1, #0
	b _080141D8
	.align 2, 0
_08014130: .4byte gUnk_08D6CD0C
_08014134: .4byte 0x0000FFFF
_08014138:
	ldr r1, [sp]
	ldrh r0, [r1, #0x18]
	b _080141D8
_0801413E:
	ldr r2, _080141B0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080141B4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080141B8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #0x1f
	ldr r2, _080141BC @ =0x0000FFFF
	ands r1, r0
	ldr r4, [r4]
	mov r8, r4
	cmp r1, r2
	beq _080141D0
	mov r7, sl
	ldrb r0, [r7]
	mov sb, r0
_08014162:
	subs r1, #1
	mov ip, r1
_08014166:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, sb
	bhs _080141AA
	mov r4, r8
	ldr r6, _080141C0 @ =gUnk_08D6CD0C
	mov r1, sl
	ldrb r3, [r1]
	movs r5, #0x80
_0801417A:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	cmp r0, #1
	bls _0801419A
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x47
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080141A4
_0801419A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	blo _0801417A
_080141A4:
	ldrb r0, [r7]
	cmp r2, r0
	blo _080141C4
_080141AA:
	ldr r2, _080141BC @ =0x0000FFFF
	b _08014166
	.align 2, 0
_080141B0: .4byte gRngVal
_080141B4: .4byte 0x00196225
_080141B8: .4byte 0x3C6EF35F
_080141BC: .4byte 0x0000FFFF
_080141C0: .4byte gUnk_08D6CD0C
_080141C4:
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080141E8 @ =0x0000FFFF
	cmp r1, r0
	bne _08014162
_080141D0:
	lsls r0, r2, #2
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
_080141D8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080141E8: .4byte 0x0000FFFF

	thumb_func_start sub_080141EC
sub_080141EC: @ 0x080141EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r1, _080142A0 @ =gUnk_08D6CD0C
	mov r2, sb
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r4, #0
	ldrh r1, [r5]
	ldr r0, _080142A4 @ =0x0000FFFF
	cmp r1, r0
	bne _08014254
	mov r3, r8
	adds r3, #0xa8
	ldr r0, [r3]
	cmp r0, #0
	bne _0801423A
	mov r1, r8
	ldr r0, [r1, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #0xd4
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080142A8 @ =gKirbys
	adds r0, r0, r1
	str r0, [r3]
_0801423A:
	ldr r2, _080142AC @ =gCurLevelInfo
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5]
_08014254:
	adds r0, r7, #0
	adds r0, #0x47
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080142D2
	movs r3, #0
	ldr r0, _080142B0 @ =gUnk_082DE074
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp sb, r0
	bne _08014276
	ldrh r0, [r5]
	ldrh r1, [r2, #2]
	cmp r0, r1
	beq _08014296
_08014276:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bhi _08014296
	lsls r1, r3, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp sb, r0
	bne _08014276
	adds r0, r2, #2
	adds r0, r1, r0
	ldrh r1, [r5]
	ldrh r0, [r0]
	cmp r1, r0
	bne _08014276
_08014296:
	cmp r3, #8
	bne _080142B4
	mov r2, r8
	ldrh r4, [r2, #0x18]
	b _080142DE
	.align 2, 0
_080142A0: .4byte gUnk_08D6CD0C
_080142A4: .4byte 0x0000FFFF
_080142A8: .4byte gKirbys
_080142AC: .4byte gCurLevelInfo
_080142B0: .4byte gUnk_082DE074
_080142B4:
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _080142CE
	mov r0, r8
	ldrh r4, [r0, #0x18]
	b _080142DE
_080142CE:
	ldrh r4, [r5]
	b _080142E0
_080142D2:
	movs r0, #0x87
	ands r0, r1
	cmp r0, #0
	beq _080142E0
	mov r1, r8
	ldrh r4, [r1, #0x18]
_080142DE:
	strh r4, [r5]
_080142E0:
	cmp r4, #0
	beq _080142E6
	b _08014440
_080142E6:
	movs r3, #0
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r6, [r0]
	mov sl, r0
	cmp r4, r6
	bhs _08014318
	ldr r2, [r7]
	ldr r0, [r2]
	ldrh r0, [r0]
	ldrh r1, [r5]
	cmp r0, r1
	beq _08014318
	adds r4, r6, #0
_08014302:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	bhs _08014318
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, r1
	bne _08014302
_08014318:
	mov r2, sl
	ldrb r2, [r2]
	cmp r3, r2
	beq _08014332
	ldr r0, [r7]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08014332
	ldrh r4, [r1, #6]
	b _08014440
_08014332:
	ldr r0, _080143BC @ =gUnk_08D6CD0C
	mov ip, r0
	ldrh r0, [r5]
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	adds r2, r7, #0
	adds r2, #0x46
	adds r0, #0x46
	mov sl, r0
	ldrb r0, [r2]
	mov r1, sl
	ldrb r1, [r1]
	str r1, [sp, #4]
	cmp r0, r1
	beq _08014426
	ldr r1, _080143C0 @ =gUnk_08D6DCAC
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	movs r3, #0
	ldrh r2, [r6, #4]
	adds r4, r2, #0
	cmp r3, r4
	bhs _080143CA
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r0, [r0]
	mov r7, sp
	strh r2, [r7]
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _080143A6
	str r4, [sp, #4]
	adds r4, r1, #0
	mov r2, sl
_08014384:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r7, [sp, #4]
	cmp r3, r7
	bhs _080143CA
	lsls r0, r3, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r0, [r0]
	ldrb r7, [r2]
	cmp r0, r7
	bne _08014384
_080143A6:
	mov r0, sp
	ldrh r0, [r0]
	cmp r3, r0
	bhs _080143CA
	lsls r0, r3, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r2, sb
	bne _080143C4
	ldrh r4, [r0, #2]
	b _08014440
	.align 2, 0
_080143BC: .4byte gUnk_08D6CD0C
_080143C0: .4byte gUnk_08D6DCAC
_080143C4:
	strh r2, [r5]
	mov r4, sb
	b _08014440
_080143CA:
	ldrh r4, [r6, #4]
	cmp r4, #0
	beq _0801441C
	ldr r2, _0801440C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08014410 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08014414 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r2, r0, #1
	ldr r3, _08014418 @ =0x0000FFFF
	ldr r1, [r6]
	cmp r2, #0
	beq _08014404
_080143EE:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	blo _080143FA
	movs r3, #0
_080143FA:
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080143EE
_08014404:
	lsls r0, r3, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08014420
	.align 2, 0
_0801440C: .4byte gRngVal
_08014410: .4byte 0x00196225
_08014414: .4byte 0x3C6EF35F
_08014418: .4byte 0x0000FFFF
_0801441C:
	mov r2, r8
	ldrh r0, [r2, #0x18]
_08014420:
	strh r0, [r5]
	ldrh r4, [r5]
	b _08014440
_08014426:
	mov r0, r8
	mov r1, sb
	bl sub_080140B0
	strh r0, [r5]
	mov r7, r8
	ldrh r1, [r7, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, sb
	cmp r1, r0
	bne _08014440
	adds r4, r1, #0
_08014440:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014454
sub_08014454: @ 0x08014454
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xac
	ldrh r0, [r1]
	cmp r0, #0
	beq _080144BC
	subs r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801447A
	b _0801490A
_0801447A:
	ldr r2, _080144B4 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080144B8 @ =0x0000FFFF
	cmp r1, r0
	bne _08014498
	b _0801490A
_08014498:
	ldr r0, [r5, #0x14]
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r1
	beq _080144A8
	b _0801490A
_080144A8:
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0801490A
	.align 2, 0
_080144B4: .4byte gCurLevelInfo
_080144B8: .4byte 0x0000FFFF
_080144BC:
	ldr r0, [r5, #0x14]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r1, r0, r3
	ldrh r6, [r1]
	movs r2, #0
	ldr r1, _08014534 @ =gUnk_0203AD30
	ldrb r3, [r1]
	adds r4, r0, #0
	mov sl, r1
	ldr r7, _08014538 @ =gUnk_08D6CD0C
	mov r8, r7
	cmp r2, r3
	bhs _08014500
	ldr r0, _0801453C @ =gCurLevelInfo
	mov ip, r0
	movs r7, #0xcd
	lsls r7, r7, #3
	adds r1, r3, #0
_080144E2:
	adds r0, r2, #0
	muls r0, r7, r0
	add r0, ip
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r6, r0
	bne _080144F6
	b _0801488C
_080144F6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blo _080144E2
_08014500:
	movs r6, #1
	mov sb, r6
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r6, [r0]
	lsls r0, r6, #2
	add r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x47
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08014540
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	bl sub_08013F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	b _080147AA
	.align 2, 0
_08014534: .4byte gUnk_0203AD30
_08014538: .4byte gUnk_08D6CD0C
_0801453C: .4byte gCurLevelInfo
_08014540:
	ldr r0, _080145DC @ =0xFFFFFCDD
	adds r1, r0, #0
	adds r0, r6, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _080145FE
	ldr r0, _080145E0 @ =gCurLevelInfo
	adds r0, r3, r0
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080145FE
	ldr r0, [r5, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08013DB4
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _080145E4 @ =0x00000321
	strh r1, [r5, #0x18]
	ldr r4, _080145E8 @ =gUnk_082D8D08
	ldr r0, [r5, #0x40]
	adds r2, r0, #0
	adds r2, #0x56
	ldrb r3, [r2]
	lsls r3, r3, #3
	adds r2, r3, r4
	ldr r2, [r2]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, #4
	adds r3, r3, r4
	ldr r3, [r3]
	asrs r3, r3, #0xc
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r1, #2
	add r4, r8
	ldr r4, [r4]
	mov sl, r4
	ldr r4, [r5, #0x14]
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r4, r4, r6
	ldrh r4, [r4]
	lsls r4, r4, #2
	add r4, r8
	ldr r4, [r4]
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080145F4
	adds r0, r4, #0
	adds r0, #0x46
	mov r1, sl
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080145EC
	adds r1, r5, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080147F0
	.align 2, 0
_080145DC: .4byte 0xFFFFFCDD
_080145E0: .4byte gCurLevelInfo
_080145E4: .4byte 0x00000321
_080145E8: .4byte gUnk_082D8D08
_080145EC:
	adds r0, r5, #0
	adds r0, #0xb0
	strh r7, [r0]
	b _080147F0
_080145F4:
	movs r7, #0
	mov sb, r7
	b _08014878
_080145FA:
	adds r0, r1, #0
	b _08014630
_080145FE:
	adds r0, r2, #0
	adds r0, #0x47
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080146DC
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r2, [r0]
	movs r1, #0
	ldr r3, _080146CC @ =gUnk_082DE074
	mov r8, r3
_0801461A:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r2, r0
	beq _080145FA
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _0801461A
	ldr r0, _080146D0 @ =0x0000FFFF
_08014630:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	mov r1, sl
	ldrb r7, [r1]
	cmp r4, r7
	blo _08014640
	b _080147F0
_08014640:
	ldr r2, _080146D4 @ =gKirbys
	adds r3, r2, #0
	adds r3, #0x60
	lsls r1, r0, #2
	mov r0, r8
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r3]
	mov r8, r2
	ldrh r2, [r1]
	cmp r0, r2
	beq _0801467C
	adds r2, r7, #0
	mov ip, r8
	movs r3, #0xd4
	lsls r3, r3, #1
_08014660:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r2
	blo _0801466C
	b _080147F0
_0801466C:
	adds r0, r4, #0
	muls r0, r3, r0
	add r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r1]
	cmp r0, r7
	bne _08014660
_0801467C:
	mov r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blo _08014686
	b _080147F0
_08014686:
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r2, r4, #0
	muls r2, r0, r2
	add r2, r8
	str r2, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r3, _080146D8 @ =gCurLevelInfo
	adds r2, #0x56
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r5, #0
	adds r2, #0xae
	strh r0, [r2]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080141EC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _080147CC
	.align 2, 0
_080146CC: .4byte gUnk_082DE074
_080146D0: .4byte 0x0000FFFF
_080146D4: .4byte gKirbys
_080146D8: .4byte gCurLevelInfo
_080146DC:
	adds r3, r5, #0
	adds r3, #0xae
	adds r4, r3, #0
	ldrh r7, [r3]
	cmp r6, r7
	bne _0801478A
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _0801475C
	ldr r2, _08014744 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _08014748 @ =0x0000FFFF
	cmp r2, r0
	beq _0801475C
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801475C
	strh r2, [r3]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r3, #0
	bl sub_080141EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r6, r1
	beq _080147D6
	ldrh r0, [r5, #0x18]
	cmp r0, r1
	bne _0801474C
	adds r0, r5, #0
	bl sub_08013F48
	cmp r0, #0
	bne _080147F0
	movs r3, #0
	mov sb, r3
	b _08014878
	.align 2, 0
_08014744: .4byte gCurLevelInfo
_08014748: .4byte 0x0000FFFF
_0801474C:
	adds r0, r5, #0
	bl sub_08013F48
	cmp r0, #0
	bne _080147F0
	movs r6, #0
	mov sb, r6
	b _08014878
_0801475C:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080140B0
	strh r0, [r4]
	ldr r0, [r5, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	ldrh r7, [r4]
	cmp r0, r7
	bne _080147F0
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_08013F48
	cmp r0, #0
	bne _080147F0
	movs r0, #0
	mov sb, r0
	b _08014878
_0801478A:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r3, #0
	bl sub_080141EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r5, #0x18]
	cmp r0, r1
	bne _080147C8
	adds r0, r5, #0
	bl sub_08013F48
	cmp r0, #0
	bne _080147AC
	movs r1, #0
_080147AA:
	mov sb, r1
_080147AC:
	ldr r0, [r5, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08013DB4
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080147F0
_080147C8:
	cmp r6, r1
	beq _080147DC
_080147CC:
	adds r0, r5, #0
	bl sub_08013F48
	cmp r0, #0
	bne _080147F0
_080147D6:
	movs r2, #0
	mov sb, r2
	b _08014878
_080147DC:
	movs r3, #0
	mov sb, r3
	ldr r0, [r5, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08013DB4
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
_080147F0:
	mov r6, sb
	cmp r6, #0
	beq _08014878
	ldr r2, _08014824 @ =gUnk_08D6CD0C
	ldr r0, [r5, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _08014828 @ =0xFFFFFCDD
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #2
	bls _08014820
	adds r0, #0x47
	ldrb r1, [r0]
	movs r0, #0x83
	ands r0, r1
	cmp r0, #0
	beq _0801482C
_08014820:
	movs r1, #0xb4
	b _08014872
	.align 2, 0
_08014824: .4byte gUnk_08D6CD0C
_08014828: .4byte 0xFFFFFCDD
_0801482C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801485C
	ldr r2, _08014850 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08014854 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08014858 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	adds r1, r0, #0
	adds r1, #0x3c
	b _08014872
	.align 2, 0
_08014850: .4byte gRngVal
_08014854: .4byte 0x00196225
_08014858: .4byte 0x3C6EF35F
_0801485C:
	ldr r2, _0801487C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08014880 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _08014884 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsls r0, r0, #4
	lsrs r0, r0, #0x14
	ldr r7, _08014888 @ =0x00002328
	adds r1, r0, r7
_08014872:
	adds r0, r5, #0
	adds r0, #0xac
	strh r1, [r0]
_08014878:
	mov r0, sb
	b _0801490C
	.align 2, 0
_0801487C: .4byte gRngVal
_08014880: .4byte 0x00196225
_08014884: .4byte 0x3C6EF35F
_08014888: .4byte 0x00002328
_0801488C:
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	add r0, r8
	ldr r0, [r0]
	ldr r2, _080148B8 @ =0xFFFFFCDD
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #2
	bls _080148B2
	adds r0, #0x47
	ldrb r4, [r0]
	movs r0, #0x83
	ands r0, r4
	cmp r0, #0
	beq _080148BC
_080148B2:
	movs r1, #0xb4
	b _08014904
	.align 2, 0
_080148B8: .4byte 0xFFFFFCDD
_080148BC:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080148EC
	ldr r2, _080148E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080148E4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080148E8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	adds r1, r0, #0
	adds r1, #0x3c
	b _08014904
	.align 2, 0
_080148E0: .4byte gRngVal
_080148E4: .4byte 0x00196225
_080148E8: .4byte 0x3C6EF35F
_080148EC:
	ldr r2, _0801491C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08014920 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _08014924 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsls r0, r0, #5
	lsrs r0, r0, #0x15
	movs r7, #0xe1
	lsls r7, r7, #4
	adds r1, r0, r7
_08014904:
	adds r0, r5, #0
	adds r0, #0xac
	strh r1, [r0]
_0801490A:
	movs r0, #0
_0801490C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801491C: .4byte gRngVal
_08014920: .4byte 0x00196225
_08014924: .4byte 0x3C6EF35F

	thumb_func_start sub_08014928
sub_08014928: @ 0x08014928
	push {lr}
	adds r3, r0, #0
	ldr r2, _0801495C @ =gUnk_08D6CD0C
	ldr r0, [r3, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _08014960 @ =0xFFFFFCDD
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #2
	bls _08014956
	adds r0, #0x47
	ldrb r1, [r0]
	movs r0, #0x83
	ands r0, r1
	cmp r0, #0
	beq _08014964
_08014956:
	movs r1, #0xb4
	b _080149AC
	.align 2, 0
_0801495C: .4byte gUnk_08D6CD0C
_08014960: .4byte 0xFFFFFCDD
_08014964:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014994
	ldr r2, _08014988 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801498C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08014990 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	adds r1, r0, #0
	adds r1, #0x3c
	b _080149AC
	.align 2, 0
_08014988: .4byte gRngVal
_0801498C: .4byte 0x00196225
_08014990: .4byte 0x3C6EF35F
_08014994:
	ldr r2, _080149BC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080149C0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080149C4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #5
	lsrs r0, r0, #0x15
	movs r2, #0xe1
	lsls r2, r2, #4
	adds r1, r0, r2
_080149AC:
	adds r0, r3, #0
	adds r0, #0xac
	strh r1, [r0]
	ldr r0, _080149C8 @ =sub_080149CC
	str r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_080149BC: .4byte gRngVal
_080149C0: .4byte 0x00196225
_080149C4: .4byte 0x3C6EF35F
_080149C8: .4byte sub_080149CC

	thumb_func_start sub_080149CC
sub_080149CC: @ 0x080149CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x1a]
	cmp r0, #0xff
	bne _080149DE
	ldr r0, [r5, #0x40]
	bl sub_0800EEBC
	strb r0, [r5, #0x1a]
_080149DE:
	ldr r0, [r5, #0x14]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r4, [r1]
	ldrb r1, [r5, #0x1a]
	bl sub_08010034
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x1b]
	ldr r2, [r4, #0x14]
	movs r3, #0x34
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #8
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r5, #0x1b]
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #8
	str r0, [r1]
	ldr r0, [r5, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r5, #0x1a]
	ldr r2, [r0, #0x14]
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	ldrb r2, [r5, #0x1b]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08010144
	ldr r2, _08014A6C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08014A70 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08014A74 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08014A78 @ =sub_0801858C
	str r0, [r5, #8]
	ldr r0, _08014A7C @ =sub_08014A80
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014A6C: .4byte gRngVal
_08014A70: .4byte 0x00196225
_08014A74: .4byte 0x3C6EF35F
_08014A78: .4byte sub_0801858C
_08014A7C: .4byte sub_08014A80

	thumb_func_start sub_08014A80
sub_08014A80: @ 0x08014A80
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r0, _08014AC4 @ =gUnk_0203AD30
	ldrb r2, [r0]
	cmp r1, r2
	bhs _08014AB6
	ldr r7, _08014AC8 @ =gCurLevelInfo
	movs r3, #0xbf
	lsls r3, r3, #3
	ldr r0, [r4, #0x14]
	adds r0, r0, r3
	ldrh r5, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
_08014A9E:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r5
	beq _08014AD0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08014A9E
_08014AB6:
	adds r0, r4, #0
	bl sub_08014454
	cmp r0, #0
	beq _08014AD8
	ldr r0, _08014ACC @ =sub_080149CC
	b _08014B1A
	.align 2, 0
_08014AC4: .4byte gUnk_0203AD30
_08014AC8: .4byte gCurLevelInfo
_08014ACC: .4byte sub_080149CC
_08014AD0:
	ldr r0, _08014AD4 @ =sub_080184DC
	b _08014B1A
	.align 2, 0
_08014AD4: .4byte sub_080184DC
_08014AD8:
	ldr r0, [r4, #0x10]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08014B1C
	adds r3, r4, #0
	adds r3, #0xcc
	ldrh r0, [r3]
	cmp r0, #0
	beq _08014AF0
	subs r0, #1
	strh r0, [r3]
_08014AF0:
	ldr r1, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08014B1C
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r4, #0x1a]
	ldrb r2, [r2]
	cmp r0, r2
	beq _08014B12
	ldrb r0, [r4, #0x1b]
	cmp r0, #0xff
	beq _08014B12
	ldrh r0, [r3]
	cmp r0, #0
	bne _08014B1C
_08014B12:
	movs r0, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08014B24 @ =sub_08019C4C
_08014B1A:
	str r0, [r4, #4]
_08014B1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014B24: .4byte sub_08019C4C

	thumb_func_start sub_08014B28
sub_08014B28: @ 0x08014B28
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r0, _08014B6C @ =gUnk_0203AD30
	ldrb r2, [r0]
	cmp r1, r2
	bhs _08014B5E
	ldr r7, _08014B70 @ =gCurLevelInfo
	movs r3, #0xbf
	lsls r3, r3, #3
	ldr r0, [r4, #0x14]
	adds r0, r0, r3
	ldrh r5, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
_08014B46:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r5
	beq _08014B74
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08014B46
_08014B5E:
	adds r0, r4, #0
	bl sub_08014454
	cmp r0, #0
	beq _08014B7C
	b _08014B8C
	.align 2, 0
_08014B6C: .4byte gUnk_0203AD30
_08014B70: .4byte gCurLevelInfo
_08014B74:
	ldr r0, _08014B78 @ =sub_080184DC
	b _08014B8E
	.align 2, 0
_08014B78: .4byte sub_080184DC
_08014B7C:
	adds r1, r4, #0
	adds r1, #0xcc
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08014B90
_08014B8C:
	ldr r0, _08014B98 @ =sub_080149CC
_08014B8E:
	str r0, [r4, #4]
_08014B90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014B98: .4byte sub_080149CC

	thumb_func_start sub_08014B9C
sub_08014B9C: @ 0x08014B9C
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r3, #0
	adds r0, #0x9a
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xdf
	lsls r2, r2, #1
	cmp r0, r2
	bhi _08014BBA
	movs r3, #0x10
	b _08014BC8
_08014BBA:
	ldr r4, _08014BE4 @ =0xFFFFFDDF
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bhi _08014BC8
	movs r3, #0x20
_08014BC8:
	mov r0, ip
	adds r0, #0x9a
	ldrh r4, [r0]
	ldr r2, _08014BE8 @ =0xFFFFFEDF
	adds r1, r4, r2
	lsls r1, r1, #0x10
	movs r2, #0xdf
	lsls r2, r2, #0x11
	adds r5, r0, #0
	cmp r1, r2
	bhi _08014BEC
	movs r0, #0x40
	orrs r3, r0
	b _08014C02
	.align 2, 0
_08014BE4: .4byte 0xFFFFFDDF
_08014BE8: .4byte 0xFFFFFEDF
_08014BEC:
	adds r0, r4, #0
	subs r0, #0xe0
	lsls r0, r0, #0x10
	movs r1, #0x90
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08014C02
	movs r0, #0x80
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_08014C02:
	mov r0, ip
	ldr r4, [r0, #0x40]
	movs r1, #0xe0
	adds r0, r3, #0
	ands r0, r1
	adds r6, r4, #0
	cmp r0, #0x20
	bne _08014C48
	ldr r0, [r6, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08014C48
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08014C48
	ldr r1, _08014C40 @ =0xFFFFFEFF
	adds r0, r1, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08014C44
	movs r0, #0x40
	b _08014CDA
	.align 2, 0
_08014C40: .4byte 0xFFFFFEFF
_08014C44:
	movs r0, #0x80
	b _08014CDA
_08014C48:
	movs r1, #0xd0
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x10
	bne _08014C88
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08014C88
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08014C88
	ldr r2, _08014C80 @ =0xFFFFFEFF
	adds r0, r2, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08014C84
	movs r0, #0x40
	b _08014CDA
	.align 2, 0
_08014C80: .4byte 0xFFFFFEFF
_08014C84:
	movs r0, #0x80
	b _08014CDA
_08014C88:
	movs r1, #0x70
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x40
	bne _08014CB0
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014CB0
	movs r4, #0
	ldrsh r1, [r5, r4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08014CD8
	movs r0, #0x20
	b _08014CDA
_08014CB0:
	movs r1, #0xb0
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x80
	bne _08014CE0
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08014CE0
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08014CD8
	movs r0, #0x20
	b _08014CDA
_08014CD8:
	movs r0, #0x10
_08014CDA:
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_08014CE0:
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08014D0C
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014D0C
	mov r0, ip
	adds r0, #0x9e
	ldrh r0, [r0]
	movs r1, #0x20
	adds r3, r0, #0
	orrs r3, r1
	ldr r2, _08014D08 @ =0x0000FFEF
	adds r0, r2, #0
	b _08014D32
	.align 2, 0
_08014D08: .4byte 0x0000FFEF
_08014D0C:
	adds r0, r6, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08014D34
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014D34
	mov r0, ip
	adds r0, #0x9e
	ldrh r0, [r0]
	movs r1, #0x10
	adds r3, r0, #0
	orrs r3, r1
	ldr r1, _08014D5C @ =0x0000FFDF
	adds r0, r1, #0
_08014D32:
	ands r3, r0
_08014D34:
	adds r0, r6, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08014D64
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014D64
	mov r0, ip
	adds r0, #0x9e
	ldrh r1, [r0]
	movs r0, #0x80
	adds r3, r1, #0
	orrs r3, r0
	ldr r4, _08014D60 @ =0x0000FFBF
	adds r0, r4, #0
	b _08014D94
	.align 2, 0
_08014D5C: .4byte 0x0000FFDF
_08014D60: .4byte 0x0000FFBF
_08014D64:
	adds r0, r6, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08014D96
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	beq _08014D84
	mov r0, ip
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08014D96
_08014D84:
	mov r0, ip
	adds r0, #0x9e
	ldrh r1, [r0]
	movs r0, #0x40
	adds r3, r1, #0
	orrs r3, r0
	ldr r2, _08014DA0 @ =0x0000FF7F
	adds r0, r2, #0
_08014D94:
	ands r3, r0
_08014D96:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014DA0: .4byte 0x0000FF7F

	thumb_func_start sub_08014DA4
sub_08014DA4: @ 0x08014DA4
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r3, #0
	adds r0, #0x9a
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xdf
	lsls r2, r2, #1
	cmp r0, r2
	bhi _08014DC2
	movs r3, #0x10
	b _08014DD0
_08014DC2:
	ldr r4, _08014DEC @ =0xFFFFFDDF
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bhi _08014DD0
	movs r3, #0x20
_08014DD0:
	mov r0, ip
	adds r0, #0x9a
	ldrh r4, [r0]
	ldr r2, _08014DF0 @ =0xFFFFFEDF
	adds r1, r4, r2
	lsls r1, r1, #0x10
	movs r2, #0xdf
	lsls r2, r2, #0x11
	adds r5, r0, #0
	cmp r1, r2
	bhi _08014DF4
	movs r0, #0x40
	orrs r3, r0
	b _08014E0A
	.align 2, 0
_08014DEC: .4byte 0xFFFFFDDF
_08014DF0: .4byte 0xFFFFFEDF
_08014DF4:
	adds r0, r4, #0
	subs r0, #0xe0
	lsls r0, r0, #0x10
	movs r1, #0x90
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08014E0A
	movs r0, #0x80
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_08014E0A:
	mov r0, ip
	ldr r4, [r0, #0x40]
	movs r1, #0xe0
	adds r0, r3, #0
	ands r0, r1
	adds r6, r4, #0
	cmp r0, #0x20
	bne _08014E50
	ldr r0, [r6, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08014E50
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08014E50
	ldr r1, _08014E48 @ =0xFFFFFEFF
	adds r0, r1, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08014E4C
	movs r0, #0x40
	b _08014EE2
	.align 2, 0
_08014E48: .4byte 0xFFFFFEFF
_08014E4C:
	movs r0, #0x80
	b _08014EE2
_08014E50:
	movs r1, #0xd0
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x10
	bne _08014E90
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08014E90
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08014E90
	ldr r2, _08014E88 @ =0xFFFFFEFF
	adds r0, r2, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08014E8C
	movs r0, #0x40
	b _08014EE2
	.align 2, 0
_08014E88: .4byte 0xFFFFFEFF
_08014E8C:
	movs r0, #0x80
	b _08014EE2
_08014E90:
	movs r1, #0x70
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x40
	bne _08014EB8
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014EB8
	movs r4, #0
	ldrsh r1, [r5, r4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08014EE0
	movs r0, #0x20
	b _08014EE2
_08014EB8:
	movs r1, #0xb0
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x80
	bne _08014EE8
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08014EE8
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08014EE0
	movs r0, #0x20
	b _08014EE2
_08014EE0:
	movs r0, #0x10
_08014EE2:
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_08014EE8:
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08014F14
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014F14
	mov r0, ip
	adds r0, #0x9e
	ldrh r0, [r0]
	movs r1, #0x20
	adds r3, r0, #0
	orrs r3, r1
	ldr r2, _08014F10 @ =0x0000FFEF
	adds r0, r2, #0
	b _08014F3A
	.align 2, 0
_08014F10: .4byte 0x0000FFEF
_08014F14:
	adds r0, r6, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08014F3C
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014F3C
	mov r0, ip
	adds r0, #0x9e
	ldrh r0, [r0]
	movs r1, #0x10
	adds r3, r0, #0
	orrs r3, r1
	ldr r1, _08014F64 @ =0x0000FFDF
	adds r0, r1, #0
_08014F3A:
	ands r3, r0
_08014F3C:
	adds r0, r6, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08014F6C
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014F6C
	mov r0, ip
	adds r0, #0x9e
	ldrh r1, [r0]
	movs r0, #0x80
	adds r3, r1, #0
	orrs r3, r0
	ldr r4, _08014F68 @ =0x0000FFBF
	adds r0, r4, #0
	b _08014F92
	.align 2, 0
_08014F64: .4byte 0x0000FFDF
_08014F68: .4byte 0x0000FFBF
_08014F6C:
	adds r0, r6, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08014F94
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014F94
	mov r0, ip
	adds r0, #0x9e
	ldrh r1, [r0]
	movs r0, #0x40
	adds r3, r1, #0
	orrs r3, r0
	ldr r2, _08014F9C @ =0x0000FF7F
	adds r0, r2, #0
_08014F92:
	ands r3, r0
_08014F94:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014F9C: .4byte 0x0000FF7F

	thumb_func_start sub_08014FA0
sub_08014FA0: @ 0x08014FA0
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r3, #0
	adds r0, #0x9a
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xdf
	lsls r2, r2, #1
	cmp r0, r2
	bhi _08014FBE
	movs r3, #0x10
	b _08014FCC
_08014FBE:
	ldr r4, _08014FE8 @ =0xFFFFFDDF
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bhi _08014FCC
	movs r3, #0x20
_08014FCC:
	mov r0, ip
	adds r0, #0x9a
	ldrh r4, [r0]
	ldr r2, _08014FEC @ =0xFFFFFEDF
	adds r1, r4, r2
	lsls r1, r1, #0x10
	movs r2, #0xdf
	lsls r2, r2, #0x11
	adds r5, r0, #0
	cmp r1, r2
	bhi _08014FF0
	movs r0, #0x40
	orrs r3, r0
	b _08015006
	.align 2, 0
_08014FE8: .4byte 0xFFFFFDDF
_08014FEC: .4byte 0xFFFFFEDF
_08014FF0:
	adds r0, r4, #0
	subs r0, #0xe0
	lsls r0, r0, #0x10
	movs r1, #0x90
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08015006
	movs r0, #0x80
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_08015006:
	mov r0, ip
	ldr r4, [r0, #0x40]
	movs r1, #0xe0
	adds r0, r3, #0
	ands r0, r1
	adds r6, r4, #0
	cmp r0, #0x20
	bne _0801504C
	ldr r0, [r6, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0801504C
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801504C
	ldr r1, _08015044 @ =0xFFFFFEFF
	adds r0, r1, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08015048
	movs r0, #0x40
	b _080150DE
	.align 2, 0
_08015044: .4byte 0xFFFFFEFF
_08015048:
	movs r0, #0x80
	b _080150DE
_0801504C:
	movs r1, #0xd0
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x10
	bne _0801508C
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0801508C
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801508C
	ldr r2, _08015084 @ =0xFFFFFEFF
	adds r0, r2, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08015088
	movs r0, #0x40
	b _080150DE
	.align 2, 0
_08015084: .4byte 0xFFFFFEFF
_08015088:
	movs r0, #0x80
	b _080150DE
_0801508C:
	movs r1, #0x70
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x40
	bne _080150B4
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080150B4
	movs r4, #0
	ldrsh r1, [r5, r4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080150DC
	movs r0, #0x20
	b _080150DE
_080150B4:
	movs r1, #0xb0
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0x80
	bne _080150E4
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080150E4
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080150DC
	movs r0, #0x20
	b _080150DE
_080150DC:
	movs r0, #0x10
_080150DE:
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080150E4:
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08015110
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08015110
	mov r0, ip
	adds r0, #0x9e
	ldrh r0, [r0]
	movs r1, #0x20
	adds r3, r0, #0
	orrs r3, r1
	ldr r2, _0801510C @ =0x0000FFEF
	adds r0, r2, #0
	b _08015136
	.align 2, 0
_0801510C: .4byte 0x0000FFEF
_08015110:
	adds r0, r6, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08015138
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #1
	bne _08015138
	mov r0, ip
	adds r0, #0x9e
	ldrh r0, [r0]
	movs r1, #0x10
	adds r3, r0, #0
	orrs r3, r1
	ldr r1, _08015160 @ =0x0000FFDF
	adds r0, r1, #0
_08015136:
	ands r3, r0
_08015138:
	adds r0, r6, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08015168
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _08015168
	mov r0, ip
	adds r0, #0x9e
	ldrh r1, [r0]
	movs r0, #0x80
	adds r3, r1, #0
	orrs r3, r0
	ldr r4, _08015164 @ =0x0000FFBF
	adds r0, r4, #0
	b _0801518E
	.align 2, 0
_08015160: .4byte 0x0000FFDF
_08015164: .4byte 0x0000FFBF
_08015168:
	adds r0, r6, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08015190
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	bne _08015190
	mov r0, ip
	adds r0, #0x9e
	ldrh r1, [r0]
	movs r0, #0x40
	adds r3, r1, #0
	orrs r3, r0
	ldr r2, _08015198 @ =0x0000FF7F
	adds r0, r2, #0
_0801518E:
	ands r3, r0
_08015190:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08015198: .4byte 0x0000FF7F

	thumb_func_start sub_0801519C
sub_0801519C: @ 0x0801519C
	push {lr}
	mov ip, r0
	mov r2, ip
	adds r2, #0xdc
	ldrb r1, [r2]
	mov r3, ip
	adds r3, #0xdd
	movs r0, #0
	strb r1, [r3]
	strb r0, [r2]
	mov r1, ip
	ldr r0, [r1, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080151D4 @ =0x00000397
	cmp r1, r0
	bne _080151DC
	ldr r0, _080151D8 @ =sub_08018110
	str r0, [r2, #0xc]
	b _080152A6
	.align 2, 0
_080151D4: .4byte 0x00000397
_080151D8: .4byte sub_08018110
_080151DC:
	mov r2, ip
	ldr r1, [r2, #0x40]
	ldr r2, _080151F8 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r1, #0
	cmp r0, #0xa
	beq _0801521C
	cmp r0, #0xa
	bgt _080151FC
	cmp r0, #8
	beq _08015200
	b _08015258
	.align 2, 0
_080151F8: .4byte 0x00000103
_080151FC:
	cmp r0, #0x16
	bne _08015258
_08015200:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08015258
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _080152A6
	ldr r0, _08015218 @ =sub_08019094
	b _080152A2
	.align 2, 0
_08015218: .4byte sub_08019094
_0801521C:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _0801522E
	cmp r0, #0x70
	blt _0801522E
	movs r1, #1
_0801522E:
	cmp r1, #0
	beq _08015258
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _080152A6
	mov r1, ip
	adds r1, #0xde
	ldr r0, _08015250 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08015254 @ =sub_08017B0C
	b _08015294
	.align 2, 0
_08015250: .4byte 0x0000FFFF
_08015254: .4byte sub_08017B0C
_08015258:
	ldr r1, _08015268 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0801526C
	cmp r0, #0x10
	beq _08015274
	b _08015288
	.align 2, 0
_08015268: .4byte 0x00000103
_0801526C:
	ldr r0, _08015270 @ =sub_080152B0
	b _08015294
	.align 2, 0
_08015270: .4byte sub_080152B0
_08015274:
	ldrh r1, [r2, #0x1c]
	movs r0, #0x9d
	lsls r0, r0, #1
	cmp r1, r0
	bne _08015288
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	beq _080152A0
_08015288:
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080152A0
	ldr r0, _0801529C @ =sub_080186A4
_08015294:
	mov r2, ip
	str r0, [r2, #0xc]
	b _080152A6
	.align 2, 0
_0801529C: .4byte sub_080186A4
_080152A0:
	ldr r0, _080152AC @ =sub_080152B0
_080152A2:
	mov r1, ip
	str r0, [r1, #0xc]
_080152A6:
	pop {r0}
	bx r0
	.align 2, 0
_080152AC: .4byte sub_080152B0

	thumb_func_start sub_080152B0
sub_080152B0: @ 0x080152B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080152C6
	b _080153F4
_080152C6:
	ldr r0, [r5, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r3, [r0]
	movs r1, #0
	ldr r0, _08015304 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r1, r0
	blo _080152DC
	b _080153F4
_080152DC:
	ldr r6, _08015308 @ =gCurLevelInfo
	movs r4, #0xcd
	lsls r4, r4, #3
	adds r2, r0, #0
_080152E4:
	adds r0, r1, #0
	muls r0, r4, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801530C
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _080152E4
	b _080153F4
	.align 2, 0
_08015304: .4byte gUnk_0203AD30
_08015308: .4byte gCurLevelInfo
_0801530C:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x10
	bls _080153F4
	ldr r2, [r5, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #6
	strh r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r1, sp
	ldr r3, [r5, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	ldrh r1, [r1]
	lsrs r0, r0, #4
	cmp r1, r0
	bhs _080153F4
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r0, [r0, #2]
	lsrs r1, r1, #4
	cmp r0, r1
	bhs _080153F4
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	bl sub_08002434
	ldr r1, _080153E4 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080153F4
	ldr r0, [r5, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	mov r2, sp
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r3, r0, #0
	ldr r6, _080153E8 @ =gUnk_08D6CD0C
	ldrh r1, [r3, #8]
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	mov r8, r0
	adds r0, #0x47
	ldrb r0, [r0]
	movs r7, #0x83
	ands r7, r0
	ldr r4, [r5, #0x40]
	cmp r7, #0
	bne _080153F4
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	mov ip, r3
	ldr r0, [r5, #0x14]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r6, [r0]
	adds r0, r4, #0
	mov r3, ip
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080153F4
	adds r0, r6, #0
	adds r0, #0x46
	mov r1, r8
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080153EC
	adds r1, r5, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080156EA
	.align 2, 0
_080153E4: .4byte gUnk_082D88B8
_080153E8: .4byte gUnk_08D6CD0C
_080153EC:
	adds r0, r5, #0
	adds r0, #0xb0
	strh r7, [r0]
	b _080156EA
_080153F4:
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #2
	beq _08015408
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	beq _08015412
_08015408:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08015440
_08015412:
	ldr r0, [r5, #0x40]
	ldr r6, _08015430 @ =0x00000103
	adds r1, r0, r6
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #0xe
	beq _08015440
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08015438
	ldr r0, _08015434 @ =sub_08018B18
	b _080156E8
	.align 2, 0
_08015430: .4byte 0x00000103
_08015434: .4byte sub_08018B18
_08015438:
	ldr r0, _0801543C @ =sub_0801639C
	b _080156E8
	.align 2, 0
_0801543C: .4byte sub_0801639C
_08015440:
	ldr r2, _080154B8 @ =gUnk_02021580
	ldr r1, _080154BC @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r4, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080154A4
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080154C0 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _080154C4 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldr r1, [r5, #0x14]
	adds r6, r7, #0
	adds r2, r1, r6
	ldrh r0, [r0]
	ldrh r7, [r2]
	cmp r0, r7
	beq _080154A4
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080154A4
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080154C8 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_080154A4:
	cmp r4, #0
	beq _080154D0
	adds r0, r5, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	bne _080154B4
	b _080156EA
_080154B4:
	ldr r0, _080154CC @ =sub_0801870C
	b _080156E8
	.align 2, 0
_080154B8: .4byte gUnk_02021580
_080154BC: .4byte gUnk_0203AD30
_080154C0: .4byte gKirbys
_080154C4: .4byte gCurLevelInfo
_080154C8: .4byte gRoomProps
_080154CC: .4byte sub_0801870C
_080154D0:
	adds r0, r5, #0
	adds r0, #0x98
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0x20
	bls _0801553C
	adds r0, #2
	ldrh r0, [r0]
	subs r0, #0xe0
	lsls r0, r0, #0x10
	movs r1, #0x90
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _0801553C
	ldr r1, [r5, #0x40]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x2d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #1
	bls _08015534
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0xc
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [r5, #0x14]
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r2, r0
	bhs _0801552E
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_08002434
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	cmp r0, #0x20
	beq _08015530
_0801552E:
	movs r1, #0
_08015530:
	cmp r1, #0
	beq _0801553C
_08015534:
	ldr r0, _08015538 @ =sub_08015FA0
	b _080156E8
	.align 2, 0
_08015538: .4byte sub_08015FA0
_0801553C:
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	ldr r4, [r5, #0x40]
	cmp r0, #0xff
	bne _0801556C
	ldr r1, _08015564 @ =0x00000103
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801556C
	adds r0, r5, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801555E
	b _080156EA
_0801555E:
	ldr r0, _08015568 @ =sub_080186DC
	b _080156E8
	.align 2, 0
_08015564: .4byte 0x00000103
_08015568: .4byte sub_080186DC
_0801556C:
	ldr r1, _08015624 @ =gUnk_082DDE84
	ldr r2, _08015628 @ =0x00000103
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08015588
	b _080156EA
_08015588:
	ldrh r0, [r5, #0x3c]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08015680
	ldr r0, [r5, #0x14]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r3, [r0]
	movs r1, #0
	ldr r0, _0801562C @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080155CC
	ldr r6, _08015630 @ =gCurLevelInfo
	movs r4, #0xcd
	lsls r4, r4, #3
	adds r2, r0, #0
_080155B0:
	adds r0, r1, #0
	muls r0, r4, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _08015680
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _080155B0
_080155CC:
	ldr r0, [r5, #0x40]
	ldr r2, _08015628 @ =0x00000103
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #0
	bne _0801564C
	ldr r6, _08015634 @ =gRngVal
	ldr r0, [r6]
	ldr r7, _08015638 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _0801563C @ =0x3C6EF35F
	adds r3, r0, r1
	str r3, [r6]
	lsrs r1, r3, #0x10
	ldr r0, _08015640 @ =0x000003FF
	cmp r1, r0
	bhi _08015680
	ldr r2, _08015644 @ =gUnk_082DE034
	adds r0, r3, #0
	muls r0, r7, r0
	ldr r3, _0801563C @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, r0, r2
	ldrb r2, [r0]
	ldr r0, _08015648 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08015618
	cmp r2, #0x15
	bne _08015618
	movs r2, #1
_08015618:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805BD4C
	b _08015680
	.align 2, 0
_08015624: .4byte gUnk_082DDE84
_08015628: .4byte 0x00000103
_0801562C: .4byte gUnk_0203AD30
_08015630: .4byte gCurLevelInfo
_08015634: .4byte gRngVal
_08015638: .4byte 0x00196225
_0801563C: .4byte 0x3C6EF35F
_08015640: .4byte 0x000003FF
_08015644: .4byte gUnk_082DE034
_08015648: .4byte gUnk_0203AD10
_0801564C:
	ldr r2, _08015670 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08015674 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _08015678 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bhi _08015680
	adds r0, r5, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #1
	beq _080156EA
	ldr r0, _0801567C @ =sub_080186DC
	b _080156E8
	.align 2, 0
_08015670: .4byte gRngVal
_08015674: .4byte 0x00196225
_08015678: .4byte 0x3C6EF35F
_0801567C: .4byte sub_080186DC
_08015680:
	ldr r1, _080156C4 @ =0x0000FFFF
	adds r6, r5, #0
	adds r6, #0x3f
	ldrb r4, [r6]
	cmp r4, #0xff
	beq _080156B6
	ldr r3, _080156C8 @ =gUnk_08D63C28
	ldr r2, _080156CC @ =gRoomProps
	ldr r0, [r5, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r0, #0x24]
_080156B6:
	ldrb r0, [r5, #0x1a]
	cmp r0, r4
	beq _080156D0
	cmp r4, #0xff
	beq _080156EA
	b _080156DC
	.align 2, 0
_080156C4: .4byte 0x0000FFFF
_080156C8: .4byte gUnk_08D63C28
_080156CC: .4byte gRoomProps
_080156D0:
	cmp r0, #0xff
	beq _080156EA
	mov r0, r8
	ldrh r0, [r0]
	cmp r1, r0
	bhs _080156EA
_080156DC:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #3
	beq _080156EA
	ldr r0, _080156F8 @ =sub_08018764
_080156E8:
	str r0, [r5, #0xc]
_080156EA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080156F8: .4byte sub_08018764

	thumb_func_start sub_080156FC
sub_080156FC: @ 0x080156FC
	push {r4, r5, lr}
	mov ip, r0
	mov r1, ip
	adds r1, #0xde
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08015794 @ =0xFFFF0000
	cmp r0, r1
	bne _0801578E
	ldr r2, _08015798 @ =gUnk_02021580
	ldr r1, _0801579C @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r4, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0801577A
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080157A0 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _080157A4 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r2, ip
	ldr r1, [r2, #0x14]
	movs r5, #0xbf
	lsls r5, r5, #3
	adds r2, r1, r5
	ldrh r0, [r0]
	ldrh r1, [r2]
	cmp r0, r1
	beq _0801577A
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0801577A
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080157A8 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_0801577A:
	cmp r4, #0
	beq _08015788
	mov r1, ip
	adds r1, #0x9e
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_08015788:
	ldr r0, _080157AC @ =sub_08018758
	mov r2, ip
	str r0, [r2, #0xc]
_0801578E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015794: .4byte 0xFFFF0000
_08015798: .4byte gUnk_02021580
_0801579C: .4byte gUnk_0203AD30
_080157A0: .4byte gKirbys
_080157A4: .4byte gCurLevelInfo
_080157A8: .4byte gRoomProps
_080157AC: .4byte sub_08018758

	thumb_func_start sub_080157B0
sub_080157B0: @ 0x080157B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r1, [r0, #0x40]
	ldr r0, [r1, #0x40]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r1, #0x44]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	mov r0, r8
	adds r0, #0x9a
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08015834 @ =0x000001FF
	ldr r2, _08015838 @ =0x0000FFFF
	cmp r1, r0
	bgt _080157E2
	movs r2, #1
_080157E2:
	adds r4, r2, #0
	ldr r1, [sp]
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, r8
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0801585E
	ldr r2, _0801583C @ =0xFFFFFEFF
	adds r0, r3, r2
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _0801581E
	ldr r2, _08015840 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08015844 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08015848 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0xa
	bls _0801584C
_0801581E:
	mov r0, r8
	adds r0, #0x98
	ldrh r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801584C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08015960
	.align 2, 0
_08015834: .4byte 0x000001FF
_08015838: .4byte 0x0000FFFF
_0801583C: .4byte 0xFFFFFEFF
_08015840: .4byte gRngVal
_08015844: .4byte 0x00196225
_08015848: .4byte 0x3C6EF35F
_0801584C:
	mov r0, r8
	adds r0, #0x9a
	ldrh r0, [r0]
	subs r0, #0xc0
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x12
	cmp r0, r1
	bhi _080158A8
_0801585E:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #2
	mov r0, r8
	adds r0, #0x2b
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801587E
	adds r0, r2, r1
	mov r2, r8
	adds r2, #0x26
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080158A0
_0801587E:
	ldr r2, _08015894 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08015898 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801589C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	b _08015960
	.align 2, 0
_08015894: .4byte gRngVal
_08015898: .4byte 0x00196225
_0801589C: .4byte 0x3C6EF35F
_080158A0:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080158B2
_080158A8:
	movs r0, #0
	b _08015960
_080158AC:
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	b _08015960
_080158B2:
	mov r2, r8
	ldr r1, [r2, #0x14]
	adds r0, r1, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	ldr r2, [sp, #4]
	cmp r0, r2
	bls _0801595C
	adds r0, r1, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	mov sl, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r7, #1
	ldr r0, _0801591C @ =gRngVal
	mov sb, r0
_080158DA:
	cmp sl, r4
	bls _080158FE
	mov r1, r8
	ldr r0, [r1, #0x14]
	ldr r1, [sp]
	adds r2, r4, #0
	bl sub_080024F0
	ldr r6, _08015920 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	ldr r0, [r0]
	movs r5, #0x80
	lsls r5, r5, #2
	ands r0, r5
	cmp r0, #0
	beq _08015932
_080158FE:
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _08015924 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08015928 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	cmp r0, #4
	bhi _0801592C
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	b _08015960
	.align 2, 0
_0801591C: .4byte gRngVal
_08015920: .4byte gUnk_082D88B8
_08015924: .4byte 0x00196225
_08015928: .4byte 0x3C6EF35F
_0801592C:
	movs r0, #1
	rsbs r0, r0, #0
	b _08015960
_08015932:
	mov r2, r8
	ldr r0, [r2, #0x14]
	ldr r1, [sp, #4]
	adds r2, r4, #0
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _080158AC
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r7, #0xf
	bls _080158DA
_0801595C:
	movs r0, #1
	rsbs r0, r0, #0
_08015960:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08015970
sub_08015970: @ 0x08015970
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080159A4
	ldr r0, _080159A0 @ =sub_0801519C
	b _08015A42
	.align 2, 0
_080159A0: .4byte sub_0801519C
_080159A4:
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080159B8
	ldr r0, _080159B4 @ =sub_0801519C
	b _08015A42
	.align 2, 0
_080159B4: .4byte sub_0801519C
_080159B8:
	ldr r1, _080159D0 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	bne _080159D8
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080159D8
	ldr r0, _080159D4 @ =sub_0801519C
	b _08015A42
	.align 2, 0
_080159D0: .4byte 0x00000103
_080159D4: .4byte sub_0801519C
_080159D8:
	ldr r0, [r3, #0x40]
	ldr r2, _08015A00 @ =0x00000103
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0xa
	bne _08015A08
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080159F6
	cmp r0, #0x70
	blt _080159F6
	movs r1, #1
_080159F6:
	cmp r1, #0
	beq _08015A08
	ldr r0, _08015A04 @ =sub_0801519C
	b _08015A42
	.align 2, 0
_08015A00: .4byte 0x00000103
_08015A04: .4byte sub_0801519C
_08015A08:
	ldr r0, [r3, #0x44]
	cmp r0, #0
	beq _08015A18
	ldr r0, [r0, #8]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08015A22
_08015A18:
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0x40
	bls _08015A2C
_08015A22:
	ldr r0, _08015A28 @ =sub_080187B0
	b _08015A42
	.align 2, 0
_08015A28: .4byte sub_080187B0
_08015A2C:
	ldr r0, [r2, #8]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015A40
	ldr r0, _08015A3C @ =sub_08018850
	b _08015A42
	.align 2, 0
_08015A3C: .4byte sub_08018850
_08015A40:
	ldr r0, _08015A48 @ =sub_08015A4C
_08015A42:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08015A48: .4byte sub_08015A4C

	thumb_func_start sub_08015A4C
sub_08015A4C: @ 0x08015A4C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x98
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _08015A78
	ldr r2, _08015A6C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08015A70 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08015A74 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	b _08015AAE
	.align 2, 0
_08015A6C: .4byte gRngVal
_08015A70: .4byte 0x00196225
_08015A74: .4byte 0x3C6EF35F
_08015A78:
	cmp r0, #0x3f
	bhi _08015A9C
	ldr r2, _08015A90 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08015A94 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08015A98 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	b _08015AAE
	.align 2, 0
_08015A90: .4byte gRngVal
_08015A94: .4byte 0x00196225
_08015A98: .4byte 0x3C6EF35F
_08015A9C:
	ldr r2, _08015ADC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08015AE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08015AE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
_08015AAE:
	ands r0, r1
	adds r1, r0, #4
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
	subs r0, #0x4e
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08015AE8 @ =0x000001FF
	movs r2, #0x20
	cmp r1, r0
	bgt _08015AC8
	movs r2, #0x10
_08015AC8:
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	subs r0, #0x4c
	strh r2, [r0]
	ldr r0, _08015AEC @ =sub_08015AF0
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08015ADC: .4byte gRngVal
_08015AE0: .4byte 0x00196225
_08015AE4: .4byte 0x3C6EF35F
_08015AE8: .4byte 0x000001FF
_08015AEC: .4byte sub_08015AF0

	thumb_func_start sub_08015AF0
sub_08015AF0: @ 0x08015AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08015B0C
	b _08015E70
_08015B0C:
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08015B18
	b _08015E70
_08015B18:
	ldr r1, _08015BCC @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	bne _08015B2E
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08015B2E
	b _08015E70
_08015B2E:
	ldr r0, [r4, #0x40]
	ldr r2, _08015BCC @ =0x00000103
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _08015B52
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _08015B4C
	cmp r0, #0x70
	blt _08015B4C
	movs r1, #1
_08015B4C:
	cmp r1, #0
	beq _08015B52
	b _08015E70
_08015B52:
	ldr r2, _08015BD0 @ =gUnk_02021580
	ldr r1, _08015BD4 @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r5, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08015BB4
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08015BD8 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08015BDC @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldr r1, [r4, #0x14]
	adds r2, r1, r7
	ldrh r0, [r0]
	ldrh r1, [r2]
	cmp r0, r1
	beq _08015BB4
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08015BB4
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08015BE0 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_08015BB4:
	cmp r5, #0
	beq _08015BE8
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	bne _08015BC4
	b _08015F90
_08015BC4:
	ldr r0, _08015BE4 @ =sub_0801870C
	str r0, [r4, #0xc]
	b _08015F90
	.align 2, 0
_08015BCC: .4byte 0x00000103
_08015BD0: .4byte gUnk_02021580
_08015BD4: .4byte gUnk_0203AD30
_08015BD8: .4byte gKirbys
_08015BDC: .4byte gCurLevelInfo
_08015BE0: .4byte gRoomProps
_08015BE4: .4byte sub_0801870C
_08015BE8:
	adds r0, r4, #0
	adds r0, #0x98
	ldrh r1, [r0]
	mov sb, r0
	movs r2, #0x9a
	adds r2, r2, r4
	mov r8, r2
	cmp r1, #0x4f
	bhi _08015C3C
	subs r0, #2
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x20
	bls _08015C3C
	mov r3, r8
	movs r7, #0
	ldrsh r1, [r3, r7]
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08015C3C
	ldr r0, _08015C38 @ =0x0000029F
	cmp r1, r0
	bgt _08015C3C
	lsrs r1, r2, #0x14
	cmp r1, #0
	bne _08015C22
	movs r1, #1
_08015C22:
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #7
	bne _08015C2E
	b _08015F90
_08015C2E:
	adds r0, r4, #0
	adds r0, #0xde
	strh r1, [r0]
	b _08015D04
	.align 2, 0
_08015C38: .4byte 0x0000029F
_08015C3C:
	ldr r1, _08015D0C @ =0xFFFFFE9F
	adds r0, r1, #0
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	movs r1, #0x9f
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08015C5C
	adds r0, r4, #0
	adds r0, #0x96
	ldrh r0, [r0]
	cmp r0, #0x4f
	bls _08015C5C
	b _08015E98
_08015C5C:
	ldr r0, [r6, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015C7E
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	bne _08015C72
	b _08015E98
_08015C72:
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08015C7E
	b _08015E98
_08015C7E:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x10
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0xea
	cmp r0, #0
	beq _08015CB2
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _08015C9C
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	bne _08015CB2
_08015C9C:
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0xea
	cmp r0, #0x40
	bhi _08015CB2
	ldrh r1, [r2]
	ldr r0, _08015D10 @ =0x0000FFCF
	ands r0, r1
	strh r0, [r2]
_08015CB2:
	ldr r0, [r4, #0x40]
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08015CC8
	adds r1, r4, #0
	adds r1, #0xe8
	movs r0, #0
	strh r0, [r1]
_08015CC8:
	ldrh r0, [r2]
	adds r2, r4, #0
	adds r2, #0x9e
	strh r0, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08015D18
	adds r0, r4, #0
	bl sub_080157B0
	lsls r1, r0, #0x18
	asrs r0, r1, #0x18
	cmp r0, #3
	ble _08015CEC
	b _08015E98
_08015CEC:
	cmp r0, #0
	ble _08015D18
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #7
	bne _08015CFC
	b _08015F90
_08015CFC:
	lsrs r0, r1, #0x18
	adds r1, r4, #0
	adds r1, #0xde
	strh r0, [r1]
_08015D04:
	ldr r0, _08015D14 @ =sub_080160B8
	str r0, [r4, #0xc]
	b _08015F90
	.align 2, 0
_08015D0C: .4byte 0xFFFFFE9F
_08015D10: .4byte 0x0000FFCF
_08015D14: .4byte sub_080160B8
_08015D18:
	adds r1, r4, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08015D24
	b _08015F8C
_08015D24:
	ldr r0, [r4, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08015D30
	b _08015E54
_08015D30:
	ldr r0, [r4, #0x14]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r3, [r0]
	movs r1, #0
	ldr r0, _08015D6C @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r1, r0
	blo _08015D46
	b _08015E54
_08015D46:
	ldr r6, _08015D70 @ =gCurLevelInfo
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
_08015D4E:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _08015D74
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08015D4E
	b _08015E54
	.align 2, 0
_08015D6C: .4byte gUnk_0203AD30
_08015D70: .4byte gCurLevelInfo
_08015D74:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x10
	bls _08015E54
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #6
	strh r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r1, sp
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	ldrh r1, [r1]
	lsrs r0, r0, #4
	cmp r1, r0
	bhs _08015E54
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r0, [r0, #2]
	lsrs r1, r1, #4
	cmp r0, r1
	bhs _08015E54
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	bl sub_08002434
	ldr r1, _08015E44 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08015E54
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	mov r2, sp
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r3, r0, #0
	ldr r5, _08015E48 @ =gUnk_08D6CD0C
	ldrh r1, [r3, #8]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	mov sl, r0
	adds r0, #0x47
	ldrb r0, [r0]
	movs r6, #0x83
	ands r6, r0
	cmp r6, #0
	bne _08015E54
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	ldr r0, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r5, [r0]
	ldr r0, [r4, #0x40]
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08015E54
	adds r0, r5, #0
	adds r0, #0x46
	mov r1, sl
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08015E4C
	adds r1, r4, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	b _08015F8E
	.align 2, 0
_08015E44: .4byte gUnk_082D88B8
_08015E48: .4byte gUnk_08D6CD0C
_08015E4C:
	adds r0, r4, #0
	adds r0, #0xb0
	strh r6, [r0]
	b _08015F90
_08015E54:
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r4, #0x1b]
	cmp r0, r1
	bne _08015E7C
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0x2f
	bhi _08015E7C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _08015E7C
_08015E70:
	ldr r0, _08015E78 @ =sub_0801519C
	str r0, [r4, #0xc]
	b _08015F90
	.align 2, 0
_08015E78: .4byte sub_0801519C
_08015E7C:
	ldr r2, _08015EA0 @ =0xFFFFFE7F
	adds r0, r2, #0
	mov r3, r8
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _08015EA8
	adds r0, r4, #0
	adds r0, #0x96
	ldrh r0, [r0]
	cmp r0, #0x60
	bls _08015EA8
_08015E98:
	ldr r0, _08015EA4 @ =sub_0801639C
	str r0, [r4, #0xc]
	b _08015F90
	.align 2, 0
_08015EA0: .4byte 0xFFFFFE7F
_08015EA4: .4byte sub_0801639C
_08015EA8:
	mov r7, sb
	ldrh r0, [r7]
	cmp r0, #0x20
	bls _08015F10
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #0xe0
	lsls r0, r0, #0x10
	movs r1, #0x90
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08015F10
	ldr r1, [r4, #0x40]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x2d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015F06
	ldr r0, [r1, #0x44]
	asrs r0, r0, #0xc
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r2, r0
	bhs _08015F00
	ldr r1, [r1, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_08002434
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	cmp r0, #0x20
	beq _08015F02
_08015F00:
	movs r1, #0
_08015F02:
	cmp r1, #0
	beq _08015F10
_08015F06:
	ldr r0, _08015F0C @ =sub_08015FA0
	str r0, [r4, #0xc]
	b _08015F90
	.align 2, 0
_08015F0C: .4byte sub_08015FA0
_08015F10:
	mov r2, r8
	ldrh r0, [r2]
	subs r0, #0x3d
	lsls r0, r0, #0x10
	ldr r1, _08015F48 @ =0x03820000
	cmp r0, r1
	bls _08015F5C
	ldr r0, [r4, #0x40]
	bl sub_080035F4
	cmp r0, #0
	beq _08015F5C
	ldr r0, _08015F4C @ =sub_08018884
	str r0, [r4, #0xc]
	ldr r2, _08015F50 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08015F54 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08015F58 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r4, #0
	adds r1, #0xde
	b _08015F8E
	.align 2, 0
_08015F48: .4byte 0x03820000
_08015F4C: .4byte sub_08018884
_08015F50: .4byte gRngVal
_08015F54: .4byte 0x00196225
_08015F58: .4byte 0x3C6EF35F
_08015F5C:
	ldr r1, _08015F80 @ =gUnk_082DDE84
	ldr r0, [r4, #0x40]
	ldr r7, _08015F84 @ =0x00000103
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08015F90
	ldr r0, _08015F88 @ =sub_08015A4C
	str r0, [r4, #0xc]
	b _08015F90
	.align 2, 0
_08015F80: .4byte gUnk_082DDE84
_08015F84: .4byte 0x00000103
_08015F88: .4byte sub_08015A4C
_08015F8C:
	subs r0, #1
_08015F8E:
	strh r0, [r1]
_08015F90:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08015FA0
sub_08015FA0: @ 0x08015FA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0xdd
	movs r2, #0
	strb r0, [r3]
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r1, [r4, #0x40]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x2d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08015FE0
	ldr r0, _08015FDC @ =sub_08018930
	b _0801601E
	.align 2, 0
_08015FDC: .4byte sub_08018930
_08015FE0:
	ldr r0, [r1, #0x44]
	asrs r0, r0, #0xc
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r2, r0
	bhs _0801600E
	ldr r1, [r1, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_08002434
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	cmp r0, #0x20
	beq _08016010
_0801600E:
	movs r1, #0
_08016010:
	cmp r1, #0
	bne _0801601C
	ldr r0, _08016018 @ =sub_0801519C
	b _0801601E
	.align 2, 0
_08016018: .4byte sub_0801519C
_0801601C:
	ldr r0, _08016028 @ =sub_080188F0
_0801601E:
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016028: .4byte sub_080188F0

	thumb_func_start sub_0801602C
sub_0801602C: @ 0x0801602C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x2d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08016044
	ldr r0, _08016068 @ =sub_0801519C
	str r0, [r2, #0xc]
_08016044:
	adds r0, r2, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	cmp r0, #0
	bne _080160B0
	adds r1, #4
	ldrh r0, [r1]
	cmp r0, #3
	bls _0801606C
	ldr r0, _08016068 @ =sub_0801519C
	str r0, [r2, #0xc]
	b _08016070
	.align 2, 0
_08016068: .4byte sub_0801519C
_0801606C:
	adds r0, #1
	strh r0, [r1]
_08016070:
	adds r0, r2, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _0801609C
	adds r0, r2, #0
	adds r0, #0x9a
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0xe1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3e
	bls _08016098
	ldr r3, _080160A4 @ =0xFFFFFD1F
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3e
	bhi _0801609C
_08016098:
	ldr r0, _080160A8 @ =sub_0801519C
	str r0, [r2, #0xc]
_0801609C:
	ldr r0, _080160AC @ =sub_08018944
	str r0, [r2, #0xc]
	b _080160B4
	.align 2, 0
_080160A4: .4byte 0xFFFFFD1F
_080160A8: .4byte sub_0801519C
_080160AC: .4byte sub_08018944
_080160B0:
	subs r0, #1
	strh r0, [r1]
_080160B4:
	pop {r0}
	bx r0

	thumb_func_start sub_080160B8
sub_080160B8: @ 0x080160B8
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #7
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #0
	beq _080160EE
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x60
	ands r0, r1
	adds r1, r2, #0
	cmp r0, #0
	beq _080160F8
_080160EE:
	ldr r0, _080160F4 @ =sub_0801519C
	b _0801616E
	.align 2, 0
_080160F4: .4byte sub_0801519C
_080160F8:
	ldr r4, _0801610C @ =0x00000103
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08016130
	cmp r0, #0xa
	bgt _08016110
	cmp r0, #8
	beq _08016114
	b _0801616C
	.align 2, 0
_0801610C: .4byte 0x00000103
_08016110:
	cmp r0, #0x16
	bne _0801616C
_08016114:
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _0801616C
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08016170
	ldr r0, _0801612C @ =sub_08019094
	b _0801616E
	.align 2, 0
_0801612C: .4byte sub_08019094
_08016130:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _08016142
	cmp r0, #0x70
	blt _08016142
	movs r1, #1
_08016142:
	cmp r1, #0
	beq _0801616C
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08016170
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _08016164 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08016168 @ =sub_08017B0C
	b _0801616E
	.align 2, 0
_08016164: .4byte 0x0000FFFF
_08016168: .4byte sub_08017B0C
_0801616C:
	ldr r0, _08016178 @ =sub_080189A0
_0801616E:
	str r0, [r3, #0xc]
_08016170:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016178: .4byte sub_080189A0

	thumb_func_start sub_0801617C
sub_0801617C: @ 0x0801617C
	push {r4, lr}
	mov ip, r0
	mov r2, ip
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldrh r2, [r2]
	mov r0, ip
	adds r0, #0x9a
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _080161A0 @ =0x000001FF
	cmp r1, r0
	bgt _080161A4
	movs r0, #0x10
	b _080161A6
	.align 2, 0
_080161A0: .4byte 0x000001FF
_080161A4:
	movs r0, #0x20
_080161A6:
	adds r1, r2, #0
	orrs r1, r0
	mov r0, ip
	adds r0, #0x9e
	strh r1, [r0]
	mov r1, ip
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #0
	bne _08016272
	mov r0, ip
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #2
	beq _08016200
	cmp r0, #2
	bgt _080161D6
	cmp r0, #1
	beq _080161DC
	b _08016254
_080161D6:
	cmp r0, #3
	beq _08016224
	b _08016254
_080161DC:
	ldr r2, _080161F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080161F8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080161FC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	adds r0, #6
	b _0801626A
	.align 2, 0
_080161F4: .4byte gRngVal
_080161F8: .4byte 0x00196225
_080161FC: .4byte 0x3C6EF35F
_08016200:
	ldr r2, _08016218 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801621C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08016220 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0xc
	b _0801626A
	.align 2, 0
_08016218: .4byte gRngVal
_0801621C: .4byte 0x00196225
_08016220: .4byte 0x3C6EF35F
_08016224:
	ldr r3, _08016248 @ =gRngVal
	ldr r0, [r3]
	ldr r2, _0801624C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08016250 @ =0x3C6EF35F
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r1, r0
	movs r2, #0xf
	ands r0, r2
	adds r0, #0xf
	adds r1, r1, r0
	strh r1, [r4]
	b _0801626C
	.align 2, 0
_08016248: .4byte gRngVal
_0801624C: .4byte 0x00196225
_08016250: .4byte 0x3C6EF35F
_08016254:
	ldr r2, _08016278 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801627C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08016280 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x2c
_0801626A:
	strh r0, [r4]
_0801626C:
	ldr r0, _08016284 @ =sub_08016288
	mov r3, ip
	str r0, [r3, #0xc]
_08016272:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016278: .4byte gRngVal
_0801627C: .4byte 0x00196225
_08016280: .4byte 0x3C6EF35F
_08016284: .4byte sub_08016288

	thumb_func_start sub_08016288
sub_08016288: @ 0x08016288
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	beq _0801629E
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
_0801629E:
	adds r3, r4, #0
	adds r3, #0xea
	ldrh r0, [r3]
	cmp r0, #0
	beq _08016308
	adds r0, r4, #0
	adds r0, #0x9a
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xef
	lsls r2, r2, #1
	cmp r0, r2
	bhi _080162D8
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08016324
	b _080162FC
_080162D8:
	ldr r5, _08016304 @ =0xFFFFFDFF
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bhi _08016324
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08016324
_080162FC:
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	b _08016324
	.align 2, 0
_08016304: .4byte 0xFFFFFDFF
_08016308:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801631E
	movs r0, #0x20
	b _08016320
_0801631E:
	movs r0, #0x10
_08016320:
	orrs r0, r3
	strh r0, [r2]
_08016324:
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0x20
	bne _0801638C
	adds r0, r2, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08016344
	ldr r0, _08016340 @ =sub_0801639C
	b _0801638E
	.align 2, 0
_08016340: .4byte sub_0801639C
_08016344:
	ldr r1, _08016380 @ =gUnk_082DDE84
	ldr r3, _08016384 @ =0x00000103
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016390
	adds r1, r4, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016390
	ldr r0, [r4, #0x40]
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0801638C
	ldr r0, _08016388 @ =sub_0801639C
	b _0801638E
	.align 2, 0
_08016380: .4byte gUnk_082DDE84
_08016384: .4byte 0x00000103
_08016388: .4byte sub_0801639C
_0801638C:
	ldr r0, _08016398 @ =sub_0801519C
_0801638E:
	str r0, [r4, #0xc]
_08016390:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016398: .4byte sub_0801519C

	thumb_func_start sub_0801639C
sub_0801639C: @ 0x0801639C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #8
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x40]
	ldr r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080163D0
	ldr r0, _080163CC @ =sub_08018A9C
	b _0801641E
	.align 2, 0
_080163CC: .4byte sub_08018A9C
_080163D0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801640C
	ldr r2, _080163F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080163F8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080163FC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08016404
	ldr r0, _08016400 @ =sub_080175D0
	b _0801641E
	.align 2, 0
_080163F4: .4byte gRngVal
_080163F8: .4byte 0x00196225
_080163FC: .4byte 0x3C6EF35F
_08016400: .4byte sub_080175D0
_08016404:
	ldr r0, _08016408 @ =sub_0801737C
	b _0801641E
	.align 2, 0
_08016408: .4byte sub_0801737C
_0801640C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0801641C
	ldr r0, _08016418 @ =sub_08018A3C
	b _0801641E
	.align 2, 0
_08016418: .4byte sub_08018A3C
_0801641C:
	ldr r0, _08016424 @ =sub_080189DC
_0801641E:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08016424: .4byte sub_080189DC

	thumb_func_start sub_08016428
sub_08016428: @ 0x08016428
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08016450
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08016458
_08016450:
	ldr r0, _08016454 @ =sub_0801519C
	b _0801689E
	.align 2, 0
_08016454: .4byte sub_0801519C
_08016458:
	ldr r1, _0801646C @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08016494
	cmp r0, #0xa
	bgt _08016470
	cmp r0, #8
	beq _08016474
	b _080164D0
	.align 2, 0
_0801646C: .4byte 0x00000103
_08016470:
	cmp r0, #0x16
	bne _080164D0
_08016474:
	ldr r0, [r4, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080164D0
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0801648A
	b _080168A0
_0801648A:
	ldr r0, _08016490 @ =sub_08019094
	b _0801689E
	.align 2, 0
_08016490: .4byte sub_08019094
_08016494:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080164A6
	cmp r0, #0x70
	blt _080164A6
	movs r1, #1
_080164A6:
	cmp r1, #0
	beq _080164D0
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _080164B6
	b _080168A0
_080164B6:
	adds r1, r4, #0
	adds r1, #0xde
	ldr r0, _080164C8 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080164CC @ =sub_08017B0C
	b _0801689E
	.align 2, 0
_080164C8: .4byte 0x0000FFFF
_080164CC: .4byte sub_08017B0C
_080164D0:
	ldr r2, _08016548 @ =gUnk_02021580
	ldr r0, _0801654C @ =gUnk_0203AD30
	ldrb r1, [r2]
	movs r5, #0
	adds r6, r0, #0
	ldrb r3, [r6]
	cmp r1, r3
	bhs _08016532
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08016550 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08016554 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldr r1, [r4, #0x14]
	adds r2, r1, r7
	ldrh r0, [r0]
	ldrh r1, [r2]
	cmp r0, r1
	beq _08016532
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08016532
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08016558 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_08016532:
	cmp r5, #0
	beq _08016560
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	bne _08016542
	b _080168A0
_08016542:
	ldr r0, _0801655C @ =sub_0801870C
	b _0801689E
	.align 2, 0
_08016548: .4byte gUnk_02021580
_0801654C: .4byte gUnk_0203AD30
_08016550: .4byte gKirbys
_08016554: .4byte gCurLevelInfo
_08016558: .4byte gRoomProps
_0801655C: .4byte sub_0801870C
_08016560:
	adds r0, r4, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x9e
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	mov sb, r2
	mov r8, r1
	cmp r0, #0
	beq _08016582
	b _080168A0
_08016582:
	ldr r0, [r4, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801658E
	b _080166AC
_0801658E:
	ldr r0, [r4, #0x14]
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r3, [r0]
	movs r1, #0
	ldrb r0, [r6]
	cmp r1, r0
	blo _080165A2
	b _080166AC
_080165A2:
	ldr r6, _080165C8 @ =gCurLevelInfo
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
_080165AA:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _080165CC
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _080165AA
	b _080166AC
	.align 2, 0
_080165C8: .4byte gCurLevelInfo
_080165CC:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x10
	bls _080166AC
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #6
	strh r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r1, sp
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	ldrh r1, [r1]
	lsrs r0, r0, #4
	cmp r1, r0
	bhs _080166AC
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r0, [r0, #2]
	lsrs r1, r1, #4
	cmp r0, r1
	bhs _080166AC
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	bl sub_08002434
	ldr r1, _0801669C @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080166AC
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	mov r2, sp
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r3, r0, #0
	ldr r5, _080166A0 @ =gUnk_08D6CD0C
	ldrh r1, [r3, #8]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	mov sl, r0
	adds r0, #0x47
	ldrb r0, [r0]
	movs r6, #0x83
	ands r6, r0
	cmp r6, #0
	bne _080166AC
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	ldr r0, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r5, [r0]
	ldr r0, [r4, #0x40]
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080166AC
	adds r0, r5, #0
	adds r0, #0x46
	mov r1, sl
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080166A4
	adds r1, r4, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080168A0
	.align 2, 0
_0801669C: .4byte gUnk_082D88B8
_080166A0: .4byte gUnk_08D6CD0C
_080166A4:
	adds r0, r4, #0
	adds r0, #0xb0
	strh r6, [r0]
	b _080168A0
_080166AC:
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x58]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080166C0
	ldr r0, _080166BC @ =sub_0801519C
	b _0801689E
	.align 2, 0
_080166BC: .4byte sub_0801519C
_080166C0:
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801675C
	cmp r0, #0xff
	beq _0801675C
	adds r1, r4, #0
	adds r1, #0x8a
	ldr r3, _080166FC @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _0801675C
	adds r0, r4, #0
	adds r0, #0x9a
	ldrh r0, [r0]
	subs r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08016704
	ldr r0, _08016700 @ =sub_0801519C
	b _0801689E
	.align 2, 0
_080166FC: .4byte 0xFFFFFF00
_08016700: .4byte sub_0801519C
_08016704:
	ldr r0, [r4, #0x14]
	ldr r1, [r2, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r2, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080024F0
	ldr r1, _08016730 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _08016738
	ldr r0, _08016734 @ =sub_0801519C
	b _0801689E
	.align 2, 0
_08016730: .4byte gUnk_082D88B8
_08016734: .4byte sub_0801519C
_08016738:
	ldrb r0, [r4, #0x1a]
	ldrb r6, [r4, #0x1b]
	cmp r0, r6
	bne _0801675C
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0x3f
	bhi _0801675C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _0801675C
	ldr r0, _08016758 @ =sub_0801519C
	b _0801689E
	.align 2, 0
_08016758: .4byte sub_0801519C
_0801675C:
	ldr r2, _080167D4 @ =gUnk_02021580
	ldr r1, _080167D8 @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r5, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080167C0
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080167DC @ =gKirbys
	adds r3, r1, r0
	ldr r2, _080167E0 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldr r1, [r4, #0x14]
	adds r6, r7, #0
	adds r2, r1, r6
	ldrh r0, [r0]
	ldrh r7, [r2]
	cmp r0, r7
	beq _080167C0
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080167C0
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080167E4 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_080167C0:
	cmp r5, #0
	beq _080167EC
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	beq _080168A0
	ldr r0, _080167E8 @ =sub_0801870C
	b _0801689E
	.align 2, 0
_080167D4: .4byte gUnk_02021580
_080167D8: .4byte gUnk_0203AD30
_080167DC: .4byte gKirbys
_080167E0: .4byte gCurLevelInfo
_080167E4: .4byte gRoomProps
_080167E8: .4byte sub_0801870C
_080167EC:
	adds r1, r4, #0
	adds r1, #0xec
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801687C
	mov r0, sb
	ldrh r2, [r0]
	ldr r0, [r4, #0x40]
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #0x40
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08016820
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08016820
	mov r1, r8
	strh r3, [r1]
	ldr r0, _0801681C @ =sub_080168BC
	b _0801689E
	.align 2, 0
_0801681C: .4byte sub_080168BC
_08016820:
	movs r3, #0x80
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08016840
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08016840
	mov r2, r8
	strh r3, [r2]
	ldr r0, _0801683C @ =sub_080168BC
	b _0801689E
	.align 2, 0
_0801683C: .4byte sub_080168BC
_08016840:
	movs r3, #0x20
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08016860
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016860
	mov r6, r8
	strh r3, [r6]
	ldr r0, _0801685C @ =sub_080168BC
	b _0801689E
	.align 2, 0
_0801685C: .4byte sub_080168BC
_08016860:
	movs r3, #0x10
	ands r2, r3
	cmp r2, #0
	beq _08016880
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08016880
	mov r7, r8
	strh r3, [r7]
	ldr r0, _08016878 @ =sub_080168BC
	b _0801689E
	.align 2, 0
_08016878: .4byte sub_080168BC
_0801687C:
	subs r0, #1
	strh r0, [r1]
_08016880:
	ldr r1, _080168B0 @ =gUnk_082DDE84
	ldr r0, [r4, #0x40]
	ldr r2, _080168B4 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080168A0
	ldr r0, _080168B8 @ =sub_08018AD0
_0801689E:
	str r0, [r4, #0xc]
_080168A0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080168B0: .4byte gUnk_082DDE84
_080168B4: .4byte 0x00000103
_080168B8: .4byte sub_08018AD0

	thumb_func_start sub_080168BC
sub_080168BC: @ 0x080168BC
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0xe8
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _080168DC
	cmp r0, #0x20
	bgt _080168D2
	cmp r0, #0x10
	beq _080168DC
	b _080168FE
_080168D2:
	cmp r0, #0x40
	beq _080168E6
	cmp r0, #0x80
	beq _080168E6
	b _080168FE
_080168DC:
	movs r1, #0
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, #0x52
	b _080168EE
_080168E6:
	movs r1, #0
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, #0x50
_080168EE:
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _080168F8
	movs r1, #1
_080168F8:
	mov r0, ip
	adds r0, #0xea
	strh r1, [r0]
_080168FE:
	ldr r5, _0801693C @ =gRngVal
	ldr r0, [r5]
	ldr r4, _08016940 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _08016944 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	mov r1, ip
	adds r1, #0xec
	strh r0, [r1]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	mov r1, ip
	adds r1, #0xee
	strh r0, [r1]
	ldr r0, _08016948 @ =sub_0801694C
	mov r1, ip
	str r0, [r1, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801693C: .4byte gRngVal
_08016940: .4byte 0x00196225
_08016944: .4byte 0x3C6EF35F
_08016948: .4byte sub_0801694C

	thumb_func_start sub_0801694C
sub_0801694C: @ 0x0801694C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r2, [r0, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801696A
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08016974
_0801696A:
	ldr r0, _08016970 @ =sub_0801519C
	b _08016BBC
	.align 2, 0
_08016970: .4byte sub_0801519C
_08016974:
	ldr r5, _08016988 @ =0x00000103
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080169B4
	cmp r0, #0xa
	bgt _0801698C
	cmp r0, #8
	beq _08016990
	b _080169F0
	.align 2, 0
_08016988: .4byte 0x00000103
_0801698C:
	cmp r0, #0x16
	bne _080169F0
_08016990:
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080169F0
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _080169A8
	b _08016C1C
_080169A8:
	ldr r0, _080169B0 @ =sub_08019094
	str r0, [r1, #0xc]
	b _08016C1C
	.align 2, 0
_080169B0: .4byte sub_08019094
_080169B4:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080169C6
	cmp r0, #0x70
	blt _080169C6
	movs r1, #1
_080169C6:
	cmp r1, #0
	beq _080169F0
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _080169D6
	b _08016C1C
_080169D6:
	mov r1, ip
	adds r1, #0xde
	ldr r0, _080169E8 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080169EC @ =sub_08017B0C
	b _08016C04
	.align 2, 0
_080169E8: .4byte 0x0000FFFF
_080169EC: .4byte sub_08017B0C
_080169F0:
	ldr r2, _08016A68 @ =gUnk_02021580
	ldr r1, _08016A6C @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r4, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08016A54
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08016A70 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08016A74 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r5, #0xbf
	lsls r5, r5, #3
	adds r0, r0, r5
	mov r2, ip
	ldr r1, [r2, #0x14]
	adds r2, r1, r5
	ldrh r0, [r0]
	ldrh r5, [r2]
	cmp r0, r5
	beq _08016A54
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08016A54
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08016A78 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_08016A54:
	cmp r4, #0
	beq _08016A80
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	bne _08016A64
	b _08016C1C
_08016A64:
	ldr r0, _08016A7C @ =sub_0801870C
	b _08016BBC
	.align 2, 0
_08016A68: .4byte gUnk_02021580
_08016A6C: .4byte gUnk_0203AD30
_08016A70: .4byte gKirbys
_08016A74: .4byte gCurLevelInfo
_08016A78: .4byte gRoomProps
_08016A7C: .4byte sub_0801870C
_08016A80:
	mov r0, ip
	adds r0, #0xe8
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x20
	beq _08016AA0
	cmp r1, #0x20
	bgt _08016A96
	cmp r1, #0x10
	beq _08016AA0
	b _08016C1C
_08016A96:
	cmp r1, #0x40
	beq _08016B50
	cmp r1, #0x80
	beq _08016B50
	b _08016C1C
_08016AA0:
	ldrh r5, [r7]
	mov r0, ip
	adds r0, #0x9e
	ldrh r3, [r0]
	mov r1, ip
	adds r1, #0xea
	ldrh r2, [r1]
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	beq _08016ABA
	movs r0, #0x80
	b _08016ABC
_08016ABA:
	movs r0, #0x40
_08016ABC:
	orrs r3, r0
	adds r0, r3, #0
	orrs r0, r5
	strh r0, [r4]
	mov r3, ip
	adds r3, #0xee
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016AD6
	b _08016C1C
_08016AD6:
	ldr r2, _08016B20 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08016B24 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _08016B28 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	strh r0, [r3]
	ldrh r1, [r7]
	cmp r1, #0x20
	bne _08016AFE
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016BBA
_08016AFE:
	cmp r1, #0x10
	bne _08016B0C
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016BBA
_08016B0C:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08016B2C
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016B36
	b _08016C1C
	.align 2, 0
_08016B20: .4byte gRngVal
_08016B24: .4byte 0x00196225
_08016B28: .4byte 0x3C6EF35F
_08016B2C:
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016C1C
_08016B36:
	mov r0, ip
	adds r0, #0xec
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08016B4C @ =0xFFFF0000
	cmp r1, r0
	beq _08016C02
	b _08016C14
	.align 2, 0
_08016B4C: .4byte 0xFFFF0000
_08016B50:
	ldrh r5, [r7]
	mov r0, ip
	adds r0, #0x9e
	ldrh r3, [r0]
	mov r1, ip
	adds r1, #0xea
	ldrh r2, [r1]
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	beq _08016B6A
	movs r0, #0x20
	b _08016B6C
_08016B6A:
	movs r0, #0x10
_08016B6C:
	orrs r3, r0
	adds r0, r3, #0
	orrs r0, r5
	strh r0, [r4]
	mov r3, ip
	adds r3, #0xee
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016C1C
	ldr r2, _08016BC4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08016BC8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _08016BCC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	strh r0, [r3]
	ldrh r1, [r7]
	cmp r1, #0x40
	bne _08016BAC
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016BBA
_08016BAC:
	cmp r1, #0x80
	bne _08016BD4
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016BD4
_08016BBA:
	ldr r0, _08016BD0 @ =sub_08018A9C
_08016BBC:
	mov r1, ip
	str r0, [r1, #0xc]
	b _08016C1C
	.align 2, 0
_08016BC4: .4byte gRngVal
_08016BC8: .4byte 0x00196225
_08016BCC: .4byte 0x3C6EF35F
_08016BD0: .4byte sub_08018A9C
_08016BD4:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08016BE6
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016BF0
	b _08016C1C
_08016BE6:
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016C1C
_08016BF0:
	mov r0, ip
	adds r0, #0xec
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08016C0C @ =0xFFFF0000
	cmp r1, r0
	bne _08016C14
_08016C02:
	ldr r0, _08016C10 @ =sub_0801519C
_08016C04:
	mov r2, ip
	str r0, [r2, #0xc]
	b _08016C1C
	.align 2, 0
_08016C0C: .4byte 0xFFFF0000
_08016C10: .4byte sub_0801519C
_08016C14:
	ldrh r0, [r6]
	movs r1, #1
	eors r0, r1
	strh r0, [r6]
_08016C1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C24
sub_08016C24: @ 0x08016C24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016C48
	b _08016ED8
_08016C48:
	ldr r0, [r4, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08016C54
	b _08016D78
_08016C54:
	ldr r0, [r4, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r3, [r0]
	movs r1, #0
	ldr r0, _08016C90 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r1, r0
	blo _08016C6A
	b _08016D78
_08016C6A:
	ldr r6, _08016C94 @ =gCurLevelInfo
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
_08016C72:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _08016C98
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08016C72
	b _08016D78
	.align 2, 0
_08016C90: .4byte gUnk_0203AD30
_08016C94: .4byte gCurLevelInfo
_08016C98:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x10
	bls _08016D78
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #6
	strh r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r1, sp
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	ldrh r1, [r1]
	lsrs r0, r0, #4
	cmp r1, r0
	bhs _08016D78
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r0, [r0, #2]
	lsrs r1, r1, #4
	cmp r0, r1
	bhs _08016D78
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	bl sub_08002434
	ldr r1, _08016D68 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08016D78
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	mov r2, sp
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r3, r0, #0
	ldr r5, _08016D6C @ =gUnk_08D6CD0C
	ldrh r1, [r3, #8]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	mov r8, r0
	adds r0, #0x47
	ldrb r0, [r0]
	movs r6, #0x83
	ands r6, r0
	cmp r6, #0
	bne _08016D78
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	ldr r0, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r5, [r0]
	ldr r0, [r4, #0x40]
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08016D78
	adds r0, r5, #0
	adds r0, #0x46
	mov r1, r8
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08016D70
	adds r1, r4, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08016ED8
	.align 2, 0
_08016D68: .4byte gUnk_082D88B8
_08016D6C: .4byte gUnk_08D6CD0C
_08016D70:
	adds r0, r4, #0
	adds r0, #0xb0
	strh r6, [r0]
	b _08016ED8
_08016D78:
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	beq _08016DC0
	adds r1, r4, #0
	adds r1, #0x8a
	ldr r2, _08016DB8 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08016DC0
	ldrb r0, [r4, #0x1a]
	ldrb r7, [r4, #0x1b]
	cmp r0, r7
	bne _08016DC0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0x3f
	bhi _08016DC0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _08016DC0
	ldr r0, _08016DBC @ =sub_0801519C
	b _08016ED6
	.align 2, 0
_08016DB8: .4byte 0xFFFFFF00
_08016DBC: .4byte sub_0801519C
_08016DC0:
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x58]
	movs r2, #2
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	bne _08016DD8
	ldr r0, _08016DD4 @ =sub_0801639C
	b _08016ED6
	.align 2, 0
_08016DD4: .4byte sub_0801639C
_08016DD8:
	ldr r2, _08016E50 @ =gUnk_02021580
	ldr r1, _08016E54 @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r5, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08016E3E
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08016E58 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08016E5C @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r2, r1, r7
	ldrh r0, [r0]
	ldrh r1, [r2]
	cmp r0, r1
	beq _08016E3E
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08016E3E
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08016E60 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_08016E3E:
	cmp r5, #0
	beq _08016E68
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	beq _08016ED8
	ldr r0, _08016E64 @ =sub_0801870C
	b _08016ED6
	.align 2, 0
_08016E50: .4byte gUnk_02021580
_08016E54: .4byte gUnk_0203AD30
_08016E58: .4byte gKirbys
_08016E5C: .4byte gCurLevelInfo
_08016E60: .4byte gRoomProps
_08016E64: .4byte sub_0801870C
_08016E68:
	adds r0, r4, #0
	adds r0, #0x9a
	ldrh r0, [r0]
	subs r0, #0x3d
	lsls r0, r0, #0x10
	ldr r1, _08016EA4 @ =0x03820000
	cmp r0, r1
	bls _08016EB8
	adds r0, r6, #0
	bl sub_080035F4
	cmp r0, #0
	beq _08016EB8
	ldr r0, _08016EA8 @ =sub_08018884
	str r0, [r4, #0xc]
	ldr r2, _08016EAC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08016EB0 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08016EB4 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r4, #0
	adds r1, #0xde
	strh r0, [r1]
	b _08016ED8
	.align 2, 0
_08016EA4: .4byte 0x03820000
_08016EA8: .4byte sub_08018884
_08016EAC: .4byte gRngVal
_08016EB0: .4byte 0x00196225
_08016EB4: .4byte 0x3C6EF35F
_08016EB8:
	ldr r1, _08016EE4 @ =gUnk_082DDE84
	ldr r0, [r4, #0x40]
	ldr r2, _08016EE8 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016ED8
	ldr r0, _08016EEC @ =sub_08018BAC
_08016ED6:
	str r0, [r4, #0xc]
_08016ED8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016EE4: .4byte gUnk_082DDE84
_08016EE8: .4byte 0x00000103
_08016EEC: .4byte sub_08018BAC

	thumb_func_start sub_08016EF0
sub_08016EF0: @ 0x08016EF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	ldr r1, _08016F0C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08016F14
	ldr r0, _08016F10 @ =sub_0801519C
	b _0801712A
	.align 2, 0
_08016F0C: .4byte 0x00000103
_08016F10: .4byte sub_0801519C
_08016F14:
	adds r0, r4, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016F30
	b _0801712C
_08016F30:
	ldr r0, [r4, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08016F3C
	b _08017060
_08016F3C:
	ldr r0, [r4, #0x14]
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r3, [r0]
	movs r1, #0
	ldr r0, _08016F78 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r1, r0
	blo _08016F52
	b _08017060
_08016F52:
	ldr r6, _08016F7C @ =gCurLevelInfo
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
_08016F5A:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _08016F80
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08016F5A
	b _08017060
	.align 2, 0
_08016F78: .4byte gUnk_0203AD30
_08016F7C: .4byte gCurLevelInfo
_08016F80:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x10
	bls _08017060
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #6
	strh r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r1, sp
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	ldrh r1, [r1]
	lsrs r0, r0, #4
	cmp r1, r0
	bhs _08017060
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r0, [r0, #2]
	lsrs r1, r1, #4
	cmp r0, r1
	bhs _08017060
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	bl sub_08002434
	ldr r1, _08017050 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08017060
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	mov r2, sp
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r3, r0, #0
	ldr r5, _08017054 @ =gUnk_08D6CD0C
	ldrh r1, [r3, #8]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	mov r8, r0
	adds r0, #0x47
	ldrb r0, [r0]
	movs r6, #0x83
	ands r6, r0
	cmp r6, #0
	bne _08017060
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	ldr r0, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r5, [r0]
	ldr r0, [r4, #0x40]
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08017060
	adds r0, r5, #0
	adds r0, #0x46
	mov r1, r8
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08017058
	adds r1, r4, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0801712C
	.align 2, 0
_08017050: .4byte gUnk_082D88B8
_08017054: .4byte gUnk_08D6CD0C
_08017058:
	adds r0, r4, #0
	adds r0, #0xb0
	strh r6, [r0]
	b _0801712C
_08017060:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801707C
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _0801707C
	ldr r0, _08017078 @ =sub_0801519C
	b _0801712A
	.align 2, 0
_08017078: .4byte sub_0801519C
_0801707C:
	ldr r2, _080170F4 @ =gUnk_02021580
	ldr r1, _080170F8 @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r5, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080170E2
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080170FC @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08017100 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r2, r1, r6
	ldrh r0, [r0]
	ldrh r7, [r2]
	cmp r0, r7
	beq _080170E2
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080170E2
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08017104 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_080170E2:
	cmp r5, #0
	beq _0801710C
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801712C
	ldr r0, _08017108 @ =sub_0801870C
	b _0801712A
	.align 2, 0
_080170F4: .4byte gUnk_02021580
_080170F8: .4byte gUnk_0203AD30
_080170FC: .4byte gKirbys
_08017100: .4byte gCurLevelInfo
_08017104: .4byte gRoomProps
_08017108: .4byte sub_0801870C
_0801710C:
	ldr r1, _08017138 @ =gUnk_082DDE84
	ldr r0, [r4, #0x40]
	ldr r2, _0801713C @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801712C
	ldr r0, _08017140 @ =sub_08018C38
_0801712A:
	str r0, [r4, #0xc]
_0801712C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017138: .4byte gUnk_082DDE84
_0801713C: .4byte 0x00000103
_08017140: .4byte sub_08018C38

	thumb_func_start sub_08017144
sub_08017144: @ 0x08017144
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xdc
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0xb
	strb r0, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r3, [r2, #0x40]
	ldr r1, [r3, #8]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08017174
	ldr r0, _08017170 @ =sub_0801519C
	b _08017266
	.align 2, 0
_08017170: .4byte sub_0801519C
_08017174:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08017198
	ldrb r0, [r4]
	cmp r0, #0xd
	beq _08017268
	adds r1, r2, #0
	adds r1, #0xde
	ldr r0, _08017190 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _08017194 @ =sub_0801737C
	b _08017266
	.align 2, 0
_08017190: .4byte 0x0000FFFF
_08017194: .4byte sub_0801737C
_08017198:
	ldr r1, _080171AC @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080171D0
	cmp r0, #0xa
	bgt _080171B0
	cmp r0, #8
	beq _080171B4
	b _0801720C
	.align 2, 0
_080171AC: .4byte 0x00000103
_080171B0:
	cmp r0, #0x16
	bne _0801720C
_080171B4:
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _0801720C
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017268
	ldr r0, _080171CC @ =sub_08019094
	b _08017266
	.align 2, 0
_080171CC: .4byte sub_08019094
_080171D0:
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080171E2
	cmp r0, #0x70
	blt _080171E2
	movs r1, #1
_080171E2:
	cmp r1, #0
	beq _0801720C
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017268
	adds r1, r2, #0
	adds r1, #0xde
	ldr r0, _08017204 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017208 @ =sub_08017B0C
	b _08017266
	.align 2, 0
_08017204: .4byte 0x0000FFFF
_08017208: .4byte sub_08017B0C
_0801720C:
	ldr r0, [r2, #0x40]
	ldr r1, _08017224 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0801722C
	cmp r0, #0xe
	bgt _08017228
	cmp r0, #0xb
	beq _0801722C
	b _08017234
	.align 2, 0
_08017224: .4byte 0x00000103
_08017228:
	cmp r0, #0x17
	bne _08017234
_0801722C:
	ldr r0, _08017230 @ =sub_0801519C
	b _08017266
	.align 2, 0
_08017230: .4byte sub_0801519C
_08017234:
	adds r1, r2, #0
	adds r1, #0xde
	ldrh r3, [r1]
	ldr r0, _08017258 @ =0x0000FFFF
	cmp r3, r0
	beq _08017264
	adds r0, r2, #0
	adds r0, #0xea
	strh r3, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017268
	adds r1, #6
	ldr r0, _0801725C @ =sub_08018C80
	str r0, [r1]
	ldr r0, _08017260 @ =sub_08018F34
	b _08017266
	.align 2, 0
_08017258: .4byte 0x0000FFFF
_0801725C: .4byte sub_08018C80
_08017260: .4byte sub_08018F34
_08017264:
	ldr r0, _08017270 @ =sub_08018C98
_08017266:
	str r0, [r2, #0xc]
_08017268:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017270: .4byte sub_08018C98

	thumb_func_start sub_08017274
sub_08017274: @ 0x08017274
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080172A4
	ldr r0, _080172A0 @ =sub_0801519C
	b _08017372
	.align 2, 0
_080172A0: .4byte sub_0801519C
_080172A4:
	ldr r1, _080172B8 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080172DC
	cmp r0, #0xa
	bgt _080172BC
	cmp r0, #8
	beq _080172C0
	b _08017318
	.align 2, 0
_080172B8: .4byte 0x00000103
_080172BC:
	cmp r0, #0x16
	bne _08017318
_080172C0:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017318
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017374
	ldr r0, _080172D8 @ =sub_08019094
	b _08017372
	.align 2, 0
_080172D8: .4byte sub_08019094
_080172DC:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080172EE
	cmp r0, #0x70
	blt _080172EE
	movs r1, #1
_080172EE:
	cmp r1, #0
	beq _08017318
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017374
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _08017310 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017314 @ =sub_08017B0C
	b _08017372
	.align 2, 0
_08017310: .4byte 0x0000FFFF
_08017314: .4byte sub_08017B0C
_08017318:
	ldr r0, [r3, #0x40]
	ldr r1, _08017330 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08017338
	cmp r0, #0xe
	bgt _08017334
	cmp r0, #0xb
	beq _08017338
	b _08017340
	.align 2, 0
_08017330: .4byte 0x00000103
_08017334:
	cmp r0, #0x13
	bne _08017340
_08017338:
	ldr r0, _0801733C @ =sub_0801519C
	b _08017372
	.align 2, 0
_0801733C: .4byte sub_0801519C
_08017340:
	adds r1, r3, #0
	adds r1, #0xde
	ldrh r2, [r1]
	ldr r0, _08017364 @ =0x0000FFFF
	cmp r2, r0
	beq _08017370
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017374
	adds r1, #6
	ldr r0, _08017368 @ =sub_08018D18
	str r0, [r1]
	ldr r0, _0801736C @ =sub_08018F34
	b _08017372
	.align 2, 0
_08017364: .4byte 0x0000FFFF
_08017368: .4byte sub_08018D18
_0801736C: .4byte sub_08018F34
_08017370:
	ldr r0, _08017378 @ =sub_08018D30
_08017372:
	str r0, [r3, #0xc]
_08017374:
	pop {r0}
	bx r0
	.align 2, 0
_08017378: .4byte sub_08018D30

	thumb_func_start sub_0801737C
sub_0801737C: @ 0x0801737C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080173AC
	ldr r0, _080173A8 @ =sub_0801519C
	b _08017452
	.align 2, 0
_080173A8: .4byte sub_0801519C
_080173AC:
	ldr r1, _080173C0 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080173E4
	cmp r0, #0xa
	bgt _080173C4
	cmp r0, #8
	beq _080173C8
	b _08017420
	.align 2, 0
_080173C0: .4byte 0x00000103
_080173C4:
	cmp r0, #0x16
	bne _08017420
_080173C8:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017420
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017454
	ldr r0, _080173E0 @ =sub_08019094
	b _08017452
	.align 2, 0
_080173E0: .4byte sub_08019094
_080173E4:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080173F6
	cmp r0, #0x70
	blt _080173F6
	movs r1, #1
_080173F6:
	cmp r1, #0
	beq _08017420
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017454
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _08017418 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801741C @ =sub_08017B0C
	b _08017452
	.align 2, 0
_08017418: .4byte 0x0000FFFF
_0801741C: .4byte sub_08017B0C
_08017420:
	adds r1, r3, #0
	adds r1, #0xde
	ldrh r2, [r1]
	ldr r0, _08017444 @ =0x0000FFFF
	cmp r2, r0
	beq _08017450
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017454
	adds r1, #6
	ldr r0, _08017448 @ =sub_08018D70
	str r0, [r1]
	ldr r0, _0801744C @ =sub_08018F34
	b _08017452
	.align 2, 0
_08017444: .4byte 0x0000FFFF
_08017448: .4byte sub_08018D70
_0801744C: .4byte sub_08018F34
_08017450:
	ldr r0, _08017458 @ =sub_08018D88
_08017452:
	str r0, [r3, #0xc]
_08017454:
	pop {r0}
	bx r0
	.align 2, 0
_08017458: .4byte sub_08018D88

	thumb_func_start sub_0801745C
sub_0801745C: @ 0x0801745C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801748C
	ldr r0, _08017488 @ =sub_0801519C
	b _0801753E
	.align 2, 0
_08017488: .4byte sub_0801519C
_0801748C:
	ldr r1, _080174A0 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080174C4
	cmp r0, #0xa
	bgt _080174A4
	cmp r0, #8
	beq _080174A8
	b _08017500
	.align 2, 0
_080174A0: .4byte 0x00000103
_080174A4:
	cmp r0, #0x16
	bne _08017500
_080174A8:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017500
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017540
	ldr r0, _080174C0 @ =sub_08019094
	b _0801753E
	.align 2, 0
_080174C0: .4byte sub_08019094
_080174C4:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080174D6
	cmp r0, #0x70
	blt _080174D6
	movs r1, #1
_080174D6:
	cmp r1, #0
	beq _08017500
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017540
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _080174F8 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080174FC @ =sub_08017B0C
	b _0801753E
	.align 2, 0
_080174F8: .4byte 0x0000FFFF
_080174FC: .4byte sub_08017B0C
_08017500:
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r1, [r2]
	ldr r0, _08017530 @ =0x0000FFFF
	cmp r1, r0
	beq _0801753C
	adds r0, r3, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	subs r0, #0x10
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017540
	adds r1, r3, #0
	adds r1, #0xe4
	ldr r0, _08017534 @ =sub_08018DC8
	str r0, [r1]
	ldr r0, _08017538 @ =sub_08018F34
	b _0801753E
	.align 2, 0
_08017530: .4byte 0x0000FFFF
_08017534: .4byte sub_08018DC8
_08017538: .4byte sub_08018F34
_0801753C:
	ldr r0, _08017544 @ =sub_08018DE8
_0801753E:
	str r0, [r3, #0xc]
_08017540:
	pop {r0}
	bx r0
	.align 2, 0
_08017544: .4byte sub_08018DE8

	thumb_func_start sub_08017548
sub_08017548: @ 0x08017548
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xea
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08017576
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08017598
_08017576:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08017598
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08017594
	movs r4, #1
_08017594:
	cmp r4, #0
	beq _080175B8
_08017598:
	ldr r2, _080175C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080175C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080175C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, _080175CC @ =sub_0801519C
	str r0, [r3, #0xc]
_080175B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080175C0: .4byte gRngVal
_080175C4: .4byte 0x00196225
_080175C8: .4byte 0x3C6EF35F
_080175CC: .4byte sub_0801519C

	thumb_func_start sub_080175D0
sub_080175D0: @ 0x080175D0
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0xa0
	ands r0, r1
	cmp r0, #0x80
	beq _08017604
	ldr r0, _08017600 @ =sub_0801519C
	b _0801767A
	.align 2, 0
_08017600: .4byte sub_0801519C
_08017604:
	ldr r1, _08017618 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0801763C
	cmp r0, #0xa
	bgt _0801761C
	cmp r0, #8
	beq _08017620
	b _08017678
	.align 2, 0
_08017618: .4byte 0x00000103
_0801761C:
	cmp r0, #0x16
	bne _08017678
_08017620:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017678
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _0801767C
	ldr r0, _08017638 @ =sub_08019094
	b _0801767A
	.align 2, 0
_08017638: .4byte sub_08019094
_0801763C:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _0801764E
	cmp r0, #0x70
	blt _0801764E
	movs r1, #1
_0801764E:
	cmp r1, #0
	beq _08017678
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _0801767C
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _08017670 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017674 @ =sub_08017B0C
	b _0801767A
	.align 2, 0
_08017670: .4byte 0x0000FFFF
_08017674: .4byte sub_08017B0C
_08017678:
	ldr r0, _08017680 @ =sub_08018E3C
_0801767A:
	str r0, [r3, #0xc]
_0801767C:
	pop {r0}
	bx r0
	.align 2, 0
_08017680: .4byte sub_08018E3C

	thumb_func_start sub_08017684
sub_08017684: @ 0x08017684
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x40]
	ldr r2, _080176B8 @ =0x00000103
	adds r1, r0, r2
	ldrb r1, [r1]
	cmp r1, #0xa
	beq _080176DC
	cmp r1, #0xa
	bgt _080176BC
	cmp r1, #8
	beq _080176C0
	b _08017714
	.align 2, 0
_080176B8: .4byte 0x00000103
_080176BC:
	cmp r1, #0x16
	bne _08017714
_080176C0:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017714
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017748
	ldr r0, _080176D8 @ =sub_08019094
	b _08017746
	.align 2, 0
_080176D8: .4byte sub_08019094
_080176DC:
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080176EC
	cmp r0, #0x70
	blt _080176EC
	movs r1, #1
_080176EC:
	cmp r1, #0
	beq _08017714
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017748
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _0801770C @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017710 @ =sub_08017B0C
	b _08017746
	.align 2, 0
_0801770C: .4byte 0x0000FFFF
_08017710: .4byte sub_08017B0C
_08017714:
	adds r1, r3, #0
	adds r1, #0xde
	ldrh r2, [r1]
	ldr r0, _08017738 @ =0x0000FFFF
	cmp r2, r0
	beq _08017744
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017748
	adds r1, #6
	ldr r0, _0801773C @ =sub_08018E7C
	str r0, [r1]
	ldr r0, _08017740 @ =sub_08018F34
	b _08017746
	.align 2, 0
_08017738: .4byte 0x0000FFFF
_0801773C: .4byte sub_08018E7C
_08017740: .4byte sub_08018F34
_08017744:
	ldr r0, _0801774C @ =sub_08018E94
_08017746:
	str r0, [r3, #0xc]
_08017748:
	pop {r0}
	bx r0
	.align 2, 0
_0801774C: .4byte sub_08018E94

	thumb_func_start sub_08017750
sub_08017750: @ 0x08017750
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #0x58]
	ands r0, r1
	cmp r0, #0
	bne _08017780
	ldr r0, _0801777C @ =sub_0801519C
	b _080177F6
	.align 2, 0
_0801777C: .4byte sub_0801519C
_08017780:
	ldr r1, _08017794 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080177B8
	cmp r0, #0xa
	bgt _08017798
	cmp r0, #8
	beq _0801779C
	b _080177F4
	.align 2, 0
_08017794: .4byte 0x00000103
_08017798:
	cmp r0, #0x16
	bne _080177F4
_0801779C:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080177F4
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _080177F8
	ldr r0, _080177B4 @ =sub_08019094
	b _080177F6
	.align 2, 0
_080177B4: .4byte sub_08019094
_080177B8:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080177CA
	cmp r0, #0x70
	blt _080177CA
	movs r1, #1
_080177CA:
	cmp r1, #0
	beq _080177F4
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _080177F8
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _080177EC @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080177F0 @ =sub_08017B0C
	b _080177F6
	.align 2, 0
_080177EC: .4byte 0x0000FFFF
_080177F0: .4byte sub_08017B0C
_080177F4:
	ldr r0, _080177FC @ =sub_08018EF4
_080177F6:
	str r0, [r3, #0xc]
_080177F8:
	pop {r0}
	bx r0
	.align 2, 0
_080177FC: .4byte sub_08018EF4

	thumb_func_start sub_08017800
sub_08017800: @ 0x08017800
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	movs r4, #0
	orrs r1, r0
	strh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017820
	movs r0, #0x20
	b _08017826
_08017820:
	cmp r0, #0
	bne _0801782A
	movs r0, #0x10
_08017826:
	orrs r1, r0
	strh r1, [r2]
_0801782A:
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _0801783E
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _0801784A
_0801783E:
	cmp r0, #3
	bne _0801784E
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_0801784A:
	orrs r0, r1
	strh r0, [r2]
_0801784E:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017862
	ldr r0, _08017868 @ =sub_0801519C
	str r0, [r3, #0xc]
_08017862:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017868: .4byte sub_0801519C

	thumb_func_start sub_0801786C
sub_0801786C: @ 0x0801786C
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	adds r0, #0xde
	ldrh r1, [r0]
	cmp r1, #1
	bne _0801788E
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	bne _080178AC
	adds r3, r2, #0
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #0x20
	b _080178A6
_0801788E:
	cmp r1, #0
	bne _080178AC
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080178AC
	adds r3, r2, #0
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #0x10
_080178A6:
	orrs r0, r1
	strh r0, [r3]
	b _080178AE
_080178AC:
	movs r4, #1
_080178AE:
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080178C0
	movs r4, #1
_080178C0:
	cmp r4, #0
	beq _080178D2
	adds r0, r2, #0
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	bne _080178D0
	ldr r0, _080178D8 @ =sub_0801519C
_080178D0:
	str r0, [r2, #0xc]
_080178D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080178D8: .4byte sub_0801519C

	thumb_func_start sub_080178DC
sub_080178DC: @ 0x080178DC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xdc
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x13
	strb r0, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017908 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #9
	beq _08017910
	ldr r0, _0801790C @ =sub_0801519C
	b _08017942
	.align 2, 0
_08017908: .4byte 0x00000103
_0801790C: .4byte sub_0801519C
_08017910:
	adds r1, r2, #0
	adds r1, #0xde
	ldrh r3, [r1]
	ldr r0, _08017934 @ =0x0000FFFF
	cmp r3, r0
	beq _08017940
	adds r0, r2, #0
	adds r0, #0xea
	strh r3, [r0]
	ldrb r0, [r4]
	cmp r0, #0x12
	beq _08017944
	adds r1, #6
	ldr r0, _08017938 @ =sub_08018F64
	str r0, [r1]
	ldr r0, _0801793C @ =sub_08018F34
	b _08017942
	.align 2, 0
_08017934: .4byte 0x0000FFFF
_08017938: .4byte sub_08018F64
_0801793C: .4byte sub_08018F34
_08017940:
	ldr r0, _0801794C @ =sub_08018F7C
_08017942:
	str r0, [r2, #0xc]
_08017944:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801794C: .4byte sub_08018F7C

	thumb_func_start sub_08017950
sub_08017950: @ 0x08017950
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	beq _08017966
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
_08017966:
	adds r0, r4, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _0801797C
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	b _080179A6
_0801797C:
	cmp r0, #0
	bne _0801798C
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	b _080179A6
_0801798C:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080179A2
	movs r0, #0x20
	b _080179A4
_080179A2:
	movs r0, #0x10
_080179A4:
	orrs r0, r3
_080179A6:
	strh r0, [r2]
	ldr r3, [r4, #0x40]
	ldr r1, _080179D8 @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #8
	bne _080179D0
	ldr r1, [r3, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080179D0
	adds r2, r4, #0
	adds r2, #0xe8
	ldrh r0, [r2]
	cmp r0, #0
	bne _08017A40
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _080179E0
_080179D0:
	ldr r0, _080179DC @ =sub_0801519C
	str r0, [r4, #0xc]
	b _08017A44
	.align 2, 0
_080179D8: .4byte 0x00000103
_080179DC: .4byte sub_0801519C
_080179E0:
	ldr r0, [r3, #0x44]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r5, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	bge _08017A44
	ldr r1, [r3, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080024F0
	ldr r1, _08017A38 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08017A44
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017A2E
	rsbs r0, r0, #0
_08017A2E:
	cmp r0, #0xf
	bgt _08017A44
	ldr r0, _08017A3C @ =sub_080192BC
	str r0, [r4, #0xc]
	b _08017A44
	.align 2, 0
_08017A38: .4byte gUnk_082D88B8
_08017A3C: .4byte sub_080192BC
_08017A40:
	subs r0, #1
	strh r0, [r2]
_08017A44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017A4C
sub_08017A4C: @ 0x08017A4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017A64
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	b _08017A8E
_08017A64:
	cmp r0, #0
	bne _08017A74
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	b _08017A8E
_08017A74:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08017A8A
	movs r0, #0x20
	b _08017A8C
_08017A8A:
	movs r0, #0x10
_08017A8C:
	orrs r0, r3
_08017A8E:
	strh r0, [r2]
	ldr r5, [r4, #0x40]
	ldr r0, [r5, #0x44]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	bge _08017AF0
	ldr r1, [r5, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080024F0
	ldr r1, _08017AE8 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08017AF0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017AE0
	rsbs r0, r0, #0
_08017AE0:
	cmp r0, #0xf
	bgt _08017AF0
	ldr r0, _08017AEC @ =sub_080192BC
	b _08017AFE
	.align 2, 0
_08017AE8: .4byte gUnk_082D88B8
_08017AEC: .4byte sub_080192BC
_08017AF0:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0x20
	beq _08017B00
	ldr r0, _08017B08 @ =sub_0801519C
_08017AFE:
	str r0, [r4, #0xc]
_08017B00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017B08: .4byte sub_0801519C

	thumb_func_start sub_08017B0C
sub_08017B0C: @ 0x08017B0C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r3, r2, #0
	adds r3, #0xdd
	strb r0, [r3]
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r2, #0x40]
	ldr r3, _08017B38 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08017B40
	ldr r0, _08017B3C @ =sub_0801519C
	b _08017B9E
	.align 2, 0
_08017B38: .4byte 0x00000103
_08017B3C: .4byte sub_0801519C
_08017B40:
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _08017B52
	cmp r0, #0x70
	blt _08017B52
	movs r1, #1
_08017B52:
	cmp r1, #0
	beq _08017B60
	ldr r0, _08017B5C @ =sub_08017C24
	b _08017B9E
	.align 2, 0
_08017B5C: .4byte sub_08017C24
_08017B60:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017B90 @ =0x0000FFFF
	cmp r1, r0
	beq _08017B9C
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	subs r0, #0x10
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017BA0
	adds r1, r2, #0
	adds r1, #0xe4
	ldr r0, _08017B94 @ =sub_08019418
	str r0, [r1]
	ldr r0, _08017B98 @ =sub_08018F34
	b _08017B9E
	.align 2, 0
_08017B90: .4byte 0x0000FFFF
_08017B94: .4byte sub_08019418
_08017B98: .4byte sub_08018F34
_08017B9C:
	ldr r0, _08017BA4 @ =sub_08019438
_08017B9E:
	str r0, [r2, #0xc]
_08017BA0:
	pop {r0}
	bx r0
	.align 2, 0
_08017BA4: .4byte sub_08019438

	thumb_func_start sub_08017BA8
sub_08017BA8: @ 0x08017BA8
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r5, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r0, [r2]
	movs r1, #2
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _08017BCE
	cmp r0, #0x70
	blt _08017BCE
	movs r1, #1
_08017BCE:
	cmp r1, #0
	beq _08017BD4
	movs r5, #1
_08017BD4:
	adds r1, r3, #0
	adds r1, #0xea
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08017BF0
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08017C00
_08017BF0:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017C02
_08017C00:
	movs r4, #1
_08017C02:
	cmp r5, #0
	beq _08017C10
	ldr r0, _08017C0C @ =sub_0801948C
	b _08017C16
	.align 2, 0
_08017C0C: .4byte sub_0801948C
_08017C10:
	cmp r4, #0
	beq _08017C18
	ldr r0, _08017C20 @ =sub_0801519C
_08017C16:
	str r0, [r3, #0xc]
_08017C18:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017C20: .4byte sub_0801519C

	thumb_func_start sub_08017C24
sub_08017C24: @ 0x08017C24
	push {lr}
	mov ip, r0
	ldr r0, [r0, #0x40]
	ldr r1, _08017C38 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08017C40
	ldr r0, _08017C3C @ =sub_0801519C
	b _08017CB6
	.align 2, 0
_08017C38: .4byte 0x00000103
_08017C3C: .4byte sub_0801519C
_08017C40:
	mov r1, ip
	adds r1, #0xe8
	movs r2, #0
	movs r0, #5
	strh r0, [r1]
	mov r3, ip
	adds r3, #0xea
	strh r2, [r3]
	ldr r2, _08017C70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08017C74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08017C78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08017C7C
	cmp r1, #1
	beq _08017C80
	b _08017C84
	.align 2, 0
_08017C70: .4byte gRngVal
_08017C74: .4byte 0x00196225
_08017C78: .4byte 0x3C6EF35F
_08017C7C:
	movs r0, #0x40
	b _08017C82
_08017C80:
	movs r0, #0x80
_08017C82:
	strh r0, [r3]
_08017C84:
	ldr r1, [r2]
	ldr r0, _08017CA0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08017CA4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	bhi _08017CA8
	ldrh r1, [r3]
	movs r0, #0x20
	b _08017CB0
	.align 2, 0
_08017CA0: .4byte 0x00196225
_08017CA4: .4byte 0x3C6EF35F
_08017CA8:
	cmp r1, #3
	bhi _08017CB4
	ldrh r1, [r3]
	movs r0, #0x10
_08017CB0:
	orrs r0, r1
	strh r0, [r3]
_08017CB4:
	ldr r0, _08017CC0 @ =sub_080194E0
_08017CB6:
	mov r1, ip
	str r0, [r1, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08017CC0: .4byte sub_080194E0

	thumb_func_start sub_08017CC4
sub_08017CC4: @ 0x08017CC4
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xdc
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x17
	strb r0, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017CF0 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08017CF8
	ldr r0, _08017CF4 @ =sub_0801519C
	b _08017D32
	.align 2, 0
_08017CF0: .4byte 0x00000103
_08017CF4: .4byte sub_0801519C
_08017CF8:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017D24 @ =0x0000FFFF
	cmp r1, r0
	beq _08017D30
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0x12
	beq _08017D34
	adds r1, r2, #0
	adds r1, #0xe4
	ldr r0, _08017D28 @ =sub_080195A4
	str r0, [r1]
	ldr r0, _08017D2C @ =sub_08018F34
	b _08017D32
	.align 2, 0
_08017D24: .4byte 0x0000FFFF
_08017D28: .4byte sub_080195A4
_08017D2C: .4byte sub_08018F34
_08017D30:
	ldr r0, _08017D3C @ =sub_080195C4
_08017D32:
	str r0, [r2, #0xc]
_08017D34:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017D3C: .4byte sub_080195C4

	thumb_func_start sub_08017D40
sub_08017D40: @ 0x08017D40
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0xdc
	ldrb r0, [r5]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x18
	strb r0, [r5]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017D6C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08017D74
	ldr r0, _08017D70 @ =sub_0801519C
	b _08017DB6
	.align 2, 0
_08017D6C: .4byte 0x00000103
_08017D70: .4byte sub_0801519C
_08017D74:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017DA8 @ =0x0000FFFF
	cmp r1, r0
	beq _08017DB4
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r4, r2, #0
	adds r4, #0xe4
	ldr r0, [r4]
	adds r1, r2, #0
	adds r1, #0xee
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0x12
	beq _08017DB8
	ldr r0, _08017DAC @ =sub_08019638
	str r0, [r4]
	ldr r0, _08017DB0 @ =sub_08018F34
	b _08017DB6
	.align 2, 0
_08017DA8: .4byte 0x0000FFFF
_08017DAC: .4byte sub_08019638
_08017DB0: .4byte sub_08018F34
_08017DB4:
	ldr r0, _08017DC0 @ =sub_08019664
_08017DB6:
	str r0, [r2, #0xc]
_08017DB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017DC0: .4byte sub_08019664

	thumb_func_start sub_08017DC4
sub_08017DC4: @ 0x08017DC4
	push {lr}
	mov ip, r0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	beq _08017DD6
	cmp r0, #3
	beq _08017DE0
	b _08017DEC
_08017DD6:
	mov r2, ip
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _08017DE8
_08017DE0:
	mov r2, ip
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_08017DE8:
	orrs r0, r1
	strh r0, [r2]
_08017DEC:
	mov r2, ip
	adds r2, #0xe8
	ldrh r0, [r2]
	cmp r0, #5
	bls _08017E02
	mov r3, ip
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3]
_08017E02:
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017E14
	ldr r0, _08017E18 @ =sub_0801519C
	mov r1, ip
	str r0, [r1, #0xc]
_08017E14:
	pop {r0}
	bx r0
	.align 2, 0
_08017E18: .4byte sub_0801519C

	thumb_func_start sub_08017E1C
sub_08017E1C: @ 0x08017E1C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0xdc
	ldrb r0, [r5]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x19
	strb r0, [r5]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017E48 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08017E50
	ldr r0, _08017E4C @ =sub_0801519C
	b _08017E92
	.align 2, 0
_08017E48: .4byte 0x00000103
_08017E4C: .4byte sub_0801519C
_08017E50:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017E84 @ =0x0000FFFF
	cmp r1, r0
	beq _08017E90
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r4, r2, #0
	adds r4, #0xe4
	ldr r0, [r4]
	adds r1, r2, #0
	adds r1, #0xee
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0x12
	beq _08017E94
	ldr r0, _08017E88 @ =sub_080196A4
	str r0, [r4]
	ldr r0, _08017E8C @ =sub_08018F34
	b _08017E92
	.align 2, 0
_08017E84: .4byte 0x0000FFFF
_08017E88: .4byte sub_080196A4
_08017E8C: .4byte sub_08018F34
_08017E90:
	ldr r0, _08017E9C @ =sub_080196D0
_08017E92:
	str r0, [r2, #0xc]
_08017E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017E9C: .4byte sub_080196D0

	thumb_func_start sub_08017EA0
sub_08017EA0: @ 0x08017EA0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017EBC
	adds r0, r3, #0
	adds r0, #0x9e
	ldrh r2, [r0]
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	adds r2, r0, #0
	b _08017ECC
_08017EBC:
	adds r2, r3, #0
	adds r2, #0x9e
	cmp r0, #0
	bne _08017ECC
	ldrh r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_08017ECC:
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08017EDC
	ldrh r1, [r2]
	movs r0, #0x40
	b _08017EE4
_08017EDC:
	cmp r0, #3
	bne _08017EE8
	ldrh r1, [r2]
	movs r0, #0x80
_08017EE4:
	orrs r0, r1
	strh r0, [r2]
_08017EE8:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08017F06
	ldr r0, _08017F0C @ =sub_08017F10
	str r0, [r3, #0xc]
_08017F06:
	pop {r0}
	bx r0
	.align 2, 0
_08017F0C: .4byte sub_08017F10

	thumb_func_start sub_08017F10
sub_08017F10: @ 0x08017F10
	push {lr}
	adds r3, r0, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017F26
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x20
	b _08017F32
_08017F26:
	cmp r0, #0
	bne _08017F36
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x10
_08017F32:
	orrs r0, r1
	strh r0, [r2]
_08017F36:
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08017F4A
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _08017F56
_08017F4A:
	cmp r0, #3
	bne _08017F5A
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_08017F56:
	orrs r0, r1
	strh r0, [r2]
_08017F5A:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, #4
	ldr r1, [r1]
	cmp r0, r1
	bls _08017F80
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08017F84 @ =sub_0801519C
	str r0, [r3, #0xc]
_08017F80:
	pop {r0}
	bx r0
	.align 2, 0
_08017F84: .4byte sub_0801519C

	thumb_func_start sub_08017F88
sub_08017F88: @ 0x08017F88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xde
	ldr r2, [r4, #0x40]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0xe0
	ldr r2, [r2, #0x44]
	asrs r2, r2, #8
	ldrh r1, [r1]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08154FE8
	ldr r5, _08017FD0 @ =0x000003FF
	ands r5, r0
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r5, r0
	bls _08017FD4
	movs r0, #0x20
	b _08017FD6
	.align 2, 0
_08017FD0: .4byte 0x000003FF
_08017FD4:
	movs r0, #0x10
_08017FD6:
	orrs r1, r0
	strh r1, [r2]
	ldr r1, _08017FF4 @ =0xFFFFFEFF
	adds r0, r5, r1
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08017FF8
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _08018000
	.align 2, 0
_08017FF4: .4byte 0xFFFFFEFF
_08017FF8:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_08018000:
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0801801A
	ldr r0, _08018020 @ =sub_08018024
	str r0, [r4, #0xc]
_0801801A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018020: .4byte sub_08018024

	thumb_func_start sub_08018024
sub_08018024: @ 0x08018024
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x40]
	ldr r0, [r1, #0x40]
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	ldr r0, [r1, #0x44]
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	adds r7, r6, #0
	adds r7, #0xde
	ldrh r0, [r7]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xe0
	ldrh r1, [r1]
	subs r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08154FE8
	ldr r1, _08018068 @ =0x000003FF
	mov ip, r1
	ands r1, r0
	mov ip, r1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	ble _0801806C
	subs r0, r4, r1
	b _0801806E
	.align 2, 0
_08018068: .4byte 0x000003FF
_0801806C:
	subs r0, r1, r4
_0801806E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xe0
	ldrh r1, [r1]
	cmp r0, r1
	ble _08018086
	subs r0, r5, r1
	b _08018088
_08018086:
	subs r0, r1, r5
_08018088:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	lsls r1, r0, #0x10
	lsls r0, r3, #0x10
	cmp r1, r0
	bge _08018098
	adds r2, r3, #0
_08018098:
	adds r3, r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp ip, r0
	bls _080180AC
	adds r0, r6, #0
	adds r0, #0x9e
	ldrh r2, [r0]
	movs r1, #0x20
	b _080180B4
_080180AC:
	adds r0, r6, #0
	adds r0, #0x9e
	ldrh r2, [r0]
	movs r1, #0x10
_080180B4:
	orrs r1, r2
	strh r1, [r0]
	adds r2, r0, #0
	ldr r0, _080180D0 @ =0xFFFFFEFF
	add r0, ip
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080180D4
	ldrh r1, [r2]
	movs r0, #0x40
	b _080180D8
	.align 2, 0
_080180D0: .4byte 0xFFFFFEFF
_080180D4:
	ldrh r1, [r2]
	movs r0, #0x80
_080180D8:
	orrs r0, r1
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0xe8
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _080180F8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	bgt _08018104
_080180F8:
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801810C @ =sub_0801519C
	str r0, [r6, #0xc]
_08018104:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801810C: .4byte sub_0801519C

	thumb_func_start sub_08018110
sub_08018110: @ 0x08018110
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r1, ip
	adds r1, #0xdc
	ldrb r0, [r1]
	mov r3, ip
	adds r3, #0xdd
	movs r2, #0
	strb r0, [r3]
	movs r0, #0x1b
	strb r0, [r1]
	mov r1, ip
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0x10]
	mov r0, ip
	adds r0, #0xe8
	strh r2, [r0]
	ldr r6, _0801817C @ =gRngVal
	ldr r0, [r6]
	ldr r4, _08018180 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _08018184 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r5, #0x1f
	ands r0, r5
	adds r0, #0x10
	lsls r1, r0, #8
	orrs r0, r1
	mov r1, ip
	adds r1, #0xea
	strh r0, [r1]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	ands r0, r5
	adds r0, #0x5a
	adds r1, #2
	strh r0, [r1]
	ldr r0, _08018188 @ =sub_0801818C
	mov r1, ip
	str r0, [r1, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801817C: .4byte gRngVal
_08018180: .4byte 0x00196225
_08018184: .4byte 0x3C6EF35F
_08018188: .4byte sub_0801818C

	thumb_func_start sub_0801818C
sub_0801818C: @ 0x0801818C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080181A8 @ =0x00000397
	cmp r1, r0
	beq _080181B0
	ldr r0, _080181AC @ =sub_0801519C
	mov r2, ip
	str r0, [r2, #0xc]
	b _0801835E
	.align 2, 0
_080181A8: .4byte 0x00000397
_080181AC: .4byte sub_0801519C
_080181B0:
	mov r4, ip
	adds r4, #0xec
	ldrh r0, [r4]
	cmp r0, #0
	bne _080181F0
	mov r3, ip
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r2, _080181E4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080181E8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080181EC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x5a
	strh r0, [r4]
	adds r6, r3, #0
	b _080181F8
	.align 2, 0
_080181E4: .4byte gRngVal
_080181E8: .4byte 0x00196225
_080181EC: .4byte 0x3C6EF35F
_080181F0:
	subs r0, #1
	strh r0, [r4]
	mov r6, ip
	adds r6, #0x9e
_080181F8:
	mov r0, ip
	adds r0, #0xea
	ldrh r2, [r0]
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080182A0
	mov r2, ip
	adds r2, #0xe8
	ldrh r1, [r2]
	ldr r0, _08018228 @ =0x0000FFCF
	ands r0, r1
	strh r0, [r2]
	movs r3, #0
	mov r1, ip
	ldr r0, [r1, #0x40]
	ldr r1, [r0, #0x40]
	ldr r0, _0801822C @ =0x00001FFF
	adds r4, r2, #0
	cmp r1, r0
	bgt _08018234
	movs r3, #0x10
	ldr r2, _08018230 @ =gRngVal
	b _08018276
	.align 2, 0
_08018228: .4byte 0x0000FFCF
_0801822C: .4byte 0x00001FFF
_08018230: .4byte gRngVal
_08018234:
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08018248
	movs r3, #0x20
	ldr r2, _08018244 @ =gRngVal
	b _08018276
	.align 2, 0
_08018244: .4byte gRngVal
_08018248:
	ldr r2, _08018264 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018268 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801826C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #1
	bhi _08018270
	movs r3, #0x20
	b _08018276
	.align 2, 0
_08018264: .4byte gRngVal
_08018268: .4byte 0x00196225
_0801826C: .4byte 0x3C6EF35F
_08018270:
	cmp r1, #3
	bhi _08018276
	movs r3, #0x10
_08018276:
	ldrh r0, [r4]
	orrs r3, r0
	strh r3, [r4]
	ldr r1, [r2]
	ldr r0, _08018298 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801829C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldrh r2, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x10
	orrs r2, r0
	strh r2, [r5]
	b _080182A8
	.align 2, 0
_08018298: .4byte 0x00196225
_0801829C: .4byte 0x3C6EF35F
_080182A0:
	subs r0, r2, #1
	strh r0, [r5]
	mov r4, ip
	adds r4, #0xe8
_080182A8:
	ldrh r1, [r5]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08018350
	ldrh r1, [r4]
	ldr r0, _080182D0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r4]
	movs r3, #0
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _080182D4 @ =0x000077FF
	cmp r2, r0
	bgt _080182DC
	movs r3, #0x80
	ldr r2, _080182D8 @ =gRngVal
	b _08018322
	.align 2, 0
_080182D0: .4byte 0x0000FF3F
_080182D4: .4byte 0x000077FF
_080182D8: .4byte gRngVal
_080182DC:
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r2, r0
	ble _080182F0
	movs r3, #0x40
	ldr r2, _080182EC @ =gRngVal
	b _08018322
	.align 2, 0
_080182EC: .4byte gRngVal
_080182F0:
	ldr r2, _08018310 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018314 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018318 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0801831C
	cmp r1, #1
	beq _08018320
	b _08018322
	.align 2, 0
_08018310: .4byte gRngVal
_08018314: .4byte 0x00196225
_08018318: .4byte 0x3C6EF35F
_0801831C:
	movs r3, #0x40
	b _08018322
_08018320:
	movs r3, #0x80
_08018322:
	ldrh r0, [r4]
	orrs r3, r0
	strh r3, [r4]
	ldr r1, [r2]
	ldr r0, _08018348 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801834C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldrh r2, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	lsls r0, r0, #8
	orrs r2, r0
	strh r2, [r5]
	b _08018356
	.align 2, 0
_08018348: .4byte 0x00196225
_0801834C: .4byte 0x3C6EF35F
_08018350:
	ldr r2, _08018364 @ =0xFFFFFF00
	adds r0, r1, r2
	strh r0, [r5]
_08018356:
	ldrh r0, [r6]
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r6]
_0801835E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018364: .4byte 0xFFFFFF00

	thumb_func_start sub_08018368
sub_08018368: @ 0x08018368
	movs r0, #0
	bx lr

	thumb_func_start sub_0801836C
sub_0801836C: @ 0x0801836C
	movs r1, #0
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0

	thumb_func_start sub_08018374
sub_08018374: @ 0x08018374
	push {lr}
	movs r1, #0
	str r1, [r0, #0x48]
	bl sub_08010818
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_103
nullsub_103: @ 0x08018384
	bx lr
	.align 2, 0

	thumb_func_start sub_08018388
sub_08018388: @ 0x08018388
	adds r0, #0xb8
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08018394
sub_08018394: @ 0x08018394
	ldr r1, [r0, #0x10]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_080183A0
sub_080183A0: @ 0x080183A0
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_08019734
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080183D0
sub_080183D0: @ 0x080183D0
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_08019784
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018400
sub_08018400: @ 0x08018400
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xb8
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xb4
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3e
	strb r1, [r0]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	bx lr

	thumb_func_start sub_08018428
sub_08018428: @ 0x08018428
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_080197BC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018458
sub_08018458: @ 0x08018458
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_0801984C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018488
sub_08018488: @ 0x08018488
	push {lr}
	adds r2, r0, #0
	adds r2, #0xb8
	ldrh r1, [r2]
	adds r1, #1
	strh r1, [r2]
	ldr r1, [r0, #0x10]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x10]
	bl sub_080199CC
	pop {r0}
	bx r0

	thumb_func_start sub_080184A4
sub_080184A4: @ 0x080184A4
	adds r3, r0, #0
	adds r3, #0xb8
	ldrh r1, [r3]
	adds r1, #1
	strh r1, [r3]
	ldrh r1, [r3]
	adds r0, #0xb4
	ldr r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r2
	adds r1, #1
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0

	thumb_func_start sub_080184C4
sub_080184C4: @ 0x080184C4
	adds r2, r0, #0
	adds r2, #0xb8
	ldrh r1, [r2]
	adds r1, #1
	strh r1, [r2]
	ldr r1, _080184D4 @ =sub_080184DC
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080184D4: .4byte sub_080184DC

	thumb_func_start nullsub_104
nullsub_104: @ 0x080184D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080184DC
sub_080184DC: @ 0x080184DC
	ldr r1, _080184E4 @ =sub_08013B98
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080184E4: .4byte sub_08013B98

	thumb_func_start sub_080184E8
sub_080184E8: @ 0x080184E8
	ldr r1, [r0, #0x10]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	ldr r1, _080184FC @ =sub_0801858C
	str r1, [r0, #8]
	ldr r1, _08018500 @ =sub_08019BF0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080184FC: .4byte sub_0801858C
_08018500: .4byte sub_08019BF0

	thumb_func_start sub_08018504
sub_08018504: @ 0x08018504
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08018520 @ =0x00000397
	cmp r1, r0
	beq _0801851C
	ldr r0, _08018524 @ =sub_08013A60
	str r0, [r2, #4]
_0801851C:
	pop {r0}
	bx r0
	.align 2, 0
_08018520: .4byte 0x00000397
_08018524: .4byte sub_08013A60

	thumb_func_start nullsub_105
nullsub_105: @ 0x08018528
	bx lr
	.align 2, 0

	thumb_func_start sub_0801852C
sub_0801852C: @ 0x0801852C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08018548 @ =0x00000397
	cmp r1, r0
	bne _08018550
	ldr r0, _0801854C @ =sub_080185EC
	str r0, [r4, #8]
	b _08018580
	.align 2, 0
_08018548: .4byte 0x00000397
_0801854C: .4byte sub_080185EC
_08018550:
	ldr r0, _08018588 @ =gUnk_0203AD40
	ldr r2, [r0]
	movs r1, #3
	ands r2, r1
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	ands r1, r0
	cmp r2, r1
	bne _0801856A
	adds r0, r4, #0
	bl sub_08018610
_0801856A:
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801857A
	adds r0, r4, #0
	bl sub_080108B8
_0801857A:
	adds r0, r4, #0
	bl sub_0800FF60
_08018580:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018588: .4byte gUnk_0203AD40

	thumb_func_start sub_0801858C
sub_0801858C: @ 0x0801858C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080185A8 @ =0x00000397
	cmp r1, r0
	bne _080185B0
	ldr r0, _080185AC @ =sub_080185EC
	str r0, [r4, #8]
	b _080185E0
	.align 2, 0
_080185A8: .4byte 0x00000397
_080185AC: .4byte sub_080185EC
_080185B0:
	ldr r0, _080185E8 @ =gUnk_0203AD40
	ldr r2, [r0]
	movs r1, #1
	ands r2, r1
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	ands r1, r0
	cmp r2, r1
	bne _080185CA
	adds r0, r4, #0
	bl sub_08018640
_080185CA:
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080185DA
	adds r0, r4, #0
	bl sub_080108B8
_080185DA:
	adds r0, r4, #0
	bl sub_0800FF60
_080185E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080185E8: .4byte gUnk_0203AD40

	thumb_func_start sub_080185EC
sub_080185EC: @ 0x080185EC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08018608 @ =0x00000397
	cmp r1, r0
	beq _08018604
	ldr r0, _0801860C @ =sub_0801852C
	str r0, [r2, #8]
_08018604:
	pop {r0}
	bx r0
	.align 2, 0
_08018608: .4byte 0x00000397
_0801860C: .4byte sub_0801852C

	thumb_func_start sub_08018610
sub_08018610: @ 0x08018610
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0800EEBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	ldrb r0, [r4, #0x1a]
	cmp r1, r0
	beq _0801862C
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
_0801862C:
	strb r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_0800F044
	adds r0, r4, #0
	bl sub_08010294
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018640
sub_08018640: @ 0x08018640
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_0800F044
	ldr r0, [r4, #0x40]
	bl sub_0800EEBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	ldrb r0, [r4, #0x1a]
	cmp r1, r0
	beq _08018662
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
_08018662:
	strb r1, [r4, #0x1a]
	adds r3, r4, #0
	adds r3, #0x3f
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08018670
	movs r5, #1
_08018670:
	cmp r5, #0
	beq _08018690
	ldr r0, [r4, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r4, #0x1a]
	ldr r2, [r0, #0x14]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r1, [r4, #0x1b]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
_08018690:
	adds r0, r4, #0
	bl sub_08010144
	adds r0, r4, #0
	bl sub_08010294
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080186A4
sub_080186A4: @ 0x080186A4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r1, _080186C0 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x13
	bne _080186C4
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	b _080186CC
	.align 2, 0
_080186C0: .4byte 0x00000103
_080186C4:
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
_080186CC:
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080186D8 @ =sub_080152B0
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080186D8: .4byte sub_080152B0

	thumb_func_start sub_080186DC
sub_080186DC: @ 0x080186DC
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	subs r2, #0x3f
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08018708 @ =sub_0801519C
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018708: .4byte sub_0801519C

	thumb_func_start sub_0801870C
sub_0801870C: @ 0x0801870C
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08018748 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801874C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018750 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0xde
	strh r0, [r1]
	ldr r0, _08018754 @ =sub_080156FC
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018748: .4byte gRngVal
_0801874C: .4byte 0x00196225
_08018750: .4byte 0x3C6EF35F
_08018754: .4byte sub_080156FC

	thumb_func_start sub_08018758
sub_08018758: @ 0x08018758
	ldr r1, _08018760 @ =sub_0801519C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018760: .4byte sub_0801519C

	thumb_func_start sub_08018764
sub_08018764: @ 0x08018764
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #3
	strb r0, [r1]
	ldr r1, [r3, #0x40]
	ldr r2, _08018788 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08018790
	ldr r0, _0801878C @ =sub_08018BF4
	b _080187A6
	.align 2, 0
_08018788: .4byte 0x00000103
_0801878C: .4byte sub_08018BF4
_08018790:
	ldr r0, [r1, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080187A4
	ldr r0, _080187A0 @ =sub_08018B18
	b _080187A6
	.align 2, 0
_080187A0: .4byte sub_08018B18
_080187A4:
	ldr r0, _080187AC @ =sub_08015970
_080187A6:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080187AC: .4byte sub_08015970

	thumb_func_start sub_080187B0
sub_080187B0: @ 0x080187B0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #4
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x9a
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _080187E0 @ =0x000001FF
	movs r3, #0x20
	cmp r1, r0
	bgt _080187CE
	movs r3, #0x10
_080187CE:
	adds r0, r2, #0
	adds r0, #0xea
	strh r3, [r0]
	subs r0, #0x4c
	strh r3, [r0]
	ldr r0, _080187E4 @ =sub_080187E8
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080187E0: .4byte 0x000001FF
_080187E4: .4byte sub_080187E8

	thumb_func_start sub_080187E8
sub_080187E8: @ 0x080187E8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018800
	ldr r0, _08018804 @ =sub_08018808
	str r0, [r2, #0xc]
_08018800:
	pop {r0}
	bx r0
	.align 2, 0
_08018804: .4byte sub_08018808

	thumb_func_start sub_08018808
sub_08018808: @ 0x08018808
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #4
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xea
	ldrh r0, [r0]
	subs r1, #0x4a
	strh r0, [r1]
	ldr r0, _08018824 @ =sub_08018828
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08018824: .4byte sub_08018828

	thumb_func_start sub_08018828
sub_08018828: @ 0x08018828
	push {lr}
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018848
	ldr r0, _0801884C @ =sub_08015A4C
	str r0, [r2, #0xc]
_08018848:
	pop {r0}
	bx r0
	.align 2, 0
_0801884C: .4byte sub_08015A4C

	thumb_func_start sub_08018850
sub_08018850: @ 0x08018850
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x5a
	strh r1, [r2]
	ldr r1, _08018860 @ =sub_08018864
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018860: .4byte sub_08018864

	thumb_func_start sub_08018864
sub_08018864: @ 0x08018864
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801887C
	ldr r0, _08018880 @ =sub_08015A4C
	str r0, [r2, #0xc]
_0801887C:
	pop {r0}
	bx r0
	.align 2, 0
_08018880: .4byte sub_08015A4C

	thumb_func_start sub_08018884
sub_08018884: @ 0x08018884
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #0xdd
	adds r2, r2, r3
	mov ip, r2
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r0, _080188B8 @ =sub_080188BC
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080188B8: .4byte sub_080188BC

	thumb_func_start sub_080188BC
sub_080188BC: @ 0x080188BC
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0x80
	strh r0, [r1]
	movs r0, #0xde
	adds r0, r0, r3
	mov ip, r0
	adds r2, r3, #0
	adds r2, #0xe8
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	mov r2, ip
	ldrh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _080188E8
	ldr r0, _080188EC @ =sub_0801519C
	str r0, [r3, #0xc]
_080188E8:
	pop {r0}
	bx r0
	.align 2, 0
_080188EC: .4byte sub_0801519C

	thumb_func_start sub_080188F0
sub_080188F0: @ 0x080188F0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe8
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #9
	bhi _08018924
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x2d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08018928
	ldr r0, _08018920 @ =sub_08018930
	b _08018926
	.align 2, 0
_08018920: .4byte sub_08018930
_08018924:
	ldr r0, _0801892C @ =sub_0801519C
_08018926:
	str r0, [r3, #0xc]
_08018928:
	pop {r0}
	bx r0
	.align 2, 0
_0801892C: .4byte sub_0801519C

	thumb_func_start sub_08018930
sub_08018930: @ 0x08018930
	adds r2, r0, #0
	adds r2, #0xec
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08018940 @ =sub_08018944
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018940: .4byte sub_08018944

	thumb_func_start sub_08018944
sub_08018944: @ 0x08018944
	push {lr}
	adds r3, r0, #0
	ldr r2, _0801898C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018990 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018994 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	subs r1, #0x4e
	ldr r2, _08018998 @ =0xFFFFFEFF
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	movs r2, #0x80
	cmp r0, r1
	bhi _0801897C
	movs r2, #0x40
_0801897C:
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	ldr r0, _0801899C @ =sub_0801602C
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_0801898C: .4byte gRngVal
_08018990: .4byte 0x00196225
_08018994: .4byte 0x3C6EF35F
_08018998: .4byte 0xFFFFFEFF
_0801899C: .4byte sub_0801602C

	thumb_func_start sub_080189A0
sub_080189A0: @ 0x080189A0
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xe8
	movs r0, #4
	strh r0, [r1]
	ldr r2, _080189CC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080189D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080189D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _080189D8 @ =sub_0801617C
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_080189CC: .4byte gRngVal
_080189D0: .4byte 0x00196225
_080189D4: .4byte 0x3C6EF35F
_080189D8: .4byte sub_0801617C

	thumb_func_start sub_080189DC
sub_080189DC: @ 0x080189DC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _080189FC
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #4
	beq _08018A08
	ldr r0, _080189F8 @ =sub_08015970
	b _08018A06
	.align 2, 0
_080189F8: .4byte sub_08015970
_080189FC:
	adds r0, r2, #0
	adds r0, #0xe8
	movs r1, #8
	strh r1, [r0]
	ldr r0, _08018A0C @ =sub_08018A10
_08018A06:
	str r0, [r2, #0xc]
_08018A08:
	pop {r0}
	bx r0
	.align 2, 0
_08018A0C: .4byte sub_08018A10

	thumb_func_start sub_08018A10
sub_08018A10: @ 0x08018A10
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018A34
	ldr r0, _08018A38 @ =sub_08018A3C
	str r0, [r3, #0xc]
_08018A34:
	pop {r0}
	bx r0
	.align 2, 0
_08018A38: .4byte sub_08018A3C

	thumb_func_start sub_08018A3C
sub_08018A3C: @ 0x08018A3C
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x10
	strh r1, [r2]
	ldr r1, _08018A4C @ =sub_08018A50
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018A4C: .4byte sub_08018A50

	thumb_func_start sub_08018A50
sub_08018A50: @ 0x08018A50
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018A94
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08018A90
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #3
	beq _08018A94
	ldr r0, _08018A8C @ =sub_08018764
	b _08018A92
	.align 2, 0
_08018A8C: .4byte sub_08018764
_08018A90:
	ldr r0, _08018A98 @ =sub_08018A9C
_08018A92:
	str r0, [r3, #0xc]
_08018A94:
	pop {r0}
	bx r0
	.align 2, 0
_08018A98: .4byte sub_08018A9C

	thumb_func_start sub_08018A9C
sub_08018A9C: @ 0x08018A9C
	ldr r3, _08018AC0 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _08018AC4 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08018AC8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	adds r1, #8
	adds r2, r0, #0
	adds r2, #0xec
	strh r1, [r2]
	ldr r1, _08018ACC @ =sub_08018AD0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018AC0: .4byte gRngVal
_08018AC4: .4byte 0x00196225
_08018AC8: .4byte 0x3C6EF35F
_08018ACC: .4byte sub_08018AD0

	thumb_func_start sub_08018AD0
sub_08018AD0: @ 0x08018AD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08018B08 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018B0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018B10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0xa
	adds r1, r4, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08014B9C
	adds r1, r4, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _08018B14 @ =sub_08016428
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018B08: .4byte gRngVal
_08018B0C: .4byte 0x00196225
_08018B10: .4byte 0x3C6EF35F
_08018B14: .4byte sub_08016428

	thumb_func_start sub_08018B18
sub_08018B18: @ 0x08018B18
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #9
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08018B4C
	ldr r0, _08018B48 @ =sub_0801639C
	b _08018B62
	.align 2, 0
_08018B48: .4byte sub_0801639C
_08018B4C:
	ldr r0, [r2, #8]
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08018B60
	ldr r0, _08018B5C @ =sub_08018B6C
	b _08018B62
	.align 2, 0
_08018B5C: .4byte sub_08018B6C
_08018B60:
	ldr r0, _08018B68 @ =sub_08018BAC
_08018B62:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08018B68: .4byte sub_08018BAC

	thumb_func_start sub_08018B6C
sub_08018B6C: @ 0x08018B6C
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #5
	strh r1, [r2]
	ldr r1, _08018B7C @ =sub_08018B80
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018B7C: .4byte sub_08018B80

	thumb_func_start sub_08018B80
sub_08018B80: @ 0x08018B80
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018BA4
	ldr r0, _08018BA8 @ =sub_08018BAC
	str r0, [r3, #0xc]
_08018BA4:
	pop {r0}
	bx r0
	.align 2, 0
_08018BA8: .4byte sub_08018BAC

	thumb_func_start sub_08018BAC
sub_08018BAC: @ 0x08018BAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08018BE4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018BE8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018BEC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08014DA4
	adds r1, r4, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _08018BF0 @ =sub_08016C24
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018BE4: .4byte gRngVal
_08018BE8: .4byte 0x00196225
_08018BEC: .4byte 0x3C6EF35F
_08018BF0: .4byte sub_08016C24

	thumb_func_start sub_08018BF4
sub_08018BF4: @ 0x08018BF4
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r3, r2, #0
	adds r3, #0xdd
	strb r0, [r3]
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08018C24 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08018C2C
	ldr r0, _08018C28 @ =sub_0801519C
	b _08018C2E
	.align 2, 0
_08018C24: .4byte 0x00000103
_08018C28: .4byte sub_0801519C
_08018C2C:
	ldr r0, _08018C34 @ =sub_08018C38
_08018C2E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08018C34: .4byte sub_08018C38

	thumb_func_start sub_08018C38
sub_08018C38: @ 0x08018C38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08018C70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018C74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018C78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08014FA0
	adds r1, r4, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _08018C7C @ =sub_08016EF0
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018C70: .4byte gRngVal
_08018C74: .4byte 0x00196225
_08018C78: .4byte 0x3C6EF35F
_08018C7C: .4byte sub_08016EF0

	thumb_func_start sub_08018C80
sub_08018C80: @ 0x08018C80
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018C94 @ =sub_08018C98
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018C94: .4byte sub_08018C98

	thumb_func_start sub_08018C98
sub_08018C98: @ 0x08018C98
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x10
	strh r1, [r2]
	ldr r1, _08018CA8 @ =sub_08018CAC
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018CA8: .4byte sub_08018CAC

	thumb_func_start sub_08018CAC
sub_08018CAC: @ 0x08018CAC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r1, r0
	strh r1, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018CD4
	movs r0, #0x1e
	strh r0, [r1]
	ldr r0, _08018CD8 @ =sub_08018CDC
	str r0, [r3, #0xc]
_08018CD4:
	pop {r0}
	bx r0
	.align 2, 0
_08018CD8: .4byte sub_08018CDC

	thumb_func_start sub_08018CDC
sub_08018CDC: @ 0x08018CDC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x81
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	cmp r0, #0
	bne _08018D10
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08018D14
	ldr r0, _08018D0C @ =sub_0801519C
	str r0, [r3, #0xc]
	b _08018D14
	.align 2, 0
_08018D0C: .4byte sub_0801519C
_08018D10:
	subs r0, #1
	strh r0, [r1]
_08018D14:
	pop {r0}
	bx r0

	thumb_func_start sub_08018D18
sub_08018D18: @ 0x08018D18
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018D2C @ =sub_08018D30
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018D2C: .4byte sub_08018D30

	thumb_func_start sub_08018D30
sub_08018D30: @ 0x08018D30
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #2
	strh r1, [r2]
	ldr r1, _08018D40 @ =sub_08018D44
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018D40: .4byte sub_08018D44

	thumb_func_start sub_08018D44
sub_08018D44: @ 0x08018D44
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018D68
	ldr r0, _08018D6C @ =sub_0801519C
	str r0, [r3, #0xc]
_08018D68:
	pop {r0}
	bx r0
	.align 2, 0
_08018D6C: .4byte sub_0801519C

	thumb_func_start sub_08018D70
sub_08018D70: @ 0x08018D70
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018D84 @ =sub_08018D88
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018D84: .4byte sub_08018D88

	thumb_func_start sub_08018D88
sub_08018D88: @ 0x08018D88
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #2
	strh r1, [r2]
	ldr r1, _08018D98 @ =sub_08018D9C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018D98: .4byte sub_08018D9C

	thumb_func_start sub_08018D9C
sub_08018D9C: @ 0x08018D9C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018DC0
	ldr r0, _08018DC4 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018DC0:
	pop {r0}
	bx r0
	.align 2, 0
_08018DC4: .4byte sub_0801519C

	thumb_func_start sub_08018DC8
sub_08018DC8: @ 0x08018DC8
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _08018DE4 @ =sub_08018DE8
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08018DE4: .4byte sub_08018DE8

	thumb_func_start sub_08018DE8
sub_08018DE8: @ 0x08018DE8
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	cmp r1, #0
	bne _08018E20
	ldr r2, _08018E14 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018E18 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018E1C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	adds r0, #0x3c
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	b _08018E26
	.align 2, 0
_08018E14: .4byte gRngVal
_08018E18: .4byte 0x00196225
_08018E1C: .4byte 0x3C6EF35F
_08018E20:
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
_08018E26:
	adds r1, r3, #0
	adds r1, #0xea
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08018E38 @ =sub_08017548
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08018E38: .4byte sub_08017548

	thumb_func_start sub_08018E3C
sub_08018E3C: @ 0x08018E3C
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #2
	strh r1, [r2]
	ldr r1, _08018E4C @ =sub_08018E50
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018E4C: .4byte sub_08018E50

	thumb_func_start sub_08018E50
sub_08018E50: @ 0x08018E50
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018E74
	ldr r0, _08018E78 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018E74:
	pop {r0}
	bx r0
	.align 2, 0
_08018E78: .4byte sub_0801519C

	thumb_func_start sub_08018E7C
sub_08018E7C: @ 0x08018E7C
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018E90 @ =sub_08018E94
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018E90: .4byte sub_08018E94

	thumb_func_start sub_08018E94
sub_08018E94: @ 0x08018E94
	ldr r3, _08018EB8 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _08018EBC @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08018EC0 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x7f
	ands r1, r2
	adds r1, #5
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08018EC4 @ =sub_08018EC8
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018EB8: .4byte gRngVal
_08018EBC: .4byte 0x00196225
_08018EC0: .4byte 0x3C6EF35F
_08018EC4: .4byte sub_08018EC8

	thumb_func_start sub_08018EC8
sub_08018EC8: @ 0x08018EC8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018EEC
	ldr r0, _08018EF0 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018EEC:
	pop {r0}
	bx r0
	.align 2, 0
_08018EF0: .4byte sub_0801519C

	thumb_func_start sub_08018EF4
sub_08018EF4: @ 0x08018EF4
	adds r3, r0, #0
	ldr r2, _08018F24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018F28 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018F2C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x10
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08018F30 @ =sub_08017800
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018F24: .4byte gRngVal
_08018F28: .4byte 0x00196225
_08018F2C: .4byte 0x3C6EF35F
_08018F30: .4byte sub_08017800

	thumb_func_start sub_08018F34
sub_08018F34: @ 0x08018F34
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, _08018F4C @ =sub_08018F50
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018F4C: .4byte sub_08018F50

	thumb_func_start sub_08018F50
sub_08018F50: @ 0x08018F50
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0xb4
	strh r1, [r2]
	ldr r1, _08018F60 @ =sub_0801786C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018F60: .4byte sub_0801786C

	thumb_func_start sub_08018F64
sub_08018F64: @ 0x08018F64
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018F78 @ =sub_08018F7C
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018F78: .4byte sub_08018F7C

	thumb_func_start sub_08018F7C
sub_08018F7C: @ 0x08018F7C
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x10
	strh r0, [r1]
	adds r3, r2, #0
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08018F98 @ =sub_08018F9C
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08018F98: .4byte sub_08018F9C

	thumb_func_start sub_08018F9C
sub_08018F9C: @ 0x08018F9C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018FB4
	ldr r0, _08018FB8 @ =sub_08018FBC
	str r0, [r2, #0xc]
_08018FB4:
	pop {r0}
	bx r0
	.align 2, 0
_08018FB8: .4byte sub_08018FBC

	thumb_func_start sub_08018FBC
sub_08018FBC: @ 0x08018FBC
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #4
	strh r1, [r2]
	ldr r1, _08018FCC @ =sub_08018FD0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018FCC: .4byte sub_08018FD0

	thumb_func_start sub_08018FD0
sub_08018FD0: @ 0x08018FD0
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	movs r4, #0
	orrs r1, r0
	strh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08018FF2
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r2]
_08018FF2:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019006
	ldr r0, _0801900C @ =sub_08019010
	str r0, [r3, #0xc]
_08019006:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801900C: .4byte sub_08019010

	thumb_func_start sub_08019010
sub_08019010: @ 0x08019010
	push {lr}
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #4
	strh r1, [r2]
	ldr r1, _08019028 @ =sub_0801902C
	str r1, [r0, #0xc]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08019028: .4byte sub_0801902C

	thumb_func_start sub_0801902C
sub_0801902C: @ 0x0801902C
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08019044
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08019044:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019058
	ldr r0, _0801905C @ =sub_08019060
	str r0, [r3, #0xc]
_08019058:
	pop {r0}
	bx r0
	.align 2, 0
_0801905C: .4byte sub_08019060

	thumb_func_start sub_08019060
sub_08019060: @ 0x08019060
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x3c
	strh r1, [r2]
	ldr r1, _08019070 @ =sub_08019074
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019070: .4byte sub_08019074

	thumb_func_start sub_08019074
sub_08019074: @ 0x08019074
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801908C
	ldr r0, _08019090 @ =sub_0801519C
	str r0, [r2, #0xc]
_0801908C:
	pop {r0}
	bx r0
	.align 2, 0
_08019090: .4byte sub_0801519C

	thumb_func_start sub_08019094
sub_08019094: @ 0x08019094
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x40]
	ldr r2, _080190C0 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _080190C8
	ldr r0, _080190C4 @ =sub_0801519C
	b _080190DE
	.align 2, 0
_080190C0: .4byte 0x00000103
_080190C4: .4byte sub_0801519C
_080190C8:
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080190DC
	ldr r0, _080190D8 @ =sub_08019138
	b _080190DE
	.align 2, 0
_080190D8: .4byte sub_08019138
_080190DC:
	ldr r0, _080190E4 @ =sub_080190E8
_080190DE:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080190E4: .4byte sub_080190E8

	thumb_func_start sub_080190E8
sub_080190E8: @ 0x080190E8
	ldr r1, _080190F0 @ =sub_080190F4
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080190F0: .4byte sub_080190F4

	thumb_func_start sub_080190F4
sub_080190F4: @ 0x080190F4
	adds r3, r0, #0
	adds r3, #0x9e
	ldrh r2, [r3]
	movs r1, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08019108 @ =sub_0801910C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019108: .4byte sub_0801910C

	thumb_func_start sub_0801910C
sub_0801910C: @ 0x0801910C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	cmp r0, #0
	bne _08019130
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08019134
	ldr r0, _0801912C @ =sub_08019138
	str r0, [r2, #0xc]
	b _08019134
	.align 2, 0
_0801912C: .4byte sub_08019138
_08019130:
	subs r0, #1
	strh r0, [r1]
_08019134:
	pop {r0}
	bx r0

	thumb_func_start sub_08019138
sub_08019138: @ 0x08019138
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08019168 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801916C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019170 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #5
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	ldr r0, _08019174 @ =sub_08019178
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08019168: .4byte gRngVal
_0801916C: .4byte 0x00196225
_08019170: .4byte 0x3C6EF35F
_08019174: .4byte sub_08019178

	thumb_func_start sub_08019178
sub_08019178: @ 0x08019178
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019190
	ldr r0, _08019194 @ =sub_0801519C
	str r0, [r2, #0xc]
_08019190:
	pop {r0}
	bx r0
	.align 2, 0
_08019194: .4byte sub_0801519C

	thumb_func_start sub_08019198
sub_08019198: @ 0x08019198
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x15
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x40]
	ldr r1, _080191C8 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080191D0
	cmp r0, #0x16
	beq _080191D0
	ldr r0, _080191CC @ =sub_0801519C
	b _080191E6
	.align 2, 0
_080191C8: .4byte 0x00000103
_080191CC: .4byte sub_0801519C
_080191D0:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080191E4
	ldr r0, _080191E0 @ =sub_08019378
	b _080191E6
	.align 2, 0
_080191E0: .4byte sub_08019378
_080191E4:
	ldr r0, _080191EC @ =sub_080191F0
_080191E6:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080191EC: .4byte sub_080191F0

	thumb_func_start sub_080191F0
sub_080191F0: @ 0x080191F0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x40]
	ldr r3, _08019210 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #8
	bne _08019218
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08019218
	ldr r0, _08019214 @ =sub_08019378
	b _0801923E
	.align 2, 0
_08019210: .4byte 0x00000103
_08019214: .4byte sub_08019378
_08019218:
	ldr r0, [r2, #0x40]
	ldr r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801922C
	ldr r0, _08019228 @ =sub_0801519C
	b _0801923E
	.align 2, 0
_08019228: .4byte sub_0801519C
_0801922C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0801923C
	ldr r0, _08019238 @ =sub_08017A4C
	b _0801923E
	.align 2, 0
_08019238: .4byte sub_08017A4C
_0801923C:
	ldr r0, _08019244 @ =sub_08019248
_0801923E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019244: .4byte sub_08019248

	thumb_func_start sub_08019248
sub_08019248: @ 0x08019248
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r1, _08019260 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _08019268
	cmp r0, #0x16
	beq _08019268
	ldr r0, _08019264 @ =sub_0801519C
	b _0801927E
	.align 2, 0
_08019260: .4byte 0x00000103
_08019264: .4byte sub_0801519C
_08019268:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0801927C
	ldr r0, _08019278 @ =sub_0801519C
	b _0801927E
	.align 2, 0
_08019278: .4byte sub_0801519C
_0801927C:
	ldr r0, _08019284 @ =sub_08019288
_0801927E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019284: .4byte sub_08019288

	thumb_func_start sub_08019288
sub_08019288: @ 0x08019288
	ldr r3, _080192AC @ =gRngVal
	ldr r2, [r3]
	ldr r1, _080192B0 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080192B4 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	adds r1, #0xa
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _080192B8 @ =sub_08017950
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080192AC: .4byte gRngVal
_080192B0: .4byte 0x00196225
_080192B4: .4byte 0x3C6EF35F
_080192B8: .4byte sub_08017950

	thumb_func_start sub_080192BC
sub_080192BC: @ 0x080192BC
	adds r3, r0, #0
	adds r3, #0x9e
	ldrh r2, [r3]
	movs r1, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _080192D0 @ =sub_080192D4
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080192D0: .4byte sub_080192D4

	thumb_func_start sub_080192D4
sub_080192D4: @ 0x080192D4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r1, _080192EC @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080192F4
	cmp r0, #0x16
	beq _080192F4
	ldr r0, _080192F0 @ =sub_0801519C
	b _0801931A
	.align 2, 0
_080192EC: .4byte 0x00000103
_080192F0: .4byte sub_0801519C
_080192F4:
	ldr r0, [r3, #0x40]
	ldr r1, [r0, #8]
	movs r2, #0x60
	ands r2, r1
	cmp r2, #0x20
	beq _08019308
	ldr r0, _08019304 @ =sub_0801519C
	b _0801931A
	.align 2, 0
_08019304: .4byte sub_0801519C
_08019308:
	ands r1, r2
	cmp r1, #0
	bne _0801931C
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801931C
	ldr r0, _08019320 @ =sub_08019324
_0801931A:
	str r0, [r3, #0xc]
_0801931C:
	pop {r0}
	bx r0
	.align 2, 0
_08019320: .4byte sub_08019324

	thumb_func_start sub_08019324
sub_08019324: @ 0x08019324
	ldr r3, _08019348 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _0801934C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08019350 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0xf
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08019354 @ =sub_08019358
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019348: .4byte gRngVal
_0801934C: .4byte 0x00196225
_08019350: .4byte 0x3C6EF35F
_08019354: .4byte sub_08019358

	thumb_func_start sub_08019358
sub_08019358: @ 0x08019358
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019370
	ldr r0, _08019374 @ =sub_08019378
	str r0, [r2, #0xc]
_08019370:
	pop {r0}
	bx r0
	.align 2, 0
_08019374: .4byte sub_08019378

	thumb_func_start sub_08019378
sub_08019378: @ 0x08019378
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x40]
	ldr r2, _08019390 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08019398
	cmp r0, #0x16
	beq _08019398
	ldr r0, _08019394 @ =sub_0801519C
	b _080193AE
	.align 2, 0
_08019390: .4byte 0x00000103
_08019394: .4byte sub_0801519C
_08019398:
	ldr r0, [r1, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _080193AC
	ldr r0, _080193A8 @ =sub_0801519C
	b _080193AE
	.align 2, 0
_080193A8: .4byte sub_0801519C
_080193AC:
	ldr r0, _080193B4 @ =sub_080193B8
_080193AE:
	str r0, [r1, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080193B4: .4byte sub_080193B8

	thumb_func_start sub_080193B8
sub_080193B8: @ 0x080193B8
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080193E8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080193EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080193F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	ldr r0, _080193F4 @ =sub_080193F8
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_080193E8: .4byte gRngVal
_080193EC: .4byte 0x00196225
_080193F0: .4byte 0x3C6EF35F
_080193F4: .4byte sub_080193F8

	thumb_func_start sub_080193F8
sub_080193F8: @ 0x080193F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019410
	ldr r0, _08019414 @ =sub_08019378
	str r0, [r2, #0xc]
_08019410:
	pop {r0}
	bx r0
	.align 2, 0
_08019414: .4byte sub_08019378

	thumb_func_start sub_08019418
sub_08019418: @ 0x08019418
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _08019434 @ =sub_08019438
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019434: .4byte sub_08019438

	thumb_func_start sub_08019438
sub_08019438: @ 0x08019438
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	cmp r1, #0
	bne _08019470
	ldr r2, _08019464 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019468 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801946C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	b _08019476
	.align 2, 0
_08019464: .4byte gRngVal
_08019468: .4byte 0x00196225
_0801946C: .4byte 0x3C6EF35F
_08019470:
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
_08019476:
	adds r1, r3, #0
	adds r1, #0xea
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08019488 @ =sub_08017BA8
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019488: .4byte sub_08017BA8

	thumb_func_start sub_0801948C
sub_0801948C: @ 0x0801948C
	ldr r3, _080194B0 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _080194B4 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080194B8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x1e
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _080194BC @ =sub_080194C0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080194B0: .4byte gRngVal
_080194B4: .4byte 0x00196225
_080194B8: .4byte 0x3C6EF35F
_080194BC: .4byte sub_080194C0

	thumb_func_start sub_080194C0
sub_080194C0: @ 0x080194C0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080194D8
	ldr r0, _080194DC @ =sub_08017C24
	str r0, [r2, #0xc]
_080194D8:
	pop {r0}
	bx r0
	.align 2, 0
_080194DC: .4byte sub_08017C24

	thumb_func_start sub_080194E0
sub_080194E0: @ 0x080194E0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019500
	ldr r0, _08019504 @ =sub_08019508
	str r0, [r2, #0xc]
_08019500:
	pop {r0}
	bx r0
	.align 2, 0
_08019504: .4byte sub_08019508

	thumb_func_start sub_08019508
sub_08019508: @ 0x08019508
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	movs r1, #2
	adds r3, r2, #0
	adds r3, #0x9e
	orrs r1, r0
	strh r1, [r3]
	ldr r0, _08019520 @ =sub_08019524
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019520: .4byte sub_08019524

	thumb_func_start sub_08019524
sub_08019524: @ 0x08019524
	ldr r3, _08019548 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _0801954C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08019550 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x1e
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08019554 @ =sub_08019558
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019548: .4byte gRngVal
_0801954C: .4byte 0x00196225
_08019550: .4byte 0x3C6EF35F
_08019554: .4byte sub_08019558

	thumb_func_start sub_08019558
sub_08019558: @ 0x08019558
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801959A
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _0801957E
	cmp r0, #0x70
	blt _0801957E
	movs r1, #1
_0801957E:
	cmp r1, #0
	beq _0801958C
	ldr r0, _08019588 @ =sub_08019524
	b _08019598
	.align 2, 0
_08019588: .4byte sub_08019524
_0801958C:
	ldr r0, [r2, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _080195A0 @ =sub_0801519C
_08019598:
	str r0, [r2, #0xc]
_0801959A:
	pop {r0}
	bx r0
	.align 2, 0
_080195A0: .4byte sub_0801519C

	thumb_func_start sub_080195A4
sub_080195A4: @ 0x080195A4
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _080195C0 @ =sub_080195C4
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_080195C0: .4byte sub_080195C4

	thumb_func_start sub_080195C4
sub_080195C4: @ 0x080195C4
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #1
	beq _080195E8
	cmp r0, #1
	bgt _080195DA
	cmp r0, #0
	beq _080195E0
	b _080195F8
_080195DA:
	cmp r0, #2
	beq _080195F0
	b _080195F8
_080195E0:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #4
	b _080195FE
_080195E8:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x1e
	b _080195FE
_080195F0:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x3c
	b _080195FE
_080195F8:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x78
_080195FE:
	strh r0, [r1]
	ldr r0, _08019608 @ =sub_0801960C
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019608: .4byte sub_0801960C

	thumb_func_start sub_0801960C
sub_0801960C: @ 0x0801960C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019630
	ldr r0, _08019634 @ =sub_0801519C
	str r0, [r3, #0xc]
_08019630:
	pop {r0}
	bx r0
	.align 2, 0
_08019634: .4byte sub_0801519C

	thumb_func_start sub_08019638
sub_08019638: @ 0x08019638
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0xe4
	adds r0, #0xe
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, _08019660 @ =sub_08019664
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019660: .4byte sub_08019664

	thumb_func_start sub_08019664
sub_08019664: @ 0x08019664
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #1
	beq _08019688
	cmp r0, #1
	blo _08019680
	cmp r0, #2
	beq _08019690
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x96
	b _08019696
_08019680:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x1e
	b _08019696
_08019688:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x3c
	b _08019696
_08019690:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x64
_08019696:
	strh r0, [r1]
	ldr r0, _080196A0 @ =sub_08017DC4
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080196A0: .4byte sub_08017DC4

	thumb_func_start sub_080196A4
sub_080196A4: @ 0x080196A4
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0xe4
	adds r0, #0xe
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, _080196CC @ =sub_080196D0
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_080196CC: .4byte sub_080196D0

	thumb_func_start sub_080196D0
sub_080196D0: @ 0x080196D0
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080196E0 @ =sub_08017EA0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080196E0: .4byte sub_08017EA0

	thumb_func_start sub_080196E4
sub_080196E4: @ 0x080196E4
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #0xdd
	adds r2, r2, r3
	mov ip, r2
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r0, [r3, #0x40]
	ldr r1, _0801971C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08019724
	ldr r0, _08019720 @ =sub_0801519C
	b _08019726
	.align 2, 0
_0801971C: .4byte 0x00000103
_08019720: .4byte sub_0801519C
_08019724:
	ldr r0, _08019730 @ =sub_08017F88
_08019726:
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019730: .4byte sub_08017F88

	thumb_func_start sub_08019734
sub_08019734: @ 0x08019734
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r1, r0, #0
	adds r1, #0xbc
	strh r2, [r1]
	ldr r1, _08019750 @ =sub_08019758
	str r1, [r0]
	ldr r1, _08019754 @ =sub_08013A60
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08019750: .4byte sub_08019758
_08019754: .4byte sub_08013A60

	thumb_func_start sub_08019758
sub_08019758: @ 0x08019758
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801977A
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019780 @ =sub_08013804
	str r0, [r2]
_0801977A:
	pop {r0}
	bx r0
	.align 2, 0
_08019780: .4byte sub_08013804

	thumb_func_start sub_08019784
sub_08019784: @ 0x08019784
	strb r1, [r0, #0x1b]
	ldr r1, _08019790 @ =sub_08013B00
	str r1, [r0, #4]
	ldr r1, _08019794 @ =sub_08019798
	str r1, [r0]
	bx lr
	.align 2, 0
_08019790: .4byte sub_08013B00
_08019794: .4byte sub_08019798

	thumb_func_start sub_08019798
sub_08019798: @ 0x08019798
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080197B2
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0x10]
	ldr r0, _080197B8 @ =sub_08013804
	str r0, [r2]
_080197B2:
	pop {r0}
	bx r0
	.align 2, 0
_080197B8: .4byte sub_08013804

	thumb_func_start sub_080197BC
sub_080197BC: @ 0x080197BC
	adds r2, r0, #0
	adds r2, #0xbc
	strh r1, [r2]
	ldr r1, _080197D0 @ =sub_080197DC
	str r1, [r0]
	ldr r1, _080197D4 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _080197D8 @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080197D0: .4byte sub_080197DC
_080197D4: .4byte nullsub_104
_080197D8: .4byte nullsub_105

	thumb_func_start sub_080197DC
sub_080197DC: @ 0x080197DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xbe
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, _08019810 @ =sub_08019818
	str r0, [r2]
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _0801980C
	adds r0, r2, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	adds r1, #0x20
	strh r0, [r1]
	adds r1, #6
	movs r0, #0
	str r0, [r1]
	ldr r0, _08019814 @ =sub_08018F34
	str r0, [r2, #0xc]
_0801980C:
	pop {r0}
	bx r0
	.align 2, 0
_08019810: .4byte sub_08019818
_08019814: .4byte sub_08018F34

	thumb_func_start sub_08019818
sub_08019818: @ 0x08019818
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08019834
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019842
_08019834:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019848 @ =sub_08013804
	str r0, [r2]
_08019842:
	pop {r0}
	bx r0
	.align 2, 0
_08019848: .4byte sub_08013804

	thumb_func_start sub_0801984C
sub_0801984C: @ 0x0801984C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r1, r0, #0
	adds r1, #0xbc
	strh r2, [r1]
	ldr r1, _0801986C @ =sub_08019878
	str r1, [r0]
	ldr r1, _08019870 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _08019874 @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0801986C: .4byte sub_08019878
_08019870: .4byte nullsub_104
_08019874: .4byte nullsub_105

	thumb_func_start sub_08019878
sub_08019878: @ 0x08019878
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x40]
	ldr r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019890
	ldr r0, _0801988C @ =sub_080198C4
	b _080198B6
	.align 2, 0
_0801988C: .4byte sub_080198C4
_08019890:
	ldr r4, _080198AC @ =0x00000103
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080198B4
	cmp r0, #0x17
	beq _080198B4
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080198B4
	ldr r0, _080198B0 @ =sub_08019914
	b _080198B6
	.align 2, 0
_080198AC: .4byte 0x00000103
_080198B0: .4byte sub_08019914
_080198B4:
	ldr r0, _080198C0 @ =sub_0801995C
_080198B6:
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080198C0: .4byte sub_0801995C

	thumb_func_start sub_080198C4
sub_080198C4: @ 0x080198C4
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _080198D8 @ =sub_0801737C
	str r1, [r0, #0xc]
	ldr r1, _080198DC @ =sub_080198E0
	str r1, [r0]
	bx lr
	.align 2, 0
_080198D8: .4byte sub_0801737C
_080198DC: .4byte sub_080198E0

	thumb_func_start sub_080198E0
sub_080198E0: @ 0x080198E0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _080198F6
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08019906
_080198F6:
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801990A
_08019906:
	ldr r0, _08019910 @ =sub_0801995C
	str r0, [r2]
_0801990A:
	pop {r0}
	bx r0
	.align 2, 0
_08019910: .4byte sub_0801995C

	thumb_func_start sub_08019914
sub_08019914: @ 0x08019914
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019928 @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _0801992C @ =sub_08019930
	str r1, [r0]
	bx lr
	.align 2, 0
_08019928: .4byte sub_0801519C
_0801992C: .4byte sub_08019930

	thumb_func_start sub_08019930
sub_08019930: @ 0x08019930
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019950
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019954
_08019950:
	ldr r0, _08019958 @ =sub_0801995C
	str r0, [r2]
_08019954:
	pop {r0}
	bx r0
	.align 2, 0
_08019958: .4byte sub_0801995C

	thumb_func_start sub_0801995C
sub_0801995C: @ 0x0801995C
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xbc
	ldrh r0, [r2]
	adds r0, #5
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0xbe
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _0801998C @ =0x0000FFFF
	strh r0, [r1]
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xe0
	strh r1, [r0]
	ldr r0, _08019990 @ =sub_0801745C
	str r0, [r3, #0xc]
	ldr r0, _08019994 @ =sub_08019998
	str r0, [r3]
	bx lr
	.align 2, 0
_0801998C: .4byte 0x0000FFFF
_08019990: .4byte sub_0801745C
_08019994: .4byte sub_08019998

	thumb_func_start sub_08019998
sub_08019998: @ 0x08019998
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0
	beq _080199B4
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080199C2
_080199B4:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _080199C8 @ =sub_08013804
	str r0, [r2]
_080199C2:
	pop {r0}
	bx r0
	.align 2, 0
_080199C8: .4byte sub_08013804

	thumb_func_start sub_080199CC
sub_080199CC: @ 0x080199CC
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #4
	strh r1, [r2]
	ldr r1, _080199E4 @ =sub_08013924
	str r1, [r0]
	ldr r1, _080199E8 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _080199EC @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080199E4: .4byte sub_08013924
_080199E8: .4byte nullsub_104
_080199EC: .4byte nullsub_105

	thumb_func_start sub_080199F0
sub_080199F0: @ 0x080199F0
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A04 @ =sub_0801737C
	str r1, [r0, #0xc]
	ldr r1, _08019A08 @ =sub_08019A0C
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A04: .4byte sub_0801737C
_08019A08: .4byte sub_08019A0C

	thumb_func_start sub_08019A0C
sub_08019A0C: @ 0x08019A0C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _08019A22
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08019A32
_08019A22:
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019A36
_08019A32:
	ldr r0, _08019A3C @ =sub_08013924
	str r0, [r2]
_08019A36:
	pop {r0}
	bx r0
	.align 2, 0
_08019A3C: .4byte sub_08013924

	thumb_func_start sub_08019A40
sub_08019A40: @ 0x08019A40
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A54 @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _08019A58 @ =sub_08019A5C
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A54: .4byte sub_0801519C
_08019A58: .4byte sub_08019A5C

	thumb_func_start sub_08019A5C
sub_08019A5C: @ 0x08019A5C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019A7C
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019A80
_08019A7C:
	ldr r0, _08019A84 @ =sub_08013924
	str r0, [r2]
_08019A80:
	pop {r0}
	bx r0
	.align 2, 0
_08019A84: .4byte sub_08013924

	thumb_func_start sub_08019A88
sub_08019A88: @ 0x08019A88
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A9C @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _08019AA0 @ =sub_08019AA4
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A9C: .4byte sub_0801519C
_08019AA0: .4byte sub_08019AA4

	thumb_func_start sub_08019AA4
sub_08019AA4: @ 0x08019AA4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08019AC4
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019AC8
_08019AC4:
	ldr r0, _08019ACC @ =sub_08013924
	str r0, [r2]
_08019AC8:
	pop {r0}
	bx r0
	.align 2, 0
_08019ACC: .4byte sub_08013924

	thumb_func_start sub_08019AD0
sub_08019AD0: @ 0x08019AD0
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0xbe
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	adds r2, #0x20
	ldr r0, _08019AEC @ =0x0000FFFF
	strh r0, [r2]
	ldr r0, _08019AF0 @ =sub_08017144
	str r0, [r1, #0xc]
	ldr r0, _08019AF4 @ =sub_08019AF8
	str r0, [r1]
	bx lr
	.align 2, 0
_08019AEC: .4byte 0x0000FFFF
_08019AF0: .4byte sub_08017144
_08019AF4: .4byte sub_08019AF8

	thumb_func_start sub_08019AF8
sub_08019AF8: @ 0x08019AF8
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08019B14
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019B22
_08019B14:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019B28 @ =sub_08013804
	str r0, [r2]
_08019B22:
	pop {r0}
	bx r0
	.align 2, 0
_08019B28: .4byte sub_08013804

	thumb_func_start nullsub_106
nullsub_106: @ 0x08019B2C
	bx lr
	.align 2, 0

	thumb_func_start sub_08019B30
sub_08019B30: @ 0x08019B30
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08019B78
	adds r4, r3, #0
	adds r4, #0xcc
	ldrh r0, [r4]
	cmp r0, #0
	beq _08019B4C
	subs r0, #1
	strh r0, [r4]
_08019B4C:
	ldr r1, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08019B78
	adds r2, r3, #0
	adds r2, #0x3f
	ldrb r0, [r3, #0x1a]
	ldrb r2, [r2]
	cmp r0, r2
	beq _08019B6E
	ldrb r0, [r3, #0x1b]
	cmp r0, #0xff
	beq _08019B6E
	ldrh r0, [r4]
	cmp r0, #0
	bne _08019B78
_08019B6E:
	movs r0, #1
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08019B80 @ =sub_0801852C
	str r0, [r3, #8]
_08019B78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019B80: .4byte sub_0801852C

	thumb_func_start sub_08019B84
sub_08019B84: @ 0x08019B84
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08019BB4
	ldr r2, _08019BA8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019BAC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019BB0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	b _08019BC6
	.align 2, 0
_08019BA8: .4byte gRngVal
_08019BAC: .4byte 0x00196225
_08019BB0: .4byte 0x3C6EF35F
_08019BB4:
	ldr r2, _08019BDC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019BE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019BE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
_08019BC6:
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, _08019BE8 @ =sub_0801852C
	str r0, [r3, #8]
	ldr r0, _08019BEC @ =sub_08013D0C
	str r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08019BDC: .4byte gRngVal
_08019BE0: .4byte 0x00196225
_08019BE4: .4byte 0x3C6EF35F
_08019BE8: .4byte sub_0801852C
_08019BEC: .4byte sub_08013D0C

	thumb_func_start sub_08019BF0
sub_08019BF0: @ 0x08019BF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080103BC
	cmp r0, #0
	bne _08019C08
	ldr r0, _08019C04 @ =sub_080184DC
	str r0, [r4, #4]
	b _08019C44
	.align 2, 0
_08019C04: .4byte sub_080184DC
_08019C08:
	ldr r0, [r4, #0x44]
	bl sub_0800EEBC
	strb r0, [r4, #0x1b]
	ldr r2, [r4, #0x44]
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r2, #0x44]
	str r0, [r1]
	ldr r0, [r4, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r4, #0x1a]
	ldr r2, [r0, #0x14]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r1, [r4, #0x1b]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08010144
_08019C44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019C4C
sub_08019C4C: @ 0x08019C4C
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08019C7C
	ldr r2, _08019C70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019C74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019C78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	b _08019C8E
	.align 2, 0
_08019C70: .4byte gRngVal
_08019C74: .4byte 0x00196225
_08019C78: .4byte 0x3C6EF35F
_08019C7C:
	ldr r2, _08019CA4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019CA8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019CAC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
_08019C8E:
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, _08019CB0 @ =sub_0801852C
	str r0, [r3, #8]
	ldr r0, _08019CB4 @ =sub_08014B28
	str r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08019CA4: .4byte gRngVal
_08019CA8: .4byte 0x00196225
_08019CAC: .4byte 0x3C6EF35F
_08019CB0: .4byte sub_0801852C
_08019CB4: .4byte sub_08014B28
