	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	@ maybe it's a few files, but I'm putting them together because of xrefs

	thumb_func_start sub_080A14FC
sub_080A14FC: @ 0x080A14FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A1586
	adds r6, r4, #0
	adds r6, #0x9e
	ldrb r5, [r6]
	cmp r5, #2
	beq _080A1550
	cmp r5, #2
	bgt _080A151E
	cmp r5, #0
	beq _080A1524
	b _080A1586
_080A151E:
	cmp r5, #3
	beq _080A1580
	b _080A1586
_080A1524:
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080A154C @ =sub_080A1344
	str r0, [r4, #0x78]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A1544
	rsbs r0, r3, #0
	strh r0, [r2]
_080A1544:
	movs r0, #0
	strb r0, [r6]
	b _080A1586
	.align 2, 0
_080A154C: .4byte sub_080A1344
_080A1550:
	ldr r2, _080A157C @ =sub_080A1430
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1572
	rsbs r0, r3, #0
	strh r0, [r2]
_080A1572:
	movs r0, #0x3c
	strh r0, [r4, #4]
	strb r5, [r6]
	b _080A1586
	.align 2, 0
_080A157C: .4byte sub_080A1430
_080A1580:
	adds r0, r4, #0
	bl sub_080A2710
_080A1586:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A158C
sub_080A158C: @ 0x080A158C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A1620 @ =sub_080A163C
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _080A1624 @ =gKirbys
	ldr r0, _080A1628 @ =gUnk_0203AD3C
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
	bne _080A1618
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A15DA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A1618
_080A15DA:
	ldr r1, _080A162C @ =gUnk_08D60FA4
	ldr r4, _080A1630 @ =gSongTable
	ldr r2, _080A1634 @ =0x0000045C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A1600
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A1618
_080A1600:
	cmp r3, #0
	beq _080A1612
	ldr r0, _080A1638 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A1618
_080A1612:
	movs r0, #0x8b
	bl m4aSongNumStart
_080A1618:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1620: .4byte sub_080A163C
_080A1624: .4byte gKirbys
_080A1628: .4byte gUnk_0203AD3C
_080A162C: .4byte gUnk_08D60FA4
_080A1630: .4byte gSongTable
_080A1634: .4byte 0x0000045C
_080A1638: .4byte gUnk_0203AD10

	thumb_func_start sub_080A163C
sub_080A163C: @ 0x080A163C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080A1670
	ldr r2, _080A16EC @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A16F0 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4c
	strb r5, [r0]
_080A1670:
	ldrb r0, [r4, #1]
	cmp r0, #0x18
	beq _080A167A
	cmp r0, #0x30
	bne _080A16E4
_080A167A:
	ldr r1, _080A16F4 @ =gKirbys
	ldr r0, _080A16F8 @ =gUnk_0203AD3C
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
	bne _080A16E4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A16A6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A16E4
_080A16A6:
	ldr r1, _080A16FC @ =gUnk_08D60FA4
	ldr r4, _080A1700 @ =gSongTable
	ldr r2, _080A1704 @ =0x0000045C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A16CC
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A16E4
_080A16CC:
	cmp r3, #0
	beq _080A16DE
	ldr r0, _080A1708 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A16E4
_080A16DE:
	movs r0, #0x8b
	bl m4aSongNumStart
_080A16E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A16EC: .4byte sub_080A250C
_080A16F0: .4byte 0xFFFFF7FF
_080A16F4: .4byte gKirbys
_080A16F8: .4byte gUnk_0203AD3C
_080A16FC: .4byte gUnk_08D60FA4
_080A1700: .4byte gSongTable
_080A1704: .4byte 0x0000045C
_080A1708: .4byte gUnk_0203AD10

	thumb_func_start sub_080A170C
sub_080A170C: @ 0x080A170C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r1, [r5, #8]
	movs r0, #4
	mov r8, r0
	orrs r1, r0
	str r1, [r5, #8]
	ldrb r0, [r5, #1]
	movs r7, #7
	ands r7, r0
	cmp r7, #0
	bne _080A17D8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080A173A
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080A173A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	ldr r4, _080A17CC @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A17D8
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A17D8
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A17D8
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A17D8
	ldr r4, _080A17D0 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A17D8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _080A17F8
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, _080A17D4 @ =sub_080A265C
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	b _080A17F8
	.align 2, 0
_080A17CC: .4byte gCurLevelInfo
_080A17D0: .4byte gUnk_082D88B8
_080A17D4: .4byte sub_080A265C
_080A17D8:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A17F8
	ldr r0, [r5, #8]
	eors r0, r2
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A17F8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1804
sub_080A1804: @ 0x080A1804
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A184C
	ldrb r0, [r6]
	cmp r0, #0
	bne _080A184C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080A184C
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080A184C
	cmp r0, #0x7a
	bhi _080A184C
	movs r0, #0x88
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r7]
	cmp r0, #0
	bne _080A184C
	ldr r4, [r6, #8]
	ldr r0, _080A1850 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080A1854
_080A184C:
	movs r0, #0
	b _080A1888
	.align 2, 0
_080A1850: .4byte 0x03800B00
_080A1854:
	ldr r2, _080A1890 @ =sub_080A1898
	adds r0, r5, #0
	movs r1, #0x10
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, _080A1894 @ =gUnk_08352F84
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	str r6, [r5, #0x6c]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #3
	strb r0, [r1]
	movs r0, #1
_080A1888:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A1890: .4byte sub_080A1898
_080A1894: .4byte gUnk_08352F84

	thumb_func_start sub_080A1898
sub_080A1898: @ 0x080A1898
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080A18D4
	ldr r2, _080A194C @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A1950 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4c
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x11
	strb r0, [r1]
_080A18D4:
	ldrb r0, [r4, #1]
	cmp r0, #0x46
	bne _080A1946
	ldr r1, _080A1954 @ =gKirbys
	ldr r0, _080A1958 @ =gUnk_0203AD3C
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
	bne _080A1946
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A1906
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A1946
_080A1906:
	ldr r1, _080A195C @ =gUnk_08D60FA4
	ldr r4, _080A1960 @ =gSongTable
	ldr r2, _080A1964 @ =0x00000A54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A192C
	movs r1, #0xa5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A1946
_080A192C:
	cmp r3, #0
	beq _080A193E
	ldr r0, _080A1968 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A1946
_080A193E:
	movs r0, #0xa5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080A1946:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A194C: .4byte sub_080A250C
_080A1950: .4byte 0xFFFFF7FF
_080A1954: .4byte gKirbys
_080A1958: .4byte gUnk_0203AD3C
_080A195C: .4byte gUnk_08D60FA4
_080A1960: .4byte gSongTable
_080A1964: .4byte 0x00000A54
_080A1968: .4byte gUnk_0203AD10

	thumb_func_start sub_080A196C
sub_080A196C: @ 0x080A196C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A198C
	ldr r0, _080A1988 @ =0x000077FF
	cmp r2, r0
	ble _080A1994
	b _080A19A0
	.align 2, 0
_080A1988: .4byte 0x000077FF
_080A198C:
	subs r1, r1, r0
	ldr r0, _080A199C @ =0x000077FF
	cmp r1, r0
	bgt _080A19A0
_080A1994:
	adds r0, r4, #0
	bl sub_080A2774
	b _080A19D4
	.align 2, 0
_080A199C: .4byte 0x000077FF
_080A19A0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080A19D4
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A19CA
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A19D2
_080A19CA:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A19D2:
	str r0, [r4, #8]
_080A19D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A19DC
sub_080A19DC: @ 0x080A19DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A19FA
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #6
	b _080A1A00
_080A19FA:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #6
_080A1A00:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080A1A24 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A1A28 @ =gUnk_020229E0
	mov r8, r6
	ldr r7, _080A1A2C @ =gRngVal
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	b _080A1A44
	.align 2, 0
_080A1A24: .4byte gUnk_020229D4
_080A1A28: .4byte gUnk_020229E0
_080A1A2C: .4byte gRngVal
_080A1A30:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A1A4C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A1A44:
	cmp r0, #0
	bne _080A1A30
	orrs r2, r3
	str r2, [r1]
_080A1A4C:
	adds r3, r4, #0
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, r8
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x24
	strb r1, [r0, #1]
	movs r2, #0
	mov r1, sl
	strh r1, [r0, #6]
	mov r6, ip
	strh r6, [r0, #8]
	strb r2, [r0, #2]
	movs r1, #0x1f
	strb r1, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	adds r4, r0, #0
	ldr r1, [r7]
	ldr r0, _080A1A8C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1A90 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	lsrs r2, r0, #0x10
	ldr r0, _080A1A94 @ =0x00005554
	cmp r2, r0
	bhi _080A1A98
	movs r1, #0
	b _080A1AA2
	.align 2, 0
_080A1A8C: .4byte 0x00196225
_080A1A90: .4byte 0x3C6EF35F
_080A1A94: .4byte 0x00005554
_080A1A98:
	ldr r0, _080A1AE4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080A1AA2
	movs r1, #1
_080A1AA2:
	adds r1, #0xab
	movs r0, #0
	strb r1, [r4, #0xc]
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	add r1, r8
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	strb r0, [r1, #0x10]
	movs r2, #0
	strh r0, [r1, #0x22]
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x1e]
	strh r0, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1AE4: .4byte 0x0000AAA9

	thumb_func_start CreatePrankItem
CreatePrankItem: @ 0x080A1AE8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A1B1C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A1B20 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A1B24
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A1B2C
	.align 2, 0
_080A1B1C: .4byte ObjectMain
_080A1B20: .4byte ObjectDestroy
_080A1B24:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A1B2C:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r6, r5, #0
	adds r6, #0x82
	ldrb r0, [r6]
	cmp r0, #0xab
	bne _080A1B58
	ldr r0, [r5, #0x68]
	orrs r0, r2
	str r0, [r5, #0x68]
_080A1B58:
	ldrb r0, [r6]
	cmp r0, #0xad
	bne _080A1B66
	ldr r0, [r5, #8]
	ldr r1, _080A1BF0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #8]
_080A1B66:
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r4, #4
	rsbs r4, r4, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1BBE
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
_080A1BBE:
	adds r0, r5, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080A1BF4 @ =sub_0809F840
	str r0, [r5, #0x7c]
	ldrb r0, [r6]
	cmp r0, #0xad
	bne _080A1BF8
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080A1BF8
	adds r0, r5, #0
	bl sub_080A2940
	b _080A1C12
	.align 2, 0
_080A1BF0: .4byte 0xFFFFFEFF
_080A1BF4: .4byte sub_0809F840
_080A1BF8:
	ldr r2, _080A1C1C @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_080A1C12:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1C1C: .4byte gUnk_08351648

	thumb_func_start sub_080A1C20
sub_080A1C20: @ 0x080A1C20
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	adds r0, #0xac
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	ldr r2, _080A1C7C @ =sub_080A1DE4
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r2, [r4, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r2, r1
	cmp r0, #0
	bge _080A1C4A
	subs r0, r1, r2
_080A1C4A:
	asrs r0, r0, #8
	cmp r0, #0x31
	bgt _080A1C8C
	ldr r2, _080A1C80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1C84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1C88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080A1D2C
	.align 2, 0
_080A1C7C: .4byte sub_080A1DE4
_080A1C80: .4byte gRngVal
_080A1C84: .4byte 0x00196225
_080A1C88: .4byte 0x3C6EF35F
_080A1C8C:
	cmp r0, #0x63
	bgt _080A1CC8
	ldr r2, _080A1CBC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1CC0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1CC4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080A1D2C
	.align 2, 0
_080A1CBC: .4byte gRngVal
_080A1CC0: .4byte 0x00196225
_080A1CC4: .4byte 0x3C6EF35F
_080A1CC8:
	cmp r0, #0x95
	bgt _080A1D04
	ldr r2, _080A1CF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1CFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1D00 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080A1D2C
	.align 2, 0
_080A1CF8: .4byte gRngVal
_080A1CFC: .4byte 0x00196225
_080A1D00: .4byte 0x3C6EF35F
_080A1D04:
	ldr r2, _080A1DB8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1DBC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1DC0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
_080A1D2C:
	strh r0, [r2]
	adds r2, r1, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1D40
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080A1D40:
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r1, _080A1DC4 @ =gKirbys
	ldr r0, _080A1DC8 @ =gUnk_0203AD3C
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
	bne _080A1DB2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A1D76
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A1DB2
_080A1D76:
	ldr r1, _080A1DCC @ =gUnk_08D60FA4
	ldr r4, _080A1DD0 @ =gSongTable
	ldr r2, _080A1DD4 @ =0x00000A4C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A1D9A
	ldr r1, _080A1DD8 @ =0x00000A48
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A1DB2
_080A1D9A:
	cmp r3, #0
	beq _080A1DAC
	ldr r0, _080A1DDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A1DB2
_080A1DAC:
	ldr r0, _080A1DE0 @ =0x00000149
	bl m4aSongNumStart
_080A1DB2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1DB8: .4byte gRngVal
_080A1DBC: .4byte 0x00196225
_080A1DC0: .4byte 0x3C6EF35F
_080A1DC4: .4byte gKirbys
_080A1DC8: .4byte gUnk_0203AD3C
_080A1DCC: .4byte gUnk_08D60FA4
_080A1DD0: .4byte gSongTable
_080A1DD4: .4byte 0x00000A4C
_080A1DD8: .4byte 0x00000A48
_080A1DDC: .4byte gUnk_0203AD10
_080A1DE0: .4byte 0x00000149

	thumb_func_start sub_080A1DE4
sub_080A1DE4: @ 0x080A1DE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A1E0A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A1E18
	b _080A1E14
_080A1E0A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A1E18
_080A1E14:
	movs r0, #0
	strh r0, [r1]
_080A1E18:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xad
	bne _080A1E66
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A1E38
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080A1E38:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1E66
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
	b _080A1E6C
_080A1E66:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080A1E6C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1E74
sub_080A1E74: @ 0x080A1E74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r5, #7
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080A1E98
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080A1E98:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A1EEE
	ldr r2, _080A1EC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1ECC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1ED0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _080A1ED8
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
	ldr r0, _080A1ED4 @ =sub_080A290C
	str r0, [r4, #0x78]
	b _080A1EEE
	.align 2, 0
_080A1EC8: .4byte gRngVal
_080A1ECC: .4byte 0x00196225
_080A1ED0: .4byte 0x3C6EF35F
_080A1ED4: .4byte sub_080A290C
_080A1ED8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080A1EEE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A1EF4
sub_080A1EF4: @ 0x080A1EF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1F10
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x14
	b _080A1F16
_080A1F10:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x14
_080A1F16:
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080A1F34 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A1F38 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080A1F50
	.align 2, 0
_080A1F34: .4byte gUnk_020229D4
_080A1F38: .4byte gUnk_020229E0
_080A1F3C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A1F58
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A1F50:
	cmp r0, #0
	bne _080A1F3C
	orrs r2, r3
	str r2, [r1]
_080A1F58:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xae
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1FB8
sub_080A1FB8: @ 0x080A1FB8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080A1FE8 @ =sub_080A2080
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A1FEC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080A1FF4
	.align 2, 0
_080A1FE8: .4byte sub_080A2080
_080A1FEC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080A1FF4:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080A207C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080A2042
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080A2042:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xe
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A207C: .4byte gUnk_03000510

	thumb_func_start sub_080A2080
sub_080A2080: @ 0x080A2080
	push {r4, r5, r6, lr}
	ldr r0, _080A209C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A20A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A20A8
	.align 2, 0
_080A209C: .4byte gCurTask
_080A20A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A20A8:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080A20FC @ =0x0000FFFF
	cmp r2, r4
	beq _080A20CA
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080A20CA
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080A20CA:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A219E
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2100
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080A2108
	.align 2, 0
_080A20FC: .4byte 0x0000FFFF
_080A2100:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2108:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A219E
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A212C
	ldr r0, _080A2128 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080A219E
	.align 2, 0
_080A2128: .4byte 0xFFFBFFFF
_080A212C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080A219E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080A219E
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080A2164
	ldr r2, _080A215C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080A2160 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080A2166
	.align 2, 0
_080A215C: .4byte gCurLevelInfo
_080A2160: .4byte 0x0000065E
_080A2164:
	movs r1, #0xff
_080A2166:
	cmp r1, #0xff
	beq _080A219E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080A21A4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080A21A8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080A219E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A21A4: .4byte gUnk_02022EB0
_080A21A8: .4byte gUnk_02022F50

	thumb_func_start sub_080A21AC
sub_080A21AC: @ 0x080A21AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A21C8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0xc
	b _080A21CE
_080A21C8:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0xc
_080A21CE:
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #4
	mov ip, r0
	movs r4, #0
	ldr r1, _080A21F0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A21F4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080A220C
	.align 2, 0
_080A21F0: .4byte gUnk_020229D4
_080A21F4: .4byte gUnk_020229E0
_080A21F8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A2214
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A220C:
	cmp r0, #0
	bne _080A21F8
	orrs r2, r3
	str r2, [r1]
_080A2214:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xaf
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBananaPeel
CreateBananaPeel: @ 0x080A2274
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A22A8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A22AC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A22B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080A22B8
	.align 2, 0
_080A22A8: .4byte ObjectMain
_080A22AC: .4byte ObjectDestroy
_080A22B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080A22B8:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r3, [r5, #0x5c]
	movs r4, #8
	rsbs r4, r4, #0
	orrs r3, r4
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r3, r0
	ldr r2, [r5, #0x68]
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r2, r0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #8]
	ands r2, r4
	movs r0, #7
	orrs r2, r0
	str r2, [r5, #0x68]
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r3, r0
	str r3, [r5, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A2342
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
_080A2342:
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080A2378 @ =sub_080A29F0
	str r0, [r5, #0x7c]
	ldr r2, _080A237C @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2378: .4byte sub_080A29F0
_080A237C: .4byte gUnk_08351648

	thumb_func_start sub_080A2380
sub_080A2380: @ 0x080A2380
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A241A
	ldr r4, [r5, #0x70]
	ldr r2, _080A2420 @ =sub_080A29A0
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r3, r5, #0
	adds r3, #0x50
	movs r7, #0
	movs r0, #0x80
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, _080A2424 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A2428 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A242C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A23CE
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080A23CE:
	cmp r4, #0
	beq _080A2408
	adds r6, r4, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #2
	bhi _080A2408
	ldr r2, _080A2430 @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A2434 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x11
	strb r0, [r6]
_080A2408:
	ldr r0, [r5, #8]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _080A2438 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #8]
_080A241A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2420: .4byte sub_080A29A0
_080A2424: .4byte gRngVal
_080A2428: .4byte 0x00196225
_080A242C: .4byte 0x3C6EF35F
_080A2430: .4byte sub_080A250C
_080A2434: .4byte 0xFFFFF7FF
_080A2438: .4byte 0xFFFBFFFF

	thumb_func_start sub_080A243C
sub_080A243C: @ 0x080A243C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A2458 @ =sub_080A28BC
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2458: .4byte sub_080A28BC

	thumb_func_start sub_080A245C
sub_080A245C: @ 0x080A245C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A248C @ =sub_080A250C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A2490 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, #0x9e
	movs r0, #2
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A248C: .4byte sub_080A250C
_080A2490: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A2494
sub_080A2494: @ 0x080A2494
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A24AC @ =sub_080A2970
	movs r1, #0
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A24AC: .4byte sub_080A2970

	thumb_func_start sub_080A24B0
sub_080A24B0: @ 0x080A24B0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A24D2
	movs r0, #0x3c
	strh r0, [r2, #4]
	adds r0, r2, #0
	bl sub_080A24D8
_080A24D2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A24D8
sub_080A24D8: @ 0x080A24D8
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080A2508 @ =sub_080A1344
	str r0, [r2, #0x78]
	adds r3, r2, #0
	adds r3, #0x50
	movs r4, #0x80
	strh r4, [r3]
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A24FA
	rsbs r0, r4, #0
	strh r0, [r3]
_080A24FA:
	adds r1, r2, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2508: .4byte sub_080A1344

	thumb_func_start sub_080A250C
sub_080A250C: @ 0x080A250C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2530
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_080A2534
_080A2530:
	pop {r0}
	bx r0

	thumb_func_start sub_080A2534
sub_080A2534: @ 0x080A2534
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A256C @ =sub_080A1430
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2558
	rsbs r0, r3, #0
	strh r0, [r2]
_080A2558:
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A256C: .4byte sub_080A1430

	thumb_func_start sub_080A2570
sub_080A2570: @ 0x080A2570
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080A2584
	adds r0, r4, #0
	bl sub_080A2800
	b _080A25D6
_080A2584:
	ldr r2, _080A25C8 @ =sub_080A25DC
	adds r0, r4, #0
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A25CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A25D4
	.align 2, 0
_080A25C8: .4byte sub_080A25DC
_080A25CC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A25D4:
	str r0, [r4, #8]
_080A25D6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A25DC
sub_080A25DC: @ 0x080A25DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x19
	bne _080A25EC
	adds r0, r4, #0
	bl sub_080A19DC
_080A25EC:
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080A261C
	ldr r2, _080A2624 @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A2628 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4c
	strb r5, [r0]
_080A261C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2624: .4byte sub_080A250C
_080A2628: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A262C
sub_080A262C: @ 0x080A262C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A2654
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #3
	strb r0, [r3]
	ldr r0, _080A2658 @ =sub_080A265C
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080A2654:
	pop {r0}
	bx r0
	.align 2, 0
_080A2658: .4byte sub_080A265C

	thumb_func_start sub_080A265C
sub_080A265C: @ 0x080A265C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A2670
	adds r0, r2, #0
	bl sub_080A2674
_080A2670:
	pop {r0}
	bx r0

	thumb_func_start sub_080A2674
sub_080A2674: @ 0x080A2674
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080A26B0 @ =sub_080A26B4
	str r0, [r2, #0x78]
	adds r3, r2, #0
	adds r3, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3]
	subs r1, #0x31
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A26AC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080A26AC:
	pop {r0}
	bx r0
	.align 2, 0
_080A26B0: .4byte sub_080A26B4

	thumb_func_start sub_080A26B4
sub_080A26B4: @ 0x080A26B4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A26D8
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A26D8:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A26E8
	adds r0, r2, #0
	bl sub_080A26F0
_080A26E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A26F0
sub_080A26F0: @ 0x080A26F0
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #7
	strb r0, [r3]
	ldr r0, _080A270C @ =sub_080A14FC
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_080A270C: .4byte sub_080A14FC

	thumb_func_start sub_080A2710
sub_080A2710: @ 0x080A2710
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A2744 @ =sub_080A170C
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2734
	rsbs r0, r3, #0
	strh r0, [r2]
_080A2734:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #3
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2744: .4byte sub_080A170C

	thumb_func_start sub_080A2748
sub_080A2748: @ 0x080A2748
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A2770 @ =sub_080A196C
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2770: .4byte sub_080A196C

	thumb_func_start sub_080A2774
sub_080A2774: @ 0x080A2774
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A279C @ =sub_080A27A0
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
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
_080A279C: .4byte sub_080A27A0

	thumb_func_start sub_080A27A0
sub_080A27A0: @ 0x080A27A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x30
	bne _080A27B0
	adds r0, r4, #0
	bl sub_080A21AC
_080A27B0:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A27C6
	ldr r0, _080A27CC @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_080A27D0
_080A27C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A27CC: .4byte 0xFFFFFDFF

	thumb_func_start sub_080A27D0
sub_080A27D0: @ 0x080A27D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A27F0 @ =sub_080A27F4
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
_080A27F0: .4byte sub_080A27F4

	thumb_func_start sub_080A27F4
sub_080A27F4: @ 0x080A27F4
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A2800
sub_080A2800: @ 0x080A2800
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A283C @ =sub_080A2850
	movs r1, #0xb
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
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2840
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A2848
	.align 2, 0
_080A283C: .4byte sub_080A2850
_080A2840:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2848:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A2850
sub_080A2850: @ 0x080A2850
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x30
	bne _080A286A
	adds r0, r4, #0
	bl sub_080A1EF4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A286A:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A287A
	adds r0, r4, #0
	bl sub_080A2880
_080A287A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A2880
sub_080A2880: @ 0x080A2880
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A289C @ =sub_080A28A0
	movs r1, #0xc
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A289C: .4byte sub_080A28A0

	thumb_func_start sub_080A28A0
sub_080A28A0: @ 0x080A28A0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x58
	ble _080A28B8
	adds r1, #0x83
	movs r0, #0xf
	strb r0, [r1]
_080A28B8:
	pop {r0}
	bx r0

	thumb_func_start sub_080A28BC
sub_080A28BC: @ 0x080A28BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	ldr r0, [r4, #8]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xad
	bne _080A28F2
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A28F2
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080A28F2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1b
	ble _080A2906
	adds r0, r4, #0
	bl sub_080A1C20
_080A2906:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A290C
sub_080A290C: @ 0x080A290C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A293A
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080A293A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A2940
sub_080A2940: @ 0x080A2940
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A296C @ =sub_080A1E74
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x20
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A296C: .4byte sub_080A1E74

	thumb_func_start sub_080A2970
sub_080A2970: @ 0x080A2970
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _080A2998
	ldr r1, [r3, #0x6c]
	ldr r0, _080A299C @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r1, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A2998
	adds r0, r3, #0
	bl sub_080A2380
_080A2998:
	pop {r0}
	bx r0
	.align 2, 0
_080A299C: .4byte 0xFFFBFFFF

	thumb_func_start sub_080A29A0
sub_080A29A0: @ 0x080A29A0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080A29BC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A29BC:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A29E0
	ldr r0, [r4, #8]
	ldr r1, _080A29E8 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080A29EC @ =sub_080A2970
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080A29E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A29E8: .4byte 0xFFFFFDFF
_080A29EC: .4byte sub_080A2970

	thumb_func_start sub_080A29F0
sub_080A29F0: @ 0x080A29F0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x70]
	cmp r0, #0
	beq _080A2A0A
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080A2A0A
	movs r0, #0
	str r0, [r2, #0x70]
_080A2A0A:
	pop {r0}
	bx r0
	.align 2, 0
