	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateCookin
CreateCookin: @ 0x080B5B18
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B5B4C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B5B50 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5B54
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5B5C
	.align 2, 0
_080B5B4C: .4byte ObjectMain
_080B5B50: .4byte ObjectDestroy
_080B5B54:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5B5C:
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
	ble _080B5B7C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B5B84
_080B5B7C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5B84:
	str r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080B5BE4 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
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
_080B5BE4: .4byte gUnk_08351648

	thumb_func_start sub_080B5BE8
sub_080B5BE8: @ 0x080B5BE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B5C9A
	adds r1, #0x4e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B5C9A
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	ble _080B5C38
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B5C40
_080B5C38:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5C40:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B5C9A
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B5C68
	ldr r0, _080B5C64 @ =0x0000A7FF
	cmp r2, r0
	ble _080B5C70
	b _080B5C9A
	.align 2, 0
_080B5C64: .4byte 0x0000A7FF
_080B5C68:
	subs r1, r1, r0
	ldr r0, _080B5C84 @ =0x0000A7FF
	cmp r1, r0
	bgt _080B5C9A
_080B5C70:
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B5C8C
	ldr r0, _080B5C88 @ =0x00002FFF
	cmp r2, r0
	ble _080B5C94
	b _080B5C9A
	.align 2, 0
_080B5C84: .4byte 0x0000A7FF
_080B5C88: .4byte 0x00002FFF
_080B5C8C:
	subs r1, r1, r0
	ldr r0, _080B5CA0 @ =0x00002FFF
	cmp r1, r0
	bgt _080B5C9A
_080B5C94:
	adds r0, r4, #0
	bl sub_080B68C0
_080B5C9A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5CA0: .4byte 0x00002FFF

	thumb_func_start sub_080B5CA4
sub_080B5CA4: @ 0x080B5CA4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r3, #4
	orrs r1, r3
	str r1, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _080B5CD2
	movs r0, #1
	eors r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
_080B5CD2:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080B5CF4
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B5CF4:
	ldrb r1, [r6]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B5D1A
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B5D1A
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B5D1A:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r3, r1, #0
	cmp r0, #0
	bne _080B5D68
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B5D64
	ldr r2, _080B5D58 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B5D5C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B5D60 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080B5D64
	adds r0, r4, #0
	bl sub_080B68C0
	b _080B5D68
	.align 2, 0
_080B5D58: .4byte gRngVal
_080B5D5C: .4byte 0x00196225
_080B5D60: .4byte 0x3C6EF35F
_080B5D64:
	movs r0, #0x3c
	strb r0, [r3]
_080B5D68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B5D70
sub_080B5D70: @ 0x080B5D70
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5E00 @ =sub_080B5E1C
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x26
	strb r0, [r1]
	ldr r1, _080B5E04 @ =gUnk_02020EE0
	ldr r0, _080B5E08 @ =gUnk_0203AD3C
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
	bne _080B5DF8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B5DBA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B5DF8
_080B5DBA:
	ldr r1, _080B5E0C @ =gUnk_08D60FA4
	ldr r4, _080B5E10 @ =gSongTable
	ldr r2, _080B5E14 @ =0x0000045C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B5DE0
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B5DF8
_080B5DE0:
	cmp r3, #0
	beq _080B5DF2
	ldr r0, _080B5E18 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B5DF8
_080B5DF2:
	movs r0, #0x8b
	bl m4aSongNumStart
_080B5DF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5E00: .4byte sub_080B5E1C
_080B5E04: .4byte gUnk_02020EE0
_080B5E08: .4byte gUnk_0203AD3C
_080B5E0C: .4byte gUnk_08D60FA4
_080B5E10: .4byte gSongTable
_080B5E14: .4byte 0x0000045C
_080B5E18: .4byte gUnk_0203AD10

	thumb_func_start sub_080B5E1C
sub_080B5E1C: @ 0x080B5E1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B5E7C
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080B5E48
	ldr r2, _080B5E44 @ =sub_080B5BE8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080B5E54
	.align 2, 0
_080B5E44: .4byte sub_080B5BE8
_080B5E48:
	ldr r2, _080B5EF8 @ =sub_080B5BE8
	adds r0, r4, #0
	movs r1, #1
	rsbs r1, r1, #0
	bl ObjectSetFunc
