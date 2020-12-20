	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateWheelie
CreateWheelie: @ 0x080BC4C4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080BC4F8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BC4FC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BC500
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BC508
	.align 2, 0
_080BC4F8: .4byte ObjectMain
_080BC4FC: .4byte ObjectDestroy
_080BC500:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BC508:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BC528
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080BC530
_080BC528:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BC530:
	str r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080BC590 @ =gUnk_08351648
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
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BC590: .4byte gUnk_08351648

	thumb_func_start sub_080BC594
sub_080BC594: @ 0x080BC594
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BC5C8 @ =sub_080BC604
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080BC5D2
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC5CC
	movs r0, #0x80
	lsls r0, r0, #2
	b _080BC5D0
	.align 2, 0
_080BC5C8: .4byte sub_080BC604
_080BC5CC:
	movs r0, #0xc0
	lsls r0, r0, #1
_080BC5D0:
	strh r0, [r1]
_080BC5D2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC5E6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BC5E6:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bls _080BC5FA
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080BC5FA:
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC604
sub_080BC604: @ 0x080BC604
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bls _080BC626
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	b _080BC708
_080BC626:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080BC644
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080BC644
	adds r0, r4, #0
	bl sub_080BC720
	b _080BC708
_080BC644:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC65A
	adds r0, r4, #0
	bl sub_080BC9B0
	b _080BC708
_080BC65A:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BC66A
	adds r0, r4, #0
	bl sub_080BCBB8
	b _080BC708
_080BC66A:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BC708
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BC708
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC692
	movs r0, #0xf
	b _080BC694
_080BC692:
	movs r0, #0x1e
_080BC694:
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	ble _080BC6B8
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC6C4
	b _080BC6C2
_080BC6B8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BC6C4
_080BC6C2:
	movs r5, #1
_080BC6C4:
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BC6DC
	ldr r0, _080BC6D8 @ =0x00001FFF
	cmp r2, r0
	ble _080BC6E4
	b _080BC6E6
	.align 2, 0
_080BC6D8: .4byte 0x00001FFF
_080BC6DC:
	subs r1, r1, r0
	ldr r0, _080BC710 @ =0x00001FFF
	cmp r1, r0
	bgt _080BC6E6
_080BC6E4:
	movs r5, #1
_080BC6E6:
	cmp r5, #0
	beq _080BC708
	ldr r2, _080BC714 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BC718 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BC71C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC708
	adds r0, r4, #0
	bl sub_080BCB78
_080BC708:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BC710: .4byte 0x00001FFF
_080BC714: .4byte gRngVal
_080BC718: .4byte 0x00196225
_080BC71C: .4byte 0x3C6EF35F

	thumb_func_start sub_080BC720
sub_080BC720: @ 0x080BC720
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BC754 @ =sub_080BC790
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC758
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	adds r2, r1, #0
	cmp r0, #0
	beq _080BC776
	movs r0, #0xe0
	lsls r0, r0, #2
	b _080BC774
	.align 2, 0
_080BC754: .4byte sub_080BC790
_080BC758:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	adds r2, r1, #0
	cmp r0, #0
	beq _080BC776
	movs r0, #0xc0
	lsls r0, r0, #2
_080BC774:
	strh r0, [r2]
_080BC776:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC786
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080BC786:
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC790
sub_080BC790: @ 0x080BC790
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC7B2
	adds r0, r4, #0
	bl sub_080BC9B0
	b _080BC860
_080BC7B2:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC7C2
	adds r0, r4, #0
	bl sub_080BCBB8
	b _080BC860
_080BC7C2:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BC860
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BC860
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC7EA
	movs r0, #0xf
	b _080BC7EC
_080BC7EA:
	movs r0, #0x1e
_080BC7EC:
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	ble _080BC810
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC81C
	b _080BC81A
_080BC810:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BC81C
_080BC81A:
	movs r5, #1
_080BC81C:
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BC834
	ldr r0, _080BC830 @ =0x00001FFF
	cmp r2, r0
	ble _080BC83C
	b _080BC83E
	.align 2, 0
_080BC830: .4byte 0x00001FFF
_080BC834:
	subs r1, r1, r0
	ldr r0, _080BC868 @ =0x00001FFF
	cmp r1, r0
	bgt _080BC83E
_080BC83C:
	movs r5, #1
_080BC83E:
	cmp r5, #0
	beq _080BC860
	ldr r2, _080BC86C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BC870 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BC874 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC860
	adds r0, r4, #0
	bl sub_080BCB78
_080BC860:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BC868: .4byte 0x00001FFF
_080BC86C: .4byte gRngVal
_080BC870: .4byte 0x00196225
_080BC874: .4byte 0x3C6EF35F

	thumb_func_start sub_080BC878
