	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A4B68
sub_080A4B68: @ 0x080A4B68
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4B9E
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #5
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	adds r4, r0, #0
	cmp r3, r1
	bge _080A4B98
	ldr r0, _080A4B94 @ =0x0000FF80
	strh r0, [r4]
	b _080A4BC2
	.align 2, 0
_080A4B94: .4byte 0x0000FF80
_080A4B98:
	cmp r3, #0x80
	ble _080A4BC2
	b _080A4BB2
_080A4B9E:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #0x80
	ble _080A4BB8
_080A4BB2:
	movs r0, #0x80
	strh r0, [r4]
	b _080A4BC2
_080A4BB8:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080A4BC2
	strh r1, [r4]
_080A4BC2:
	ldrh r0, [r2, #4]
	ldr r1, _080A4BDC @ =0x000001FF
	ands r1, r0
	strh r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4BE0
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	b _080A4BE8
	.align 2, 0
_080A4BDC: .4byte 0x000001FF
_080A4BE0:
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A4BE8:
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4C26
	ldrh r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080A4C1C
	movs r0, #0
	strh r0, [r2, #4]
	strh r0, [r4]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080A4C24
_080A4C1C:
	strh r0, [r4]
	strh r3, [r2, #4]
	ldr r0, [r2, #8]
	orrs r0, r5
_080A4C24:
	str r0, [r2, #8]
_080A4C26:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A4C34
sub_080A4C34: @ 0x080A4C34
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4C54 @ =sub_080A5000
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A4C6A
	cmp r0, #1
	bgt _080A4C58
	cmp r0, #0
	beq _080A4C62
	b _080A4C86
	.align 2, 0
_080A4C54: .4byte sub_080A5000
_080A4C58:
	cmp r0, #2
	beq _080A4C72
	cmp r0, #3
	beq _080A4C7C
	b _080A4C86
_080A4C62:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A4C84
_080A4C6A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A4C84
_080A4C72:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A4C84
_080A4C7C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A4C84:
	strh r0, [r1]
_080A4C86:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4C9A
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A4C9A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A4CA0
sub_080A4CA0: @ 0x080A4CA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4CC0 @ =sub_080A4D0C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A4CD6
	cmp r0, #1
	bgt _080A4CC4
	cmp r0, #0
	beq _080A4CCE
	b _080A4CF2
	.align 2, 0
_080A4CC0: .4byte sub_080A4D0C
_080A4CC4:
	cmp r0, #2
	beq _080A4CDE
	cmp r0, #3
	beq _080A4CE8
	b _080A4CF2
_080A4CCE:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A4CF0
_080A4CD6:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A4CF0
_080A4CDE:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A4CF0
_080A4CE8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A4CF0:
	strh r0, [r1]
_080A4CF2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4D06
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A4D06:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A4D0C
sub_080A4D0C: @ 0x080A4D0C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4D3A
	eors r2, r4
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	movs r2, #0
	strh r1, [r0]
	strh r2, [r3, #4]
_080A4D3A:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #1
	beq _080A4D74
	cmp r2, #1
	bgt _080A4D4E
	cmp r2, #0
	beq _080A4D58
	b _080A4DA4
_080A4D4E:
	cmp r2, #2
	beq _080A4D7E
	cmp r2, #3
	beq _080A4D88
	b _080A4DA4
_080A4D58:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0xc0
	ble _080A4DA4
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	strh r2, [r3, #4]
	b _080A4DA4
_080A4D74:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x80
	ble _080A4DA4
	b _080A4D90
_080A4D7E:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x60
	ble _080A4DA4
	b _080A4D90
_080A4D88:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x40
	ble _080A4DA4
_080A4D90:
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x50
	ldrh r0, [r2]
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r2]
	strh r1, [r3, #4]
_080A4DA4:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A4DB0
sub_080A4DB0: @ 0x080A4DB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4DD4 @ =sub_080A4E20
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #0x64
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A4DEA
	cmp r0, #1
	bgt _080A4DD8
	cmp r0, #0
	beq _080A4DE2
	b _080A4E06
	.align 2, 0
_080A4DD4: .4byte sub_080A4E20
_080A4DD8:
	cmp r0, #2
	beq _080A4DF2
	cmp r0, #3
	beq _080A4DFC
	b _080A4E06
_080A4DE2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A4E04
_080A4DEA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A4E04
_080A4DF2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A4E04
_080A4DFC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A4E04:
	strh r0, [r1]
_080A4E06:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4E1A
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A4E1A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A4E20
sub_080A4E20: @ 0x080A4E20
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4E4A
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A4E4A:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x1e
	bne _080A4E84
	movs r0, #0
	strh r0, [r4, #4]
	ldr r2, _080A4E78 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A4E7C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A4E80 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080A4EAA
	adds r0, r4, #0
	bl sub_080A5030
	b _080A4EAA
	.align 2, 0
_080A4E78: .4byte gRngVal
_080A4E7C: .4byte 0x00196225
_080A4E80: .4byte 0x3C6EF35F
_080A4E84:
	cmp r0, #0xb4
	ble _080A4EAA
	movs r0, #0
	strh r0, [r4, #4]
	ldr r2, _080A4EC4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A4EC8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A4ECC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080A4EAA
	adds r0, r4, #0
	bl sub_080A5030
_080A4EAA:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A4EBE
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080A4EBE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4EC4: .4byte gRngVal
_080A4EC8: .4byte 0x00196225
_080A4ECC: .4byte 0x3C6EF35F

	thumb_func_start sub_080A4ED0
sub_080A4ED0: @ 0x080A4ED0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4EFC @ =sub_080A5084
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A4F12
	cmp r0, #1
	bgt _080A4F00
	cmp r0, #0
	beq _080A4F0A
	b _080A4F2E
	.align 2, 0
_080A4EFC: .4byte sub_080A5084
_080A4F00:
	cmp r0, #2
	beq _080A4F1A
	cmp r0, #3
	beq _080A4F24
	b _080A4F2E
_080A4F0A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A4F2C
_080A4F12:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A4F2C
_080A4F1A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A4F2C
_080A4F24:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A4F2C:
	strh r0, [r1]
_080A4F2E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4F42
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A4F42:
	ldr r1, _080A4FB0 @ =gUnk_02020EE0
	ldr r0, _080A4FB4 @ =gUnk_0203AD3C
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
	bne _080A4FAA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A4F6E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A4FAA
_080A4F6E:
	ldr r1, _080A4FB8 @ =gUnk_08D60FA4
	ldr r4, _080A4FBC @ =gSongTable
	ldr r2, _080A4FC0 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A4F92
	ldr r1, _080A4FC4 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A4FAA
_080A4F92:
	cmp r3, #0
	beq _080A4FA4
	ldr r0, _080A4FC8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A4FAA
_080A4FA4:
	ldr r0, _080A4FCC @ =0x00000145
	bl m4aSongNumStart
_080A4FAA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4FB0: .4byte gUnk_02020EE0
_080A4FB4: .4byte gUnk_0203AD3C
_080A4FB8: .4byte gUnk_08D60FA4
_080A4FBC: .4byte gSongTable
_080A4FC0: .4byte 0x00000A2C
_080A4FC4: .4byte 0x00000A28
_080A4FC8: .4byte gUnk_0203AD10
_080A4FCC: .4byte 0x00000145

	thumb_func_start sub_080A4FD0
sub_080A4FD0: @ 0x080A4FD0
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080A4FEE
	cmp r0, #1
	ble _080A4FE6
	cmp r0, #2
	beq _080A4FF6
_080A4FE6:
	adds r0, r1, #0
	bl sub_080A4C34
	b _080A4FFC
_080A4FEE:
	adds r0, r1, #0
	bl sub_080A4CA0
	b _080A4FFC
_080A4FF6:
	adds r0, r1, #0
	bl sub_080A4DB0
_080A4FFC:
	pop {r0}
	bx r0

	thumb_func_start sub_080A5000
sub_080A5000: @ 0x080A5000
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A502A
	eors r2, r4
	str r2, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A502A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A5030
sub_080A5030: @ 0x080A5030
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A5050 @ =sub_080A5054
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5050: .4byte sub_080A5054

	thumb_func_start sub_080A5054
sub_080A5054: @ 0x080A5054
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A507E
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A5074
	adds r0, r2, #0
	bl sub_080A4ED0
	b _080A507E
_080A5074:
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	movs r0, #1
	strb r0, [r3]
_080A507E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5084
sub_080A5084: @ 0x080A5084
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A50A8
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A50A8:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A50B8
	adds r0, r2, #0
	bl sub_080A4DB0
_080A50B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