_080B5E54:
	ldr r0, [r4, #8]
	ldr r1, _080B5EFC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080B5E6E
	adds r0, r4, #0
	bl sub_080B6894
_080B5E6E:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strb r0, [r1]
	subs r1, #0x1c
	movs r0, #0x26
	strb r0, [r1]
_080B5E7C:
	ldrb r0, [r4, #1]
	cmp r0, #0x28
	beq _080B5E86
	cmp r0, #0x4c
	bne _080B5EF0
_080B5E86:
	ldr r1, _080B5F00 @ =gUnk_02020EE0
	ldr r0, _080B5F04 @ =gUnk_0203AD3C
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
	bne _080B5EF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B5EB2
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B5EF0
_080B5EB2:
	ldr r1, _080B5F08 @ =gUnk_08D60FA4
	ldr r4, _080B5F0C @ =gSongTable
	ldr r2, _080B5F10 @ =0x0000045C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B5ED8
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B5EF0
_080B5ED8:
	cmp r3, #0
	beq _080B5EEA
	ldr r0, _080B5F14 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B5EF0
_080B5EEA:
	movs r0, #0x8b
	bl m4aSongNumStart
_080B5EF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5EF8: .4byte sub_080B5BE8
_080B5EFC: .4byte 0xFFFFF7FF
_080B5F00: .4byte gUnk_02020EE0
_080B5F04: .4byte gUnk_0203AD3C
_080B5F08: .4byte gUnk_08D60FA4
_080B5F0C: .4byte gSongTable
_080B5F10: .4byte 0x0000045C
_080B5F14: .4byte gUnk_0203AD10

	thumb_func_start CreateCookinPan
CreateCookinPan: @ 0x080B5F18
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B5F4C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B5F50 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5F54
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5F5C
	.align 2, 0
_080B5F4C: .4byte ObjectMain
_080B5F50: .4byte ObjectDestroy
_080B5F54:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5F5C:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r1, [r4, #8]
	ldr r0, _080B6088 @ =gUnk_02000140
	orrs r1, r0
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r2, [r0, #0xe]
	cmp r2, #0
	bne _080B5F84
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r1, r0
	str r1, [r4, #8]
	str r2, [r4, #0x68]
_080B5F84:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	str r2, [r4, #0x5c]
	subs r1, #7
	subs r2, #2
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B5FD2
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080B5FD2:
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080B608C @ =sub_0809F840
	str r0, [r4, #0x7c]
	ldr r2, _080B6090 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B6012
	adds r0, r4, #0
	bl sub_080B65D8
_080B6012:
	ldr r1, _080B6094 @ =gUnk_02020EE0
	ldr r0, _080B6098 @ =gUnk_0203AD3C
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
	bne _080B607E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B603E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B607E
_080B603E:
	ldr r1, _080B609C @ =gUnk_08D60FA4
	ldr r5, _080B60A0 @ =gSongTable
	ldr r2, _080B60A4 @ =0x00000AA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B6064
	movs r1, #0xaa
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B607E
_080B6064:
	cmp r3, #0
	beq _080B6076
	ldr r0, _080B60A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B607E
_080B6076:
	movs r0, #0xaa
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B607E:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B6088: .4byte gUnk_02000140
_080B608C: .4byte sub_0809F840
_080B6090: .4byte gUnk_08351648
_080B6094: .4byte gUnk_02020EE0
_080B6098: .4byte gUnk_0203AD3C
_080B609C: .4byte gUnk_08D60FA4
_080B60A0: .4byte gSongTable
_080B60A4: .4byte 0x00000AA4
_080B60A8: .4byte gUnk_0203AD10

	thumb_func_start sub_080B60AC
sub_080B60AC: @ 0x080B60AC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x70]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r1, _080B6178 @ =gUnk_08354368
	mov ip, r1
	cmp r0, #0
	bne _080B61AE
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080B60E8
	subs r0, r2, #1
	strb r0, [r4]
_080B60E8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B610E
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_080B610E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B617C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B614A
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B614A
	rsbs r0, r3, #0
	strh r0, [r2]
_080B614A:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B61AE
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B61AE
	.align 2, 0
_080B6178: .4byte gUnk_08354368
_080B617C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #2]
	adds r3, r5, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B61D8
	rsbs r0, r6, #0
	strh r0, [r2]
_080B61AE:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r4, r5, #0
	adds r4, #0x9f
	adds r2, r5, #0
	adds r2, #0x50
	adds r3, r5, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080B61D8
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080B61EA
_080B61D8:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, ip
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080B61EA:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080B621E
	b _080B635C
_080B621E:
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _080B6226
	b _080B635C
_080B6226:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r1, [r0]
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _080B62B4
	movs r0, #0x88
	lsls r0, r0, #1
	adds r6, r1, r0
	ldr r0, [r6]
	cmp r0, #0
	beq _080B62B4
	str r7, [r1, #0x6c]
	adds r3, r7, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r0, #0x26
	beq _080B6250
	cmp r0, #0x31
	bne _080B6288
_080B6250:
	adds r1, r7, #0
	adds r1, #0x83
	ldr r0, _080B6274 @ =gUnk_08351648
	movs r2, #0xe4
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _080B6278
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0x26
	strb r0, [r3]
	b _080B635C
	.align 2, 0
_080B6274: .4byte gUnk_08351648
_080B6278:
	ldr r0, _080B6284 @ =gUnk_0835448C
	str r0, [r6]
	adds r0, r7, #0
	bl sub_080B5D70
	b _080B6352
	.align 2, 0
_080B6284: .4byte gUnk_0835448C
_080B6288:
	adds r4, r7, #0
	adds r4, #0x83
	ldr r2, _080B62AC @ =gUnk_08351648
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080B6352
	ldr r0, _080B62B0 @ =gUnk_08354554
	str r0, [r6]
	adds r0, r7, #0
	bl sub_080A158C
	b _080B6352
	.align 2, 0
_080B62AC: .4byte gUnk_08351648
_080B62B0: .4byte gUnk_08354554
_080B62B4:
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x26
	beq _080B62C4
	cmp r1, #0x31
	bne _080B6334
_080B62C4:
	adds r1, r7, #0
	adds r1, #0x83
	ldr r0, _080B62F0 @ =gUnk_08351648
	movs r3, #0xe4
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080B6352
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080B62F8
	ldr r2, _080B62F4 @ =sub_080B5BE8
	adds r0, r7, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080B6304
	.align 2, 0
_080B62F0: .4byte gUnk_08351648
_080B62F4: .4byte sub_080B5BE8
_080B62F8:
	ldr r2, _080B632C @ =sub_080B5BE8
	adds r0, r7, #0
	movs r1, #1
	rsbs r1, r1, #0
	bl ObjectSetFunc
_080B6304:
	ldr r0, [r7, #8]
	ldr r1, _080B6330 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080B631E
	adds r0, r7, #0
	bl sub_080B6894
_080B631E:
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0x3c
	strb r1, [r0]
	movs r0, #0x26
	strb r0, [r4]
	b _080B6352
	.align 2, 0
_080B632C: .4byte sub_080B5BE8
_080B6330: .4byte 0xFFFFF7FF
_080B6334:
	adds r3, r7, #0
	adds r3, #0x83
	ldr r2, _080B6364 @ =gUnk_08351648
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080B6352
	adds r0, r7, #0
	bl sub_080A245C
_080B6352:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_080B635C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6364: .4byte gUnk_08351648

	thumb_func_start sub_080B6368
sub_080B6368: @ 0x080B6368
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0x83
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B63B4
	ldrb r0, [r2]
	cmp r0, #0
	bne _080B63B4
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080B63B4
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080B63B4
	cmp r0, #0x7a
	bhi _080B63B4
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r2, r1
	ldr r0, [r4]
	cmp r0, #0
	bne _080B63B4
	ldr r0, [r2, #8]
	ldr r1, _080B63B8 @ =0x03800B00
	ands r0, r1
	cmp r0, #0
	beq _080B63BC
_080B63B4:
	movs r0, #0
	b _080B6438
	.align 2, 0
_080B63B8: .4byte 0x03800B00
_080B63BC:
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	strh r0, [r3, #4]
	ldr r0, _080B6440 @ =gUnk_08354404
	str r0, [r4]
	adds r0, r3, #0
	adds r0, #0xac
	str r2, [r0]
	str r2, [r3, #0x6c]
	ldr r1, _080B6444 @ =gUnk_02020EE0
	ldr r0, _080B6448 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B6436
	ldrb r0, [r3]
	cmp r0, #0
	bne _080B63FC
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B6436
_080B63FC:
	ldr r1, _080B644C @ =gUnk_08D60FA4
	ldr r4, _080B6450 @ =gSongTable
	ldr r2, _080B6454 @ =0x0000045C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B6422
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B6436
_080B6422:
	cmp r3, #0
	beq _080B6430
	ldr r0, _080B6458 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	bne _080B6436
_080B6430:
	movs r0, #0x8b
	bl m4aSongNumStart
_080B6436:
	movs r0, #1
_080B6438:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B6440: .4byte gUnk_08354404
_080B6444: .4byte gUnk_02020EE0
_080B6448: .4byte gUnk_0203AD3C
_080B644C: .4byte gUnk_08D60FA4
_080B6450: .4byte gSongTable
_080B6454: .4byte 0x0000045C
_080B6458: .4byte gUnk_0203AD10

	thumb_func_start sub_080B645C
sub_080B645C: @ 0x080B645C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6480
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x1e
	b _080B6488
_080B6480:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x1e
_080B6488:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B649C
	movs r2, #1
	mov sl, r2
_080B649C:
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B653A
	movs r4, #0
	ldr r1, _080B64C0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080B64C4 @ =gUnk_020229E0
	mov sb, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080B64DC
	.align 2, 0
_080B64C0: .4byte gUnk_020229D4
_080B64C4: .4byte gUnk_020229E0
_080B64C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080B64E4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080B64DC:
	cmp r0, #0
	bne _080B64C8
	orrs r2, r3
	str r2, [r1]
_080B64E4:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, sb
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x9e
	strb r0, [r1, #0xc]
	mov r7, sl
	strb r7, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	b _080B65C8
_080B653A:
	movs r4, #0
	ldr r1, _080B6554 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080B6558 @ =gUnk_020229E0
	mov sb, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080B6570
	.align 2, 0
_080B6554: .4byte gUnk_020229D4
_080B6558: .4byte gUnk_020229E0
_080B655C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080B6578
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080B6570:
	cmp r0, #0
	bne _080B655C
	orrs r2, r3
	str r2, [r1]
_080B6578:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, sb
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x9e
	strb r0, [r1, #0xc]
	mov r7, sl
	strb r7, [r1, #0xe]
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
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_080B65C8:
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B65D8
sub_080B65D8: @ 0x080B65D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B6608 @ =sub_080B66A8
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
	beq _080B660C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080B6614
	.align 2, 0
_080B6608: .4byte sub_080B66A8
_080B660C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080B6614:
	adds r0, r4, #0
	bl sub_0803E380
	movs r3, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r3, [r4, #4]
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
	ldr r0, _080B66A4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B6662
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B6662:
	strh r3, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
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
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0xa
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B66A4: .4byte gUnk_03000510

	thumb_func_start sub_080B66A8
sub_080B66A8: @ 0x080B66A8
	push {r4, r5, lr}
	sub sp, #4
	ldr r2, _080B66C8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B66CC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B66D4
	.align 2, 0
_080B66C8: .4byte gCurTask
_080B66CC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B66D4:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080B66EE
	ldr r0, [r2]
	bl TaskDestroy
	b _080B680C
_080B66EE:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B66FC
	orrs r1, r3
	str r1, [r4, #8]
	b _080B680C
_080B66FC:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080B6738 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B673C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080B673C
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080B680C
	.align 2, 0
_080B6738: .4byte gUnk_03000510
_080B673C:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B674C
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080B6754
_080B674C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B6754:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B680C
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B6778
	ldr r0, _080B6774 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080B680C
	.align 2, 0
_080B6774: .4byte 0xFFFBFFFF
_080B6778:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B67EA
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B67EA
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080B67B0
	ldr r2, _080B67A8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080B67AC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080B67B2
	.align 2, 0
_080B67A8: .4byte gCurLevelInfo
_080B67AC: .4byte 0x0000065E
_080B67B0:
	movs r1, #0xff
_080B67B2:
	cmp r1, #0xff
	beq _080B67EA
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B6814 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080B6818 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B67EA:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _080B6806
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
_080B6806:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B680C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B6814: .4byte gUnk_02022EB0
_080B6818: .4byte gUnk_02022F50

	thumb_func_start sub_080B681C
sub_080B681C: @ 0x080B681C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080B683C
	ldr r2, _080B6838 @ =sub_080B5BE8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080B6848
	.align 2, 0
_080B6838: .4byte sub_080B5BE8
_080B683C:
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080B6878 @ =sub_080B5BE8
	adds r0, r4, #0
	bl ObjectSetFunc
_080B6848:
	ldr r0, [r4, #8]
	ldr r1, _080B687C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080B6862
	adds r0, r4, #0
	bl sub_080B6894
_080B6862:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strb r0, [r1]
	subs r1, #0x1c
	movs r0, #0x26
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B6878: .4byte sub_080B5BE8
_080B687C: .4byte 0xFFFFF7FF

	thumb_func_start sub_080B6880
sub_080B6880: @ 0x080B6880
	push {lr}
	ldr r2, _080B6890 @ =sub_080B60AC
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080B6890: .4byte sub_080B60AC

	thumb_func_start sub_080B6894
sub_080B6894: @ 0x080B6894
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B68BC @ =sub_080B5CA4
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B68B6
	rsbs r0, r3, #0
	strh r0, [r2]
_080B68B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B68BC: .4byte sub_080B5CA4

	thumb_func_start sub_080B68C0
sub_080B68C0: @ 0x080B68C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B68FC @ =sub_080B6910
	movs r1, #2
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
	ble _080B6900
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B6908
	.align 2, 0
_080B68FC: .4byte sub_080B6910
_080B6900:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B6908:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6910
sub_080B6910: @ 0x080B6910
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B6924
	adds r0, r2, #0
	bl sub_080B6928
_080B6924:
	pop {r0}
	bx r0

	thumb_func_start sub_080B6928
sub_080B6928: @ 0x080B6928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B695C @ =sub_080B6960
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080B645C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x82
	movs r0, #0x31
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B695C: .4byte sub_080B6960

	thumb_func_start sub_080B6960
sub_080B6960: @ 0x080B6960
	adds r0, #0x83
	movs r1, #3
	strb r1, [r0]
	bx lr