sub_080BC878: @ 0x080BC878
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080BC898
	adds r0, r2, #0
	adds r0, #0xc
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BC8A8
	b _080BC8A4
_080BC898:
	adds r0, r2, #0
	subs r0, #0xc
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BC8A8
_080BC8A4:
	movs r0, #0
	strh r0, [r1]
_080BC8A8:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BC8E0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080BC8DA
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080BC8DA
	adds r0, r4, #0
	bl sub_080BC928
	b _080BC920
_080BC8DA:
	adds r0, r4, #0
	bl sub_080897A0
_080BC8E0:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC8F6
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080BC8F6:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080BC91A
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BC920
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	b _080BC920
_080BC91A:
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
_080BC920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BC928
sub_080BC928: @ 0x080BC928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BC958 @ =sub_080BCB94
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080BC95C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BC960 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BC964 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080BC968 @ =0x00005554
	cmp r2, r0
	bhi _080BC96C
	movs r1, #0
	b _080BC976
	.align 2, 0
_080BC958: .4byte sub_080BCB94
_080BC95C: .4byte gRngVal
_080BC960: .4byte 0x00196225
_080BC964: .4byte 0x3C6EF35F
_080BC968: .4byte 0x00005554
_080BC96C:
	ldr r0, _080BC984 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080BC976
	movs r1, #1
_080BC976:
	cmp r1, #1
	beq _080BC992
	cmp r1, #1
	bgt _080BC988
	cmp r1, #0
	beq _080BC98E
	b _080BC9A8
	.align 2, 0
_080BC984: .4byte 0x0000AAA9
_080BC988:
	cmp r1, #2
	beq _080BC996
	b _080BC9A8
_080BC98E:
	movs r0, #5
	b _080BC9A6
_080BC992:
	movs r0, #0x23
	b _080BC9A6
_080BC996:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC9A4
	movs r0, #0xf
	b _080BC9A6
_080BC9A4:
	movs r0, #0x41
_080BC9A6:
	strh r0, [r4, #4]
_080BC9A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BC9B0
sub_080BC9B0: @ 0x080BC9B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BCA48 @ =sub_080BCA64
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080BCA4C @ =gKirbys
	ldr r0, _080BCA50 @ =gUnk_0203AD3C
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
	bne _080BCA40
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BCA00
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BCA40
_080BCA00:
	ldr r1, _080BCA54 @ =gUnk_08D60FA4
	ldr r4, _080BCA58 @ =gSongTable
	ldr r2, _080BCA5C @ =0x00000A24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BCA26
	movs r1, #0xa2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BCA40
_080BCA26:
	cmp r3, #0
	beq _080BCA38
	ldr r0, _080BCA60 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BCA40
_080BCA38:
	movs r0, #0xa2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080BCA40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BCA48: .4byte sub_080BCA64
_080BCA4C: .4byte gKirbys
_080BCA50: .4byte gUnk_0203AD3C
_080BCA54: .4byte gUnk_08D60FA4
_080BCA58: .4byte gSongTable
_080BCA5C: .4byte 0x00000A24
_080BCA60: .4byte gUnk_0203AD10

	thumb_func_start sub_080BCA64
sub_080BCA64: @ 0x080BCA64
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r4, #4
	orrs r0, r4
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080BCA8A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r3]
_080BCA8A:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080BCAC0
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #5
	bne _080BCABC
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BCABC
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_080BC720
	b _080BCAC0
_080BCABC:
	movs r0, #5
	strb r0, [r3]
_080BCAC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BCAC8
sub_080BCAC8: @ 0x080BCAC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080BCAEE
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080BCAEE:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080BCB0E
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BCB0E:
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BCB6C
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080BCB4C
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080BCB54
	ldr r2, _080BCB48 @ =sub_080BC878
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_080897A0
	b _080BCB6C
	.align 2, 0
_080BCB48: .4byte sub_080BC878
_080BCB4C:
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080BCB5C
_080BCB54:
	adds r0, r4, #0
	bl sub_080BC720
	b _080BCB6C
_080BCB5C:
	ldr r2, _080BCB74 @ =sub_080BC878
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_080897A0
_080BCB6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BCB74: .4byte sub_080BC878

	thumb_func_start sub_080BCB78
sub_080BCB78: @ 0x080BCB78
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BCB90 @ =sub_080BC878
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_080897A0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BCB90: .4byte sub_080BC878

	thumb_func_start sub_080BCB94
sub_080BCB94: @ 0x080BCB94
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
	bne _080BCBB2
	adds r0, r2, #0
	bl sub_080BC720
_080BCBB2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BCBB8
sub_080BCBB8: @ 0x080BCBB8
	push {lr}
	ldr r2, _080BCBC8 @ =sub_080BCAC8
	movs r1, #6
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BCBC8: .4byte sub_080BCAC8
