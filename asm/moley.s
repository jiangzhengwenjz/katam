	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080ED520
sub_080ED520: @ 0x080ED520
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED548 @ =sub_080EB2C0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED548: .4byte sub_080EB2C0

	thumb_func_start sub_080ED54C
sub_080ED54C: @ 0x080ED54C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED574 @ =sub_080EB39C
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #0xd2
	strh r0, [r4, #4]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED574: .4byte sub_080EB39C

	thumb_func_start sub_080ED578
sub_080ED578: @ 0x080ED578
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED5A4 @ =sub_080ED5AC
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED5A8 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED5A4: .4byte sub_080ED5AC
_080ED5A8: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED5AC
sub_080ED5AC: @ 0x080ED5AC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED5C0
	adds r0, r2, #0
	bl sub_080ED5C4
_080ED5C0:
	pop {r0}
	bx r0

	thumb_func_start sub_080ED5C4
sub_080ED5C4: @ 0x080ED5C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED5F4 @ =sub_080EB4B8
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED5F8 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED5F4: .4byte sub_080EB4B8
_080ED5F8: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED5FC
sub_080ED5FC: @ 0x080ED5FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _080ED63A
	adds r0, r4, #0
	bl sub_080EB700
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_080ED078
	ldr r2, _080ED670 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED674 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED678 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED63A
	adds r0, r4, #0
	bl sub_080ED078
_080ED63A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED66A
	ldr r2, _080ED670 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED674 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED678 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED664
	adds r0, r4, #0
	bl sub_080ED078
_080ED664:
	adds r0, r4, #0
	bl sub_080EB848
_080ED66A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED670: .4byte gRngVal
_080ED674: .4byte 0x00196225
_080ED678: .4byte 0x3C6EF35F

	thumb_func_start sub_080ED67C
sub_080ED67C: @ 0x080ED67C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED6CA
	ldr r2, _080ED6B8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED6BC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED6C0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080ED6AE
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080ED6C4
_080ED6AE:
	adds r0, r3, #0
	bl sub_080EC040
	b _080ED6CA
	.align 2, 0
_080ED6B8: .4byte gRngVal
_080ED6BC: .4byte 0x00196225
_080ED6C0: .4byte 0x3C6EF35F
_080ED6C4:
	adds r0, r3, #0
	bl sub_080EBCDC
_080ED6CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED6D0
sub_080ED6D0: @ 0x080ED6D0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED6FE
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED6FE
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080EC1F4
_080ED6FE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED704
sub_080ED704: @ 0x080ED704
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED740 @ =sub_080ED748
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED744 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #6
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xb6
	strh r2, [r0]
	subs r0, #1
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED740: .4byte sub_080ED748
_080ED744: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED748
sub_080ED748: @ 0x080ED748
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED776
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED776
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080EC3B8
_080ED776:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED77C
sub_080ED77C: @ 0x080ED77C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080EC5B4
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #5
	beq _080ED794
	cmp r0, #6
	beq _080ED7AC
	b _080ED7D2
_080ED794:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED7D2
	movs r0, #6
	strb r0, [r2]
	ldr r0, [r4, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #8]
	b _080ED7D2
_080ED7AC:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED7D2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080ED7D2
	adds r0, r4, #0
	bl sub_080ED7D8
_080ED7D2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ED7D8
sub_080ED7D8: @ 0x080ED7D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED81C @ =sub_080ED828
	movs r1, #3
	bl ObjectSetFunc
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0xf8
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r1, _080ED820 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	ldr r1, _080ED824 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ED81C: .4byte sub_080ED828
_080ED820: .4byte 0xFFFFF7FF
_080ED824: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED828
sub_080ED828: @ 0x080ED828
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080EC5B4
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #3
	beq _080ED840
	cmp r0, #4
	beq _080ED858
	b _080ED876
_080ED840:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED876
	movs r0, #4
	strb r0, [r2]
	ldr r0, [r4, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #8]
	b _080ED876
_080ED858:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED876
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _080ED876
	adds r0, r4, #0
	bl sub_080ED87C
_080ED876:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ED87C
sub_080ED87C: @ 0x080ED87C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080ED8B0 @ =sub_080ED8B8
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r5, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080ED8B4 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080ECEC0
	strh r5, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ED8B0: .4byte sub_080ED8B8
_080ED8B4: .4byte 0xFFFFFBFF

	thumb_func_start sub_080ED8B8
sub_080ED8B8: @ 0x080ED8B8
	push {lr}
	bl sub_080EC5B4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED8C4
sub_080ED8C4: @ 0x080ED8C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ED8EC @ =sub_080ED8F0
	movs r1, #1
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
_080ED8EC: .4byte sub_080ED8F0

	thumb_func_start sub_080ED8F0
sub_080ED8F0: @ 0x080ED8F0
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x70]
	ldrb r0, [r2, #1]
	cmp r0, #3
	bne _080ED938
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED90E
	ldr r0, [r2, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #4
	b _080ED912
_080ED90E:
	ldr r0, [r2, #0x40]
	ldr r1, _080ED92C @ =0xFFFFF600
_080ED912:
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080ED930
	ldr r0, [r2, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	b _080ED934
	.align 2, 0
_080ED92C: .4byte 0xFFFFF600
_080ED930:
	ldr r0, [r2, #0x44]
	ldr r1, _080ED94C @ =0xFFFFFC00
_080ED934:
	adds r0, r0, r1
	str r0, [r2, #0x44]
_080ED938:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED948
	adds r0, r2, #0
	bl sub_080EC8E8
_080ED948:
	pop {r0}
	bx r0
	.align 2, 0
_080ED94C: .4byte 0xFFFFFC00
