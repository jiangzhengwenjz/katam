	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

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
