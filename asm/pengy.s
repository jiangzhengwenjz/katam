	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreatePengy
CreatePengy: @ 0x080BAB78
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080BABAC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BABB0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BABB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BABBC
	.align 2, 0
_080BABAC: .4byte ObjectMain
_080BABB0: .4byte ObjectDestroy
_080BABB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BABBC:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BABDC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BABE4
_080BABDC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BABE4:
	str r0, [r4, #8]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BAC4E
	ldr r2, _080BAC3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BAC40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BAC44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080BAC48
	adds r0, r4, #0
	bl sub_080BBBF8
	b _080BAC4E
	.align 2, 0
_080BAC3C: .4byte gRngVal
_080BAC40: .4byte 0x00196225
_080BAC44: .4byte 0x3C6EF35F
_080BAC48:
	adds r0, r4, #0
	bl sub_080BBD14
_080BAC4E:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BAC64
sub_080BAC64: @ 0x080BAC64
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BAC84
	movs r0, #1
	orrs r2, r0
	b _080BAC8A
_080BAC84:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BAC8A:
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080BAC9A
	b _080BADFC
_080BAC9A:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080BAD50
	adds r0, #0x19
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	bhi _080BAD50
	adds r0, #0xe
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r3, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BACCC
	ldr r0, _080BACC8 @ =0x00003FFF
	cmp r2, r0
	ble _080BACD4
	b _080BAD56
	.align 2, 0
_080BACC8: .4byte 0x00003FFF
_080BACCC:
	subs r1, r1, r0
	ldr r0, _080BAD00 @ =0x00003FFF
	cmp r1, r0
	bgt _080BAD56
_080BACD4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080BAD18
	ldr r2, _080BAD04 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BAD08 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BAD0C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080BAD10 @ =0x00005554
	cmp r2, r0
	bls _080BAD44
	ldr r0, _080BAD14 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080BACFA
	movs r1, #1
_080BACFA:
	cmp r1, #0
	beq _080BAD44
	b _080BAD30
	.align 2, 0
_080BAD00: .4byte 0x00003FFF
_080BAD04: .4byte gRngVal
_080BAD08: .4byte 0x00196225
_080BAD0C: .4byte 0x3C6EF35F
_080BAD10: .4byte 0x00005554
_080BAD14: .4byte 0x0000AAA9
_080BAD18:
	ldr r2, _080BAD38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BAD3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BAD40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BAD44
_080BAD30:
	adds r0, r3, #0
	bl sub_080BBCBC
	b _080BADFC
	.align 2, 0
_080BAD38: .4byte gRngVal
_080BAD3C: .4byte 0x00196225
_080BAD40: .4byte 0x3C6EF35F
_080BAD44:
	movs r0, #0x20
	strb r0, [r5]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080BAD56
_080BAD50:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_080BAD56:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x5a
	beq _080BAD78
	cmp r0, #0x5a
	bgt _080BAD6E
	cmp r0, #0x4b
	beq _080BAD78
	b _080BADE8
_080BAD6E:
	cmp r0, #0x69
	beq _080BAD78
	cmp r0, #0x78
	beq _080BADD4
	b _080BADE8
_080BAD78:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BADBC
	ldr r2, _080BADA8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BADAC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BADB0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080BADB4 @ =0x00005554
	cmp r2, r0
	bls _080BADD4
	ldr r0, _080BADB8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080BADA2
	movs r1, #1
_080BADA2:
	cmp r1, #0
	bne _080BADE8
	b _080BADD4
	.align 2, 0
_080BADA8: .4byte gRngVal
_080BADAC: .4byte 0x00196225
_080BADB0: .4byte 0x3C6EF35F
_080BADB4: .4byte 0x00005554
_080BADB8: .4byte 0x0000AAA9
_080BADBC:
	ldr r2, _080BADDC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BADE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BADE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080BADE8
_080BADD4:
	adds r0, r3, #0
	bl sub_080BBC40
	b _080BADFC
	.align 2, 0
_080BADDC: .4byte gRngVal
_080BADE0: .4byte 0x00196225
_080BADE4: .4byte 0x3C6EF35F
_080BADE8:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BADFC
	adds r0, r3, #0
	bl sub_080BBC54
_080BADFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BAE04
sub_080BAE04: @ 0x080BAE04
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BAE16
	b _080BAFA8
_080BAE16:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov ip, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r7, _080BAED4 @ =gUnk_08354808
	adds r6, r4, #0
	adds r6, #0x50
	adds r5, r4, #0
	adds r5, #0x52
	cmp r1, #0
	bne _080BAF02
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BAE4A
	subs r0, r1, #1
	strb r0, [r3]
_080BAE4A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BAE72
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080BAE72:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BAED8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080BAEAA
	strh r2, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BAEAA
	rsbs r0, r2, #0
	strh r0, [r6]
_080BAEAA:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	adds r5, r4, #0
	adds r5, #0x52
	cmp r1, r0
	beq _080BAF02
	strh r2, [r5]
	b _080BAF02
	.align 2, 0
_080BAED4: .4byte gUnk_08354808
_080BAED8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BAF20
	rsbs r0, r2, #0
	strh r0, [r6]
_080BAF02:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BAF20
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080BAF32
_080BAF20:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080BAF32:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	mov r5, ip
	ldrb r0, [r5]
	subs r2, r0, #1
	strb r2, [r5]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BAFA8
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080BAFA8
	ldr r2, _080BAF98 @ =sub_080BAC64
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strh r5, [r6]
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BAF9C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	b _080BAFB6
	.align 2, 0
_080BAF98: .4byte sub_080BAC64
_080BAF9C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080BAFB6
_080BAFA8:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BAFB6
	subs r0, #1
	strb r0, [r1]
_080BAFB6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080BAFBC
sub_080BAFBC: @ 0x080BAFBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BAFD6
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080BAFD6:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080BB008
	adds r4, r5, #0
	adds r4, #0x85
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_080BB080
	adds r0, r5, #0
	bl sub_080BB470
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_080BB804
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080BB008
	movs r0, #0
	strb r0, [r4]
_080BB008:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _080BB056
	adds r1, r5, #0
	adds r1, #0x85
	movs r4, #0
	movs r0, #0xf0
	strb r0, [r1]
	ldr r2, _080BB048 @ =sub_080BAC64
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	ldr r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BB04C
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080BB054
	.align 2, 0
_080BB048: .4byte sub_080BAC64
_080BB04C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BB054:
	str r0, [r5, #8]
_080BB056:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BB076
	adds r1, r5, #0
	adds r1, #0x85
	movs r0, #0xf0
	strb r0, [r1]
	ldr r2, _080BB07C @ =sub_080BBC68
	adds r0, r5, #0
	movs r1, #4
	bl ObjectSetFunc
_080BB076:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BB07C: .4byte sub_080BBC68

	thumb_func_start sub_080BB080
sub_080BB080: @ 0x080BB080
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _080BB0B4 @ =sub_080BB290
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080BB0B8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BB0BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BB0C4
	.align 2, 0
_080BB0B4: .4byte sub_080BB290
_080BB0B8: .4byte sub_0803DCCC
_080BB0BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BB0C4:
	adds r5, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r7, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080BB160 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BB114
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080BB114:
	adds r0, r5, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, _080BB164 @ =0x20000203
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	cmp r6, #1
	beq _080BB168
	cmp r6, #1
	ble _080BB14A
	cmp r6, #2
	beq _080BB17E
_080BB14A:
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0xe0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r1, #0x80
	lsls r1, r1, #1
	b _080BB178
	.align 2, 0
_080BB160: .4byte gUnk_03000510
_080BB164: .4byte 0x20000203
_080BB168:
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r1, #0x80
_080BB178:
	strh r1, [r2]
	adds r1, r0, #0
	b _080BB18E
_080BB17E:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r7, [r0]
_080BB18E:
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080BB1B4
	ldr r0, [r5, #0x40]
	ldr r3, _080BB1B0 @ =0xFFFFF600
	adds r0, r0, r3
	str r0, [r5, #0x40]
	ldr r0, [r5, #8]
	orrs r0, r2
	str r0, [r5, #8]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080BB1C8
	.align 2, 0
_080BB1B0: .4byte 0xFFFFF600
_080BB1B4:
	ldr r0, [r5, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080BB1C8:
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	movs r3, #0xcd
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x12
	bl sub_080708DC
	ldr r1, _080BB270 @ =gKirbys
	ldr r0, _080BB274 @ =gUnk_0203AD3C
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
	bne _080BB268
	ldrb r0, [r5]
	cmp r0, #0
	bne _080BB22C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BB268
_080BB22C:
	ldr r1, _080BB278 @ =gUnk_08D60FA4
	ldr r4, _080BB27C @ =gSongTable
	ldr r2, _080BB280 @ =0x000009EC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BB250
	ldr r1, _080BB284 @ =0x000009E8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BB268
_080BB250:
	cmp r3, #0
	beq _080BB262
	ldr r0, _080BB288 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BB268
_080BB262:
	ldr r0, _080BB28C @ =0x0000013D
	bl m4aSongNumStart
_080BB268:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB270: .4byte gKirbys
_080BB274: .4byte gUnk_0203AD3C
_080BB278: .4byte gUnk_08D60FA4
_080BB27C: .4byte gSongTable
_080BB280: .4byte 0x000009EC
_080BB284: .4byte 0x000009E8
_080BB288: .4byte gUnk_0203AD10
_080BB28C: .4byte 0x0000013D

	thumb_func_start sub_080BB290
sub_080BB290: @ 0x080BB290
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080BB2B0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BB2B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BB2BC
	.align 2, 0
_080BB2B0: .4byte gCurTask
_080BB2B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BB2BC:
	adds r5, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080BB2CA
	b _080BB466
_080BB2CA:
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080BB2EA
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080BB466
_080BB2EA:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BB35E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080BB35E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080BB324
	ldr r2, _080BB31C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080BB320 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080BB326
	.align 2, 0
_080BB31C: .4byte gCurLevelInfo
_080BB320: .4byte 0x0000065E
_080BB324:
	movs r1, #0xff
_080BB326:
	cmp r1, #0xff
	beq _080BB35E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080BB3F0 @ =gUnk_02022EB0
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
	ldr r2, _080BB3F4 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080BB35E:
	ldr r6, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r6
	adds r3, r6, #0
	cmp r0, #0
	bne _080BB388
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080BB388:
	ldr r2, _080BB3F8 @ =gKirbys
	ldr r0, _080BB3FC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BB440
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080BB408
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BB460
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x12
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BB400 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BB404 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080BB460
	.align 2, 0
_080BB3F0: .4byte gUnk_02022EB0
_080BB3F4: .4byte gUnk_02022F50
_080BB3F8: .4byte gKirbys
_080BB3FC: .4byte gUnk_0203AD3C
_080BB400: .4byte 0xFFF7FFFF
_080BB404: .4byte 0x0400000A
_080BB408:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BB460
	movs r0, #0x12
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BB438 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BB43C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BB460
	.align 2, 0
_080BB438: .4byte 0xFFF7FFFF
_080BB43C: .4byte 0x0400000A
_080BB440:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080BB456
	movs r4, #0x80
	lsls r4, r4, #7
	ands r4, r6
	cmp r4, #0
	bne _080BB456
	bl sub_08157190
	str r4, [r5, #0x10]
_080BB456:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080BB460:
	adds r0, r5, #0
	bl sub_0806F8BC
_080BB466:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB470
sub_080BB470: @ 0x080BB470
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080BB4A0 @ =sub_080BB568
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080BB4A4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BB4A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BB4B0
	.align 2, 0
_080BB4A0: .4byte sub_080BB568
_080BB4A4: .4byte sub_0803DCCC
_080BB4A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BB4B0:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r2, #0
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
	movs r7, #0
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r3, r1, #0
	orrs r3, r0
	orrs r3, r7
	strh r3, [r4, #6]
	movs r6, #0xc0
	lsls r6, r6, #2
	strh r6, [r4, #0x3c]
	strh r2, [r4, #0x3e]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BB50C
	ldr r0, [r4, #0x34]
	ldr r1, _080BB508 @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r4, #0x34]
	rsbs r0, r6, #0
	strh r0, [r4, #0x3c]
	movs r0, #1
	orrs r3, r0
	b _080BB51A
	.align 2, 0
_080BB508: .4byte 0xFFFFF600
_080BB50C:
	ldr r0, [r4, #0x34]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x34]
	ldr r0, _080BB560 @ =0x0000FFFE
	ands r3, r0
_080BB51A:
	strh r3, [r4, #6]
	ldr r0, _080BB564 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BB542
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080BB542:
	adds r1, r4, #0
	adds r1, #0xc
	movs r3, #0xcd
	lsls r3, r3, #2
	str r5, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB560: .4byte 0x0000FFFE
_080BB564: .4byte gUnk_03000510

	thumb_func_start sub_080BB568
sub_080BB568: @ 0x080BB568
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080BB588 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BB58C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BB594
	.align 2, 0
_080BB588: .4byte gCurTask
_080BB58C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BB594:
	adds r5, r0, #0
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _080BB5B0
	ldr r0, [r2]
	bl TaskDestroy
	b _080BB7FA
_080BB5B0:
	ldr r1, [r5, #0x44]
	cmp r1, #0
	beq _080BB5FC
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BB5C8
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080BB5C8
	str r3, [r5, #0x44]
	movs r1, #0
_080BB5C8:
	cmp r1, #0
	beq _080BB5FC
	ldr r0, _080BB5F8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BB66C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BB66C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080BB7FA
	.align 2, 0
_080BB5F8: .4byte gUnk_03000510
_080BB5FC:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080BB664 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080BB63E
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BB63E
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BB63E
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BB63E
	movs r3, #4
_080BB63E:
	ldr r0, _080BB668 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BB66C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BB66C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080BB7FA
	.align 2, 0
_080BB664: .4byte gKirbys
_080BB668: .4byte gUnk_03000510
_080BB66C:
	ldr r0, _080BB6D8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BB6B0
	ldr r6, _080BB6DC @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _080BB6E0 @ =gUnk_02026D50
_080BB67E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080BB6A8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BB6C2
_080BB6A8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080BB67E
_080BB6B0:
	movs r0, #1
	cmp r0, #0
	beq _080BB6C2
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080BB6C2:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BB6E4
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080BB7FA
	.align 2, 0
_080BB6D8: .4byte gUnk_0203AD44
_080BB6DC: .4byte gCurLevelInfo
_080BB6E0: .4byte gUnk_02026D50
_080BB6E4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BB6F2
	ldrh r0, [r5, #0x3c]
	adds r0, #0x50
	b _080BB6F6
_080BB6F2:
	ldrh r0, [r5, #0x3c]
	subs r0, #0x50
_080BB6F6:
	strh r0, [r5, #0x3c]
	movs r0, #0x40
	strh r0, [r5, #0x3e]
	ldr r2, _080BB764 @ =gKirbys
	ldr r0, _080BB768 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BB7AC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080BB774
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BB7D4
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x12
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BB76C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BB770 @ =0x0400000A
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
	b _080BB7D4
	.align 2, 0
_080BB764: .4byte gKirbys
_080BB768: .4byte gUnk_0203AD3C
_080BB76C: .4byte 0xFFF7FFFF
_080BB770: .4byte 0x0400000A
_080BB774:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BB7D4
	movs r0, #0x12
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BB7A4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BB7A8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BB7D4
	.align 2, 0
_080BB7A4: .4byte 0xFFF7FFFF
_080BB7A8: .4byte 0x0400000A
_080BB7AC:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _080BB7CA
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080BB7CA
	adds r0, r2, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080BB7CA:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080BB7D4:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BB7F4
	movs r7, #0x3c
	ldrsh r1, [r5, r7]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080BB7F4:
	adds r0, r5, #0
	bl sub_0806FAC8
_080BB7FA:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB804
sub_080BB804: @ 0x080BB804
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080BB838 @ =sub_080BB8FC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080BB83C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BB840
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BB848
	.align 2, 0
_080BB838: .4byte sub_080BB8FC
_080BB83C: .4byte sub_0803DCCC
_080BB840:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BB848:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r2, #0
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
	movs r6, #0
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r3, r1, #0
	orrs r3, r0
	orrs r3, r6
	strh r3, [r4, #6]
	strh r2, [r4, #0x3c]
	strh r2, [r4, #0x3e]
	strh r7, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BB8A0
	ldr r0, [r4, #0x34]
	ldr r1, _080BB89C @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #1
	orrs r3, r0
	b _080BB8AE
	.align 2, 0
_080BB89C: .4byte 0xFFFFF600
_080BB8A0:
	ldr r0, [r4, #0x34]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x34]
	ldr r0, _080BB8F4 @ =0x0000FFFE
	ands r3, r0
_080BB8AE:
	strh r3, [r4, #6]
	ldr r0, _080BB8F8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BB8D4
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080BB8D4:
	adds r1, r4, #0
	adds r1, #0xc
	movs r3, #0xcd
	lsls r3, r3, #2
	movs r0, #2
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB8F4: .4byte 0x0000FFFE
_080BB8F8: .4byte gUnk_03000510

	thumb_func_start sub_080BB8FC
sub_080BB8FC: @ 0x080BB8FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080BB91C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BB920
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BB928
	.align 2, 0
_080BB91C: .4byte gCurTask
_080BB920:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BB928:
	adds r5, r0, #0
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _080BB944
	ldr r0, [r2]
	bl TaskDestroy
	b _080BBBEE
_080BB944:
	ldr r1, [r5, #0x44]
	cmp r1, #0
	beq _080BB990
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BB95C
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080BB95C
	str r3, [r5, #0x44]
	movs r1, #0
_080BB95C:
	cmp r1, #0
	beq _080BB990
	ldr r0, _080BB98C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BBA00
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BBA00
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080BBBEE
	.align 2, 0
_080BB98C: .4byte gUnk_03000510
_080BB990:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080BB9F8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080BB9D2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BB9D2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BB9D2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BB9D2
	movs r3, #4
_080BB9D2:
	ldr r0, _080BB9FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BBA00
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BBA00
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080BBBEE
	.align 2, 0
_080BB9F8: .4byte gKirbys
_080BB9FC: .4byte gUnk_03000510
_080BBA00:
	ldr r0, _080BBA70 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BBA44
	ldr r6, _080BBA74 @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _080BBA78 @ =gUnk_02026D50
_080BBA12:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080BBA3C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BBA56
_080BBA3C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080BBA12
_080BBA44:
	movs r0, #1
	cmp r0, #0
	beq _080BBA56
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080BBA56:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080BBA7C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r5, #6]
	b _080BBBEE
	.align 2, 0
_080BBA70: .4byte gUnk_0203AD44
_080BBA74: .4byte gCurLevelInfo
_080BBA78: .4byte gUnk_02026D50
_080BBA7C:
	movs r6, #8
	ldrsh r0, [r5, r6]
	cmp r0, #1
	beq _080BBAA0
	cmp r0, #2
	beq _080BBAB8
	ldr r1, _080BBA9C @ =gUnk_08354880
	movs r7, #4
	ldrsh r0, [r5, r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	movs r3, #4
	ldrsh r0, [r5, r3]
	b _080BBACA
	.align 2, 0
_080BBA9C: .4byte gUnk_08354880
_080BBAA0:
	ldr r1, _080BBAB4 @ =gUnk_083548B8
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	movs r7, #4
	ldrsh r0, [r5, r7]
	b _080BBACA
	.align 2, 0
_080BBAB4: .4byte gUnk_083548B8
_080BBAB8:
	ldr r1, _080BBB54 @ =gUnk_083548F0
	movs r3, #4
	ldrsh r0, [r5, r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	movs r6, #4
	ldrsh r0, [r5, r6]
_080BBACA:
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080BBAE4
	ldrh r0, [r5, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r5, #0x3c]
_080BBAE4:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	ldr r2, _080BBB58 @ =gKirbys
	ldr r0, _080BBB5C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080BBBA0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080BBB68
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BBBC8
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x12
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BBB60 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BBB64 @ =0x0400000A
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
	b _080BBBC8
	.align 2, 0
_080BBB54: .4byte gUnk_083548F0
_080BBB58: .4byte gKirbys
_080BBB5C: .4byte gUnk_0203AD3C
_080BBB60: .4byte 0xFFF7FFFF
_080BBB64: .4byte 0x0400000A
_080BBB68:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BBBC8
	movs r0, #0x12
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BBB98 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BBB9C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BBBC8
	.align 2, 0
_080BBB98: .4byte 0xFFF7FFFF
_080BBB9C: .4byte 0x0400000A
_080BBBA0:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _080BBBBE
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080BBBBE
	adds r0, r2, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080BBBBE:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080BBBC8:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BBBE8
	movs r7, #0x3c
	ldrsh r1, [r5, r7]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080BBBE8:
	adds r0, r5, #0
	bl sub_0806FAC8
_080BBBEE:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BBBF8
sub_080BBBF8: @ 0x080BBBF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BBC2C @ =sub_080BAC64
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BBC30
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BBC38
	.align 2, 0
_080BBC2C: .4byte sub_080BAC64
_080BBC30:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BBC38:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BBC40
sub_080BBC40: @ 0x080BBC40
	push {lr}
	ldr r2, _080BBC50 @ =sub_080BAE04
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BBC50: .4byte sub_080BAE04

	thumb_func_start sub_080BBC54
sub_080BBC54: @ 0x080BBC54
	push {lr}
	ldr r2, _080BBC64 @ =sub_080BBC68
	movs r1, #4
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BBC64: .4byte sub_080BBC68

	thumb_func_start sub_080BBC68
sub_080BBC68: @ 0x080BBC68
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080BBC8C
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BBC8C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BBCA8
	ldr r2, _080BBCA4 @ =sub_080BAE04
	adds r0, r3, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080BBCB6
	.align 2, 0
_080BBCA4: .4byte sub_080BAE04
_080BBCA8:
	adds r1, r3, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BBCB6
	subs r0, #1
	strb r0, [r1]
_080BBCB6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BBCBC
sub_080BBCBC: @ 0x080BBCBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BBCD4 @ =sub_080BBCD8
	movs r1, #5
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BBCD4: .4byte sub_080BBCD8

	thumb_func_start sub_080BBCD8
sub_080BBCD8: @ 0x080BBCD8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080BBCF0
	adds r0, r4, #0
	bl sub_080BBD14
_080BBCF0:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BBD08
	ldr r2, _080BBD10 @ =sub_080BBC68
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
_080BBD08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BBD10: .4byte sub_080BBC68

	thumb_func_start sub_080BBD14
sub_080BBD14: @ 0x080BBD14
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BBD34 @ =sub_080BAFBC
	movs r1, #6
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r4, #0x50
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BBD34: .4byte sub_080BAFBC
